; Disassembly of file: ckernel.o
; Mon May 24 18:14:59 2021
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
        movzx   eax, word [?_263]                       ; 002B _ 0F B7. 05, 0000000C(d)
        cwde                                            ; 0032 _ 98
        mov     dword [ebp-54H], eax                    ; 0033 _ 89. 45, AC
        movzx   eax, word [?_264]                       ; 0036 _ 0F B7. 05, 0000000E(d)
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
        push    ?_243                                   ; 02ED _ 68, 00000000(d)
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
        mov     dword [task_a.2309], eax                ; 0352 _ A3, 0000025C(d)
        mov     eax, dword [task_a.2309]                ; 0357 _ A1, 0000025C(d)
        mov     dword [task_main], eax                  ; 035C _ A3, 00000258(d)
        mov     eax, dword [task_a.2309]                ; 0361 _ A1, 0000025C(d)
        mov     dword [?_265], eax                      ; 0366 _ A3, 00000028(d)
        mov     byte [ebp-6DH], 0                       ; 036B _ C6. 45, 93, 00
        mov     dword [ebp-6CH], 7                      ; 036F _ C7. 45, 94, 00000007
        mov     dword [ebp-68H], 0                      ; 0376 _ C7. 45, 98, 00000000
        mov     edx, dword [sheet_win]                  ; 037D _ 8B. 15, 00000248(d)
        mov     eax, dword [shtctl]                     ; 0383 _ A1, 00000244(d)
        sub     esp, 8                                  ; 0388 _ 83. EC, 08
        push    ?_244                                   ; 038B _ 68, 00000008(d)
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
        push    ?_243                                   ; 0463 _ 68, 00000000(d)
        push    edx                                     ; 0468 _ 52
        push    eax                                     ; 0469 _ 50
        call    make_wtitle8                            ; 046A _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 046F _ 83. C4, 10
        mov     eax, dword [shtctl]                     ; 0472 _ A1, 00000244(d)
        push    1                                       ; 0477 _ 6A, 01
        push    ?_245                                   ; 0479 _ 68, 0000001E(d)
        push    dword [ebp-28H]                         ; 047E _ FF. 75, D8
        push    eax                                     ; 0481 _ 50
        call    make_wtitle8                            ; 0482 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0487 _ 83. C4, 10
        mov     ebx, dword [pos.2314]                   ; 048A _ 8B. 1D, 00000100(d)
        mov     ecx, dword [line.2313]                  ; 0490 _ 8B. 0D, 00000260(d)
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
        push    ?_243                                   ; 04CF _ 68, 00000000(d)
        push    edx                                     ; 04D4 _ 52
        push    eax                                     ; 04D5 _ 50
        call    make_wtitle8                            ; 04D6 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 04DB _ 83. C4, 10
        mov     eax, dword [shtctl]                     ; 04DE _ A1, 00000244(d)
        push    0                                       ; 04E3 _ 6A, 00
        push    ?_245                                   ; 04E5 _ 68, 0000001E(d)
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
        mov     eax, dword [task_a.2309]                ; 054B _ A1, 0000025C(d)
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
        push    ?_246                                   ; 0578 _ 68, 00000027(d)
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
        mov     eax, dword [line.2313]                  ; 05A5 _ A1, 00000260(d)
        cmp     eax, 142                                ; 05AA _ 3D, 0000008E
        jg      ?_007                                   ; 05AF _ 0F 8F, 000000B3
        mov     ebx, dword [pos.2314]                   ; 05B5 _ 8B. 1D, 00000100(d)
        mov     ecx, dword [line.2313]                  ; 05BB _ 8B. 0D, 00000260(d)
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
        mov     eax, dword [pos.2314]                   ; 05F4 _ A1, 00000100(d)
        lea     esi, [eax+1AH]                          ; 05F9 _ 8D. 70, 1A
        mov     eax, dword [line.2313]                  ; 05FC _ A1, 00000260(d)
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
        mov     eax, dword [line.2313]                  ; 0624 _ A1, 00000260(d)
        add     eax, 8                                  ; 0629 _ 83. C0, 08
        mov     dword [line.2313], eax                  ; 062C _ A3, 00000260(d)
        mov     eax, dword [sheet_win]                  ; 0631 _ A1, 00000248(d)
        mov     eax, dword [eax+4H]                     ; 0636 _ 8B. 40, 04
        lea     edx, [eax-10H]                          ; 0639 _ 8D. 50, F0
        mov     eax, dword [line.2313]                  ; 063C _ A1, 00000260(d)
        cmp     edx, eax                                ; 0641 _ 39. C2
        jg      ?_006                                   ; 0643 _ 7F, 17
        mov     eax, dword [pos.2314]                   ; 0645 _ A1, 00000100(d)
        add     eax, 16                                 ; 064A _ 83. C0, 10
        mov     dword [pos.2314], eax                   ; 064D _ A3, 00000100(d)
        mov     dword [line.2313], 0                    ; 0652 _ C7. 05, 00000260(d), 00000000
?_006:  mov     dword [ebp-64H], 0                      ; 065C _ C7. 45, 9C, 00000000
        jmp     ?_015                                   ; 0663 _ E9, 00000239

?_007:  cmp     byte [ebp-6DH], 14                      ; 0668 _ 80. 7D, 93, 0E
        jne     ?_001                                   ; 066C _ 0F 85, FFFFFD4B
        mov     eax, dword [line.2313]                  ; 0672 _ A1, 00000260(d)
        cmp     eax, 7                                  ; 0677 _ 83. F8, 07
        jle     ?_001                                   ; 067A _ 0F 8E, FFFFFD3D
        mov     ebx, dword [pos.2314]                   ; 0680 _ 8B. 1D, 00000100(d)
        mov     ecx, dword [line.2313]                  ; 0686 _ 8B. 0D, 00000260(d)
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
        mov     eax, dword [line.2313]                  ; 06A8 _ A1, 00000260(d)
        sub     eax, 8                                  ; 06AD _ 83. E8, 08
        mov     dword [line.2313], eax                  ; 06B0 _ A3, 00000260(d)
        mov     ebx, dword [pos.2314]                   ; 06B5 _ 8B. 1D, 00000100(d)
        mov     ecx, dword [line.2313]                  ; 06BB _ 8B. 0D, 00000260(d)
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
        mov     eax, dword [task_a.2309]                ; 0714 _ A1, 0000025C(d)
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
        push    ?_247                                   ; 07A6 _ 68, 00000030(d)
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
        push    ?_248                                   ; 080E _ 68, 00000032(d)
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
        mov     ebx, dword [pos.2314]                   ; 0878 _ 8B. 1D, 00000100(d)
        mov     ecx, dword [line.2313]                  ; 087E _ 8B. 0D, 00000260(d)
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
        push    ?_245                                   ; 0B87 _ 68, 0000001E(d)
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
        mov     dword [ebp-0C8H], 8                     ; 0CC0 _ C7. 85, FFFFFF38, 00000008
        mov     dword [ebp-0C4H], 0                     ; 0CCA _ C7. 85, FFFFFF3C, 00000000
        mov     dword [ebp-0C0H], 2                     ; 0CD4 _ C7. 85, FFFFFF40, 00000002
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
        mov     eax, dword [ebp-0C0H]                   ; 0D47 _ 8B. 85, FFFFFF40
        lea     edx, [eax+1AH]                          ; 0D4D _ 8D. 50, 1A
        mov     eax, dword [shtctl]                     ; 0D50 _ A1, 00000244(d)
        sub     esp, 8                                  ; 0D55 _ 83. EC, 08
        push    ?_249                                   ; 0D58 _ 68, 00000039(d)
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
        jmp     ?_045                                   ; 0D9E _ E9, 00000489

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
        cmp     dword [ebp-0C4H], 0                     ; 0DD0 _ 83. BD, FFFFFF3C, 00
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
        mov     dword [ebp-0C4H], 7                     ; 0DFF _ C7. 85, FFFFFF3C, 00000007
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
        mov     dword [ebp-0C4H], 0                     ; 0E31 _ C7. 85, FFFFFF3C, 00000000
?_035:  sub     esp, 8                                  ; 0E3B _ 83. EC, 08
        push    50                                      ; 0E3E _ 6A, 32
        push    dword [ebp-0B8H]                        ; 0E40 _ FF. B5, FFFFFF48
        call    timer_setTime                           ; 0E46 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0E4B _ 83. C4, 10
        jmp     ?_045                                   ; 0E4E _ E9, 000003D9

?_036:  cmp     dword [ebp-0B4H], 87                    ; 0E53 _ 83. BD, FFFFFF4C, 57
        jnz     ?_037                                   ; 0E5A _ 75, 3F
        mov     dword [ebp-0C4H], 7                     ; 0E5C _ C7. 85, FFFFFF3C, 00000007
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
        jmp     ?_045                                   ; 0E96 _ E9, 00000391

?_037:  cmp     dword [ebp-0B4H], 88                    ; 0E9B _ 83. BD, FFFFFF4C, 58
        jnz     ?_038                                   ; 0EA2 _ 75, 49
        mov     eax, dword [shtctl]                     ; 0EA4 _ A1, 00000244(d)
        sub     esp, 12                                 ; 0EA9 _ 83. EC, 0C
        push    0                                       ; 0EAC _ 6A, 00
        push    dword [ebp-0C0H]                        ; 0EAE _ FF. B5, FFFFFF40
        push    dword [ebp-0C8H]                        ; 0EB4 _ FF. B5, FFFFFF38
        push    dword [ebp-0DCH]                        ; 0EBA _ FF. B5, FFFFFF24
        push    eax                                     ; 0EC0 _ 50
        call    set_cursor                              ; 0EC1 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0EC6 _ 83. C4, 20
        mov     dword [ebp-0C4H], -1                    ; 0EC9 _ C7. 85, FFFFFF3C, FFFFFFFF
        mov     eax, dword [task_main]                  ; 0ED3 _ A1, 00000258(d)
        sub     esp, 4                                  ; 0ED8 _ 83. EC, 04
        push    0                                       ; 0EDB _ 6A, 00
        push    -1                                      ; 0EDD _ 6A, FF
        push    eax                                     ; 0EDF _ 50
        call    task_run                                ; 0EE0 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0EE5 _ 83. C4, 10
        jmp     ?_045                                   ; 0EE8 _ E9, 0000033F

?_038:  cmp     dword [ebp-0B4H], 14                    ; 0EED _ 83. BD, FFFFFF4C, 0E
        jnz     ?_039                                   ; 0EF4 _ 75, 5F
        cmp     dword [ebp-0C8H], 15                    ; 0EF6 _ 83. BD, FFFFFF38, 0F
        jle     ?_039                                   ; 0EFD _ 7E, 56
        mov     eax, dword [shtctl]                     ; 0EFF _ A1, 00000244(d)
        sub     esp, 12                                 ; 0F04 _ 83. EC, 0C
        push    0                                       ; 0F07 _ 6A, 00
        push    dword [ebp-0C0H]                        ; 0F09 _ FF. B5, FFFFFF40
        push    dword [ebp-0C8H]                        ; 0F0F _ FF. B5, FFFFFF38
        push    dword [ebp-0DCH]                        ; 0F15 _ FF. B5, FFFFFF24
        push    eax                                     ; 0F1B _ 50
        call    set_cursor                              ; 0F1C _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0F21 _ 83. C4, 20
        sub     dword [ebp-0C8H], 8                     ; 0F24 _ 83. AD, FFFFFF38, 08
        mov     eax, dword [shtctl]                     ; 0F2B _ A1, 00000244(d)
        sub     esp, 12                                 ; 0F30 _ 83. EC, 0C
        push    0                                       ; 0F33 _ 6A, 00
        push    dword [ebp-0C0H]                        ; 0F35 _ FF. B5, FFFFFF40
        push    dword [ebp-0C8H]                        ; 0F3B _ FF. B5, FFFFFF38
        push    dword [ebp-0DCH]                        ; 0F41 _ FF. B5, FFFFFF24
        push    eax                                     ; 0F47 _ 50
        call    set_del_cursor                          ; 0F48 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0F4D _ 83. C4, 20
        jmp     ?_045                                   ; 0F50 _ E9, 000002D7

?_039:  cmp     dword [ebp-0B4H], 28                    ; 0F55 _ 83. BD, FFFFFF4C, 1C
        jne     ?_044                                   ; 0F5C _ 0F 85, 000001F8
        mov     eax, dword [shtctl]                     ; 0F62 _ A1, 00000244(d)
        sub     esp, 12                                 ; 0F67 _ 83. EC, 0C
        push    0                                       ; 0F6A _ 6A, 00
        push    dword [ebp-0C0H]                        ; 0F6C _ FF. B5, FFFFFF40
        push    dword [ebp-0C8H]                        ; 0F72 _ FF. B5, FFFFFF38
        push    dword [ebp-0DCH]                        ; 0F78 _ FF. B5, FFFFFF24
        push    eax                                     ; 0F7E _ 50
        call    set_cursor                              ; 0F7F _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0F84 _ 83. C4, 20
        mov     eax, dword [ebp-0C8H]                   ; 0F87 _ 8B. 85, FFFFFF38
        lea     edx, [eax+7H]                           ; 0F8D _ 8D. 50, 07
        test    eax, eax                                ; 0F90 _ 85. C0
        cmovs   eax, edx                                ; 0F92 _ 0F 48. C2
        sar     eax, 3                                  ; 0F95 _ C1. F8, 03
        sub     eax, 1                                  ; 0F98 _ 83. E8, 01
        mov     byte [ebp+eax-0AAH], 0                  ; 0F9B _ C6. 84 05, FFFFFF56, 00
        movzx   eax, byte [ebp-0AAH]                    ; 0FA3 _ 0F B6. 85, FFFFFF56
        test    al, al                                  ; 0FAA _ 84. C0
        setne   al                                      ; 0FAC _ 0F 95. C0
        movzx   eax, al                                 ; 0FAF _ 0F B6. C0
        mov     dword [ebp-0B0H], eax                   ; 0FB2 _ 89. 85, FFFFFF50
        sub     esp, 4                                  ; 0FB8 _ 83. EC, 04
        push    dword [ebp-0B0H]                        ; 0FBB _ FF. B5, FFFFFF50
        push    dword [ebp-0DCH]                        ; 0FC1 _ FF. B5, FFFFFF24
        push    dword [ebp-0C0H]                        ; 0FC7 _ FF. B5, FFFFFF40
        call    cons_newline                            ; 0FCD _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0FD2 _ 83. C4, 10
        mov     dword [ebp-0C0H], eax                   ; 0FD5 _ 89. 85, FFFFFF40
        mov     dword [ebp-0C8H], 8                     ; 0FDB _ C7. 85, FFFFFF38, 00000008
        movzx   eax, byte [ebp-0AAH]                    ; 0FE5 _ 0F B6. 85, FFFFFF56
        cmp     al, 109                                 ; 0FEC _ 3C, 6D
        jnz     ?_040                                   ; 0FEE _ 75, 6F
        movzx   eax, byte [ebp-0A9H]                    ; 0FF0 _ 0F B6. 85, FFFFFF57
        cmp     al, 101                                 ; 0FF7 _ 3C, 65
        jnz     ?_040                                   ; 0FF9 _ 75, 64
        movzx   eax, byte [ebp-0A8H]                    ; 0FFB _ 0F B6. 85, FFFFFF58
        cmp     al, 109                                 ; 1002 _ 3C, 6D
        jnz     ?_040                                   ; 1004 _ 75, 59
        movzx   eax, byte [ebp-0A7H]                    ; 1006 _ 0F B6. 85, FFFFFF59
        test    al, al                                  ; 100D _ 84. C0
        jnz     ?_040                                   ; 100F _ 75, 4E
        mov     eax, dword [ebp-0C0H]                   ; 1011 _ 8B. 85, FFFFFF40
        lea     edx, [eax+1AH]                          ; 1017 _ 8D. 50, 1A
        mov     eax, dword [shtctl]                     ; 101A _ A1, 00000244(d)
        sub     esp, 8                                  ; 101F _ 83. EC, 08
        push    ?_250                                   ; 1022 _ 68, 0000003B(d)
        push    7                                       ; 1027 _ 6A, 07
        push    edx                                     ; 1029 _ 52
        push    10                                      ; 102A _ 6A, 0A
        push    dword [ebp-0DCH]                        ; 102C _ FF. B5, FFFFFF24
        push    eax                                     ; 1032 _ 50
        call    showString                              ; 1033 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1038 _ 83. C4, 20
        sub     esp, 4                                  ; 103B _ 83. EC, 04
        push    0                                       ; 103E _ 6A, 00
        push    dword [ebp-0DCH]                        ; 1040 _ FF. B5, FFFFFF24
        push    dword [ebp-0C0H]                        ; 1046 _ FF. B5, FFFFFF40
        call    cons_newline                            ; 104C _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1051 _ 83. C4, 10
        mov     dword [ebp-0C0H], eax                   ; 1054 _ 89. 85, FFFFFF40
        jmp     ?_045                                   ; 105A _ E9, 000001CD

?_040:  movzx   eax, byte [ebp-0A9H]                    ; 105F _ 0F B6. 85, FFFFFF57
        cmp     al, 117                                 ; 1066 _ 3C, 75
        jnz     ?_041                                   ; 1068 _ 75, 3E
        movzx   eax, byte [ebp-0A8H]                    ; 106A _ 0F B6. 85, FFFFFF58
        cmp     al, 116                                 ; 1071 _ 3C, 74
        jnz     ?_041                                   ; 1073 _ 75, 33
        movzx   eax, byte [ebp-0A7H]                    ; 1075 _ 0F B6. 85, FFFFFF59
        cmp     al, 104                                 ; 107C _ 3C, 68
        jnz     ?_041                                   ; 107E _ 75, 28
        movzx   eax, byte [ebp-0A6H]                    ; 1080 _ 0F B6. 85, FFFFFF5A
        cmp     al, 111                                 ; 1087 _ 3C, 6F
        jnz     ?_041                                   ; 1089 _ 75, 1D
        movzx   eax, byte [ebp-0A5H]                    ; 108B _ 0F B6. 85, FFFFFF5B
        cmp     al, 114                                 ; 1092 _ 3C, 72
        jnz     ?_041                                   ; 1094 _ 75, 12
        movzx   eax, byte [ebp-0A4H]                    ; 1096 _ 0F B6. 85, FFFFFF5C
        test    al, al                                  ; 109D _ 84. C0
        jnz     ?_041                                   ; 109F _ 75, 07
        mov     eax, 1                                  ; 10A1 _ B8, 00000001
        jmp     ?_042                                   ; 10A6 _ EB, 05

?_041:  mov     eax, 0                                  ; 10A8 _ B8, 00000000
?_042:  mov     byte [ebp-0AAH], al                     ; 10AD _ 88. 85, FFFFFF56
        movzx   eax, byte [ebp-0AAH]                    ; 10B3 _ 0F B6. 85, FFFFFF56
        test    al, al                                  ; 10BA _ 84. C0
        jz      ?_043                                   ; 10BC _ 74, 4E
        mov     eax, dword [ebp-0C0H]                   ; 10BE _ 8B. 85, FFFFFF40
        lea     edx, [eax+1AH]                          ; 10C4 _ 8D. 50, 1A
        mov     eax, dword [shtctl]                     ; 10C7 _ A1, 00000244(d)
        sub     esp, 8                                  ; 10CC _ 83. EC, 08
        push    ?_251                                   ; 10CF _ 68, 00000040(d)
        push    7                                       ; 10D4 _ 6A, 07
        push    edx                                     ; 10D6 _ 52
        push    10                                      ; 10D7 _ 6A, 0A
        push    dword [ebp-0DCH]                        ; 10D9 _ FF. B5, FFFFFF24
        push    eax                                     ; 10DF _ 50
        call    showString                              ; 10E0 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 10E5 _ 83. C4, 20
        sub     esp, 4                                  ; 10E8 _ 83. EC, 04
        push    0                                       ; 10EB _ 6A, 00
        push    dword [ebp-0DCH]                        ; 10ED _ FF. B5, FFFFFF24
        push    dword [ebp-0C0H]                        ; 10F3 _ FF. B5, FFFFFF40
        call    cons_newline                            ; 10F9 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 10FE _ 83. C4, 10
        mov     dword [ebp-0C0H], eax                   ; 1101 _ 89. 85, FFFFFF40
        jmp     ?_045                                   ; 1107 _ E9, 00000120

?_043:  mov     eax, dword [ebp-0C0H]                   ; 110C _ 8B. 85, FFFFFF40
        lea     edx, [eax+1AH]                          ; 1112 _ 8D. 50, 1A
        mov     eax, dword [shtctl]                     ; 1115 _ A1, 00000244(d)
        sub     esp, 8                                  ; 111A _ 83. EC, 08
        push    ?_252                                   ; 111D _ 68, 00000068(d)
        push    7                                       ; 1122 _ 6A, 07
        push    edx                                     ; 1124 _ 52
        push    10                                      ; 1125 _ 6A, 0A
        push    dword [ebp-0DCH]                        ; 1127 _ FF. B5, FFFFFF24
        push    eax                                     ; 112D _ 50
        call    showString                              ; 112E _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1133 _ 83. C4, 20
        sub     esp, 4                                  ; 1136 _ 83. EC, 04
        push    0                                       ; 1139 _ 6A, 00
        push    dword [ebp-0DCH]                        ; 113B _ FF. B5, FFFFFF24
        push    dword [ebp-0C0H]                        ; 1141 _ FF. B5, FFFFFF40
        call    cons_newline                            ; 1147 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 114C _ 83. C4, 10
        mov     dword [ebp-0C0H], eax                   ; 114F _ 89. 85, FFFFFF40
        jmp     ?_045                                   ; 1155 _ E9, 000000D2

?_044:  sub     esp, 12                                 ; 115A _ 83. EC, 0C
        push    dword [ebp-0B4H]                        ; 115D _ FF. B5, FFFFFF4C
        call    transferScanCode                        ; 1163 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1168 _ 83. C4, 10
        mov     byte [ebp-0C9H], al                     ; 116B _ 88. 85, FFFFFF37
        cmp     byte [ebp-0C9H], 0                      ; 1171 _ 80. BD, FFFFFF37, 00
        je      ?_045                                   ; 1178 _ 0F 84, 000000AE
        mov     eax, dword [ebp-0DCH]                   ; 117E _ 8B. 85, FFFFFF24
        mov     eax, dword [eax+4H]                     ; 1184 _ 8B. 40, 04
        sub     eax, 35                                 ; 1187 _ 83. E8, 23
        cmp     dword [ebp-0C8H], eax                   ; 118A _ 39. 85, FFFFFF38
        jg      ?_045                                   ; 1190 _ 0F 8F, 00000096
        mov     eax, dword [shtctl]                     ; 1196 _ A1, 00000244(d)
        sub     esp, 12                                 ; 119B _ 83. EC, 0C
        push    0                                       ; 119E _ 6A, 00
        push    dword [ebp-0C0H]                        ; 11A0 _ FF. B5, FFFFFF40
        push    dword [ebp-0C8H]                        ; 11A6 _ FF. B5, FFFFFF38
        push    dword [ebp-0DCH]                        ; 11AC _ FF. B5, FFFFFF24
        push    eax                                     ; 11B2 _ 50
        call    set_cursor                              ; 11B3 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 11B8 _ 83. C4, 20
        movzx   eax, byte [ebp-0C9H]                    ; 11BB _ 0F B6. 85, FFFFFF37
        mov     byte [ebp-0ACH], al                     ; 11C2 _ 88. 85, FFFFFF54
        mov     byte [ebp-0ABH], 0                      ; 11C8 _ C6. 85, FFFFFF55, 00
        mov     eax, dword [ebp-0C8H]                   ; 11CF _ 8B. 85, FFFFFF38
        lea     edx, [eax+7H]                           ; 11D5 _ 8D. 50, 07
        test    eax, eax                                ; 11D8 _ 85. C0
        cmovs   eax, edx                                ; 11DA _ 0F 48. C2
        sar     eax, 3                                  ; 11DD _ C1. F8, 03
        lea     edx, [eax-1H]                           ; 11E0 _ 8D. 50, FF
        movzx   eax, byte [ebp-0C9H]                    ; 11E3 _ 0F B6. 85, FFFFFF37
        mov     byte [ebp+edx-0AAH], al                 ; 11EA _ 88. 84 15, FFFFFF56
        mov     eax, dword [ebp-0C0H]                   ; 11F1 _ 8B. 85, FFFFFF40
        lea     ebx, [eax+1AH]                          ; 11F7 _ 8D. 58, 1A
        mov     eax, dword [ebp-0C8H]                   ; 11FA _ 8B. 85, FFFFFF38
        lea     ecx, [eax+0AH]                          ; 1200 _ 8D. 48, 0A
        mov     eax, dword [shtctl]                     ; 1203 _ A1, 00000244(d)
        sub     esp, 8                                  ; 1208 _ 83. EC, 08
        lea     edx, [ebp-0ACH]                         ; 120B _ 8D. 95, FFFFFF54
        push    edx                                     ; 1211 _ 52
        push    7                                       ; 1212 _ 6A, 07
        push    ebx                                     ; 1214 _ 53
        push    ecx                                     ; 1215 _ 51
        push    dword [ebp-0DCH]                        ; 1216 _ FF. B5, FFFFFF24
        push    eax                                     ; 121C _ 50
        call    showString                              ; 121D _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1222 _ 83. C4, 20
        add     dword [ebp-0C8H], 8                     ; 1225 _ 83. 85, FFFFFF38, 08
?_045:  cmp     dword [ebp-0C4H], 0                     ; 122C _ 83. BD, FFFFFF3C, 00
        js      ?_032                                   ; 1233 _ 0F 88, FFFFFB42
        mov     eax, dword [shtctl]                     ; 1239 _ A1, 00000244(d)
        sub     esp, 12                                 ; 123E _ 83. EC, 0C
        push    dword [ebp-0C4H]                        ; 1241 _ FF. B5, FFFFFF3C
        push    dword [ebp-0C0H]                        ; 1247 _ FF. B5, FFFFFF40
        push    dword [ebp-0C8H]                        ; 124D _ FF. B5, FFFFFF38
        push    dword [ebp-0DCH]                        ; 1253 _ FF. B5, FFFFFF24
        push    eax                                     ; 1259 _ 50
        call    set_cursor                              ; 125A _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 125F _ 83. C4, 20
        jmp     ?_032                                   ; 1262 _ E9, FFFFFB14
; console_task End of function

task_b_main:; Function begin
        push    ebp                                     ; 1267 _ 55
        mov     ebp, esp                                ; 1268 _ 89. E5
        sub     esp, 88                                 ; 126A _ 83. EC, 58
        mov     eax, dword [ebp+8H]                     ; 126D _ 8B. 45, 08
        mov     dword [ebp-4CH], eax                    ; 1270 _ 89. 45, B4
; Note: Absolute memory address without relocation
        mov     eax, dword [gs:14H]                     ; 1273 _ 65: A1, 00000014
        mov     dword [ebp-0CH], eax                    ; 1279 _ 89. 45, F4
        xor     eax, eax                                ; 127C _ 31. C0
        mov     edx, dword [sheet_back]                 ; 127E _ 8B. 15, 0000024C(d)
        mov     eax, dword [shtctl]                     ; 1284 _ A1, 00000244(d)
        sub     esp, 8                                  ; 1289 _ 83. EC, 08
        push    ?_253                                   ; 128C _ 68, 0000007B(d)
        push    7                                       ; 1291 _ 6A, 07
        push    144                                     ; 1293 _ 68, 00000090
        push    0                                       ; 1298 _ 6A, 00
        push    edx                                     ; 129A _ 52
        push    eax                                     ; 129B _ 50
        call    showString                              ; 129C _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 12A1 _ 83. C4, 20
        mov     dword [ebp-3CH], 0                      ; 12A4 _ C7. 45, C4, 00000000
        mov     dword [ebp-38H], 0                      ; 12AB _ C7. 45, C8, 00000000
        push    0                                       ; 12B2 _ 6A, 00
        lea     eax, [ebp-14H]                          ; 12B4 _ 8D. 45, EC
        push    eax                                     ; 12B7 _ 50
        push    8                                       ; 12B8 _ 6A, 08
        lea     eax, [ebp-30H]                          ; 12BA _ 8D. 45, D0
        push    eax                                     ; 12BD _ 50
        call    fifo8_init                              ; 12BE _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 12C3 _ 83. C4, 10
        call    timer_alloc                             ; 12C6 _ E8, FFFFFFFC(rel)
        mov     dword [ebp-3CH], eax                    ; 12CB _ 89. 45, C4
        sub     esp, 4                                  ; 12CE _ 83. EC, 04
        push    123                                     ; 12D1 _ 6A, 7B
        lea     eax, [ebp-30H]                          ; 12D3 _ 8D. 45, D0
        push    eax                                     ; 12D6 _ 50
        push    dword [ebp-3CH]                         ; 12D7 _ FF. 75, C4
        call    timer_init                              ; 12DA _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 12DF _ 83. C4, 10
        sub     esp, 8                                  ; 12E2 _ 83. EC, 08
        push    100                                     ; 12E5 _ 6A, 64
        push    dword [ebp-3CH]                         ; 12E7 _ FF. 75, C4
        call    timer_setTime                           ; 12EA _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 12EF _ 83. C4, 10
        mov     dword [ebp-44H], 0                      ; 12F2 _ C7. 45, BC, 00000000
        mov     dword [ebp-40H], 0                      ; 12F9 _ C7. 45, C0, 00000000
?_046:  add     dword [ebp-40H], 1                      ; 1300 _ 83. 45, C0, 01
        mov     eax, dword [ebp-4CH]                    ; 1304 _ 8B. 45, B4
        mov     edx, dword [eax+4H]                     ; 1307 _ 8B. 50, 04
        mov     eax, dword [ebp-4CH]                    ; 130A _ 8B. 45, B4
        mov     eax, dword [eax]                        ; 130D _ 8B. 00
        sub     esp, 4                                  ; 130F _ 83. EC, 04
        push    38                                      ; 1312 _ 6A, 26
        push    100                                     ; 1314 _ 6A, 64
        push    23                                      ; 1316 _ 6A, 17
        push    8                                       ; 1318 _ 6A, 08
        push    8                                       ; 131A _ 6A, 08
        push    edx                                     ; 131C _ 52
        push    eax                                     ; 131D _ 50
        call    boxfill8                                ; 131E _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1323 _ 83. C4, 20
        sub     esp, 12                                 ; 1326 _ 83. EC, 0C
        push    dword [ebp-40H]                         ; 1329 _ FF. 75, C0
        call    intToHexStr                             ; 132C _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1331 _ 83. C4, 10
        mov     dword [ebp-34H], eax                    ; 1334 _ 89. 45, CC
        mov     eax, dword [shtctl]                     ; 1337 _ A1, 00000244(d)
        sub     esp, 8                                  ; 133C _ 83. EC, 08
        push    dword [ebp-34H]                         ; 133F _ FF. 75, CC
        push    10                                      ; 1342 _ 6A, 0A
        push    23                                      ; 1344 _ 6A, 17
        push    8                                       ; 1346 _ 6A, 08
        push    dword [ebp-4CH]                         ; 1348 _ FF. 75, B4
        push    eax                                     ; 134B _ 50
        call    showString                              ; 134C _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1351 _ 83. C4, 20
        call    io_cli                                  ; 1354 _ E8, FFFFFFFC(rel)
        sub     esp, 12                                 ; 1359 _ 83. EC, 0C
        lea     eax, [ebp-30H]                          ; 135C _ 8D. 45, D0
        push    eax                                     ; 135F _ 50
        call    fifo8_status                            ; 1360 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1365 _ 83. C4, 10
        test    eax, eax                                ; 1368 _ 85. C0
        jnz     ?_047                                   ; 136A _ 75, 07
        call    io_sti                                  ; 136C _ E8, FFFFFFFC(rel)
        jmp     ?_046                                   ; 1371 _ EB, 8D

?_047:  sub     esp, 12                                 ; 1373 _ 83. EC, 0C
        lea     eax, [ebp-30H]                          ; 1376 _ 8D. 45, D0
        push    eax                                     ; 1379 _ 50
        call    fifo8_get                               ; 137A _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 137F _ 83. C4, 10
        mov     dword [ebp-38H], eax                    ; 1382 _ 89. 45, C8
        call    io_sti                                  ; 1385 _ E8, FFFFFFFC(rel)
        cmp     dword [ebp-38H], 123                    ; 138A _ 83. 7D, C8, 7B
        jne     ?_046                                   ; 138E _ 0F 85, FFFFFF6C
        mov     edx, dword [sheet_back]                 ; 1394 _ 8B. 15, 0000024C(d)
        mov     eax, dword [shtctl]                     ; 139A _ A1, 00000244(d)
        sub     esp, 8                                  ; 139F _ 83. EC, 08
        push    ?_254                                   ; 13A2 _ 68, 00000088(d)
        push    7                                       ; 13A7 _ 6A, 07
        push    176                                     ; 13A9 _ 68, 000000B0
        push    dword [ebp-44H]                         ; 13AE _ FF. 75, BC
        push    edx                                     ; 13B1 _ 52
        push    eax                                     ; 13B2 _ 50
        call    showString                              ; 13B3 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 13B8 _ 83. C4, 20
        sub     esp, 8                                  ; 13BB _ 83. EC, 08
        push    100                                     ; 13BE _ 6A, 64
        push    dword [ebp-3CH]                         ; 13C0 _ FF. 75, C4
        call    timer_setTime                           ; 13C3 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 13C8 _ 83. C4, 10
        add     dword [ebp-44H], 8                      ; 13CB _ 83. 45, BC, 08
        jmp     ?_046                                   ; 13CF _ E9, FFFFFF2C
; task_b_main End of function

cons_newline:; Function begin
        push    ebp                                     ; 13D4 _ 55
        mov     ebp, esp                                ; 13D5 _ 89. E5
        push    ebx                                     ; 13D7 _ 53
        sub     esp, 20                                 ; 13D8 _ 83. EC, 14
        mov     eax, dword [ebp+8H]                     ; 13DB _ 8B. 45, 08
        lea     edx, [eax+17H]                          ; 13DE _ 8D. 50, 17
        mov     eax, dword [ebp+0CH]                    ; 13E1 _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 13E4 _ 8B. 40, 08
        sub     eax, 36                                 ; 13E7 _ 83. E8, 24
        cmp     edx, eax                                ; 13EA _ 39. C2
        jge     ?_048                                   ; 13EC _ 7D, 09
        add     dword [ebp+8H], 16                      ; 13EE _ 83. 45, 08, 10
        jmp     ?_057                                   ; 13F2 _ E9, 000000E8

?_048:  mov     dword [ebp-0CH], 26                     ; 13F7 _ C7. 45, F4, 0000001A
        jmp     ?_052                                   ; 13FE _ EB, 58

?_049:  mov     dword [ebp-10H], 8                      ; 1400 _ C7. 45, F0, 00000008
        jmp     ?_051                                   ; 1407 _ EB, 3D

?_050:  mov     eax, dword [ebp+0CH]                    ; 1409 _ 8B. 45, 0C
        mov     edx, dword [eax]                        ; 140C _ 8B. 10
        mov     eax, dword [ebp-0CH]                    ; 140E _ 8B. 45, F4
        lea     ecx, [eax+10H]                          ; 1411 _ 8D. 48, 10
        mov     eax, dword [ebp+0CH]                    ; 1414 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 1417 _ 8B. 40, 04
        imul    ecx, eax                                ; 141A _ 0F AF. C8
        mov     eax, dword [ebp-10H]                    ; 141D _ 8B. 45, F0
        add     eax, ecx                                ; 1420 _ 01. C8
        lea     ecx, [edx+eax]                          ; 1422 _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 1425 _ 8B. 45, 0C
        mov     edx, dword [eax]                        ; 1428 _ 8B. 10
        mov     eax, dword [ebp+0CH]                    ; 142A _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 142D _ 8B. 40, 04
        imul    eax, dword [ebp-0CH]                    ; 1430 _ 0F AF. 45, F4
        mov     ebx, eax                                ; 1434 _ 89. C3
        mov     eax, dword [ebp-10H]                    ; 1436 _ 8B. 45, F0
        add     eax, ebx                                ; 1439 _ 01. D8
        add     edx, eax                                ; 143B _ 01. C2
        movzx   eax, byte [ecx]                         ; 143D _ 0F B6. 01
        mov     byte [edx], al                          ; 1440 _ 88. 02
        add     dword [ebp-10H], 1                      ; 1442 _ 83. 45, F0, 01
?_051:  mov     eax, dword [ebp+0CH]                    ; 1446 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 1449 _ 8B. 40, 04
        sub     eax, 8                                  ; 144C _ 83. E8, 08
        cmp     dword [ebp-10H], eax                    ; 144F _ 39. 45, F0
        jl      ?_050                                   ; 1452 _ 7C, B5
        add     dword [ebp-0CH], 1                      ; 1454 _ 83. 45, F4, 01
?_052:  mov     eax, dword [ebp+0CH]                    ; 1458 _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 145B _ 8B. 40, 08
        sub     eax, 20                                 ; 145E _ 83. E8, 14
        cmp     dword [ebp-0CH], eax                    ; 1461 _ 39. 45, F4
        jl      ?_049                                   ; 1464 _ 7C, 9A
        mov     eax, dword [ebp+8H]                     ; 1466 _ 8B. 45, 08
        add     eax, 26                                 ; 1469 _ 83. C0, 1A
        mov     dword [ebp-0CH], eax                    ; 146C _ 89. 45, F4
        jmp     ?_056                                   ; 146F _ EB, 3A

?_053:  mov     dword [ebp-10H], 8                      ; 1471 _ C7. 45, F0, 00000008
        jmp     ?_055                                   ; 1478 _ EB, 1F

?_054:  mov     eax, dword [ebp+0CH]                    ; 147A _ 8B. 45, 0C
        mov     edx, dword [eax]                        ; 147D _ 8B. 10
        mov     eax, dword [ebp+0CH]                    ; 147F _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 1482 _ 8B. 40, 04
        imul    eax, dword [ebp-0CH]                    ; 1485 _ 0F AF. 45, F4
        mov     ecx, eax                                ; 1489 _ 89. C1
        mov     eax, dword [ebp-10H]                    ; 148B _ 8B. 45, F0
        add     eax, ecx                                ; 148E _ 01. C8
        add     eax, edx                                ; 1490 _ 01. D0
        mov     byte [eax], 0                           ; 1492 _ C6. 00, 00
        add     dword [ebp-10H], 1                      ; 1495 _ 83. 45, F0, 01
?_055:  mov     eax, dword [ebp+0CH]                    ; 1499 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 149C _ 8B. 40, 04
        sub     eax, 8                                  ; 149F _ 83. E8, 08
        cmp     dword [ebp-10H], eax                    ; 14A2 _ 39. 45, F0
        jl      ?_054                                   ; 14A5 _ 7C, D3
        add     dword [ebp-0CH], 1                      ; 14A7 _ 83. 45, F4, 01
?_056:  mov     eax, dword [ebp+8H]                     ; 14AB _ 8B. 45, 08
        add     eax, 42                                 ; 14AE _ 83. C0, 2A
        cmp     dword [ebp-0CH], eax                    ; 14B1 _ 39. 45, F4
        jl      ?_053                                   ; 14B4 _ 7C, BB
        mov     eax, dword [ebp+0CH]                    ; 14B6 _ 8B. 45, 0C
        mov     edx, dword [eax+8H]                     ; 14B9 _ 8B. 50, 08
        mov     eax, dword [ebp+0CH]                    ; 14BC _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 14BF _ 8B. 40, 04
        lea     ecx, [eax-8H]                           ; 14C2 _ 8D. 48, F8
        mov     eax, dword [shtctl]                     ; 14C5 _ A1, 00000244(d)
        sub     esp, 8                                  ; 14CA _ 83. EC, 08
        push    edx                                     ; 14CD _ 52
        push    ecx                                     ; 14CE _ 51
        push    28                                      ; 14CF _ 6A, 1C
        push    8                                       ; 14D1 _ 6A, 08
        push    dword [ebp+0CH]                         ; 14D3 _ FF. 75, 0C
        push    eax                                     ; 14D6 _ 50
        call    sheet_refresh                           ; 14D7 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 14DC _ 83. C4, 20
?_057:  cmp     dword [ebp+10H], 0                      ; 14DF _ 83. 7D, 10, 00
        jnz     ?_058                                   ; 14E3 _ 75, 24
        mov     eax, dword [ebp+8H]                     ; 14E5 _ 8B. 45, 08
        lea     edx, [eax+1AH]                          ; 14E8 _ 8D. 50, 1A
        mov     eax, dword [shtctl]                     ; 14EB _ A1, 00000244(d)
        sub     esp, 8                                  ; 14F0 _ 83. EC, 08
        push    ?_249                                   ; 14F3 _ 68, 00000039(d)
        push    7                                       ; 14F8 _ 6A, 07
        push    edx                                     ; 14FA _ 52
        push    8                                       ; 14FB _ 6A, 08
        push    dword [ebp+0CH]                         ; 14FD _ FF. 75, 0C
        push    eax                                     ; 1500 _ 50
        call    showString                              ; 1501 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1506 _ 83. C4, 20
?_058:  mov     eax, dword [ebp+8H]                     ; 1509 _ 8B. 45, 08
        mov     ebx, dword [ebp-4H]                     ; 150C _ 8B. 5D, FC
        leave                                           ; 150F _ C9
        ret                                             ; 1510 _ C3
; cons_newline End of function

initBootInfo:; Function begin
        push    ebp                                     ; 1511 _ 55
        mov     ebp, esp                                ; 1512 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 1514 _ 8B. 45, 08
        mov     dword [eax], -536870912                 ; 1517 _ C7. 00, E0000000
        mov     eax, dword [ebp+8H]                     ; 151D _ 8B. 45, 08
; Note: Length-changing prefix causes delay on Intel processors
        mov     word [eax+4H], 640                      ; 1520 _ 66: C7. 40, 04, 0280
        mov     eax, dword [ebp+8H]                     ; 1526 _ 8B. 45, 08
; Note: Length-changing prefix causes delay on Intel processors
        mov     word [eax+6H], 480                      ; 1529 _ 66: C7. 40, 06, 01E0
        nop                                             ; 152F _ 90
        pop     ebp                                     ; 1530 _ 5D
        ret                                             ; 1531 _ C3
; initBootInfo End of function

showString:; Function begin
        push    ebp                                     ; 1532 _ 55
        mov     ebp, esp                                ; 1533 _ 89. E5
        push    ebx                                     ; 1535 _ 53
        sub     esp, 36                                 ; 1536 _ 83. EC, 24
        mov     eax, dword [ebp+18H]                    ; 1539 _ 8B. 45, 18
        mov     byte [ebp-1CH], al                      ; 153C _ 88. 45, E4
        mov     eax, dword [ebp+10H]                    ; 153F _ 8B. 45, 10
        mov     dword [ebp-0CH], eax                    ; 1542 _ 89. 45, F4
        jmp     ?_060                                   ; 1545 _ EB, 3E

?_059:  mov     eax, dword [ebp+1CH]                    ; 1547 _ 8B. 45, 1C
        movzx   eax, byte [eax]                         ; 154A _ 0F B6. 00
        movzx   eax, al                                 ; 154D _ 0F B6. C0
        shl     eax, 4                                  ; 1550 _ C1. E0, 04
        lea     ebx, [systemFont+eax]                   ; 1553 _ 8D. 98, 00000000(d)
        movsx   ecx, byte [ebp-1CH]                     ; 1559 _ 0F BE. 4D, E4
        mov     eax, dword [ebp+0CH]                    ; 155D _ 8B. 45, 0C
        mov     edx, dword [eax+4H]                     ; 1560 _ 8B. 50, 04
        mov     eax, dword [ebp+0CH]                    ; 1563 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 1566 _ 8B. 00
        sub     esp, 8                                  ; 1568 _ 83. EC, 08
        push    ebx                                     ; 156B _ 53
        push    ecx                                     ; 156C _ 51
        push    dword [ebp+14H]                         ; 156D _ FF. 75, 14
        push    dword [ebp+10H]                         ; 1570 _ FF. 75, 10
        push    edx                                     ; 1573 _ 52
        push    eax                                     ; 1574 _ 50
        call    showFont8                               ; 1575 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 157A _ 83. C4, 20
        add     dword [ebp+10H], 8                      ; 157D _ 83. 45, 10, 08
        add     dword [ebp+1CH], 1                      ; 1581 _ 83. 45, 1C, 01
?_060:  mov     eax, dword [ebp+1CH]                    ; 1585 _ 8B. 45, 1C
        movzx   eax, byte [eax]                         ; 1588 _ 0F B6. 00
        test    al, al                                  ; 158B _ 84. C0
        jnz     ?_059                                   ; 158D _ 75, B8
        mov     eax, dword [ebp+14H]                    ; 158F _ 8B. 45, 14
        add     eax, 16                                 ; 1592 _ 83. C0, 10
        sub     esp, 8                                  ; 1595 _ 83. EC, 08
        push    eax                                     ; 1598 _ 50
        push    dword [ebp+10H]                         ; 1599 _ FF. 75, 10
        push    dword [ebp+14H]                         ; 159C _ FF. 75, 14
        push    dword [ebp-0CH]                         ; 159F _ FF. 75, F4
        push    dword [ebp+0CH]                         ; 15A2 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 15A5 _ FF. 75, 08
        call    sheet_refresh                           ; 15A8 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 15AD _ 83. C4, 20
        nop                                             ; 15B0 _ 90
        mov     ebx, dword [ebp-4H]                     ; 15B1 _ 8B. 5D, FC
        leave                                           ; 15B4 _ C9
        ret                                             ; 15B5 _ C3
; showString End of function

init_screen8:; Function begin
        push    ebp                                     ; 15B6 _ 55
        mov     ebp, esp                                ; 15B7 _ 89. E5
        push    ebx                                     ; 15B9 _ 53
        sub     esp, 4                                  ; 15BA _ 83. EC, 04
        mov     eax, dword [ebp+10H]                    ; 15BD _ 8B. 45, 10
        lea     edx, [eax-19H]                          ; 15C0 _ 8D. 50, E7
        mov     eax, dword [ebp+0CH]                    ; 15C3 _ 8B. 45, 0C
        sub     eax, 1                                  ; 15C6 _ 83. E8, 01
        sub     esp, 4                                  ; 15C9 _ 83. EC, 04
        push    edx                                     ; 15CC _ 52
        push    eax                                     ; 15CD _ 50
        push    0                                       ; 15CE _ 6A, 00
        push    0                                       ; 15D0 _ 6A, 00
        push    14                                      ; 15D2 _ 6A, 0E
        push    dword [ebp+0CH]                         ; 15D4 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 15D7 _ FF. 75, 08
        call    boxfill8                                ; 15DA _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 15DF _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 15E2 _ 8B. 45, 10
        lea     ecx, [eax-18H]                          ; 15E5 _ 8D. 48, E8
        mov     eax, dword [ebp+0CH]                    ; 15E8 _ 8B. 45, 0C
        lea     edx, [eax-1H]                           ; 15EB _ 8D. 50, FF
        mov     eax, dword [ebp+10H]                    ; 15EE _ 8B. 45, 10
        sub     eax, 24                                 ; 15F1 _ 83. E8, 18
        sub     esp, 4                                  ; 15F4 _ 83. EC, 04
        push    ecx                                     ; 15F7 _ 51
        push    edx                                     ; 15F8 _ 52
        push    eax                                     ; 15F9 _ 50
        push    0                                       ; 15FA _ 6A, 00
        push    8                                       ; 15FC _ 6A, 08
        push    dword [ebp+0CH]                         ; 15FE _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1601 _ FF. 75, 08
        call    boxfill8                                ; 1604 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1609 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 160C _ 8B. 45, 10
        lea     ecx, [eax-17H]                          ; 160F _ 8D. 48, E9
        mov     eax, dword [ebp+0CH]                    ; 1612 _ 8B. 45, 0C
        lea     edx, [eax-1H]                           ; 1615 _ 8D. 50, FF
        mov     eax, dword [ebp+10H]                    ; 1618 _ 8B. 45, 10
        sub     eax, 23                                 ; 161B _ 83. E8, 17
        sub     esp, 4                                  ; 161E _ 83. EC, 04
        push    ecx                                     ; 1621 _ 51
        push    edx                                     ; 1622 _ 52
        push    eax                                     ; 1623 _ 50
        push    0                                       ; 1624 _ 6A, 00
        push    7                                       ; 1626 _ 6A, 07
        push    dword [ebp+0CH]                         ; 1628 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 162B _ FF. 75, 08
        call    boxfill8                                ; 162E _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1633 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 1636 _ 8B. 45, 10
        lea     ecx, [eax-1H]                           ; 1639 _ 8D. 48, FF
        mov     eax, dword [ebp+0CH]                    ; 163C _ 8B. 45, 0C
        lea     edx, [eax-1H]                           ; 163F _ 8D. 50, FF
        mov     eax, dword [ebp+10H]                    ; 1642 _ 8B. 45, 10
        sub     eax, 22                                 ; 1645 _ 83. E8, 16
        sub     esp, 4                                  ; 1648 _ 83. EC, 04
        push    ecx                                     ; 164B _ 51
        push    edx                                     ; 164C _ 52
        push    eax                                     ; 164D _ 50
        push    0                                       ; 164E _ 6A, 00
        push    8                                       ; 1650 _ 6A, 08
        push    dword [ebp+0CH]                         ; 1652 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1655 _ FF. 75, 08
        call    boxfill8                                ; 1658 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 165D _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 1660 _ 8B. 45, 10
        lea     edx, [eax-14H]                          ; 1663 _ 8D. 50, EC
        mov     eax, dword [ebp+10H]                    ; 1666 _ 8B. 45, 10
        sub     eax, 20                                 ; 1669 _ 83. E8, 14
        sub     esp, 4                                  ; 166C _ 83. EC, 04
        push    edx                                     ; 166F _ 52
        push    51                                      ; 1670 _ 6A, 33
        push    eax                                     ; 1672 _ 50
        push    10                                      ; 1673 _ 6A, 0A
        push    7                                       ; 1675 _ 6A, 07
        push    dword [ebp+0CH]                         ; 1677 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 167A _ FF. 75, 08
        call    boxfill8                                ; 167D _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1682 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 1685 _ 8B. 45, 10
        lea     edx, [eax-4H]                           ; 1688 _ 8D. 50, FC
        mov     eax, dword [ebp+10H]                    ; 168B _ 8B. 45, 10
        sub     eax, 20                                 ; 168E _ 83. E8, 14
        sub     esp, 4                                  ; 1691 _ 83. EC, 04
        push    edx                                     ; 1694 _ 52
        push    9                                       ; 1695 _ 6A, 09
        push    eax                                     ; 1697 _ 50
        push    9                                       ; 1698 _ 6A, 09
        push    7                                       ; 169A _ 6A, 07
        push    dword [ebp+0CH]                         ; 169C _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 169F _ FF. 75, 08
        call    boxfill8                                ; 16A2 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 16A7 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 16AA _ 8B. 45, 10
        lea     edx, [eax-4H]                           ; 16AD _ 8D. 50, FC
        mov     eax, dword [ebp+10H]                    ; 16B0 _ 8B. 45, 10
        sub     eax, 4                                  ; 16B3 _ 83. E8, 04
        sub     esp, 4                                  ; 16B6 _ 83. EC, 04
        push    edx                                     ; 16B9 _ 52
        push    50                                      ; 16BA _ 6A, 32
        push    eax                                     ; 16BC _ 50
        push    10                                      ; 16BD _ 6A, 0A
        push    15                                      ; 16BF _ 6A, 0F
        push    dword [ebp+0CH]                         ; 16C1 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 16C4 _ FF. 75, 08
        call    boxfill8                                ; 16C7 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 16CC _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 16CF _ 8B. 45, 10
        lea     edx, [eax-5H]                           ; 16D2 _ 8D. 50, FB
        mov     eax, dword [ebp+10H]                    ; 16D5 _ 8B. 45, 10
        sub     eax, 19                                 ; 16D8 _ 83. E8, 13
        sub     esp, 4                                  ; 16DB _ 83. EC, 04
        push    edx                                     ; 16DE _ 52
        push    50                                      ; 16DF _ 6A, 32
        push    eax                                     ; 16E1 _ 50
        push    50                                      ; 16E2 _ 6A, 32
        push    15                                      ; 16E4 _ 6A, 0F
        push    dword [ebp+0CH]                         ; 16E6 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 16E9 _ FF. 75, 08
        call    boxfill8                                ; 16EC _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 16F1 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 16F4 _ 8B. 45, 10
        lea     edx, [eax-3H]                           ; 16F7 _ 8D. 50, FD
        mov     eax, dword [ebp+10H]                    ; 16FA _ 8B. 45, 10
        sub     eax, 3                                  ; 16FD _ 83. E8, 03
        sub     esp, 4                                  ; 1700 _ 83. EC, 04
        push    edx                                     ; 1703 _ 52
        push    50                                      ; 1704 _ 6A, 32
        push    eax                                     ; 1706 _ 50
        push    10                                      ; 1707 _ 6A, 0A
        push    0                                       ; 1709 _ 6A, 00
        push    dword [ebp+0CH]                         ; 170B _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 170E _ FF. 75, 08
        call    boxfill8                                ; 1711 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1716 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 1719 _ 8B. 45, 10
        lea     edx, [eax-3H]                           ; 171C _ 8D. 50, FD
        mov     eax, dword [ebp+10H]                    ; 171F _ 8B. 45, 10
        sub     eax, 20                                 ; 1722 _ 83. E8, 14
        sub     esp, 4                                  ; 1725 _ 83. EC, 04
        push    edx                                     ; 1728 _ 52
        push    51                                      ; 1729 _ 6A, 33
        push    eax                                     ; 172B _ 50
        push    51                                      ; 172C _ 6A, 33
        push    0                                       ; 172E _ 6A, 00
        push    dword [ebp+0CH]                         ; 1730 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1733 _ FF. 75, 08
        call    boxfill8                                ; 1736 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 173B _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 173E _ 8B. 45, 10
        lea     ebx, [eax-14H]                          ; 1741 _ 8D. 58, EC
        mov     eax, dword [ebp+0CH]                    ; 1744 _ 8B. 45, 0C
        lea     ecx, [eax-4H]                           ; 1747 _ 8D. 48, FC
        mov     eax, dword [ebp+10H]                    ; 174A _ 8B. 45, 10
        lea     edx, [eax-14H]                          ; 174D _ 8D. 50, EC
        mov     eax, dword [ebp+0CH]                    ; 1750 _ 8B. 45, 0C
        sub     eax, 47                                 ; 1753 _ 83. E8, 2F
        sub     esp, 4                                  ; 1756 _ 83. EC, 04
        push    ebx                                     ; 1759 _ 53
        push    ecx                                     ; 175A _ 51
        push    edx                                     ; 175B _ 52
        push    eax                                     ; 175C _ 50
        push    15                                      ; 175D _ 6A, 0F
        push    dword [ebp+0CH]                         ; 175F _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1762 _ FF. 75, 08
        call    boxfill8                                ; 1765 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 176A _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 176D _ 8B. 45, 10
        lea     ebx, [eax-3H]                           ; 1770 _ 8D. 58, FD
        mov     eax, dword [ebp+0CH]                    ; 1773 _ 8B. 45, 0C
        lea     ecx, [eax-2FH]                          ; 1776 _ 8D. 48, D1
        mov     eax, dword [ebp+10H]                    ; 1779 _ 8B. 45, 10
        lea     edx, [eax-14H]                          ; 177C _ 8D. 50, EC
        mov     eax, dword [ebp+0CH]                    ; 177F _ 8B. 45, 0C
        sub     eax, 47                                 ; 1782 _ 83. E8, 2F
        sub     esp, 4                                  ; 1785 _ 83. EC, 04
        push    ebx                                     ; 1788 _ 53
        push    ecx                                     ; 1789 _ 51
        push    edx                                     ; 178A _ 52
        push    eax                                     ; 178B _ 50
        push    15                                      ; 178C _ 6A, 0F
        push    dword [ebp+0CH]                         ; 178E _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1791 _ FF. 75, 08
        call    boxfill8                                ; 1794 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1799 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 179C _ 8B. 45, 10
        lea     ebx, [eax-3H]                           ; 179F _ 8D. 58, FD
        mov     eax, dword [ebp+0CH]                    ; 17A2 _ 8B. 45, 0C
        lea     ecx, [eax-4H]                           ; 17A5 _ 8D. 48, FC
        mov     eax, dword [ebp+10H]                    ; 17A8 _ 8B. 45, 10
        lea     edx, [eax-3H]                           ; 17AB _ 8D. 50, FD
        mov     eax, dword [ebp+0CH]                    ; 17AE _ 8B. 45, 0C
        sub     eax, 47                                 ; 17B1 _ 83. E8, 2F
        sub     esp, 4                                  ; 17B4 _ 83. EC, 04
        push    ebx                                     ; 17B7 _ 53
        push    ecx                                     ; 17B8 _ 51
        push    edx                                     ; 17B9 _ 52
        push    eax                                     ; 17BA _ 50
        push    7                                       ; 17BB _ 6A, 07
        push    dword [ebp+0CH]                         ; 17BD _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 17C0 _ FF. 75, 08
        call    boxfill8                                ; 17C3 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 17C8 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 17CB _ 8B. 45, 10
        lea     ebx, [eax-3H]                           ; 17CE _ 8D. 58, FD
        mov     eax, dword [ebp+0CH]                    ; 17D1 _ 8B. 45, 0C
        lea     ecx, [eax-3H]                           ; 17D4 _ 8D. 48, FD
        mov     eax, dword [ebp+10H]                    ; 17D7 _ 8B. 45, 10
        lea     edx, [eax-14H]                          ; 17DA _ 8D. 50, EC
        mov     eax, dword [ebp+0CH]                    ; 17DD _ 8B. 45, 0C
        sub     eax, 3                                  ; 17E0 _ 83. E8, 03
        sub     esp, 4                                  ; 17E3 _ 83. EC, 04
        push    ebx                                     ; 17E6 _ 53
        push    ecx                                     ; 17E7 _ 51
        push    edx                                     ; 17E8 _ 52
        push    eax                                     ; 17E9 _ 50
        push    7                                       ; 17EA _ 6A, 07
        push    dword [ebp+0CH]                         ; 17EC _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 17EF _ FF. 75, 08
        call    boxfill8                                ; 17F2 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 17F7 _ 83. C4, 20
        nop                                             ; 17FA _ 90
        mov     ebx, dword [ebp-4H]                     ; 17FB _ 8B. 5D, FC
        leave                                           ; 17FE _ C9
        ret                                             ; 17FF _ C3
; init_screen8 End of function

init_palette:; Function begin
        push    ebp                                     ; 1800 _ 55
        mov     ebp, esp                                ; 1801 _ 89. E5
        sub     esp, 24                                 ; 1803 _ 83. EC, 18
        mov     eax, dword [bootInfo]                   ; 1806 _ A1, 00000008(d)
        mov     dword [ebp-14H], eax                    ; 180B _ 89. 45, EC
        movzx   eax, word [?_263]                       ; 180E _ 0F B7. 05, 0000000C(d)
        cwde                                            ; 1815 _ 98
        mov     dword [ebp-10H], eax                    ; 1816 _ 89. 45, F0
        movzx   eax, word [?_264]                       ; 1819 _ 0F B7. 05, 0000000E(d)
        cwde                                            ; 1820 _ 98
        mov     dword [ebp-0CH], eax                    ; 1821 _ 89. 45, F4
        sub     esp, 4                                  ; 1824 _ 83. EC, 04
        push    table_rgb.2421                          ; 1827 _ 68, 00000120(d)
        push    15                                      ; 182C _ 6A, 0F
        push    0                                       ; 182E _ 6A, 00
        call    set_palette                             ; 1830 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1835 _ 83. C4, 10
        nop                                             ; 1838 _ 90
        leave                                           ; 1839 _ C9
        ret                                             ; 183A _ C3
; init_palette End of function

set_palette:; Function begin
        push    ebp                                     ; 183B _ 55
        mov     ebp, esp                                ; 183C _ 89. E5
        sub     esp, 24                                 ; 183E _ 83. EC, 18
        call    io_load_eflags                          ; 1841 _ E8, FFFFFFFC(rel)
        mov     dword [ebp-0CH], eax                    ; 1846 _ 89. 45, F4
        call    io_cli                                  ; 1849 _ E8, FFFFFFFC(rel)
        sub     esp, 8                                  ; 184E _ 83. EC, 08
        push    dword [ebp+8H]                          ; 1851 _ FF. 75, 08
        push    968                                     ; 1854 _ 68, 000003C8
        call    io_out8                                 ; 1859 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 185E _ 83. C4, 10
        mov     eax, dword [ebp+8H]                     ; 1861 _ 8B. 45, 08
        mov     dword [ebp-10H], eax                    ; 1864 _ 89. 45, F0
        jmp     ?_062                                   ; 1867 _ EB, 65

?_061:  mov     eax, dword [ebp+10H]                    ; 1869 _ 8B. 45, 10
        movzx   eax, byte [eax]                         ; 186C _ 0F B6. 00
        shr     al, 2                                   ; 186F _ C0. E8, 02
        movzx   eax, al                                 ; 1872 _ 0F B6. C0
        sub     esp, 8                                  ; 1875 _ 83. EC, 08
        push    eax                                     ; 1878 _ 50
        push    969                                     ; 1879 _ 68, 000003C9
        call    io_out8                                 ; 187E _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1883 _ 83. C4, 10
        mov     eax, dword [ebp+10H]                    ; 1886 _ 8B. 45, 10
        add     eax, 1                                  ; 1889 _ 83. C0, 01
        movzx   eax, byte [eax]                         ; 188C _ 0F B6. 00
        shr     al, 2                                   ; 188F _ C0. E8, 02
        movzx   eax, al                                 ; 1892 _ 0F B6. C0
        sub     esp, 8                                  ; 1895 _ 83. EC, 08
        push    eax                                     ; 1898 _ 50
        push    969                                     ; 1899 _ 68, 000003C9
        call    io_out8                                 ; 189E _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 18A3 _ 83. C4, 10
        mov     eax, dword [ebp+10H]                    ; 18A6 _ 8B. 45, 10
        add     eax, 2                                  ; 18A9 _ 83. C0, 02
        movzx   eax, byte [eax]                         ; 18AC _ 0F B6. 00
        shr     al, 2                                   ; 18AF _ C0. E8, 02
        movzx   eax, al                                 ; 18B2 _ 0F B6. C0
        sub     esp, 8                                  ; 18B5 _ 83. EC, 08
        push    eax                                     ; 18B8 _ 50
        push    969                                     ; 18B9 _ 68, 000003C9
        call    io_out8                                 ; 18BE _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 18C3 _ 83. C4, 10
        add     dword [ebp+10H], 3                      ; 18C6 _ 83. 45, 10, 03
        add     dword [ebp-10H], 1                      ; 18CA _ 83. 45, F0, 01
?_062:  mov     eax, dword [ebp-10H]                    ; 18CE _ 8B. 45, F0
        cmp     eax, dword [ebp+0CH]                    ; 18D1 _ 3B. 45, 0C
        jle     ?_061                                   ; 18D4 _ 7E, 93
        sub     esp, 12                                 ; 18D6 _ 83. EC, 0C
        push    dword [ebp-0CH]                         ; 18D9 _ FF. 75, F4
        call    io_store_eflags                         ; 18DC _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 18E1 _ 83. C4, 10
        nop                                             ; 18E4 _ 90
        leave                                           ; 18E5 _ C9
        ret                                             ; 18E6 _ C3
; set_palette End of function

boxfill8:; Function begin
        push    ebp                                     ; 18E7 _ 55
        mov     ebp, esp                                ; 18E8 _ 89. E5
        sub     esp, 20                                 ; 18EA _ 83. EC, 14
        mov     eax, dword [ebp+10H]                    ; 18ED _ 8B. 45, 10
        mov     byte [ebp-14H], al                      ; 18F0 _ 88. 45, EC
        mov     eax, dword [ebp+18H]                    ; 18F3 _ 8B. 45, 18
        mov     dword [ebp-4H], eax                     ; 18F6 _ 89. 45, FC
        jmp     ?_066                                   ; 18F9 _ EB, 33

?_063:  mov     eax, dword [ebp+14H]                    ; 18FB _ 8B. 45, 14
        mov     dword [ebp-8H], eax                     ; 18FE _ 89. 45, F8
        jmp     ?_065                                   ; 1901 _ EB, 1F

?_064:  mov     eax, dword [ebp-4H]                     ; 1903 _ 8B. 45, FC
        imul    eax, dword [ebp+0CH]                    ; 1906 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 190A _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 190C _ 8B. 45, F8
        add     eax, edx                                ; 190F _ 01. D0
        mov     edx, eax                                ; 1911 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 1913 _ 8B. 45, 08
        add     edx, eax                                ; 1916 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 1918 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 191C _ 88. 02
        add     dword [ebp-8H], 1                       ; 191E _ 83. 45, F8, 01
?_065:  mov     eax, dword [ebp-8H]                     ; 1922 _ 8B. 45, F8
        cmp     eax, dword [ebp+1CH]                    ; 1925 _ 3B. 45, 1C
        jle     ?_064                                   ; 1928 _ 7E, D9
        add     dword [ebp-4H], 1                       ; 192A _ 83. 45, FC, 01
?_066:  mov     eax, dword [ebp-4H]                     ; 192E _ 8B. 45, FC
        cmp     eax, dword [ebp+20H]                    ; 1931 _ 3B. 45, 20
        jle     ?_063                                   ; 1934 _ 7E, C5
        nop                                             ; 1936 _ 90
        leave                                           ; 1937 _ C9
        ret                                             ; 1938 _ C3
; boxfill8 End of function

make_textbox8:; Function begin
        push    ebp                                     ; 1939 _ 55
        mov     ebp, esp                                ; 193A _ 89. E5
        push    edi                                     ; 193C _ 57
        push    esi                                     ; 193D _ 56
        push    ebx                                     ; 193E _ 53
        sub     esp, 16                                 ; 193F _ 83. EC, 10
        mov     edx, dword [ebp+0CH]                    ; 1942 _ 8B. 55, 0C
        mov     eax, dword [ebp+14H]                    ; 1945 _ 8B. 45, 14
        add     eax, edx                                ; 1948 _ 01. D0
        mov     dword [ebp-14H], eax                    ; 194A _ 89. 45, EC
        mov     edx, dword [ebp+10H]                    ; 194D _ 8B. 55, 10
        mov     eax, dword [ebp+18H]                    ; 1950 _ 8B. 45, 18
        add     eax, edx                                ; 1953 _ 01. D0
        mov     dword [ebp-10H], eax                    ; 1955 _ 89. 45, F0
        mov     eax, dword [ebp+10H]                    ; 1958 _ 8B. 45, 10
        lea     edi, [eax-3H]                           ; 195B _ 8D. 78, FD
        mov     eax, dword [ebp-14H]                    ; 195E _ 8B. 45, EC
        lea     esi, [eax+1H]                           ; 1961 _ 8D. 70, 01
        mov     eax, dword [ebp+10H]                    ; 1964 _ 8B. 45, 10
        lea     ebx, [eax-3H]                           ; 1967 _ 8D. 58, FD
        mov     eax, dword [ebp+0CH]                    ; 196A _ 8B. 45, 0C
        lea     ecx, [eax-2H]                           ; 196D _ 8D. 48, FE
        mov     eax, dword [ebp+8H]                     ; 1970 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 1973 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 1976 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 1979 _ 8B. 00
        push    edi                                     ; 197B _ 57
        push    esi                                     ; 197C _ 56
        push    ebx                                     ; 197D _ 53
        push    ecx                                     ; 197E _ 51
        push    15                                      ; 197F _ 6A, 0F
        push    edx                                     ; 1981 _ 52
        push    eax                                     ; 1982 _ 50
        call    boxfill8                                ; 1983 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 1988 _ 83. C4, 1C
        mov     eax, dword [ebp-10H]                    ; 198B _ 8B. 45, F0
        lea     edi, [eax+1H]                           ; 198E _ 8D. 78, 01
        mov     eax, dword [ebp+0CH]                    ; 1991 _ 8B. 45, 0C
        lea     esi, [eax-3H]                           ; 1994 _ 8D. 70, FD
        mov     eax, dword [ebp+10H]                    ; 1997 _ 8B. 45, 10
        lea     ebx, [eax-3H]                           ; 199A _ 8D. 58, FD
        mov     eax, dword [ebp+0CH]                    ; 199D _ 8B. 45, 0C
        lea     ecx, [eax-3H]                           ; 19A0 _ 8D. 48, FD
        mov     eax, dword [ebp+8H]                     ; 19A3 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 19A6 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 19A9 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 19AC _ 8B. 00
        push    edi                                     ; 19AE _ 57
        push    esi                                     ; 19AF _ 56
        push    ebx                                     ; 19B0 _ 53
        push    ecx                                     ; 19B1 _ 51
        push    15                                      ; 19B2 _ 6A, 0F
        push    edx                                     ; 19B4 _ 52
        push    eax                                     ; 19B5 _ 50
        call    boxfill8                                ; 19B6 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 19BB _ 83. C4, 1C
        mov     eax, dword [ebp-10H]                    ; 19BE _ 8B. 45, F0
        lea     edi, [eax+2H]                           ; 19C1 _ 8D. 78, 02
        mov     eax, dword [ebp-14H]                    ; 19C4 _ 8B. 45, EC
        lea     esi, [eax+1H]                           ; 19C7 _ 8D. 70, 01
        mov     eax, dword [ebp-10H]                    ; 19CA _ 8B. 45, F0
        lea     ebx, [eax+2H]                           ; 19CD _ 8D. 58, 02
        mov     eax, dword [ebp+0CH]                    ; 19D0 _ 8B. 45, 0C
        lea     ecx, [eax-3H]                           ; 19D3 _ 8D. 48, FD
        mov     eax, dword [ebp+8H]                     ; 19D6 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 19D9 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 19DC _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 19DF _ 8B. 00
        push    edi                                     ; 19E1 _ 57
        push    esi                                     ; 19E2 _ 56
        push    ebx                                     ; 19E3 _ 53
        push    ecx                                     ; 19E4 _ 51
        push    7                                       ; 19E5 _ 6A, 07
        push    edx                                     ; 19E7 _ 52
        push    eax                                     ; 19E8 _ 50
        call    boxfill8                                ; 19E9 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 19EE _ 83. C4, 1C
        mov     eax, dword [ebp-10H]                    ; 19F1 _ 8B. 45, F0
        lea     edi, [eax+2H]                           ; 19F4 _ 8D. 78, 02
        mov     eax, dword [ebp-14H]                    ; 19F7 _ 8B. 45, EC
        lea     esi, [eax+2H]                           ; 19FA _ 8D. 70, 02
        mov     eax, dword [ebp+10H]                    ; 19FD _ 8B. 45, 10
        lea     ebx, [eax-3H]                           ; 1A00 _ 8D. 58, FD
        mov     eax, dword [ebp-14H]                    ; 1A03 _ 8B. 45, EC
        lea     ecx, [eax+2H]                           ; 1A06 _ 8D. 48, 02
        mov     eax, dword [ebp+8H]                     ; 1A09 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 1A0C _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 1A0F _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 1A12 _ 8B. 00
        push    edi                                     ; 1A14 _ 57
        push    esi                                     ; 1A15 _ 56
        push    ebx                                     ; 1A16 _ 53
        push    ecx                                     ; 1A17 _ 51
        push    7                                       ; 1A18 _ 6A, 07
        push    edx                                     ; 1A1A _ 52
        push    eax                                     ; 1A1B _ 50
        call    boxfill8                                ; 1A1C _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 1A21 _ 83. C4, 1C
        mov     eax, dword [ebp+10H]                    ; 1A24 _ 8B. 45, 10
        lea     esi, [eax-2H]                           ; 1A27 _ 8D. 70, FE
        mov     eax, dword [ebp+10H]                    ; 1A2A _ 8B. 45, 10
        lea     ebx, [eax-2H]                           ; 1A2D _ 8D. 58, FE
        mov     eax, dword [ebp+0CH]                    ; 1A30 _ 8B. 45, 0C
        lea     ecx, [eax-1H]                           ; 1A33 _ 8D. 48, FF
        mov     eax, dword [ebp+8H]                     ; 1A36 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 1A39 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 1A3C _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 1A3F _ 8B. 00
        push    esi                                     ; 1A41 _ 56
        push    dword [ebp-14H]                         ; 1A42 _ FF. 75, EC
        push    ebx                                     ; 1A45 _ 53
        push    ecx                                     ; 1A46 _ 51
        push    0                                       ; 1A47 _ 6A, 00
        push    edx                                     ; 1A49 _ 52
        push    eax                                     ; 1A4A _ 50
        call    boxfill8                                ; 1A4B _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 1A50 _ 83. C4, 1C
        mov     eax, dword [ebp+0CH]                    ; 1A53 _ 8B. 45, 0C
        lea     esi, [eax-2H]                           ; 1A56 _ 8D. 70, FE
        mov     eax, dword [ebp+10H]                    ; 1A59 _ 8B. 45, 10
        lea     ebx, [eax-2H]                           ; 1A5C _ 8D. 58, FE
        mov     eax, dword [ebp+0CH]                    ; 1A5F _ 8B. 45, 0C
        lea     ecx, [eax-2H]                           ; 1A62 _ 8D. 48, FE
        mov     eax, dword [ebp+8H]                     ; 1A65 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 1A68 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 1A6B _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 1A6E _ 8B. 00
        push    dword [ebp-10H]                         ; 1A70 _ FF. 75, F0
        push    esi                                     ; 1A73 _ 56
        push    ebx                                     ; 1A74 _ 53
        push    ecx                                     ; 1A75 _ 51
        push    0                                       ; 1A76 _ 6A, 00
        push    edx                                     ; 1A78 _ 52
        push    eax                                     ; 1A79 _ 50
        call    boxfill8                                ; 1A7A _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 1A7F _ 83. C4, 1C
        mov     eax, dword [ebp-10H]                    ; 1A82 _ 8B. 45, F0
        lea     esi, [eax+1H]                           ; 1A85 _ 8D. 70, 01
        mov     eax, dword [ebp-10H]                    ; 1A88 _ 8B. 45, F0
        lea     ebx, [eax+1H]                           ; 1A8B _ 8D. 58, 01
        mov     eax, dword [ebp+0CH]                    ; 1A8E _ 8B. 45, 0C
        lea     ecx, [eax-2H]                           ; 1A91 _ 8D. 48, FE
        mov     eax, dword [ebp+8H]                     ; 1A94 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 1A97 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 1A9A _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 1A9D _ 8B. 00
        push    esi                                     ; 1A9F _ 56
        push    dword [ebp-14H]                         ; 1AA0 _ FF. 75, EC
        push    ebx                                     ; 1AA3 _ 53
        push    ecx                                     ; 1AA4 _ 51
        push    8                                       ; 1AA5 _ 6A, 08
        push    edx                                     ; 1AA7 _ 52
        push    eax                                     ; 1AA8 _ 50
        call    boxfill8                                ; 1AA9 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 1AAE _ 83. C4, 1C
        mov     eax, dword [ebp-10H]                    ; 1AB1 _ 8B. 45, F0
        lea     edi, [eax+1H]                           ; 1AB4 _ 8D. 78, 01
        mov     eax, dword [ebp-14H]                    ; 1AB7 _ 8B. 45, EC
        lea     esi, [eax+1H]                           ; 1ABA _ 8D. 70, 01
        mov     eax, dword [ebp+10H]                    ; 1ABD _ 8B. 45, 10
        lea     ebx, [eax-2H]                           ; 1AC0 _ 8D. 58, FE
        mov     eax, dword [ebp-14H]                    ; 1AC3 _ 8B. 45, EC
        lea     ecx, [eax+1H]                           ; 1AC6 _ 8D. 48, 01
        mov     eax, dword [ebp+8H]                     ; 1AC9 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 1ACC _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 1ACF _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 1AD2 _ 8B. 00
        push    edi                                     ; 1AD4 _ 57
        push    esi                                     ; 1AD5 _ 56
        push    ebx                                     ; 1AD6 _ 53
        push    ecx                                     ; 1AD7 _ 51
        push    8                                       ; 1AD8 _ 6A, 08
        push    edx                                     ; 1ADA _ 52
        push    eax                                     ; 1ADB _ 50
        call    boxfill8                                ; 1ADC _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 1AE1 _ 83. C4, 1C
        mov     eax, dword [ebp+10H]                    ; 1AE4 _ 8B. 45, 10
        lea     esi, [eax-1H]                           ; 1AE7 _ 8D. 70, FF
        mov     eax, dword [ebp+0CH]                    ; 1AEA _ 8B. 45, 0C
        lea     ebx, [eax-1H]                           ; 1AED _ 8D. 58, FF
        mov     eax, dword [ebp+1CH]                    ; 1AF0 _ 8B. 45, 1C
        movzx   ecx, al                                 ; 1AF3 _ 0F B6. C8
        mov     eax, dword [ebp+8H]                     ; 1AF6 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 1AF9 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 1AFC _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 1AFF _ 8B. 00
        push    dword [ebp-10H]                         ; 1B01 _ FF. 75, F0
        push    dword [ebp-14H]                         ; 1B04 _ FF. 75, EC
        push    esi                                     ; 1B07 _ 56
        push    ebx                                     ; 1B08 _ 53
        push    ecx                                     ; 1B09 _ 51
        push    edx                                     ; 1B0A _ 52
        push    eax                                     ; 1B0B _ 50
        call    boxfill8                                ; 1B0C _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 1B11 _ 83. C4, 1C
        nop                                             ; 1B14 _ 90
        lea     esp, [ebp-0CH]                          ; 1B15 _ 8D. 65, F4
        pop     ebx                                     ; 1B18 _ 5B
        pop     esi                                     ; 1B19 _ 5E
        pop     edi                                     ; 1B1A _ 5F
        pop     ebp                                     ; 1B1B _ 5D
        ret                                             ; 1B1C _ C3
; make_textbox8 End of function

showFont8:; Function begin
        push    ebp                                     ; 1B1D _ 55
        mov     ebp, esp                                ; 1B1E _ 89. E5
        sub     esp, 20                                 ; 1B20 _ 83. EC, 14
        mov     eax, dword [ebp+18H]                    ; 1B23 _ 8B. 45, 18
        mov     byte [ebp-14H], al                      ; 1B26 _ 88. 45, EC
        mov     dword [ebp-4H], 0                       ; 1B29 _ C7. 45, FC, 00000000
        jmp     ?_076                                   ; 1B30 _ E9, 0000016C

?_067:  mov     edx, dword [ebp-4H]                     ; 1B35 _ 8B. 55, FC
        mov     eax, dword [ebp+1CH]                    ; 1B38 _ 8B. 45, 1C
        add     eax, edx                                ; 1B3B _ 01. D0
        movzx   eax, byte [eax]                         ; 1B3D _ 0F B6. 00
        mov     byte [ebp-5H], al                       ; 1B40 _ 88. 45, FB
        cmp     byte [ebp-5H], 0                        ; 1B43 _ 80. 7D, FB, 00
        jns     ?_068                                   ; 1B47 _ 79, 20
        mov     edx, dword [ebp+14H]                    ; 1B49 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 1B4C _ 8B. 45, FC
        add     eax, edx                                ; 1B4F _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 1B51 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 1B55 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 1B57 _ 8B. 45, 10
        add     eax, edx                                ; 1B5A _ 01. D0
        mov     edx, eax                                ; 1B5C _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 1B5E _ 8B. 45, 08
        add     edx, eax                                ; 1B61 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 1B63 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 1B67 _ 88. 02
?_068:  movsx   eax, byte [ebp-5H]                      ; 1B69 _ 0F BE. 45, FB
        and     eax, 40H                                ; 1B6D _ 83. E0, 40
        test    eax, eax                                ; 1B70 _ 85. C0
        jz      ?_069                                   ; 1B72 _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 1B74 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 1B77 _ 8B. 45, FC
        add     eax, edx                                ; 1B7A _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 1B7C _ 0F AF. 45, 0C
        mov     edx, eax                                ; 1B80 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 1B82 _ 8B. 45, 10
        add     eax, edx                                ; 1B85 _ 01. D0
        lea     edx, [eax+1H]                           ; 1B87 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 1B8A _ 8B. 45, 08
        add     edx, eax                                ; 1B8D _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 1B8F _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 1B93 _ 88. 02
?_069:  movsx   eax, byte [ebp-5H]                      ; 1B95 _ 0F BE. 45, FB
        and     eax, 20H                                ; 1B99 _ 83. E0, 20
        test    eax, eax                                ; 1B9C _ 85. C0
        jz      ?_070                                   ; 1B9E _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 1BA0 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 1BA3 _ 8B. 45, FC
        add     eax, edx                                ; 1BA6 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 1BA8 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 1BAC _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 1BAE _ 8B. 45, 10
        add     eax, edx                                ; 1BB1 _ 01. D0
        lea     edx, [eax+2H]                           ; 1BB3 _ 8D. 50, 02
        mov     eax, dword [ebp+8H]                     ; 1BB6 _ 8B. 45, 08
        add     edx, eax                                ; 1BB9 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 1BBB _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 1BBF _ 88. 02
?_070:  movsx   eax, byte [ebp-5H]                      ; 1BC1 _ 0F BE. 45, FB
        and     eax, 10H                                ; 1BC5 _ 83. E0, 10
        test    eax, eax                                ; 1BC8 _ 85. C0
        jz      ?_071                                   ; 1BCA _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 1BCC _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 1BCF _ 8B. 45, FC
        add     eax, edx                                ; 1BD2 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 1BD4 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 1BD8 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 1BDA _ 8B. 45, 10
        add     eax, edx                                ; 1BDD _ 01. D0
        lea     edx, [eax+3H]                           ; 1BDF _ 8D. 50, 03
        mov     eax, dword [ebp+8H]                     ; 1BE2 _ 8B. 45, 08
        add     edx, eax                                ; 1BE5 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 1BE7 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 1BEB _ 88. 02
?_071:  movsx   eax, byte [ebp-5H]                      ; 1BED _ 0F BE. 45, FB
        and     eax, 08H                                ; 1BF1 _ 83. E0, 08
        test    eax, eax                                ; 1BF4 _ 85. C0
        jz      ?_072                                   ; 1BF6 _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 1BF8 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 1BFB _ 8B. 45, FC
        add     eax, edx                                ; 1BFE _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 1C00 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 1C04 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 1C06 _ 8B. 45, 10
        add     eax, edx                                ; 1C09 _ 01. D0
        lea     edx, [eax+4H]                           ; 1C0B _ 8D. 50, 04
        mov     eax, dword [ebp+8H]                     ; 1C0E _ 8B. 45, 08
        add     edx, eax                                ; 1C11 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 1C13 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 1C17 _ 88. 02
?_072:  movsx   eax, byte [ebp-5H]                      ; 1C19 _ 0F BE. 45, FB
        and     eax, 04H                                ; 1C1D _ 83. E0, 04
        test    eax, eax                                ; 1C20 _ 85. C0
        jz      ?_073                                   ; 1C22 _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 1C24 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 1C27 _ 8B. 45, FC
        add     eax, edx                                ; 1C2A _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 1C2C _ 0F AF. 45, 0C
        mov     edx, eax                                ; 1C30 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 1C32 _ 8B. 45, 10
        add     eax, edx                                ; 1C35 _ 01. D0
        lea     edx, [eax+5H]                           ; 1C37 _ 8D. 50, 05
        mov     eax, dword [ebp+8H]                     ; 1C3A _ 8B. 45, 08
        add     edx, eax                                ; 1C3D _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 1C3F _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 1C43 _ 88. 02
?_073:  movsx   eax, byte [ebp-5H]                      ; 1C45 _ 0F BE. 45, FB
        and     eax, 02H                                ; 1C49 _ 83. E0, 02
        test    eax, eax                                ; 1C4C _ 85. C0
        jz      ?_074                                   ; 1C4E _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 1C50 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 1C53 _ 8B. 45, FC
        add     eax, edx                                ; 1C56 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 1C58 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 1C5C _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 1C5E _ 8B. 45, 10
        add     eax, edx                                ; 1C61 _ 01. D0
        lea     edx, [eax+6H]                           ; 1C63 _ 8D. 50, 06
        mov     eax, dword [ebp+8H]                     ; 1C66 _ 8B. 45, 08
        add     edx, eax                                ; 1C69 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 1C6B _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 1C6F _ 88. 02
?_074:  movsx   eax, byte [ebp-5H]                      ; 1C71 _ 0F BE. 45, FB
        and     eax, 01H                                ; 1C75 _ 83. E0, 01
        test    eax, eax                                ; 1C78 _ 85. C0
        jz      ?_075                                   ; 1C7A _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 1C7C _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 1C7F _ 8B. 45, FC
        add     eax, edx                                ; 1C82 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 1C84 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 1C88 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 1C8A _ 8B. 45, 10
        add     eax, edx                                ; 1C8D _ 01. D0
        lea     edx, [eax+7H]                           ; 1C8F _ 8D. 50, 07
        mov     eax, dword [ebp+8H]                     ; 1C92 _ 8B. 45, 08
        add     edx, eax                                ; 1C95 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 1C97 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 1C9B _ 88. 02
?_075:  add     dword [ebp-4H], 1                       ; 1C9D _ 83. 45, FC, 01
?_076:  cmp     dword [ebp-4H], 15                      ; 1CA1 _ 83. 7D, FC, 0F
        jle     ?_067                                   ; 1CA5 _ 0F 8E, FFFFFE8A
        nop                                             ; 1CAB _ 90
        leave                                           ; 1CAC _ C9
        ret                                             ; 1CAD _ C3
; showFont8 End of function

init_mouse_cursor:; Function begin
        push    ebp                                     ; 1CAE _ 55
        mov     ebp, esp                                ; 1CAF _ 89. E5
        sub     esp, 20                                 ; 1CB1 _ 83. EC, 14
        mov     eax, dword [ebp+0CH]                    ; 1CB4 _ 8B. 45, 0C
        mov     byte [ebp-14H], al                      ; 1CB7 _ 88. 45, EC
        mov     dword [ebp-4H], 0                       ; 1CBA _ C7. 45, FC, 00000000
        jmp     ?_083                                   ; 1CC1 _ E9, 000000B1

?_077:  mov     dword [ebp-8H], 0                       ; 1CC6 _ C7. 45, F8, 00000000
        jmp     ?_082                                   ; 1CCD _ E9, 00000097

?_078:  mov     eax, dword [ebp-4H]                     ; 1CD2 _ 8B. 45, FC
        shl     eax, 4                                  ; 1CD5 _ C1. E0, 04
        mov     edx, eax                                ; 1CD8 _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 1CDA _ 8B. 45, F8
        add     eax, edx                                ; 1CDD _ 01. D0
        add     eax, cursor.2476                        ; 1CDF _ 05, 00000160(d)
        movzx   eax, byte [eax]                         ; 1CE4 _ 0F B6. 00
        cmp     al, 42                                  ; 1CE7 _ 3C, 2A
        jnz     ?_079                                   ; 1CE9 _ 75, 17
        mov     eax, dword [ebp-4H]                     ; 1CEB _ 8B. 45, FC
        shl     eax, 4                                  ; 1CEE _ C1. E0, 04
        mov     edx, eax                                ; 1CF1 _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 1CF3 _ 8B. 45, F8
        add     eax, edx                                ; 1CF6 _ 01. D0
        mov     edx, eax                                ; 1CF8 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 1CFA _ 8B. 45, 08
        add     eax, edx                                ; 1CFD _ 01. D0
        mov     byte [eax], 0                           ; 1CFF _ C6. 00, 00
?_079:  mov     eax, dword [ebp-4H]                     ; 1D02 _ 8B. 45, FC
        shl     eax, 4                                  ; 1D05 _ C1. E0, 04
        mov     edx, eax                                ; 1D08 _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 1D0A _ 8B. 45, F8
        add     eax, edx                                ; 1D0D _ 01. D0
        add     eax, cursor.2476                        ; 1D0F _ 05, 00000160(d)
        movzx   eax, byte [eax]                         ; 1D14 _ 0F B6. 00
        cmp     al, 79                                  ; 1D17 _ 3C, 4F
        jnz     ?_080                                   ; 1D19 _ 75, 17
        mov     eax, dword [ebp-4H]                     ; 1D1B _ 8B. 45, FC
        shl     eax, 4                                  ; 1D1E _ C1. E0, 04
        mov     edx, eax                                ; 1D21 _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 1D23 _ 8B. 45, F8
        add     eax, edx                                ; 1D26 _ 01. D0
        mov     edx, eax                                ; 1D28 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 1D2A _ 8B. 45, 08
        add     eax, edx                                ; 1D2D _ 01. D0
        mov     byte [eax], 7                           ; 1D2F _ C6. 00, 07
?_080:  mov     eax, dword [ebp-4H]                     ; 1D32 _ 8B. 45, FC
        shl     eax, 4                                  ; 1D35 _ C1. E0, 04
        mov     edx, eax                                ; 1D38 _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 1D3A _ 8B. 45, F8
        add     eax, edx                                ; 1D3D _ 01. D0
        add     eax, cursor.2476                        ; 1D3F _ 05, 00000160(d)
        movzx   eax, byte [eax]                         ; 1D44 _ 0F B6. 00
        cmp     al, 46                                  ; 1D47 _ 3C, 2E
        jnz     ?_081                                   ; 1D49 _ 75, 1A
        mov     eax, dword [ebp-4H]                     ; 1D4B _ 8B. 45, FC
        shl     eax, 4                                  ; 1D4E _ C1. E0, 04
        mov     edx, eax                                ; 1D51 _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 1D53 _ 8B. 45, F8
        add     eax, edx                                ; 1D56 _ 01. D0
        mov     edx, eax                                ; 1D58 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 1D5A _ 8B. 45, 08
        add     edx, eax                                ; 1D5D _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 1D5F _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 1D63 _ 88. 02
?_081:  add     dword [ebp-8H], 1                       ; 1D65 _ 83. 45, F8, 01
?_082:  cmp     dword [ebp-8H], 15                      ; 1D69 _ 83. 7D, F8, 0F
        jle     ?_078                                   ; 1D6D _ 0F 8E, FFFFFF5F
        add     dword [ebp-4H], 1                       ; 1D73 _ 83. 45, FC, 01
?_083:  cmp     dword [ebp-4H], 15                      ; 1D77 _ 83. 7D, FC, 0F
        jle     ?_077                                   ; 1D7B _ 0F 8E, FFFFFF45
        nop                                             ; 1D81 _ 90
        leave                                           ; 1D82 _ C9
        ret                                             ; 1D83 _ C3
; init_mouse_cursor End of function

putblock:; Function begin
        push    ebp                                     ; 1D84 _ 55
        mov     ebp, esp                                ; 1D85 _ 89. E5
        push    ebx                                     ; 1D87 _ 53
        sub     esp, 16                                 ; 1D88 _ 83. EC, 10
        mov     dword [ebp-8H], 0                       ; 1D8B _ C7. 45, F8, 00000000
        jmp     ?_087                                   ; 1D92 _ EB, 50

?_084:  mov     dword [ebp-0CH], 0                      ; 1D94 _ C7. 45, F4, 00000000
        jmp     ?_086                                   ; 1D9B _ EB, 3B

?_085:  mov     eax, dword [ebp-8H]                     ; 1D9D _ 8B. 45, F8
        imul    eax, dword [ebp+24H]                    ; 1DA0 _ 0F AF. 45, 24
        mov     edx, eax                                ; 1DA4 _ 89. C2
        mov     eax, dword [ebp-0CH]                    ; 1DA6 _ 8B. 45, F4
        add     eax, edx                                ; 1DA9 _ 01. D0
        mov     edx, eax                                ; 1DAB _ 89. C2
        mov     eax, dword [ebp+20H]                    ; 1DAD _ 8B. 45, 20
        add     eax, edx                                ; 1DB0 _ 01. D0
        mov     ecx, dword [ebp+1CH]                    ; 1DB2 _ 8B. 4D, 1C
        mov     edx, dword [ebp-8H]                     ; 1DB5 _ 8B. 55, F8
        add     edx, ecx                                ; 1DB8 _ 01. CA
        imul    edx, dword [ebp+0CH]                    ; 1DBA _ 0F AF. 55, 0C
        mov     ebx, dword [ebp+18H]                    ; 1DBE _ 8B. 5D, 18
        mov     ecx, dword [ebp-0CH]                    ; 1DC1 _ 8B. 4D, F4
        add     ecx, ebx                                ; 1DC4 _ 01. D9
        add     edx, ecx                                ; 1DC6 _ 01. CA
        mov     ecx, edx                                ; 1DC8 _ 89. D1
        mov     edx, dword [ebp+8H]                     ; 1DCA _ 8B. 55, 08
        add     edx, ecx                                ; 1DCD _ 01. CA
        movzx   eax, byte [eax]                         ; 1DCF _ 0F B6. 00
        mov     byte [edx], al                          ; 1DD2 _ 88. 02
        add     dword [ebp-0CH], 1                      ; 1DD4 _ 83. 45, F4, 01
?_086:  mov     eax, dword [ebp-0CH]                    ; 1DD8 _ 8B. 45, F4
        cmp     eax, dword [ebp+10H]                    ; 1DDB _ 3B. 45, 10
        jl      ?_085                                   ; 1DDE _ 7C, BD
        add     dword [ebp-8H], 1                       ; 1DE0 _ 83. 45, F8, 01
?_087:  mov     eax, dword [ebp-8H]                     ; 1DE4 _ 8B. 45, F8
        cmp     eax, dword [ebp+14H]                    ; 1DE7 _ 3B. 45, 14
        jl      ?_084                                   ; 1DEA _ 7C, A8
        nop                                             ; 1DEC _ 90
        add     esp, 16                                 ; 1DED _ 83. C4, 10
        pop     ebx                                     ; 1DF0 _ 5B
        pop     ebp                                     ; 1DF1 _ 5D
        ret                                             ; 1DF2 _ C3
; putblock End of function

intHandlerFromC:; Function begin
        push    ebp                                     ; 1DF3 _ 55
        mov     ebp, esp                                ; 1DF4 _ 89. E5
        sub     esp, 24                                 ; 1DF6 _ 83. EC, 18
        mov     eax, dword [bootInfo]                   ; 1DF9 _ A1, 00000008(d)
        mov     dword [ebp-14H], eax                    ; 1DFE _ 89. 45, EC
        movzx   eax, word [?_263]                       ; 1E01 _ 0F B7. 05, 0000000C(d)
        cwde                                            ; 1E08 _ 98
        mov     dword [ebp-10H], eax                    ; 1E09 _ 89. 45, F0
        movzx   eax, word [?_264]                       ; 1E0C _ 0F B7. 05, 0000000E(d)
        cwde                                            ; 1E13 _ 98
        mov     dword [ebp-0CH], eax                    ; 1E14 _ 89. 45, F4
        sub     esp, 8                                  ; 1E17 _ 83. EC, 08
        push    32                                      ; 1E1A _ 6A, 20
        push    32                                      ; 1E1C _ 6A, 20
        call    io_out8                                 ; 1E1E _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1E23 _ 83. C4, 10
        mov     byte [ebp-15H], 0                       ; 1E26 _ C6. 45, EB, 00
        sub     esp, 12                                 ; 1E2A _ 83. EC, 0C
        push    96                                      ; 1E2D _ 6A, 60
        call    io_in8                                  ; 1E2F _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1E34 _ 83. C4, 10
        mov     byte [ebp-15H], al                      ; 1E37 _ 88. 45, EB
        movzx   eax, byte [ebp-15H]                     ; 1E3A _ 0F B6. 45, EB
        sub     esp, 8                                  ; 1E3E _ 83. EC, 08
        push    eax                                     ; 1E41 _ 50
        push    keyInfo                                 ; 1E42 _ 68, 00000010(d)
        call    fifo8_put                               ; 1E47 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1E4C _ 83. C4, 10
        nop                                             ; 1E4F _ 90
        leave                                           ; 1E50 _ C9
        ret                                             ; 1E51 _ C3
; intHandlerFromC End of function

charToHex:; Function begin
        push    ebp                                     ; 1E52 _ 55
        mov     ebp, esp                                ; 1E53 _ 89. E5
        sub     esp, 40                                 ; 1E55 _ 83. EC, 28
        mov     eax, dword [ebp+8H]                     ; 1E58 _ 8B. 45, 08
        mov     byte [ebp-1CH], al                      ; 1E5B _ 88. 45, E4
        movzx   eax, byte [ebp-1CH]                     ; 1E5E _ 0F B6. 45, E4
        and     eax, 0FH                                ; 1E62 _ 83. E0, 0F
        mov     byte [ebp-9H], al                       ; 1E65 _ 88. 45, F7
        movsx   eax, byte [ebp-9H]                      ; 1E68 _ 0F BE. 45, F7
        sub     esp, 12                                 ; 1E6C _ 83. EC, 0C
        push    eax                                     ; 1E6F _ 50
        call    charToVal                               ; 1E70 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1E75 _ 83. C4, 10
        mov     byte [?_262], al                        ; 1E78 _ A2, 00000003(d)
        movzx   eax, byte [ebp-1CH]                     ; 1E7D _ 0F B6. 45, E4
        shr     al, 4                                   ; 1E81 _ C0. E8, 04
        mov     byte [ebp-1CH], al                      ; 1E84 _ 88. 45, E4
        movzx   eax, byte [ebp-1CH]                     ; 1E87 _ 0F B6. 45, E4
        movsx   eax, al                                 ; 1E8B _ 0F BE. C0
        sub     esp, 12                                 ; 1E8E _ 83. EC, 0C
        push    eax                                     ; 1E91 _ 50
        call    charToVal                               ; 1E92 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1E97 _ 83. C4, 10
        mov     byte [?_261], al                        ; 1E9A _ A2, 00000002(d)
        mov     eax, keyVal                             ; 1E9F _ B8, 00000000(d)
        leave                                           ; 1EA4 _ C9
        ret                                             ; 1EA5 _ C3
; charToHex End of function

charToVal:; Function begin
        push    ebp                                     ; 1EA6 _ 55
        mov     ebp, esp                                ; 1EA7 _ 89. E5
        sub     esp, 4                                  ; 1EA9 _ 83. EC, 04
        mov     eax, dword [ebp+8H]                     ; 1EAC _ 8B. 45, 08
        mov     byte [ebp-4H], al                       ; 1EAF _ 88. 45, FC
        cmp     byte [ebp-4H], 9                        ; 1EB2 _ 80. 7D, FC, 09
        jle     ?_088                                   ; 1EB6 _ 7E, 09
        movzx   eax, byte [ebp-4H]                      ; 1EB8 _ 0F B6. 45, FC
        add     eax, 55                                 ; 1EBC _ 83. C0, 37
        jmp     ?_089                                   ; 1EBF _ EB, 07

?_088:  movzx   eax, byte [ebp-4H]                      ; 1EC1 _ 0F B6. 45, FC
        add     eax, 48                                 ; 1EC5 _ 83. C0, 30
?_089:  leave                                           ; 1EC8 _ C9
        ret                                             ; 1EC9 _ C3
; charToVal End of function

intToHexStr:; Function begin
        push    ebp                                     ; 1ECA _ 55
        mov     ebp, esp                                ; 1ECB _ 89. E5
        sub     esp, 16                                 ; 1ECD _ 83. EC, 10
        mov     byte [str.2519], 48                     ; 1ED0 _ C6. 05, 00000278(d), 30
        mov     byte [?_267], 120                       ; 1ED7 _ C6. 05, 00000279(d), 78
        mov     byte [?_268], 0                         ; 1EDE _ C6. 05, 00000282(d), 00
        mov     dword [ebp-0CH], 2                      ; 1EE5 _ C7. 45, F4, 00000002
        jmp     ?_091                                   ; 1EEC _ EB, 0F

?_090:  mov     eax, dword [ebp-0CH]                    ; 1EEE _ 8B. 45, F4
        add     eax, str.2519                           ; 1EF1 _ 05, 00000278(d)
        mov     byte [eax], 48                          ; 1EF6 _ C6. 00, 30
        add     dword [ebp-0CH], 1                      ; 1EF9 _ 83. 45, F4, 01
?_091:  cmp     dword [ebp-0CH], 9                      ; 1EFD _ 83. 7D, F4, 09
        jle     ?_090                                   ; 1F01 _ 7E, EB
        mov     dword [ebp-8H], 9                       ; 1F03 _ C7. 45, F8, 00000009
        jmp     ?_094                                   ; 1F0A _ EB, 48

?_092:  mov     eax, dword [ebp+8H]                     ; 1F0C _ 8B. 45, 08
        and     eax, 0FH                                ; 1F0F _ 83. E0, 0F
        mov     dword [ebp-4H], eax                     ; 1F12 _ 89. 45, FC
        mov     eax, dword [ebp+8H]                     ; 1F15 _ 8B. 45, 08
        shr     eax, 4                                  ; 1F18 _ C1. E8, 04
        mov     dword [ebp+8H], eax                     ; 1F1B _ 89. 45, 08
        cmp     dword [ebp-4H], 9                       ; 1F1E _ 83. 7D, FC, 09
        jle     ?_093                                   ; 1F22 _ 7E, 19
        mov     eax, dword [ebp-4H]                     ; 1F24 _ 8B. 45, FC
        lea     ecx, [eax+37H]                          ; 1F27 _ 8D. 48, 37
        mov     eax, dword [ebp-8H]                     ; 1F2A _ 8B. 45, F8
        lea     edx, [eax-1H]                           ; 1F2D _ 8D. 50, FF
        mov     dword [ebp-8H], edx                     ; 1F30 _ 89. 55, F8
        mov     edx, ecx                                ; 1F33 _ 89. CA
        mov     byte [str.2519+eax], dl                 ; 1F35 _ 88. 90, 00000278(d)
        jmp     ?_094                                   ; 1F3B _ EB, 17

?_093:  mov     eax, dword [ebp-4H]                     ; 1F3D _ 8B. 45, FC
        lea     ecx, [eax+30H]                          ; 1F40 _ 8D. 48, 30
        mov     eax, dword [ebp-8H]                     ; 1F43 _ 8B. 45, F8
        lea     edx, [eax-1H]                           ; 1F46 _ 8D. 50, FF
        mov     dword [ebp-8H], edx                     ; 1F49 _ 89. 55, F8
        mov     edx, ecx                                ; 1F4C _ 89. CA
        mov     byte [str.2519+eax], dl                 ; 1F4E _ 88. 90, 00000278(d)
?_094:  cmp     dword [ebp-8H], 1                       ; 1F54 _ 83. 7D, F8, 01
        jle     ?_095                                   ; 1F58 _ 7E, 06
        cmp     dword [ebp+8H], 0                       ; 1F5A _ 83. 7D, 08, 00
        jnz     ?_092                                   ; 1F5E _ 75, AC
?_095:  mov     eax, str.2519                           ; 1F60 _ B8, 00000278(d)
        leave                                           ; 1F65 _ C9
        ret                                             ; 1F66 _ C3
; intToHexStr End of function

wait_KBC_sendReady:; Function begin
        push    ebp                                     ; 1F67 _ 55
        mov     ebp, esp                                ; 1F68 _ 89. E5
        sub     esp, 8                                  ; 1F6A _ 83. EC, 08
?_096:  sub     esp, 12                                 ; 1F6D _ 83. EC, 0C
        push    100                                     ; 1F70 _ 6A, 64
        call    io_in8                                  ; 1F72 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1F77 _ 83. C4, 10
        movsx   eax, al                                 ; 1F7A _ 0F BE. C0
        and     eax, 02H                                ; 1F7D _ 83. E0, 02
        test    eax, eax                                ; 1F80 _ 85. C0
        jz      ?_097                                   ; 1F82 _ 74, 02
        jmp     ?_096                                   ; 1F84 _ EB, E7

?_097:  nop                                             ; 1F86 _ 90
        nop                                             ; 1F87 _ 90
        leave                                           ; 1F88 _ C9
        ret                                             ; 1F89 _ C3
; wait_KBC_sendReady End of function

init_keyboard:; Function begin
        push    ebp                                     ; 1F8A _ 55
        mov     ebp, esp                                ; 1F8B _ 89. E5
        sub     esp, 8                                  ; 1F8D _ 83. EC, 08
        call    wait_KBC_sendReady                      ; 1F90 _ E8, FFFFFFFC(rel)
        sub     esp, 8                                  ; 1F95 _ 83. EC, 08
        push    96                                      ; 1F98 _ 6A, 60
        push    100                                     ; 1F9A _ 6A, 64
        call    io_out8                                 ; 1F9C _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1FA1 _ 83. C4, 10
        call    wait_KBC_sendReady                      ; 1FA4 _ E8, FFFFFFFC(rel)
        sub     esp, 8                                  ; 1FA9 _ 83. EC, 08
        push    71                                      ; 1FAC _ 6A, 47
        push    96                                      ; 1FAE _ 6A, 60
        call    io_out8                                 ; 1FB0 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1FB5 _ 83. C4, 10
        nop                                             ; 1FB8 _ 90
        leave                                           ; 1FB9 _ C9
        ret                                             ; 1FBA _ C3
; init_keyboard End of function

enable_mouse:; Function begin
        push    ebp                                     ; 1FBB _ 55
        mov     ebp, esp                                ; 1FBC _ 89. E5
        sub     esp, 8                                  ; 1FBE _ 83. EC, 08
        call    wait_KBC_sendReady                      ; 1FC1 _ E8, FFFFFFFC(rel)
        sub     esp, 8                                  ; 1FC6 _ 83. EC, 08
        push    212                                     ; 1FC9 _ 68, 000000D4
        push    100                                     ; 1FCE _ 6A, 64
        call    io_out8                                 ; 1FD0 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1FD5 _ 83. C4, 10
        call    wait_KBC_sendReady                      ; 1FD8 _ E8, FFFFFFFC(rel)
        sub     esp, 8                                  ; 1FDD _ 83. EC, 08
        push    244                                     ; 1FE0 _ 68, 000000F4
        push    96                                      ; 1FE5 _ 6A, 60
        call    io_out8                                 ; 1FE7 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1FEC _ 83. C4, 10
        mov     eax, dword [ebp+8H]                     ; 1FEF _ 8B. 45, 08
        mov     byte [eax+3H], 0                        ; 1FF2 _ C6. 40, 03, 00
        nop                                             ; 1FF6 _ 90
        leave                                           ; 1FF7 _ C9
        ret                                             ; 1FF8 _ C3
; enable_mouse End of function

intHandlerForMouse:; Function begin
        push    ebp                                     ; 1FF9 _ 55
        mov     ebp, esp                                ; 1FFA _ 89. E5
        sub     esp, 24                                 ; 1FFC _ 83. EC, 18
        mov     byte [ebp-9H], 0                        ; 1FFF _ C6. 45, F7, 00
        sub     esp, 8                                  ; 2003 _ 83. EC, 08
        push    32                                      ; 2006 _ 6A, 20
        push    160                                     ; 2008 _ 68, 000000A0
        call    io_out8                                 ; 200D _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 2012 _ 83. C4, 10
        sub     esp, 8                                  ; 2015 _ 83. EC, 08
        push    32                                      ; 2018 _ 6A, 20
        push    32                                      ; 201A _ 6A, 20
        call    io_out8                                 ; 201C _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 2021 _ 83. C4, 10
        sub     esp, 12                                 ; 2024 _ 83. EC, 0C
        push    96                                      ; 2027 _ 6A, 60
        call    io_in8                                  ; 2029 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 202E _ 83. C4, 10
        mov     byte [ebp-9H], al                       ; 2031 _ 88. 45, F7
        movzx   eax, byte [ebp-9H]                      ; 2034 _ 0F B6. 45, F7
        sub     esp, 8                                  ; 2038 _ 83. EC, 08
        push    eax                                     ; 203B _ 50
        push    mouseInfo                               ; 203C _ 68, 0000002C(d)
        call    fifo8_put                               ; 2041 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 2046 _ 83. C4, 10
        nop                                             ; 2049 _ 90
        leave                                           ; 204A _ C9
        ret                                             ; 204B _ C3
; intHandlerForMouse End of function

showKeyboardInfo:; Function begin
        push    ebp                                     ; 204C _ 55
        mov     ebp, esp                                ; 204D _ 89. E5
        sub     esp, 40                                 ; 204F _ 83. EC, 28
        call    io_sti                                  ; 2052 _ E8, FFFFFFFC(rel)
        mov     eax, dword [bootInfo]                   ; 2057 _ A1, 00000008(d)
        mov     dword [ebp-18H], eax                    ; 205C _ 89. 45, E8
        movzx   eax, word [?_263]                       ; 205F _ 0F B7. 05, 0000000C(d)
        cwde                                            ; 2066 _ 98
        mov     dword [ebp-14H], eax                    ; 2067 _ 89. 45, EC
        movzx   eax, word [?_264]                       ; 206A _ 0F B7. 05, 0000000E(d)
        cwde                                            ; 2071 _ 98
        mov     dword [ebp-10H], eax                    ; 2072 _ 89. 45, F0
        mov     byte [ebp-19H], 0                       ; 2075 _ C6. 45, E7, 00
        sub     esp, 12                                 ; 2079 _ 83. EC, 0C
        push    keyInfo                                 ; 207C _ 68, 00000010(d)
        call    fifo8_get                               ; 2081 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 2086 _ 83. C4, 10
        mov     byte [ebp-19H], al                      ; 2089 _ 88. 45, E7
        movzx   eax, byte [ebp-19H]                     ; 208C _ 0F B6. 45, E7
        sub     esp, 12                                 ; 2090 _ 83. EC, 0C
        push    eax                                     ; 2093 _ 50
        call    charToHex                               ; 2094 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 2099 _ 83. C4, 10
        mov     dword [ebp-0CH], eax                    ; 209C _ 89. 45, F4
        mov     edx, dword [line.2552]                  ; 209F _ 8B. 15, 00000284(d)
        mov     eax, dword [pos.2551]                   ; 20A5 _ A1, 00000288(d)
        sub     esp, 8                                  ; 20AA _ 83. EC, 08
        push    dword [ebp-0CH]                         ; 20AD _ FF. 75, F4
        push    7                                       ; 20B0 _ 6A, 07
        push    edx                                     ; 20B2 _ 52
        push    eax                                     ; 20B3 _ 50
        push    dword [ebp+0CH]                         ; 20B4 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 20B7 _ FF. 75, 08
        call    showString                              ; 20BA _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 20BF _ 83. C4, 20
        mov     eax, dword [pos.2551]                   ; 20C2 _ A1, 00000288(d)
        add     eax, 32                                 ; 20C7 _ 83. C0, 20
        mov     dword [pos.2551], eax                   ; 20CA _ A3, 00000288(d)
        mov     eax, dword [pos.2551]                   ; 20CF _ A1, 00000288(d)
        cmp     dword [ebp-14H], eax                    ; 20D4 _ 39. 45, EC
        jnz     ?_100                                   ; 20D7 _ 75, 28
        mov     eax, dword [line.2552]                  ; 20D9 _ A1, 00000284(d)
        cmp     dword [ebp-10H], eax                    ; 20DE _ 39. 45, F0
        jz      ?_098                                   ; 20E1 _ 74, 0A
        mov     eax, dword [line.2552]                  ; 20E3 _ A1, 00000284(d)
        add     eax, 16                                 ; 20E8 _ 83. C0, 10
        jmp     ?_099                                   ; 20EB _ EB, 05

?_098:  mov     eax, 0                                  ; 20ED _ B8, 00000000
?_099:  mov     dword [line.2552], eax                  ; 20F2 _ A3, 00000284(d)
        mov     dword [pos.2551], 0                     ; 20F7 _ C7. 05, 00000288(d), 00000000
?_100:  nop                                             ; 2101 _ 90
        leave                                           ; 2102 _ C9
        ret                                             ; 2103 _ C3
; showKeyboardInfo End of function

showMouseInfo:; Function begin
        push    ebp                                     ; 2104 _ 55
        mov     ebp, esp                                ; 2105 _ 89. E5
        sub     esp, 24                                 ; 2107 _ 83. EC, 18
        call    io_sti                                  ; 210A _ E8, FFFFFFFC(rel)
        mov     byte [ebp-9H], 0                        ; 210F _ C6. 45, F7, 00
        sub     esp, 12                                 ; 2113 _ 83. EC, 0C
        push    mouseInfo                               ; 2116 _ 68, 0000002C(d)
        call    fifo8_get                               ; 211B _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 2120 _ 83. C4, 10
        mov     byte [ebp-9H], al                       ; 2123 _ 88. 45, F7
        movzx   eax, byte [ebp-9H]                      ; 2126 _ 0F B6. 45, F7
        sub     esp, 8                                  ; 212A _ 83. EC, 08
        push    eax                                     ; 212D _ 50
        push    mouse_move                              ; 212E _ 68, 00000100(d)
        call    mouse_decode                            ; 2133 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 2138 _ 83. C4, 10
        test    eax, eax                                ; 213B _ 85. C0
        jz      ?_101                                   ; 213D _ 74, 60
        sub     esp, 4                                  ; 213F _ 83. EC, 04
        push    mouse_move                              ; 2142 _ 68, 00000100(d)
        push    dword [ebp+0CH]                         ; 2147 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 214A _ FF. 75, 08
        call    computeMousePos                         ; 214D _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 2152 _ 83. C4, 10
        mov     edx, dword [my]                         ; 2155 _ 8B. 15, 00000114(d)
        mov     eax, dword [mx]                         ; 215B _ A1, 00000110(d)
        push    edx                                     ; 2160 _ 52
        push    eax                                     ; 2161 _ 50
        push    dword [ebp+10H]                         ; 2162 _ FF. 75, 10
        push    dword [ebp+8H]                          ; 2165 _ FF. 75, 08
        call    sheet_slide                             ; 2168 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 216D _ 83. C4, 10
        mov     eax, dword [?_266]                      ; 2170 _ A1, 0000010C(d)
        and     eax, 01H                                ; 2175 _ 83. E0, 01
        test    eax, eax                                ; 2178 _ 85. C0
        jz      ?_101                                   ; 217A _ 74, 23
        mov     eax, dword [my]                         ; 217C _ A1, 00000114(d)
        lea     ecx, [eax-8H]                           ; 2181 _ 8D. 48, F8
        mov     eax, dword [mx]                         ; 2184 _ A1, 00000110(d)
        lea     edx, [eax-50H]                          ; 2189 _ 8D. 50, B0
        mov     eax, dword [sheet_win]                  ; 218C _ A1, 00000248(d)
        push    ecx                                     ; 2191 _ 51
        push    edx                                     ; 2192 _ 52
        push    eax                                     ; 2193 _ 50
        push    dword [ebp+8H]                          ; 2194 _ FF. 75, 08
        call    sheet_slide                             ; 2197 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 219C _ 83. C4, 10
?_101:  nop                                             ; 219F _ 90
        leave                                           ; 21A0 _ C9
        ret                                             ; 21A1 _ C3
; showMouseInfo End of function

mouse_decode:; Function begin
        push    ebp                                     ; 21A2 _ 55
        mov     ebp, esp                                ; 21A3 _ 89. E5
        sub     esp, 4                                  ; 21A5 _ 83. EC, 04
        mov     eax, dword [ebp+0CH]                    ; 21A8 _ 8B. 45, 0C
        mov     byte [ebp-4H], al                       ; 21AB _ 88. 45, FC
        mov     eax, dword [ebp+8H]                     ; 21AE _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 21B1 _ 0F B6. 40, 03
        test    al, al                                  ; 21B5 _ 84. C0
        jnz     ?_103                                   ; 21B7 _ 75, 17
        cmp     byte [ebp-4H], -6                       ; 21B9 _ 80. 7D, FC, FA
        jnz     ?_102                                   ; 21BD _ 75, 07
        mov     eax, dword [ebp+8H]                     ; 21BF _ 8B. 45, 08
        mov     byte [eax+3H], 1                        ; 21C2 _ C6. 40, 03, 01
?_102:  mov     eax, 0                                  ; 21C6 _ B8, 00000000
        jmp     ?_110                                   ; 21CB _ E9, 0000010C

?_103:  mov     eax, dword [ebp+8H]                     ; 21D0 _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 21D3 _ 0F B6. 40, 03
        cmp     al, 1                                   ; 21D7 _ 3C, 01
        jnz     ?_105                                   ; 21D9 _ 75, 25
        movzx   eax, byte [ebp-4H]                      ; 21DB _ 0F B6. 45, FC
        or      eax, 37H                                ; 21DF _ 83. C8, 37
        cmp     al, 63                                  ; 21E2 _ 3C, 3F
        jnz     ?_104                                   ; 21E4 _ 75, 10
        mov     eax, dword [ebp+8H]                     ; 21E6 _ 8B. 45, 08
        movzx   edx, byte [ebp-4H]                      ; 21E9 _ 0F B6. 55, FC
        mov     byte [eax], dl                          ; 21ED _ 88. 10
        mov     eax, dword [ebp+8H]                     ; 21EF _ 8B. 45, 08
        mov     byte [eax+3H], 2                        ; 21F2 _ C6. 40, 03, 02
?_104:  mov     eax, 0                                  ; 21F6 _ B8, 00000000
        jmp     ?_110                                   ; 21FB _ E9, 000000DC

?_105:  mov     eax, dword [ebp+8H]                     ; 2200 _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 2203 _ 0F B6. 40, 03
        cmp     al, 2                                   ; 2207 _ 3C, 02
        jnz     ?_106                                   ; 2209 _ 75, 1B
        mov     eax, dword [ebp+8H]                     ; 220B _ 8B. 45, 08
        movzx   edx, byte [ebp-4H]                      ; 220E _ 0F B6. 55, FC
        mov     byte [eax+1H], dl                       ; 2212 _ 88. 50, 01
        mov     eax, dword [ebp+8H]                     ; 2215 _ 8B. 45, 08
        mov     byte [eax+3H], 3                        ; 2218 _ C6. 40, 03, 03
        mov     eax, 0                                  ; 221C _ B8, 00000000
        jmp     ?_110                                   ; 2221 _ E9, 000000B6

?_106:  mov     eax, dword [ebp+8H]                     ; 2226 _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 2229 _ 0F B6. 40, 03
        cmp     al, 3                                   ; 222D _ 3C, 03
        jne     ?_109                                   ; 222F _ 0F 85, 000000A2
        mov     eax, dword [ebp+8H]                     ; 2235 _ 8B. 45, 08
        movzx   edx, byte [ebp-4H]                      ; 2238 _ 0F B6. 55, FC
        mov     byte [eax+2H], dl                       ; 223C _ 88. 50, 02
        mov     eax, dword [ebp+8H]                     ; 223F _ 8B. 45, 08
        mov     byte [eax+3H], 1                        ; 2242 _ C6. 40, 03, 01
        mov     eax, dword [ebp+8H]                     ; 2246 _ 8B. 45, 08
        movzx   eax, byte [eax]                         ; 2249 _ 0F B6. 00
        movzx   eax, al                                 ; 224C _ 0F B6. C0
        and     eax, 07H                                ; 224F _ 83. E0, 07
        mov     edx, eax                                ; 2252 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 2254 _ 8B. 45, 08
        mov     dword [eax+0CH], edx                    ; 2257 _ 89. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 225A _ 8B. 45, 08
        movzx   eax, byte [eax+1H]                      ; 225D _ 0F B6. 40, 01
        movzx   edx, al                                 ; 2261 _ 0F B6. D0
        mov     eax, dword [ebp+8H]                     ; 2264 _ 8B. 45, 08
        mov     dword [eax+4H], edx                     ; 2267 _ 89. 50, 04
        mov     eax, dword [ebp+8H]                     ; 226A _ 8B. 45, 08
        movzx   eax, byte [eax+2H]                      ; 226D _ 0F B6. 40, 02
        movzx   edx, al                                 ; 2271 _ 0F B6. D0
        mov     eax, dword [ebp+8H]                     ; 2274 _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 2277 _ 89. 50, 08
        mov     eax, dword [ebp+8H]                     ; 227A _ 8B. 45, 08
        movzx   eax, byte [eax]                         ; 227D _ 0F B6. 00
        movzx   eax, al                                 ; 2280 _ 0F B6. C0
        and     eax, 10H                                ; 2283 _ 83. E0, 10
        test    eax, eax                                ; 2286 _ 85. C0
        jz      ?_107                                   ; 2288 _ 74, 13
        mov     eax, dword [ebp+8H]                     ; 228A _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 228D _ 8B. 40, 04
        or      eax, 0FFFFFF00H                         ; 2290 _ 0D, FFFFFF00
        mov     edx, eax                                ; 2295 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 2297 _ 8B. 45, 08
        mov     dword [eax+4H], edx                     ; 229A _ 89. 50, 04
?_107:  mov     eax, dword [ebp+8H]                     ; 229D _ 8B. 45, 08
        movzx   eax, byte [eax]                         ; 22A0 _ 0F B6. 00
        movzx   eax, al                                 ; 22A3 _ 0F B6. C0
        and     eax, 20H                                ; 22A6 _ 83. E0, 20
        test    eax, eax                                ; 22A9 _ 85. C0
        jz      ?_108                                   ; 22AB _ 74, 13
        mov     eax, dword [ebp+8H]                     ; 22AD _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 22B0 _ 8B. 40, 08
        or      eax, 0FFFFFF00H                         ; 22B3 _ 0D, FFFFFF00
        mov     edx, eax                                ; 22B8 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 22BA _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 22BD _ 89. 50, 08
?_108:  mov     eax, dword [ebp+8H]                     ; 22C0 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 22C3 _ 8B. 40, 08
        neg     eax                                     ; 22C6 _ F7. D8
        mov     edx, eax                                ; 22C8 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 22CA _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 22CD _ 89. 50, 08
        mov     eax, 1                                  ; 22D0 _ B8, 00000001
        jmp     ?_110                                   ; 22D5 _ EB, 05

?_109:  mov     eax, 4294967295                         ; 22D7 _ B8, FFFFFFFF
?_110:  leave                                           ; 22DC _ C9
        ret                                             ; 22DD _ C3
; mouse_decode End of function

computeMousePos:; Function begin
        push    ebp                                     ; 22DE _ 55
        mov     ebp, esp                                ; 22DF _ 89. E5
        sub     esp, 16                                 ; 22E1 _ 83. EC, 10
        movzx   eax, word [?_263]                       ; 22E4 _ 0F B7. 05, 0000000C(d)
        cwde                                            ; 22EB _ 98
        mov     dword [ebp-8H], eax                     ; 22EC _ 89. 45, F8
        movzx   eax, word [?_264]                       ; 22EF _ 0F B7. 05, 0000000E(d)
        cwde                                            ; 22F6 _ 98
        mov     dword [ebp-4H], eax                     ; 22F7 _ 89. 45, FC
        mov     eax, dword [ebp+10H]                    ; 22FA _ 8B. 45, 10
        mov     edx, dword [eax+4H]                     ; 22FD _ 8B. 50, 04
        mov     eax, dword [mx]                         ; 2300 _ A1, 00000110(d)
        add     eax, edx                                ; 2305 _ 01. D0
        mov     dword [mx], eax                         ; 2307 _ A3, 00000110(d)
        mov     eax, dword [ebp+10H]                    ; 230C _ 8B. 45, 10
        mov     edx, dword [eax+8H]                     ; 230F _ 8B. 50, 08
        mov     eax, dword [my]                         ; 2312 _ A1, 00000114(d)
        add     eax, edx                                ; 2317 _ 01. D0
        mov     dword [my], eax                         ; 2319 _ A3, 00000114(d)
        mov     eax, dword [mx]                         ; 231E _ A1, 00000110(d)
        test    eax, eax                                ; 2323 _ 85. C0
        jns     ?_111                                   ; 2325 _ 79, 0A
        mov     dword [mx], 0                           ; 2327 _ C7. 05, 00000110(d), 00000000
?_111:  mov     eax, dword [my]                         ; 2331 _ A1, 00000114(d)
        test    eax, eax                                ; 2336 _ 85. C0
        jns     ?_112                                   ; 2338 _ 79, 0A
        mov     dword [my], 0                           ; 233A _ C7. 05, 00000114(d), 00000000
?_112:  mov     eax, dword [ebp-8H]                     ; 2344 _ 8B. 45, F8
        lea     edx, [eax-9H]                           ; 2347 _ 8D. 50, F7
        mov     eax, dword [mx]                         ; 234A _ A1, 00000110(d)
        cmp     edx, eax                                ; 234F _ 39. C2
        jge     ?_113                                   ; 2351 _ 7D, 0B
        mov     eax, dword [ebp-8H]                     ; 2353 _ 8B. 45, F8
        sub     eax, 9                                  ; 2356 _ 83. E8, 09
        mov     dword [mx], eax                         ; 2359 _ A3, 00000110(d)
?_113:  mov     eax, dword [ebp-4H]                     ; 235E _ 8B. 45, FC
        lea     edx, [eax-1H]                           ; 2361 _ 8D. 50, FF
        mov     eax, dword [my]                         ; 2364 _ A1, 00000114(d)
        cmp     edx, eax                                ; 2369 _ 39. C2
        jge     ?_114                                   ; 236B _ 7D, 0B
        mov     eax, dword [ebp-4H]                     ; 236D _ 8B. 45, FC
        sub     eax, 1                                  ; 2370 _ 83. E8, 01
        mov     dword [my], eax                         ; 2373 _ A3, 00000114(d)
?_114:  nop                                             ; 2378 _ 90
        leave                                           ; 2379 _ C9
        ret                                             ; 237A _ C3
; computeMousePos End of function

showMemInfo:; Function begin
        push    ebp                                     ; 237B _ 55
        mov     ebp, esp                                ; 237C _ 89. E5
        sub     esp, 56                                 ; 237E _ 83. EC, 38
        mov     dword [ebp-30H], 0                      ; 2381 _ C7. 45, D0, 00000000
        mov     dword [ebp-2CH], 0                      ; 2388 _ C7. 45, D4, 00000000
        mov     dword [ebp-28H], 112                    ; 238F _ C7. 45, D8, 00000070
        mov     dword [ebp-24H], 80                     ; 2396 _ C7. 45, DC, 00000050
        push    100                                     ; 239D _ 6A, 64
        push    dword [ebp+1CH]                         ; 239F _ FF. 75, 1C
        push    0                                       ; 23A2 _ 6A, 00
        push    0                                       ; 23A4 _ 6A, 00
        push    14                                      ; 23A6 _ 6A, 0E
        push    dword [ebp+1CH]                         ; 23A8 _ FF. 75, 1C
        push    dword [ebp+14H]                         ; 23AB _ FF. 75, 14
        call    boxfill8                                ; 23AE _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 23B3 _ 83. C4, 1C
        mov     eax, dword [ebp+20H]                    ; 23B6 _ 8B. 45, 20
        movsx   eax, al                                 ; 23B9 _ 0F BE. C0
        sub     esp, 8                                  ; 23BC _ 83. EC, 08
        push    ?_255                                   ; 23BF _ 68, 0000008A(d)
        push    eax                                     ; 23C4 _ 50
        push    dword [ebp-2CH]                         ; 23C5 _ FF. 75, D4
        push    dword [ebp-30H]                         ; 23C8 _ FF. 75, D0
        push    dword [ebp+0CH]                         ; 23CB _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 23CE _ FF. 75, 08
        call    showString                              ; 23D1 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 23D6 _ 83. C4, 20
        mov     eax, dword [ebp+18H]                    ; 23D9 _ 8B. 45, 18
        sub     esp, 12                                 ; 23DC _ 83. EC, 0C
        push    eax                                     ; 23DF _ 50
        call    intToHexStr                             ; 23E0 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 23E5 _ 83. C4, 10
        mov     dword [ebp-20H], eax                    ; 23E8 _ 89. 45, E0
        mov     eax, dword [ebp+20H]                    ; 23EB _ 8B. 45, 20
        movsx   eax, al                                 ; 23EE _ 0F BE. C0
        sub     esp, 8                                  ; 23F1 _ 83. EC, 08
        push    dword [ebp-20H]                         ; 23F4 _ FF. 75, E0
        push    eax                                     ; 23F7 _ 50
        push    dword [ebp-2CH]                         ; 23F8 _ FF. 75, D4
        push    dword [ebp-28H]                         ; 23FB _ FF. 75, D8
        push    dword [ebp+0CH]                         ; 23FE _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 2401 _ FF. 75, 08
        call    showString                              ; 2404 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 2409 _ 83. C4, 20
        add     dword [ebp-2CH], 16                     ; 240C _ 83. 45, D4, 10
        mov     eax, dword [ebp+20H]                    ; 2410 _ 8B. 45, 20
        movsx   eax, al                                 ; 2413 _ 0F BE. C0
        sub     esp, 8                                  ; 2416 _ 83. EC, 08
        push    ?_256                                   ; 2419 _ 68, 00000094(d)
        push    eax                                     ; 241E _ 50
        push    dword [ebp-2CH]                         ; 241F _ FF. 75, D4
        push    dword [ebp-30H]                         ; 2422 _ FF. 75, D0
        push    dword [ebp+0CH]                         ; 2425 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 2428 _ FF. 75, 08
        call    showString                              ; 242B _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 2430 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 2433 _ 8B. 45, 10
        mov     eax, dword [eax]                        ; 2436 _ 8B. 00
        sub     esp, 12                                 ; 2438 _ 83. EC, 0C
        push    eax                                     ; 243B _ 50
        call    intToHexStr                             ; 243C _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 2441 _ 83. C4, 10
        mov     dword [ebp-1CH], eax                    ; 2444 _ 89. 45, E4
        mov     eax, dword [ebp+20H]                    ; 2447 _ 8B. 45, 20
        movsx   eax, al                                 ; 244A _ 0F BE. C0
        sub     esp, 8                                  ; 244D _ 83. EC, 08
        push    dword [ebp-1CH]                         ; 2450 _ FF. 75, E4
        push    eax                                     ; 2453 _ 50
        push    dword [ebp-2CH]                         ; 2454 _ FF. 75, D4
        push    dword [ebp-28H]                         ; 2457 _ FF. 75, D8
        push    dword [ebp+0CH]                         ; 245A _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 245D _ FF. 75, 08
        call    showString                              ; 2460 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 2465 _ 83. C4, 20
        add     dword [ebp-2CH], 16                     ; 2468 _ 83. 45, D4, 10
        mov     eax, dword [ebp+20H]                    ; 246C _ 8B. 45, 20
        movsx   eax, al                                 ; 246F _ 0F BE. C0
        sub     esp, 8                                  ; 2472 _ 83. EC, 08
        push    ?_257                                   ; 2475 _ 68, 000000A2(d)
        push    eax                                     ; 247A _ 50
        push    dword [ebp-2CH]                         ; 247B _ FF. 75, D4
        push    dword [ebp-30H]                         ; 247E _ FF. 75, D0
        push    dword [ebp+0CH]                         ; 2481 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 2484 _ FF. 75, 08
        call    showString                              ; 2487 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 248C _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 248F _ 8B. 45, 10
        mov     eax, dword [eax+4H]                     ; 2492 _ 8B. 40, 04
        sub     esp, 12                                 ; 2495 _ 83. EC, 0C
        push    eax                                     ; 2498 _ 50
        call    intToHexStr                             ; 2499 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 249E _ 83. C4, 10
        mov     dword [ebp-18H], eax                    ; 24A1 _ 89. 45, E8
        mov     eax, dword [ebp+20H]                    ; 24A4 _ 8B. 45, 20
        movsx   eax, al                                 ; 24A7 _ 0F BE. C0
        sub     esp, 8                                  ; 24AA _ 83. EC, 08
        push    dword [ebp-18H]                         ; 24AD _ FF. 75, E8
        push    eax                                     ; 24B0 _ 50
        push    dword [ebp-2CH]                         ; 24B1 _ FF. 75, D4
        push    dword [ebp-28H]                         ; 24B4 _ FF. 75, D8
        push    dword [ebp+0CH]                         ; 24B7 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 24BA _ FF. 75, 08
        call    showString                              ; 24BD _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 24C2 _ 83. C4, 20
        add     dword [ebp-2CH], 16                     ; 24C5 _ 83. 45, D4, 10
        mov     eax, dword [ebp+20H]                    ; 24C9 _ 8B. 45, 20
        movsx   eax, al                                 ; 24CC _ 0F BE. C0
        sub     esp, 8                                  ; 24CF _ 83. EC, 08
        push    ?_258                                   ; 24D2 _ 68, 000000B1(d)
        push    eax                                     ; 24D7 _ 50
        push    dword [ebp-2CH]                         ; 24D8 _ FF. 75, D4
        push    dword [ebp-30H]                         ; 24DB _ FF. 75, D0
        push    dword [ebp+0CH]                         ; 24DE _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 24E1 _ FF. 75, 08
        call    showString                              ; 24E4 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 24E9 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 24EC _ 8B. 45, 10
        mov     eax, dword [eax+8H]                     ; 24EF _ 8B. 40, 08
        sub     esp, 12                                 ; 24F2 _ 83. EC, 0C
        push    eax                                     ; 24F5 _ 50
        call    intToHexStr                             ; 24F6 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 24FB _ 83. C4, 10
        mov     dword [ebp-14H], eax                    ; 24FE _ 89. 45, EC
        mov     eax, dword [ebp+20H]                    ; 2501 _ 8B. 45, 20
        movsx   eax, al                                 ; 2504 _ 0F BE. C0
        sub     esp, 8                                  ; 2507 _ 83. EC, 08
        push    dword [ebp-14H]                         ; 250A _ FF. 75, EC
        push    eax                                     ; 250D _ 50
        push    dword [ebp-2CH]                         ; 250E _ FF. 75, D4
        push    dword [ebp-28H]                         ; 2511 _ FF. 75, D8
        push    dword [ebp+0CH]                         ; 2514 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 2517 _ FF. 75, 08
        call    showString                              ; 251A _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 251F _ 83. C4, 20
        add     dword [ebp-2CH], 16                     ; 2522 _ 83. 45, D4, 10
        mov     eax, dword [ebp+20H]                    ; 2526 _ 8B. 45, 20
        movsx   eax, al                                 ; 2529 _ 0F BE. C0
        sub     esp, 8                                  ; 252C _ 83. EC, 08
        push    ?_259                                   ; 252F _ 68, 000000BD(d)
        push    eax                                     ; 2534 _ 50
        push    dword [ebp-2CH]                         ; 2535 _ FF. 75, D4
        push    dword [ebp-30H]                         ; 2538 _ FF. 75, D0
        push    dword [ebp+0CH]                         ; 253B _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 253E _ FF. 75, 08
        call    showString                              ; 2541 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 2546 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 2549 _ 8B. 45, 10
        mov     eax, dword [eax+0CH]                    ; 254C _ 8B. 40, 0C
        sub     esp, 12                                 ; 254F _ 83. EC, 0C
        push    eax                                     ; 2552 _ 50
        call    intToHexStr                             ; 2553 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 2558 _ 83. C4, 10
        mov     dword [ebp-10H], eax                    ; 255B _ 89. 45, F0
        mov     eax, dword [ebp+20H]                    ; 255E _ 8B. 45, 20
        movsx   eax, al                                 ; 2561 _ 0F BE. C0
        sub     esp, 8                                  ; 2564 _ 83. EC, 08
        push    dword [ebp-10H]                         ; 2567 _ FF. 75, F0
        push    eax                                     ; 256A _ 50
        push    dword [ebp-2CH]                         ; 256B _ FF. 75, D4
        push    dword [ebp-28H]                         ; 256E _ FF. 75, D8
        push    dword [ebp+0CH]                         ; 2571 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 2574 _ FF. 75, 08
        call    showString                              ; 2577 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 257C _ 83. C4, 20
        add     dword [ebp-2CH], 16                     ; 257F _ 83. 45, D4, 10
        mov     eax, dword [ebp+20H]                    ; 2583 _ 8B. 45, 20
        movsx   eax, al                                 ; 2586 _ 0F BE. C0
        sub     esp, 8                                  ; 2589 _ 83. EC, 08
        push    ?_260                                   ; 258C _ 68, 000000CA(d)
        push    eax                                     ; 2591 _ 50
        push    dword [ebp-2CH]                         ; 2592 _ FF. 75, D4
        push    dword [ebp-30H]                         ; 2595 _ FF. 75, D0
        push    dword [ebp+0CH]                         ; 2598 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 259B _ FF. 75, 08
        call    showString                              ; 259E _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 25A3 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 25A6 _ 8B. 45, 10
        mov     eax, dword [eax+10H]                    ; 25A9 _ 8B. 40, 10
        sub     esp, 12                                 ; 25AC _ 83. EC, 0C
        push    eax                                     ; 25AF _ 50
        call    intToHexStr                             ; 25B0 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 25B5 _ 83. C4, 10
        mov     dword [ebp-0CH], eax                    ; 25B8 _ 89. 45, F4
        mov     eax, dword [ebp+20H]                    ; 25BB _ 8B. 45, 20
        movsx   eax, al                                 ; 25BE _ 0F BE. C0
        sub     esp, 8                                  ; 25C1 _ 83. EC, 08
        push    dword [ebp-0CH]                         ; 25C4 _ FF. 75, F4
        push    eax                                     ; 25C7 _ 50
        push    dword [ebp-2CH]                         ; 25C8 _ FF. 75, D4
        push    dword [ebp-28H]                         ; 25CB _ FF. 75, D8
        push    dword [ebp+0CH]                         ; 25CE _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 25D1 _ FF. 75, 08
        call    showString                              ; 25D4 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 25D9 _ 83. C4, 20
        add     dword [ebp-2CH], 16                     ; 25DC _ 83. 45, D4, 10
        nop                                             ; 25E0 _ 90
        leave                                           ; 25E1 _ C9
        ret                                             ; 25E2 _ C3
; showMemInfo End of function

messageBox:; Function begin
        push    ebp                                     ; 25E3 _ 55
        mov     ebp, esp                                ; 25E4 _ 89. E5
        sub     esp, 24                                 ; 25E6 _ 83. EC, 18
        mov     eax, dword [ebp+10H]                    ; 25E9 _ 8B. 45, 10
        imul    eax, dword [ebp+14H]                    ; 25EC _ 0F AF. 45, 14
        mov     edx, eax                                ; 25F0 _ 89. C2
        mov     eax, dword [memman]                     ; 25F2 _ A1, 00000008(d)
        sub     esp, 8                                  ; 25F7 _ 83. EC, 08
        push    edx                                     ; 25FA _ 52
        push    eax                                     ; 25FB _ 50
        call    memman_alloc_4K                         ; 25FC _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 2601 _ 83. C4, 10
        mov     dword [ebp-10H], eax                    ; 2604 _ 89. 45, F0
        sub     esp, 12                                 ; 2607 _ 83. EC, 0C
        push    dword [ebp+8H]                          ; 260A _ FF. 75, 08
        call    sheet_alloc                             ; 260D _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 2612 _ 83. C4, 10
        mov     dword [ebp-0CH], eax                    ; 2615 _ 89. 45, F4
        sub     esp, 12                                 ; 2618 _ 83. EC, 0C
        push    99                                      ; 261B _ 6A, 63
        push    dword [ebp+14H]                         ; 261D _ FF. 75, 14
        push    dword [ebp+10H]                         ; 2620 _ FF. 75, 10
        push    dword [ebp-10H]                         ; 2623 _ FF. 75, F0
        push    dword [ebp-0CH]                         ; 2626 _ FF. 75, F4
        call    sheet_setbuf                            ; 2629 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 262E _ 83. C4, 20
        push    1                                       ; 2631 _ 6A, 01
        push    dword [ebp+0CH]                         ; 2633 _ FF. 75, 0C
        push    dword [ebp-0CH]                         ; 2636 _ FF. 75, F4
        push    dword [ebp+8H]                          ; 2639 _ FF. 75, 08
        call    make_window8                            ; 263C _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 2641 _ 83. C4, 10
        sub     esp, 8                                  ; 2644 _ 83. EC, 08
        push    7                                       ; 2647 _ 6A, 07
        push    16                                      ; 2649 _ 6A, 10
        push    150                                     ; 264B _ 68, 00000096
        push    42                                      ; 2650 _ 6A, 2A
        push    10                                      ; 2652 _ 6A, 0A
        push    dword [ebp-0CH]                         ; 2654 _ FF. 75, F4
        call    make_textbox8                           ; 2657 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 265C _ 83. C4, 20
        push    dword [ebp+1CH]                         ; 265F _ FF. 75, 1C
        push    dword [ebp+18H]                         ; 2662 _ FF. 75, 18
        push    dword [ebp-0CH]                         ; 2665 _ FF. 75, F4
        push    dword [ebp+8H]                          ; 2668 _ FF. 75, 08
        call    sheet_slide                             ; 266B _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 2670 _ 83. C4, 10
        sub     esp, 4                                  ; 2673 _ 83. EC, 04
        push    dword [ebp+20H]                         ; 2676 _ FF. 75, 20
        push    dword [ebp-0CH]                         ; 2679 _ FF. 75, F4
        push    dword [ebp+8H]                          ; 267C _ FF. 75, 08
        call    sheet_level_updown                      ; 267F _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 2684 _ 83. C4, 10
        mov     eax, dword [ebp-0CH]                    ; 2687 _ 8B. 45, F4
        leave                                           ; 268A _ C9
        ret                                             ; 268B _ C3
; messageBox End of function

messageBoxToTask:; Function begin
        push    ebp                                     ; 268C _ 55
        mov     ebp, esp                                ; 268D _ 89. E5
        sub     esp, 24                                 ; 268F _ 83. EC, 18
        mov     eax, dword [ebp+1CH]                    ; 2692 _ 8B. 45, 1C
        imul    eax, dword [ebp+20H]                    ; 2695 _ 0F AF. 45, 20
        mov     edx, eax                                ; 2699 _ 89. C2
        mov     eax, dword [memman]                     ; 269B _ A1, 00000008(d)
        sub     esp, 8                                  ; 26A0 _ 83. EC, 08
        push    edx                                     ; 26A3 _ 52
        push    eax                                     ; 26A4 _ 50
        call    memman_alloc_4K                         ; 26A5 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 26AA _ 83. C4, 10
        mov     dword [ebp-10H], eax                    ; 26AD _ 89. 45, F0
        sub     esp, 12                                 ; 26B0 _ 83. EC, 0C
        push    dword [ebp+8H]                          ; 26B3 _ FF. 75, 08
        call    sheet_alloc                             ; 26B6 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 26BB _ 83. C4, 10
        mov     dword [ebp-0CH], eax                    ; 26BE _ 89. 45, F4
        sub     esp, 12                                 ; 26C1 _ 83. EC, 0C
        push    99                                      ; 26C4 _ 6A, 63
        push    dword [ebp+20H]                         ; 26C6 _ FF. 75, 20
        push    dword [ebp+1CH]                         ; 26C9 _ FF. 75, 1C
        push    dword [ebp-10H]                         ; 26CC _ FF. 75, F0
        push    dword [ebp-0CH]                         ; 26CF _ FF. 75, F4
        call    sheet_setbuf                            ; 26D2 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 26D7 _ 83. C4, 20
        push    0                                       ; 26DA _ 6A, 00
        push    dword [ebp+18H]                         ; 26DC _ FF. 75, 18
        push    dword [ebp-0CH]                         ; 26DF _ FF. 75, F4
        push    dword [ebp+8H]                          ; 26E2 _ FF. 75, 08
        call    make_window8                            ; 26E5 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 26EA _ 83. C4, 10
        call    task_alloc                              ; 26ED _ E8, FFFFFFFC(rel)
        mov     dword [ebp+0CH], eax                    ; 26F2 _ 89. 45, 0C
        mov     eax, dword [ebp+0CH]                    ; 26F5 _ 8B. 45, 0C
        mov     dword [eax+74H], 0                      ; 26F8 _ C7. 40, 74, 00000000
        mov     eax, dword [ebp+0CH]                    ; 26FF _ 8B. 45, 0C
        mov     dword [eax+78H], 1073741824             ; 2702 _ C7. 40, 78, 40000000
        call    get_code32_addr                         ; 2709 _ E8, FFFFFFFC(rel)
        neg     eax                                     ; 270E _ F7. D8
        add     eax, task_b_main                        ; 2710 _ 05, 00000000(d)
        mov     edx, eax                                ; 2715 _ 89. C2
        mov     eax, dword [ebp+0CH]                    ; 2717 _ 8B. 45, 0C
        mov     dword [eax+34H], edx                    ; 271A _ 89. 50, 34
        mov     eax, dword [ebp+0CH]                    ; 271D _ 8B. 45, 0C
        mov     dword [eax+5CH], 0                      ; 2720 _ C7. 40, 5C, 00000000
        mov     eax, dword [ebp+0CH]                    ; 2727 _ 8B. 45, 0C
        mov     dword [eax+60H], 8                      ; 272A _ C7. 40, 60, 00000008
        mov     eax, dword [ebp+0CH]                    ; 2731 _ 8B. 45, 0C
        mov     dword [eax+64H], 32                     ; 2734 _ C7. 40, 64, 00000020
        mov     eax, dword [ebp+0CH]                    ; 273B _ 8B. 45, 0C
        mov     dword [eax+68H], 24                     ; 273E _ C7. 40, 68, 00000018
        mov     eax, dword [ebp+0CH]                    ; 2745 _ 8B. 45, 0C
        mov     dword [eax+6CH], 0                      ; 2748 _ C7. 40, 6C, 00000000
        mov     eax, dword [ebp+0CH]                    ; 274F _ 8B. 45, 0C
        mov     dword [eax+70H], 16                     ; 2752 _ C7. 40, 70, 00000010
        mov     eax, dword [ebp+0CH]                    ; 2759 _ 8B. 45, 0C
        mov     eax, dword [eax+4CH]                    ; 275C _ 8B. 40, 4C
        lea     edx, [eax-8H]                           ; 275F _ 8D. 50, F8
        mov     eax, dword [ebp+0CH]                    ; 2762 _ 8B. 45, 0C
        mov     dword [eax+4CH], edx                    ; 2765 _ 89. 50, 4C
        mov     eax, dword [ebp+0CH]                    ; 2768 _ 8B. 45, 0C
        mov     eax, dword [eax+4CH]                    ; 276B _ 8B. 40, 4C
        add     eax, 4                                  ; 276E _ 83. C0, 04
        mov     edx, eax                                ; 2771 _ 89. C2
        mov     eax, dword [ebp-0CH]                    ; 2773 _ 8B. 45, F4
        mov     dword [edx], eax                        ; 2776 _ 89. 02
        sub     esp, 4                                  ; 2778 _ 83. EC, 04
        push    dword [ebp+14H]                         ; 277B _ FF. 75, 14
        push    dword [ebp+10H]                         ; 277E _ FF. 75, 10
        push    dword [ebp+0CH]                         ; 2781 _ FF. 75, 0C
        call    task_run                                ; 2784 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 2789 _ 83. C4, 10
        push    dword [ebp+28H]                         ; 278C _ FF. 75, 28
        push    dword [ebp+24H]                         ; 278F _ FF. 75, 24
        push    dword [ebp-0CH]                         ; 2792 _ FF. 75, F4
        push    dword [ebp+8H]                          ; 2795 _ FF. 75, 08
        call    sheet_slide                             ; 2798 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 279D _ 83. C4, 10
        sub     esp, 4                                  ; 27A0 _ 83. EC, 04
        push    dword [ebp+2CH]                         ; 27A3 _ FF. 75, 2C
        push    dword [ebp-0CH]                         ; 27A6 _ FF. 75, F4
        push    dword [ebp+8H]                          ; 27A9 _ FF. 75, 08
        call    sheet_level_updown                      ; 27AC _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 27B1 _ 83. C4, 10
        mov     eax, dword [ebp-0CH]                    ; 27B4 _ 8B. 45, F4
        leave                                           ; 27B7 _ C9
        ret                                             ; 27B8 _ C3
; messageBoxToTask End of function

make_window8:; Function begin
        push    ebp                                     ; 27B9 _ 55
        mov     ebp, esp                                ; 27BA _ 89. E5
        push    ebx                                     ; 27BC _ 53
        sub     esp, 36                                 ; 27BD _ 83. EC, 24
        mov     eax, dword [ebp+14H]                    ; 27C0 _ 8B. 45, 14
        mov     byte [ebp-1CH], al                      ; 27C3 _ 88. 45, E4
        mov     eax, dword [ebp+0CH]                    ; 27C6 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 27C9 _ 8B. 40, 04
        mov     dword [ebp-10H], eax                    ; 27CC _ 89. 45, F0
        mov     eax, dword [ebp+0CH]                    ; 27CF _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 27D2 _ 8B. 40, 08
        mov     dword [ebp-0CH], eax                    ; 27D5 _ 89. 45, F4
        mov     eax, dword [ebp-10H]                    ; 27D8 _ 8B. 45, F0
        lea     edx, [eax-1H]                           ; 27DB _ 8D. 50, FF
        mov     eax, dword [ebp+0CH]                    ; 27DE _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 27E1 _ 8B. 00
        push    0                                       ; 27E3 _ 6A, 00
        push    edx                                     ; 27E5 _ 52
        push    0                                       ; 27E6 _ 6A, 00
        push    0                                       ; 27E8 _ 6A, 00
        push    8                                       ; 27EA _ 6A, 08
        push    dword [ebp-10H]                         ; 27EC _ FF. 75, F0
        push    eax                                     ; 27EF _ 50
        call    boxfill8                                ; 27F0 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 27F5 _ 83. C4, 1C
        mov     eax, dword [ebp-10H]                    ; 27F8 _ 8B. 45, F0
        lea     edx, [eax-2H]                           ; 27FB _ 8D. 50, FE
        mov     eax, dword [ebp+0CH]                    ; 27FE _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 2801 _ 8B. 00
        push    1                                       ; 2803 _ 6A, 01
        push    edx                                     ; 2805 _ 52
        push    1                                       ; 2806 _ 6A, 01
        push    1                                       ; 2808 _ 6A, 01
        push    7                                       ; 280A _ 6A, 07
        push    dword [ebp-10H]                         ; 280C _ FF. 75, F0
        push    eax                                     ; 280F _ 50
        call    boxfill8                                ; 2810 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 2815 _ 83. C4, 1C
        mov     eax, dword [ebp-0CH]                    ; 2818 _ 8B. 45, F4
        lea     edx, [eax-1H]                           ; 281B _ 8D. 50, FF
        mov     eax, dword [ebp+0CH]                    ; 281E _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 2821 _ 8B. 00
        push    edx                                     ; 2823 _ 52
        push    0                                       ; 2824 _ 6A, 00
        push    0                                       ; 2826 _ 6A, 00
        push    0                                       ; 2828 _ 6A, 00
        push    8                                       ; 282A _ 6A, 08
        push    dword [ebp-10H]                         ; 282C _ FF. 75, F0
        push    eax                                     ; 282F _ 50
        call    boxfill8                                ; 2830 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 2835 _ 83. C4, 1C
        mov     eax, dword [ebp-0CH]                    ; 2838 _ 8B. 45, F4
        lea     edx, [eax-1H]                           ; 283B _ 8D. 50, FF
        mov     eax, dword [ebp+0CH]                    ; 283E _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 2841 _ 8B. 00
        push    edx                                     ; 2843 _ 52
        push    1                                       ; 2844 _ 6A, 01
        push    1                                       ; 2846 _ 6A, 01
        push    1                                       ; 2848 _ 6A, 01
        push    7                                       ; 284A _ 6A, 07
        push    dword [ebp-10H]                         ; 284C _ FF. 75, F0
        push    eax                                     ; 284F _ 50
        call    boxfill8                                ; 2850 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 2855 _ 83. C4, 1C
        mov     eax, dword [ebp-0CH]                    ; 2858 _ 8B. 45, F4
        lea     ebx, [eax-2H]                           ; 285B _ 8D. 58, FE
        mov     eax, dword [ebp-10H]                    ; 285E _ 8B. 45, F0
        lea     ecx, [eax-2H]                           ; 2861 _ 8D. 48, FE
        mov     eax, dword [ebp-10H]                    ; 2864 _ 8B. 45, F0
        lea     edx, [eax-2H]                           ; 2867 _ 8D. 50, FE
        mov     eax, dword [ebp+0CH]                    ; 286A _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 286D _ 8B. 00
        push    ebx                                     ; 286F _ 53
        push    ecx                                     ; 2870 _ 51
        push    1                                       ; 2871 _ 6A, 01
        push    edx                                     ; 2873 _ 52
        push    15                                      ; 2874 _ 6A, 0F
        push    dword [ebp-10H]                         ; 2876 _ FF. 75, F0
        push    eax                                     ; 2879 _ 50
        call    boxfill8                                ; 287A _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 287F _ 83. C4, 1C
        mov     eax, dword [ebp-0CH]                    ; 2882 _ 8B. 45, F4
        lea     ebx, [eax-1H]                           ; 2885 _ 8D. 58, FF
        mov     eax, dword [ebp-10H]                    ; 2888 _ 8B. 45, F0
        lea     ecx, [eax-1H]                           ; 288B _ 8D. 48, FF
        mov     eax, dword [ebp-10H]                    ; 288E _ 8B. 45, F0
        lea     edx, [eax-1H]                           ; 2891 _ 8D. 50, FF
        mov     eax, dword [ebp+0CH]                    ; 2894 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 2897 _ 8B. 00
        push    ebx                                     ; 2899 _ 53
        push    ecx                                     ; 289A _ 51
        push    0                                       ; 289B _ 6A, 00
        push    edx                                     ; 289D _ 52
        push    0                                       ; 289E _ 6A, 00
        push    dword [ebp-10H]                         ; 28A0 _ FF. 75, F0
        push    eax                                     ; 28A3 _ 50
        call    boxfill8                                ; 28A4 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 28A9 _ 83. C4, 1C
        mov     eax, dword [ebp-0CH]                    ; 28AC _ 8B. 45, F4
        lea     ecx, [eax-3H]                           ; 28AF _ 8D. 48, FD
        mov     eax, dword [ebp-10H]                    ; 28B2 _ 8B. 45, F0
        lea     edx, [eax-3H]                           ; 28B5 _ 8D. 50, FD
        mov     eax, dword [ebp+0CH]                    ; 28B8 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 28BB _ 8B. 00
        push    ecx                                     ; 28BD _ 51
        push    edx                                     ; 28BE _ 52
        push    2                                       ; 28BF _ 6A, 02
        push    2                                       ; 28C1 _ 6A, 02
        push    8                                       ; 28C3 _ 6A, 08
        push    dword [ebp-10H]                         ; 28C5 _ FF. 75, F0
        push    eax                                     ; 28C8 _ 50
        call    boxfill8                                ; 28C9 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 28CE _ 83. C4, 1C
        mov     eax, dword [ebp-10H]                    ; 28D1 _ 8B. 45, F0
        lea     edx, [eax-4H]                           ; 28D4 _ 8D. 50, FC
        mov     eax, dword [ebp+0CH]                    ; 28D7 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 28DA _ 8B. 00
        push    20                                      ; 28DC _ 6A, 14
        push    edx                                     ; 28DE _ 52
        push    3                                       ; 28DF _ 6A, 03
        push    3                                       ; 28E1 _ 6A, 03
        push    12                                      ; 28E3 _ 6A, 0C
        push    dword [ebp-10H]                         ; 28E5 _ FF. 75, F0
        push    eax                                     ; 28E8 _ 50
        call    boxfill8                                ; 28E9 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 28EE _ 83. C4, 1C
        mov     eax, dword [ebp-0CH]                    ; 28F1 _ 8B. 45, F4
        lea     ebx, [eax-2H]                           ; 28F4 _ 8D. 58, FE
        mov     eax, dword [ebp-10H]                    ; 28F7 _ 8B. 45, F0
        lea     ecx, [eax-2H]                           ; 28FA _ 8D. 48, FE
        mov     eax, dword [ebp-0CH]                    ; 28FD _ 8B. 45, F4
        lea     edx, [eax-2H]                           ; 2900 _ 8D. 50, FE
        mov     eax, dword [ebp+0CH]                    ; 2903 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 2906 _ 8B. 00
        push    ebx                                     ; 2908 _ 53
        push    ecx                                     ; 2909 _ 51
        push    edx                                     ; 290A _ 52
        push    1                                       ; 290B _ 6A, 01
        push    15                                      ; 290D _ 6A, 0F
        push    dword [ebp-10H]                         ; 290F _ FF. 75, F0
        push    eax                                     ; 2912 _ 50
        call    boxfill8                                ; 2913 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 2918 _ 83. C4, 1C
        mov     eax, dword [ebp-0CH]                    ; 291B _ 8B. 45, F4
        lea     ebx, [eax-1H]                           ; 291E _ 8D. 58, FF
        mov     eax, dword [ebp-10H]                    ; 2921 _ 8B. 45, F0
        lea     ecx, [eax-1H]                           ; 2924 _ 8D. 48, FF
        mov     eax, dword [ebp-0CH]                    ; 2927 _ 8B. 45, F4
        lea     edx, [eax-1H]                           ; 292A _ 8D. 50, FF
        mov     eax, dword [ebp+0CH]                    ; 292D _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 2930 _ 8B. 00
        push    ebx                                     ; 2932 _ 53
        push    ecx                                     ; 2933 _ 51
        push    edx                                     ; 2934 _ 52
        push    0                                       ; 2935 _ 6A, 00
        push    0                                       ; 2937 _ 6A, 00
        push    dword [ebp-10H]                         ; 2939 _ FF. 75, F0
        push    eax                                     ; 293C _ 50
        call    boxfill8                                ; 293D _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 2942 _ 83. C4, 1C
        movsx   eax, byte [ebp-1CH]                     ; 2945 _ 0F BE. 45, E4
        push    eax                                     ; 2949 _ 50
        push    dword [ebp+10H]                         ; 294A _ FF. 75, 10
        push    dword [ebp+0CH]                         ; 294D _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 2950 _ FF. 75, 08
        call    make_wtitle8                            ; 2953 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 2958 _ 83. C4, 10
        nop                                             ; 295B _ 90
        mov     ebx, dword [ebp-4H]                     ; 295C _ 8B. 5D, FC
        leave                                           ; 295F _ C9
        ret                                             ; 2960 _ C3
; make_window8 End of function

make_wtitle8:; Function begin
        push    ebp                                     ; 2961 _ 55
        mov     ebp, esp                                ; 2962 _ 89. E5
        push    ebx                                     ; 2964 _ 53
        sub     esp, 36                                 ; 2965 _ 83. EC, 24
        mov     eax, dword [ebp+14H]                    ; 2968 _ 8B. 45, 14
        mov     byte [ebp-1CH], al                      ; 296B _ 88. 45, E4
        mov     eax, dword [ebp+0CH]                    ; 296E _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 2971 _ 8B. 40, 04
        mov     dword [ebp-0CH], eax                    ; 2974 _ 89. 45, F4
        cmp     byte [ebp-1CH], 0                       ; 2977 _ 80. 7D, E4, 00
        jz      ?_115                                   ; 297B _ 74, 0A
        mov     byte [ebp-16H], 7                       ; 297D _ C6. 45, EA, 07
        mov     byte [ebp-15H], 12                      ; 2981 _ C6. 45, EB, 0C
        jmp     ?_116                                   ; 2985 _ EB, 0E

?_115:  cmp     byte [ebp-1CH], 0                       ; 2987 _ 80. 7D, E4, 00
        jnz     ?_116                                   ; 298B _ 75, 08
        mov     byte [ebp-16H], 8                       ; 298D _ C6. 45, EA, 08
        mov     byte [ebp-15H], 15                      ; 2991 _ C6. 45, EB, 0F
?_116:  mov     eax, dword [ebp-0CH]                    ; 2995 _ 8B. 45, F4
        lea     ecx, [eax-4H]                           ; 2998 _ 8D. 48, FC
        movzx   eax, byte [ebp-15H]                     ; 299B _ 0F B6. 45, EB
        movzx   edx, al                                 ; 299F _ 0F B6. D0
        mov     eax, dword [ebp+0CH]                    ; 29A2 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 29A5 _ 8B. 00
        push    20                                      ; 29A7 _ 6A, 14
        push    ecx                                     ; 29A9 _ 51
        push    3                                       ; 29AA _ 6A, 03
        push    3                                       ; 29AC _ 6A, 03
        push    edx                                     ; 29AE _ 52
        push    dword [ebp-0CH]                         ; 29AF _ FF. 75, F4
        push    eax                                     ; 29B2 _ 50
        call    boxfill8                                ; 29B3 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 29B8 _ 83. C4, 1C
        movsx   eax, byte [ebp-16H]                     ; 29BB _ 0F BE. 45, EA
        sub     esp, 8                                  ; 29BF _ 83. EC, 08
        push    dword [ebp+10H]                         ; 29C2 _ FF. 75, 10
        push    eax                                     ; 29C5 _ 50
        push    4                                       ; 29C6 _ 6A, 04
        push    8                                       ; 29C8 _ 6A, 08
        push    dword [ebp+0CH]                         ; 29CA _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 29CD _ FF. 75, 08
        call    showString                              ; 29D0 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 29D5 _ 83. C4, 20
        mov     dword [ebp-14H], 0                      ; 29D8 _ C7. 45, EC, 00000000
        jmp     ?_123                                   ; 29DF _ EB, 75

?_117:  mov     dword [ebp-10H], 0                      ; 29E1 _ C7. 45, F0, 00000000
        jmp     ?_122                                   ; 29E8 _ EB, 62

?_118:  mov     eax, dword [ebp-14H]                    ; 29EA _ 8B. 45, EC
        shl     eax, 4                                  ; 29ED _ C1. E0, 04
        mov     edx, eax                                ; 29F0 _ 89. C2
        mov     eax, dword [ebp-10H]                    ; 29F2 _ 8B. 45, F0
        add     eax, edx                                ; 29F5 _ 01. D0
        add     eax, closebtn.2629                      ; 29F7 _ 05, 00000260(d)
        movzx   eax, byte [eax]                         ; 29FC _ 0F B6. 00
        mov     byte [ebp-17H], al                      ; 29FF _ 88. 45, E9
        cmp     byte [ebp-17H], 64                      ; 2A02 _ 80. 7D, E9, 40
        jnz     ?_119                                   ; 2A06 _ 75, 06
        mov     byte [ebp-17H], 0                       ; 2A08 _ C6. 45, E9, 00
        jmp     ?_121                                   ; 2A0C _ EB, 16

?_119:  cmp     byte [ebp-17H], 36                      ; 2A0E _ 80. 7D, E9, 24
        jnz     ?_120                                   ; 2A12 _ 75, 06
        mov     byte [ebp-17H], 15                      ; 2A14 _ C6. 45, E9, 0F
        jmp     ?_121                                   ; 2A18 _ EB, 0A

?_120:  cmp     byte [ebp-17H], 81                      ; 2A1A _ 80. 7D, E9, 51
        jnz     ?_121                                   ; 2A1E _ 75, 04
        mov     byte [ebp-17H], 8                       ; 2A20 _ C6. 45, E9, 08
?_121:  mov     eax, dword [ebp+0CH]                    ; 2A24 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 2A27 _ 8B. 00
        mov     edx, dword [ebp-14H]                    ; 2A29 _ 8B. 55, EC
        add     edx, 5                                  ; 2A2C _ 83. C2, 05
        imul    edx, dword [ebp-0CH]                    ; 2A2F _ 0F AF. 55, F4
        mov     ecx, dword [ebp-0CH]                    ; 2A33 _ 8B. 4D, F4
        lea     ebx, [ecx-15H]                          ; 2A36 _ 8D. 59, EB
        mov     ecx, dword [ebp-10H]                    ; 2A39 _ 8B. 4D, F0
        add     ecx, ebx                                ; 2A3C _ 01. D9
        add     edx, ecx                                ; 2A3E _ 01. CA
        add     edx, eax                                ; 2A40 _ 01. C2
        movzx   eax, byte [ebp-17H]                     ; 2A42 _ 0F B6. 45, E9
        mov     byte [edx], al                          ; 2A46 _ 88. 02
        add     dword [ebp-10H], 1                      ; 2A48 _ 83. 45, F0, 01
?_122:  cmp     dword [ebp-10H], 15                     ; 2A4C _ 83. 7D, F0, 0F
        jle     ?_118                                   ; 2A50 _ 7E, 98
        add     dword [ebp-14H], 1                      ; 2A52 _ 83. 45, EC, 01
?_123:  cmp     dword [ebp-14H], 13                     ; 2A56 _ 83. 7D, EC, 0D
        jle     ?_117                                   ; 2A5A _ 7E, 85
        nop                                             ; 2A5C _ 90
        mov     ebx, dword [ebp-4H]                     ; 2A5D _ 8B. 5D, FC
        leave                                           ; 2A60 _ C9
        ret                                             ; 2A61 _ C3
; make_wtitle8 End of function

memman_init:; Function begin
        push    ebp                                     ; 2A62 _ 55
        mov     ebp, esp                                ; 2A63 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 2A65 _ 8B. 45, 08
        mov     dword [eax], 0                          ; 2A68 _ C7. 00, 00000000
        mov     eax, dword [ebp+8H]                     ; 2A6E _ 8B. 45, 08
        mov     dword [eax+4H], 0                       ; 2A71 _ C7. 40, 04, 00000000
        mov     eax, dword [ebp+8H]                     ; 2A78 _ 8B. 45, 08
        mov     dword [eax+8H], 0                       ; 2A7B _ C7. 40, 08, 00000000
        mov     eax, dword [ebp+8H]                     ; 2A82 _ 8B. 45, 08
        mov     dword [eax+0CH], 0                      ; 2A85 _ C7. 40, 0C, 00000000
        nop                                             ; 2A8C _ 90
        pop     ebp                                     ; 2A8D _ 5D
        ret                                             ; 2A8E _ C3
; memman_init End of function

memman_total:; Function begin
        push    ebp                                     ; 2A8F _ 55
        mov     ebp, esp                                ; 2A90 _ 89. E5
        sub     esp, 16                                 ; 2A92 _ 83. EC, 10
        mov     dword [ebp-8H], 0                       ; 2A95 _ C7. 45, F8, 00000000
        mov     dword [ebp-4H], 0                       ; 2A9C _ C7. 45, FC, 00000000
        jmp     ?_125                                   ; 2AA3 _ EB, 14

?_124:  mov     eax, dword [ebp+8H]                     ; 2AA5 _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 2AA8 _ 8B. 55, FC
        add     edx, 2                                  ; 2AAB _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 2AAE _ 8B. 44 D0, 04
        add     dword [ebp-8H], eax                     ; 2AB2 _ 01. 45, F8
        add     dword [ebp-4H], 1                       ; 2AB5 _ 83. 45, FC, 01
?_125:  mov     eax, dword [ebp+8H]                     ; 2AB9 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 2ABC _ 8B. 00
        cmp     dword [ebp-4H], eax                     ; 2ABE _ 39. 45, FC
        jl      ?_124                                   ; 2AC1 _ 7C, E2
        mov     eax, dword [ebp-8H]                     ; 2AC3 _ 8B. 45, F8
        leave                                           ; 2AC6 _ C9
        ret                                             ; 2AC7 _ C3
; memman_total End of function

memman_alloc_FF:; Function begin
        push    ebp                                     ; 2AC8 _ 55
        mov     ebp, esp                                ; 2AC9 _ 89. E5
        sub     esp, 16                                 ; 2ACB _ 83. EC, 10
        mov     dword [ebp-8H], 0                       ; 2ACE _ C7. 45, F8, 00000000
        jmp     ?_129                                   ; 2AD5 _ E9, 00000085

?_126:  mov     eax, dword [ebp+8H]                     ; 2ADA _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 2ADD _ 8B. 55, F8
        add     edx, 2                                  ; 2AE0 _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 2AE3 _ 8B. 44 D0, 04
        cmp     dword [ebp+0CH], eax                    ; 2AE7 _ 39. 45, 0C
        ja      ?_128                                   ; 2AEA _ 77, 6F
        mov     eax, dword [ebp+8H]                     ; 2AEC _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 2AEF _ 8B. 55, F8
        add     edx, 2                                  ; 2AF2 _ 83. C2, 02
        mov     eax, dword [eax+edx*8]                  ; 2AF5 _ 8B. 04 D0
        mov     dword [ebp-4H], eax                     ; 2AF8 _ 89. 45, FC
        mov     eax, dword [ebp+8H]                     ; 2AFB _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 2AFE _ 8B. 55, F8
        add     edx, 2                                  ; 2B01 _ 83. C2, 02
        mov     edx, dword [eax+edx*8]                  ; 2B04 _ 8B. 14 D0
        mov     eax, dword [ebp+0CH]                    ; 2B07 _ 8B. 45, 0C
        lea     ecx, [edx+eax]                          ; 2B0A _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 2B0D _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 2B10 _ 8B. 55, F8
        add     edx, 2                                  ; 2B13 _ 83. C2, 02
        mov     dword [eax+edx*8], ecx                  ; 2B16 _ 89. 0C D0
        mov     eax, dword [ebp+8H]                     ; 2B19 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 2B1C _ 8B. 55, F8
        add     edx, 2                                  ; 2B1F _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 2B22 _ 8B. 44 D0, 04
        sub     eax, dword [ebp+0CH]                    ; 2B26 _ 2B. 45, 0C
        mov     edx, eax                                ; 2B29 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 2B2B _ 8B. 45, 08
        mov     ecx, dword [ebp-8H]                     ; 2B2E _ 8B. 4D, F8
        add     ecx, 2                                  ; 2B31 _ 83. C1, 02
        mov     dword [eax+ecx*8+4H], edx               ; 2B34 _ 89. 54 C8, 04
        mov     eax, dword [ebp+8H]                     ; 2B38 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 2B3B _ 8B. 55, F8
        add     edx, 2                                  ; 2B3E _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 2B41 _ 8B. 44 D0, 04
        test    eax, eax                                ; 2B45 _ 85. C0
        jnz     ?_127                                   ; 2B47 _ 75, 0D
        mov     eax, dword [ebp+8H]                     ; 2B49 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 2B4C _ 8B. 00
        lea     edx, [eax-1H]                           ; 2B4E _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 2B51 _ 8B. 45, 08
        mov     dword [eax], edx                        ; 2B54 _ 89. 10
?_127:  mov     eax, dword [ebp-4H]                     ; 2B56 _ 8B. 45, FC
        jmp     ?_130                                   ; 2B59 _ EB, 17

?_128:  add     dword [ebp-8H], 1                       ; 2B5B _ 83. 45, F8, 01
?_129:  mov     eax, dword [ebp+8H]                     ; 2B5F _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 2B62 _ 8B. 00
        cmp     dword [ebp-8H], eax                     ; 2B64 _ 39. 45, F8
        jl      ?_126                                   ; 2B67 _ 0F 8C, FFFFFF6D
        mov     eax, 0                                  ; 2B6D _ B8, 00000000
?_130:  leave                                           ; 2B72 _ C9
        ret                                             ; 2B73 _ C3
; memman_alloc_FF End of function

memman_alloc_4K:; Function begin
        push    ebp                                     ; 2B74 _ 55
        mov     ebp, esp                                ; 2B75 _ 89. E5
        sub     esp, 16                                 ; 2B77 _ 83. EC, 10
        mov     eax, dword [ebp+0CH]                    ; 2B7A _ 8B. 45, 0C
        add     eax, 4095                               ; 2B7D _ 05, 00000FFF
        and     eax, 0FFFFF000H                         ; 2B82 _ 25, FFFFF000
        mov     dword [ebp+0CH], eax                    ; 2B87 _ 89. 45, 0C
        push    dword [ebp+0CH]                         ; 2B8A _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 2B8D _ FF. 75, 08
        call    memman_alloc_FF                         ; 2B90 _ E8, FFFFFFFC(rel)
        add     esp, 8                                  ; 2B95 _ 83. C4, 08
        mov     dword [ebp-4H], eax                     ; 2B98 _ 89. 45, FC
        mov     eax, dword [ebp-4H]                     ; 2B9B _ 8B. 45, FC
        leave                                           ; 2B9E _ C9
        ret                                             ; 2B9F _ C3
; memman_alloc_4K End of function

memman_free:; Function begin
        push    ebp                                     ; 2BA0 _ 55
        mov     ebp, esp                                ; 2BA1 _ 89. E5
        push    ebx                                     ; 2BA3 _ 53
        sub     esp, 16                                 ; 2BA4 _ 83. EC, 10
        mov     dword [ebp-0CH], 0                      ; 2BA7 _ C7. 45, F4, 00000000
        jmp     ?_132                                   ; 2BAE _ EB, 15

?_131:  mov     eax, dword [ebp+8H]                     ; 2BB0 _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 2BB3 _ 8B. 55, F4
        add     edx, 2                                  ; 2BB6 _ 83. C2, 02
        mov     eax, dword [eax+edx*8]                  ; 2BB9 _ 8B. 04 D0
        cmp     dword [ebp+0CH], eax                    ; 2BBC _ 39. 45, 0C
        jc      ?_133                                   ; 2BBF _ 72, 10
        add     dword [ebp-0CH], 1                      ; 2BC1 _ 83. 45, F4, 01
?_132:  mov     eax, dword [ebp+8H]                     ; 2BC5 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 2BC8 _ 8B. 00
        cmp     dword [ebp-0CH], eax                    ; 2BCA _ 39. 45, F4
        jl      ?_131                                   ; 2BCD _ 7C, E1
        jmp     ?_134                                   ; 2BCF _ EB, 01

?_133:  nop                                             ; 2BD1 _ 90
?_134:  cmp     dword [ebp-0CH], 0                      ; 2BD2 _ 83. 7D, F4, 00
        jle     ?_136                                   ; 2BD6 _ 0F 8E, 000000BA
        mov     eax, dword [ebp-0CH]                    ; 2BDC _ 8B. 45, F4
        lea     edx, [eax-1H]                           ; 2BDF _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 2BE2 _ 8B. 45, 08
        add     edx, 2                                  ; 2BE5 _ 83. C2, 02
        mov     edx, dword [eax+edx*8]                  ; 2BE8 _ 8B. 14 D0
        mov     eax, dword [ebp-0CH]                    ; 2BEB _ 8B. 45, F4
        lea     ecx, [eax-1H]                           ; 2BEE _ 8D. 48, FF
        mov     eax, dword [ebp+8H]                     ; 2BF1 _ 8B. 45, 08
        add     ecx, 2                                  ; 2BF4 _ 83. C1, 02
        mov     eax, dword [eax+ecx*8+4H]               ; 2BF7 _ 8B. 44 C8, 04
        add     eax, edx                                ; 2BFB _ 01. D0
        cmp     dword [ebp+0CH], eax                    ; 2BFD _ 39. 45, 0C
        jne     ?_136                                   ; 2C00 _ 0F 85, 00000090
        mov     eax, dword [ebp-0CH]                    ; 2C06 _ 8B. 45, F4
        lea     edx, [eax-1H]                           ; 2C09 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 2C0C _ 8B. 45, 08
        add     edx, 2                                  ; 2C0F _ 83. C2, 02
        mov     edx, dword [eax+edx*8+4H]               ; 2C12 _ 8B. 54 D0, 04
        mov     eax, dword [ebp-0CH]                    ; 2C16 _ 8B. 45, F4
        lea     ebx, [eax-1H]                           ; 2C19 _ 8D. 58, FF
        mov     eax, dword [ebp+10H]                    ; 2C1C _ 8B. 45, 10
        lea     ecx, [edx+eax]                          ; 2C1F _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 2C22 _ 8B. 45, 08
        lea     edx, [ebx+2H]                           ; 2C25 _ 8D. 53, 02
        mov     dword [eax+edx*8+4H], ecx               ; 2C28 _ 89. 4C D0, 04
        mov     eax, dword [ebp+8H]                     ; 2C2C _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 2C2F _ 8B. 00
        cmp     dword [ebp-0CH], eax                    ; 2C31 _ 39. 45, F4
        jge     ?_135                                   ; 2C34 _ 7D, 56
        mov     edx, dword [ebp+0CH]                    ; 2C36 _ 8B. 55, 0C
        mov     eax, dword [ebp+10H]                    ; 2C39 _ 8B. 45, 10
        lea     ecx, [edx+eax]                          ; 2C3C _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 2C3F _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 2C42 _ 8B. 55, F4
        add     edx, 2                                  ; 2C45 _ 83. C2, 02
        mov     eax, dword [eax+edx*8]                  ; 2C48 _ 8B. 04 D0
        cmp     ecx, eax                                ; 2C4B _ 39. C1
        jnz     ?_135                                   ; 2C4D _ 75, 3D
        mov     eax, dword [ebp-0CH]                    ; 2C4F _ 8B. 45, F4
        lea     edx, [eax-1H]                           ; 2C52 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 2C55 _ 8B. 45, 08
        add     edx, 2                                  ; 2C58 _ 83. C2, 02
        mov     edx, dword [eax+edx*8+4H]               ; 2C5B _ 8B. 54 D0, 04
        mov     eax, dword [ebp+8H]                     ; 2C5F _ 8B. 45, 08
        mov     ecx, dword [ebp-0CH]                    ; 2C62 _ 8B. 4D, F4
        add     ecx, 2                                  ; 2C65 _ 83. C1, 02
        mov     eax, dword [eax+ecx*8+4H]               ; 2C68 _ 8B. 44 C8, 04
        mov     ecx, dword [ebp-0CH]                    ; 2C6C _ 8B. 4D, F4
        lea     ebx, [ecx-1H]                           ; 2C6F _ 8D. 59, FF
        lea     ecx, [edx+eax]                          ; 2C72 _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 2C75 _ 8B. 45, 08
        lea     edx, [ebx+2H]                           ; 2C78 _ 8D. 53, 02
        mov     dword [eax+edx*8+4H], ecx               ; 2C7B _ 89. 4C D0, 04
        mov     eax, dword [ebp+8H]                     ; 2C7F _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 2C82 _ 8B. 00
        lea     edx, [eax-1H]                           ; 2C84 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 2C87 _ 8B. 45, 08
        mov     dword [eax], edx                        ; 2C8A _ 89. 10
?_135:  mov     eax, 0                                  ; 2C8C _ B8, 00000000
        jmp     ?_142                                   ; 2C91 _ E9, 0000011C

?_136:  mov     eax, dword [ebp+8H]                     ; 2C96 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 2C99 _ 8B. 00
        cmp     dword [ebp-0CH], eax                    ; 2C9B _ 39. 45, F4
        jge     ?_137                                   ; 2C9E _ 7D, 52
        mov     edx, dword [ebp+0CH]                    ; 2CA0 _ 8B. 55, 0C
        mov     eax, dword [ebp+10H]                    ; 2CA3 _ 8B. 45, 10
        lea     ecx, [edx+eax]                          ; 2CA6 _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 2CA9 _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 2CAC _ 8B. 55, F4
        add     edx, 2                                  ; 2CAF _ 83. C2, 02
        mov     eax, dword [eax+edx*8]                  ; 2CB2 _ 8B. 04 D0
        cmp     ecx, eax                                ; 2CB5 _ 39. C1
        jnz     ?_137                                   ; 2CB7 _ 75, 39
        mov     eax, dword [ebp+8H]                     ; 2CB9 _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 2CBC _ 8B. 55, F4
        lea     ecx, [edx+2H]                           ; 2CBF _ 8D. 4A, 02
        mov     edx, dword [ebp+0CH]                    ; 2CC2 _ 8B. 55, 0C
        mov     dword [eax+ecx*8], edx                  ; 2CC5 _ 89. 14 C8
        mov     eax, dword [ebp+8H]                     ; 2CC8 _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 2CCB _ 8B. 55, F4
        add     edx, 2                                  ; 2CCE _ 83. C2, 02
        mov     edx, dword [eax+edx*8+4H]               ; 2CD1 _ 8B. 54 D0, 04
        mov     eax, dword [ebp+10H]                    ; 2CD5 _ 8B. 45, 10
        lea     ecx, [edx+eax]                          ; 2CD8 _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 2CDB _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 2CDE _ 8B. 55, F4
        add     edx, 2                                  ; 2CE1 _ 83. C2, 02
        mov     dword [eax+edx*8+4H], ecx               ; 2CE4 _ 89. 4C D0, 04
        mov     eax, 0                                  ; 2CE8 _ B8, 00000000
        jmp     ?_142                                   ; 2CED _ E9, 000000C0

?_137:  mov     eax, dword [ebp+8H]                     ; 2CF2 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 2CF5 _ 8B. 00
        cmp     eax, 4095                               ; 2CF7 _ 3D, 00000FFF
        jg      ?_141                                   ; 2CFC _ 0F 8F, 00000087
        mov     eax, dword [ebp+8H]                     ; 2D02 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 2D05 _ 8B. 00
        mov     dword [ebp-8H], eax                     ; 2D07 _ 89. 45, F8
        jmp     ?_139                                   ; 2D0A _ EB, 28

?_138:  mov     eax, dword [ebp-8H]                     ; 2D0C _ 8B. 45, F8
        lea     edx, [eax-1H]                           ; 2D0F _ 8D. 50, FF
        mov     ecx, dword [ebp+8H]                     ; 2D12 _ 8B. 4D, 08
        mov     eax, dword [ebp-8H]                     ; 2D15 _ 8B. 45, F8
        lea     ebx, [eax+2H]                           ; 2D18 _ 8D. 58, 02
        mov     eax, dword [ebp+8H]                     ; 2D1B _ 8B. 45, 08
        add     edx, 2                                  ; 2D1E _ 83. C2, 02
        lea     edx, [eax+edx*8]                        ; 2D21 _ 8D. 14 D0
        mov     eax, dword [edx]                        ; 2D24 _ 8B. 02
        mov     edx, dword [edx+4H]                     ; 2D26 _ 8B. 52, 04
        mov     dword [ecx+ebx*8], eax                  ; 2D29 _ 89. 04 D9
        mov     dword [ecx+ebx*8+4H], edx               ; 2D2C _ 89. 54 D9, 04
        sub     dword [ebp-8H], 1                       ; 2D30 _ 83. 6D, F8, 01
?_139:  mov     eax, dword [ebp-8H]                     ; 2D34 _ 8B. 45, F8
        cmp     eax, dword [ebp-0CH]                    ; 2D37 _ 3B. 45, F4
        jg      ?_138                                   ; 2D3A _ 7F, D0
        mov     eax, dword [ebp+8H]                     ; 2D3C _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 2D3F _ 8B. 00
        lea     edx, [eax+1H]                           ; 2D41 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 2D44 _ 8B. 45, 08
        mov     dword [eax], edx                        ; 2D47 _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 2D49 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 2D4C _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 2D4F _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 2D52 _ 8B. 00
        cmp     edx, eax                                ; 2D54 _ 39. C2
        jge     ?_140                                   ; 2D56 _ 7D, 0B
        mov     eax, dword [ebp+8H]                     ; 2D58 _ 8B. 45, 08
        mov     edx, dword [eax]                        ; 2D5B _ 8B. 10
        mov     eax, dword [ebp+8H]                     ; 2D5D _ 8B. 45, 08
        mov     dword [eax+4H], edx                     ; 2D60 _ 89. 50, 04
?_140:  mov     eax, dword [ebp+8H]                     ; 2D63 _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 2D66 _ 8B. 55, F4
        lea     ecx, [edx+2H]                           ; 2D69 _ 8D. 4A, 02
        mov     edx, dword [ebp+0CH]                    ; 2D6C _ 8B. 55, 0C
        mov     dword [eax+ecx*8], edx                  ; 2D6F _ 89. 14 C8
        mov     eax, dword [ebp+8H]                     ; 2D72 _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 2D75 _ 8B. 55, F4
        lea     ecx, [edx+2H]                           ; 2D78 _ 8D. 4A, 02
        mov     edx, dword [ebp+10H]                    ; 2D7B _ 8B. 55, 10
        mov     dword [eax+ecx*8+4H], edx               ; 2D7E _ 89. 54 C8, 04
        mov     eax, 0                                  ; 2D82 _ B8, 00000000
        jmp     ?_142                                   ; 2D87 _ EB, 29

?_141:  mov     eax, dword [ebp+8H]                     ; 2D89 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 2D8C _ 8B. 40, 0C
        lea     edx, [eax+1H]                           ; 2D8F _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 2D92 _ 8B. 45, 08
        mov     dword [eax+0CH], edx                    ; 2D95 _ 89. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 2D98 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 2D9B _ 8B. 40, 08
        mov     edx, eax                                ; 2D9E _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 2DA0 _ 8B. 45, 10
        add     eax, edx                                ; 2DA3 _ 01. D0
        mov     edx, eax                                ; 2DA5 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 2DA7 _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 2DAA _ 89. 50, 08
        mov     eax, 4294967295                         ; 2DAD _ B8, FFFFFFFF
?_142:  add     esp, 16                                 ; 2DB2 _ 83. C4, 10
        pop     ebx                                     ; 2DB5 _ 5B
        pop     ebp                                     ; 2DB6 _ 5D
        ret                                             ; 2DB7 _ C3
; memman_free End of function

memman_free_4K:; Function begin
        push    ebp                                     ; 2DB8 _ 55
        mov     ebp, esp                                ; 2DB9 _ 89. E5
        sub     esp, 16                                 ; 2DBB _ 83. EC, 10
        mov     eax, dword [ebp+10H]                    ; 2DBE _ 8B. 45, 10
        add     eax, 4095                               ; 2DC1 _ 05, 00000FFF
        and     eax, 0FFFFF000H                         ; 2DC6 _ 25, FFFFF000
        mov     dword [ebp+10H], eax                    ; 2DCB _ 89. 45, 10
        push    dword [ebp+10H]                         ; 2DCE _ FF. 75, 10
        push    dword [ebp+0CH]                         ; 2DD1 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 2DD4 _ FF. 75, 08
        call    memman_free                             ; 2DD7 _ E8, FFFFFFFC(rel)
        add     esp, 12                                 ; 2DDC _ 83. C4, 0C
        mov     dword [ebp-4H], eax                     ; 2DDF _ 89. 45, FC
        mov     eax, dword [ebp-4H]                     ; 2DE2 _ 8B. 45, FC
        leave                                           ; 2DE5 _ C9
        ret                                             ; 2DE6 _ C3
; memman_free_4K End of function

shtctl_init:; Function begin
        push    ebp                                     ; 2DE7 _ 55
        mov     ebp, esp                                ; 2DE8 _ 89. E5
        sub     esp, 24                                 ; 2DEA _ 83. EC, 18
        sub     esp, 8                                  ; 2DED _ 83. EC, 08
        push    9232                                    ; 2DF0 _ 68, 00002410
        push    dword [ebp+8H]                          ; 2DF5 _ FF. 75, 08
        call    memman_alloc_4K                         ; 2DF8 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 2DFD _ 83. C4, 10
        mov     dword [ebp-0CH], eax                    ; 2E00 _ 89. 45, F4
        cmp     dword [ebp-0CH], 0                      ; 2E03 _ 83. 7D, F4, 00
        jnz     ?_143                                   ; 2E07 _ 75, 0A
        mov     eax, 0                                  ; 2E09 _ B8, 00000000
        jmp     ?_147                                   ; 2E0E _ E9, 0000009A

?_143:  mov     eax, dword [ebp+10H]                    ; 2E13 _ 8B. 45, 10
        imul    eax, dword [ebp+14H]                    ; 2E16 _ 0F AF. 45, 14
        sub     esp, 8                                  ; 2E1A _ 83. EC, 08
        push    eax                                     ; 2E1D _ 50
        push    dword [ebp+8H]                          ; 2E1E _ FF. 75, 08
        call    memman_alloc_4K                         ; 2E21 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 2E26 _ 83. C4, 10
        mov     edx, eax                                ; 2E29 _ 89. C2
        mov     eax, dword [ebp-0CH]                    ; 2E2B _ 8B. 45, F4
        mov     dword [eax+4H], edx                     ; 2E2E _ 89. 50, 04
        mov     eax, dword [ebp-0CH]                    ; 2E31 _ 8B. 45, F4
        mov     eax, dword [eax+4H]                     ; 2E34 _ 8B. 40, 04
        test    eax, eax                                ; 2E37 _ 85. C0
        jnz     ?_144                                   ; 2E39 _ 75, 1E
        mov     eax, dword [ebp-0CH]                    ; 2E3B _ 8B. 45, F4
        sub     esp, 4                                  ; 2E3E _ 83. EC, 04
        push    9232                                    ; 2E41 _ 68, 00002410
        push    eax                                     ; 2E46 _ 50
        push    dword [ebp+8H]                          ; 2E47 _ FF. 75, 08
        call    memman_free_4K                          ; 2E4A _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 2E4F _ 83. C4, 10
        mov     eax, 0                                  ; 2E52 _ B8, 00000000
        jmp     ?_147                                   ; 2E57 _ EB, 54

?_144:  mov     eax, dword [ebp-0CH]                    ; 2E59 _ 8B. 45, F4
        mov     edx, dword [ebp+0CH]                    ; 2E5C _ 8B. 55, 0C
        mov     dword [eax], edx                        ; 2E5F _ 89. 10
        mov     eax, dword [ebp-0CH]                    ; 2E61 _ 8B. 45, F4
        mov     edx, dword [ebp+10H]                    ; 2E64 _ 8B. 55, 10
        mov     dword [eax+8H], edx                     ; 2E67 _ 89. 50, 08
        mov     eax, dword [ebp-0CH]                    ; 2E6A _ 8B. 45, F4
        mov     edx, dword [ebp+14H]                    ; 2E6D _ 8B. 55, 14
        mov     dword [eax+0CH], edx                    ; 2E70 _ 89. 50, 0C
        mov     eax, dword [ebp-0CH]                    ; 2E73 _ 8B. 45, F4
        mov     dword [eax+10H], -1                     ; 2E76 _ C7. 40, 10, FFFFFFFF
        mov     dword [ebp-10H], 0                      ; 2E7D _ C7. 45, F0, 00000000
        jmp     ?_146                                   ; 2E84 _ EB, 1B

?_145:  mov     eax, dword [ebp-0CH]                    ; 2E86 _ 8B. 45, F4
        mov     edx, dword [ebp-10H]                    ; 2E89 _ 8B. 55, F0
        add     edx, 33                                 ; 2E8C _ 83. C2, 21
        shl     edx, 5                                  ; 2E8F _ C1. E2, 05
        add     eax, edx                                ; 2E92 _ 01. D0
        add     eax, 16                                 ; 2E94 _ 83. C0, 10
        mov     dword [eax], 0                          ; 2E97 _ C7. 00, 00000000
        add     dword [ebp-10H], 1                      ; 2E9D _ 83. 45, F0, 01
?_146:  cmp     dword [ebp-10H], 255                    ; 2EA1 _ 81. 7D, F0, 000000FF
        jle     ?_145                                   ; 2EA8 _ 7E, DC
        mov     eax, dword [ebp-0CH]                    ; 2EAA _ 8B. 45, F4
?_147:  leave                                           ; 2EAD _ C9
        ret                                             ; 2EAE _ C3
; shtctl_init End of function

sheet_alloc:; Function begin
        push    ebp                                     ; 2EAF _ 55
        mov     ebp, esp                                ; 2EB0 _ 89. E5
        sub     esp, 16                                 ; 2EB2 _ 83. EC, 10
        mov     dword [ebp-8H], 0                       ; 2EB5 _ C7. 45, F8, 00000000
        jmp     ?_150                                   ; 2EBC _ EB, 4B

?_148:  mov     eax, dword [ebp+8H]                     ; 2EBE _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 2EC1 _ 8B. 55, F8
        add     edx, 33                                 ; 2EC4 _ 83. C2, 21
        shl     edx, 5                                  ; 2EC7 _ C1. E2, 05
        add     eax, edx                                ; 2ECA _ 01. D0
        add     eax, 16                                 ; 2ECC _ 83. C0, 10
        mov     eax, dword [eax]                        ; 2ECF _ 8B. 00
        test    eax, eax                                ; 2ED1 _ 85. C0
        jnz     ?_149                                   ; 2ED3 _ 75, 30
        mov     eax, dword [ebp-8H]                     ; 2ED5 _ 8B. 45, F8
        shl     eax, 5                                  ; 2ED8 _ C1. E0, 05
        lea     edx, [eax+410H]                         ; 2EDB _ 8D. 90, 00000410
        mov     eax, dword [ebp+8H]                     ; 2EE1 _ 8B. 45, 08
        add     eax, edx                                ; 2EE4 _ 01. D0
        add     eax, 4                                  ; 2EE6 _ 83. C0, 04
        mov     dword [ebp-4H], eax                     ; 2EE9 _ 89. 45, FC
        mov     eax, dword [ebp-4H]                     ; 2EEC _ 8B. 45, FC
        mov     dword [eax+1CH], 1                      ; 2EEF _ C7. 40, 1C, 00000001
        mov     eax, dword [ebp-4H]                     ; 2EF6 _ 8B. 45, FC
        mov     dword [eax+18H], -1                     ; 2EF9 _ C7. 40, 18, FFFFFFFF
        mov     eax, dword [ebp-4H]                     ; 2F00 _ 8B. 45, FC
        jmp     ?_151                                   ; 2F03 _ EB, 12

?_149:  add     dword [ebp-8H], 1                       ; 2F05 _ 83. 45, F8, 01
?_150:  cmp     dword [ebp-8H], 255                     ; 2F09 _ 81. 7D, F8, 000000FF
        jle     ?_148                                   ; 2F10 _ 7E, AC
        mov     eax, 0                                  ; 2F12 _ B8, 00000000
?_151:  leave                                           ; 2F17 _ C9
        ret                                             ; 2F18 _ C3
; sheet_alloc End of function

sheet_setbuf:; Function begin
        push    ebp                                     ; 2F19 _ 55
        mov     ebp, esp                                ; 2F1A _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 2F1C _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 2F1F _ 8B. 55, 0C
        mov     dword [eax], edx                        ; 2F22 _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 2F24 _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 2F27 _ 8B. 55, 10
        mov     dword [eax+4H], edx                     ; 2F2A _ 89. 50, 04
        mov     eax, dword [ebp+8H]                     ; 2F2D _ 8B. 45, 08
        mov     edx, dword [ebp+14H]                    ; 2F30 _ 8B. 55, 14
        mov     dword [eax+8H], edx                     ; 2F33 _ 89. 50, 08
        mov     eax, dword [ebp+8H]                     ; 2F36 _ 8B. 45, 08
        mov     edx, dword [ebp+18H]                    ; 2F39 _ 8B. 55, 18
        mov     dword [eax+14H], edx                    ; 2F3C _ 89. 50, 14
        nop                                             ; 2F3F _ 90
        pop     ebp                                     ; 2F40 _ 5D
        ret                                             ; 2F41 _ C3
; sheet_setbuf End of function

sheet_level_updown:; Function begin
        push    ebp                                     ; 2F42 _ 55
        mov     ebp, esp                                ; 2F43 _ 89. E5
        push    esi                                     ; 2F45 _ 56
        push    ebx                                     ; 2F46 _ 53
        sub     esp, 32                                 ; 2F47 _ 83. EC, 20
        mov     eax, dword [ebp+0CH]                    ; 2F4A _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 2F4D _ 8B. 40, 18
        mov     dword [ebp-0CH], eax                    ; 2F50 _ 89. 45, F4
        mov     eax, dword [ebp+8H]                     ; 2F53 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 2F56 _ 8B. 40, 10
        add     eax, 1                                  ; 2F59 _ 83. C0, 01
        cmp     dword [ebp+10H], eax                    ; 2F5C _ 39. 45, 10
        jle     ?_152                                   ; 2F5F _ 7E, 0C
        mov     eax, dword [ebp+8H]                     ; 2F61 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 2F64 _ 8B. 40, 10
        add     eax, 1                                  ; 2F67 _ 83. C0, 01
        mov     dword [ebp+10H], eax                    ; 2F6A _ 89. 45, 10
?_152:  cmp     dword [ebp+10H], -1                     ; 2F6D _ 83. 7D, 10, FF
        jge     ?_153                                   ; 2F71 _ 7D, 07
        mov     dword [ebp+10H], -1                     ; 2F73 _ C7. 45, 10, FFFFFFFF
?_153:  mov     eax, dword [ebp+0CH]                    ; 2F7A _ 8B. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 2F7D _ 8B. 55, 10
        mov     dword [eax+18H], edx                    ; 2F80 _ 89. 50, 18
        mov     eax, dword [ebp-0CH]                    ; 2F83 _ 8B. 45, F4
        cmp     eax, dword [ebp+10H]                    ; 2F86 _ 3B. 45, 10
        jle     ?_160                                   ; 2F89 _ 0F 8E, 000001D5
        cmp     dword [ebp+10H], 0                      ; 2F8F _ 83. 7D, 10, 00
        js      ?_156                                   ; 2F93 _ 0F 88, 000000E2
        mov     eax, dword [ebp-0CH]                    ; 2F99 _ 8B. 45, F4
        mov     dword [ebp-1CH], eax                    ; 2F9C _ 89. 45, E4
        jmp     ?_155                                   ; 2F9F _ EB, 34

?_154:  mov     eax, dword [ebp-1CH]                    ; 2FA1 _ 8B. 45, E4
        lea     edx, [eax-1H]                           ; 2FA4 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 2FA7 _ 8B. 45, 08
        add     edx, 4                                  ; 2FAA _ 83. C2, 04
        mov     edx, dword [eax+edx*4+4H]               ; 2FAD _ 8B. 54 90, 04
        mov     eax, dword [ebp+8H]                     ; 2FB1 _ 8B. 45, 08
        mov     ecx, dword [ebp-1CH]                    ; 2FB4 _ 8B. 4D, E4
        add     ecx, 4                                  ; 2FB7 _ 83. C1, 04
        mov     dword [eax+ecx*4+4H], edx               ; 2FBA _ 89. 54 88, 04
        mov     eax, dword [ebp+8H]                     ; 2FBE _ 8B. 45, 08
        mov     edx, dword [ebp-1CH]                    ; 2FC1 _ 8B. 55, E4
        add     edx, 4                                  ; 2FC4 _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 2FC7 _ 8B. 44 90, 04
        mov     edx, dword [ebp-1CH]                    ; 2FCB _ 8B. 55, E4
        mov     dword [eax+18H], edx                    ; 2FCE _ 89. 50, 18
        sub     dword [ebp-1CH], 1                      ; 2FD1 _ 83. 6D, E4, 01
?_155:  mov     eax, dword [ebp-1CH]                    ; 2FD5 _ 8B. 45, E4
        cmp     eax, dword [ebp+10H]                    ; 2FD8 _ 3B. 45, 10
        jg      ?_154                                   ; 2FDB _ 7F, C4
        mov     eax, dword [ebp+8H]                     ; 2FDD _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 2FE0 _ 8B. 55, 10
        lea     ecx, [edx+4H]                           ; 2FE3 _ 8D. 4A, 04
        mov     edx, dword [ebp+0CH]                    ; 2FE6 _ 8B. 55, 0C
        mov     dword [eax+ecx*4+4H], edx               ; 2FE9 _ 89. 54 88, 04
        mov     eax, dword [ebp+10H]                    ; 2FED _ 8B. 45, 10
        lea     esi, [eax+1H]                           ; 2FF0 _ 8D. 70, 01
        mov     eax, dword [ebp+0CH]                    ; 2FF3 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 2FF6 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 2FF9 _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 2FFC _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 2FFF _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 3002 _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 3005 _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 3008 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 300B _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 300E _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 3011 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 3014 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 3017 _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 301A _ 8B. 40, 0C
        sub     esp, 8                                  ; 301D _ 83. EC, 08
        push    esi                                     ; 3020 _ 56
        push    ebx                                     ; 3021 _ 53
        push    ecx                                     ; 3022 _ 51
        push    edx                                     ; 3023 _ 52
        push    eax                                     ; 3024 _ 50
        push    dword [ebp+8H]                          ; 3025 _ FF. 75, 08
        call    sheet_refreshmap                        ; 3028 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 302D _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 3030 _ 8B. 45, 10
        lea     esi, [eax+1H]                           ; 3033 _ 8D. 70, 01
        mov     eax, dword [ebp+0CH]                    ; 3036 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 3039 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 303C _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 303F _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 3042 _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 3045 _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 3048 _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 304B _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 304E _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 3051 _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 3054 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 3057 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 305A _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 305D _ 8B. 40, 0C
        sub     esp, 4                                  ; 3060 _ 83. EC, 04
        push    dword [ebp-0CH]                         ; 3063 _ FF. 75, F4
        push    esi                                     ; 3066 _ 56
        push    ebx                                     ; 3067 _ 53
        push    ecx                                     ; 3068 _ 51
        push    edx                                     ; 3069 _ 52
        push    eax                                     ; 306A _ 50
        push    dword [ebp+8H]                          ; 306B _ FF. 75, 08
        call    sheet_refresh_new                       ; 306E _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 3073 _ 83. C4, 20
        jmp     ?_167                                   ; 3076 _ E9, 00000244

?_156:  mov     eax, dword [ebp+8H]                     ; 307B _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 307E _ 8B. 40, 10
        cmp     dword [ebp-0CH], eax                    ; 3081 _ 39. 45, F4
        jge     ?_159                                   ; 3084 _ 7D, 47
        mov     eax, dword [ebp-0CH]                    ; 3086 _ 8B. 45, F4
        mov     dword [ebp-18H], eax                    ; 3089 _ 89. 45, E8
        jmp     ?_158                                   ; 308C _ EB, 34

?_157:  mov     eax, dword [ebp-18H]                    ; 308E _ 8B. 45, E8
        lea     edx, [eax+1H]                           ; 3091 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 3094 _ 8B. 45, 08
        add     edx, 4                                  ; 3097 _ 83. C2, 04
        mov     edx, dword [eax+edx*4+4H]               ; 309A _ 8B. 54 90, 04
        mov     eax, dword [ebp+8H]                     ; 309E _ 8B. 45, 08
        mov     ecx, dword [ebp-18H]                    ; 30A1 _ 8B. 4D, E8
        add     ecx, 4                                  ; 30A4 _ 83. C1, 04
        mov     dword [eax+ecx*4+4H], edx               ; 30A7 _ 89. 54 88, 04
        mov     eax, dword [ebp+8H]                     ; 30AB _ 8B. 45, 08
        mov     edx, dword [ebp-18H]                    ; 30AE _ 8B. 55, E8
        add     edx, 4                                  ; 30B1 _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 30B4 _ 8B. 44 90, 04
        mov     edx, dword [ebp-18H]                    ; 30B8 _ 8B. 55, E8
        mov     dword [eax+18H], edx                    ; 30BB _ 89. 50, 18
        add     dword [ebp-18H], 1                      ; 30BE _ 83. 45, E8, 01
?_158:  mov     eax, dword [ebp+8H]                     ; 30C2 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 30C5 _ 8B. 40, 10
        cmp     dword [ebp-18H], eax                    ; 30C8 _ 39. 45, E8
        jl      ?_157                                   ; 30CB _ 7C, C1
?_159:  mov     eax, dword [ebp+8H]                     ; 30CD _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 30D0 _ 8B. 40, 10
        lea     edx, [eax-1H]                           ; 30D3 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 30D6 _ 8B. 45, 08
        mov     dword [eax+10H], edx                    ; 30D9 _ 89. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 30DC _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 30DF _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 30E2 _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 30E5 _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 30E8 _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 30EB _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 30EE _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 30F1 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 30F4 _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 30F7 _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 30FA _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 30FD _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 3100 _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 3103 _ 8B. 40, 0C
        sub     esp, 8                                  ; 3106 _ 83. EC, 08
        push    0                                       ; 3109 _ 6A, 00
        push    ebx                                     ; 310B _ 53
        push    ecx                                     ; 310C _ 51
        push    edx                                     ; 310D _ 52
        push    eax                                     ; 310E _ 50
        push    dword [ebp+8H]                          ; 310F _ FF. 75, 08
        call    sheet_refreshmap                        ; 3112 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 3117 _ 83. C4, 20
        mov     eax, dword [ebp-0CH]                    ; 311A _ 8B. 45, F4
        lea     esi, [eax-1H]                           ; 311D _ 8D. 70, FF
        mov     eax, dword [ebp+0CH]                    ; 3120 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 3123 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 3126 _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 3129 _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 312C _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 312F _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 3132 _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 3135 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 3138 _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 313B _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 313E _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 3141 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 3144 _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 3147 _ 8B. 40, 0C
        sub     esp, 4                                  ; 314A _ 83. EC, 04
        push    esi                                     ; 314D _ 56
        push    0                                       ; 314E _ 6A, 00
        push    ebx                                     ; 3150 _ 53
        push    ecx                                     ; 3151 _ 51
        push    edx                                     ; 3152 _ 52
        push    eax                                     ; 3153 _ 50
        push    dword [ebp+8H]                          ; 3154 _ FF. 75, 08
        call    sheet_refresh_new                       ; 3157 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 315C _ 83. C4, 20
        jmp     ?_167                                   ; 315F _ E9, 0000015B

?_160:  mov     eax, dword [ebp-0CH]                    ; 3164 _ 8B. 45, F4
        cmp     eax, dword [ebp+10H]                    ; 3167 _ 3B. 45, 10
        jge     ?_167                                   ; 316A _ 0F 8D, 0000014F
        cmp     dword [ebp-0CH], 0                      ; 3170 _ 83. 7D, F4, 00
        js      ?_163                                   ; 3174 _ 78, 56
        mov     eax, dword [ebp-0CH]                    ; 3176 _ 8B. 45, F4
        mov     dword [ebp-14H], eax                    ; 3179 _ 89. 45, EC
        jmp     ?_162                                   ; 317C _ EB, 34

?_161:  mov     eax, dword [ebp-14H]                    ; 317E _ 8B. 45, EC
        lea     edx, [eax+1H]                           ; 3181 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 3184 _ 8B. 45, 08
        add     edx, 4                                  ; 3187 _ 83. C2, 04
        mov     edx, dword [eax+edx*4+4H]               ; 318A _ 8B. 54 90, 04
        mov     eax, dword [ebp+8H]                     ; 318E _ 8B. 45, 08
        mov     ecx, dword [ebp-14H]                    ; 3191 _ 8B. 4D, EC
        add     ecx, 4                                  ; 3194 _ 83. C1, 04
        mov     dword [eax+ecx*4+4H], edx               ; 3197 _ 89. 54 88, 04
        mov     eax, dword [ebp+8H]                     ; 319B _ 8B. 45, 08
        mov     edx, dword [ebp-14H]                    ; 319E _ 8B. 55, EC
        add     edx, 4                                  ; 31A1 _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 31A4 _ 8B. 44 90, 04
        mov     edx, dword [ebp-14H]                    ; 31A8 _ 8B. 55, EC
        mov     dword [eax+18H], edx                    ; 31AB _ 89. 50, 18
        add     dword [ebp-14H], 1                      ; 31AE _ 83. 45, EC, 01
?_162:  mov     eax, dword [ebp-14H]                    ; 31B2 _ 8B. 45, EC
        cmp     eax, dword [ebp+10H]                    ; 31B5 _ 3B. 45, 10
        jl      ?_161                                   ; 31B8 _ 7C, C4
        mov     eax, dword [ebp+8H]                     ; 31BA _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 31BD _ 8B. 55, 10
        lea     ecx, [edx+4H]                           ; 31C0 _ 8D. 4A, 04
        mov     edx, dword [ebp+0CH]                    ; 31C3 _ 8B. 55, 0C
        mov     dword [eax+ecx*4+4H], edx               ; 31C6 _ 89. 54 88, 04
        jmp     ?_166                                   ; 31CA _ EB, 72

?_163:  cmp     dword [ebp-0CH], 0                      ; 31CC _ 83. 7D, F4, 00
        jns     ?_166                                   ; 31D0 _ 79, 6C
        mov     eax, dword [ebp+8H]                     ; 31D2 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 31D5 _ 8B. 40, 10
        mov     dword [ebp-10H], eax                    ; 31D8 _ 89. 45, F0
        jmp     ?_165                                   ; 31DB _ EB, 3A

?_164:  mov     eax, dword [ebp-10H]                    ; 31DD _ 8B. 45, F0
        lea     ecx, [eax+1H]                           ; 31E0 _ 8D. 48, 01
        mov     eax, dword [ebp+8H]                     ; 31E3 _ 8B. 45, 08
        mov     edx, dword [ebp-10H]                    ; 31E6 _ 8B. 55, F0
        add     edx, 4                                  ; 31E9 _ 83. C2, 04
        mov     edx, dword [eax+edx*4+4H]               ; 31EC _ 8B. 54 90, 04
        mov     eax, dword [ebp+8H]                     ; 31F0 _ 8B. 45, 08
        add     ecx, 4                                  ; 31F3 _ 83. C1, 04
        mov     dword [eax+ecx*4+4H], edx               ; 31F6 _ 89. 54 88, 04
        mov     eax, dword [ebp-10H]                    ; 31FA _ 8B. 45, F0
        lea     edx, [eax+1H]                           ; 31FD _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 3200 _ 8B. 45, 08
        add     edx, 4                                  ; 3203 _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 3206 _ 8B. 44 90, 04
        mov     edx, dword [ebp-10H]                    ; 320A _ 8B. 55, F0
        add     edx, 1                                  ; 320D _ 83. C2, 01
        mov     dword [eax+18H], edx                    ; 3210 _ 89. 50, 18
        sub     dword [ebp-10H], 1                      ; 3213 _ 83. 6D, F0, 01
?_165:  mov     eax, dword [ebp-10H]                    ; 3217 _ 8B. 45, F0
        cmp     eax, dword [ebp+10H]                    ; 321A _ 3B. 45, 10
        jge     ?_164                                   ; 321D _ 7D, BE
        mov     eax, dword [ebp+8H]                     ; 321F _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 3222 _ 8B. 55, 10
        lea     ecx, [edx+4H]                           ; 3225 _ 8D. 4A, 04
        mov     edx, dword [ebp+0CH]                    ; 3228 _ 8B. 55, 0C
        mov     dword [eax+ecx*4+4H], edx               ; 322B _ 89. 54 88, 04
        mov     eax, dword [ebp+8H]                     ; 322F _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 3232 _ 8B. 40, 10
        lea     edx, [eax+1H]                           ; 3235 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 3238 _ 8B. 45, 08
        mov     dword [eax+10H], edx                    ; 323B _ 89. 50, 10
?_166:  mov     eax, dword [ebp+0CH]                    ; 323E _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 3241 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 3244 _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 3247 _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 324A _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 324D _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 3250 _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 3253 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 3256 _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 3259 _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 325C _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 325F _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 3262 _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 3265 _ 8B. 40, 0C
        sub     esp, 8                                  ; 3268 _ 83. EC, 08
        push    dword [ebp+10H]                         ; 326B _ FF. 75, 10
        push    ebx                                     ; 326E _ 53
        push    ecx                                     ; 326F _ 51
        push    edx                                     ; 3270 _ 52
        push    eax                                     ; 3271 _ 50
        push    dword [ebp+8H]                          ; 3272 _ FF. 75, 08
        call    sheet_refreshmap                        ; 3275 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 327A _ 83. C4, 20
        mov     eax, dword [ebp+0CH]                    ; 327D _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 3280 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 3283 _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 3286 _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 3289 _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 328C _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 328F _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 3292 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 3295 _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 3298 _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 329B _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 329E _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 32A1 _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 32A4 _ 8B. 40, 0C
        sub     esp, 4                                  ; 32A7 _ 83. EC, 04
        push    dword [ebp+10H]                         ; 32AA _ FF. 75, 10
        push    dword [ebp+10H]                         ; 32AD _ FF. 75, 10
        push    ebx                                     ; 32B0 _ 53
        push    ecx                                     ; 32B1 _ 51
        push    edx                                     ; 32B2 _ 52
        push    eax                                     ; 32B3 _ 50
        push    dword [ebp+8H]                          ; 32B4 _ FF. 75, 08
        call    sheet_refresh_new                       ; 32B7 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 32BC _ 83. C4, 20
?_167:  nop                                             ; 32BF _ 90
        lea     esp, [ebp-8H]                           ; 32C0 _ 8D. 65, F8
        pop     ebx                                     ; 32C3 _ 5B
        pop     esi                                     ; 32C4 _ 5E
        pop     ebp                                     ; 32C5 _ 5D
        ret                                             ; 32C6 _ C3
; sheet_level_updown End of function

sheet_refresh:; Function begin
        push    ebp                                     ; 32C7 _ 55
        mov     ebp, esp                                ; 32C8 _ 89. E5
        push    edi                                     ; 32CA _ 57
        push    esi                                     ; 32CB _ 56
        push    ebx                                     ; 32CC _ 53
        sub     esp, 28                                 ; 32CD _ 83. EC, 1C
        mov     eax, dword [ebp+0CH]                    ; 32D0 _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 32D3 _ 8B. 40, 18
        test    eax, eax                                ; 32D6 _ 85. C0
        js      ?_168                                   ; 32D8 _ 78, 52
        mov     eax, dword [ebp+0CH]                    ; 32DA _ 8B. 45, 0C
        mov     ebx, dword [eax+18H]                    ; 32DD _ 8B. 58, 18
        mov     eax, dword [ebp+0CH]                    ; 32E0 _ 8B. 45, 0C
        mov     ecx, dword [eax+18H]                    ; 32E3 _ 8B. 48, 18
        mov     eax, dword [ebp+0CH]                    ; 32E6 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 32E9 _ 8B. 50, 10
        mov     eax, dword [ebp+1CH]                    ; 32EC _ 8B. 45, 1C
        lea     edi, [edx+eax]                          ; 32EF _ 8D. 3C 02
        mov     eax, dword [ebp+0CH]                    ; 32F2 _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 32F5 _ 8B. 50, 0C
        mov     eax, dword [ebp+18H]                    ; 32F8 _ 8B. 45, 18
        lea     esi, [edx+eax]                          ; 32FB _ 8D. 34 02
        mov     eax, dword [ebp+0CH]                    ; 32FE _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 3301 _ 8B. 50, 10
        mov     eax, dword [ebp+14H]                    ; 3304 _ 8B. 45, 14
        add     edx, eax                                ; 3307 _ 01. C2
        mov     eax, dword [ebp+0CH]                    ; 3309 _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 330C _ 8B. 40, 0C
        mov     dword [ebp-1CH], eax                    ; 330F _ 89. 45, E4
        mov     eax, dword [ebp+10H]                    ; 3312 _ 8B. 45, 10
        add     eax, dword [ebp-1CH]                    ; 3315 _ 03. 45, E4
        sub     esp, 4                                  ; 3318 _ 83. EC, 04
        push    ebx                                     ; 331B _ 53
        push    ecx                                     ; 331C _ 51
        push    edi                                     ; 331D _ 57
        push    esi                                     ; 331E _ 56
        push    edx                                     ; 331F _ 52
        push    eax                                     ; 3320 _ 50
        push    dword [ebp+8H]                          ; 3321 _ FF. 75, 08
        call    sheet_refresh_new                       ; 3324 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 3329 _ 83. C4, 20
?_168:  mov     eax, 0                                  ; 332C _ B8, 00000000
        lea     esp, [ebp-0CH]                          ; 3331 _ 8D. 65, F4
        pop     ebx                                     ; 3334 _ 5B
        pop     esi                                     ; 3335 _ 5E
        pop     edi                                     ; 3336 _ 5F
        pop     ebp                                     ; 3337 _ 5D
        ret                                             ; 3338 _ C3
; sheet_refresh End of function

sheet_slide:; Function begin
        push    ebp                                     ; 3339 _ 55
        mov     ebp, esp                                ; 333A _ 89. E5
        push    esi                                     ; 333C _ 56
        push    ebx                                     ; 333D _ 53
        sub     esp, 16                                 ; 333E _ 83. EC, 10
        mov     eax, dword [ebp+0CH]                    ; 3341 _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 3344 _ 8B. 40, 0C
        mov     dword [ebp-10H], eax                    ; 3347 _ 89. 45, F0
        mov     eax, dword [ebp+0CH]                    ; 334A _ 8B. 45, 0C
        mov     eax, dword [eax+10H]                    ; 334D _ 8B. 40, 10
        mov     dword [ebp-0CH], eax                    ; 3350 _ 89. 45, F4
        mov     eax, dword [ebp+0CH]                    ; 3353 _ 8B. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 3356 _ 8B. 55, 10
        mov     dword [eax+0CH], edx                    ; 3359 _ 89. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 335C _ 8B. 45, 0C
        mov     edx, dword [ebp+14H]                    ; 335F _ 8B. 55, 14
        mov     dword [eax+10H], edx                    ; 3362 _ 89. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 3365 _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 3368 _ 8B. 40, 18
        test    eax, eax                                ; 336B _ 85. C0
        js      ?_169                                   ; 336D _ 0F 88, 000000D3
        mov     eax, dword [ebp+0CH]                    ; 3373 _ 8B. 45, 0C
        mov     edx, dword [eax+8H]                     ; 3376 _ 8B. 50, 08
        mov     eax, dword [ebp-0CH]                    ; 3379 _ 8B. 45, F4
        add     edx, eax                                ; 337C _ 01. C2
        mov     eax, dword [ebp+0CH]                    ; 337E _ 8B. 45, 0C
        mov     ecx, dword [eax+4H]                     ; 3381 _ 8B. 48, 04
        mov     eax, dword [ebp-10H]                    ; 3384 _ 8B. 45, F0
        add     eax, ecx                                ; 3387 _ 01. C8
        sub     esp, 8                                  ; 3389 _ 83. EC, 08
        push    0                                       ; 338C _ 6A, 00
        push    edx                                     ; 338E _ 52
        push    eax                                     ; 338F _ 50
        push    dword [ebp-0CH]                         ; 3390 _ FF. 75, F4
        push    dword [ebp-10H]                         ; 3393 _ FF. 75, F0
        push    dword [ebp+8H]                          ; 3396 _ FF. 75, 08
        call    sheet_refreshmap                        ; 3399 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 339E _ 83. C4, 20
        mov     eax, dword [ebp+0CH]                    ; 33A1 _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 33A4 _ 8B. 40, 18
        mov     edx, dword [ebp+0CH]                    ; 33A7 _ 8B. 55, 0C
        mov     ecx, dword [edx+8H]                     ; 33AA _ 8B. 4A, 08
        mov     edx, dword [ebp+14H]                    ; 33AD _ 8B. 55, 14
        add     ecx, edx                                ; 33B0 _ 01. D1
        mov     edx, dword [ebp+0CH]                    ; 33B2 _ 8B. 55, 0C
        mov     ebx, dword [edx+4H]                     ; 33B5 _ 8B. 5A, 04
        mov     edx, dword [ebp+10H]                    ; 33B8 _ 8B. 55, 10
        add     edx, ebx                                ; 33BB _ 01. DA
        sub     esp, 8                                  ; 33BD _ 83. EC, 08
        push    eax                                     ; 33C0 _ 50
        push    ecx                                     ; 33C1 _ 51
        push    edx                                     ; 33C2 _ 52
        push    dword [ebp+14H]                         ; 33C3 _ FF. 75, 14
        push    dword [ebp+10H]                         ; 33C6 _ FF. 75, 10
        push    dword [ebp+8H]                          ; 33C9 _ FF. 75, 08
        call    sheet_refreshmap                        ; 33CC _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 33D1 _ 83. C4, 20
        mov     eax, dword [ebp+0CH]                    ; 33D4 _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 33D7 _ 8B. 40, 18
        lea     ecx, [eax-1H]                           ; 33DA _ 8D. 48, FF
        mov     eax, dword [ebp+0CH]                    ; 33DD _ 8B. 45, 0C
        mov     edx, dword [eax+8H]                     ; 33E0 _ 8B. 50, 08
        mov     eax, dword [ebp-0CH]                    ; 33E3 _ 8B. 45, F4
        add     edx, eax                                ; 33E6 _ 01. C2
        mov     eax, dword [ebp+0CH]                    ; 33E8 _ 8B. 45, 0C
        mov     ebx, dword [eax+4H]                     ; 33EB _ 8B. 58, 04
        mov     eax, dword [ebp-10H]                    ; 33EE _ 8B. 45, F0
        add     eax, ebx                                ; 33F1 _ 01. D8
        sub     esp, 4                                  ; 33F3 _ 83. EC, 04
        push    ecx                                     ; 33F6 _ 51
        push    0                                       ; 33F7 _ 6A, 00
        push    edx                                     ; 33F9 _ 52
        push    eax                                     ; 33FA _ 50
        push    dword [ebp-0CH]                         ; 33FB _ FF. 75, F4
        push    dword [ebp-10H]                         ; 33FE _ FF. 75, F0
        push    dword [ebp+8H]                          ; 3401 _ FF. 75, 08
        call    sheet_refresh_new                       ; 3404 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 3409 _ 83. C4, 20
        mov     eax, dword [ebp+0CH]                    ; 340C _ 8B. 45, 0C
        mov     edx, dword [eax+18H]                    ; 340F _ 8B. 50, 18
        mov     eax, dword [ebp+0CH]                    ; 3412 _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 3415 _ 8B. 40, 18
        mov     ecx, dword [ebp+0CH]                    ; 3418 _ 8B. 4D, 0C
        mov     ebx, dword [ecx+8H]                     ; 341B _ 8B. 59, 08
        mov     ecx, dword [ebp+14H]                    ; 341E _ 8B. 4D, 14
        add     ebx, ecx                                ; 3421 _ 01. CB
        mov     ecx, dword [ebp+0CH]                    ; 3423 _ 8B. 4D, 0C
        mov     esi, dword [ecx+4H]                     ; 3426 _ 8B. 71, 04
        mov     ecx, dword [ebp+10H]                    ; 3429 _ 8B. 4D, 10
        add     ecx, esi                                ; 342C _ 01. F1
        sub     esp, 4                                  ; 342E _ 83. EC, 04
        push    edx                                     ; 3431 _ 52
        push    eax                                     ; 3432 _ 50
        push    ebx                                     ; 3433 _ 53
        push    ecx                                     ; 3434 _ 51
        push    dword [ebp+14H]                         ; 3435 _ FF. 75, 14
        push    dword [ebp+10H]                         ; 3438 _ FF. 75, 10
        push    dword [ebp+8H]                          ; 343B _ FF. 75, 08
        call    sheet_refresh_new                       ; 343E _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 3443 _ 83. C4, 20
?_169:  nop                                             ; 3446 _ 90
        lea     esp, [ebp-8H]                           ; 3447 _ 8D. 65, F8
        pop     ebx                                     ; 344A _ 5B
        pop     esi                                     ; 344B _ 5E
        pop     ebp                                     ; 344C _ 5D
        ret                                             ; 344D _ C3
; sheet_slide End of function

sheet_refresh_new:; Function begin
        push    ebp                                     ; 344E _ 55
        mov     ebp, esp                                ; 344F _ 89. E5
        sub     esp, 48                                 ; 3451 _ 83. EC, 30
        mov     eax, dword [ebp+8H]                     ; 3454 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 3457 _ 8B. 00
        mov     dword [ebp-18H], eax                    ; 3459 _ 89. 45, E8
        mov     eax, dword [ebp+8H]                     ; 345C _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 345F _ 8B. 40, 04
        mov     dword [ebp-14H], eax                    ; 3462 _ 89. 45, EC
        cmp     dword [ebp+0CH], 0                      ; 3465 _ 83. 7D, 0C, 00
        jns     ?_170                                   ; 3469 _ 79, 07
        mov     dword [ebp+0CH], 0                      ; 346B _ C7. 45, 0C, 00000000
?_170:  cmp     dword [ebp+10H], 8                      ; 3472 _ 83. 7D, 10, 08
        jg      ?_171                                   ; 3476 _ 7F, 07
        mov     dword [ebp+10H], 0                      ; 3478 _ C7. 45, 10, 00000000
?_171:  mov     eax, dword [ebp+8H]                     ; 347F _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 3482 _ 8B. 40, 08
        cmp     dword [ebp+14H], eax                    ; 3485 _ 39. 45, 14
        jle     ?_172                                   ; 3488 _ 7E, 09
        mov     eax, dword [ebp+8H]                     ; 348A _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 348D _ 8B. 40, 08
        mov     dword [ebp+14H], eax                    ; 3490 _ 89. 45, 14
?_172:  mov     eax, dword [ebp+8H]                     ; 3493 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 3496 _ 8B. 40, 0C
        cmp     dword [ebp+18H], eax                    ; 3499 _ 39. 45, 18
        jle     ?_173                                   ; 349C _ 7E, 09
        mov     eax, dword [ebp+8H]                     ; 349E _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 34A1 _ 8B. 40, 0C
        mov     dword [ebp+18H], eax                    ; 34A4 _ 89. 45, 18
?_173:  mov     eax, dword [ebp+1CH]                    ; 34A7 _ 8B. 45, 1C
        mov     dword [ebp-24H], eax                    ; 34AA _ 89. 45, DC
        jmp     ?_180                                   ; 34AD _ E9, 00000118

?_174:  mov     eax, dword [ebp+8H]                     ; 34B2 _ 8B. 45, 08
        mov     edx, dword [ebp-24H]                    ; 34B5 _ 8B. 55, DC
        add     edx, 4                                  ; 34B8 _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 34BB _ 8B. 44 90, 04
        mov     dword [ebp-10H], eax                    ; 34BF _ 89. 45, F0
        mov     eax, dword [ebp-10H]                    ; 34C2 _ 8B. 45, F0
        mov     eax, dword [eax]                        ; 34C5 _ 8B. 00
        mov     dword [ebp-0CH], eax                    ; 34C7 _ 89. 45, F4
        mov     eax, dword [ebp-10H]                    ; 34CA _ 8B. 45, F0
        mov     edx, dword [ebp+8H]                     ; 34CD _ 8B. 55, 08
        add     edx, 1044                               ; 34D0 _ 81. C2, 00000414
        sub     eax, edx                                ; 34D6 _ 29. D0
        sar     eax, 5                                  ; 34D8 _ C1. F8, 05
        mov     byte [ebp-26H], al                      ; 34DB _ 88. 45, DA
        mov     dword [ebp-20H], 0                      ; 34DE _ C7. 45, E0, 00000000
        jmp     ?_179                                   ; 34E5 _ E9, 000000CD

?_175:  mov     eax, dword [ebp-10H]                    ; 34EA _ 8B. 45, F0
        mov     edx, dword [eax+10H]                    ; 34ED _ 8B. 50, 10
        mov     eax, dword [ebp-20H]                    ; 34F0 _ 8B. 45, E0
        add     eax, edx                                ; 34F3 _ 01. D0
        mov     dword [ebp-8H], eax                     ; 34F5 _ 89. 45, F8
        mov     dword [ebp-1CH], 0                      ; 34F8 _ C7. 45, E4, 00000000
        jmp     ?_178                                   ; 34FF _ E9, 000000A0

?_176:  mov     eax, dword [ebp-10H]                    ; 3504 _ 8B. 45, F0
        mov     edx, dword [eax+0CH]                    ; 3507 _ 8B. 50, 0C
        mov     eax, dword [ebp-1CH]                    ; 350A _ 8B. 45, E4
        add     eax, edx                                ; 350D _ 01. D0
        mov     dword [ebp-4H], eax                     ; 350F _ 89. 45, FC
        mov     eax, dword [ebp+0CH]                    ; 3512 _ 8B. 45, 0C
        cmp     eax, dword [ebp-4H]                     ; 3515 _ 3B. 45, FC
        jg      ?_177                                   ; 3518 _ 0F 8F, 00000082
        mov     eax, dword [ebp-4H]                     ; 351E _ 8B. 45, FC
        cmp     eax, dword [ebp+14H]                    ; 3521 _ 3B. 45, 14
        jge     ?_177                                   ; 3524 _ 7D, 7A
        mov     eax, dword [ebp+10H]                    ; 3526 _ 8B. 45, 10
        cmp     eax, dword [ebp-8H]                     ; 3529 _ 3B. 45, F8
        jg      ?_177                                   ; 352C _ 7F, 72
        mov     eax, dword [ebp-8H]                     ; 352E _ 8B. 45, F8
        cmp     eax, dword [ebp+18H]                    ; 3531 _ 3B. 45, 18
        jge     ?_177                                   ; 3534 _ 7D, 6A
        mov     eax, dword [ebp-10H]                    ; 3536 _ 8B. 45, F0
        mov     eax, dword [eax+4H]                     ; 3539 _ 8B. 40, 04
        imul    eax, dword [ebp-20H]                    ; 353C _ 0F AF. 45, E0
        mov     edx, eax                                ; 3540 _ 89. C2
        mov     eax, dword [ebp-1CH]                    ; 3542 _ 8B. 45, E4
        add     eax, edx                                ; 3545 _ 01. D0
        mov     edx, eax                                ; 3547 _ 89. C2
        mov     eax, dword [ebp-0CH]                    ; 3549 _ 8B. 45, F4
        add     eax, edx                                ; 354C _ 01. D0
        movzx   eax, byte [eax]                         ; 354E _ 0F B6. 00
        mov     byte [ebp-25H], al                      ; 3551 _ 88. 45, DB
        mov     eax, dword [ebp+8H]                     ; 3554 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 3557 _ 8B. 40, 08
        imul    eax, dword [ebp-8H]                     ; 355A _ 0F AF. 45, F8
        mov     edx, eax                                ; 355E _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 3560 _ 8B. 45, FC
        add     eax, edx                                ; 3563 _ 01. D0
        mov     edx, eax                                ; 3565 _ 89. C2
        mov     eax, dword [ebp-14H]                    ; 3567 _ 8B. 45, EC
        add     eax, edx                                ; 356A _ 01. D0
        movzx   eax, byte [eax]                         ; 356C _ 0F B6. 00
        cmp     byte [ebp-26H], al                      ; 356F _ 38. 45, DA
        jnz     ?_177                                   ; 3572 _ 75, 2C
        movzx   edx, byte [ebp-25H]                     ; 3574 _ 0F B6. 55, DB
        mov     eax, dword [ebp-10H]                    ; 3578 _ 8B. 45, F0
        mov     eax, dword [eax+14H]                    ; 357B _ 8B. 40, 14
        cmp     edx, eax                                ; 357E _ 39. C2
        jz      ?_177                                   ; 3580 _ 74, 1E
        mov     eax, dword [ebp+8H]                     ; 3582 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 3585 _ 8B. 40, 08
        imul    eax, dword [ebp-8H]                     ; 3588 _ 0F AF. 45, F8
        mov     edx, eax                                ; 358C _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 358E _ 8B. 45, FC
        add     eax, edx                                ; 3591 _ 01. D0
        mov     edx, eax                                ; 3593 _ 89. C2
        mov     eax, dword [ebp-18H]                    ; 3595 _ 8B. 45, E8
        add     edx, eax                                ; 3598 _ 01. C2
        movzx   eax, byte [ebp-25H]                     ; 359A _ 0F B6. 45, DB
        mov     byte [edx], al                          ; 359E _ 88. 02
?_177:  add     dword [ebp-1CH], 1                      ; 35A0 _ 83. 45, E4, 01
?_178:  mov     eax, dword [ebp-10H]                    ; 35A4 _ 8B. 45, F0
        mov     eax, dword [eax+4H]                     ; 35A7 _ 8B. 40, 04
        cmp     dword [ebp-1CH], eax                    ; 35AA _ 39. 45, E4
        jl      ?_176                                   ; 35AD _ 0F 8C, FFFFFF51
        add     dword [ebp-20H], 1                      ; 35B3 _ 83. 45, E0, 01
?_179:  mov     eax, dword [ebp-10H]                    ; 35B7 _ 8B. 45, F0
        mov     eax, dword [eax+8H]                     ; 35BA _ 8B. 40, 08
        cmp     dword [ebp-20H], eax                    ; 35BD _ 39. 45, E0
        jl      ?_175                                   ; 35C0 _ 0F 8C, FFFFFF24
        add     dword [ebp-24H], 1                      ; 35C6 _ 83. 45, DC, 01
?_180:  mov     eax, dword [ebp-24H]                    ; 35CA _ 8B. 45, DC
        cmp     eax, dword [ebp+20H]                    ; 35CD _ 3B. 45, 20
        jle     ?_174                                   ; 35D0 _ 0F 8E, FFFFFEDC
        nop                                             ; 35D6 _ 90
        leave                                           ; 35D7 _ C9
        ret                                             ; 35D8 _ C3
; sheet_refresh_new End of function

sheet_refreshmap:; Function begin
        push    ebp                                     ; 35D9 _ 55
        mov     ebp, esp                                ; 35DA _ 89. E5
        sub     esp, 64                                 ; 35DC _ 83. EC, 40
        mov     eax, dword [ebp+8H]                     ; 35DF _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 35E2 _ 8B. 40, 04
        mov     dword [ebp-14H], eax                    ; 35E5 _ 89. 45, EC
        cmp     dword [ebp+0CH], 0                      ; 35E8 _ 83. 7D, 0C, 00
        jns     ?_181                                   ; 35EC _ 79, 07
        mov     dword [ebp+0CH], 0                      ; 35EE _ C7. 45, 0C, 00000000
?_181:  mov     eax, dword [ebp+8H]                     ; 35F5 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 35F8 _ 8B. 40, 08
        cmp     dword [ebp+0CH], eax                    ; 35FB _ 39. 45, 0C
        jle     ?_182                                   ; 35FE _ 7E, 09
        mov     eax, dword [ebp+8H]                     ; 3600 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 3603 _ 8B. 40, 08
        mov     dword [ebp+0CH], eax                    ; 3606 _ 89. 45, 0C
?_182:  cmp     dword [ebp+10H], 0                      ; 3609 _ 83. 7D, 10, 00
        jns     ?_183                                   ; 360D _ 79, 07
        mov     dword [ebp+10H], 0                      ; 360F _ C7. 45, 10, 00000000
?_183:  mov     eax, dword [ebp+8H]                     ; 3616 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 3619 _ 8B. 40, 0C
        cmp     dword [ebp+10H], eax                    ; 361C _ 39. 45, 10
        jle     ?_184                                   ; 361F _ 7E, 09
        mov     eax, dword [ebp+8H]                     ; 3621 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 3624 _ 8B. 40, 0C
        mov     dword [ebp+10H], eax                    ; 3627 _ 89. 45, 10
?_184:  mov     eax, dword [ebp+1CH]                    ; 362A _ 8B. 45, 1C
        mov     dword [ebp-20H], eax                    ; 362D _ 89. 45, E0
        jmp     ?_195                                   ; 3630 _ E9, 00000140

?_185:  mov     eax, dword [ebp+8H]                     ; 3635 _ 8B. 45, 08
        mov     edx, dword [ebp-20H]                    ; 3638 _ 8B. 55, E0
        add     edx, 4                                  ; 363B _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 363E _ 8B. 44 90, 04
        mov     dword [ebp-10H], eax                    ; 3642 _ 89. 45, F0
        mov     eax, dword [ebp-10H]                    ; 3645 _ 8B. 45, F0
        mov     edx, dword [ebp+8H]                     ; 3648 _ 8B. 55, 08
        add     edx, 1044                               ; 364B _ 81. C2, 00000414
        sub     eax, edx                                ; 3651 _ 29. D0
        sar     eax, 5                                  ; 3653 _ C1. F8, 05
        mov     byte [ebp-31H], al                      ; 3656 _ 88. 45, CF
        mov     eax, dword [ebp-10H]                    ; 3659 _ 8B. 45, F0
        mov     eax, dword [eax]                        ; 365C _ 8B. 00
        mov     dword [ebp-0CH], eax                    ; 365E _ 89. 45, F4
        mov     eax, dword [ebp-10H]                    ; 3661 _ 8B. 45, F0
        mov     eax, dword [eax+0CH]                    ; 3664 _ 8B. 40, 0C
        mov     edx, dword [ebp+0CH]                    ; 3667 _ 8B. 55, 0C
        sub     edx, eax                                ; 366A _ 29. C2
        mov     eax, edx                                ; 366C _ 89. D0
        mov     dword [ebp-30H], eax                    ; 366E _ 89. 45, D0
        mov     eax, dword [ebp-10H]                    ; 3671 _ 8B. 45, F0
        mov     eax, dword [eax+10H]                    ; 3674 _ 8B. 40, 10
        mov     edx, dword [ebp+10H]                    ; 3677 _ 8B. 55, 10
        sub     edx, eax                                ; 367A _ 29. C2
        mov     eax, edx                                ; 367C _ 89. D0
        mov     dword [ebp-2CH], eax                    ; 367E _ 89. 45, D4
        mov     eax, dword [ebp-10H]                    ; 3681 _ 8B. 45, F0
        mov     eax, dword [eax+0CH]                    ; 3684 _ 8B. 40, 0C
        mov     edx, dword [ebp+14H]                    ; 3687 _ 8B. 55, 14
        sub     edx, eax                                ; 368A _ 29. C2
        mov     eax, edx                                ; 368C _ 89. D0
        mov     dword [ebp-28H], eax                    ; 368E _ 89. 45, D8
        mov     eax, dword [ebp-10H]                    ; 3691 _ 8B. 45, F0
        mov     eax, dword [eax+10H]                    ; 3694 _ 8B. 40, 10
        mov     edx, dword [ebp+18H]                    ; 3697 _ 8B. 55, 18
        sub     edx, eax                                ; 369A _ 29. C2
        mov     eax, edx                                ; 369C _ 89. D0
        mov     dword [ebp-24H], eax                    ; 369E _ 89. 45, DC
        cmp     dword [ebp-30H], 0                      ; 36A1 _ 83. 7D, D0, 00
        jns     ?_186                                   ; 36A5 _ 79, 07
        mov     dword [ebp-30H], 0                      ; 36A7 _ C7. 45, D0, 00000000
?_186:  cmp     dword [ebp-2CH], 0                      ; 36AE _ 83. 7D, D4, 00
        jns     ?_187                                   ; 36B2 _ 79, 07
        mov     dword [ebp-2CH], 0                      ; 36B4 _ C7. 45, D4, 00000000
?_187:  mov     eax, dword [ebp-10H]                    ; 36BB _ 8B. 45, F0
        mov     eax, dword [eax+4H]                     ; 36BE _ 8B. 40, 04
        cmp     dword [ebp-28H], eax                    ; 36C1 _ 39. 45, D8
        jle     ?_188                                   ; 36C4 _ 7E, 09
        mov     eax, dword [ebp-10H]                    ; 36C6 _ 8B. 45, F0
        mov     eax, dword [eax+4H]                     ; 36C9 _ 8B. 40, 04
        mov     dword [ebp-28H], eax                    ; 36CC _ 89. 45, D8
?_188:  mov     eax, dword [ebp-10H]                    ; 36CF _ 8B. 45, F0
        mov     eax, dword [eax+8H]                     ; 36D2 _ 8B. 40, 08
        cmp     dword [ebp-24H], eax                    ; 36D5 _ 39. 45, DC
        jle     ?_189                                   ; 36D8 _ 7E, 09
        mov     eax, dword [ebp-10H]                    ; 36DA _ 8B. 45, F0
        mov     eax, dword [eax+8H]                     ; 36DD _ 8B. 40, 08
        mov     dword [ebp-24H], eax                    ; 36E0 _ 89. 45, DC
?_189:  mov     eax, dword [ebp-2CH]                    ; 36E3 _ 8B. 45, D4
        mov     dword [ebp-1CH], eax                    ; 36E6 _ 89. 45, E4
        jmp     ?_194                                   ; 36E9 _ EB, 7A

?_190:  mov     eax, dword [ebp-10H]                    ; 36EB _ 8B. 45, F0
        mov     edx, dword [eax+10H]                    ; 36EE _ 8B. 50, 10
        mov     eax, dword [ebp-1CH]                    ; 36F1 _ 8B. 45, E4
        add     eax, edx                                ; 36F4 _ 01. D0
        mov     dword [ebp-8H], eax                     ; 36F6 _ 89. 45, F8
        mov     eax, dword [ebp-30H]                    ; 36F9 _ 8B. 45, D0
        mov     dword [ebp-18H], eax                    ; 36FC _ 89. 45, E8
        jmp     ?_193                                   ; 36FF _ EB, 58

?_191:  mov     eax, dword [ebp-10H]                    ; 3701 _ 8B. 45, F0
        mov     edx, dword [eax+0CH]                    ; 3704 _ 8B. 50, 0C
        mov     eax, dword [ebp-18H]                    ; 3707 _ 8B. 45, E8
        add     eax, edx                                ; 370A _ 01. D0
        mov     dword [ebp-4H], eax                     ; 370C _ 89. 45, FC
        mov     eax, dword [ebp-10H]                    ; 370F _ 8B. 45, F0
        mov     eax, dword [eax+4H]                     ; 3712 _ 8B. 40, 04
        imul    eax, dword [ebp-1CH]                    ; 3715 _ 0F AF. 45, E4
        mov     edx, eax                                ; 3719 _ 89. C2
        mov     eax, dword [ebp-18H]                    ; 371B _ 8B. 45, E8
        add     eax, edx                                ; 371E _ 01. D0
        mov     edx, eax                                ; 3720 _ 89. C2
        mov     eax, dword [ebp-0CH]                    ; 3722 _ 8B. 45, F4
        add     eax, edx                                ; 3725 _ 01. D0
        movzx   eax, byte [eax]                         ; 3727 _ 0F B6. 00
        movzx   edx, al                                 ; 372A _ 0F B6. D0
        mov     eax, dword [ebp-10H]                    ; 372D _ 8B. 45, F0
        mov     eax, dword [eax+14H]                    ; 3730 _ 8B. 40, 14
        cmp     edx, eax                                ; 3733 _ 39. C2
        jz      ?_192                                   ; 3735 _ 74, 1E
        mov     eax, dword [ebp+8H]                     ; 3737 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 373A _ 8B. 40, 08
        imul    eax, dword [ebp-8H]                     ; 373D _ 0F AF. 45, F8
        mov     edx, eax                                ; 3741 _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 3743 _ 8B. 45, FC
        add     eax, edx                                ; 3746 _ 01. D0
        mov     edx, eax                                ; 3748 _ 89. C2
        mov     eax, dword [ebp-14H]                    ; 374A _ 8B. 45, EC
        add     edx, eax                                ; 374D _ 01. C2
        movzx   eax, byte [ebp-31H]                     ; 374F _ 0F B6. 45, CF
        mov     byte [edx], al                          ; 3753 _ 88. 02
?_192:  add     dword [ebp-18H], 1                      ; 3755 _ 83. 45, E8, 01
?_193:  mov     eax, dword [ebp-18H]                    ; 3759 _ 8B. 45, E8
        cmp     eax, dword [ebp-28H]                    ; 375C _ 3B. 45, D8
        jl      ?_191                                   ; 375F _ 7C, A0
        add     dword [ebp-1CH], 1                      ; 3761 _ 83. 45, E4, 01
?_194:  mov     eax, dword [ebp-1CH]                    ; 3765 _ 8B. 45, E4
        cmp     eax, dword [ebp-24H]                    ; 3768 _ 3B. 45, DC
        jl      ?_190                                   ; 376B _ 0F 8C, FFFFFF7A
        add     dword [ebp-20H], 1                      ; 3771 _ 83. 45, E0, 01
?_195:  mov     eax, dword [ebp+8H]                     ; 3775 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 3778 _ 8B. 40, 10
        cmp     dword [ebp-20H], eax                    ; 377B _ 39. 45, E0
        jle     ?_185                                   ; 377E _ 0F 8E, FFFFFEB1
        nop                                             ; 3784 _ 90
        leave                                           ; 3785 _ C9
        ret                                             ; 3786 _ C3
; sheet_refreshmap End of function

init_pit:; Function begin
        push    ebp                                     ; 3787 _ 55
        mov     ebp, esp                                ; 3788 _ 89. E5
        sub     esp, 24                                 ; 378A _ 83. EC, 18
        sub     esp, 8                                  ; 378D _ 83. EC, 08
        push    52                                      ; 3790 _ 6A, 34
        push    67                                      ; 3792 _ 6A, 43
        call    io_out8                                 ; 3794 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 3799 _ 83. C4, 10
        sub     esp, 8                                  ; 379C _ 83. EC, 08
        push    156                                     ; 379F _ 68, 0000009C
        push    64                                      ; 37A4 _ 6A, 40
        call    io_out8                                 ; 37A6 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 37AB _ 83. C4, 10
        sub     esp, 8                                  ; 37AE _ 83. EC, 08
        push    46                                      ; 37B1 _ 6A, 2E
        push    64                                      ; 37B3 _ 6A, 40
        call    io_out8                                 ; 37B5 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 37BA _ 83. C4, 10
        mov     dword [timerctl], 0                     ; 37BD _ C7. 05, 000002A0(d), 00000000
        mov     dword [ebp-0CH], 0                      ; 37C7 _ C7. 45, F4, 00000000
        jmp     ?_197                                   ; 37CE _ EB, 26

?_196:  mov     eax, dword [ebp-0CH]                    ; 37D0 _ 8B. 45, F4
        shl     eax, 4                                  ; 37D3 _ C1. E0, 04
        add     eax, ?_270                              ; 37D6 _ 05, 000002A8(d)
        mov     dword [eax], 0                          ; 37DB _ C7. 00, 00000000
        mov     eax, dword [ebp-0CH]                    ; 37E1 _ 8B. 45, F4
        shl     eax, 4                                  ; 37E4 _ C1. E0, 04
        add     eax, ?_271                              ; 37E7 _ 05, 000002AC(d)
        mov     dword [eax], 0                          ; 37EC _ C7. 00, 00000000
        add     dword [ebp-0CH], 1                      ; 37F2 _ 83. 45, F4, 01
?_197:  cmp     dword [ebp-0CH], 499                    ; 37F6 _ 81. 7D, F4, 000001F3
        jle     ?_196                                   ; 37FD _ 7E, D1
        nop                                             ; 37FF _ 90
        leave                                           ; 3800 _ C9
        ret                                             ; 3801 _ C3
; init_pit End of function

timer_alloc:; Function begin
        push    ebp                                     ; 3802 _ 55
        mov     ebp, esp                                ; 3803 _ 89. E5
        sub     esp, 16                                 ; 3805 _ 83. EC, 10
        mov     dword [ebp-4H], 0                       ; 3808 _ C7. 45, FC, 00000000
        jmp     ?_200                                   ; 380F _ EB, 36

?_198:  mov     eax, dword [ebp-4H]                     ; 3811 _ 8B. 45, FC
        shl     eax, 4                                  ; 3814 _ C1. E0, 04
        add     eax, ?_270                              ; 3817 _ 05, 000002A8(d)
        mov     eax, dword [eax]                        ; 381C _ 8B. 00
        test    eax, eax                                ; 381E _ 85. C0
        jnz     ?_199                                   ; 3820 _ 75, 21
        mov     eax, dword [ebp-4H]                     ; 3822 _ 8B. 45, FC
        shl     eax, 4                                  ; 3825 _ C1. E0, 04
        add     eax, ?_270                              ; 3828 _ 05, 000002A8(d)
        mov     dword [eax], 1                          ; 382D _ C7. 00, 00000001
        mov     eax, dword [ebp-4H]                     ; 3833 _ 8B. 45, FC
        shl     eax, 4                                  ; 3836 _ C1. E0, 04
        add     eax, timerctl                           ; 3839 _ 05, 000002A0(d)
        add     eax, 4                                  ; 383E _ 83. C0, 04
        jmp     ?_201                                   ; 3841 _ EB, 12

?_199:  add     dword [ebp-4H], 1                       ; 3843 _ 83. 45, FC, 01
?_200:  cmp     dword [ebp-4H], 499                     ; 3847 _ 81. 7D, FC, 000001F3
        jle     ?_198                                   ; 384E _ 7E, C1
        mov     eax, 0                                  ; 3850 _ B8, 00000000
?_201:  leave                                           ; 3855 _ C9
        ret                                             ; 3856 _ C3
; timer_alloc End of function

timer_free:; Function begin
        push    ebp                                     ; 3857 _ 55
        mov     ebp, esp                                ; 3858 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 385A _ 8B. 45, 08
        mov     dword [eax+4H], 0                       ; 385D _ C7. 40, 04, 00000000
        nop                                             ; 3864 _ 90
        pop     ebp                                     ; 3865 _ 5D
        ret                                             ; 3866 _ C3
; timer_free End of function

timer_init:; Function begin
        push    ebp                                     ; 3867 _ 55
        mov     ebp, esp                                ; 3868 _ 89. E5
        sub     esp, 4                                  ; 386A _ 83. EC, 04
        mov     eax, dword [ebp+10H]                    ; 386D _ 8B. 45, 10
        mov     byte [ebp-4H], al                       ; 3870 _ 88. 45, FC
        mov     eax, dword [ebp+8H]                     ; 3873 _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 3876 _ 8B. 55, 0C
        mov     dword [eax+8H], edx                     ; 3879 _ 89. 50, 08
        mov     eax, dword [ebp+8H]                     ; 387C _ 8B. 45, 08
        movzx   edx, byte [ebp-4H]                      ; 387F _ 0F B6. 55, FC
        mov     byte [eax+0CH], dl                      ; 3883 _ 88. 50, 0C
        nop                                             ; 3886 _ 90
        leave                                           ; 3887 _ C9
        ret                                             ; 3888 _ C3
; timer_init End of function

timer_setTime:; Function begin
        push    ebp                                     ; 3889 _ 55
        mov     ebp, esp                                ; 388A _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 388C _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 388F _ 8B. 55, 0C
        mov     dword [eax], edx                        ; 3892 _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 3894 _ 8B. 45, 08
        mov     dword [eax+4H], 2                       ; 3897 _ C7. 40, 04, 00000002
        nop                                             ; 389E _ 90
        pop     ebp                                     ; 389F _ 5D
        ret                                             ; 38A0 _ C3
; timer_setTime End of function

timer_settime:; Function begin
        push    ebp                                     ; 38A1 _ 55
        mov     ebp, esp                                ; 38A2 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 38A4 _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 38A7 _ 8B. 55, 0C
        mov     dword [eax], edx                        ; 38AA _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 38AC _ 8B. 45, 08
        mov     dword [eax+4H], 2                       ; 38AF _ C7. 40, 04, 00000002
        nop                                             ; 38B6 _ 90
        pop     ebp                                     ; 38B7 _ 5D
        ret                                             ; 38B8 _ C3
; timer_settime End of function

getTimerController:; Function begin
        push    ebp                                     ; 38B9 _ 55
        mov     ebp, esp                                ; 38BA _ 89. E5
        mov     eax, timerctl                           ; 38BC _ B8, 000002A0(d)
        pop     ebp                                     ; 38C1 _ 5D
        ret                                             ; 38C2 _ C3
; getTimerController End of function

intHandlerForTimer:; Function begin
        push    ebp                                     ; 38C3 _ 55
        mov     ebp, esp                                ; 38C4 _ 89. E5
        push    ebx                                     ; 38C6 _ 53
        sub     esp, 20                                 ; 38C7 _ 83. EC, 14
        sub     esp, 8                                  ; 38CA _ 83. EC, 08
        push    32                                      ; 38CD _ 6A, 20
        push    32                                      ; 38CF _ 6A, 20
        call    io_out8                                 ; 38D1 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 38D6 _ 83. C4, 10
        mov     eax, dword [timerctl]                   ; 38D9 _ A1, 000002A0(d)
        add     eax, 1                                  ; 38DE _ 83. C0, 01
        mov     dword [timerctl], eax                   ; 38E1 _ A3, 000002A0(d)
        mov     dword [ebp-10H], 0                      ; 38E6 _ C7. 45, F0, 00000000
        mov     dword [ebp-0CH], 0                      ; 38ED _ C7. 45, F4, 00000000
        jmp     ?_205                                   ; 38F4 _ E9, 000000AD

?_202:  mov     eax, dword [ebp-0CH]                    ; 38F9 _ 8B. 45, F4
        shl     eax, 4                                  ; 38FC _ C1. E0, 04
        add     eax, ?_270                              ; 38FF _ 05, 000002A8(d)
        mov     eax, dword [eax]                        ; 3904 _ 8B. 00
        cmp     eax, 2                                  ; 3906 _ 83. F8, 02
        jne     ?_203                                   ; 3909 _ 0F 85, 00000088
        mov     eax, dword [ebp-0CH]                    ; 390F _ 8B. 45, F4
        shl     eax, 4                                  ; 3912 _ C1. E0, 04
        add     eax, ?_269                              ; 3915 _ 05, 000002A4(d)
        mov     eax, dword [eax]                        ; 391A _ 8B. 00
        lea     edx, [eax-1H]                           ; 391C _ 8D. 50, FF
        mov     eax, dword [ebp-0CH]                    ; 391F _ 8B. 45, F4
        shl     eax, 4                                  ; 3922 _ C1. E0, 04
        add     eax, ?_269                              ; 3925 _ 05, 000002A4(d)
        mov     dword [eax], edx                        ; 392A _ 89. 10
        mov     eax, dword [ebp-0CH]                    ; 392C _ 8B. 45, F4
        shl     eax, 4                                  ; 392F _ C1. E0, 04
        add     eax, ?_269                              ; 3932 _ 05, 000002A4(d)
        mov     eax, dword [eax]                        ; 3937 _ 8B. 00
        test    eax, eax                                ; 3939 _ 85. C0
        jnz     ?_203                                   ; 393B _ 75, 5A
        mov     eax, dword [ebp-0CH]                    ; 393D _ 8B. 45, F4
        shl     eax, 4                                  ; 3940 _ C1. E0, 04
        add     eax, ?_270                              ; 3943 _ 05, 000002A8(d)
        mov     dword [eax], 1                          ; 3948 _ C7. 00, 00000001
        mov     eax, dword [ebp-0CH]                    ; 394E _ 8B. 45, F4
        shl     eax, 4                                  ; 3951 _ C1. E0, 04
        add     eax, ?_272                              ; 3954 _ 05, 000002B0(d)
        movzx   eax, byte [eax]                         ; 3959 _ 0F B6. 00
        movzx   edx, al                                 ; 395C _ 0F B6. D0
        mov     eax, dword [ebp-0CH]                    ; 395F _ 8B. 45, F4
        shl     eax, 4                                  ; 3962 _ C1. E0, 04
        add     eax, ?_271                              ; 3965 _ 05, 000002AC(d)
        mov     eax, dword [eax]                        ; 396A _ 8B. 00
        sub     esp, 8                                  ; 396C _ 83. EC, 08
        push    edx                                     ; 396F _ 52
        push    eax                                     ; 3970 _ 50
        call    fifo8_put                               ; 3971 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 3976 _ 83. C4, 10
        mov     eax, dword [ebp-0CH]                    ; 3979 _ 8B. 45, F4
        shl     eax, 4                                  ; 397C _ C1. E0, 04
        add     eax, timerctl                           ; 397F _ 05, 000002A0(d)
        lea     ebx, [eax+4H]                           ; 3984 _ 8D. 58, 04
        call    getTaskTimer                            ; 3987 _ E8, FFFFFFFC(rel)
        cmp     ebx, eax                                ; 398C _ 39. C3
        jnz     ?_203                                   ; 398E _ 75, 07
        mov     dword [ebp-10H], 1                      ; 3990 _ C7. 45, F0, 00000001
?_203:  cmp     dword [ebp-10H], 1                      ; 3997 _ 83. 7D, F0, 01
        jnz     ?_204                                   ; 399B _ 75, 05
        call    task_switch                             ; 399D _ E8, FFFFFFFC(rel)
?_204:  add     dword [ebp-0CH], 1                      ; 39A2 _ 83. 45, F4, 01
?_205:  cmp     dword [ebp-0CH], 499                    ; 39A6 _ 81. 7D, F4, 000001F3
        jle     ?_202                                   ; 39AD _ 0F 8E, FFFFFF46
        nop                                             ; 39B3 _ 90
        mov     ebx, dword [ebp-4H]                     ; 39B4 _ 8B. 5D, FC
        leave                                           ; 39B7 _ C9
        ret                                             ; 39B8 _ C3
; intHandlerForTimer End of function

fifo8_init:; Function begin
        push    ebp                                     ; 39B9 _ 55
        mov     ebp, esp                                ; 39BA _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 39BC _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 39BF _ 8B. 55, 0C
        mov     dword [eax+0CH], edx                    ; 39C2 _ 89. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 39C5 _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 39C8 _ 8B. 55, 10
        mov     dword [eax], edx                        ; 39CB _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 39CD _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 39D0 _ 8B. 55, 0C
        mov     dword [eax+10H], edx                    ; 39D3 _ 89. 50, 10
        mov     eax, dword [ebp+8H]                     ; 39D6 _ 8B. 45, 08
        mov     dword [eax+4H], 0                       ; 39D9 _ C7. 40, 04, 00000000
        mov     eax, dword [ebp+8H]                     ; 39E0 _ 8B. 45, 08
        mov     dword [eax+8H], 0                       ; 39E3 _ C7. 40, 08, 00000000
        mov     eax, dword [ebp+8H]                     ; 39EA _ 8B. 45, 08
        mov     dword [eax+14H], 0                      ; 39ED _ C7. 40, 14, 00000000
        mov     eax, dword [ebp+8H]                     ; 39F4 _ 8B. 45, 08
        mov     edx, dword [ebp+14H]                    ; 39F7 _ 8B. 55, 14
        mov     dword [eax+18H], edx                    ; 39FA _ 89. 50, 18
        nop                                             ; 39FD _ 90
        pop     ebp                                     ; 39FE _ 5D
        ret                                             ; 39FF _ C3
; fifo8_init End of function

fifo8_put:; Function begin
        push    ebp                                     ; 3A00 _ 55
        mov     ebp, esp                                ; 3A01 _ 89. E5
        sub     esp, 24                                 ; 3A03 _ 83. EC, 18
        mov     eax, dword [ebp+0CH]                    ; 3A06 _ 8B. 45, 0C
        mov     byte [ebp-0CH], al                      ; 3A09 _ 88. 45, F4
        cmp     dword [ebp+8H], 0                       ; 3A0C _ 83. 7D, 08, 00
        jnz     ?_206                                   ; 3A10 _ 75, 0A
        mov     eax, 4294967295                         ; 3A12 _ B8, FFFFFFFF
        jmp     ?_210                                   ; 3A17 _ E9, 000000A0

?_206:  mov     eax, dword [ebp+8H]                     ; 3A1C _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 3A1F _ 8B. 40, 10
        test    eax, eax                                ; 3A22 _ 85. C0
        jnz     ?_207                                   ; 3A24 _ 75, 18
        mov     eax, dword [ebp+8H]                     ; 3A26 _ 8B. 45, 08
        mov     eax, dword [eax+14H]                    ; 3A29 _ 8B. 40, 14
        or      eax, 01H                                ; 3A2C _ 83. C8, 01
        mov     edx, eax                                ; 3A2F _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 3A31 _ 8B. 45, 08
        mov     dword [eax+14H], edx                    ; 3A34 _ 89. 50, 14
        mov     eax, 4294967295                         ; 3A37 _ B8, FFFFFFFF
        jmp     ?_210                                   ; 3A3C _ EB, 7E

?_207:  mov     eax, dword [ebp+8H]                     ; 3A3E _ 8B. 45, 08
        mov     edx, dword [eax]                        ; 3A41 _ 8B. 10
        mov     eax, dword [ebp+8H]                     ; 3A43 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 3A46 _ 8B. 40, 08
        add     edx, eax                                ; 3A49 _ 01. C2
        movzx   eax, byte [ebp-0CH]                     ; 3A4B _ 0F B6. 45, F4
        mov     byte [edx], al                          ; 3A4F _ 88. 02
        mov     eax, dword [ebp+8H]                     ; 3A51 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 3A54 _ 8B. 40, 08
        lea     edx, [eax+1H]                           ; 3A57 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 3A5A _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 3A5D _ 89. 50, 08
        mov     eax, dword [ebp+8H]                     ; 3A60 _ 8B. 45, 08
        mov     edx, dword [eax+8H]                     ; 3A63 _ 8B. 50, 08
        mov     eax, dword [ebp+8H]                     ; 3A66 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 3A69 _ 8B. 40, 0C
        cmp     edx, eax                                ; 3A6C _ 39. C2
        jl      ?_208                                   ; 3A6E _ 7C, 0A
        mov     eax, dword [ebp+8H]                     ; 3A70 _ 8B. 45, 08
        mov     dword [eax+8H], 0                       ; 3A73 _ C7. 40, 08, 00000000
?_208:  mov     eax, dword [ebp+8H]                     ; 3A7A _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 3A7D _ 8B. 40, 10
        lea     edx, [eax-1H]                           ; 3A80 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 3A83 _ 8B. 45, 08
        mov     dword [eax+10H], edx                    ; 3A86 _ 89. 50, 10
        mov     eax, dword [ebp+8H]                     ; 3A89 _ 8B. 45, 08
        mov     eax, dword [eax+18H]                    ; 3A8C _ 8B. 40, 18
        test    eax, eax                                ; 3A8F _ 85. C0
        jz      ?_209                                   ; 3A91 _ 74, 24
        mov     eax, dword [ebp+8H]                     ; 3A93 _ 8B. 45, 08
        mov     eax, dword [eax+18H]                    ; 3A96 _ 8B. 40, 18
        mov     eax, dword [eax+4H]                     ; 3A99 _ 8B. 40, 04
        cmp     eax, 2                                  ; 3A9C _ 83. F8, 02
        jz      ?_209                                   ; 3A9F _ 74, 16
        mov     eax, dword [ebp+8H]                     ; 3AA1 _ 8B. 45, 08
        mov     eax, dword [eax+18H]                    ; 3AA4 _ 8B. 40, 18
        sub     esp, 4                                  ; 3AA7 _ 83. EC, 04
        push    0                                       ; 3AAA _ 6A, 00
        push    -1                                      ; 3AAC _ 6A, FF
        push    eax                                     ; 3AAE _ 50
        call    task_run                                ; 3AAF _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 3AB4 _ 83. C4, 10
?_209:  mov     eax, 1                                  ; 3AB7 _ B8, 00000001
?_210:  leave                                           ; 3ABC _ C9
        ret                                             ; 3ABD _ C3
; fifo8_put End of function

fifo8_get:; Function begin
        push    ebp                                     ; 3ABE _ 55
        mov     ebp, esp                                ; 3ABF _ 89. E5
        sub     esp, 16                                 ; 3AC1 _ 83. EC, 10
        mov     eax, dword [ebp+8H]                     ; 3AC4 _ 8B. 45, 08
        mov     edx, dword [eax+10H]                    ; 3AC7 _ 8B. 50, 10
        mov     eax, dword [ebp+8H]                     ; 3ACA _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 3ACD _ 8B. 40, 0C
        cmp     edx, eax                                ; 3AD0 _ 39. C2
        jnz     ?_211                                   ; 3AD2 _ 75, 07
        mov     eax, 4294967295                         ; 3AD4 _ B8, FFFFFFFF
        jmp     ?_213                                   ; 3AD9 _ EB, 51

?_211:  mov     eax, dword [ebp+8H]                     ; 3ADB _ 8B. 45, 08
        mov     edx, dword [eax]                        ; 3ADE _ 8B. 10
        mov     eax, dword [ebp+8H]                     ; 3AE0 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 3AE3 _ 8B. 40, 04
        add     eax, edx                                ; 3AE6 _ 01. D0
        movzx   eax, byte [eax]                         ; 3AE8 _ 0F B6. 00
        movzx   eax, al                                 ; 3AEB _ 0F B6. C0
        mov     dword [ebp-4H], eax                     ; 3AEE _ 89. 45, FC
        mov     eax, dword [ebp+8H]                     ; 3AF1 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 3AF4 _ 8B. 40, 04
        lea     edx, [eax+1H]                           ; 3AF7 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 3AFA _ 8B. 45, 08
        mov     dword [eax+4H], edx                     ; 3AFD _ 89. 50, 04
        mov     eax, dword [ebp+8H]                     ; 3B00 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 3B03 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 3B06 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 3B09 _ 8B. 40, 0C
        cmp     edx, eax                                ; 3B0C _ 39. C2
        jl      ?_212                                   ; 3B0E _ 7C, 0A
        mov     eax, dword [ebp+8H]                     ; 3B10 _ 8B. 45, 08
        mov     dword [eax+4H], 0                       ; 3B13 _ C7. 40, 04, 00000000
?_212:  mov     eax, dword [ebp+8H]                     ; 3B1A _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 3B1D _ 8B. 40, 10
        lea     edx, [eax+1H]                           ; 3B20 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 3B23 _ 8B. 45, 08
        mov     dword [eax+10H], edx                    ; 3B26 _ 89. 50, 10
        mov     eax, dword [ebp-4H]                     ; 3B29 _ 8B. 45, FC
?_213:  leave                                           ; 3B2C _ C9
        ret                                             ; 3B2D _ C3
; fifo8_get End of function

fifo8_status:; Function begin
        push    ebp                                     ; 3B2E _ 55
        mov     ebp, esp                                ; 3B2F _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 3B31 _ 8B. 45, 08
        mov     edx, dword [eax+0CH]                    ; 3B34 _ 8B. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 3B37 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 3B3A _ 8B. 40, 10
        sub     edx, eax                                ; 3B3D _ 29. C2
        mov     eax, edx                                ; 3B3F _ 89. D0
        pop     ebp                                     ; 3B41 _ 5D
        ret                                             ; 3B42 _ C3
; fifo8_status End of function

set_segmdesc:; Function begin
        push    ebp                                     ; 3B43 _ 55
        mov     ebp, esp                                ; 3B44 _ 89. E5
        cmp     dword [ebp+0CH], 1048575                ; 3B46 _ 81. 7D, 0C, 000FFFFF
        jbe     ?_214                                   ; 3B4D _ 76, 10
        or      dword [ebp+14H], 8000H                  ; 3B4F _ 81. 4D, 14, 00008000
        mov     eax, dword [ebp+0CH]                    ; 3B56 _ 8B. 45, 0C
        shr     eax, 12                                 ; 3B59 _ C1. E8, 0C
        mov     dword [ebp+0CH], eax                    ; 3B5C _ 89. 45, 0C
?_214:  mov     eax, dword [ebp+0CH]                    ; 3B5F _ 8B. 45, 0C
        mov     edx, eax                                ; 3B62 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 3B64 _ 8B. 45, 08
        mov     word [eax], dx                          ; 3B67 _ 66: 89. 10
        mov     eax, dword [ebp+10H]                    ; 3B6A _ 8B. 45, 10
        mov     edx, eax                                ; 3B6D _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 3B6F _ 8B. 45, 08
        mov     word [eax+2H], dx                       ; 3B72 _ 66: 89. 50, 02
        mov     eax, dword [ebp+10H]                    ; 3B76 _ 8B. 45, 10
        sar     eax, 16                                 ; 3B79 _ C1. F8, 10
        mov     edx, eax                                ; 3B7C _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 3B7E _ 8B. 45, 08
        mov     byte [eax+4H], dl                       ; 3B81 _ 88. 50, 04
        mov     eax, dword [ebp+14H]                    ; 3B84 _ 8B. 45, 14
        mov     edx, eax                                ; 3B87 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 3B89 _ 8B. 45, 08
        mov     byte [eax+5H], dl                       ; 3B8C _ 88. 50, 05
        mov     eax, dword [ebp+0CH]                    ; 3B8F _ 8B. 45, 0C
        shr     eax, 16                                 ; 3B92 _ C1. E8, 10
        and     eax, 0FH                                ; 3B95 _ 83. E0, 0F
        mov     edx, eax                                ; 3B98 _ 89. C2
        mov     eax, dword [ebp+14H]                    ; 3B9A _ 8B. 45, 14
        sar     eax, 8                                  ; 3B9D _ C1. F8, 08
        and     eax, 0FFFFFFF0H                         ; 3BA0 _ 83. E0, F0
        or      eax, edx                                ; 3BA3 _ 09. D0
        mov     edx, eax                                ; 3BA5 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 3BA7 _ 8B. 45, 08
        mov     byte [eax+6H], dl                       ; 3BAA _ 88. 50, 06
        mov     eax, dword [ebp+10H]                    ; 3BAD _ 8B. 45, 10
        shr     eax, 24                                 ; 3BB0 _ C1. E8, 18
        mov     edx, eax                                ; 3BB3 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 3BB5 _ 8B. 45, 08
        mov     byte [eax+7H], dl                       ; 3BB8 _ 88. 50, 07
        nop                                             ; 3BBB _ 90
        pop     ebp                                     ; 3BBC _ 5D
        ret                                             ; 3BBD _ C3
; set_segmdesc End of function

getTaskTimer:; Function begin
        push    ebp                                     ; 3BBE _ 55
        mov     ebp, esp                                ; 3BBF _ 89. E5
        mov     eax, dword [task_timer]                 ; 3BC1 _ A1, 000021E4(d)
        pop     ebp                                     ; 3BC6 _ 5D
        ret                                             ; 3BC7 _ C3
; getTaskTimer End of function

init_task_level:; Function begin
        push    ebp                                     ; 3BC8 _ 55
        mov     ebp, esp                                ; 3BC9 _ 89. E5
        sub     esp, 16                                 ; 3BCB _ 83. EC, 10
        mov     edx, dword [taskctl]                    ; 3BCE _ 8B. 15, 000021E8(d)
        mov     eax, dword [ebp+8H]                     ; 3BD4 _ 8B. 45, 08
        imul    eax, eax, 28                            ; 3BD7 _ 6B. C0, 1C
        add     eax, edx                                ; 3BDA _ 01. D0
        add     eax, 8                                  ; 3BDC _ 83. C0, 08
        mov     dword [eax], 0                          ; 3BDF _ C7. 00, 00000000
        mov     edx, dword [taskctl]                    ; 3BE5 _ 8B. 15, 000021E8(d)
        mov     eax, dword [ebp+8H]                     ; 3BEB _ 8B. 45, 08
        imul    eax, eax, 28                            ; 3BEE _ 6B. C0, 1C
        add     eax, edx                                ; 3BF1 _ 01. D0
        add     eax, 12                                 ; 3BF3 _ 83. C0, 0C
        mov     dword [eax], 0                          ; 3BF6 _ C7. 00, 00000000
        mov     dword [ebp-4H], 0                       ; 3BFC _ C7. 45, FC, 00000000
        jmp     ?_216                                   ; 3C03 _ EB, 1A

?_215:  mov     eax, dword [taskctl]                    ; 3C05 _ A1, 000021E8(d)
        mov     edx, dword [ebp-4H]                     ; 3C0A _ 8B. 55, FC
        shl     edx, 5                                  ; 3C0D _ C1. E2, 05
        add     eax, edx                                ; 3C10 _ 01. D0
        add     eax, 16                                 ; 3C12 _ 83. C0, 10
        mov     dword [eax], 0                          ; 3C15 _ C7. 00, 00000000
        add     dword [ebp-4H], 1                       ; 3C1B _ 83. 45, FC, 01
?_216:  cmp     dword [ebp-4H], 4                       ; 3C1F _ 83. 7D, FC, 04
        jle     ?_215                                   ; 3C23 _ 7E, E0
        nop                                             ; 3C25 _ 90
        leave                                           ; 3C26 _ C9
        ret                                             ; 3C27 _ C3
; init_task_level End of function

task_init:; Function begin
        push    ebp                                     ; 3C28 _ 55
        mov     ebp, esp                                ; 3C29 _ 89. E5
        sub     esp, 24                                 ; 3C2B _ 83. EC, 18
        call    get_addr_gdt                            ; 3C2E _ E8, FFFFFFFC(rel)
        mov     dword [ebp-10H], eax                    ; 3C33 _ 89. 45, F0
        sub     esp, 8                                  ; 3C36 _ 83. EC, 08
        push    692                                     ; 3C39 _ 68, 000002B4
        push    dword [ebp+8H]                          ; 3C3E _ FF. 75, 08
        call    memman_alloc_4K                         ; 3C41 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 3C46 _ 83. C4, 10
        mov     dword [taskctl], eax                    ; 3C49 _ A3, 000021E8(d)
        mov     dword [ebp-14H], 0                      ; 3C4E _ C7. 45, EC, 00000000
        jmp     ?_218                                   ; 3C55 _ EB, 73

?_217:  mov     edx, dword [taskctl]                    ; 3C57 _ 8B. 15, 000021E8(d)
        mov     eax, dword [ebp-14H]                    ; 3C5D _ 8B. 45, EC
        imul    eax, eax, 124                           ; 3C60 _ 6B. C0, 7C
        add     eax, edx                                ; 3C63 _ 01. D0
        add     eax, 96                                 ; 3C65 _ 83. C0, 60
        mov     dword [eax], 0                          ; 3C68 _ C7. 00, 00000000
        mov     eax, dword [ebp-14H]                    ; 3C6E _ 8B. 45, EC
        add     eax, 7                                  ; 3C71 _ 83. C0, 07
        mov     ecx, dword [taskctl]                    ; 3C74 _ 8B. 0D, 000021E8(d)
        lea     edx, [eax*8]                            ; 3C7A _ 8D. 14 C5, 00000000
        mov     eax, dword [ebp-14H]                    ; 3C81 _ 8B. 45, EC
        imul    eax, eax, 124                           ; 3C84 _ 6B. C0, 7C
        add     eax, ecx                                ; 3C87 _ 01. C8
        add     eax, 92                                 ; 3C89 _ 83. C0, 5C
        mov     dword [eax], edx                        ; 3C8C _ 89. 10
        mov     eax, dword [taskctl]                    ; 3C8E _ A1, 000021E8(d)
        mov     edx, dword [ebp-14H]                    ; 3C93 _ 8B. 55, EC
        imul    edx, edx, 124                           ; 3C96 _ 6B. D2, 7C
        add     edx, 96                                 ; 3C99 _ 83. C2, 60
        add     eax, edx                                ; 3C9C _ 01. D0
        add     eax, 16                                 ; 3C9E _ 83. C0, 10
        mov     ecx, eax                                ; 3CA1 _ 89. C1
        mov     eax, dword [ebp-14H]                    ; 3CA3 _ 8B. 45, EC
        add     eax, 7                                  ; 3CA6 _ 83. C0, 07
        lea     edx, [eax*8]                            ; 3CA9 _ 8D. 14 C5, 00000000
        mov     eax, dword [ebp-10H]                    ; 3CB0 _ 8B. 45, F0
        add     eax, edx                                ; 3CB3 _ 01. D0
        push    137                                     ; 3CB5 _ 68, 00000089
        push    ecx                                     ; 3CBA _ 51
        push    103                                     ; 3CBB _ 6A, 67
        push    eax                                     ; 3CBD _ 50
        call    set_segmdesc                            ; 3CBE _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 3CC3 _ 83. C4, 10
        add     dword [ebp-14H], 1                      ; 3CC6 _ 83. 45, EC, 01
?_218:  cmp     dword [ebp-14H], 4                      ; 3CCA _ 83. 7D, EC, 04
        jle     ?_217                                   ; 3CCE _ 7E, 87
        call    task_alloc                              ; 3CD0 _ E8, FFFFFFFC(rel)
        mov     dword [ebp-0CH], eax                    ; 3CD5 _ 89. 45, F4
        mov     eax, dword [ebp-0CH]                    ; 3CD8 _ 8B. 45, F4
        mov     dword [eax+4H], 2                       ; 3CDB _ C7. 40, 04, 00000002
        mov     eax, dword [ebp-0CH]                    ; 3CE2 _ 8B. 45, F4
        mov     dword [eax+8H], 10                      ; 3CE5 _ C7. 40, 08, 0000000A
        mov     eax, dword [ebp-0CH]                    ; 3CEC _ 8B. 45, F4
        mov     dword [eax+0CH], 0                      ; 3CEF _ C7. 40, 0C, 00000000
        sub     esp, 12                                 ; 3CF6 _ 83. EC, 0C
        push    dword [ebp-0CH]                         ; 3CF9 _ FF. 75, F4
        call    task_add                                ; 3CFC _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 3D01 _ 83. C4, 10
        call    task_switchsub                          ; 3D04 _ E8, FFFFFFFC(rel)
        mov     eax, dword [ebp-0CH]                    ; 3D09 _ 8B. 45, F4
        mov     eax, dword [eax]                        ; 3D0C _ 8B. 00
        sub     esp, 12                                 ; 3D0E _ 83. EC, 0C
        push    eax                                     ; 3D11 _ 50
        call    load_tr                                 ; 3D12 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 3D17 _ 83. C4, 10
        call    timer_alloc                             ; 3D1A _ E8, FFFFFFFC(rel)
        mov     dword [task_timer], eax                 ; 3D1F _ A3, 000021E4(d)
        mov     eax, dword [ebp-0CH]                    ; 3D24 _ 8B. 45, F4
        mov     eax, dword [eax+8H]                     ; 3D27 _ 8B. 40, 08
        mov     edx, eax                                ; 3D2A _ 89. C2
        mov     eax, dword [task_timer]                 ; 3D2C _ A1, 000021E4(d)
        sub     esp, 8                                  ; 3D31 _ 83. EC, 08
        push    edx                                     ; 3D34 _ 52
        push    eax                                     ; 3D35 _ 50
        call    timer_setTime                           ; 3D36 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 3D3B _ 83. C4, 10
        mov     eax, dword [ebp-0CH]                    ; 3D3E _ 8B. 45, F4
        leave                                           ; 3D41 _ C9
        ret                                             ; 3D42 _ C3
; task_init End of function

task_alloc:; Function begin
        push    ebp                                     ; 3D43 _ 55
        mov     ebp, esp                                ; 3D44 _ 89. E5
        sub     esp, 16                                 ; 3D46 _ 83. EC, 10
        mov     dword [ebp-8H], 0                       ; 3D49 _ C7. 45, F8, 00000000
        jmp     ?_221                                   ; 3D50 _ E9, 000000E1

?_219:  mov     edx, dword [taskctl]                    ; 3D55 _ 8B. 15, 000021E8(d)
        mov     eax, dword [ebp-8H]                     ; 3D5B _ 8B. 45, F8
        imul    eax, eax, 124                           ; 3D5E _ 6B. C0, 7C
        add     eax, edx                                ; 3D61 _ 01. D0
        add     eax, 96                                 ; 3D63 _ 83. C0, 60
        mov     eax, dword [eax]                        ; 3D66 _ 8B. 00
        test    eax, eax                                ; 3D68 _ 85. C0
        jne     ?_220                                   ; 3D6A _ 0F 85, 000000C2
        mov     eax, dword [taskctl]                    ; 3D70 _ A1, 000021E8(d)
        mov     edx, dword [ebp-8H]                     ; 3D75 _ 8B. 55, F8
        imul    edx, edx, 124                           ; 3D78 _ 6B. D2, 7C
        add     edx, 80                                 ; 3D7B _ 83. C2, 50
        add     eax, edx                                ; 3D7E _ 01. D0
        add     eax, 12                                 ; 3D80 _ 83. C0, 0C
        mov     dword [ebp-4H], eax                     ; 3D83 _ 89. 45, FC
        mov     eax, dword [ebp-4H]                     ; 3D86 _ 8B. 45, FC
        mov     dword [eax+4H], 1                       ; 3D89 _ C7. 40, 04, 00000001
        mov     eax, dword [ebp-4H]                     ; 3D90 _ 8B. 45, FC
        mov     dword [eax+38H], 514                    ; 3D93 _ C7. 40, 38, 00000202
        mov     eax, dword [ebp-4H]                     ; 3D9A _ 8B. 45, FC
        mov     dword [eax+3CH], 0                      ; 3D9D _ C7. 40, 3C, 00000000
        mov     eax, dword [ebp-4H]                     ; 3DA4 _ 8B. 45, FC
        mov     dword [eax+40H], 0                      ; 3DA7 _ C7. 40, 40, 00000000
        mov     eax, dword [ebp-4H]                     ; 3DAE _ 8B. 45, FC
        mov     dword [eax+44H], 0                      ; 3DB1 _ C7. 40, 44, 00000000
        mov     eax, dword [ebp-4H]                     ; 3DB8 _ 8B. 45, FC
        mov     dword [eax+48H], 0                      ; 3DBB _ C7. 40, 48, 00000000
        mov     eax, dword [ebp-4H]                     ; 3DC2 _ 8B. 45, FC
        mov     dword [eax+50H], 0                      ; 3DC5 _ C7. 40, 50, 00000000
        mov     eax, dword [ebp-8H]                     ; 3DCC _ 8B. 45, F8
        add     eax, 1                                  ; 3DCF _ 83. C0, 01
        shl     eax, 9                                  ; 3DD2 _ C1. E0, 09
        mov     edx, eax                                ; 3DD5 _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 3DD7 _ 8B. 45, FC
        mov     dword [eax+4CH], edx                    ; 3DDA _ 89. 50, 4C
        mov     eax, dword [ebp-4H]                     ; 3DDD _ 8B. 45, FC
        mov     dword [eax+54H], 0                      ; 3DE0 _ C7. 40, 54, 00000000
        mov     eax, dword [ebp-4H]                     ; 3DE7 _ 8B. 45, FC
        mov     dword [eax+58H], 0                      ; 3DEA _ C7. 40, 58, 00000000
        mov     eax, dword [ebp-4H]                     ; 3DF1 _ 8B. 45, FC
        mov     dword [eax+5CH], 0                      ; 3DF4 _ C7. 40, 5C, 00000000
        mov     eax, dword [ebp-4H]                     ; 3DFB _ 8B. 45, FC
        mov     dword [eax+68H], 0                      ; 3DFE _ C7. 40, 68, 00000000
        mov     eax, dword [ebp-4H]                     ; 3E05 _ 8B. 45, FC
        mov     dword [eax+6CH], 0                      ; 3E08 _ C7. 40, 6C, 00000000
        mov     eax, dword [ebp-4H]                     ; 3E0F _ 8B. 45, FC
        mov     dword [eax+70H], 0                      ; 3E12 _ C7. 40, 70, 00000000
        mov     eax, dword [ebp-4H]                     ; 3E19 _ 8B. 45, FC
        mov     dword [eax+74H], 0                      ; 3E1C _ C7. 40, 74, 00000000
        mov     eax, dword [ebp-4H]                     ; 3E23 _ 8B. 45, FC
        mov     dword [eax+78H], 1073741824             ; 3E26 _ C7. 40, 78, 40000000
        mov     eax, dword [ebp-4H]                     ; 3E2D _ 8B. 45, FC
        jmp     ?_222                                   ; 3E30 _ EB, 13

?_220:  add     dword [ebp-8H], 1                       ; 3E32 _ 83. 45, F8, 01
?_221:  cmp     dword [ebp-8H], 4                       ; 3E36 _ 83. 7D, F8, 04
        jle     ?_219                                   ; 3E3A _ 0F 8E, FFFFFF15
        mov     eax, 0                                  ; 3E40 _ B8, 00000000
?_222:  leave                                           ; 3E45 _ C9
        ret                                             ; 3E46 _ C3
; task_alloc End of function

task_run:; Function begin
        push    ebp                                     ; 3E47 _ 55
        mov     ebp, esp                                ; 3E48 _ 89. E5
        sub     esp, 8                                  ; 3E4A _ 83. EC, 08
        cmp     dword [ebp+0CH], 0                      ; 3E4D _ 83. 7D, 0C, 00
        jns     ?_223                                   ; 3E51 _ 79, 09
        mov     eax, dword [ebp+8H]                     ; 3E53 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 3E56 _ 8B. 40, 0C
        mov     dword [ebp+0CH], eax                    ; 3E59 _ 89. 45, 0C
?_223:  cmp     dword [ebp+10H], 0                      ; 3E5C _ 83. 7D, 10, 00
        jle     ?_224                                   ; 3E60 _ 7E, 09
        mov     eax, dword [ebp+8H]                     ; 3E62 _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 3E65 _ 8B. 55, 10
        mov     dword [eax+8H], edx                     ; 3E68 _ 89. 50, 08
?_224:  mov     eax, dword [ebp+8H]                     ; 3E6B _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 3E6E _ 8B. 40, 04
        cmp     eax, 2                                  ; 3E71 _ 83. F8, 02
        jnz     ?_225                                   ; 3E74 _ 75, 19
        mov     eax, dword [ebp+8H]                     ; 3E76 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 3E79 _ 8B. 40, 0C
        cmp     dword [ebp+0CH], eax                    ; 3E7C _ 39. 45, 0C
        jz      ?_225                                   ; 3E7F _ 74, 0E
        sub     esp, 12                                 ; 3E81 _ 83. EC, 0C
        push    dword [ebp+8H]                          ; 3E84 _ FF. 75, 08
        call    task_remove                             ; 3E87 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 3E8C _ 83. C4, 10
?_225:  mov     eax, dword [ebp+8H]                     ; 3E8F _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 3E92 _ 8B. 40, 04
        cmp     eax, 2                                  ; 3E95 _ 83. F8, 02
        jz      ?_226                                   ; 3E98 _ 74, 17
        mov     eax, dword [ebp+8H]                     ; 3E9A _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 3E9D _ 8B. 55, 0C
        mov     dword [eax+0CH], edx                    ; 3EA0 _ 89. 50, 0C
        sub     esp, 12                                 ; 3EA3 _ 83. EC, 0C
        push    dword [ebp+8H]                          ; 3EA6 _ FF. 75, 08
        call    task_add                                ; 3EA9 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 3EAE _ 83. C4, 10
?_226:  mov     eax, dword [taskctl]                    ; 3EB1 _ A1, 000021E8(d)
        mov     dword [eax+4H], 1                       ; 3EB6 _ C7. 40, 04, 00000001
        nop                                             ; 3EBD _ 90
        leave                                           ; 3EBE _ C9
        ret                                             ; 3EBF _ C3
; task_run End of function

task_switch:; Function begin
        push    ebp                                     ; 3EC0 _ 55
        mov     ebp, esp                                ; 3EC1 _ 89. E5
        sub     esp, 24                                 ; 3EC3 _ 83. EC, 18
        mov     edx, dword [taskctl]                    ; 3EC6 _ 8B. 15, 000021E8(d)
        mov     eax, dword [taskctl]                    ; 3ECC _ A1, 000021E8(d)
        mov     eax, dword [eax]                        ; 3ED1 _ 8B. 00
        imul    eax, eax, 28                            ; 3ED3 _ 6B. C0, 1C
        add     eax, edx                                ; 3ED6 _ 01. D0
        add     eax, 8                                  ; 3ED8 _ 83. C0, 08
        mov     dword [ebp-14H], eax                    ; 3EDB _ 89. 45, EC
        mov     eax, dword [ebp-14H]                    ; 3EDE _ 8B. 45, EC
        mov     edx, dword [eax+4H]                     ; 3EE1 _ 8B. 50, 04
        mov     eax, dword [ebp-14H]                    ; 3EE4 _ 8B. 45, EC
        mov     eax, dword [eax+edx*4+8H]               ; 3EE7 _ 8B. 44 90, 08
        mov     dword [ebp-10H], eax                    ; 3EEB _ 89. 45, F0
        mov     eax, dword [ebp-14H]                    ; 3EEE _ 8B. 45, EC
        mov     eax, dword [eax+4H]                     ; 3EF1 _ 8B. 40, 04
        lea     edx, [eax+1H]                           ; 3EF4 _ 8D. 50, 01
        mov     eax, dword [ebp-14H]                    ; 3EF7 _ 8B. 45, EC
        mov     dword [eax+4H], edx                     ; 3EFA _ 89. 50, 04
        mov     eax, dword [ebp-14H]                    ; 3EFD _ 8B. 45, EC
        mov     edx, dword [eax+4H]                     ; 3F00 _ 8B. 50, 04
        mov     eax, dword [ebp-14H]                    ; 3F03 _ 8B. 45, EC
        mov     eax, dword [eax]                        ; 3F06 _ 8B. 00
        cmp     edx, eax                                ; 3F08 _ 39. C2
        jnz     ?_227                                   ; 3F0A _ 75, 0A
        mov     eax, dword [ebp-14H]                    ; 3F0C _ 8B. 45, EC
        mov     dword [eax+4H], 0                       ; 3F0F _ C7. 40, 04, 00000000
?_227:  mov     eax, dword [taskctl]                    ; 3F16 _ A1, 000021E8(d)
        mov     eax, dword [eax+4H]                     ; 3F1B _ 8B. 40, 04
        test    eax, eax                                ; 3F1E _ 85. C0
        jz      ?_228                                   ; 3F20 _ 74, 1D
        call    task_switchsub                          ; 3F22 _ E8, FFFFFFFC(rel)
        mov     edx, dword [taskctl]                    ; 3F27 _ 8B. 15, 000021E8(d)
        mov     eax, dword [taskctl]                    ; 3F2D _ A1, 000021E8(d)
        mov     eax, dword [eax]                        ; 3F32 _ 8B. 00
        imul    eax, eax, 28                            ; 3F34 _ 6B. C0, 1C
        add     eax, edx                                ; 3F37 _ 01. D0
        add     eax, 8                                  ; 3F39 _ 83. C0, 08
        mov     dword [ebp-14H], eax                    ; 3F3C _ 89. 45, EC
?_228:  mov     eax, dword [ebp-14H]                    ; 3F3F _ 8B. 45, EC
        mov     edx, dword [eax+4H]                     ; 3F42 _ 8B. 50, 04
        mov     eax, dword [ebp-14H]                    ; 3F45 _ 8B. 45, EC
        mov     eax, dword [eax+edx*4+8H]               ; 3F48 _ 8B. 44 90, 08
        mov     dword [ebp-0CH], eax                    ; 3F4C _ 89. 45, F4
        mov     eax, dword [ebp-0CH]                    ; 3F4F _ 8B. 45, F4
        mov     eax, dword [eax+8H]                     ; 3F52 _ 8B. 40, 08
        mov     edx, eax                                ; 3F55 _ 89. C2
        mov     eax, dword [task_timer]                 ; 3F57 _ A1, 000021E4(d)
        sub     esp, 8                                  ; 3F5C _ 83. EC, 08
        push    edx                                     ; 3F5F _ 52
        push    eax                                     ; 3F60 _ 50
        call    timer_setTime                           ; 3F61 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 3F66 _ 83. C4, 10
        mov     eax, dword [ebp-0CH]                    ; 3F69 _ 8B. 45, F4
        cmp     eax, dword [ebp-10H]                    ; 3F6C _ 3B. 45, F0
        jz      ?_229                                   ; 3F6F _ 74, 1A
        cmp     dword [ebp-0CH], 0                      ; 3F71 _ 83. 7D, F4, 00
        jz      ?_229                                   ; 3F75 _ 74, 14
        mov     eax, dword [ebp-0CH]                    ; 3F77 _ 8B. 45, F4
        mov     eax, dword [eax]                        ; 3F7A _ 8B. 00
        sub     esp, 8                                  ; 3F7C _ 83. EC, 08
        push    eax                                     ; 3F7F _ 50
        push    0                                       ; 3F80 _ 6A, 00
        call    farjmp                                  ; 3F82 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 3F87 _ 83. C4, 10
        nop                                             ; 3F8A _ 90
?_229:  nop                                             ; 3F8B _ 90
        leave                                           ; 3F8C _ C9
        ret                                             ; 3F8D _ C3
; task_switch End of function

task_sleep:; Function begin
        push    ebp                                     ; 3F8E _ 55
        mov     ebp, esp                                ; 3F8F _ 89. E5
        sub     esp, 24                                 ; 3F91 _ 83. EC, 18
        mov     dword [ebp-0CH], 0                      ; 3F94 _ C7. 45, F4, 00000000
        mov     byte [ebp-0DH], 0                       ; 3F9B _ C6. 45, F3, 00
        mov     eax, dword [ebp+8H]                     ; 3F9F _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 3FA2 _ 8B. 40, 04
        cmp     eax, 2                                  ; 3FA5 _ 83. F8, 02
        jnz     ?_230                                   ; 3FA8 _ 75, 4C
        call    task_now                                ; 3FAA _ E8, FFFFFFFC(rel)
        mov     dword [ebp-0CH], eax                    ; 3FAF _ 89. 45, F4
        sub     esp, 12                                 ; 3FB2 _ 83. EC, 0C
        push    dword [ebp+8H]                          ; 3FB5 _ FF. 75, 08
        call    task_remove                             ; 3FB8 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 3FBD _ 83. C4, 10
        mov     byte [ebp-0DH], 1                       ; 3FC0 _ C6. 45, F3, 01
        mov     eax, dword [ebp+8H]                     ; 3FC4 _ 8B. 45, 08
        cmp     eax, dword [ebp-0CH]                    ; 3FC7 _ 3B. 45, F4
        jnz     ?_230                                   ; 3FCA _ 75, 2A
        call    task_switchsub                          ; 3FCC _ E8, FFFFFFFC(rel)
        call    task_now                                ; 3FD1 _ E8, FFFFFFFC(rel)
        mov     dword [ebp-0CH], eax                    ; 3FD6 _ 89. 45, F4
        mov     byte [ebp-0DH], 2                       ; 3FD9 _ C6. 45, F3, 02
        cmp     dword [ebp-0CH], 0                      ; 3FDD _ 83. 7D, F4, 00
        jz      ?_230                                   ; 3FE1 _ 74, 13
        mov     eax, dword [ebp-0CH]                    ; 3FE3 _ 8B. 45, F4
        mov     eax, dword [eax]                        ; 3FE6 _ 8B. 00
        sub     esp, 8                                  ; 3FE8 _ 83. EC, 08
        push    eax                                     ; 3FEB _ 50
        push    0                                       ; 3FEC _ 6A, 00
        call    farjmp                                  ; 3FEE _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 3FF3 _ 83. C4, 10
?_230:  movsx   eax, byte [ebp-0DH]                     ; 3FF6 _ 0F BE. 45, F3
        leave                                           ; 3FFA _ C9
        ret                                             ; 3FFB _ C3
; task_sleep End of function

task_now:; Function begin
        push    ebp                                     ; 3FFC _ 55
        mov     ebp, esp                                ; 3FFD _ 89. E5
        sub     esp, 16                                 ; 3FFF _ 83. EC, 10
        mov     edx, dword [taskctl]                    ; 4002 _ 8B. 15, 000021E8(d)
        mov     eax, dword [taskctl]                    ; 4008 _ A1, 000021E8(d)
        mov     eax, dword [eax]                        ; 400D _ 8B. 00
        imul    eax, eax, 28                            ; 400F _ 6B. C0, 1C
        add     eax, edx                                ; 4012 _ 01. D0
        add     eax, 8                                  ; 4014 _ 83. C0, 08
        mov     dword [ebp-4H], eax                     ; 4017 _ 89. 45, FC
        mov     eax, dword [ebp-4H]                     ; 401A _ 8B. 45, FC
        mov     edx, dword [eax+4H]                     ; 401D _ 8B. 50, 04
        mov     eax, dword [ebp-4H]                     ; 4020 _ 8B. 45, FC
        mov     eax, dword [eax+edx*4+8H]               ; 4023 _ 8B. 44 90, 08
        leave                                           ; 4027 _ C9
        ret                                             ; 4028 _ C3
; task_now End of function

task_add:; Function begin
        push    ebp                                     ; 4029 _ 55
        mov     ebp, esp                                ; 402A _ 89. E5
        sub     esp, 16                                 ; 402C _ 83. EC, 10
        mov     edx, dword [taskctl]                    ; 402F _ 8B. 15, 000021E8(d)
        mov     eax, dword [ebp+8H]                     ; 4035 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 4038 _ 8B. 40, 0C
        imul    eax, eax, 28                            ; 403B _ 6B. C0, 1C
        add     eax, edx                                ; 403E _ 01. D0
        add     eax, 8                                  ; 4040 _ 83. C0, 08
        mov     dword [ebp-4H], eax                     ; 4043 _ 89. 45, FC
        mov     eax, dword [ebp-4H]                     ; 4046 _ 8B. 45, FC
        mov     edx, dword [eax]                        ; 4049 _ 8B. 10
        mov     eax, dword [ebp-4H]                     ; 404B _ 8B. 45, FC
        mov     ecx, dword [ebp+8H]                     ; 404E _ 8B. 4D, 08
        mov     dword [eax+edx*4+8H], ecx               ; 4051 _ 89. 4C 90, 08
        mov     eax, dword [ebp-4H]                     ; 4055 _ 8B. 45, FC
        mov     eax, dword [eax]                        ; 4058 _ 8B. 00
        lea     edx, [eax+1H]                           ; 405A _ 8D. 50, 01
        mov     eax, dword [ebp-4H]                     ; 405D _ 8B. 45, FC
        mov     dword [eax], edx                        ; 4060 _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 4062 _ 8B. 45, 08
        mov     dword [eax+4H], 2                       ; 4065 _ C7. 40, 04, 00000002
        nop                                             ; 406C _ 90
        leave                                           ; 406D _ C9
        ret                                             ; 406E _ C3
; task_add End of function

task_remove:; Function begin
        push    ebp                                     ; 406F _ 55
        mov     ebp, esp                                ; 4070 _ 89. E5
        sub     esp, 16                                 ; 4072 _ 83. EC, 10
        mov     edx, dword [taskctl]                    ; 4075 _ 8B. 15, 000021E8(d)
        mov     eax, dword [ebp+8H]                     ; 407B _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 407E _ 8B. 40, 0C
        imul    eax, eax, 28                            ; 4081 _ 6B. C0, 1C
        add     eax, edx                                ; 4084 _ 01. D0
        add     eax, 8                                  ; 4086 _ 83. C0, 08
        mov     dword [ebp-4H], eax                     ; 4089 _ 89. 45, FC
        mov     dword [ebp-8H], 0                       ; 408C _ C7. 45, F8, 00000000
        jmp     ?_233                                   ; 4093 _ EB, 23

?_231:  mov     eax, dword [ebp-4H]                     ; 4095 _ 8B. 45, FC
        mov     edx, dword [ebp-8H]                     ; 4098 _ 8B. 55, F8
        mov     eax, dword [eax+edx*4+8H]               ; 409B _ 8B. 44 90, 08
        cmp     dword [ebp+8H], eax                     ; 409F _ 39. 45, 08
        jnz     ?_232                                   ; 40A2 _ 75, 10
        mov     eax, dword [ebp-4H]                     ; 40A4 _ 8B. 45, FC
        mov     edx, dword [ebp-8H]                     ; 40A7 _ 8B. 55, F8
        mov     dword [eax+edx*4+8H], 0                 ; 40AA _ C7. 44 90, 08, 00000000
        jmp     ?_234                                   ; 40B2 _ EB, 0E

?_232:  add     dword [ebp-8H], 1                       ; 40B4 _ 83. 45, F8, 01
?_233:  mov     eax, dword [ebp-4H]                     ; 40B8 _ 8B. 45, FC
        mov     eax, dword [eax]                        ; 40BB _ 8B. 00
        cmp     dword [ebp-8H], eax                     ; 40BD _ 39. 45, F8
        jl      ?_231                                   ; 40C0 _ 7C, D3
?_234:  mov     eax, dword [ebp-4H]                     ; 40C2 _ 8B. 45, FC
        mov     eax, dword [eax]                        ; 40C5 _ 8B. 00
        lea     edx, [eax-1H]                           ; 40C7 _ 8D. 50, FF
        mov     eax, dword [ebp-4H]                     ; 40CA _ 8B. 45, FC
        mov     dword [eax], edx                        ; 40CD _ 89. 10
        mov     eax, dword [ebp-4H]                     ; 40CF _ 8B. 45, FC
        mov     eax, dword [eax+4H]                     ; 40D2 _ 8B. 40, 04
        cmp     dword [ebp-8H], eax                     ; 40D5 _ 39. 45, F8
        jge     ?_235                                   ; 40D8 _ 7D, 0F
        mov     eax, dword [ebp-4H]                     ; 40DA _ 8B. 45, FC
        mov     eax, dword [eax+4H]                     ; 40DD _ 8B. 40, 04
        lea     edx, [eax-1H]                           ; 40E0 _ 8D. 50, FF
        mov     eax, dword [ebp-4H]                     ; 40E3 _ 8B. 45, FC
        mov     dword [eax+4H], edx                     ; 40E6 _ 89. 50, 04
?_235:  mov     eax, dword [ebp-4H]                     ; 40E9 _ 8B. 45, FC
        mov     edx, dword [eax+4H]                     ; 40EC _ 8B. 50, 04
        mov     eax, dword [ebp-4H]                     ; 40EF _ 8B. 45, FC
        mov     eax, dword [eax]                        ; 40F2 _ 8B. 00
        cmp     edx, eax                                ; 40F4 _ 39. C2
        jl      ?_236                                   ; 40F6 _ 7C, 0A
        mov     eax, dword [ebp-4H]                     ; 40F8 _ 8B. 45, FC
        mov     dword [eax+4H], 0                       ; 40FB _ C7. 40, 04, 00000000
?_236:  mov     eax, dword [ebp+8H]                     ; 4102 _ 8B. 45, 08
        mov     dword [eax+4H], 1                       ; 4105 _ C7. 40, 04, 00000001
        jmp     ?_238                                   ; 410C _ EB, 1B

?_237:  mov     eax, dword [ebp-8H]                     ; 410E _ 8B. 45, F8
        lea     edx, [eax+1H]                           ; 4111 _ 8D. 50, 01
        mov     eax, dword [ebp-4H]                     ; 4114 _ 8B. 45, FC
        mov     ecx, dword [eax+edx*4+8H]               ; 4117 _ 8B. 4C 90, 08
        mov     eax, dword [ebp-4H]                     ; 411B _ 8B. 45, FC
        mov     edx, dword [ebp-8H]                     ; 411E _ 8B. 55, F8
        mov     dword [eax+edx*4+8H], ecx               ; 4121 _ 89. 4C 90, 08
        add     dword [ebp-8H], 1                       ; 4125 _ 83. 45, F8, 01
?_238:  mov     eax, dword [ebp-4H]                     ; 4129 _ 8B. 45, FC
        mov     eax, dword [eax]                        ; 412C _ 8B. 00
        cmp     dword [ebp-8H], eax                     ; 412E _ 39. 45, F8
        jl      ?_237                                   ; 4131 _ 7C, DB
        nop                                             ; 4133 _ 90
        leave                                           ; 4134 _ C9
        ret                                             ; 4135 _ C3
; task_remove End of function

task_switchsub:; Function begin
        push    ebp                                     ; 4136 _ 55
        mov     ebp, esp                                ; 4137 _ 89. E5
        sub     esp, 16                                 ; 4139 _ 83. EC, 10
        mov     dword [ebp-4H], 0                       ; 413C _ C7. 45, FC, 00000000
        jmp     ?_240                                   ; 4143 _ EB, 1B

?_239:  mov     edx, dword [taskctl]                    ; 4145 _ 8B. 15, 000021E8(d)
        mov     eax, dword [ebp-4H]                     ; 414B _ 8B. 45, FC
        imul    eax, eax, 28                            ; 414E _ 6B. C0, 1C
        add     eax, edx                                ; 4151 _ 01. D0
        add     eax, 8                                  ; 4153 _ 83. C0, 08
        mov     eax, dword [eax]                        ; 4156 _ 8B. 00
        test    eax, eax                                ; 4158 _ 85. C0
        jg      ?_241                                   ; 415A _ 7F, 0C
        add     dword [ebp-4H], 1                       ; 415C _ 83. 45, FC, 01
?_240:  cmp     dword [ebp-4H], 2                       ; 4160 _ 83. 7D, FC, 02
        jle     ?_239                                   ; 4164 _ 7E, DF
        jmp     ?_242                                   ; 4166 _ EB, 01

?_241:  nop                                             ; 4168 _ 90
?_242:  mov     eax, dword [taskctl]                    ; 4169 _ A1, 000021E8(d)
        mov     edx, dword [ebp-4H]                     ; 416E _ 8B. 55, FC
        mov     dword [eax], edx                        ; 4171 _ 89. 10
        mov     eax, dword [taskctl]                    ; 4173 _ A1, 000021E8(d)
        mov     dword [eax+4H], 0                       ; 4178 _ C7. 40, 04, 00000000
        nop                                             ; 417F _ 90
        leave                                           ; 4180 _ C9
        ret                                             ; 4181 _ C3
; task_switchsub End of function

getTaskctl:; Function begin
        push    ebp                                     ; 4182 _ 55
        mov     ebp, esp                                ; 4183 _ 89. E5
        mov     eax, dword [taskctl]                    ; 4185 _ A1, 000021E8(d)
        pop     ebp                                     ; 418A _ 5D
        ret                                             ; 418B _ C3
; getTaskctl End of function

send_message:; Function begin
        push    ebp                                     ; 418C _ 55
        mov     ebp, esp                                ; 418D _ 89. E5
        sub     esp, 8                                  ; 418F _ 83. EC, 08
        mov     eax, dword [ebp+10H]                    ; 4192 _ 8B. 45, 10
        movzx   eax, al                                 ; 4195 _ 0F B6. C0
        mov     edx, dword [ebp+0CH]                    ; 4198 _ 8B. 55, 0C
        add     edx, 16                                 ; 419B _ 83. C2, 10
        sub     esp, 8                                  ; 419E _ 83. EC, 08
        push    eax                                     ; 41A1 _ 50
        push    edx                                     ; 41A2 _ 52
        call    fifo8_put                               ; 41A3 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 41A8 _ 83. C4, 10
        sub     esp, 12                                 ; 41AB _ 83. EC, 0C
        push    dword [ebp+8H]                          ; 41AE _ FF. 75, 08
        call    task_sleep                              ; 41B1 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 41B6 _ 83. C4, 10
        nop                                             ; 41B9 _ 90
        leave                                           ; 41BA _ C9
        ret                                             ; 41BB _ C3
; send_message End of function



?_243:                                                  ; byte
        db 43H, 6FH, 75H, 6EH, 74H, 65H, 72H, 00H       ; 0000 _ Counter.

?_244:                                                  ; byte
        db 43H, 6FH, 70H, 79H, 72H, 69H, 67H, 68H       ; 0008 _ Copyrigh
        db 74H, 20H, 32H, 30H, 32H, 31H, 20H, 43H       ; 0010 _ t 2021 C
        db 68H, 65H, 72H, 72H, 79H, 00H                 ; 0018 _ herry.

?_245:                                                  ; byte
        db 54H, 65H, 72H, 6DH, 69H, 6EH, 61H, 6CH       ; 001E _ Terminal
        db 00H                                          ; 0026 _ .

?_246:                                                  ; byte
        db 42H, 75H, 6EH, 6EH, 79H, 2EH, 2EH, 2EH       ; 0027 _ Bunny...
        db 00H                                          ; 002F _ .

?_247:                                                  ; byte
        db 41H, 00H                                     ; 0030 _ A.

?_248:                                                  ; byte
        db 33H, 5BH, 73H, 65H, 63H, 5DH, 00H            ; 0032 _ 3[sec].

?_249:                                                  ; byte
        db 3EH, 00H                                     ; 0039 _ >.

?_250:                                                  ; byte
        db 42H, 4DH, 59H, 00H, 00H                      ; 003B _ BMY..

?_251:                                                  ; byte
        db 44H, 65H, 73H, 69H, 67H, 6EH, 65H, 64H       ; 0040 _ Designed
        db 20H, 42H, 79H, 20H, 42H, 4DH, 59H, 2EH       ; 0048 _  By BMY.
        db 20H, 43H, 6FH, 70H, 79H, 72H, 69H, 67H       ; 0050 _  Copyrig
        db 68H, 74H, 20H, 40H, 32H, 30H, 32H, 31H       ; 0058 _ ht @2021
        db 20H, 43H, 68H, 65H, 72H, 72H, 79H, 00H       ; 0060 _  Cherry.

?_252:                                                  ; byte
        db 55H, 6EH, 64H, 65H, 66H, 69H, 6EH, 65H       ; 0068 _ Undefine
        db 64H, 20H, 4FH, 72H, 64H, 65H, 72H, 2EH       ; 0070 _ d Order.
        db 2EH, 2EH, 00H                                ; 0078 _ ...

?_253:                                                  ; byte
        db 45H, 6EH, 74H, 65H, 72H, 20H, 54H, 61H       ; 007B _ Enter Ta
        db 73H, 6BH, 20H, 42H, 00H                      ; 0083 _ sk B.

?_254:                                                  ; byte
        db 42H, 00H                                     ; 0088 _ B.

?_255:                                                  ; byte
        db 50H, 61H, 67H, 65H, 20H, 69H, 73H, 3AH       ; 008A _ Page is:
        db 20H, 00H                                     ; 0092 _  .

?_256:                                                  ; byte
        db 42H, 61H, 73H, 65H, 41H, 64H, 64H, 72H       ; 0094 _ BaseAddr
        db 4CH, 6FH, 77H, 3AH, 20H, 00H                 ; 009C _ Low: .

?_257:                                                  ; byte
        db 42H, 61H, 73H, 65H, 41H, 64H, 64H, 72H       ; 00A2 _ BaseAddr
        db 48H, 69H, 67H, 68H, 3AH, 20H, 00H            ; 00AA _ High: .

?_258:                                                  ; byte
        db 4CH, 65H, 6EH, 67H, 74H, 68H, 4CH, 6FH       ; 00B1 _ LengthLo
        db 77H, 3AH, 20H, 00H                           ; 00B9 _ w: .

?_259:                                                  ; byte
        db 4CH, 65H, 6EH, 67H, 74H, 68H, 48H, 69H       ; 00BD _ LengthHi
        db 67H, 68H, 3AH, 20H, 00H                      ; 00C5 _ gh: .

?_260:                                                  ; byte
        db 54H, 79H, 70H, 65H, 3AH, 20H, 00H            ; 00CA _ Type: .



keyVal:                                                 ; byte
        db 30H, 78H                                     ; 0000 _ 0x

?_261:  db 00H                                          ; 0002 _ .

?_262:  db 00H, 00H, 00H, 00H, 00H                      ; 0003 _ .....

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

pos.2314: dd 00000010H, 00000000H                       ; 0100 _ 16 0 
        dd 00000000H, 00000000H                         ; 0108 _ 0 0 
        dd 00000000H, 00000000H                         ; 0110 _ 0 0 
        dd 00000000H, 00000000H                         ; 0118 _ 0 0 

table_rgb.2421:                                         ; byte
        db 00H, 00H, 00H, 0FFH, 00H, 00H, 00H, 0FFH     ; 0120 _ ........
        db 00H, 0FFH, 0FFH, 00H, 00H, 00H, 0FFH, 0FFH   ; 0128 _ ........
        db 00H, 0FFH, 00H, 0FFH, 0FFH, 0FFH, 0FFH, 0FFH ; 0130 _ ........
        db 0C6H, 0C6H, 0C6H, 84H, 00H, 00H, 00H, 84H    ; 0138 _ ........
        db 00H, 84H, 84H, 00H, 00H, 00H, 84H, 84H       ; 0140 _ ........
        db 00H, 84H, 00H, 78H, 0D7H, 84H, 84H, 84H      ; 0148 _ ...x....
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0150 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0158 _ ........

cursor.2476:                                            ; byte
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

closebtn.2629:                                          ; byte
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

?_263:  resw    1                                       ; 000C

?_264:  resw    1                                       ; 000E

keyInfo:                                                ; byte
        resb    24                                      ; 0010

?_265:  resd    1                                       ; 0028

mouseInfo:                                              ; byte
        resb    52                                      ; 002C

keybuf:                                                 ; yword
        resb    32                                      ; 0060

mousebuf:                                               ; byte
        resb    128                                     ; 0080

mouse_move:                                             ; oword
        resb    12                                      ; 0100

?_266:  resd    1                                       ; 010C

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

task_a.2309:                                            ; dword
        resd    1                                       ; 025C

line.2313:                                              ; dword
        resd    1                                       ; 0260

cnt.2310: resd  1                                       ; 0264

task_b.2299:                                            ; oword
        resb    16                                      ; 0268

str.2519:                                               ; byte
        resb    1                                       ; 0278

?_267:  resb    9                                       ; 0279

?_268:  resb    2                                       ; 0282

line.2552:                                              ; dword
        resd    1                                       ; 0284

pos.2551: resd  6                                       ; 0288

timerctl:                                               ; byte
        resd    1                                       ; 02A0

?_269:                                                  ; byte
        resb    4                                       ; 02A4

?_270:                                                  ; byte
        resb    4                                       ; 02A8

?_271:                                                  ; byte
        resb    4                                       ; 02AC

?_272:                                                  ; byte
        resb    7988                                    ; 02B0

task_timer:                                             ; dword
        resd    1                                       ; 21E4

taskctl: resd   1                                       ; 21E8


