; Disassembly of file: ckernel.o
; Mon May 24 08:30:43 2021
; Mode: 32 bits
; Syntax: YASM/NASM
; Instruction set: 80386






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
        movzx   eax, word [?_245]                       ; 002B _ 0F B7. 05, 0000000C(d)
        cwde                                            ; 0032 _ 98
        mov     dword [ebp-54H], eax                    ; 0033 _ 89. 45, AC
        movzx   eax, word [?_246]                       ; 0036 _ 0F B7. 05, 0000000E(d)
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
        push    ?_228                                   ; 02ED _ 68, 00000000(d)
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
        mov     dword [task_a.2293], eax                ; 0352 _ A3, 0000025C(d)
        mov     eax, dword [task_a.2293]                ; 0357 _ A1, 0000025C(d)
        mov     dword [task_main], eax                  ; 035C _ A3, 00000258(d)
        mov     eax, dword [task_a.2293]                ; 0361 _ A1, 0000025C(d)
        mov     dword [?_247], eax                      ; 0366 _ A3, 00000028(d)
        mov     byte [ebp-6DH], 0                       ; 036B _ C6. 45, 93, 00
        mov     dword [ebp-6CH], 7                      ; 036F _ C7. 45, 94, 00000007
        mov     dword [ebp-68H], 0                      ; 0376 _ C7. 45, 98, 00000000
        mov     edx, dword [sheet_win]                  ; 037D _ 8B. 15, 00000248(d)
        mov     eax, dword [shtctl]                     ; 0383 _ A1, 00000244(d)
        sub     esp, 8                                  ; 0388 _ 83. EC, 08
        push    ?_229                                   ; 038B _ 68, 00000008(d)
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
        push    ?_228                                   ; 0463 _ 68, 00000000(d)
        push    edx                                     ; 0468 _ 52
        push    eax                                     ; 0469 _ 50
        call    make_wtitle8                            ; 046A _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 046F _ 83. C4, 10
        mov     eax, dword [shtctl]                     ; 0472 _ A1, 00000244(d)
        push    1                                       ; 0477 _ 6A, 01
        push    ?_230                                   ; 0479 _ 68, 0000001E(d)
        push    dword [ebp-28H]                         ; 047E _ FF. 75, D8
        push    eax                                     ; 0481 _ 50
        call    make_wtitle8                            ; 0482 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0487 _ 83. C4, 10
        mov     ebx, dword [pos.2298]                   ; 048A _ 8B. 1D, 00000100(d)
        mov     ecx, dword [line.2297]                  ; 0490 _ 8B. 0D, 00000260(d)
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
        push    ?_228                                   ; 04CF _ 68, 00000000(d)
        push    edx                                     ; 04D4 _ 52
        push    eax                                     ; 04D5 _ 50
        call    make_wtitle8                            ; 04D6 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 04DB _ 83. C4, 10
        mov     eax, dword [shtctl]                     ; 04DE _ A1, 00000244(d)
        push    0                                       ; 04E3 _ 6A, 00
        push    ?_230                                   ; 04E5 _ 68, 0000001E(d)
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
        mov     eax, dword [task_a.2293]                ; 054B _ A1, 0000025C(d)
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
        push    ?_231                                   ; 0578 _ 68, 00000027(d)
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
        mov     eax, dword [line.2297]                  ; 05A5 _ A1, 00000260(d)
        cmp     eax, 142                                ; 05AA _ 3D, 0000008E
        jg      ?_007                                   ; 05AF _ 0F 8F, 000000B3
        mov     ebx, dword [pos.2298]                   ; 05B5 _ 8B. 1D, 00000100(d)
        mov     ecx, dword [line.2297]                  ; 05BB _ 8B. 0D, 00000260(d)
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
        mov     eax, dword [pos.2298]                   ; 05F4 _ A1, 00000100(d)
        lea     esi, [eax+1AH]                          ; 05F9 _ 8D. 70, 1A
        mov     eax, dword [line.2297]                  ; 05FC _ A1, 00000260(d)
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
        mov     eax, dword [line.2297]                  ; 0624 _ A1, 00000260(d)
        add     eax, 8                                  ; 0629 _ 83. C0, 08
        mov     dword [line.2297], eax                  ; 062C _ A3, 00000260(d)
        mov     eax, dword [sheet_win]                  ; 0631 _ A1, 00000248(d)
        mov     eax, dword [eax+4H]                     ; 0636 _ 8B. 40, 04
        lea     edx, [eax-10H]                          ; 0639 _ 8D. 50, F0
        mov     eax, dword [line.2297]                  ; 063C _ A1, 00000260(d)
        cmp     edx, eax                                ; 0641 _ 39. C2
        jg      ?_006                                   ; 0643 _ 7F, 17
        mov     eax, dword [pos.2298]                   ; 0645 _ A1, 00000100(d)
        add     eax, 16                                 ; 064A _ 83. C0, 10
        mov     dword [pos.2298], eax                   ; 064D _ A3, 00000100(d)
        mov     dword [line.2297], 0                    ; 0652 _ C7. 05, 00000260(d), 00000000
?_006:  mov     dword [ebp-64H], 0                      ; 065C _ C7. 45, 9C, 00000000
        jmp     ?_015                                   ; 0663 _ E9, 00000239

?_007:  cmp     byte [ebp-6DH], 14                      ; 0668 _ 80. 7D, 93, 0E
        jne     ?_001                                   ; 066C _ 0F 85, FFFFFD4B
        mov     eax, dword [line.2297]                  ; 0672 _ A1, 00000260(d)
        cmp     eax, 7                                  ; 0677 _ 83. F8, 07
        jle     ?_001                                   ; 067A _ 0F 8E, FFFFFD3D
        mov     ebx, dword [pos.2298]                   ; 0680 _ 8B. 1D, 00000100(d)
        mov     ecx, dword [line.2297]                  ; 0686 _ 8B. 0D, 00000260(d)
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
        mov     eax, dword [line.2297]                  ; 06A8 _ A1, 00000260(d)
        sub     eax, 8                                  ; 06AD _ 83. E8, 08
        mov     dword [line.2297], eax                  ; 06B0 _ A3, 00000260(d)
        mov     ebx, dword [pos.2298]                   ; 06B5 _ 8B. 1D, 00000100(d)
        mov     ecx, dword [line.2297]                  ; 06BB _ 8B. 0D, 00000260(d)
        mov     edx, dword [sheet_win]                  ; 06C1 _ 8B. 15, 00000248(d)
        mov     eax, dword [shtctl]                     ; 06C7 _ A1, 00000244(d)
        sub     esp, 12                                 ; 06CC _ 83. EC, 0C
        push    7                                       ; 06CF _ 6A, 07
        push    ebx                                     ; 06D1 _ 53
        push    ecx                                     ; 06D2 _ 51
        push    edx                                     ; 06D3 _ 52
        push    eax                                     ; 06D4 _ 50
        call    set_cursor                              ; 06D5 _ E8, FFFFFFFC(rel)
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
        mov     eax, dword [task_a.2293]                ; 0714 _ A1, 0000025C(d)
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
        push    ?_232                                   ; 07A6 _ 68, 00000030(d)
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
        push    ?_233                                   ; 080E _ 68, 00000032(d)
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
        mov     ebx, dword [pos.2298]                   ; 0878 _ 8B. 1D, 00000100(d)
        mov     ecx, dword [line.2297]                  ; 087E _ 8B. 0D, 00000260(d)
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

isSpecialKey:; Function begin
        push    ebp                                     ; 0925 _ 55
        mov     ebp, esp                                ; 0926 _ 89. E5
        sub     esp, 8                                  ; 0928 _ 83. EC, 08
        sub     esp, 12                                 ; 092B _ 83. EC, 0C
        push    dword [ebp+8H]                          ; 092E _ FF. 75, 08
        call    transferScanCode                        ; 0931 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0936 _ 83. C4, 10
        cmp     dword [ebp+8H], 58                      ; 0939 _ 83. 7D, 08, 3A
        jz      ?_016                                   ; 093D _ 74, 27
        cmp     dword [ebp+8H], 186                     ; 093F _ 81. 7D, 08, 000000BA
        jz      ?_016                                   ; 0946 _ 74, 1E
        cmp     dword [ebp+8H], 42                      ; 0948 _ 83. 7D, 08, 2A
        jz      ?_016                                   ; 094C _ 74, 18
        cmp     dword [ebp+8H], 54                      ; 094E _ 83. 7D, 08, 36
        jz      ?_016                                   ; 0952 _ 74, 12
        cmp     dword [ebp+8H], 170                     ; 0954 _ 81. 7D, 08, 000000AA
        jz      ?_016                                   ; 095B _ 74, 09
        cmp     dword [ebp+8H], 182                     ; 095D _ 81. 7D, 08, 000000B6
        jnz     ?_017                                   ; 0964 _ 75, 07
?_016:  mov     eax, 1                                  ; 0966 _ B8, 00000001
        jmp     ?_018                                   ; 096B _ EB, 05

?_017:  mov     eax, 0                                  ; 096D _ B8, 00000000
?_018:  leave                                           ; 0972 _ C9
        ret                                             ; 0973 _ C3
; isSpecialKey End of function

transferScanCode:; Function begin
        push    ebp                                     ; 0974 _ 55
        mov     ebp, esp                                ; 0975 _ 89. E5
        sub     esp, 16                                 ; 0977 _ 83. EC, 10
        cmp     dword [ebp+8H], 42                      ; 097A _ 83. 7D, 08, 2A
        jnz     ?_019                                   ; 097E _ 75, 0D
        mov     eax, dword [key_shift]                  ; 0980 _ A1, 00000000(d)
        or      eax, 01H                                ; 0985 _ 83. C8, 01
        mov     dword [key_shift], eax                  ; 0988 _ A3, 00000000(d)
?_019:  cmp     dword [ebp+8H], 54                      ; 098D _ 83. 7D, 08, 36
        jnz     ?_020                                   ; 0991 _ 75, 0D
        mov     eax, dword [key_shift]                  ; 0993 _ A1, 00000000(d)
        or      eax, 02H                                ; 0998 _ 83. C8, 02
        mov     dword [key_shift], eax                  ; 099B _ A3, 00000000(d)
?_020:  cmp     dword [ebp+8H], 170                     ; 09A0 _ 81. 7D, 08, 000000AA
        jnz     ?_021                                   ; 09A7 _ 75, 0D
        mov     eax, dword [key_shift]                  ; 09A9 _ A1, 00000000(d)
        and     eax, 0FFFFFFFEH                         ; 09AE _ 83. E0, FE
        mov     dword [key_shift], eax                  ; 09B1 _ A3, 00000000(d)
?_021:  cmp     dword [ebp+8H], 182                     ; 09B6 _ 81. 7D, 08, 000000B6
        jnz     ?_022                                   ; 09BD _ 75, 0D
        mov     eax, dword [key_shift]                  ; 09BF _ A1, 00000000(d)
        and     eax, 0FFFFFFFDH                         ; 09C4 _ 83. E0, FD
        mov     dword [key_shift], eax                  ; 09C7 _ A3, 00000000(d)
?_022:  cmp     dword [ebp+8H], 58                      ; 09CC _ 83. 7D, 08, 3A
        jnz     ?_024                                   ; 09D0 _ 75, 1F
        mov     eax, dword [caps_lock]                  ; 09D2 _ A1, 00000000(d)
        test    eax, eax                                ; 09D7 _ 85. C0
        jnz     ?_023                                   ; 09D9 _ 75, 0C
        mov     dword [caps_lock], 1                    ; 09DB _ C7. 05, 00000000(d), 00000001
        jmp     ?_024                                   ; 09E5 _ EB, 0A

?_023:  mov     dword [caps_lock], 0                    ; 09E7 _ C7. 05, 00000000(d), 00000000
?_024:  cmp     dword [ebp+8H], 42                      ; 09F1 _ 83. 7D, 08, 2A
        jz      ?_025                                   ; 09F5 _ 74, 1E
        cmp     dword [ebp+8H], 54                      ; 09F7 _ 83. 7D, 08, 36
        jz      ?_025                                   ; 09FB _ 74, 18
        cmp     dword [ebp+8H], 170                     ; 09FD _ 81. 7D, 08, 000000AA
        jz      ?_025                                   ; 0A04 _ 74, 0F
        cmp     dword [ebp+8H], 182                     ; 0A06 _ 81. 7D, 08, 000000B6
        jz      ?_025                                   ; 0A0D _ 74, 06
        cmp     dword [ebp+8H], 83                      ; 0A0F _ 83. 7D, 08, 53
        jle     ?_026                                   ; 0A13 _ 7E, 0A
?_025:  mov     eax, 0                                  ; 0A15 _ B8, 00000000
        jmp     ?_031                                   ; 0A1A _ E9, 00000090

?_026:  mov     byte [ebp-1H], 0                        ; 0A1F _ C6. 45, FF, 00
        mov     eax, dword [key_shift]                  ; 0A23 _ A1, 00000000(d)
        test    eax, eax                                ; 0A28 _ 85. C0
        jnz     ?_027                                   ; 0A2A _ 75, 4A
        cmp     dword [ebp+8H], 14                      ; 0A2C _ 83. 7D, 08, 0E
        jz      ?_027                                   ; 0A30 _ 74, 44
        cmp     dword [ebp+8H], 83                      ; 0A32 _ 83. 7D, 08, 53
        jg      ?_027                                   ; 0A36 _ 7F, 3E
        mov     eax, dword [ebp+8H]                     ; 0A38 _ 8B. 45, 08
        add     eax, keytable                           ; 0A3B _ 05, 00000020(d)
        movzx   eax, byte [eax]                         ; 0A40 _ 0F B6. 00
        test    al, al                                  ; 0A43 _ 84. C0
        jz      ?_027                                   ; 0A45 _ 74, 2F
        mov     eax, dword [ebp+8H]                     ; 0A47 _ 8B. 45, 08
        add     eax, keytable                           ; 0A4A _ 05, 00000020(d)
        movzx   eax, byte [eax]                         ; 0A4F _ 0F B6. 00
        mov     byte [ebp-1H], al                       ; 0A52 _ 88. 45, FF
        cmp     byte [ebp-1H], 64                       ; 0A55 _ 80. 7D, FF, 40
        jle     ?_029                                   ; 0A59 _ 7E, 4F
        cmp     byte [ebp-1H], 90                       ; 0A5B _ 80. 7D, FF, 5A
        jg      ?_029                                   ; 0A5F _ 7F, 49
        mov     eax, dword [caps_lock]                  ; 0A61 _ A1, 00000000(d)
        test    eax, eax                                ; 0A66 _ 85. C0
        jnz     ?_029                                   ; 0A68 _ 75, 40
        movzx   eax, byte [ebp-1H]                      ; 0A6A _ 0F B6. 45, FF
        add     eax, 32                                 ; 0A6E _ 83. C0, 20
        mov     byte [ebp-1H], al                       ; 0A71 _ 88. 45, FF
        jmp     ?_029                                   ; 0A74 _ EB, 34

?_027:  mov     eax, dword [key_shift]                  ; 0A76 _ A1, 00000000(d)
        test    eax, eax                                ; 0A7B _ 85. C0
        jz      ?_028                                   ; 0A7D _ 74, 25
        cmp     dword [ebp+8H], 127                     ; 0A7F _ 83. 7D, 08, 7F
        jg      ?_028                                   ; 0A83 _ 7F, 1F
        mov     eax, dword [ebp+8H]                     ; 0A85 _ 8B. 45, 08
        add     eax, keytable1                          ; 0A88 _ 05, 00000080(d)
        movzx   eax, byte [eax]                         ; 0A8D _ 0F B6. 00
        test    al, al                                  ; 0A90 _ 84. C0
        jz      ?_028                                   ; 0A92 _ 74, 10
        mov     eax, dword [ebp+8H]                     ; 0A94 _ 8B. 45, 08
        add     eax, keytable1                          ; 0A97 _ 05, 00000080(d)
        movzx   eax, byte [eax]                         ; 0A9C _ 0F B6. 00
        mov     byte [ebp-1H], al                       ; 0A9F _ 88. 45, FF
        jmp     ?_030                                   ; 0AA2 _ EB, 07

?_028:  mov     byte [ebp-1H], 0                        ; 0AA4 _ C6. 45, FF, 00
        jmp     ?_030                                   ; 0AA8 _ EB, 01

?_029:  nop                                             ; 0AAA _ 90
?_030:  movzx   eax, byte [ebp-1H]                      ; 0AAB _ 0F B6. 45, FF
?_031:  leave                                           ; 0AAF _ C9
        ret                                             ; 0AB0 _ C3
; transferScanCode End of function

launch_console:; Function begin
        push    ebp                                     ; 0AB1 _ 55
        mov     ebp, esp                                ; 0AB2 _ 89. E5
        sub     esp, 24                                 ; 0AB4 _ 83. EC, 18
        mov     eax, dword [shtctl]                     ; 0AB7 _ A1, 00000244(d)
        sub     esp, 12                                 ; 0ABC _ 83. EC, 0C
        push    eax                                     ; 0ABF _ 50
        call    sheet_alloc                             ; 0AC0 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0AC5 _ 83. C4, 10
        mov     dword [ebp-18H], eax                    ; 0AC8 _ 89. 45, E8
        mov     eax, dword [memman]                     ; 0ACB _ A1, 00000008(d)
        sub     esp, 8                                  ; 0AD0 _ 83. EC, 08
        push    72000                                   ; 0AD3 _ 68, 00011940
        push    eax                                     ; 0AD8 _ 50
        call    memman_alloc_4K                         ; 0AD9 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0ADE _ 83. C4, 10
        mov     dword [ebp-14H], eax                    ; 0AE1 _ 89. 45, EC
        sub     esp, 12                                 ; 0AE4 _ 83. EC, 0C
        push    99                                      ; 0AE7 _ 6A, 63
        push    240                                     ; 0AE9 _ 68, 000000F0
        push    300                                     ; 0AEE _ 68, 0000012C
        push    dword [ebp-14H]                         ; 0AF3 _ FF. 75, EC
        push    dword [ebp-18H]                         ; 0AF6 _ FF. 75, E8
        call    sheet_setbuf                            ; 0AF9 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0AFE _ 83. C4, 20
        mov     eax, dword [shtctl]                     ; 0B01 _ A1, 00000244(d)
        push    0                                       ; 0B06 _ 6A, 00
        push    ?_230                                   ; 0B08 _ 68, 0000001E(d)
        push    dword [ebp-18H]                         ; 0B0D _ FF. 75, E8
        push    eax                                     ; 0B10 _ 50
        call    make_window8                            ; 0B11 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0B16 _ 83. C4, 10
        sub     esp, 8                                  ; 0B19 _ 83. EC, 08
        push    0                                       ; 0B1C _ 6A, 00
        push    204                                     ; 0B1E _ 68, 000000CC
        push    284                                     ; 0B23 _ 68, 0000011C
        push    28                                      ; 0B28 _ 6A, 1C
        push    8                                       ; 0B2A _ 6A, 08
        push    dword [ebp-18H]                         ; 0B2C _ FF. 75, E8
        call    make_textbox8                           ; 0B2F _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0B34 _ 83. C4, 20
        call    task_alloc                              ; 0B37 _ E8, FFFFFFFC(rel)
        mov     dword [ebp-10H], eax                    ; 0B3C _ 89. 45, F0
        call    get_code32_addr                         ; 0B3F _ E8, FFFFFFFC(rel)
        mov     dword [ebp-0CH], eax                    ; 0B44 _ 89. 45, F4
        mov     eax, dword [ebp-10H]                    ; 0B47 _ 8B. 45, F0
        mov     dword [eax+74H], 0                      ; 0B4A _ C7. 40, 74, 00000000
        mov     eax, dword [ebp-10H]                    ; 0B51 _ 8B. 45, F0
        mov     dword [eax+78H], 1073741824             ; 0B54 _ C7. 40, 78, 40000000
        mov     eax, dword [ebp-0CH]                    ; 0B5B _ 8B. 45, F4
        neg     eax                                     ; 0B5E _ F7. D8
        add     eax, console_task                       ; 0B60 _ 05, 00000000(d)
        mov     edx, eax                                ; 0B65 _ 89. C2
        mov     eax, dword [ebp-10H]                    ; 0B67 _ 8B. 45, F0
        mov     dword [eax+34H], edx                    ; 0B6A _ 89. 50, 34
        mov     eax, dword [ebp-10H]                    ; 0B6D _ 8B. 45, F0
        mov     dword [eax+5CH], 0                      ; 0B70 _ C7. 40, 5C, 00000000
        mov     eax, dword [ebp-10H]                    ; 0B77 _ 8B. 45, F0
        mov     dword [eax+60H], 8                      ; 0B7A _ C7. 40, 60, 00000008
        mov     eax, dword [ebp-10H]                    ; 0B81 _ 8B. 45, F0
        mov     dword [eax+64H], 32                     ; 0B84 _ C7. 40, 64, 00000020
        mov     eax, dword [ebp-10H]                    ; 0B8B _ 8B. 45, F0
        mov     dword [eax+68H], 24                     ; 0B8E _ C7. 40, 68, 00000018
        mov     eax, dword [ebp-10H]                    ; 0B95 _ 8B. 45, F0
        mov     dword [eax+6CH], 0                      ; 0B98 _ C7. 40, 6C, 00000000
        mov     eax, dword [ebp-10H]                    ; 0B9F _ 8B. 45, F0
        mov     dword [eax+70H], 16                     ; 0BA2 _ C7. 40, 70, 00000010
        mov     eax, dword [ebp-10H]                    ; 0BA9 _ 8B. 45, F0
        mov     eax, dword [eax+4CH]                    ; 0BAC _ 8B. 40, 4C
        lea     edx, [eax-8H]                           ; 0BAF _ 8D. 50, F8
        mov     eax, dword [ebp-10H]                    ; 0BB2 _ 8B. 45, F0
        mov     dword [eax+4CH], edx                    ; 0BB5 _ 89. 50, 4C
        mov     eax, dword [ebp-10H]                    ; 0BB8 _ 8B. 45, F0
        mov     eax, dword [eax+4CH]                    ; 0BBB _ 8B. 40, 4C
        add     eax, 4                                  ; 0BBE _ 83. C0, 04
        mov     edx, eax                                ; 0BC1 _ 89. C2
        mov     eax, dword [ebp-18H]                    ; 0BC3 _ 8B. 45, E8
        mov     dword [edx], eax                        ; 0BC6 _ 89. 02
        mov     eax, dword [ebp-10H]                    ; 0BC8 _ 8B. 45, F0
        mov     dword [task_console], eax               ; 0BCB _ A3, 00000254(d)
        sub     esp, 4                                  ; 0BD0 _ 83. EC, 04
        push    5                                       ; 0BD3 _ 6A, 05
        push    1                                       ; 0BD5 _ 6A, 01
        push    dword [ebp-10H]                         ; 0BD7 _ FF. 75, F0
        call    task_run                                ; 0BDA _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0BDF _ 83. C4, 10
        mov     eax, dword [shtctl]                     ; 0BE2 _ A1, 00000244(d)
        push    160                                     ; 0BE7 _ 68, 000000A0
        push    330                                     ; 0BEC _ 68, 0000014A
        push    dword [ebp-18H]                         ; 0BF1 _ FF. 75, E8
        push    eax                                     ; 0BF4 _ 50
        call    sheet_slide                             ; 0BF5 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0BFA _ 83. C4, 10
        mov     eax, dword [shtctl]                     ; 0BFD _ A1, 00000244(d)
        sub     esp, 4                                  ; 0C02 _ 83. EC, 04
        push    2                                       ; 0C05 _ 6A, 02
        push    dword [ebp-18H]                         ; 0C07 _ FF. 75, E8
        push    eax                                     ; 0C0A _ 50
        call    sheet_level_updown                      ; 0C0B _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0C10 _ 83. C4, 10
        mov     eax, dword [ebp-18H]                    ; 0C13 _ 8B. 45, E8
        leave                                           ; 0C16 _ C9
        ret                                             ; 0C17 _ C3
; launch_console End of function

console_task:; Function begin
        push    ebp                                     ; 0C18 _ 55
        mov     ebp, esp                                ; 0C19 _ 89. E5
        push    ebx                                     ; 0C1B _ 53
        sub     esp, 180                                ; 0C1C _ 81. EC, 000000B4
        mov     eax, dword [ebp+8H]                     ; 0C22 _ 8B. 45, 08
        mov     dword [ebp-0ACH], eax                   ; 0C25 _ 89. 85, FFFFFF54
; Note: Absolute memory address without relocation
        mov     eax, dword [gs:14H]                     ; 0C2B _ 65: A1, 00000014
        mov     dword [ebp-0CH], eax                    ; 0C31 _ 89. 45, F4
        xor     eax, eax                                ; 0C34 _ 31. C0
        call    task_now                                ; 0C36 _ E8, FFFFFFFC(rel)
        mov     dword [ebp-9CH], eax                    ; 0C3B _ 89. 85, FFFFFF64
        mov     dword [ebp-0A8H], 8                     ; 0C41 _ C7. 85, FFFFFF58, 00000008
        mov     dword [ebp-0A4H], 0                     ; 0C4B _ C7. 85, FFFFFF5C, 00000000
        mov     dword [ebp-0A0H], 2                     ; 0C55 _ C7. 85, FFFFFF60, 00000002
        mov     eax, dword [ebp-9CH]                    ; 0C5F _ 8B. 85, FFFFFF64
        lea     edx, [eax+10H]                          ; 0C65 _ 8D. 50, 10
        push    dword [ebp-9CH]                         ; 0C68 _ FF. B5, FFFFFF64
        lea     eax, [ebp-8CH]                          ; 0C6E _ 8D. 85, FFFFFF74
        push    eax                                     ; 0C74 _ 50
        push    128                                     ; 0C75 _ 68, 00000080
        push    edx                                     ; 0C7A _ 52
        call    fifo8_init                              ; 0C7B _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0C80 _ 83. C4, 10
        call    timer_alloc                             ; 0C83 _ E8, FFFFFFFC(rel)
        mov     dword [ebp-98H], eax                    ; 0C88 _ 89. 85, FFFFFF68
        mov     eax, dword [ebp-9CH]                    ; 0C8E _ 8B. 85, FFFFFF64
        add     eax, 16                                 ; 0C94 _ 83. C0, 10
        sub     esp, 4                                  ; 0C97 _ 83. EC, 04
        push    1                                       ; 0C9A _ 6A, 01
        push    eax                                     ; 0C9C _ 50
        push    dword [ebp-98H]                         ; 0C9D _ FF. B5, FFFFFF68
        call    timer_init                              ; 0CA3 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0CA8 _ 83. C4, 10
        sub     esp, 8                                  ; 0CAB _ 83. EC, 08
        push    50                                      ; 0CAE _ 6A, 32
        push    dword [ebp-98H]                         ; 0CB0 _ FF. B5, FFFFFF68
        call    timer_setTime                           ; 0CB6 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0CBB _ 83. C4, 10
        mov     dword [ebp-94H], 0                      ; 0CBE _ C7. 85, FFFFFF6C, 00000000
        mov     eax, dword [ebp-0A0H]                   ; 0CC8 _ 8B. 85, FFFFFF60
        lea     edx, [eax+1AH]                          ; 0CCE _ 8D. 50, 1A
        mov     eax, dword [shtctl]                     ; 0CD1 _ A1, 00000244(d)
        sub     esp, 8                                  ; 0CD6 _ 83. EC, 08
        push    ?_234                                   ; 0CD9 _ 68, 00000039(d)
        push    7                                       ; 0CDE _ 6A, 07
        push    edx                                     ; 0CE0 _ 52
        push    8                                       ; 0CE1 _ 6A, 08
        push    dword [ebp-0ACH]                        ; 0CE3 _ FF. B5, FFFFFF54
        push    eax                                     ; 0CE9 _ 50
        call    showString                              ; 0CEA _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0CEF _ 83. C4, 20
?_032:  call    io_cli                                  ; 0CF2 _ E8, FFFFFFFC(rel)
        mov     eax, dword [ebp-9CH]                    ; 0CF7 _ 8B. 85, FFFFFF64
        add     eax, 16                                 ; 0CFD _ 83. C0, 10
        sub     esp, 12                                 ; 0D00 _ 83. EC, 0C
        push    eax                                     ; 0D03 _ 50
        call    fifo8_status                            ; 0D04 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0D09 _ 83. C4, 10
        test    eax, eax                                ; 0D0C _ 85. C0
        jnz     ?_033                                   ; 0D0E _ 75, 0A
        call    io_sti                                  ; 0D10 _ E8, FFFFFFFC(rel)
        jmp     ?_041                                   ; 0D15 _ E9, 000002F4

?_033:  mov     eax, dword [ebp-9CH]                    ; 0D1A _ 8B. 85, FFFFFF64
        add     eax, 16                                 ; 0D20 _ 83. C0, 10
        sub     esp, 12                                 ; 0D23 _ 83. EC, 0C
        push    eax                                     ; 0D26 _ 50
        call    fifo8_get                               ; 0D27 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0D2C _ 83. C4, 10
        mov     dword [ebp-94H], eax                    ; 0D2F _ 89. 85, FFFFFF6C
        call    io_sti                                  ; 0D35 _ E8, FFFFFFFC(rel)
        cmp     dword [ebp-94H], 1                      ; 0D3A _ 83. BD, FFFFFF6C, 01
        jg      ?_036                                   ; 0D41 _ 0F 8F, 00000083
        cmp     dword [ebp-0A4H], 0                     ; 0D47 _ 83. BD, FFFFFF5C, 00
        js      ?_036                                   ; 0D4E _ 78, 7A
        cmp     dword [ebp-94H], 1                      ; 0D50 _ 83. BD, FFFFFF6C, 01
        jnz     ?_034                                   ; 0D57 _ 75, 29
        mov     eax, dword [ebp-9CH]                    ; 0D59 _ 8B. 85, FFFFFF64
        add     eax, 16                                 ; 0D5F _ 83. C0, 10
        sub     esp, 4                                  ; 0D62 _ 83. EC, 04
        push    0                                       ; 0D65 _ 6A, 00
        push    eax                                     ; 0D67 _ 50
        push    dword [ebp-98H]                         ; 0D68 _ FF. B5, FFFFFF68
        call    timer_init                              ; 0D6E _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0D73 _ 83. C4, 10
        mov     dword [ebp-0A4H], 7                     ; 0D76 _ C7. 85, FFFFFF5C, 00000007
        jmp     ?_035                                   ; 0D80 _ EB, 30

?_034:  cmp     dword [ebp-94H], 0                      ; 0D82 _ 83. BD, FFFFFF6C, 00
        jnz     ?_035                                   ; 0D89 _ 75, 27
        mov     eax, dword [ebp-9CH]                    ; 0D8B _ 8B. 85, FFFFFF64
        add     eax, 16                                 ; 0D91 _ 83. C0, 10
        sub     esp, 4                                  ; 0D94 _ 83. EC, 04
        push    1                                       ; 0D97 _ 6A, 01
        push    eax                                     ; 0D99 _ 50
        push    dword [ebp-98H]                         ; 0D9A _ FF. B5, FFFFFF68
        call    timer_init                              ; 0DA0 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0DA5 _ 83. C4, 10
        mov     dword [ebp-0A4H], 0                     ; 0DA8 _ C7. 85, FFFFFF5C, 00000000
?_035:  sub     esp, 8                                  ; 0DB2 _ 83. EC, 08
        push    50                                      ; 0DB5 _ 6A, 32
        push    dword [ebp-98H]                         ; 0DB7 _ FF. B5, FFFFFF68
        call    timer_setTime                           ; 0DBD _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0DC2 _ 83. C4, 10
        jmp     ?_041                                   ; 0DC5 _ E9, 00000244

?_036:  cmp     dword [ebp-94H], 87                     ; 0DCA _ 83. BD, FFFFFF6C, 57
        jnz     ?_037                                   ; 0DD1 _ 75, 3F
        mov     dword [ebp-0A4H], 7                     ; 0DD3 _ C7. 85, FFFFFF5C, 00000007
        mov     eax, dword [ebp-9CH]                    ; 0DDD _ 8B. 85, FFFFFF64
        add     eax, 16                                 ; 0DE3 _ 83. C0, 10
        sub     esp, 4                                  ; 0DE6 _ 83. EC, 04
        push    0                                       ; 0DE9 _ 6A, 00
        push    eax                                     ; 0DEB _ 50
        push    dword [ebp-98H]                         ; 0DEC _ FF. B5, FFFFFF68
        call    timer_init                              ; 0DF2 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0DF7 _ 83. C4, 10
        sub     esp, 8                                  ; 0DFA _ 83. EC, 08
        push    50                                      ; 0DFD _ 6A, 32
        push    dword [ebp-98H]                         ; 0DFF _ FF. B5, FFFFFF68
        call    timer_setTime                           ; 0E05 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0E0A _ 83. C4, 10
        jmp     ?_041                                   ; 0E0D _ E9, 000001FC

?_037:  cmp     dword [ebp-94H], 88                     ; 0E12 _ 83. BD, FFFFFF6C, 58
        jnz     ?_038                                   ; 0E19 _ 75, 49
        mov     eax, dword [shtctl]                     ; 0E1B _ A1, 00000244(d)
        sub     esp, 12                                 ; 0E20 _ 83. EC, 0C
        push    0                                       ; 0E23 _ 6A, 00
        push    dword [ebp-0A0H]                        ; 0E25 _ FF. B5, FFFFFF60
        push    dword [ebp-0A8H]                        ; 0E2B _ FF. B5, FFFFFF58
        push    dword [ebp-0ACH]                        ; 0E31 _ FF. B5, FFFFFF54
        push    eax                                     ; 0E37 _ 50
        call    set_cursor                              ; 0E38 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0E3D _ 83. C4, 20
        mov     dword [ebp-0A4H], -1                    ; 0E40 _ C7. 85, FFFFFF5C, FFFFFFFF
        mov     eax, dword [task_main]                  ; 0E4A _ A1, 00000258(d)
        sub     esp, 4                                  ; 0E4F _ 83. EC, 04
        push    0                                       ; 0E52 _ 6A, 00
        push    -1                                      ; 0E54 _ 6A, FF
        push    eax                                     ; 0E56 _ 50
        call    task_run                                ; 0E57 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0E5C _ 83. C4, 10
        jmp     ?_041                                   ; 0E5F _ E9, 000001AA

?_038:  cmp     dword [ebp-94H], 14                     ; 0E64 _ 83. BD, FFFFFF6C, 0E
        jnz     ?_039                                   ; 0E6B _ 75, 5F
        cmp     dword [ebp-0A8H], 15                    ; 0E6D _ 83. BD, FFFFFF58, 0F
        jle     ?_039                                   ; 0E74 _ 7E, 56
        mov     eax, dword [shtctl]                     ; 0E76 _ A1, 00000244(d)
        sub     esp, 12                                 ; 0E7B _ 83. EC, 0C
        push    0                                       ; 0E7E _ 6A, 00
        push    dword [ebp-0A0H]                        ; 0E80 _ FF. B5, FFFFFF60
        push    dword [ebp-0A8H]                        ; 0E86 _ FF. B5, FFFFFF58
        push    dword [ebp-0ACH]                        ; 0E8C _ FF. B5, FFFFFF54
        push    eax                                     ; 0E92 _ 50
        call    set_cursor                              ; 0E93 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0E98 _ 83. C4, 20
        sub     dword [ebp-0A8H], 8                     ; 0E9B _ 83. AD, FFFFFF58, 08
        mov     eax, dword [shtctl]                     ; 0EA2 _ A1, 00000244(d)
        sub     esp, 12                                 ; 0EA7 _ 83. EC, 0C
        push    0                                       ; 0EAA _ 6A, 00
        push    dword [ebp-0A0H]                        ; 0EAC _ FF. B5, FFFFFF60
        push    dword [ebp-0A8H]                        ; 0EB2 _ FF. B5, FFFFFF58
        push    dword [ebp-0ACH]                        ; 0EB8 _ FF. B5, FFFFFF54
        push    eax                                     ; 0EBE _ 50
        call    set_cursor                              ; 0EBF _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0EC4 _ 83. C4, 20
        jmp     ?_041                                   ; 0EC7 _ E9, 00000142

?_039:  cmp     dword [ebp-94H], 28                     ; 0ECC _ 83. BD, FFFFFF6C, 1C
        jne     ?_040                                   ; 0ED3 _ 0F 85, 0000008A
        mov     eax, dword [shtctl]                     ; 0ED9 _ A1, 00000244(d)
        sub     esp, 12                                 ; 0EDE _ 83. EC, 0C
        push    0                                       ; 0EE1 _ 6A, 00
        push    dword [ebp-0A0H]                        ; 0EE3 _ FF. B5, FFFFFF60
        push    dword [ebp-0A8H]                        ; 0EE9 _ FF. B5, FFFFFF58
        push    dword [ebp-0ACH]                        ; 0EEF _ FF. B5, FFFFFF54
        push    eax                                     ; 0EF5 _ 50
        call    set_cursor                              ; 0EF6 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0EFB _ 83. C4, 20
        add     dword [ebp-0A0H], 16                    ; 0EFE _ 83. 85, FFFFFF60, 10
        mov     eax, dword [ebp-0A0H]                   ; 0F05 _ 8B. 85, FFFFFF60
        lea     edx, [eax+1AH]                          ; 0F0B _ 8D. 50, 1A
        mov     eax, dword [shtctl]                     ; 0F0E _ A1, 00000244(d)
        sub     esp, 8                                  ; 0F13 _ 83. EC, 08
        push    ?_234                                   ; 0F16 _ 68, 00000039(d)
        push    7                                       ; 0F1B _ 6A, 07
        push    edx                                     ; 0F1D _ 52
        push    8                                       ; 0F1E _ 6A, 08
        push    dword [ebp-0ACH]                        ; 0F20 _ FF. B5, FFFFFF54
        push    eax                                     ; 0F26 _ 50
        call    showString                              ; 0F27 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0F2C _ 83. C4, 20
        mov     dword [ebp-0A8H], 8                     ; 0F2F _ C7. 85, FFFFFF58, 00000008
        mov     eax, dword [shtctl]                     ; 0F39 _ A1, 00000244(d)
        sub     esp, 12                                 ; 0F3E _ 83. EC, 0C
        push    7                                       ; 0F41 _ 6A, 07
        push    dword [ebp-0A0H]                        ; 0F43 _ FF. B5, FFFFFF60
        push    dword [ebp-0A8H]                        ; 0F49 _ FF. B5, FFFFFF58
        push    dword [ebp-0ACH]                        ; 0F4F _ FF. B5, FFFFFF54
        push    eax                                     ; 0F55 _ 50
        call    set_cursor                              ; 0F56 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0F5B _ 83. C4, 20
        jmp     ?_041                                   ; 0F5E _ E9, 000000AB

?_040:  sub     esp, 12                                 ; 0F63 _ 83. EC, 0C
        push    dword [ebp-94H]                         ; 0F66 _ FF. B5, FFFFFF6C
        call    transferScanCode                        ; 0F6C _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0F71 _ 83. C4, 10
        test    al, al                                  ; 0F74 _ 84. C0
        je      ?_041                                   ; 0F76 _ 0F 84, 00000092
        mov     eax, dword [ebp-0ACH]                   ; 0F7C _ 8B. 85, FFFFFF54
        mov     eax, dword [eax+4H]                     ; 0F82 _ 8B. 40, 04
        sub     eax, 35                                 ; 0F85 _ 83. E8, 23
        cmp     dword [ebp-0A8H], eax                   ; 0F88 _ 39. 85, FFFFFF58
        jg      ?_041                                   ; 0F8E _ 7F, 7E
        mov     eax, dword [shtctl]                     ; 0F90 _ A1, 00000244(d)
        sub     esp, 12                                 ; 0F95 _ 83. EC, 0C
        push    0                                       ; 0F98 _ 6A, 00
        push    dword [ebp-0A0H]                        ; 0F9A _ FF. B5, FFFFFF60
        push    dword [ebp-0A8H]                        ; 0FA0 _ FF. B5, FFFFFF58
        push    dword [ebp-0ACH]                        ; 0FA6 _ FF. B5, FFFFFF54
        push    eax                                     ; 0FAC _ 50
        call    set_cursor                              ; 0FAD _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0FB2 _ 83. C4, 20
        sub     esp, 12                                 ; 0FB5 _ 83. EC, 0C
        push    dword [ebp-94H]                         ; 0FB8 _ FF. B5, FFFFFF6C
        call    transferScanCode                        ; 0FBE _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0FC3 _ 83. C4, 10
        mov     byte [ebp-8EH], al                      ; 0FC6 _ 88. 85, FFFFFF72
        mov     byte [ebp-8DH], 0                       ; 0FCC _ C6. 85, FFFFFF73, 00
        mov     eax, dword [ebp-0A0H]                   ; 0FD3 _ 8B. 85, FFFFFF60
        lea     ebx, [eax+1AH]                          ; 0FD9 _ 8D. 58, 1A
        mov     eax, dword [ebp-0A8H]                   ; 0FDC _ 8B. 85, FFFFFF58
        lea     ecx, [eax+0AH]                          ; 0FE2 _ 8D. 48, 0A
        mov     eax, dword [shtctl]                     ; 0FE5 _ A1, 00000244(d)
        sub     esp, 8                                  ; 0FEA _ 83. EC, 08
        lea     edx, [ebp-8EH]                          ; 0FED _ 8D. 95, FFFFFF72
        push    edx                                     ; 0FF3 _ 52
        push    7                                       ; 0FF4 _ 6A, 07
        push    ebx                                     ; 0FF6 _ 53
        push    ecx                                     ; 0FF7 _ 51
        push    dword [ebp-0ACH]                        ; 0FF8 _ FF. B5, FFFFFF54
        push    eax                                     ; 0FFE _ 50
        call    showString                              ; 0FFF _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1004 _ 83. C4, 20
        add     dword [ebp-0A8H], 8                     ; 1007 _ 83. 85, FFFFFF58, 08
?_041:  cmp     dword [ebp-0A4H], 0                     ; 100E _ 83. BD, FFFFFF5C, 00
        js      ?_032                                   ; 1015 _ 0F 88, FFFFFCD7
        mov     eax, dword [shtctl]                     ; 101B _ A1, 00000244(d)
        sub     esp, 12                                 ; 1020 _ 83. EC, 0C
        push    dword [ebp-0A4H]                        ; 1023 _ FF. B5, FFFFFF5C
        push    dword [ebp-0A0H]                        ; 1029 _ FF. B5, FFFFFF60
        push    dword [ebp-0A8H]                        ; 102F _ FF. B5, FFFFFF58
        push    dword [ebp-0ACH]                        ; 1035 _ FF. B5, FFFFFF54
        push    eax                                     ; 103B _ 50
        call    set_cursor                              ; 103C _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1041 _ 83. C4, 20
        jmp     ?_032                                   ; 1044 _ E9, FFFFFCA9
; console_task End of function

task_b_main:; Function begin
        push    ebp                                     ; 1049 _ 55
        mov     ebp, esp                                ; 104A _ 89. E5
        sub     esp, 88                                 ; 104C _ 83. EC, 58
        mov     eax, dword [ebp+8H]                     ; 104F _ 8B. 45, 08
        mov     dword [ebp-4CH], eax                    ; 1052 _ 89. 45, B4
; Note: Absolute memory address without relocation
        mov     eax, dword [gs:14H]                     ; 1055 _ 65: A1, 00000014
        mov     dword [ebp-0CH], eax                    ; 105B _ 89. 45, F4
        xor     eax, eax                                ; 105E _ 31. C0
        mov     edx, dword [sheet_back]                 ; 1060 _ 8B. 15, 0000024C(d)
        mov     eax, dword [shtctl]                     ; 1066 _ A1, 00000244(d)
        sub     esp, 8                                  ; 106B _ 83. EC, 08
        push    ?_235                                   ; 106E _ 68, 0000003B(d)
        push    7                                       ; 1073 _ 6A, 07
        push    144                                     ; 1075 _ 68, 00000090
        push    0                                       ; 107A _ 6A, 00
        push    edx                                     ; 107C _ 52
        push    eax                                     ; 107D _ 50
        call    showString                              ; 107E _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1083 _ 83. C4, 20
        mov     dword [ebp-3CH], 0                      ; 1086 _ C7. 45, C4, 00000000
        mov     dword [ebp-38H], 0                      ; 108D _ C7. 45, C8, 00000000
        push    0                                       ; 1094 _ 6A, 00
        lea     eax, [ebp-14H]                          ; 1096 _ 8D. 45, EC
        push    eax                                     ; 1099 _ 50
        push    8                                       ; 109A _ 6A, 08
        lea     eax, [ebp-30H]                          ; 109C _ 8D. 45, D0
        push    eax                                     ; 109F _ 50
        call    fifo8_init                              ; 10A0 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 10A5 _ 83. C4, 10
        call    timer_alloc                             ; 10A8 _ E8, FFFFFFFC(rel)
        mov     dword [ebp-3CH], eax                    ; 10AD _ 89. 45, C4
        sub     esp, 4                                  ; 10B0 _ 83. EC, 04
        push    123                                     ; 10B3 _ 6A, 7B
        lea     eax, [ebp-30H]                          ; 10B5 _ 8D. 45, D0
        push    eax                                     ; 10B8 _ 50
        push    dword [ebp-3CH]                         ; 10B9 _ FF. 75, C4
        call    timer_init                              ; 10BC _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 10C1 _ 83. C4, 10
        sub     esp, 8                                  ; 10C4 _ 83. EC, 08
        push    100                                     ; 10C7 _ 6A, 64
        push    dword [ebp-3CH]                         ; 10C9 _ FF. 75, C4
        call    timer_setTime                           ; 10CC _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 10D1 _ 83. C4, 10
        mov     dword [ebp-44H], 0                      ; 10D4 _ C7. 45, BC, 00000000
        mov     dword [ebp-40H], 0                      ; 10DB _ C7. 45, C0, 00000000
?_042:  add     dword [ebp-40H], 1                      ; 10E2 _ 83. 45, C0, 01
        mov     eax, dword [ebp-4CH]                    ; 10E6 _ 8B. 45, B4
        mov     edx, dword [eax+4H]                     ; 10E9 _ 8B. 50, 04
        mov     eax, dword [ebp-4CH]                    ; 10EC _ 8B. 45, B4
        mov     eax, dword [eax]                        ; 10EF _ 8B. 00
        sub     esp, 4                                  ; 10F1 _ 83. EC, 04
        push    38                                      ; 10F4 _ 6A, 26
        push    100                                     ; 10F6 _ 6A, 64
        push    23                                      ; 10F8 _ 6A, 17
        push    8                                       ; 10FA _ 6A, 08
        push    8                                       ; 10FC _ 6A, 08
        push    edx                                     ; 10FE _ 52
        push    eax                                     ; 10FF _ 50
        call    boxfill8                                ; 1100 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1105 _ 83. C4, 20
        sub     esp, 12                                 ; 1108 _ 83. EC, 0C
        push    dword [ebp-40H]                         ; 110B _ FF. 75, C0
        call    intToHexStr                             ; 110E _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1113 _ 83. C4, 10
        mov     dword [ebp-34H], eax                    ; 1116 _ 89. 45, CC
        mov     eax, dword [shtctl]                     ; 1119 _ A1, 00000244(d)
        sub     esp, 8                                  ; 111E _ 83. EC, 08
        push    dword [ebp-34H]                         ; 1121 _ FF. 75, CC
        push    10                                      ; 1124 _ 6A, 0A
        push    23                                      ; 1126 _ 6A, 17
        push    8                                       ; 1128 _ 6A, 08
        push    dword [ebp-4CH]                         ; 112A _ FF. 75, B4
        push    eax                                     ; 112D _ 50
        call    showString                              ; 112E _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1133 _ 83. C4, 20
        call    io_cli                                  ; 1136 _ E8, FFFFFFFC(rel)
        sub     esp, 12                                 ; 113B _ 83. EC, 0C
        lea     eax, [ebp-30H]                          ; 113E _ 8D. 45, D0
        push    eax                                     ; 1141 _ 50
        call    fifo8_status                            ; 1142 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1147 _ 83. C4, 10
        test    eax, eax                                ; 114A _ 85. C0
        jnz     ?_043                                   ; 114C _ 75, 07
        call    io_sti                                  ; 114E _ E8, FFFFFFFC(rel)
        jmp     ?_042                                   ; 1153 _ EB, 8D

?_043:  sub     esp, 12                                 ; 1155 _ 83. EC, 0C
        lea     eax, [ebp-30H]                          ; 1158 _ 8D. 45, D0
        push    eax                                     ; 115B _ 50
        call    fifo8_get                               ; 115C _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1161 _ 83. C4, 10
        mov     dword [ebp-38H], eax                    ; 1164 _ 89. 45, C8
        call    io_sti                                  ; 1167 _ E8, FFFFFFFC(rel)
        cmp     dword [ebp-38H], 123                    ; 116C _ 83. 7D, C8, 7B
        jne     ?_042                                   ; 1170 _ 0F 85, FFFFFF6C
        mov     edx, dword [sheet_back]                 ; 1176 _ 8B. 15, 0000024C(d)
        mov     eax, dword [shtctl]                     ; 117C _ A1, 00000244(d)
        sub     esp, 8                                  ; 1181 _ 83. EC, 08
        push    ?_236                                   ; 1184 _ 68, 00000048(d)
        push    7                                       ; 1189 _ 6A, 07
        push    176                                     ; 118B _ 68, 000000B0
        push    dword [ebp-44H]                         ; 1190 _ FF. 75, BC
        push    edx                                     ; 1193 _ 52
        push    eax                                     ; 1194 _ 50
        call    showString                              ; 1195 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 119A _ 83. C4, 20
        sub     esp, 8                                  ; 119D _ 83. EC, 08
        push    100                                     ; 11A0 _ 6A, 64
        push    dword [ebp-3CH]                         ; 11A2 _ FF. 75, C4
        call    timer_setTime                           ; 11A5 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 11AA _ 83. C4, 10
        add     dword [ebp-44H], 8                      ; 11AD _ 83. 45, BC, 08
        jmp     ?_042                                   ; 11B1 _ E9, FFFFFF2C
; task_b_main End of function

initBootInfo:; Function begin
        push    ebp                                     ; 11B6 _ 55
        mov     ebp, esp                                ; 11B7 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 11B9 _ 8B. 45, 08
        mov     dword [eax], -536870912                 ; 11BC _ C7. 00, E0000000
        mov     eax, dword [ebp+8H]                     ; 11C2 _ 8B. 45, 08
; Note: Length-changing prefix causes delay on Intel processors
        mov     word [eax+4H], 640                      ; 11C5 _ 66: C7. 40, 04, 0280
        mov     eax, dword [ebp+8H]                     ; 11CB _ 8B. 45, 08
; Note: Length-changing prefix causes delay on Intel processors
        mov     word [eax+6H], 480                      ; 11CE _ 66: C7. 40, 06, 01E0
        nop                                             ; 11D4 _ 90
        pop     ebp                                     ; 11D5 _ 5D
        ret                                             ; 11D6 _ C3
; initBootInfo End of function

showString:; Function begin
        push    ebp                                     ; 11D7 _ 55
        mov     ebp, esp                                ; 11D8 _ 89. E5
        push    ebx                                     ; 11DA _ 53
        sub     esp, 36                                 ; 11DB _ 83. EC, 24
        mov     eax, dword [ebp+18H]                    ; 11DE _ 8B. 45, 18
        mov     byte [ebp-1CH], al                      ; 11E1 _ 88. 45, E4
        mov     eax, dword [ebp+10H]                    ; 11E4 _ 8B. 45, 10
        mov     dword [ebp-0CH], eax                    ; 11E7 _ 89. 45, F4
        jmp     ?_045                                   ; 11EA _ EB, 3E

?_044:  mov     eax, dword [ebp+1CH]                    ; 11EC _ 8B. 45, 1C
        movzx   eax, byte [eax]                         ; 11EF _ 0F B6. 00
        movzx   eax, al                                 ; 11F2 _ 0F B6. C0
        shl     eax, 4                                  ; 11F5 _ C1. E0, 04
        lea     ebx, [systemFont+eax]                   ; 11F8 _ 8D. 98, 00000000(d)
        movsx   ecx, byte [ebp-1CH]                     ; 11FE _ 0F BE. 4D, E4
        mov     eax, dword [ebp+0CH]                    ; 1202 _ 8B. 45, 0C
        mov     edx, dword [eax+4H]                     ; 1205 _ 8B. 50, 04
        mov     eax, dword [ebp+0CH]                    ; 1208 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 120B _ 8B. 00
        sub     esp, 8                                  ; 120D _ 83. EC, 08
        push    ebx                                     ; 1210 _ 53
        push    ecx                                     ; 1211 _ 51
        push    dword [ebp+14H]                         ; 1212 _ FF. 75, 14
        push    dword [ebp+10H]                         ; 1215 _ FF. 75, 10
        push    edx                                     ; 1218 _ 52
        push    eax                                     ; 1219 _ 50
        call    showFont8                               ; 121A _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 121F _ 83. C4, 20
        add     dword [ebp+10H], 8                      ; 1222 _ 83. 45, 10, 08
        add     dword [ebp+1CH], 1                      ; 1226 _ 83. 45, 1C, 01
?_045:  mov     eax, dword [ebp+1CH]                    ; 122A _ 8B. 45, 1C
        movzx   eax, byte [eax]                         ; 122D _ 0F B6. 00
        test    al, al                                  ; 1230 _ 84. C0
        jnz     ?_044                                   ; 1232 _ 75, B8
        mov     eax, dword [ebp+14H]                    ; 1234 _ 8B. 45, 14
        add     eax, 16                                 ; 1237 _ 83. C0, 10
        sub     esp, 8                                  ; 123A _ 83. EC, 08
        push    eax                                     ; 123D _ 50
        push    dword [ebp+10H]                         ; 123E _ FF. 75, 10
        push    dword [ebp+14H]                         ; 1241 _ FF. 75, 14
        push    dword [ebp-0CH]                         ; 1244 _ FF. 75, F4
        push    dword [ebp+0CH]                         ; 1247 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 124A _ FF. 75, 08
        call    sheet_refresh                           ; 124D _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1252 _ 83. C4, 20
        nop                                             ; 1255 _ 90
        mov     ebx, dword [ebp-4H]                     ; 1256 _ 8B. 5D, FC
        leave                                           ; 1259 _ C9
        ret                                             ; 125A _ C3
; showString End of function

init_screen8:; Function begin
        push    ebp                                     ; 125B _ 55
        mov     ebp, esp                                ; 125C _ 89. E5
        push    ebx                                     ; 125E _ 53
        sub     esp, 4                                  ; 125F _ 83. EC, 04
        mov     eax, dword [ebp+10H]                    ; 1262 _ 8B. 45, 10
        lea     edx, [eax-19H]                          ; 1265 _ 8D. 50, E7
        mov     eax, dword [ebp+0CH]                    ; 1268 _ 8B. 45, 0C
        sub     eax, 1                                  ; 126B _ 83. E8, 01
        sub     esp, 4                                  ; 126E _ 83. EC, 04
        push    edx                                     ; 1271 _ 52
        push    eax                                     ; 1272 _ 50
        push    0                                       ; 1273 _ 6A, 00
        push    0                                       ; 1275 _ 6A, 00
        push    14                                      ; 1277 _ 6A, 0E
        push    dword [ebp+0CH]                         ; 1279 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 127C _ FF. 75, 08
        call    boxfill8                                ; 127F _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1284 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 1287 _ 8B. 45, 10
        lea     ecx, [eax-18H]                          ; 128A _ 8D. 48, E8
        mov     eax, dword [ebp+0CH]                    ; 128D _ 8B. 45, 0C
        lea     edx, [eax-1H]                           ; 1290 _ 8D. 50, FF
        mov     eax, dword [ebp+10H]                    ; 1293 _ 8B. 45, 10
        sub     eax, 24                                 ; 1296 _ 83. E8, 18
        sub     esp, 4                                  ; 1299 _ 83. EC, 04
        push    ecx                                     ; 129C _ 51
        push    edx                                     ; 129D _ 52
        push    eax                                     ; 129E _ 50
        push    0                                       ; 129F _ 6A, 00
        push    8                                       ; 12A1 _ 6A, 08
        push    dword [ebp+0CH]                         ; 12A3 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 12A6 _ FF. 75, 08
        call    boxfill8                                ; 12A9 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 12AE _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 12B1 _ 8B. 45, 10
        lea     ecx, [eax-17H]                          ; 12B4 _ 8D. 48, E9
        mov     eax, dword [ebp+0CH]                    ; 12B7 _ 8B. 45, 0C
        lea     edx, [eax-1H]                           ; 12BA _ 8D. 50, FF
        mov     eax, dword [ebp+10H]                    ; 12BD _ 8B. 45, 10
        sub     eax, 23                                 ; 12C0 _ 83. E8, 17
        sub     esp, 4                                  ; 12C3 _ 83. EC, 04
        push    ecx                                     ; 12C6 _ 51
        push    edx                                     ; 12C7 _ 52
        push    eax                                     ; 12C8 _ 50
        push    0                                       ; 12C9 _ 6A, 00
        push    7                                       ; 12CB _ 6A, 07
        push    dword [ebp+0CH]                         ; 12CD _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 12D0 _ FF. 75, 08
        call    boxfill8                                ; 12D3 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 12D8 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 12DB _ 8B. 45, 10
        lea     ecx, [eax-1H]                           ; 12DE _ 8D. 48, FF
        mov     eax, dword [ebp+0CH]                    ; 12E1 _ 8B. 45, 0C
        lea     edx, [eax-1H]                           ; 12E4 _ 8D. 50, FF
        mov     eax, dword [ebp+10H]                    ; 12E7 _ 8B. 45, 10
        sub     eax, 22                                 ; 12EA _ 83. E8, 16
        sub     esp, 4                                  ; 12ED _ 83. EC, 04
        push    ecx                                     ; 12F0 _ 51
        push    edx                                     ; 12F1 _ 52
        push    eax                                     ; 12F2 _ 50
        push    0                                       ; 12F3 _ 6A, 00
        push    8                                       ; 12F5 _ 6A, 08
        push    dword [ebp+0CH]                         ; 12F7 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 12FA _ FF. 75, 08
        call    boxfill8                                ; 12FD _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1302 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 1305 _ 8B. 45, 10
        lea     edx, [eax-14H]                          ; 1308 _ 8D. 50, EC
        mov     eax, dword [ebp+10H]                    ; 130B _ 8B. 45, 10
        sub     eax, 20                                 ; 130E _ 83. E8, 14
        sub     esp, 4                                  ; 1311 _ 83. EC, 04
        push    edx                                     ; 1314 _ 52
        push    51                                      ; 1315 _ 6A, 33
        push    eax                                     ; 1317 _ 50
        push    10                                      ; 1318 _ 6A, 0A
        push    7                                       ; 131A _ 6A, 07
        push    dword [ebp+0CH]                         ; 131C _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 131F _ FF. 75, 08
        call    boxfill8                                ; 1322 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1327 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 132A _ 8B. 45, 10
        lea     edx, [eax-4H]                           ; 132D _ 8D. 50, FC
        mov     eax, dword [ebp+10H]                    ; 1330 _ 8B. 45, 10
        sub     eax, 20                                 ; 1333 _ 83. E8, 14
        sub     esp, 4                                  ; 1336 _ 83. EC, 04
        push    edx                                     ; 1339 _ 52
        push    9                                       ; 133A _ 6A, 09
        push    eax                                     ; 133C _ 50
        push    9                                       ; 133D _ 6A, 09
        push    7                                       ; 133F _ 6A, 07
        push    dword [ebp+0CH]                         ; 1341 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1344 _ FF. 75, 08
        call    boxfill8                                ; 1347 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 134C _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 134F _ 8B. 45, 10
        lea     edx, [eax-4H]                           ; 1352 _ 8D. 50, FC
        mov     eax, dword [ebp+10H]                    ; 1355 _ 8B. 45, 10
        sub     eax, 4                                  ; 1358 _ 83. E8, 04
        sub     esp, 4                                  ; 135B _ 83. EC, 04
        push    edx                                     ; 135E _ 52
        push    50                                      ; 135F _ 6A, 32
        push    eax                                     ; 1361 _ 50
        push    10                                      ; 1362 _ 6A, 0A
        push    15                                      ; 1364 _ 6A, 0F
        push    dword [ebp+0CH]                         ; 1366 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1369 _ FF. 75, 08
        call    boxfill8                                ; 136C _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1371 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 1374 _ 8B. 45, 10
        lea     edx, [eax-5H]                           ; 1377 _ 8D. 50, FB
        mov     eax, dword [ebp+10H]                    ; 137A _ 8B. 45, 10
        sub     eax, 19                                 ; 137D _ 83. E8, 13
        sub     esp, 4                                  ; 1380 _ 83. EC, 04
        push    edx                                     ; 1383 _ 52
        push    50                                      ; 1384 _ 6A, 32
        push    eax                                     ; 1386 _ 50
        push    50                                      ; 1387 _ 6A, 32
        push    15                                      ; 1389 _ 6A, 0F
        push    dword [ebp+0CH]                         ; 138B _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 138E _ FF. 75, 08
        call    boxfill8                                ; 1391 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1396 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 1399 _ 8B. 45, 10
        lea     edx, [eax-3H]                           ; 139C _ 8D. 50, FD
        mov     eax, dword [ebp+10H]                    ; 139F _ 8B. 45, 10
        sub     eax, 3                                  ; 13A2 _ 83. E8, 03
        sub     esp, 4                                  ; 13A5 _ 83. EC, 04
        push    edx                                     ; 13A8 _ 52
        push    50                                      ; 13A9 _ 6A, 32
        push    eax                                     ; 13AB _ 50
        push    10                                      ; 13AC _ 6A, 0A
        push    0                                       ; 13AE _ 6A, 00
        push    dword [ebp+0CH]                         ; 13B0 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 13B3 _ FF. 75, 08
        call    boxfill8                                ; 13B6 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 13BB _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 13BE _ 8B. 45, 10
        lea     edx, [eax-3H]                           ; 13C1 _ 8D. 50, FD
        mov     eax, dword [ebp+10H]                    ; 13C4 _ 8B. 45, 10
        sub     eax, 20                                 ; 13C7 _ 83. E8, 14
        sub     esp, 4                                  ; 13CA _ 83. EC, 04
        push    edx                                     ; 13CD _ 52
        push    51                                      ; 13CE _ 6A, 33
        push    eax                                     ; 13D0 _ 50
        push    51                                      ; 13D1 _ 6A, 33
        push    0                                       ; 13D3 _ 6A, 00
        push    dword [ebp+0CH]                         ; 13D5 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 13D8 _ FF. 75, 08
        call    boxfill8                                ; 13DB _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 13E0 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 13E3 _ 8B. 45, 10
        lea     ebx, [eax-14H]                          ; 13E6 _ 8D. 58, EC
        mov     eax, dword [ebp+0CH]                    ; 13E9 _ 8B. 45, 0C
        lea     ecx, [eax-4H]                           ; 13EC _ 8D. 48, FC
        mov     eax, dword [ebp+10H]                    ; 13EF _ 8B. 45, 10
        lea     edx, [eax-14H]                          ; 13F2 _ 8D. 50, EC
        mov     eax, dword [ebp+0CH]                    ; 13F5 _ 8B. 45, 0C
        sub     eax, 47                                 ; 13F8 _ 83. E8, 2F
        sub     esp, 4                                  ; 13FB _ 83. EC, 04
        push    ebx                                     ; 13FE _ 53
        push    ecx                                     ; 13FF _ 51
        push    edx                                     ; 1400 _ 52
        push    eax                                     ; 1401 _ 50
        push    15                                      ; 1402 _ 6A, 0F
        push    dword [ebp+0CH]                         ; 1404 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1407 _ FF. 75, 08
        call    boxfill8                                ; 140A _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 140F _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 1412 _ 8B. 45, 10
        lea     ebx, [eax-3H]                           ; 1415 _ 8D. 58, FD
        mov     eax, dword [ebp+0CH]                    ; 1418 _ 8B. 45, 0C
        lea     ecx, [eax-2FH]                          ; 141B _ 8D. 48, D1
        mov     eax, dword [ebp+10H]                    ; 141E _ 8B. 45, 10
        lea     edx, [eax-14H]                          ; 1421 _ 8D. 50, EC
        mov     eax, dword [ebp+0CH]                    ; 1424 _ 8B. 45, 0C
        sub     eax, 47                                 ; 1427 _ 83. E8, 2F
        sub     esp, 4                                  ; 142A _ 83. EC, 04
        push    ebx                                     ; 142D _ 53
        push    ecx                                     ; 142E _ 51
        push    edx                                     ; 142F _ 52
        push    eax                                     ; 1430 _ 50
        push    15                                      ; 1431 _ 6A, 0F
        push    dword [ebp+0CH]                         ; 1433 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1436 _ FF. 75, 08
        call    boxfill8                                ; 1439 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 143E _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 1441 _ 8B. 45, 10
        lea     ebx, [eax-3H]                           ; 1444 _ 8D. 58, FD
        mov     eax, dword [ebp+0CH]                    ; 1447 _ 8B. 45, 0C
        lea     ecx, [eax-4H]                           ; 144A _ 8D. 48, FC
        mov     eax, dword [ebp+10H]                    ; 144D _ 8B. 45, 10
        lea     edx, [eax-3H]                           ; 1450 _ 8D. 50, FD
        mov     eax, dword [ebp+0CH]                    ; 1453 _ 8B. 45, 0C
        sub     eax, 47                                 ; 1456 _ 83. E8, 2F
        sub     esp, 4                                  ; 1459 _ 83. EC, 04
        push    ebx                                     ; 145C _ 53
        push    ecx                                     ; 145D _ 51
        push    edx                                     ; 145E _ 52
        push    eax                                     ; 145F _ 50
        push    7                                       ; 1460 _ 6A, 07
        push    dword [ebp+0CH]                         ; 1462 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1465 _ FF. 75, 08
        call    boxfill8                                ; 1468 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 146D _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 1470 _ 8B. 45, 10
        lea     ebx, [eax-3H]                           ; 1473 _ 8D. 58, FD
        mov     eax, dword [ebp+0CH]                    ; 1476 _ 8B. 45, 0C
        lea     ecx, [eax-3H]                           ; 1479 _ 8D. 48, FD
        mov     eax, dword [ebp+10H]                    ; 147C _ 8B. 45, 10
        lea     edx, [eax-14H]                          ; 147F _ 8D. 50, EC
        mov     eax, dword [ebp+0CH]                    ; 1482 _ 8B. 45, 0C
        sub     eax, 3                                  ; 1485 _ 83. E8, 03
        sub     esp, 4                                  ; 1488 _ 83. EC, 04
        push    ebx                                     ; 148B _ 53
        push    ecx                                     ; 148C _ 51
        push    edx                                     ; 148D _ 52
        push    eax                                     ; 148E _ 50
        push    7                                       ; 148F _ 6A, 07
        push    dword [ebp+0CH]                         ; 1491 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1494 _ FF. 75, 08
        call    boxfill8                                ; 1497 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 149C _ 83. C4, 20
        nop                                             ; 149F _ 90
        mov     ebx, dword [ebp-4H]                     ; 14A0 _ 8B. 5D, FC
        leave                                           ; 14A3 _ C9
        ret                                             ; 14A4 _ C3
; init_screen8 End of function

init_palette:; Function begin
        push    ebp                                     ; 14A5 _ 55
        mov     ebp, esp                                ; 14A6 _ 89. E5
        sub     esp, 24                                 ; 14A8 _ 83. EC, 18
        mov     eax, dword [bootInfo]                   ; 14AB _ A1, 00000008(d)
        mov     dword [ebp-14H], eax                    ; 14B0 _ 89. 45, EC
        movzx   eax, word [?_245]                       ; 14B3 _ 0F B7. 05, 0000000C(d)
        cwde                                            ; 14BA _ 98
        mov     dword [ebp-10H], eax                    ; 14BB _ 89. 45, F0
        movzx   eax, word [?_246]                       ; 14BE _ 0F B7. 05, 0000000E(d)
        cwde                                            ; 14C5 _ 98
        mov     dword [ebp-0CH], eax                    ; 14C6 _ 89. 45, F4
        sub     esp, 4                                  ; 14C9 _ 83. EC, 04
        push    table_rgb.2381                          ; 14CC _ 68, 00000120(d)
        push    15                                      ; 14D1 _ 6A, 0F
        push    0                                       ; 14D3 _ 6A, 00
        call    set_palette                             ; 14D5 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 14DA _ 83. C4, 10
        nop                                             ; 14DD _ 90
        leave                                           ; 14DE _ C9
        ret                                             ; 14DF _ C3
; init_palette End of function

set_palette:; Function begin
        push    ebp                                     ; 14E0 _ 55
        mov     ebp, esp                                ; 14E1 _ 89. E5
        sub     esp, 24                                 ; 14E3 _ 83. EC, 18
        call    io_load_eflags                          ; 14E6 _ E8, FFFFFFFC(rel)
        mov     dword [ebp-0CH], eax                    ; 14EB _ 89. 45, F4
        call    io_cli                                  ; 14EE _ E8, FFFFFFFC(rel)
        sub     esp, 8                                  ; 14F3 _ 83. EC, 08
        push    dword [ebp+8H]                          ; 14F6 _ FF. 75, 08
        push    968                                     ; 14F9 _ 68, 000003C8
        call    io_out8                                 ; 14FE _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1503 _ 83. C4, 10
        mov     eax, dword [ebp+8H]                     ; 1506 _ 8B. 45, 08
        mov     dword [ebp-10H], eax                    ; 1509 _ 89. 45, F0
        jmp     ?_047                                   ; 150C _ EB, 65

?_046:  mov     eax, dword [ebp+10H]                    ; 150E _ 8B. 45, 10
        movzx   eax, byte [eax]                         ; 1511 _ 0F B6. 00
        shr     al, 2                                   ; 1514 _ C0. E8, 02
        movzx   eax, al                                 ; 1517 _ 0F B6. C0
        sub     esp, 8                                  ; 151A _ 83. EC, 08
        push    eax                                     ; 151D _ 50
        push    969                                     ; 151E _ 68, 000003C9
        call    io_out8                                 ; 1523 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1528 _ 83. C4, 10
        mov     eax, dword [ebp+10H]                    ; 152B _ 8B. 45, 10
        add     eax, 1                                  ; 152E _ 83. C0, 01
        movzx   eax, byte [eax]                         ; 1531 _ 0F B6. 00
        shr     al, 2                                   ; 1534 _ C0. E8, 02
        movzx   eax, al                                 ; 1537 _ 0F B6. C0
        sub     esp, 8                                  ; 153A _ 83. EC, 08
        push    eax                                     ; 153D _ 50
        push    969                                     ; 153E _ 68, 000003C9
        call    io_out8                                 ; 1543 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1548 _ 83. C4, 10
        mov     eax, dword [ebp+10H]                    ; 154B _ 8B. 45, 10
        add     eax, 2                                  ; 154E _ 83. C0, 02
        movzx   eax, byte [eax]                         ; 1551 _ 0F B6. 00
        shr     al, 2                                   ; 1554 _ C0. E8, 02
        movzx   eax, al                                 ; 1557 _ 0F B6. C0
        sub     esp, 8                                  ; 155A _ 83. EC, 08
        push    eax                                     ; 155D _ 50
        push    969                                     ; 155E _ 68, 000003C9
        call    io_out8                                 ; 1563 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1568 _ 83. C4, 10
        add     dword [ebp+10H], 3                      ; 156B _ 83. 45, 10, 03
        add     dword [ebp-10H], 1                      ; 156F _ 83. 45, F0, 01
?_047:  mov     eax, dword [ebp-10H]                    ; 1573 _ 8B. 45, F0
        cmp     eax, dword [ebp+0CH]                    ; 1576 _ 3B. 45, 0C
        jle     ?_046                                   ; 1579 _ 7E, 93
        sub     esp, 12                                 ; 157B _ 83. EC, 0C
        push    dword [ebp-0CH]                         ; 157E _ FF. 75, F4
        call    io_store_eflags                         ; 1581 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1586 _ 83. C4, 10
        nop                                             ; 1589 _ 90
        leave                                           ; 158A _ C9
        ret                                             ; 158B _ C3
; set_palette End of function

boxfill8:; Function begin
        push    ebp                                     ; 158C _ 55
        mov     ebp, esp                                ; 158D _ 89. E5
        sub     esp, 20                                 ; 158F _ 83. EC, 14
        mov     eax, dword [ebp+10H]                    ; 1592 _ 8B. 45, 10
        mov     byte [ebp-14H], al                      ; 1595 _ 88. 45, EC
        mov     eax, dword [ebp+18H]                    ; 1598 _ 8B. 45, 18
        mov     dword [ebp-4H], eax                     ; 159B _ 89. 45, FC
        jmp     ?_051                                   ; 159E _ EB, 33

?_048:  mov     eax, dword [ebp+14H]                    ; 15A0 _ 8B. 45, 14
        mov     dword [ebp-8H], eax                     ; 15A3 _ 89. 45, F8
        jmp     ?_050                                   ; 15A6 _ EB, 1F

?_049:  mov     eax, dword [ebp-4H]                     ; 15A8 _ 8B. 45, FC
        imul    eax, dword [ebp+0CH]                    ; 15AB _ 0F AF. 45, 0C
        mov     edx, eax                                ; 15AF _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 15B1 _ 8B. 45, F8
        add     eax, edx                                ; 15B4 _ 01. D0
        mov     edx, eax                                ; 15B6 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 15B8 _ 8B. 45, 08
        add     edx, eax                                ; 15BB _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 15BD _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 15C1 _ 88. 02
        add     dword [ebp-8H], 1                       ; 15C3 _ 83. 45, F8, 01
?_050:  mov     eax, dword [ebp-8H]                     ; 15C7 _ 8B. 45, F8
        cmp     eax, dword [ebp+1CH]                    ; 15CA _ 3B. 45, 1C
        jle     ?_049                                   ; 15CD _ 7E, D9
        add     dword [ebp-4H], 1                       ; 15CF _ 83. 45, FC, 01
?_051:  mov     eax, dword [ebp-4H]                     ; 15D3 _ 8B. 45, FC
        cmp     eax, dword [ebp+20H]                    ; 15D6 _ 3B. 45, 20
        jle     ?_048                                   ; 15D9 _ 7E, C5
        nop                                             ; 15DB _ 90
        leave                                           ; 15DC _ C9
        ret                                             ; 15DD _ C3
; boxfill8 End of function

make_textbox8:; Function begin
        push    ebp                                     ; 15DE _ 55
        mov     ebp, esp                                ; 15DF _ 89. E5
        push    edi                                     ; 15E1 _ 57
        push    esi                                     ; 15E2 _ 56
        push    ebx                                     ; 15E3 _ 53
        sub     esp, 16                                 ; 15E4 _ 83. EC, 10
        mov     edx, dword [ebp+0CH]                    ; 15E7 _ 8B. 55, 0C
        mov     eax, dword [ebp+14H]                    ; 15EA _ 8B. 45, 14
        add     eax, edx                                ; 15ED _ 01. D0
        mov     dword [ebp-14H], eax                    ; 15EF _ 89. 45, EC
        mov     edx, dword [ebp+10H]                    ; 15F2 _ 8B. 55, 10
        mov     eax, dword [ebp+18H]                    ; 15F5 _ 8B. 45, 18
        add     eax, edx                                ; 15F8 _ 01. D0
        mov     dword [ebp-10H], eax                    ; 15FA _ 89. 45, F0
        mov     eax, dword [ebp+10H]                    ; 15FD _ 8B. 45, 10
        lea     edi, [eax-3H]                           ; 1600 _ 8D. 78, FD
        mov     eax, dword [ebp-14H]                    ; 1603 _ 8B. 45, EC
        lea     esi, [eax+1H]                           ; 1606 _ 8D. 70, 01
        mov     eax, dword [ebp+10H]                    ; 1609 _ 8B. 45, 10
        lea     ebx, [eax-3H]                           ; 160C _ 8D. 58, FD
        mov     eax, dword [ebp+0CH]                    ; 160F _ 8B. 45, 0C
        lea     ecx, [eax-2H]                           ; 1612 _ 8D. 48, FE
        mov     eax, dword [ebp+8H]                     ; 1615 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 1618 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 161B _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 161E _ 8B. 00
        push    edi                                     ; 1620 _ 57
        push    esi                                     ; 1621 _ 56
        push    ebx                                     ; 1622 _ 53
        push    ecx                                     ; 1623 _ 51
        push    15                                      ; 1624 _ 6A, 0F
        push    edx                                     ; 1626 _ 52
        push    eax                                     ; 1627 _ 50
        call    boxfill8                                ; 1628 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 162D _ 83. C4, 1C
        mov     eax, dword [ebp-10H]                    ; 1630 _ 8B. 45, F0
        lea     edi, [eax+1H]                           ; 1633 _ 8D. 78, 01
        mov     eax, dword [ebp+0CH]                    ; 1636 _ 8B. 45, 0C
        lea     esi, [eax-3H]                           ; 1639 _ 8D. 70, FD
        mov     eax, dword [ebp+10H]                    ; 163C _ 8B. 45, 10
        lea     ebx, [eax-3H]                           ; 163F _ 8D. 58, FD
        mov     eax, dword [ebp+0CH]                    ; 1642 _ 8B. 45, 0C
        lea     ecx, [eax-3H]                           ; 1645 _ 8D. 48, FD
        mov     eax, dword [ebp+8H]                     ; 1648 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 164B _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 164E _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 1651 _ 8B. 00
        push    edi                                     ; 1653 _ 57
        push    esi                                     ; 1654 _ 56
        push    ebx                                     ; 1655 _ 53
        push    ecx                                     ; 1656 _ 51
        push    15                                      ; 1657 _ 6A, 0F
        push    edx                                     ; 1659 _ 52
        push    eax                                     ; 165A _ 50
        call    boxfill8                                ; 165B _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 1660 _ 83. C4, 1C
        mov     eax, dword [ebp-10H]                    ; 1663 _ 8B. 45, F0
        lea     edi, [eax+2H]                           ; 1666 _ 8D. 78, 02
        mov     eax, dword [ebp-14H]                    ; 1669 _ 8B. 45, EC
        lea     esi, [eax+1H]                           ; 166C _ 8D. 70, 01
        mov     eax, dword [ebp-10H]                    ; 166F _ 8B. 45, F0
        lea     ebx, [eax+2H]                           ; 1672 _ 8D. 58, 02
        mov     eax, dword [ebp+0CH]                    ; 1675 _ 8B. 45, 0C
        lea     ecx, [eax-3H]                           ; 1678 _ 8D. 48, FD
        mov     eax, dword [ebp+8H]                     ; 167B _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 167E _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 1681 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 1684 _ 8B. 00
        push    edi                                     ; 1686 _ 57
        push    esi                                     ; 1687 _ 56
        push    ebx                                     ; 1688 _ 53
        push    ecx                                     ; 1689 _ 51
        push    7                                       ; 168A _ 6A, 07
        push    edx                                     ; 168C _ 52
        push    eax                                     ; 168D _ 50
        call    boxfill8                                ; 168E _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 1693 _ 83. C4, 1C
        mov     eax, dword [ebp-10H]                    ; 1696 _ 8B. 45, F0
        lea     edi, [eax+2H]                           ; 1699 _ 8D. 78, 02
        mov     eax, dword [ebp-14H]                    ; 169C _ 8B. 45, EC
        lea     esi, [eax+2H]                           ; 169F _ 8D. 70, 02
        mov     eax, dword [ebp+10H]                    ; 16A2 _ 8B. 45, 10
        lea     ebx, [eax-3H]                           ; 16A5 _ 8D. 58, FD
        mov     eax, dword [ebp-14H]                    ; 16A8 _ 8B. 45, EC
        lea     ecx, [eax+2H]                           ; 16AB _ 8D. 48, 02
        mov     eax, dword [ebp+8H]                     ; 16AE _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 16B1 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 16B4 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 16B7 _ 8B. 00
        push    edi                                     ; 16B9 _ 57
        push    esi                                     ; 16BA _ 56
        push    ebx                                     ; 16BB _ 53
        push    ecx                                     ; 16BC _ 51
        push    7                                       ; 16BD _ 6A, 07
        push    edx                                     ; 16BF _ 52
        push    eax                                     ; 16C0 _ 50
        call    boxfill8                                ; 16C1 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 16C6 _ 83. C4, 1C
        mov     eax, dword [ebp+10H]                    ; 16C9 _ 8B. 45, 10
        lea     esi, [eax-2H]                           ; 16CC _ 8D. 70, FE
        mov     eax, dword [ebp+10H]                    ; 16CF _ 8B. 45, 10
        lea     ebx, [eax-2H]                           ; 16D2 _ 8D. 58, FE
        mov     eax, dword [ebp+0CH]                    ; 16D5 _ 8B. 45, 0C
        lea     ecx, [eax-1H]                           ; 16D8 _ 8D. 48, FF
        mov     eax, dword [ebp+8H]                     ; 16DB _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 16DE _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 16E1 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 16E4 _ 8B. 00
        push    esi                                     ; 16E6 _ 56
        push    dword [ebp-14H]                         ; 16E7 _ FF. 75, EC
        push    ebx                                     ; 16EA _ 53
        push    ecx                                     ; 16EB _ 51
        push    0                                       ; 16EC _ 6A, 00
        push    edx                                     ; 16EE _ 52
        push    eax                                     ; 16EF _ 50
        call    boxfill8                                ; 16F0 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 16F5 _ 83. C4, 1C
        mov     eax, dword [ebp+0CH]                    ; 16F8 _ 8B. 45, 0C
        lea     esi, [eax-2H]                           ; 16FB _ 8D. 70, FE
        mov     eax, dword [ebp+10H]                    ; 16FE _ 8B. 45, 10
        lea     ebx, [eax-2H]                           ; 1701 _ 8D. 58, FE
        mov     eax, dword [ebp+0CH]                    ; 1704 _ 8B. 45, 0C
        lea     ecx, [eax-2H]                           ; 1707 _ 8D. 48, FE
        mov     eax, dword [ebp+8H]                     ; 170A _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 170D _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 1710 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 1713 _ 8B. 00
        push    dword [ebp-10H]                         ; 1715 _ FF. 75, F0
        push    esi                                     ; 1718 _ 56
        push    ebx                                     ; 1719 _ 53
        push    ecx                                     ; 171A _ 51
        push    0                                       ; 171B _ 6A, 00
        push    edx                                     ; 171D _ 52
        push    eax                                     ; 171E _ 50
        call    boxfill8                                ; 171F _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 1724 _ 83. C4, 1C
        mov     eax, dword [ebp-10H]                    ; 1727 _ 8B. 45, F0
        lea     esi, [eax+1H]                           ; 172A _ 8D. 70, 01
        mov     eax, dword [ebp-10H]                    ; 172D _ 8B. 45, F0
        lea     ebx, [eax+1H]                           ; 1730 _ 8D. 58, 01
        mov     eax, dword [ebp+0CH]                    ; 1733 _ 8B. 45, 0C
        lea     ecx, [eax-2H]                           ; 1736 _ 8D. 48, FE
        mov     eax, dword [ebp+8H]                     ; 1739 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 173C _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 173F _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 1742 _ 8B. 00
        push    esi                                     ; 1744 _ 56
        push    dword [ebp-14H]                         ; 1745 _ FF. 75, EC
        push    ebx                                     ; 1748 _ 53
        push    ecx                                     ; 1749 _ 51
        push    8                                       ; 174A _ 6A, 08
        push    edx                                     ; 174C _ 52
        push    eax                                     ; 174D _ 50
        call    boxfill8                                ; 174E _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 1753 _ 83. C4, 1C
        mov     eax, dword [ebp-10H]                    ; 1756 _ 8B. 45, F0
        lea     edi, [eax+1H]                           ; 1759 _ 8D. 78, 01
        mov     eax, dword [ebp-14H]                    ; 175C _ 8B. 45, EC
        lea     esi, [eax+1H]                           ; 175F _ 8D. 70, 01
        mov     eax, dword [ebp+10H]                    ; 1762 _ 8B. 45, 10
        lea     ebx, [eax-2H]                           ; 1765 _ 8D. 58, FE
        mov     eax, dword [ebp-14H]                    ; 1768 _ 8B. 45, EC
        lea     ecx, [eax+1H]                           ; 176B _ 8D. 48, 01
        mov     eax, dword [ebp+8H]                     ; 176E _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 1771 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 1774 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 1777 _ 8B. 00
        push    edi                                     ; 1779 _ 57
        push    esi                                     ; 177A _ 56
        push    ebx                                     ; 177B _ 53
        push    ecx                                     ; 177C _ 51
        push    8                                       ; 177D _ 6A, 08
        push    edx                                     ; 177F _ 52
        push    eax                                     ; 1780 _ 50
        call    boxfill8                                ; 1781 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 1786 _ 83. C4, 1C
        mov     eax, dword [ebp+10H]                    ; 1789 _ 8B. 45, 10
        lea     esi, [eax-1H]                           ; 178C _ 8D. 70, FF
        mov     eax, dword [ebp+0CH]                    ; 178F _ 8B. 45, 0C
        lea     ebx, [eax-1H]                           ; 1792 _ 8D. 58, FF
        mov     eax, dword [ebp+1CH]                    ; 1795 _ 8B. 45, 1C
        movzx   ecx, al                                 ; 1798 _ 0F B6. C8
        mov     eax, dword [ebp+8H]                     ; 179B _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 179E _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 17A1 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 17A4 _ 8B. 00
        push    dword [ebp-10H]                         ; 17A6 _ FF. 75, F0
        push    dword [ebp-14H]                         ; 17A9 _ FF. 75, EC
        push    esi                                     ; 17AC _ 56
        push    ebx                                     ; 17AD _ 53
        push    ecx                                     ; 17AE _ 51
        push    edx                                     ; 17AF _ 52
        push    eax                                     ; 17B0 _ 50
        call    boxfill8                                ; 17B1 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 17B6 _ 83. C4, 1C
        nop                                             ; 17B9 _ 90
        lea     esp, [ebp-0CH]                          ; 17BA _ 8D. 65, F4
        pop     ebx                                     ; 17BD _ 5B
        pop     esi                                     ; 17BE _ 5E
        pop     edi                                     ; 17BF _ 5F
        pop     ebp                                     ; 17C0 _ 5D
        ret                                             ; 17C1 _ C3
; make_textbox8 End of function

showFont8:; Function begin
        push    ebp                                     ; 17C2 _ 55
        mov     ebp, esp                                ; 17C3 _ 89. E5
        sub     esp, 20                                 ; 17C5 _ 83. EC, 14
        mov     eax, dword [ebp+18H]                    ; 17C8 _ 8B. 45, 18
        mov     byte [ebp-14H], al                      ; 17CB _ 88. 45, EC
        mov     dword [ebp-4H], 0                       ; 17CE _ C7. 45, FC, 00000000
        jmp     ?_061                                   ; 17D5 _ E9, 0000016C

?_052:  mov     edx, dword [ebp-4H]                     ; 17DA _ 8B. 55, FC
        mov     eax, dword [ebp+1CH]                    ; 17DD _ 8B. 45, 1C
        add     eax, edx                                ; 17E0 _ 01. D0
        movzx   eax, byte [eax]                         ; 17E2 _ 0F B6. 00
        mov     byte [ebp-5H], al                       ; 17E5 _ 88. 45, FB
        cmp     byte [ebp-5H], 0                        ; 17E8 _ 80. 7D, FB, 00
        jns     ?_053                                   ; 17EC _ 79, 20
        mov     edx, dword [ebp+14H]                    ; 17EE _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 17F1 _ 8B. 45, FC
        add     eax, edx                                ; 17F4 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 17F6 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 17FA _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 17FC _ 8B. 45, 10
        add     eax, edx                                ; 17FF _ 01. D0
        mov     edx, eax                                ; 1801 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 1803 _ 8B. 45, 08
        add     edx, eax                                ; 1806 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 1808 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 180C _ 88. 02
?_053:  movsx   eax, byte [ebp-5H]                      ; 180E _ 0F BE. 45, FB
        and     eax, 40H                                ; 1812 _ 83. E0, 40
        test    eax, eax                                ; 1815 _ 85. C0
        jz      ?_054                                   ; 1817 _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 1819 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 181C _ 8B. 45, FC
        add     eax, edx                                ; 181F _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 1821 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 1825 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 1827 _ 8B. 45, 10
        add     eax, edx                                ; 182A _ 01. D0
        lea     edx, [eax+1H]                           ; 182C _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 182F _ 8B. 45, 08
        add     edx, eax                                ; 1832 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 1834 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 1838 _ 88. 02
?_054:  movsx   eax, byte [ebp-5H]                      ; 183A _ 0F BE. 45, FB
        and     eax, 20H                                ; 183E _ 83. E0, 20
        test    eax, eax                                ; 1841 _ 85. C0
        jz      ?_055                                   ; 1843 _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 1845 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 1848 _ 8B. 45, FC
        add     eax, edx                                ; 184B _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 184D _ 0F AF. 45, 0C
        mov     edx, eax                                ; 1851 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 1853 _ 8B. 45, 10
        add     eax, edx                                ; 1856 _ 01. D0
        lea     edx, [eax+2H]                           ; 1858 _ 8D. 50, 02
        mov     eax, dword [ebp+8H]                     ; 185B _ 8B. 45, 08
        add     edx, eax                                ; 185E _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 1860 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 1864 _ 88. 02
?_055:  movsx   eax, byte [ebp-5H]                      ; 1866 _ 0F BE. 45, FB
        and     eax, 10H                                ; 186A _ 83. E0, 10
        test    eax, eax                                ; 186D _ 85. C0
        jz      ?_056                                   ; 186F _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 1871 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 1874 _ 8B. 45, FC
        add     eax, edx                                ; 1877 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 1879 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 187D _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 187F _ 8B. 45, 10
        add     eax, edx                                ; 1882 _ 01. D0
        lea     edx, [eax+3H]                           ; 1884 _ 8D. 50, 03
        mov     eax, dword [ebp+8H]                     ; 1887 _ 8B. 45, 08
        add     edx, eax                                ; 188A _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 188C _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 1890 _ 88. 02
?_056:  movsx   eax, byte [ebp-5H]                      ; 1892 _ 0F BE. 45, FB
        and     eax, 08H                                ; 1896 _ 83. E0, 08
        test    eax, eax                                ; 1899 _ 85. C0
        jz      ?_057                                   ; 189B _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 189D _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 18A0 _ 8B. 45, FC
        add     eax, edx                                ; 18A3 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 18A5 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 18A9 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 18AB _ 8B. 45, 10
        add     eax, edx                                ; 18AE _ 01. D0
        lea     edx, [eax+4H]                           ; 18B0 _ 8D. 50, 04
        mov     eax, dword [ebp+8H]                     ; 18B3 _ 8B. 45, 08
        add     edx, eax                                ; 18B6 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 18B8 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 18BC _ 88. 02
?_057:  movsx   eax, byte [ebp-5H]                      ; 18BE _ 0F BE. 45, FB
        and     eax, 04H                                ; 18C2 _ 83. E0, 04
        test    eax, eax                                ; 18C5 _ 85. C0
        jz      ?_058                                   ; 18C7 _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 18C9 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 18CC _ 8B. 45, FC
        add     eax, edx                                ; 18CF _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 18D1 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 18D5 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 18D7 _ 8B. 45, 10
        add     eax, edx                                ; 18DA _ 01. D0
        lea     edx, [eax+5H]                           ; 18DC _ 8D. 50, 05
        mov     eax, dword [ebp+8H]                     ; 18DF _ 8B. 45, 08
        add     edx, eax                                ; 18E2 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 18E4 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 18E8 _ 88. 02
?_058:  movsx   eax, byte [ebp-5H]                      ; 18EA _ 0F BE. 45, FB
        and     eax, 02H                                ; 18EE _ 83. E0, 02
        test    eax, eax                                ; 18F1 _ 85. C0
        jz      ?_059                                   ; 18F3 _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 18F5 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 18F8 _ 8B. 45, FC
        add     eax, edx                                ; 18FB _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 18FD _ 0F AF. 45, 0C
        mov     edx, eax                                ; 1901 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 1903 _ 8B. 45, 10
        add     eax, edx                                ; 1906 _ 01. D0
        lea     edx, [eax+6H]                           ; 1908 _ 8D. 50, 06
        mov     eax, dword [ebp+8H]                     ; 190B _ 8B. 45, 08
        add     edx, eax                                ; 190E _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 1910 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 1914 _ 88. 02
?_059:  movsx   eax, byte [ebp-5H]                      ; 1916 _ 0F BE. 45, FB
        and     eax, 01H                                ; 191A _ 83. E0, 01
        test    eax, eax                                ; 191D _ 85. C0
        jz      ?_060                                   ; 191F _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 1921 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 1924 _ 8B. 45, FC
        add     eax, edx                                ; 1927 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 1929 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 192D _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 192F _ 8B. 45, 10
        add     eax, edx                                ; 1932 _ 01. D0
        lea     edx, [eax+7H]                           ; 1934 _ 8D. 50, 07
        mov     eax, dword [ebp+8H]                     ; 1937 _ 8B. 45, 08
        add     edx, eax                                ; 193A _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 193C _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 1940 _ 88. 02
?_060:  add     dword [ebp-4H], 1                       ; 1942 _ 83. 45, FC, 01
?_061:  cmp     dword [ebp-4H], 15                      ; 1946 _ 83. 7D, FC, 0F
        jle     ?_052                                   ; 194A _ 0F 8E, FFFFFE8A
        nop                                             ; 1950 _ 90
        leave                                           ; 1951 _ C9
        ret                                             ; 1952 _ C3
; showFont8 End of function

init_mouse_cursor:; Function begin
        push    ebp                                     ; 1953 _ 55
        mov     ebp, esp                                ; 1954 _ 89. E5
        sub     esp, 20                                 ; 1956 _ 83. EC, 14
        mov     eax, dword [ebp+0CH]                    ; 1959 _ 8B. 45, 0C
        mov     byte [ebp-14H], al                      ; 195C _ 88. 45, EC
        mov     dword [ebp-4H], 0                       ; 195F _ C7. 45, FC, 00000000
        jmp     ?_068                                   ; 1966 _ E9, 000000B1

?_062:  mov     dword [ebp-8H], 0                       ; 196B _ C7. 45, F8, 00000000
        jmp     ?_067                                   ; 1972 _ E9, 00000097

?_063:  mov     eax, dword [ebp-4H]                     ; 1977 _ 8B. 45, FC
        shl     eax, 4                                  ; 197A _ C1. E0, 04
        mov     edx, eax                                ; 197D _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 197F _ 8B. 45, F8
        add     eax, edx                                ; 1982 _ 01. D0
        add     eax, cursor.2436                        ; 1984 _ 05, 00000160(d)
        movzx   eax, byte [eax]                         ; 1989 _ 0F B6. 00
        cmp     al, 42                                  ; 198C _ 3C, 2A
        jnz     ?_064                                   ; 198E _ 75, 17
        mov     eax, dword [ebp-4H]                     ; 1990 _ 8B. 45, FC
        shl     eax, 4                                  ; 1993 _ C1. E0, 04
        mov     edx, eax                                ; 1996 _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 1998 _ 8B. 45, F8
        add     eax, edx                                ; 199B _ 01. D0
        mov     edx, eax                                ; 199D _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 199F _ 8B. 45, 08
        add     eax, edx                                ; 19A2 _ 01. D0
        mov     byte [eax], 0                           ; 19A4 _ C6. 00, 00
?_064:  mov     eax, dword [ebp-4H]                     ; 19A7 _ 8B. 45, FC
        shl     eax, 4                                  ; 19AA _ C1. E0, 04
        mov     edx, eax                                ; 19AD _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 19AF _ 8B. 45, F8
        add     eax, edx                                ; 19B2 _ 01. D0
        add     eax, cursor.2436                        ; 19B4 _ 05, 00000160(d)
        movzx   eax, byte [eax]                         ; 19B9 _ 0F B6. 00
        cmp     al, 79                                  ; 19BC _ 3C, 4F
        jnz     ?_065                                   ; 19BE _ 75, 17
        mov     eax, dword [ebp-4H]                     ; 19C0 _ 8B. 45, FC
        shl     eax, 4                                  ; 19C3 _ C1. E0, 04
        mov     edx, eax                                ; 19C6 _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 19C8 _ 8B. 45, F8
        add     eax, edx                                ; 19CB _ 01. D0
        mov     edx, eax                                ; 19CD _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 19CF _ 8B. 45, 08
        add     eax, edx                                ; 19D2 _ 01. D0
        mov     byte [eax], 7                           ; 19D4 _ C6. 00, 07
?_065:  mov     eax, dword [ebp-4H]                     ; 19D7 _ 8B. 45, FC
        shl     eax, 4                                  ; 19DA _ C1. E0, 04
        mov     edx, eax                                ; 19DD _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 19DF _ 8B. 45, F8
        add     eax, edx                                ; 19E2 _ 01. D0
        add     eax, cursor.2436                        ; 19E4 _ 05, 00000160(d)
        movzx   eax, byte [eax]                         ; 19E9 _ 0F B6. 00
        cmp     al, 46                                  ; 19EC _ 3C, 2E
        jnz     ?_066                                   ; 19EE _ 75, 1A
        mov     eax, dword [ebp-4H]                     ; 19F0 _ 8B. 45, FC
        shl     eax, 4                                  ; 19F3 _ C1. E0, 04
        mov     edx, eax                                ; 19F6 _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 19F8 _ 8B. 45, F8
        add     eax, edx                                ; 19FB _ 01. D0
        mov     edx, eax                                ; 19FD _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 19FF _ 8B. 45, 08
        add     edx, eax                                ; 1A02 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 1A04 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 1A08 _ 88. 02
?_066:  add     dword [ebp-8H], 1                       ; 1A0A _ 83. 45, F8, 01
?_067:  cmp     dword [ebp-8H], 15                      ; 1A0E _ 83. 7D, F8, 0F
        jle     ?_063                                   ; 1A12 _ 0F 8E, FFFFFF5F
        add     dword [ebp-4H], 1                       ; 1A18 _ 83. 45, FC, 01
?_068:  cmp     dword [ebp-4H], 15                      ; 1A1C _ 83. 7D, FC, 0F
        jle     ?_062                                   ; 1A20 _ 0F 8E, FFFFFF45
        nop                                             ; 1A26 _ 90
        leave                                           ; 1A27 _ C9
        ret                                             ; 1A28 _ C3
; init_mouse_cursor End of function

putblock:; Function begin
        push    ebp                                     ; 1A29 _ 55
        mov     ebp, esp                                ; 1A2A _ 89. E5
        push    ebx                                     ; 1A2C _ 53
        sub     esp, 16                                 ; 1A2D _ 83. EC, 10
        mov     dword [ebp-8H], 0                       ; 1A30 _ C7. 45, F8, 00000000
        jmp     ?_072                                   ; 1A37 _ EB, 50

?_069:  mov     dword [ebp-0CH], 0                      ; 1A39 _ C7. 45, F4, 00000000
        jmp     ?_071                                   ; 1A40 _ EB, 3B

?_070:  mov     eax, dword [ebp-8H]                     ; 1A42 _ 8B. 45, F8
        imul    eax, dword [ebp+24H]                    ; 1A45 _ 0F AF. 45, 24
        mov     edx, eax                                ; 1A49 _ 89. C2
        mov     eax, dword [ebp-0CH]                    ; 1A4B _ 8B. 45, F4
        add     eax, edx                                ; 1A4E _ 01. D0
        mov     edx, eax                                ; 1A50 _ 89. C2
        mov     eax, dword [ebp+20H]                    ; 1A52 _ 8B. 45, 20
        add     eax, edx                                ; 1A55 _ 01. D0
        mov     ecx, dword [ebp+1CH]                    ; 1A57 _ 8B. 4D, 1C
        mov     edx, dword [ebp-8H]                     ; 1A5A _ 8B. 55, F8
        add     edx, ecx                                ; 1A5D _ 01. CA
        imul    edx, dword [ebp+0CH]                    ; 1A5F _ 0F AF. 55, 0C
        mov     ebx, dword [ebp+18H]                    ; 1A63 _ 8B. 5D, 18
        mov     ecx, dword [ebp-0CH]                    ; 1A66 _ 8B. 4D, F4
        add     ecx, ebx                                ; 1A69 _ 01. D9
        add     edx, ecx                                ; 1A6B _ 01. CA
        mov     ecx, edx                                ; 1A6D _ 89. D1
        mov     edx, dword [ebp+8H]                     ; 1A6F _ 8B. 55, 08
        add     edx, ecx                                ; 1A72 _ 01. CA
        movzx   eax, byte [eax]                         ; 1A74 _ 0F B6. 00
        mov     byte [edx], al                          ; 1A77 _ 88. 02
        add     dword [ebp-0CH], 1                      ; 1A79 _ 83. 45, F4, 01
?_071:  mov     eax, dword [ebp-0CH]                    ; 1A7D _ 8B. 45, F4
        cmp     eax, dword [ebp+10H]                    ; 1A80 _ 3B. 45, 10
        jl      ?_070                                   ; 1A83 _ 7C, BD
        add     dword [ebp-8H], 1                       ; 1A85 _ 83. 45, F8, 01
?_072:  mov     eax, dword [ebp-8H]                     ; 1A89 _ 8B. 45, F8
        cmp     eax, dword [ebp+14H]                    ; 1A8C _ 3B. 45, 14
        jl      ?_069                                   ; 1A8F _ 7C, A8
        nop                                             ; 1A91 _ 90
        add     esp, 16                                 ; 1A92 _ 83. C4, 10
        pop     ebx                                     ; 1A95 _ 5B
        pop     ebp                                     ; 1A96 _ 5D
        ret                                             ; 1A97 _ C3
; putblock End of function

intHandlerFromC:; Function begin
        push    ebp                                     ; 1A98 _ 55
        mov     ebp, esp                                ; 1A99 _ 89. E5
        sub     esp, 24                                 ; 1A9B _ 83. EC, 18
        mov     eax, dword [bootInfo]                   ; 1A9E _ A1, 00000008(d)
        mov     dword [ebp-14H], eax                    ; 1AA3 _ 89. 45, EC
        movzx   eax, word [?_245]                       ; 1AA6 _ 0F B7. 05, 0000000C(d)
        cwde                                            ; 1AAD _ 98
        mov     dword [ebp-10H], eax                    ; 1AAE _ 89. 45, F0
        movzx   eax, word [?_246]                       ; 1AB1 _ 0F B7. 05, 0000000E(d)
        cwde                                            ; 1AB8 _ 98
        mov     dword [ebp-0CH], eax                    ; 1AB9 _ 89. 45, F4
        sub     esp, 8                                  ; 1ABC _ 83. EC, 08
        push    32                                      ; 1ABF _ 6A, 20
        push    32                                      ; 1AC1 _ 6A, 20
        call    io_out8                                 ; 1AC3 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1AC8 _ 83. C4, 10
        mov     byte [ebp-15H], 0                       ; 1ACB _ C6. 45, EB, 00
        sub     esp, 12                                 ; 1ACF _ 83. EC, 0C
        push    96                                      ; 1AD2 _ 6A, 60
        call    io_in8                                  ; 1AD4 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1AD9 _ 83. C4, 10
        mov     byte [ebp-15H], al                      ; 1ADC _ 88. 45, EB
        movzx   eax, byte [ebp-15H]                     ; 1ADF _ 0F B6. 45, EB
        sub     esp, 8                                  ; 1AE3 _ 83. EC, 08
        push    eax                                     ; 1AE6 _ 50
        push    keyInfo                                 ; 1AE7 _ 68, 00000010(d)
        call    fifo8_put                               ; 1AEC _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1AF1 _ 83. C4, 10
        nop                                             ; 1AF4 _ 90
        leave                                           ; 1AF5 _ C9
        ret                                             ; 1AF6 _ C3
; intHandlerFromC End of function

charToHex:; Function begin
        push    ebp                                     ; 1AF7 _ 55
        mov     ebp, esp                                ; 1AF8 _ 89. E5
        sub     esp, 40                                 ; 1AFA _ 83. EC, 28
        mov     eax, dword [ebp+8H]                     ; 1AFD _ 8B. 45, 08
        mov     byte [ebp-1CH], al                      ; 1B00 _ 88. 45, E4
        movzx   eax, byte [ebp-1CH]                     ; 1B03 _ 0F B6. 45, E4
        and     eax, 0FH                                ; 1B07 _ 83. E0, 0F
        mov     byte [ebp-9H], al                       ; 1B0A _ 88. 45, F7
        movsx   eax, byte [ebp-9H]                      ; 1B0D _ 0F BE. 45, F7
        sub     esp, 12                                 ; 1B11 _ 83. EC, 0C
        push    eax                                     ; 1B14 _ 50
        call    charToVal                               ; 1B15 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1B1A _ 83. C4, 10
        mov     byte [?_244], al                        ; 1B1D _ A2, 00000003(d)
        movzx   eax, byte [ebp-1CH]                     ; 1B22 _ 0F B6. 45, E4
        shr     al, 4                                   ; 1B26 _ C0. E8, 04
        mov     byte [ebp-1CH], al                      ; 1B29 _ 88. 45, E4
        movzx   eax, byte [ebp-1CH]                     ; 1B2C _ 0F B6. 45, E4
        movsx   eax, al                                 ; 1B30 _ 0F BE. C0
        sub     esp, 12                                 ; 1B33 _ 83. EC, 0C
        push    eax                                     ; 1B36 _ 50
        call    charToVal                               ; 1B37 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1B3C _ 83. C4, 10
        mov     byte [?_243], al                        ; 1B3F _ A2, 00000002(d)
        mov     eax, keyVal                             ; 1B44 _ B8, 00000000(d)
        leave                                           ; 1B49 _ C9
        ret                                             ; 1B4A _ C3
; charToHex End of function

charToVal:; Function begin
        push    ebp                                     ; 1B4B _ 55
        mov     ebp, esp                                ; 1B4C _ 89. E5
        sub     esp, 4                                  ; 1B4E _ 83. EC, 04
        mov     eax, dword [ebp+8H]                     ; 1B51 _ 8B. 45, 08
        mov     byte [ebp-4H], al                       ; 1B54 _ 88. 45, FC
        cmp     byte [ebp-4H], 9                        ; 1B57 _ 80. 7D, FC, 09
        jle     ?_073                                   ; 1B5B _ 7E, 09
        movzx   eax, byte [ebp-4H]                      ; 1B5D _ 0F B6. 45, FC
        add     eax, 55                                 ; 1B61 _ 83. C0, 37
        jmp     ?_074                                   ; 1B64 _ EB, 07

?_073:  movzx   eax, byte [ebp-4H]                      ; 1B66 _ 0F B6. 45, FC
        add     eax, 48                                 ; 1B6A _ 83. C0, 30
?_074:  leave                                           ; 1B6D _ C9
        ret                                             ; 1B6E _ C3
; charToVal End of function

intToHexStr:; Function begin
        push    ebp                                     ; 1B6F _ 55
        mov     ebp, esp                                ; 1B70 _ 89. E5
        sub     esp, 16                                 ; 1B72 _ 83. EC, 10
        mov     byte [str.2479], 48                     ; 1B75 _ C6. 05, 00000278(d), 30
        mov     byte [?_249], 120                       ; 1B7C _ C6. 05, 00000279(d), 78
        mov     byte [?_250], 0                         ; 1B83 _ C6. 05, 00000282(d), 00
        mov     dword [ebp-0CH], 2                      ; 1B8A _ C7. 45, F4, 00000002
        jmp     ?_076                                   ; 1B91 _ EB, 0F

?_075:  mov     eax, dword [ebp-0CH]                    ; 1B93 _ 8B. 45, F4
        add     eax, str.2479                           ; 1B96 _ 05, 00000278(d)
        mov     byte [eax], 48                          ; 1B9B _ C6. 00, 30
        add     dword [ebp-0CH], 1                      ; 1B9E _ 83. 45, F4, 01
?_076:  cmp     dword [ebp-0CH], 9                      ; 1BA2 _ 83. 7D, F4, 09
        jle     ?_075                                   ; 1BA6 _ 7E, EB
        mov     dword [ebp-8H], 9                       ; 1BA8 _ C7. 45, F8, 00000009
        jmp     ?_079                                   ; 1BAF _ EB, 48

?_077:  mov     eax, dword [ebp+8H]                     ; 1BB1 _ 8B. 45, 08
        and     eax, 0FH                                ; 1BB4 _ 83. E0, 0F
        mov     dword [ebp-4H], eax                     ; 1BB7 _ 89. 45, FC
        mov     eax, dword [ebp+8H]                     ; 1BBA _ 8B. 45, 08
        shr     eax, 4                                  ; 1BBD _ C1. E8, 04
        mov     dword [ebp+8H], eax                     ; 1BC0 _ 89. 45, 08
        cmp     dword [ebp-4H], 9                       ; 1BC3 _ 83. 7D, FC, 09
        jle     ?_078                                   ; 1BC7 _ 7E, 19
        mov     eax, dword [ebp-4H]                     ; 1BC9 _ 8B. 45, FC
        lea     ecx, [eax+37H]                          ; 1BCC _ 8D. 48, 37
        mov     eax, dword [ebp-8H]                     ; 1BCF _ 8B. 45, F8
        lea     edx, [eax-1H]                           ; 1BD2 _ 8D. 50, FF
        mov     dword [ebp-8H], edx                     ; 1BD5 _ 89. 55, F8
        mov     edx, ecx                                ; 1BD8 _ 89. CA
        mov     byte [str.2479+eax], dl                 ; 1BDA _ 88. 90, 00000278(d)
        jmp     ?_079                                   ; 1BE0 _ EB, 17

?_078:  mov     eax, dword [ebp-4H]                     ; 1BE2 _ 8B. 45, FC
        lea     ecx, [eax+30H]                          ; 1BE5 _ 8D. 48, 30
        mov     eax, dword [ebp-8H]                     ; 1BE8 _ 8B. 45, F8
        lea     edx, [eax-1H]                           ; 1BEB _ 8D. 50, FF
        mov     dword [ebp-8H], edx                     ; 1BEE _ 89. 55, F8
        mov     edx, ecx                                ; 1BF1 _ 89. CA
        mov     byte [str.2479+eax], dl                 ; 1BF3 _ 88. 90, 00000278(d)
?_079:  cmp     dword [ebp-8H], 1                       ; 1BF9 _ 83. 7D, F8, 01
        jle     ?_080                                   ; 1BFD _ 7E, 06
        cmp     dword [ebp+8H], 0                       ; 1BFF _ 83. 7D, 08, 00
        jnz     ?_077                                   ; 1C03 _ 75, AC
?_080:  mov     eax, str.2479                           ; 1C05 _ B8, 00000278(d)
        leave                                           ; 1C0A _ C9
        ret                                             ; 1C0B _ C3
; intToHexStr End of function

wait_KBC_sendReady:; Function begin
        push    ebp                                     ; 1C0C _ 55
        mov     ebp, esp                                ; 1C0D _ 89. E5
        sub     esp, 8                                  ; 1C0F _ 83. EC, 08
?_081:  sub     esp, 12                                 ; 1C12 _ 83. EC, 0C
        push    100                                     ; 1C15 _ 6A, 64
        call    io_in8                                  ; 1C17 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1C1C _ 83. C4, 10
        movsx   eax, al                                 ; 1C1F _ 0F BE. C0
        and     eax, 02H                                ; 1C22 _ 83. E0, 02
        test    eax, eax                                ; 1C25 _ 85. C0
        jz      ?_082                                   ; 1C27 _ 74, 02
        jmp     ?_081                                   ; 1C29 _ EB, E7

?_082:  nop                                             ; 1C2B _ 90
        nop                                             ; 1C2C _ 90
        leave                                           ; 1C2D _ C9
        ret                                             ; 1C2E _ C3
; wait_KBC_sendReady End of function

init_keyboard:; Function begin
        push    ebp                                     ; 1C2F _ 55
        mov     ebp, esp                                ; 1C30 _ 89. E5
        sub     esp, 8                                  ; 1C32 _ 83. EC, 08
        call    wait_KBC_sendReady                      ; 1C35 _ E8, FFFFFFFC(rel)
        sub     esp, 8                                  ; 1C3A _ 83. EC, 08
        push    96                                      ; 1C3D _ 6A, 60
        push    100                                     ; 1C3F _ 6A, 64
        call    io_out8                                 ; 1C41 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1C46 _ 83. C4, 10
        call    wait_KBC_sendReady                      ; 1C49 _ E8, FFFFFFFC(rel)
        sub     esp, 8                                  ; 1C4E _ 83. EC, 08
        push    71                                      ; 1C51 _ 6A, 47
        push    96                                      ; 1C53 _ 6A, 60
        call    io_out8                                 ; 1C55 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1C5A _ 83. C4, 10
        nop                                             ; 1C5D _ 90
        leave                                           ; 1C5E _ C9
        ret                                             ; 1C5F _ C3
; init_keyboard End of function

enable_mouse:; Function begin
        push    ebp                                     ; 1C60 _ 55
        mov     ebp, esp                                ; 1C61 _ 89. E5
        sub     esp, 8                                  ; 1C63 _ 83. EC, 08
        call    wait_KBC_sendReady                      ; 1C66 _ E8, FFFFFFFC(rel)
        sub     esp, 8                                  ; 1C6B _ 83. EC, 08
        push    212                                     ; 1C6E _ 68, 000000D4
        push    100                                     ; 1C73 _ 6A, 64
        call    io_out8                                 ; 1C75 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1C7A _ 83. C4, 10
        call    wait_KBC_sendReady                      ; 1C7D _ E8, FFFFFFFC(rel)
        sub     esp, 8                                  ; 1C82 _ 83. EC, 08
        push    244                                     ; 1C85 _ 68, 000000F4
        push    96                                      ; 1C8A _ 6A, 60
        call    io_out8                                 ; 1C8C _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1C91 _ 83. C4, 10
        mov     eax, dword [ebp+8H]                     ; 1C94 _ 8B. 45, 08
        mov     byte [eax+3H], 0                        ; 1C97 _ C6. 40, 03, 00
        nop                                             ; 1C9B _ 90
        leave                                           ; 1C9C _ C9
        ret                                             ; 1C9D _ C3
; enable_mouse End of function

intHandlerForMouse:; Function begin
        push    ebp                                     ; 1C9E _ 55
        mov     ebp, esp                                ; 1C9F _ 89. E5
        sub     esp, 24                                 ; 1CA1 _ 83. EC, 18
        mov     byte [ebp-9H], 0                        ; 1CA4 _ C6. 45, F7, 00
        sub     esp, 8                                  ; 1CA8 _ 83. EC, 08
        push    32                                      ; 1CAB _ 6A, 20
        push    160                                     ; 1CAD _ 68, 000000A0
        call    io_out8                                 ; 1CB2 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1CB7 _ 83. C4, 10
        sub     esp, 8                                  ; 1CBA _ 83. EC, 08
        push    32                                      ; 1CBD _ 6A, 20
        push    32                                      ; 1CBF _ 6A, 20
        call    io_out8                                 ; 1CC1 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1CC6 _ 83. C4, 10
        sub     esp, 12                                 ; 1CC9 _ 83. EC, 0C
        push    96                                      ; 1CCC _ 6A, 60
        call    io_in8                                  ; 1CCE _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1CD3 _ 83. C4, 10
        mov     byte [ebp-9H], al                       ; 1CD6 _ 88. 45, F7
        movzx   eax, byte [ebp-9H]                      ; 1CD9 _ 0F B6. 45, F7
        sub     esp, 8                                  ; 1CDD _ 83. EC, 08
        push    eax                                     ; 1CE0 _ 50
        push    mouseInfo                               ; 1CE1 _ 68, 0000002C(d)
        call    fifo8_put                               ; 1CE6 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1CEB _ 83. C4, 10
        nop                                             ; 1CEE _ 90
        leave                                           ; 1CEF _ C9
        ret                                             ; 1CF0 _ C3
; intHandlerForMouse End of function

showKeyboardInfo:; Function begin
        push    ebp                                     ; 1CF1 _ 55
        mov     ebp, esp                                ; 1CF2 _ 89. E5
        sub     esp, 40                                 ; 1CF4 _ 83. EC, 28
        call    io_sti                                  ; 1CF7 _ E8, FFFFFFFC(rel)
        mov     eax, dword [bootInfo]                   ; 1CFC _ A1, 00000008(d)
        mov     dword [ebp-18H], eax                    ; 1D01 _ 89. 45, E8
        movzx   eax, word [?_245]                       ; 1D04 _ 0F B7. 05, 0000000C(d)
        cwde                                            ; 1D0B _ 98
        mov     dword [ebp-14H], eax                    ; 1D0C _ 89. 45, EC
        movzx   eax, word [?_246]                       ; 1D0F _ 0F B7. 05, 0000000E(d)
        cwde                                            ; 1D16 _ 98
        mov     dword [ebp-10H], eax                    ; 1D17 _ 89. 45, F0
        mov     byte [ebp-19H], 0                       ; 1D1A _ C6. 45, E7, 00
        sub     esp, 12                                 ; 1D1E _ 83. EC, 0C
        push    keyInfo                                 ; 1D21 _ 68, 00000010(d)
        call    fifo8_get                               ; 1D26 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1D2B _ 83. C4, 10
        mov     byte [ebp-19H], al                      ; 1D2E _ 88. 45, E7
        movzx   eax, byte [ebp-19H]                     ; 1D31 _ 0F B6. 45, E7
        sub     esp, 12                                 ; 1D35 _ 83. EC, 0C
        push    eax                                     ; 1D38 _ 50
        call    charToHex                               ; 1D39 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1D3E _ 83. C4, 10
        mov     dword [ebp-0CH], eax                    ; 1D41 _ 89. 45, F4
        mov     edx, dword [line.2512]                  ; 1D44 _ 8B. 15, 00000284(d)
        mov     eax, dword [pos.2511]                   ; 1D4A _ A1, 00000288(d)
        sub     esp, 8                                  ; 1D4F _ 83. EC, 08
        push    dword [ebp-0CH]                         ; 1D52 _ FF. 75, F4
        push    7                                       ; 1D55 _ 6A, 07
        push    edx                                     ; 1D57 _ 52
        push    eax                                     ; 1D58 _ 50
        push    dword [ebp+0CH]                         ; 1D59 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1D5C _ FF. 75, 08
        call    showString                              ; 1D5F _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1D64 _ 83. C4, 20
        mov     eax, dword [pos.2511]                   ; 1D67 _ A1, 00000288(d)
        add     eax, 32                                 ; 1D6C _ 83. C0, 20
        mov     dword [pos.2511], eax                   ; 1D6F _ A3, 00000288(d)
        mov     eax, dword [pos.2511]                   ; 1D74 _ A1, 00000288(d)
        cmp     dword [ebp-14H], eax                    ; 1D79 _ 39. 45, EC
        jnz     ?_085                                   ; 1D7C _ 75, 28
        mov     eax, dword [line.2512]                  ; 1D7E _ A1, 00000284(d)
        cmp     dword [ebp-10H], eax                    ; 1D83 _ 39. 45, F0
        jz      ?_083                                   ; 1D86 _ 74, 0A
        mov     eax, dword [line.2512]                  ; 1D88 _ A1, 00000284(d)
        add     eax, 16                                 ; 1D8D _ 83. C0, 10
        jmp     ?_084                                   ; 1D90 _ EB, 05

?_083:  mov     eax, 0                                  ; 1D92 _ B8, 00000000
?_084:  mov     dword [line.2512], eax                  ; 1D97 _ A3, 00000284(d)
        mov     dword [pos.2511], 0                     ; 1D9C _ C7. 05, 00000288(d), 00000000
?_085:  nop                                             ; 1DA6 _ 90
        leave                                           ; 1DA7 _ C9
        ret                                             ; 1DA8 _ C3
; showKeyboardInfo End of function

showMouseInfo:; Function begin
        push    ebp                                     ; 1DA9 _ 55
        mov     ebp, esp                                ; 1DAA _ 89. E5
        sub     esp, 24                                 ; 1DAC _ 83. EC, 18
        call    io_sti                                  ; 1DAF _ E8, FFFFFFFC(rel)
        mov     byte [ebp-9H], 0                        ; 1DB4 _ C6. 45, F7, 00
        sub     esp, 12                                 ; 1DB8 _ 83. EC, 0C
        push    mouseInfo                               ; 1DBB _ 68, 0000002C(d)
        call    fifo8_get                               ; 1DC0 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1DC5 _ 83. C4, 10
        mov     byte [ebp-9H], al                       ; 1DC8 _ 88. 45, F7
        movzx   eax, byte [ebp-9H]                      ; 1DCB _ 0F B6. 45, F7
        sub     esp, 8                                  ; 1DCF _ 83. EC, 08
        push    eax                                     ; 1DD2 _ 50
        push    mouse_move                              ; 1DD3 _ 68, 00000100(d)
        call    mouse_decode                            ; 1DD8 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1DDD _ 83. C4, 10
        test    eax, eax                                ; 1DE0 _ 85. C0
        jz      ?_086                                   ; 1DE2 _ 74, 60
        sub     esp, 4                                  ; 1DE4 _ 83. EC, 04
        push    mouse_move                              ; 1DE7 _ 68, 00000100(d)
        push    dword [ebp+0CH]                         ; 1DEC _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1DEF _ FF. 75, 08
        call    computeMousePos                         ; 1DF2 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1DF7 _ 83. C4, 10
        mov     edx, dword [my]                         ; 1DFA _ 8B. 15, 00000114(d)
        mov     eax, dword [mx]                         ; 1E00 _ A1, 00000110(d)
        push    edx                                     ; 1E05 _ 52
        push    eax                                     ; 1E06 _ 50
        push    dword [ebp+10H]                         ; 1E07 _ FF. 75, 10
        push    dword [ebp+8H]                          ; 1E0A _ FF. 75, 08
        call    sheet_slide                             ; 1E0D _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1E12 _ 83. C4, 10
        mov     eax, dword [?_248]                      ; 1E15 _ A1, 0000010C(d)
        and     eax, 01H                                ; 1E1A _ 83. E0, 01
        test    eax, eax                                ; 1E1D _ 85. C0
        jz      ?_086                                   ; 1E1F _ 74, 23
        mov     eax, dword [my]                         ; 1E21 _ A1, 00000114(d)
        lea     ecx, [eax-8H]                           ; 1E26 _ 8D. 48, F8
        mov     eax, dword [mx]                         ; 1E29 _ A1, 00000110(d)
        lea     edx, [eax-50H]                          ; 1E2E _ 8D. 50, B0
        mov     eax, dword [sheet_win]                  ; 1E31 _ A1, 00000248(d)
        push    ecx                                     ; 1E36 _ 51
        push    edx                                     ; 1E37 _ 52
        push    eax                                     ; 1E38 _ 50
        push    dword [ebp+8H]                          ; 1E39 _ FF. 75, 08
        call    sheet_slide                             ; 1E3C _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1E41 _ 83. C4, 10
?_086:  nop                                             ; 1E44 _ 90
        leave                                           ; 1E45 _ C9
        ret                                             ; 1E46 _ C3
; showMouseInfo End of function

mouse_decode:; Function begin
        push    ebp                                     ; 1E47 _ 55
        mov     ebp, esp                                ; 1E48 _ 89. E5
        sub     esp, 4                                  ; 1E4A _ 83. EC, 04
        mov     eax, dword [ebp+0CH]                    ; 1E4D _ 8B. 45, 0C
        mov     byte [ebp-4H], al                       ; 1E50 _ 88. 45, FC
        mov     eax, dword [ebp+8H]                     ; 1E53 _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 1E56 _ 0F B6. 40, 03
        test    al, al                                  ; 1E5A _ 84. C0
        jnz     ?_088                                   ; 1E5C _ 75, 17
        cmp     byte [ebp-4H], -6                       ; 1E5E _ 80. 7D, FC, FA
        jnz     ?_087                                   ; 1E62 _ 75, 07
        mov     eax, dword [ebp+8H]                     ; 1E64 _ 8B. 45, 08
        mov     byte [eax+3H], 1                        ; 1E67 _ C6. 40, 03, 01
?_087:  mov     eax, 0                                  ; 1E6B _ B8, 00000000
        jmp     ?_095                                   ; 1E70 _ E9, 0000010C

?_088:  mov     eax, dword [ebp+8H]                     ; 1E75 _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 1E78 _ 0F B6. 40, 03
        cmp     al, 1                                   ; 1E7C _ 3C, 01
        jnz     ?_090                                   ; 1E7E _ 75, 25
        movzx   eax, byte [ebp-4H]                      ; 1E80 _ 0F B6. 45, FC
        or      eax, 37H                                ; 1E84 _ 83. C8, 37
        cmp     al, 63                                  ; 1E87 _ 3C, 3F
        jnz     ?_089                                   ; 1E89 _ 75, 10
        mov     eax, dword [ebp+8H]                     ; 1E8B _ 8B. 45, 08
        movzx   edx, byte [ebp-4H]                      ; 1E8E _ 0F B6. 55, FC
        mov     byte [eax], dl                          ; 1E92 _ 88. 10
        mov     eax, dword [ebp+8H]                     ; 1E94 _ 8B. 45, 08
        mov     byte [eax+3H], 2                        ; 1E97 _ C6. 40, 03, 02
?_089:  mov     eax, 0                                  ; 1E9B _ B8, 00000000
        jmp     ?_095                                   ; 1EA0 _ E9, 000000DC

?_090:  mov     eax, dword [ebp+8H]                     ; 1EA5 _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 1EA8 _ 0F B6. 40, 03
        cmp     al, 2                                   ; 1EAC _ 3C, 02
        jnz     ?_091                                   ; 1EAE _ 75, 1B
        mov     eax, dword [ebp+8H]                     ; 1EB0 _ 8B. 45, 08
        movzx   edx, byte [ebp-4H]                      ; 1EB3 _ 0F B6. 55, FC
        mov     byte [eax+1H], dl                       ; 1EB7 _ 88. 50, 01
        mov     eax, dword [ebp+8H]                     ; 1EBA _ 8B. 45, 08
        mov     byte [eax+3H], 3                        ; 1EBD _ C6. 40, 03, 03
        mov     eax, 0                                  ; 1EC1 _ B8, 00000000
        jmp     ?_095                                   ; 1EC6 _ E9, 000000B6

?_091:  mov     eax, dword [ebp+8H]                     ; 1ECB _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 1ECE _ 0F B6. 40, 03
        cmp     al, 3                                   ; 1ED2 _ 3C, 03
        jne     ?_094                                   ; 1ED4 _ 0F 85, 000000A2
        mov     eax, dword [ebp+8H]                     ; 1EDA _ 8B. 45, 08
        movzx   edx, byte [ebp-4H]                      ; 1EDD _ 0F B6. 55, FC
        mov     byte [eax+2H], dl                       ; 1EE1 _ 88. 50, 02
        mov     eax, dword [ebp+8H]                     ; 1EE4 _ 8B. 45, 08
        mov     byte [eax+3H], 1                        ; 1EE7 _ C6. 40, 03, 01
        mov     eax, dword [ebp+8H]                     ; 1EEB _ 8B. 45, 08
        movzx   eax, byte [eax]                         ; 1EEE _ 0F B6. 00
        movzx   eax, al                                 ; 1EF1 _ 0F B6. C0
        and     eax, 07H                                ; 1EF4 _ 83. E0, 07
        mov     edx, eax                                ; 1EF7 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 1EF9 _ 8B. 45, 08
        mov     dword [eax+0CH], edx                    ; 1EFC _ 89. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 1EFF _ 8B. 45, 08
        movzx   eax, byte [eax+1H]                      ; 1F02 _ 0F B6. 40, 01
        movzx   edx, al                                 ; 1F06 _ 0F B6. D0
        mov     eax, dword [ebp+8H]                     ; 1F09 _ 8B. 45, 08
        mov     dword [eax+4H], edx                     ; 1F0C _ 89. 50, 04
        mov     eax, dword [ebp+8H]                     ; 1F0F _ 8B. 45, 08
        movzx   eax, byte [eax+2H]                      ; 1F12 _ 0F B6. 40, 02
        movzx   edx, al                                 ; 1F16 _ 0F B6. D0
        mov     eax, dword [ebp+8H]                     ; 1F19 _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 1F1C _ 89. 50, 08
        mov     eax, dword [ebp+8H]                     ; 1F1F _ 8B. 45, 08
        movzx   eax, byte [eax]                         ; 1F22 _ 0F B6. 00
        movzx   eax, al                                 ; 1F25 _ 0F B6. C0
        and     eax, 10H                                ; 1F28 _ 83. E0, 10
        test    eax, eax                                ; 1F2B _ 85. C0
        jz      ?_092                                   ; 1F2D _ 74, 13
        mov     eax, dword [ebp+8H]                     ; 1F2F _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 1F32 _ 8B. 40, 04
        or      eax, 0FFFFFF00H                         ; 1F35 _ 0D, FFFFFF00
        mov     edx, eax                                ; 1F3A _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 1F3C _ 8B. 45, 08
        mov     dword [eax+4H], edx                     ; 1F3F _ 89. 50, 04
?_092:  mov     eax, dword [ebp+8H]                     ; 1F42 _ 8B. 45, 08
        movzx   eax, byte [eax]                         ; 1F45 _ 0F B6. 00
        movzx   eax, al                                 ; 1F48 _ 0F B6. C0
        and     eax, 20H                                ; 1F4B _ 83. E0, 20
        test    eax, eax                                ; 1F4E _ 85. C0
        jz      ?_093                                   ; 1F50 _ 74, 13
        mov     eax, dword [ebp+8H]                     ; 1F52 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 1F55 _ 8B. 40, 08
        or      eax, 0FFFFFF00H                         ; 1F58 _ 0D, FFFFFF00
        mov     edx, eax                                ; 1F5D _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 1F5F _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 1F62 _ 89. 50, 08
?_093:  mov     eax, dword [ebp+8H]                     ; 1F65 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 1F68 _ 8B. 40, 08
        neg     eax                                     ; 1F6B _ F7. D8
        mov     edx, eax                                ; 1F6D _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 1F6F _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 1F72 _ 89. 50, 08
        mov     eax, 1                                  ; 1F75 _ B8, 00000001
        jmp     ?_095                                   ; 1F7A _ EB, 05

?_094:  mov     eax, 4294967295                         ; 1F7C _ B8, FFFFFFFF
?_095:  leave                                           ; 1F81 _ C9
        ret                                             ; 1F82 _ C3
; mouse_decode End of function

computeMousePos:; Function begin
        push    ebp                                     ; 1F83 _ 55
        mov     ebp, esp                                ; 1F84 _ 89. E5
        sub     esp, 16                                 ; 1F86 _ 83. EC, 10
        movzx   eax, word [?_245]                       ; 1F89 _ 0F B7. 05, 0000000C(d)
        cwde                                            ; 1F90 _ 98
        mov     dword [ebp-8H], eax                     ; 1F91 _ 89. 45, F8
        movzx   eax, word [?_246]                       ; 1F94 _ 0F B7. 05, 0000000E(d)
        cwde                                            ; 1F9B _ 98
        mov     dword [ebp-4H], eax                     ; 1F9C _ 89. 45, FC
        mov     eax, dword [ebp+10H]                    ; 1F9F _ 8B. 45, 10
        mov     edx, dword [eax+4H]                     ; 1FA2 _ 8B. 50, 04
        mov     eax, dword [mx]                         ; 1FA5 _ A1, 00000110(d)
        add     eax, edx                                ; 1FAA _ 01. D0
        mov     dword [mx], eax                         ; 1FAC _ A3, 00000110(d)
        mov     eax, dword [ebp+10H]                    ; 1FB1 _ 8B. 45, 10
        mov     edx, dword [eax+8H]                     ; 1FB4 _ 8B. 50, 08
        mov     eax, dword [my]                         ; 1FB7 _ A1, 00000114(d)
        add     eax, edx                                ; 1FBC _ 01. D0
        mov     dword [my], eax                         ; 1FBE _ A3, 00000114(d)
        mov     eax, dword [mx]                         ; 1FC3 _ A1, 00000110(d)
        test    eax, eax                                ; 1FC8 _ 85. C0
        jns     ?_096                                   ; 1FCA _ 79, 0A
        mov     dword [mx], 0                           ; 1FCC _ C7. 05, 00000110(d), 00000000
?_096:  mov     eax, dword [my]                         ; 1FD6 _ A1, 00000114(d)
        test    eax, eax                                ; 1FDB _ 85. C0
        jns     ?_097                                   ; 1FDD _ 79, 0A
        mov     dword [my], 0                           ; 1FDF _ C7. 05, 00000114(d), 00000000
?_097:  mov     eax, dword [ebp-8H]                     ; 1FE9 _ 8B. 45, F8
        lea     edx, [eax-9H]                           ; 1FEC _ 8D. 50, F7
        mov     eax, dword [mx]                         ; 1FEF _ A1, 00000110(d)
        cmp     edx, eax                                ; 1FF4 _ 39. C2
        jge     ?_098                                   ; 1FF6 _ 7D, 0B
        mov     eax, dword [ebp-8H]                     ; 1FF8 _ 8B. 45, F8
        sub     eax, 9                                  ; 1FFB _ 83. E8, 09
        mov     dword [mx], eax                         ; 1FFE _ A3, 00000110(d)
?_098:  mov     eax, dword [ebp-4H]                     ; 2003 _ 8B. 45, FC
        lea     edx, [eax-1H]                           ; 2006 _ 8D. 50, FF
        mov     eax, dword [my]                         ; 2009 _ A1, 00000114(d)
        cmp     edx, eax                                ; 200E _ 39. C2
        jge     ?_099                                   ; 2010 _ 7D, 0B
        mov     eax, dword [ebp-4H]                     ; 2012 _ 8B. 45, FC
        sub     eax, 1                                  ; 2015 _ 83. E8, 01
        mov     dword [my], eax                         ; 2018 _ A3, 00000114(d)
?_099:  nop                                             ; 201D _ 90
        leave                                           ; 201E _ C9
        ret                                             ; 201F _ C3
; computeMousePos End of function

showMemInfo:; Function begin
        push    ebp                                     ; 2020 _ 55
        mov     ebp, esp                                ; 2021 _ 89. E5
        sub     esp, 56                                 ; 2023 _ 83. EC, 38
        mov     dword [ebp-30H], 0                      ; 2026 _ C7. 45, D0, 00000000
        mov     dword [ebp-2CH], 0                      ; 202D _ C7. 45, D4, 00000000
        mov     dword [ebp-28H], 112                    ; 2034 _ C7. 45, D8, 00000070
        mov     dword [ebp-24H], 80                     ; 203B _ C7. 45, DC, 00000050
        push    100                                     ; 2042 _ 6A, 64
        push    dword [ebp+1CH]                         ; 2044 _ FF. 75, 1C
        push    0                                       ; 2047 _ 6A, 00
        push    0                                       ; 2049 _ 6A, 00
        push    14                                      ; 204B _ 6A, 0E
        push    dword [ebp+1CH]                         ; 204D _ FF. 75, 1C
        push    dword [ebp+14H]                         ; 2050 _ FF. 75, 14
        call    boxfill8                                ; 2053 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 2058 _ 83. C4, 1C
        mov     eax, dword [ebp+20H]                    ; 205B _ 8B. 45, 20
        movsx   eax, al                                 ; 205E _ 0F BE. C0
        sub     esp, 8                                  ; 2061 _ 83. EC, 08
        push    ?_237                                   ; 2064 _ 68, 0000004A(d)
        push    eax                                     ; 2069 _ 50
        push    dword [ebp-2CH]                         ; 206A _ FF. 75, D4
        push    dword [ebp-30H]                         ; 206D _ FF. 75, D0
        push    dword [ebp+0CH]                         ; 2070 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 2073 _ FF. 75, 08
        call    showString                              ; 2076 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 207B _ 83. C4, 20
        mov     eax, dword [ebp+18H]                    ; 207E _ 8B. 45, 18
        sub     esp, 12                                 ; 2081 _ 83. EC, 0C
        push    eax                                     ; 2084 _ 50
        call    intToHexStr                             ; 2085 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 208A _ 83. C4, 10
        mov     dword [ebp-20H], eax                    ; 208D _ 89. 45, E0
        mov     eax, dword [ebp+20H]                    ; 2090 _ 8B. 45, 20
        movsx   eax, al                                 ; 2093 _ 0F BE. C0
        sub     esp, 8                                  ; 2096 _ 83. EC, 08
        push    dword [ebp-20H]                         ; 2099 _ FF. 75, E0
        push    eax                                     ; 209C _ 50
        push    dword [ebp-2CH]                         ; 209D _ FF. 75, D4
        push    dword [ebp-28H]                         ; 20A0 _ FF. 75, D8
        push    dword [ebp+0CH]                         ; 20A3 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 20A6 _ FF. 75, 08
        call    showString                              ; 20A9 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 20AE _ 83. C4, 20
        add     dword [ebp-2CH], 16                     ; 20B1 _ 83. 45, D4, 10
        mov     eax, dword [ebp+20H]                    ; 20B5 _ 8B. 45, 20
        movsx   eax, al                                 ; 20B8 _ 0F BE. C0
        sub     esp, 8                                  ; 20BB _ 83. EC, 08
        push    ?_238                                   ; 20BE _ 68, 00000054(d)
        push    eax                                     ; 20C3 _ 50
        push    dword [ebp-2CH]                         ; 20C4 _ FF. 75, D4
        push    dword [ebp-30H]                         ; 20C7 _ FF. 75, D0
        push    dword [ebp+0CH]                         ; 20CA _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 20CD _ FF. 75, 08
        call    showString                              ; 20D0 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 20D5 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 20D8 _ 8B. 45, 10
        mov     eax, dword [eax]                        ; 20DB _ 8B. 00
        sub     esp, 12                                 ; 20DD _ 83. EC, 0C
        push    eax                                     ; 20E0 _ 50
        call    intToHexStr                             ; 20E1 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 20E6 _ 83. C4, 10
        mov     dword [ebp-1CH], eax                    ; 20E9 _ 89. 45, E4
        mov     eax, dword [ebp+20H]                    ; 20EC _ 8B. 45, 20
        movsx   eax, al                                 ; 20EF _ 0F BE. C0
        sub     esp, 8                                  ; 20F2 _ 83. EC, 08
        push    dword [ebp-1CH]                         ; 20F5 _ FF. 75, E4
        push    eax                                     ; 20F8 _ 50
        push    dword [ebp-2CH]                         ; 20F9 _ FF. 75, D4
        push    dword [ebp-28H]                         ; 20FC _ FF. 75, D8
        push    dword [ebp+0CH]                         ; 20FF _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 2102 _ FF. 75, 08
        call    showString                              ; 2105 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 210A _ 83. C4, 20
        add     dword [ebp-2CH], 16                     ; 210D _ 83. 45, D4, 10
        mov     eax, dword [ebp+20H]                    ; 2111 _ 8B. 45, 20
        movsx   eax, al                                 ; 2114 _ 0F BE. C0
        sub     esp, 8                                  ; 2117 _ 83. EC, 08
        push    ?_239                                   ; 211A _ 68, 00000062(d)
        push    eax                                     ; 211F _ 50
        push    dword [ebp-2CH]                         ; 2120 _ FF. 75, D4
        push    dword [ebp-30H]                         ; 2123 _ FF. 75, D0
        push    dword [ebp+0CH]                         ; 2126 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 2129 _ FF. 75, 08
        call    showString                              ; 212C _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 2131 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 2134 _ 8B. 45, 10
        mov     eax, dword [eax+4H]                     ; 2137 _ 8B. 40, 04
        sub     esp, 12                                 ; 213A _ 83. EC, 0C
        push    eax                                     ; 213D _ 50
        call    intToHexStr                             ; 213E _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 2143 _ 83. C4, 10
        mov     dword [ebp-18H], eax                    ; 2146 _ 89. 45, E8
        mov     eax, dword [ebp+20H]                    ; 2149 _ 8B. 45, 20
        movsx   eax, al                                 ; 214C _ 0F BE. C0
        sub     esp, 8                                  ; 214F _ 83. EC, 08
        push    dword [ebp-18H]                         ; 2152 _ FF. 75, E8
        push    eax                                     ; 2155 _ 50
        push    dword [ebp-2CH]                         ; 2156 _ FF. 75, D4
        push    dword [ebp-28H]                         ; 2159 _ FF. 75, D8
        push    dword [ebp+0CH]                         ; 215C _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 215F _ FF. 75, 08
        call    showString                              ; 2162 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 2167 _ 83. C4, 20
        add     dword [ebp-2CH], 16                     ; 216A _ 83. 45, D4, 10
        mov     eax, dword [ebp+20H]                    ; 216E _ 8B. 45, 20
        movsx   eax, al                                 ; 2171 _ 0F BE. C0
        sub     esp, 8                                  ; 2174 _ 83. EC, 08
        push    ?_240                                   ; 2177 _ 68, 00000071(d)
        push    eax                                     ; 217C _ 50
        push    dword [ebp-2CH]                         ; 217D _ FF. 75, D4
        push    dword [ebp-30H]                         ; 2180 _ FF. 75, D0
        push    dword [ebp+0CH]                         ; 2183 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 2186 _ FF. 75, 08
        call    showString                              ; 2189 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 218E _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 2191 _ 8B. 45, 10
        mov     eax, dword [eax+8H]                     ; 2194 _ 8B. 40, 08
        sub     esp, 12                                 ; 2197 _ 83. EC, 0C
        push    eax                                     ; 219A _ 50
        call    intToHexStr                             ; 219B _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 21A0 _ 83. C4, 10
        mov     dword [ebp-14H], eax                    ; 21A3 _ 89. 45, EC
        mov     eax, dword [ebp+20H]                    ; 21A6 _ 8B. 45, 20
        movsx   eax, al                                 ; 21A9 _ 0F BE. C0
        sub     esp, 8                                  ; 21AC _ 83. EC, 08
        push    dword [ebp-14H]                         ; 21AF _ FF. 75, EC
        push    eax                                     ; 21B2 _ 50
        push    dword [ebp-2CH]                         ; 21B3 _ FF. 75, D4
        push    dword [ebp-28H]                         ; 21B6 _ FF. 75, D8
        push    dword [ebp+0CH]                         ; 21B9 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 21BC _ FF. 75, 08
        call    showString                              ; 21BF _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 21C4 _ 83. C4, 20
        add     dword [ebp-2CH], 16                     ; 21C7 _ 83. 45, D4, 10
        mov     eax, dword [ebp+20H]                    ; 21CB _ 8B. 45, 20
        movsx   eax, al                                 ; 21CE _ 0F BE. C0
        sub     esp, 8                                  ; 21D1 _ 83. EC, 08
        push    ?_241                                   ; 21D4 _ 68, 0000007D(d)
        push    eax                                     ; 21D9 _ 50
        push    dword [ebp-2CH]                         ; 21DA _ FF. 75, D4
        push    dword [ebp-30H]                         ; 21DD _ FF. 75, D0
        push    dword [ebp+0CH]                         ; 21E0 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 21E3 _ FF. 75, 08
        call    showString                              ; 21E6 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 21EB _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 21EE _ 8B. 45, 10
        mov     eax, dword [eax+0CH]                    ; 21F1 _ 8B. 40, 0C
        sub     esp, 12                                 ; 21F4 _ 83. EC, 0C
        push    eax                                     ; 21F7 _ 50
        call    intToHexStr                             ; 21F8 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 21FD _ 83. C4, 10
        mov     dword [ebp-10H], eax                    ; 2200 _ 89. 45, F0
        mov     eax, dword [ebp+20H]                    ; 2203 _ 8B. 45, 20
        movsx   eax, al                                 ; 2206 _ 0F BE. C0
        sub     esp, 8                                  ; 2209 _ 83. EC, 08
        push    dword [ebp-10H]                         ; 220C _ FF. 75, F0
        push    eax                                     ; 220F _ 50
        push    dword [ebp-2CH]                         ; 2210 _ FF. 75, D4
        push    dword [ebp-28H]                         ; 2213 _ FF. 75, D8
        push    dword [ebp+0CH]                         ; 2216 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 2219 _ FF. 75, 08
        call    showString                              ; 221C _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 2221 _ 83. C4, 20
        add     dword [ebp-2CH], 16                     ; 2224 _ 83. 45, D4, 10
        mov     eax, dword [ebp+20H]                    ; 2228 _ 8B. 45, 20
        movsx   eax, al                                 ; 222B _ 0F BE. C0
        sub     esp, 8                                  ; 222E _ 83. EC, 08
        push    ?_242                                   ; 2231 _ 68, 0000008A(d)
        push    eax                                     ; 2236 _ 50
        push    dword [ebp-2CH]                         ; 2237 _ FF. 75, D4
        push    dword [ebp-30H]                         ; 223A _ FF. 75, D0
        push    dword [ebp+0CH]                         ; 223D _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 2240 _ FF. 75, 08
        call    showString                              ; 2243 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 2248 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 224B _ 8B. 45, 10
        mov     eax, dword [eax+10H]                    ; 224E _ 8B. 40, 10
        sub     esp, 12                                 ; 2251 _ 83. EC, 0C
        push    eax                                     ; 2254 _ 50
        call    intToHexStr                             ; 2255 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 225A _ 83. C4, 10
        mov     dword [ebp-0CH], eax                    ; 225D _ 89. 45, F4
        mov     eax, dword [ebp+20H]                    ; 2260 _ 8B. 45, 20
        movsx   eax, al                                 ; 2263 _ 0F BE. C0
        sub     esp, 8                                  ; 2266 _ 83. EC, 08
        push    dword [ebp-0CH]                         ; 2269 _ FF. 75, F4
        push    eax                                     ; 226C _ 50
        push    dword [ebp-2CH]                         ; 226D _ FF. 75, D4
        push    dword [ebp-28H]                         ; 2270 _ FF. 75, D8
        push    dword [ebp+0CH]                         ; 2273 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 2276 _ FF. 75, 08
        call    showString                              ; 2279 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 227E _ 83. C4, 20
        add     dword [ebp-2CH], 16                     ; 2281 _ 83. 45, D4, 10
        nop                                             ; 2285 _ 90
        leave                                           ; 2286 _ C9
        ret                                             ; 2287 _ C3
; showMemInfo End of function

messageBox:; Function begin
        push    ebp                                     ; 2288 _ 55
        mov     ebp, esp                                ; 2289 _ 89. E5
        sub     esp, 24                                 ; 228B _ 83. EC, 18
        mov     eax, dword [ebp+10H]                    ; 228E _ 8B. 45, 10
        imul    eax, dword [ebp+14H]                    ; 2291 _ 0F AF. 45, 14
        mov     edx, eax                                ; 2295 _ 89. C2
        mov     eax, dword [memman]                     ; 2297 _ A1, 00000008(d)
        sub     esp, 8                                  ; 229C _ 83. EC, 08
        push    edx                                     ; 229F _ 52
        push    eax                                     ; 22A0 _ 50
        call    memman_alloc_4K                         ; 22A1 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 22A6 _ 83. C4, 10
        mov     dword [ebp-10H], eax                    ; 22A9 _ 89. 45, F0
        sub     esp, 12                                 ; 22AC _ 83. EC, 0C
        push    dword [ebp+8H]                          ; 22AF _ FF. 75, 08
        call    sheet_alloc                             ; 22B2 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 22B7 _ 83. C4, 10
        mov     dword [ebp-0CH], eax                    ; 22BA _ 89. 45, F4
        sub     esp, 12                                 ; 22BD _ 83. EC, 0C
        push    99                                      ; 22C0 _ 6A, 63
        push    dword [ebp+14H]                         ; 22C2 _ FF. 75, 14
        push    dword [ebp+10H]                         ; 22C5 _ FF. 75, 10
        push    dword [ebp-10H]                         ; 22C8 _ FF. 75, F0
        push    dword [ebp-0CH]                         ; 22CB _ FF. 75, F4
        call    sheet_setbuf                            ; 22CE _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 22D3 _ 83. C4, 20
        push    1                                       ; 22D6 _ 6A, 01
        push    dword [ebp+0CH]                         ; 22D8 _ FF. 75, 0C
        push    dword [ebp-0CH]                         ; 22DB _ FF. 75, F4
        push    dword [ebp+8H]                          ; 22DE _ FF. 75, 08
        call    make_window8                            ; 22E1 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 22E6 _ 83. C4, 10
        sub     esp, 8                                  ; 22E9 _ 83. EC, 08
        push    7                                       ; 22EC _ 6A, 07
        push    16                                      ; 22EE _ 6A, 10
        push    150                                     ; 22F0 _ 68, 00000096
        push    42                                      ; 22F5 _ 6A, 2A
        push    10                                      ; 22F7 _ 6A, 0A
        push    dword [ebp-0CH]                         ; 22F9 _ FF. 75, F4
        call    make_textbox8                           ; 22FC _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 2301 _ 83. C4, 20
        push    dword [ebp+1CH]                         ; 2304 _ FF. 75, 1C
        push    dword [ebp+18H]                         ; 2307 _ FF. 75, 18
        push    dword [ebp-0CH]                         ; 230A _ FF. 75, F4
        push    dword [ebp+8H]                          ; 230D _ FF. 75, 08
        call    sheet_slide                             ; 2310 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 2315 _ 83. C4, 10
        sub     esp, 4                                  ; 2318 _ 83. EC, 04
        push    dword [ebp+20H]                         ; 231B _ FF. 75, 20
        push    dword [ebp-0CH]                         ; 231E _ FF. 75, F4
        push    dword [ebp+8H]                          ; 2321 _ FF. 75, 08
        call    sheet_level_updown                      ; 2324 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 2329 _ 83. C4, 10
        mov     eax, dword [ebp-0CH]                    ; 232C _ 8B. 45, F4
        leave                                           ; 232F _ C9
        ret                                             ; 2330 _ C3
; messageBox End of function

messageBoxToTask:; Function begin
        push    ebp                                     ; 2331 _ 55
        mov     ebp, esp                                ; 2332 _ 89. E5
        sub     esp, 24                                 ; 2334 _ 83. EC, 18
        mov     eax, dword [ebp+1CH]                    ; 2337 _ 8B. 45, 1C
        imul    eax, dword [ebp+20H]                    ; 233A _ 0F AF. 45, 20
        mov     edx, eax                                ; 233E _ 89. C2
        mov     eax, dword [memman]                     ; 2340 _ A1, 00000008(d)
        sub     esp, 8                                  ; 2345 _ 83. EC, 08
        push    edx                                     ; 2348 _ 52
        push    eax                                     ; 2349 _ 50
        call    memman_alloc_4K                         ; 234A _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 234F _ 83. C4, 10
        mov     dword [ebp-10H], eax                    ; 2352 _ 89. 45, F0
        sub     esp, 12                                 ; 2355 _ 83. EC, 0C
        push    dword [ebp+8H]                          ; 2358 _ FF. 75, 08
        call    sheet_alloc                             ; 235B _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 2360 _ 83. C4, 10
        mov     dword [ebp-0CH], eax                    ; 2363 _ 89. 45, F4
        sub     esp, 12                                 ; 2366 _ 83. EC, 0C
        push    99                                      ; 2369 _ 6A, 63
        push    dword [ebp+20H]                         ; 236B _ FF. 75, 20
        push    dword [ebp+1CH]                         ; 236E _ FF. 75, 1C
        push    dword [ebp-10H]                         ; 2371 _ FF. 75, F0
        push    dword [ebp-0CH]                         ; 2374 _ FF. 75, F4
        call    sheet_setbuf                            ; 2377 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 237C _ 83. C4, 20
        push    0                                       ; 237F _ 6A, 00
        push    dword [ebp+18H]                         ; 2381 _ FF. 75, 18
        push    dword [ebp-0CH]                         ; 2384 _ FF. 75, F4
        push    dword [ebp+8H]                          ; 2387 _ FF. 75, 08
        call    make_window8                            ; 238A _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 238F _ 83. C4, 10
        call    task_alloc                              ; 2392 _ E8, FFFFFFFC(rel)
        mov     dword [ebp+0CH], eax                    ; 2397 _ 89. 45, 0C
        mov     eax, dword [ebp+0CH]                    ; 239A _ 8B. 45, 0C
        mov     dword [eax+74H], 0                      ; 239D _ C7. 40, 74, 00000000
        mov     eax, dword [ebp+0CH]                    ; 23A4 _ 8B. 45, 0C
        mov     dword [eax+78H], 1073741824             ; 23A7 _ C7. 40, 78, 40000000
        call    get_code32_addr                         ; 23AE _ E8, FFFFFFFC(rel)
        neg     eax                                     ; 23B3 _ F7. D8
        add     eax, task_b_main                        ; 23B5 _ 05, 00000000(d)
        mov     edx, eax                                ; 23BA _ 89. C2
        mov     eax, dword [ebp+0CH]                    ; 23BC _ 8B. 45, 0C
        mov     dword [eax+34H], edx                    ; 23BF _ 89. 50, 34
        mov     eax, dword [ebp+0CH]                    ; 23C2 _ 8B. 45, 0C
        mov     dword [eax+5CH], 0                      ; 23C5 _ C7. 40, 5C, 00000000
        mov     eax, dword [ebp+0CH]                    ; 23CC _ 8B. 45, 0C
        mov     dword [eax+60H], 8                      ; 23CF _ C7. 40, 60, 00000008
        mov     eax, dword [ebp+0CH]                    ; 23D6 _ 8B. 45, 0C
        mov     dword [eax+64H], 32                     ; 23D9 _ C7. 40, 64, 00000020
        mov     eax, dword [ebp+0CH]                    ; 23E0 _ 8B. 45, 0C
        mov     dword [eax+68H], 24                     ; 23E3 _ C7. 40, 68, 00000018
        mov     eax, dword [ebp+0CH]                    ; 23EA _ 8B. 45, 0C
        mov     dword [eax+6CH], 0                      ; 23ED _ C7. 40, 6C, 00000000
        mov     eax, dword [ebp+0CH]                    ; 23F4 _ 8B. 45, 0C
        mov     dword [eax+70H], 16                     ; 23F7 _ C7. 40, 70, 00000010
        mov     eax, dword [ebp+0CH]                    ; 23FE _ 8B. 45, 0C
        mov     eax, dword [eax+4CH]                    ; 2401 _ 8B. 40, 4C
        lea     edx, [eax-8H]                           ; 2404 _ 8D. 50, F8
        mov     eax, dword [ebp+0CH]                    ; 2407 _ 8B. 45, 0C
        mov     dword [eax+4CH], edx                    ; 240A _ 89. 50, 4C
        mov     eax, dword [ebp+0CH]                    ; 240D _ 8B. 45, 0C
        mov     eax, dword [eax+4CH]                    ; 2410 _ 8B. 40, 4C
        add     eax, 4                                  ; 2413 _ 83. C0, 04
        mov     edx, eax                                ; 2416 _ 89. C2
        mov     eax, dword [ebp-0CH]                    ; 2418 _ 8B. 45, F4
        mov     dword [edx], eax                        ; 241B _ 89. 02
        sub     esp, 4                                  ; 241D _ 83. EC, 04
        push    dword [ebp+14H]                         ; 2420 _ FF. 75, 14
        push    dword [ebp+10H]                         ; 2423 _ FF. 75, 10
        push    dword [ebp+0CH]                         ; 2426 _ FF. 75, 0C
        call    task_run                                ; 2429 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 242E _ 83. C4, 10
        push    dword [ebp+28H]                         ; 2431 _ FF. 75, 28
        push    dword [ebp+24H]                         ; 2434 _ FF. 75, 24
        push    dword [ebp-0CH]                         ; 2437 _ FF. 75, F4
        push    dword [ebp+8H]                          ; 243A _ FF. 75, 08
        call    sheet_slide                             ; 243D _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 2442 _ 83. C4, 10
        sub     esp, 4                                  ; 2445 _ 83. EC, 04
        push    dword [ebp+2CH]                         ; 2448 _ FF. 75, 2C
        push    dword [ebp-0CH]                         ; 244B _ FF. 75, F4
        push    dword [ebp+8H]                          ; 244E _ FF. 75, 08
        call    sheet_level_updown                      ; 2451 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 2456 _ 83. C4, 10
        mov     eax, dword [ebp-0CH]                    ; 2459 _ 8B. 45, F4
        leave                                           ; 245C _ C9
        ret                                             ; 245D _ C3
; messageBoxToTask End of function

make_window8:; Function begin
        push    ebp                                     ; 245E _ 55
        mov     ebp, esp                                ; 245F _ 89. E5
        push    ebx                                     ; 2461 _ 53
        sub     esp, 36                                 ; 2462 _ 83. EC, 24
        mov     eax, dword [ebp+14H]                    ; 2465 _ 8B. 45, 14
        mov     byte [ebp-1CH], al                      ; 2468 _ 88. 45, E4
        mov     eax, dword [ebp+0CH]                    ; 246B _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 246E _ 8B. 40, 04
        mov     dword [ebp-10H], eax                    ; 2471 _ 89. 45, F0
        mov     eax, dword [ebp+0CH]                    ; 2474 _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 2477 _ 8B. 40, 08
        mov     dword [ebp-0CH], eax                    ; 247A _ 89. 45, F4
        mov     eax, dword [ebp-10H]                    ; 247D _ 8B. 45, F0
        lea     edx, [eax-1H]                           ; 2480 _ 8D. 50, FF
        mov     eax, dword [ebp+0CH]                    ; 2483 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 2486 _ 8B. 00
        push    0                                       ; 2488 _ 6A, 00
        push    edx                                     ; 248A _ 52
        push    0                                       ; 248B _ 6A, 00
        push    0                                       ; 248D _ 6A, 00
        push    8                                       ; 248F _ 6A, 08
        push    dword [ebp-10H]                         ; 2491 _ FF. 75, F0
        push    eax                                     ; 2494 _ 50
        call    boxfill8                                ; 2495 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 249A _ 83. C4, 1C
        mov     eax, dword [ebp-10H]                    ; 249D _ 8B. 45, F0
        lea     edx, [eax-2H]                           ; 24A0 _ 8D. 50, FE
        mov     eax, dword [ebp+0CH]                    ; 24A3 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 24A6 _ 8B. 00
        push    1                                       ; 24A8 _ 6A, 01
        push    edx                                     ; 24AA _ 52
        push    1                                       ; 24AB _ 6A, 01
        push    1                                       ; 24AD _ 6A, 01
        push    7                                       ; 24AF _ 6A, 07
        push    dword [ebp-10H]                         ; 24B1 _ FF. 75, F0
        push    eax                                     ; 24B4 _ 50
        call    boxfill8                                ; 24B5 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 24BA _ 83. C4, 1C
        mov     eax, dword [ebp-0CH]                    ; 24BD _ 8B. 45, F4
        lea     edx, [eax-1H]                           ; 24C0 _ 8D. 50, FF
        mov     eax, dword [ebp+0CH]                    ; 24C3 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 24C6 _ 8B. 00
        push    edx                                     ; 24C8 _ 52
        push    0                                       ; 24C9 _ 6A, 00
        push    0                                       ; 24CB _ 6A, 00
        push    0                                       ; 24CD _ 6A, 00
        push    8                                       ; 24CF _ 6A, 08
        push    dword [ebp-10H]                         ; 24D1 _ FF. 75, F0
        push    eax                                     ; 24D4 _ 50
        call    boxfill8                                ; 24D5 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 24DA _ 83. C4, 1C
        mov     eax, dword [ebp-0CH]                    ; 24DD _ 8B. 45, F4
        lea     edx, [eax-1H]                           ; 24E0 _ 8D. 50, FF
        mov     eax, dword [ebp+0CH]                    ; 24E3 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 24E6 _ 8B. 00
        push    edx                                     ; 24E8 _ 52
        push    1                                       ; 24E9 _ 6A, 01
        push    1                                       ; 24EB _ 6A, 01
        push    1                                       ; 24ED _ 6A, 01
        push    7                                       ; 24EF _ 6A, 07
        push    dword [ebp-10H]                         ; 24F1 _ FF. 75, F0
        push    eax                                     ; 24F4 _ 50
        call    boxfill8                                ; 24F5 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 24FA _ 83. C4, 1C
        mov     eax, dword [ebp-0CH]                    ; 24FD _ 8B. 45, F4
        lea     ebx, [eax-2H]                           ; 2500 _ 8D. 58, FE
        mov     eax, dword [ebp-10H]                    ; 2503 _ 8B. 45, F0
        lea     ecx, [eax-2H]                           ; 2506 _ 8D. 48, FE
        mov     eax, dword [ebp-10H]                    ; 2509 _ 8B. 45, F0
        lea     edx, [eax-2H]                           ; 250C _ 8D. 50, FE
        mov     eax, dword [ebp+0CH]                    ; 250F _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 2512 _ 8B. 00
        push    ebx                                     ; 2514 _ 53
        push    ecx                                     ; 2515 _ 51
        push    1                                       ; 2516 _ 6A, 01
        push    edx                                     ; 2518 _ 52
        push    15                                      ; 2519 _ 6A, 0F
        push    dword [ebp-10H]                         ; 251B _ FF. 75, F0
        push    eax                                     ; 251E _ 50
        call    boxfill8                                ; 251F _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 2524 _ 83. C4, 1C
        mov     eax, dword [ebp-0CH]                    ; 2527 _ 8B. 45, F4
        lea     ebx, [eax-1H]                           ; 252A _ 8D. 58, FF
        mov     eax, dword [ebp-10H]                    ; 252D _ 8B. 45, F0
        lea     ecx, [eax-1H]                           ; 2530 _ 8D. 48, FF
        mov     eax, dword [ebp-10H]                    ; 2533 _ 8B. 45, F0
        lea     edx, [eax-1H]                           ; 2536 _ 8D. 50, FF
        mov     eax, dword [ebp+0CH]                    ; 2539 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 253C _ 8B. 00
        push    ebx                                     ; 253E _ 53
        push    ecx                                     ; 253F _ 51
        push    0                                       ; 2540 _ 6A, 00
        push    edx                                     ; 2542 _ 52
        push    0                                       ; 2543 _ 6A, 00
        push    dword [ebp-10H]                         ; 2545 _ FF. 75, F0
        push    eax                                     ; 2548 _ 50
        call    boxfill8                                ; 2549 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 254E _ 83. C4, 1C
        mov     eax, dword [ebp-0CH]                    ; 2551 _ 8B. 45, F4
        lea     ecx, [eax-3H]                           ; 2554 _ 8D. 48, FD
        mov     eax, dword [ebp-10H]                    ; 2557 _ 8B. 45, F0
        lea     edx, [eax-3H]                           ; 255A _ 8D. 50, FD
        mov     eax, dword [ebp+0CH]                    ; 255D _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 2560 _ 8B. 00
        push    ecx                                     ; 2562 _ 51
        push    edx                                     ; 2563 _ 52
        push    2                                       ; 2564 _ 6A, 02
        push    2                                       ; 2566 _ 6A, 02
        push    8                                       ; 2568 _ 6A, 08
        push    dword [ebp-10H]                         ; 256A _ FF. 75, F0
        push    eax                                     ; 256D _ 50
        call    boxfill8                                ; 256E _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 2573 _ 83. C4, 1C
        mov     eax, dword [ebp-10H]                    ; 2576 _ 8B. 45, F0
        lea     edx, [eax-4H]                           ; 2579 _ 8D. 50, FC
        mov     eax, dword [ebp+0CH]                    ; 257C _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 257F _ 8B. 00
        push    20                                      ; 2581 _ 6A, 14
        push    edx                                     ; 2583 _ 52
        push    3                                       ; 2584 _ 6A, 03
        push    3                                       ; 2586 _ 6A, 03
        push    12                                      ; 2588 _ 6A, 0C
        push    dword [ebp-10H]                         ; 258A _ FF. 75, F0
        push    eax                                     ; 258D _ 50
        call    boxfill8                                ; 258E _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 2593 _ 83. C4, 1C
        mov     eax, dword [ebp-0CH]                    ; 2596 _ 8B. 45, F4
        lea     ebx, [eax-2H]                           ; 2599 _ 8D. 58, FE
        mov     eax, dword [ebp-10H]                    ; 259C _ 8B. 45, F0
        lea     ecx, [eax-2H]                           ; 259F _ 8D. 48, FE
        mov     eax, dword [ebp-0CH]                    ; 25A2 _ 8B. 45, F4
        lea     edx, [eax-2H]                           ; 25A5 _ 8D. 50, FE
        mov     eax, dword [ebp+0CH]                    ; 25A8 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 25AB _ 8B. 00
        push    ebx                                     ; 25AD _ 53
        push    ecx                                     ; 25AE _ 51
        push    edx                                     ; 25AF _ 52
        push    1                                       ; 25B0 _ 6A, 01
        push    15                                      ; 25B2 _ 6A, 0F
        push    dword [ebp-10H]                         ; 25B4 _ FF. 75, F0
        push    eax                                     ; 25B7 _ 50
        call    boxfill8                                ; 25B8 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 25BD _ 83. C4, 1C
        mov     eax, dword [ebp-0CH]                    ; 25C0 _ 8B. 45, F4
        lea     ebx, [eax-1H]                           ; 25C3 _ 8D. 58, FF
        mov     eax, dword [ebp-10H]                    ; 25C6 _ 8B. 45, F0
        lea     ecx, [eax-1H]                           ; 25C9 _ 8D. 48, FF
        mov     eax, dword [ebp-0CH]                    ; 25CC _ 8B. 45, F4
        lea     edx, [eax-1H]                           ; 25CF _ 8D. 50, FF
        mov     eax, dword [ebp+0CH]                    ; 25D2 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 25D5 _ 8B. 00
        push    ebx                                     ; 25D7 _ 53
        push    ecx                                     ; 25D8 _ 51
        push    edx                                     ; 25D9 _ 52
        push    0                                       ; 25DA _ 6A, 00
        push    0                                       ; 25DC _ 6A, 00
        push    dword [ebp-10H]                         ; 25DE _ FF. 75, F0
        push    eax                                     ; 25E1 _ 50
        call    boxfill8                                ; 25E2 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 25E7 _ 83. C4, 1C
        movsx   eax, byte [ebp-1CH]                     ; 25EA _ 0F BE. 45, E4
        push    eax                                     ; 25EE _ 50
        push    dword [ebp+10H]                         ; 25EF _ FF. 75, 10
        push    dword [ebp+0CH]                         ; 25F2 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 25F5 _ FF. 75, 08
        call    make_wtitle8                            ; 25F8 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 25FD _ 83. C4, 10
        nop                                             ; 2600 _ 90
        mov     ebx, dword [ebp-4H]                     ; 2601 _ 8B. 5D, FC
        leave                                           ; 2604 _ C9
        ret                                             ; 2605 _ C3
; make_window8 End of function

make_wtitle8:; Function begin
        push    ebp                                     ; 2606 _ 55
        mov     ebp, esp                                ; 2607 _ 89. E5
        push    ebx                                     ; 2609 _ 53
        sub     esp, 36                                 ; 260A _ 83. EC, 24
        mov     eax, dword [ebp+14H]                    ; 260D _ 8B. 45, 14
        mov     byte [ebp-1CH], al                      ; 2610 _ 88. 45, E4
        mov     eax, dword [ebp+0CH]                    ; 2613 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 2616 _ 8B. 40, 04
        mov     dword [ebp-0CH], eax                    ; 2619 _ 89. 45, F4
        cmp     byte [ebp-1CH], 0                       ; 261C _ 80. 7D, E4, 00
        jz      ?_100                                   ; 2620 _ 74, 0A
        mov     byte [ebp-16H], 7                       ; 2622 _ C6. 45, EA, 07
        mov     byte [ebp-15H], 12                      ; 2626 _ C6. 45, EB, 0C
        jmp     ?_101                                   ; 262A _ EB, 0E

?_100:  cmp     byte [ebp-1CH], 0                       ; 262C _ 80. 7D, E4, 00
        jnz     ?_101                                   ; 2630 _ 75, 08
        mov     byte [ebp-16H], 8                       ; 2632 _ C6. 45, EA, 08
        mov     byte [ebp-15H], 15                      ; 2636 _ C6. 45, EB, 0F
?_101:  mov     eax, dword [ebp-0CH]                    ; 263A _ 8B. 45, F4
        lea     ecx, [eax-4H]                           ; 263D _ 8D. 48, FC
        movzx   eax, byte [ebp-15H]                     ; 2640 _ 0F B6. 45, EB
        movzx   edx, al                                 ; 2644 _ 0F B6. D0
        mov     eax, dword [ebp+0CH]                    ; 2647 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 264A _ 8B. 00
        push    20                                      ; 264C _ 6A, 14
        push    ecx                                     ; 264E _ 51
        push    3                                       ; 264F _ 6A, 03
        push    3                                       ; 2651 _ 6A, 03
        push    edx                                     ; 2653 _ 52
        push    dword [ebp-0CH]                         ; 2654 _ FF. 75, F4
        push    eax                                     ; 2657 _ 50
        call    boxfill8                                ; 2658 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 265D _ 83. C4, 1C
        movsx   eax, byte [ebp-16H]                     ; 2660 _ 0F BE. 45, EA
        sub     esp, 8                                  ; 2664 _ 83. EC, 08
        push    dword [ebp+10H]                         ; 2667 _ FF. 75, 10
        push    eax                                     ; 266A _ 50
        push    4                                       ; 266B _ 6A, 04
        push    8                                       ; 266D _ 6A, 08
        push    dword [ebp+0CH]                         ; 266F _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 2672 _ FF. 75, 08
        call    showString                              ; 2675 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 267A _ 83. C4, 20
        mov     dword [ebp-14H], 0                      ; 267D _ C7. 45, EC, 00000000
        jmp     ?_108                                   ; 2684 _ EB, 75

?_102:  mov     dword [ebp-10H], 0                      ; 2686 _ C7. 45, F0, 00000000
        jmp     ?_107                                   ; 268D _ EB, 62

?_103:  mov     eax, dword [ebp-14H]                    ; 268F _ 8B. 45, EC
        shl     eax, 4                                  ; 2692 _ C1. E0, 04
        mov     edx, eax                                ; 2695 _ 89. C2
        mov     eax, dword [ebp-10H]                    ; 2697 _ 8B. 45, F0
        add     eax, edx                                ; 269A _ 01. D0
        add     eax, closebtn.2589                      ; 269C _ 05, 00000260(d)
        movzx   eax, byte [eax]                         ; 26A1 _ 0F B6. 00
        mov     byte [ebp-17H], al                      ; 26A4 _ 88. 45, E9
        cmp     byte [ebp-17H], 64                      ; 26A7 _ 80. 7D, E9, 40
        jnz     ?_104                                   ; 26AB _ 75, 06
        mov     byte [ebp-17H], 0                       ; 26AD _ C6. 45, E9, 00
        jmp     ?_106                                   ; 26B1 _ EB, 16

?_104:  cmp     byte [ebp-17H], 36                      ; 26B3 _ 80. 7D, E9, 24
        jnz     ?_105                                   ; 26B7 _ 75, 06
        mov     byte [ebp-17H], 15                      ; 26B9 _ C6. 45, E9, 0F
        jmp     ?_106                                   ; 26BD _ EB, 0A

?_105:  cmp     byte [ebp-17H], 81                      ; 26BF _ 80. 7D, E9, 51
        jnz     ?_106                                   ; 26C3 _ 75, 04
        mov     byte [ebp-17H], 8                       ; 26C5 _ C6. 45, E9, 08
?_106:  mov     eax, dword [ebp+0CH]                    ; 26C9 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 26CC _ 8B. 00
        mov     edx, dword [ebp-14H]                    ; 26CE _ 8B. 55, EC
        add     edx, 5                                  ; 26D1 _ 83. C2, 05
        imul    edx, dword [ebp-0CH]                    ; 26D4 _ 0F AF. 55, F4
        mov     ecx, dword [ebp-0CH]                    ; 26D8 _ 8B. 4D, F4
        lea     ebx, [ecx-15H]                          ; 26DB _ 8D. 59, EB
        mov     ecx, dword [ebp-10H]                    ; 26DE _ 8B. 4D, F0
        add     ecx, ebx                                ; 26E1 _ 01. D9
        add     edx, ecx                                ; 26E3 _ 01. CA
        add     edx, eax                                ; 26E5 _ 01. C2
        movzx   eax, byte [ebp-17H]                     ; 26E7 _ 0F B6. 45, E9
        mov     byte [edx], al                          ; 26EB _ 88. 02
        add     dword [ebp-10H], 1                      ; 26ED _ 83. 45, F0, 01
?_107:  cmp     dword [ebp-10H], 15                     ; 26F1 _ 83. 7D, F0, 0F
        jle     ?_103                                   ; 26F5 _ 7E, 98
        add     dword [ebp-14H], 1                      ; 26F7 _ 83. 45, EC, 01
?_108:  cmp     dword [ebp-14H], 13                     ; 26FB _ 83. 7D, EC, 0D
        jle     ?_102                                   ; 26FF _ 7E, 85
        nop                                             ; 2701 _ 90
        mov     ebx, dword [ebp-4H]                     ; 2702 _ 8B. 5D, FC
        leave                                           ; 2705 _ C9
        ret                                             ; 2706 _ C3
; make_wtitle8 End of function

memman_init:; Function begin
        push    ebp                                     ; 2707 _ 55
        mov     ebp, esp                                ; 2708 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 270A _ 8B. 45, 08
        mov     dword [eax], 0                          ; 270D _ C7. 00, 00000000
        mov     eax, dword [ebp+8H]                     ; 2713 _ 8B. 45, 08
        mov     dword [eax+4H], 0                       ; 2716 _ C7. 40, 04, 00000000
        mov     eax, dword [ebp+8H]                     ; 271D _ 8B. 45, 08
        mov     dword [eax+8H], 0                       ; 2720 _ C7. 40, 08, 00000000
        mov     eax, dword [ebp+8H]                     ; 2727 _ 8B. 45, 08
        mov     dword [eax+0CH], 0                      ; 272A _ C7. 40, 0C, 00000000
        nop                                             ; 2731 _ 90
        pop     ebp                                     ; 2732 _ 5D
        ret                                             ; 2733 _ C3
; memman_init End of function

memman_total:; Function begin
        push    ebp                                     ; 2734 _ 55
        mov     ebp, esp                                ; 2735 _ 89. E5
        sub     esp, 16                                 ; 2737 _ 83. EC, 10
        mov     dword [ebp-8H], 0                       ; 273A _ C7. 45, F8, 00000000
        mov     dword [ebp-4H], 0                       ; 2741 _ C7. 45, FC, 00000000
        jmp     ?_110                                   ; 2748 _ EB, 14

?_109:  mov     eax, dword [ebp+8H]                     ; 274A _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 274D _ 8B. 55, FC
        add     edx, 2                                  ; 2750 _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 2753 _ 8B. 44 D0, 04
        add     dword [ebp-8H], eax                     ; 2757 _ 01. 45, F8
        add     dword [ebp-4H], 1                       ; 275A _ 83. 45, FC, 01
?_110:  mov     eax, dword [ebp+8H]                     ; 275E _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 2761 _ 8B. 00
        cmp     dword [ebp-4H], eax                     ; 2763 _ 39. 45, FC
        jl      ?_109                                   ; 2766 _ 7C, E2
        mov     eax, dword [ebp-8H]                     ; 2768 _ 8B. 45, F8
        leave                                           ; 276B _ C9
        ret                                             ; 276C _ C3
; memman_total End of function

memman_alloc_FF:; Function begin
        push    ebp                                     ; 276D _ 55
        mov     ebp, esp                                ; 276E _ 89. E5
        sub     esp, 16                                 ; 2770 _ 83. EC, 10
        mov     dword [ebp-8H], 0                       ; 2773 _ C7. 45, F8, 00000000
        jmp     ?_114                                   ; 277A _ E9, 00000085

?_111:  mov     eax, dword [ebp+8H]                     ; 277F _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 2782 _ 8B. 55, F8
        add     edx, 2                                  ; 2785 _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 2788 _ 8B. 44 D0, 04
        cmp     dword [ebp+0CH], eax                    ; 278C _ 39. 45, 0C
        ja      ?_113                                   ; 278F _ 77, 6F
        mov     eax, dword [ebp+8H]                     ; 2791 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 2794 _ 8B. 55, F8
        add     edx, 2                                  ; 2797 _ 83. C2, 02
        mov     eax, dword [eax+edx*8]                  ; 279A _ 8B. 04 D0
        mov     dword [ebp-4H], eax                     ; 279D _ 89. 45, FC
        mov     eax, dword [ebp+8H]                     ; 27A0 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 27A3 _ 8B. 55, F8
        add     edx, 2                                  ; 27A6 _ 83. C2, 02
        mov     edx, dword [eax+edx*8]                  ; 27A9 _ 8B. 14 D0
        mov     eax, dword [ebp+0CH]                    ; 27AC _ 8B. 45, 0C
        lea     ecx, [edx+eax]                          ; 27AF _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 27B2 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 27B5 _ 8B. 55, F8
        add     edx, 2                                  ; 27B8 _ 83. C2, 02
        mov     dword [eax+edx*8], ecx                  ; 27BB _ 89. 0C D0
        mov     eax, dword [ebp+8H]                     ; 27BE _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 27C1 _ 8B. 55, F8
        add     edx, 2                                  ; 27C4 _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 27C7 _ 8B. 44 D0, 04
        sub     eax, dword [ebp+0CH]                    ; 27CB _ 2B. 45, 0C
        mov     edx, eax                                ; 27CE _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 27D0 _ 8B. 45, 08
        mov     ecx, dword [ebp-8H]                     ; 27D3 _ 8B. 4D, F8
        add     ecx, 2                                  ; 27D6 _ 83. C1, 02
        mov     dword [eax+ecx*8+4H], edx               ; 27D9 _ 89. 54 C8, 04
        mov     eax, dword [ebp+8H]                     ; 27DD _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 27E0 _ 8B. 55, F8
        add     edx, 2                                  ; 27E3 _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 27E6 _ 8B. 44 D0, 04
        test    eax, eax                                ; 27EA _ 85. C0
        jnz     ?_112                                   ; 27EC _ 75, 0D
        mov     eax, dword [ebp+8H]                     ; 27EE _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 27F1 _ 8B. 00
        lea     edx, [eax-1H]                           ; 27F3 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 27F6 _ 8B. 45, 08
        mov     dword [eax], edx                        ; 27F9 _ 89. 10
?_112:  mov     eax, dword [ebp-4H]                     ; 27FB _ 8B. 45, FC
        jmp     ?_115                                   ; 27FE _ EB, 17

?_113:  add     dword [ebp-8H], 1                       ; 2800 _ 83. 45, F8, 01
?_114:  mov     eax, dword [ebp+8H]                     ; 2804 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 2807 _ 8B. 00
        cmp     dword [ebp-8H], eax                     ; 2809 _ 39. 45, F8
        jl      ?_111                                   ; 280C _ 0F 8C, FFFFFF6D
        mov     eax, 0                                  ; 2812 _ B8, 00000000
?_115:  leave                                           ; 2817 _ C9
        ret                                             ; 2818 _ C3
; memman_alloc_FF End of function

memman_alloc_4K:; Function begin
        push    ebp                                     ; 2819 _ 55
        mov     ebp, esp                                ; 281A _ 89. E5
        sub     esp, 16                                 ; 281C _ 83. EC, 10
        mov     eax, dword [ebp+0CH]                    ; 281F _ 8B. 45, 0C
        add     eax, 4095                               ; 2822 _ 05, 00000FFF
        and     eax, 0FFFFF000H                         ; 2827 _ 25, FFFFF000
        mov     dword [ebp+0CH], eax                    ; 282C _ 89. 45, 0C
        push    dword [ebp+0CH]                         ; 282F _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 2832 _ FF. 75, 08
        call    memman_alloc_FF                         ; 2835 _ E8, FFFFFFFC(rel)
        add     esp, 8                                  ; 283A _ 83. C4, 08
        mov     dword [ebp-4H], eax                     ; 283D _ 89. 45, FC
        mov     eax, dword [ebp-4H]                     ; 2840 _ 8B. 45, FC
        leave                                           ; 2843 _ C9
        ret                                             ; 2844 _ C3
; memman_alloc_4K End of function

memman_free:; Function begin
        push    ebp                                     ; 2845 _ 55
        mov     ebp, esp                                ; 2846 _ 89. E5
        push    ebx                                     ; 2848 _ 53
        sub     esp, 16                                 ; 2849 _ 83. EC, 10
        mov     dword [ebp-0CH], 0                      ; 284C _ C7. 45, F4, 00000000
        jmp     ?_117                                   ; 2853 _ EB, 15

?_116:  mov     eax, dword [ebp+8H]                     ; 2855 _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 2858 _ 8B. 55, F4
        add     edx, 2                                  ; 285B _ 83. C2, 02
        mov     eax, dword [eax+edx*8]                  ; 285E _ 8B. 04 D0
        cmp     dword [ebp+0CH], eax                    ; 2861 _ 39. 45, 0C
        jc      ?_118                                   ; 2864 _ 72, 10
        add     dword [ebp-0CH], 1                      ; 2866 _ 83. 45, F4, 01
?_117:  mov     eax, dword [ebp+8H]                     ; 286A _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 286D _ 8B. 00
        cmp     dword [ebp-0CH], eax                    ; 286F _ 39. 45, F4
        jl      ?_116                                   ; 2872 _ 7C, E1
        jmp     ?_119                                   ; 2874 _ EB, 01

?_118:  nop                                             ; 2876 _ 90
?_119:  cmp     dword [ebp-0CH], 0                      ; 2877 _ 83. 7D, F4, 00
        jle     ?_121                                   ; 287B _ 0F 8E, 000000BA
        mov     eax, dword [ebp-0CH]                    ; 2881 _ 8B. 45, F4
        lea     edx, [eax-1H]                           ; 2884 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 2887 _ 8B. 45, 08
        add     edx, 2                                  ; 288A _ 83. C2, 02
        mov     edx, dword [eax+edx*8]                  ; 288D _ 8B. 14 D0
        mov     eax, dword [ebp-0CH]                    ; 2890 _ 8B. 45, F4
        lea     ecx, [eax-1H]                           ; 2893 _ 8D. 48, FF
        mov     eax, dword [ebp+8H]                     ; 2896 _ 8B. 45, 08
        add     ecx, 2                                  ; 2899 _ 83. C1, 02
        mov     eax, dword [eax+ecx*8+4H]               ; 289C _ 8B. 44 C8, 04
        add     eax, edx                                ; 28A0 _ 01. D0
        cmp     dword [ebp+0CH], eax                    ; 28A2 _ 39. 45, 0C
        jne     ?_121                                   ; 28A5 _ 0F 85, 00000090
        mov     eax, dword [ebp-0CH]                    ; 28AB _ 8B. 45, F4
        lea     edx, [eax-1H]                           ; 28AE _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 28B1 _ 8B. 45, 08
        add     edx, 2                                  ; 28B4 _ 83. C2, 02
        mov     edx, dword [eax+edx*8+4H]               ; 28B7 _ 8B. 54 D0, 04
        mov     eax, dword [ebp-0CH]                    ; 28BB _ 8B. 45, F4
        lea     ebx, [eax-1H]                           ; 28BE _ 8D. 58, FF
        mov     eax, dword [ebp+10H]                    ; 28C1 _ 8B. 45, 10
        lea     ecx, [edx+eax]                          ; 28C4 _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 28C7 _ 8B. 45, 08
        lea     edx, [ebx+2H]                           ; 28CA _ 8D. 53, 02
        mov     dword [eax+edx*8+4H], ecx               ; 28CD _ 89. 4C D0, 04
        mov     eax, dword [ebp+8H]                     ; 28D1 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 28D4 _ 8B. 00
        cmp     dword [ebp-0CH], eax                    ; 28D6 _ 39. 45, F4
        jge     ?_120                                   ; 28D9 _ 7D, 56
        mov     edx, dword [ebp+0CH]                    ; 28DB _ 8B. 55, 0C
        mov     eax, dword [ebp+10H]                    ; 28DE _ 8B. 45, 10
        lea     ecx, [edx+eax]                          ; 28E1 _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 28E4 _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 28E7 _ 8B. 55, F4
        add     edx, 2                                  ; 28EA _ 83. C2, 02
        mov     eax, dword [eax+edx*8]                  ; 28ED _ 8B. 04 D0
        cmp     ecx, eax                                ; 28F0 _ 39. C1
        jnz     ?_120                                   ; 28F2 _ 75, 3D
        mov     eax, dword [ebp-0CH]                    ; 28F4 _ 8B. 45, F4
        lea     edx, [eax-1H]                           ; 28F7 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 28FA _ 8B. 45, 08
        add     edx, 2                                  ; 28FD _ 83. C2, 02
        mov     edx, dword [eax+edx*8+4H]               ; 2900 _ 8B. 54 D0, 04
        mov     eax, dword [ebp+8H]                     ; 2904 _ 8B. 45, 08
        mov     ecx, dword [ebp-0CH]                    ; 2907 _ 8B. 4D, F4
        add     ecx, 2                                  ; 290A _ 83. C1, 02
        mov     eax, dword [eax+ecx*8+4H]               ; 290D _ 8B. 44 C8, 04
        mov     ecx, dword [ebp-0CH]                    ; 2911 _ 8B. 4D, F4
        lea     ebx, [ecx-1H]                           ; 2914 _ 8D. 59, FF
        lea     ecx, [edx+eax]                          ; 2917 _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 291A _ 8B. 45, 08
        lea     edx, [ebx+2H]                           ; 291D _ 8D. 53, 02
        mov     dword [eax+edx*8+4H], ecx               ; 2920 _ 89. 4C D0, 04
        mov     eax, dword [ebp+8H]                     ; 2924 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 2927 _ 8B. 00
        lea     edx, [eax-1H]                           ; 2929 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 292C _ 8B. 45, 08
        mov     dword [eax], edx                        ; 292F _ 89. 10
?_120:  mov     eax, 0                                  ; 2931 _ B8, 00000000
        jmp     ?_127                                   ; 2936 _ E9, 0000011C

?_121:  mov     eax, dword [ebp+8H]                     ; 293B _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 293E _ 8B. 00
        cmp     dword [ebp-0CH], eax                    ; 2940 _ 39. 45, F4
        jge     ?_122                                   ; 2943 _ 7D, 52
        mov     edx, dword [ebp+0CH]                    ; 2945 _ 8B. 55, 0C
        mov     eax, dword [ebp+10H]                    ; 2948 _ 8B. 45, 10
        lea     ecx, [edx+eax]                          ; 294B _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 294E _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 2951 _ 8B. 55, F4
        add     edx, 2                                  ; 2954 _ 83. C2, 02
        mov     eax, dword [eax+edx*8]                  ; 2957 _ 8B. 04 D0
        cmp     ecx, eax                                ; 295A _ 39. C1
        jnz     ?_122                                   ; 295C _ 75, 39
        mov     eax, dword [ebp+8H]                     ; 295E _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 2961 _ 8B. 55, F4
        lea     ecx, [edx+2H]                           ; 2964 _ 8D. 4A, 02
        mov     edx, dword [ebp+0CH]                    ; 2967 _ 8B. 55, 0C
        mov     dword [eax+ecx*8], edx                  ; 296A _ 89. 14 C8
        mov     eax, dword [ebp+8H]                     ; 296D _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 2970 _ 8B. 55, F4
        add     edx, 2                                  ; 2973 _ 83. C2, 02
        mov     edx, dword [eax+edx*8+4H]               ; 2976 _ 8B. 54 D0, 04
        mov     eax, dword [ebp+10H]                    ; 297A _ 8B. 45, 10
        lea     ecx, [edx+eax]                          ; 297D _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 2980 _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 2983 _ 8B. 55, F4
        add     edx, 2                                  ; 2986 _ 83. C2, 02
        mov     dword [eax+edx*8+4H], ecx               ; 2989 _ 89. 4C D0, 04
        mov     eax, 0                                  ; 298D _ B8, 00000000
        jmp     ?_127                                   ; 2992 _ E9, 000000C0

?_122:  mov     eax, dword [ebp+8H]                     ; 2997 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 299A _ 8B. 00
        cmp     eax, 4095                               ; 299C _ 3D, 00000FFF
        jg      ?_126                                   ; 29A1 _ 0F 8F, 00000087
        mov     eax, dword [ebp+8H]                     ; 29A7 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 29AA _ 8B. 00
        mov     dword [ebp-8H], eax                     ; 29AC _ 89. 45, F8
        jmp     ?_124                                   ; 29AF _ EB, 28

?_123:  mov     eax, dword [ebp-8H]                     ; 29B1 _ 8B. 45, F8
        lea     edx, [eax-1H]                           ; 29B4 _ 8D. 50, FF
        mov     ecx, dword [ebp+8H]                     ; 29B7 _ 8B. 4D, 08
        mov     eax, dword [ebp-8H]                     ; 29BA _ 8B. 45, F8
        lea     ebx, [eax+2H]                           ; 29BD _ 8D. 58, 02
        mov     eax, dword [ebp+8H]                     ; 29C0 _ 8B. 45, 08
        add     edx, 2                                  ; 29C3 _ 83. C2, 02
        lea     edx, [eax+edx*8]                        ; 29C6 _ 8D. 14 D0
        mov     eax, dword [edx]                        ; 29C9 _ 8B. 02
        mov     edx, dword [edx+4H]                     ; 29CB _ 8B. 52, 04
        mov     dword [ecx+ebx*8], eax                  ; 29CE _ 89. 04 D9
        mov     dword [ecx+ebx*8+4H], edx               ; 29D1 _ 89. 54 D9, 04
        sub     dword [ebp-8H], 1                       ; 29D5 _ 83. 6D, F8, 01
?_124:  mov     eax, dword [ebp-8H]                     ; 29D9 _ 8B. 45, F8
        cmp     eax, dword [ebp-0CH]                    ; 29DC _ 3B. 45, F4
        jg      ?_123                                   ; 29DF _ 7F, D0
        mov     eax, dword [ebp+8H]                     ; 29E1 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 29E4 _ 8B. 00
        lea     edx, [eax+1H]                           ; 29E6 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 29E9 _ 8B. 45, 08
        mov     dword [eax], edx                        ; 29EC _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 29EE _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 29F1 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 29F4 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 29F7 _ 8B. 00
        cmp     edx, eax                                ; 29F9 _ 39. C2
        jge     ?_125                                   ; 29FB _ 7D, 0B
        mov     eax, dword [ebp+8H]                     ; 29FD _ 8B. 45, 08
        mov     edx, dword [eax]                        ; 2A00 _ 8B. 10
        mov     eax, dword [ebp+8H]                     ; 2A02 _ 8B. 45, 08
        mov     dword [eax+4H], edx                     ; 2A05 _ 89. 50, 04
?_125:  mov     eax, dword [ebp+8H]                     ; 2A08 _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 2A0B _ 8B. 55, F4
        lea     ecx, [edx+2H]                           ; 2A0E _ 8D. 4A, 02
        mov     edx, dword [ebp+0CH]                    ; 2A11 _ 8B. 55, 0C
        mov     dword [eax+ecx*8], edx                  ; 2A14 _ 89. 14 C8
        mov     eax, dword [ebp+8H]                     ; 2A17 _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 2A1A _ 8B. 55, F4
        lea     ecx, [edx+2H]                           ; 2A1D _ 8D. 4A, 02
        mov     edx, dword [ebp+10H]                    ; 2A20 _ 8B. 55, 10
        mov     dword [eax+ecx*8+4H], edx               ; 2A23 _ 89. 54 C8, 04
        mov     eax, 0                                  ; 2A27 _ B8, 00000000
        jmp     ?_127                                   ; 2A2C _ EB, 29

?_126:  mov     eax, dword [ebp+8H]                     ; 2A2E _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 2A31 _ 8B. 40, 0C
        lea     edx, [eax+1H]                           ; 2A34 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 2A37 _ 8B. 45, 08
        mov     dword [eax+0CH], edx                    ; 2A3A _ 89. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 2A3D _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 2A40 _ 8B. 40, 08
        mov     edx, eax                                ; 2A43 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 2A45 _ 8B. 45, 10
        add     eax, edx                                ; 2A48 _ 01. D0
        mov     edx, eax                                ; 2A4A _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 2A4C _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 2A4F _ 89. 50, 08
        mov     eax, 4294967295                         ; 2A52 _ B8, FFFFFFFF
?_127:  add     esp, 16                                 ; 2A57 _ 83. C4, 10
        pop     ebx                                     ; 2A5A _ 5B
        pop     ebp                                     ; 2A5B _ 5D
        ret                                             ; 2A5C _ C3
; memman_free End of function

memman_free_4K:; Function begin
        push    ebp                                     ; 2A5D _ 55
        mov     ebp, esp                                ; 2A5E _ 89. E5
        sub     esp, 16                                 ; 2A60 _ 83. EC, 10
        mov     eax, dword [ebp+10H]                    ; 2A63 _ 8B. 45, 10
        add     eax, 4095                               ; 2A66 _ 05, 00000FFF
        and     eax, 0FFFFF000H                         ; 2A6B _ 25, FFFFF000
        mov     dword [ebp+10H], eax                    ; 2A70 _ 89. 45, 10
        push    dword [ebp+10H]                         ; 2A73 _ FF. 75, 10
        push    dword [ebp+0CH]                         ; 2A76 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 2A79 _ FF. 75, 08
        call    memman_free                             ; 2A7C _ E8, FFFFFFFC(rel)
        add     esp, 12                                 ; 2A81 _ 83. C4, 0C
        mov     dword [ebp-4H], eax                     ; 2A84 _ 89. 45, FC
        mov     eax, dword [ebp-4H]                     ; 2A87 _ 8B. 45, FC
        leave                                           ; 2A8A _ C9
        ret                                             ; 2A8B _ C3
; memman_free_4K End of function

shtctl_init:; Function begin
        push    ebp                                     ; 2A8C _ 55
        mov     ebp, esp                                ; 2A8D _ 89. E5
        sub     esp, 24                                 ; 2A8F _ 83. EC, 18
        sub     esp, 8                                  ; 2A92 _ 83. EC, 08
        push    9232                                    ; 2A95 _ 68, 00002410
        push    dword [ebp+8H]                          ; 2A9A _ FF. 75, 08
        call    memman_alloc_4K                         ; 2A9D _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 2AA2 _ 83. C4, 10
        mov     dword [ebp-0CH], eax                    ; 2AA5 _ 89. 45, F4
        cmp     dword [ebp-0CH], 0                      ; 2AA8 _ 83. 7D, F4, 00
        jnz     ?_128                                   ; 2AAC _ 75, 0A
        mov     eax, 0                                  ; 2AAE _ B8, 00000000
        jmp     ?_132                                   ; 2AB3 _ E9, 0000009A

?_128:  mov     eax, dword [ebp+10H]                    ; 2AB8 _ 8B. 45, 10
        imul    eax, dword [ebp+14H]                    ; 2ABB _ 0F AF. 45, 14
        sub     esp, 8                                  ; 2ABF _ 83. EC, 08
        push    eax                                     ; 2AC2 _ 50
        push    dword [ebp+8H]                          ; 2AC3 _ FF. 75, 08
        call    memman_alloc_4K                         ; 2AC6 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 2ACB _ 83. C4, 10
        mov     edx, eax                                ; 2ACE _ 89. C2
        mov     eax, dword [ebp-0CH]                    ; 2AD0 _ 8B. 45, F4
        mov     dword [eax+4H], edx                     ; 2AD3 _ 89. 50, 04
        mov     eax, dword [ebp-0CH]                    ; 2AD6 _ 8B. 45, F4
        mov     eax, dword [eax+4H]                     ; 2AD9 _ 8B. 40, 04
        test    eax, eax                                ; 2ADC _ 85. C0
        jnz     ?_129                                   ; 2ADE _ 75, 1E
        mov     eax, dword [ebp-0CH]                    ; 2AE0 _ 8B. 45, F4
        sub     esp, 4                                  ; 2AE3 _ 83. EC, 04
        push    9232                                    ; 2AE6 _ 68, 00002410
        push    eax                                     ; 2AEB _ 50
        push    dword [ebp+8H]                          ; 2AEC _ FF. 75, 08
        call    memman_free_4K                          ; 2AEF _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 2AF4 _ 83. C4, 10
        mov     eax, 0                                  ; 2AF7 _ B8, 00000000
        jmp     ?_132                                   ; 2AFC _ EB, 54

?_129:  mov     eax, dword [ebp-0CH]                    ; 2AFE _ 8B. 45, F4
        mov     edx, dword [ebp+0CH]                    ; 2B01 _ 8B. 55, 0C
        mov     dword [eax], edx                        ; 2B04 _ 89. 10
        mov     eax, dword [ebp-0CH]                    ; 2B06 _ 8B. 45, F4
        mov     edx, dword [ebp+10H]                    ; 2B09 _ 8B. 55, 10
        mov     dword [eax+8H], edx                     ; 2B0C _ 89. 50, 08
        mov     eax, dword [ebp-0CH]                    ; 2B0F _ 8B. 45, F4
        mov     edx, dword [ebp+14H]                    ; 2B12 _ 8B. 55, 14
        mov     dword [eax+0CH], edx                    ; 2B15 _ 89. 50, 0C
        mov     eax, dword [ebp-0CH]                    ; 2B18 _ 8B. 45, F4
        mov     dword [eax+10H], -1                     ; 2B1B _ C7. 40, 10, FFFFFFFF
        mov     dword [ebp-10H], 0                      ; 2B22 _ C7. 45, F0, 00000000
        jmp     ?_131                                   ; 2B29 _ EB, 1B

?_130:  mov     eax, dword [ebp-0CH]                    ; 2B2B _ 8B. 45, F4
        mov     edx, dword [ebp-10H]                    ; 2B2E _ 8B. 55, F0
        add     edx, 33                                 ; 2B31 _ 83. C2, 21
        shl     edx, 5                                  ; 2B34 _ C1. E2, 05
        add     eax, edx                                ; 2B37 _ 01. D0
        add     eax, 16                                 ; 2B39 _ 83. C0, 10
        mov     dword [eax], 0                          ; 2B3C _ C7. 00, 00000000
        add     dword [ebp-10H], 1                      ; 2B42 _ 83. 45, F0, 01
?_131:  cmp     dword [ebp-10H], 255                    ; 2B46 _ 81. 7D, F0, 000000FF
        jle     ?_130                                   ; 2B4D _ 7E, DC
        mov     eax, dword [ebp-0CH]                    ; 2B4F _ 8B. 45, F4
?_132:  leave                                           ; 2B52 _ C9
        ret                                             ; 2B53 _ C3
; shtctl_init End of function

sheet_alloc:; Function begin
        push    ebp                                     ; 2B54 _ 55
        mov     ebp, esp                                ; 2B55 _ 89. E5
        sub     esp, 16                                 ; 2B57 _ 83. EC, 10
        mov     dword [ebp-8H], 0                       ; 2B5A _ C7. 45, F8, 00000000
        jmp     ?_135                                   ; 2B61 _ EB, 4B

?_133:  mov     eax, dword [ebp+8H]                     ; 2B63 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 2B66 _ 8B. 55, F8
        add     edx, 33                                 ; 2B69 _ 83. C2, 21
        shl     edx, 5                                  ; 2B6C _ C1. E2, 05
        add     eax, edx                                ; 2B6F _ 01. D0
        add     eax, 16                                 ; 2B71 _ 83. C0, 10
        mov     eax, dword [eax]                        ; 2B74 _ 8B. 00
        test    eax, eax                                ; 2B76 _ 85. C0
        jnz     ?_134                                   ; 2B78 _ 75, 30
        mov     eax, dword [ebp-8H]                     ; 2B7A _ 8B. 45, F8
        shl     eax, 5                                  ; 2B7D _ C1. E0, 05
        lea     edx, [eax+410H]                         ; 2B80 _ 8D. 90, 00000410
        mov     eax, dword [ebp+8H]                     ; 2B86 _ 8B. 45, 08
        add     eax, edx                                ; 2B89 _ 01. D0
        add     eax, 4                                  ; 2B8B _ 83. C0, 04
        mov     dword [ebp-4H], eax                     ; 2B8E _ 89. 45, FC
        mov     eax, dword [ebp-4H]                     ; 2B91 _ 8B. 45, FC
        mov     dword [eax+1CH], 1                      ; 2B94 _ C7. 40, 1C, 00000001
        mov     eax, dword [ebp-4H]                     ; 2B9B _ 8B. 45, FC
        mov     dword [eax+18H], -1                     ; 2B9E _ C7. 40, 18, FFFFFFFF
        mov     eax, dword [ebp-4H]                     ; 2BA5 _ 8B. 45, FC
        jmp     ?_136                                   ; 2BA8 _ EB, 12

?_134:  add     dword [ebp-8H], 1                       ; 2BAA _ 83. 45, F8, 01
?_135:  cmp     dword [ebp-8H], 255                     ; 2BAE _ 81. 7D, F8, 000000FF
        jle     ?_133                                   ; 2BB5 _ 7E, AC
        mov     eax, 0                                  ; 2BB7 _ B8, 00000000
?_136:  leave                                           ; 2BBC _ C9
        ret                                             ; 2BBD _ C3
; sheet_alloc End of function

sheet_setbuf:; Function begin
        push    ebp                                     ; 2BBE _ 55
        mov     ebp, esp                                ; 2BBF _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 2BC1 _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 2BC4 _ 8B. 55, 0C
        mov     dword [eax], edx                        ; 2BC7 _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 2BC9 _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 2BCC _ 8B. 55, 10
        mov     dword [eax+4H], edx                     ; 2BCF _ 89. 50, 04
        mov     eax, dword [ebp+8H]                     ; 2BD2 _ 8B. 45, 08
        mov     edx, dword [ebp+14H]                    ; 2BD5 _ 8B. 55, 14
        mov     dword [eax+8H], edx                     ; 2BD8 _ 89. 50, 08
        mov     eax, dword [ebp+8H]                     ; 2BDB _ 8B. 45, 08
        mov     edx, dword [ebp+18H]                    ; 2BDE _ 8B. 55, 18
        mov     dword [eax+14H], edx                    ; 2BE1 _ 89. 50, 14
        nop                                             ; 2BE4 _ 90
        pop     ebp                                     ; 2BE5 _ 5D
        ret                                             ; 2BE6 _ C3
; sheet_setbuf End of function

sheet_level_updown:; Function begin
        push    ebp                                     ; 2BE7 _ 55
        mov     ebp, esp                                ; 2BE8 _ 89. E5
        push    esi                                     ; 2BEA _ 56
        push    ebx                                     ; 2BEB _ 53
        sub     esp, 32                                 ; 2BEC _ 83. EC, 20
        mov     eax, dword [ebp+0CH]                    ; 2BEF _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 2BF2 _ 8B. 40, 18
        mov     dword [ebp-0CH], eax                    ; 2BF5 _ 89. 45, F4
        mov     eax, dword [ebp+8H]                     ; 2BF8 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 2BFB _ 8B. 40, 10
        add     eax, 1                                  ; 2BFE _ 83. C0, 01
        cmp     dword [ebp+10H], eax                    ; 2C01 _ 39. 45, 10
        jle     ?_137                                   ; 2C04 _ 7E, 0C
        mov     eax, dword [ebp+8H]                     ; 2C06 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 2C09 _ 8B. 40, 10
        add     eax, 1                                  ; 2C0C _ 83. C0, 01
        mov     dword [ebp+10H], eax                    ; 2C0F _ 89. 45, 10
?_137:  cmp     dword [ebp+10H], -1                     ; 2C12 _ 83. 7D, 10, FF
        jge     ?_138                                   ; 2C16 _ 7D, 07
        mov     dword [ebp+10H], -1                     ; 2C18 _ C7. 45, 10, FFFFFFFF
?_138:  mov     eax, dword [ebp+0CH]                    ; 2C1F _ 8B. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 2C22 _ 8B. 55, 10
        mov     dword [eax+18H], edx                    ; 2C25 _ 89. 50, 18
        mov     eax, dword [ebp-0CH]                    ; 2C28 _ 8B. 45, F4
        cmp     eax, dword [ebp+10H]                    ; 2C2B _ 3B. 45, 10
        jle     ?_145                                   ; 2C2E _ 0F 8E, 000001D5
        cmp     dword [ebp+10H], 0                      ; 2C34 _ 83. 7D, 10, 00
        js      ?_141                                   ; 2C38 _ 0F 88, 000000E2
        mov     eax, dword [ebp-0CH]                    ; 2C3E _ 8B. 45, F4
        mov     dword [ebp-1CH], eax                    ; 2C41 _ 89. 45, E4
        jmp     ?_140                                   ; 2C44 _ EB, 34

?_139:  mov     eax, dword [ebp-1CH]                    ; 2C46 _ 8B. 45, E4
        lea     edx, [eax-1H]                           ; 2C49 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 2C4C _ 8B. 45, 08
        add     edx, 4                                  ; 2C4F _ 83. C2, 04
        mov     edx, dword [eax+edx*4+4H]               ; 2C52 _ 8B. 54 90, 04
        mov     eax, dword [ebp+8H]                     ; 2C56 _ 8B. 45, 08
        mov     ecx, dword [ebp-1CH]                    ; 2C59 _ 8B. 4D, E4
        add     ecx, 4                                  ; 2C5C _ 83. C1, 04
        mov     dword [eax+ecx*4+4H], edx               ; 2C5F _ 89. 54 88, 04
        mov     eax, dword [ebp+8H]                     ; 2C63 _ 8B. 45, 08
        mov     edx, dword [ebp-1CH]                    ; 2C66 _ 8B. 55, E4
        add     edx, 4                                  ; 2C69 _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 2C6C _ 8B. 44 90, 04
        mov     edx, dword [ebp-1CH]                    ; 2C70 _ 8B. 55, E4
        mov     dword [eax+18H], edx                    ; 2C73 _ 89. 50, 18
        sub     dword [ebp-1CH], 1                      ; 2C76 _ 83. 6D, E4, 01
?_140:  mov     eax, dword [ebp-1CH]                    ; 2C7A _ 8B. 45, E4
        cmp     eax, dword [ebp+10H]                    ; 2C7D _ 3B. 45, 10
        jg      ?_139                                   ; 2C80 _ 7F, C4
        mov     eax, dword [ebp+8H]                     ; 2C82 _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 2C85 _ 8B. 55, 10
        lea     ecx, [edx+4H]                           ; 2C88 _ 8D. 4A, 04
        mov     edx, dword [ebp+0CH]                    ; 2C8B _ 8B. 55, 0C
        mov     dword [eax+ecx*4+4H], edx               ; 2C8E _ 89. 54 88, 04
        mov     eax, dword [ebp+10H]                    ; 2C92 _ 8B. 45, 10
        lea     esi, [eax+1H]                           ; 2C95 _ 8D. 70, 01
        mov     eax, dword [ebp+0CH]                    ; 2C98 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 2C9B _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 2C9E _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 2CA1 _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 2CA4 _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 2CA7 _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 2CAA _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 2CAD _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 2CB0 _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 2CB3 _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 2CB6 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 2CB9 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 2CBC _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 2CBF _ 8B. 40, 0C
        sub     esp, 8                                  ; 2CC2 _ 83. EC, 08
        push    esi                                     ; 2CC5 _ 56
        push    ebx                                     ; 2CC6 _ 53
        push    ecx                                     ; 2CC7 _ 51
        push    edx                                     ; 2CC8 _ 52
        push    eax                                     ; 2CC9 _ 50
        push    dword [ebp+8H]                          ; 2CCA _ FF. 75, 08
        call    sheet_refreshmap                        ; 2CCD _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 2CD2 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 2CD5 _ 8B. 45, 10
        lea     esi, [eax+1H]                           ; 2CD8 _ 8D. 70, 01
        mov     eax, dword [ebp+0CH]                    ; 2CDB _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 2CDE _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 2CE1 _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 2CE4 _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 2CE7 _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 2CEA _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 2CED _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 2CF0 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 2CF3 _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 2CF6 _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 2CF9 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 2CFC _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 2CFF _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 2D02 _ 8B. 40, 0C
        sub     esp, 4                                  ; 2D05 _ 83. EC, 04
        push    dword [ebp-0CH]                         ; 2D08 _ FF. 75, F4
        push    esi                                     ; 2D0B _ 56
        push    ebx                                     ; 2D0C _ 53
        push    ecx                                     ; 2D0D _ 51
        push    edx                                     ; 2D0E _ 52
        push    eax                                     ; 2D0F _ 50
        push    dword [ebp+8H]                          ; 2D10 _ FF. 75, 08
        call    sheet_refresh_new                       ; 2D13 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 2D18 _ 83. C4, 20
        jmp     ?_152                                   ; 2D1B _ E9, 00000244

?_141:  mov     eax, dword [ebp+8H]                     ; 2D20 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 2D23 _ 8B. 40, 10
        cmp     dword [ebp-0CH], eax                    ; 2D26 _ 39. 45, F4
        jge     ?_144                                   ; 2D29 _ 7D, 47
        mov     eax, dword [ebp-0CH]                    ; 2D2B _ 8B. 45, F4
        mov     dword [ebp-18H], eax                    ; 2D2E _ 89. 45, E8
        jmp     ?_143                                   ; 2D31 _ EB, 34

?_142:  mov     eax, dword [ebp-18H]                    ; 2D33 _ 8B. 45, E8
        lea     edx, [eax+1H]                           ; 2D36 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 2D39 _ 8B. 45, 08
        add     edx, 4                                  ; 2D3C _ 83. C2, 04
        mov     edx, dword [eax+edx*4+4H]               ; 2D3F _ 8B. 54 90, 04
        mov     eax, dword [ebp+8H]                     ; 2D43 _ 8B. 45, 08
        mov     ecx, dword [ebp-18H]                    ; 2D46 _ 8B. 4D, E8
        add     ecx, 4                                  ; 2D49 _ 83. C1, 04
        mov     dword [eax+ecx*4+4H], edx               ; 2D4C _ 89. 54 88, 04
        mov     eax, dword [ebp+8H]                     ; 2D50 _ 8B. 45, 08
        mov     edx, dword [ebp-18H]                    ; 2D53 _ 8B. 55, E8
        add     edx, 4                                  ; 2D56 _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 2D59 _ 8B. 44 90, 04
        mov     edx, dword [ebp-18H]                    ; 2D5D _ 8B. 55, E8
        mov     dword [eax+18H], edx                    ; 2D60 _ 89. 50, 18
        add     dword [ebp-18H], 1                      ; 2D63 _ 83. 45, E8, 01
?_143:  mov     eax, dword [ebp+8H]                     ; 2D67 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 2D6A _ 8B. 40, 10
        cmp     dword [ebp-18H], eax                    ; 2D6D _ 39. 45, E8
        jl      ?_142                                   ; 2D70 _ 7C, C1
?_144:  mov     eax, dword [ebp+8H]                     ; 2D72 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 2D75 _ 8B. 40, 10
        lea     edx, [eax-1H]                           ; 2D78 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 2D7B _ 8B. 45, 08
        mov     dword [eax+10H], edx                    ; 2D7E _ 89. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 2D81 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 2D84 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 2D87 _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 2D8A _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 2D8D _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 2D90 _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 2D93 _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 2D96 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 2D99 _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 2D9C _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 2D9F _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 2DA2 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 2DA5 _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 2DA8 _ 8B. 40, 0C
        sub     esp, 8                                  ; 2DAB _ 83. EC, 08
        push    0                                       ; 2DAE _ 6A, 00
        push    ebx                                     ; 2DB0 _ 53
        push    ecx                                     ; 2DB1 _ 51
        push    edx                                     ; 2DB2 _ 52
        push    eax                                     ; 2DB3 _ 50
        push    dword [ebp+8H]                          ; 2DB4 _ FF. 75, 08
        call    sheet_refreshmap                        ; 2DB7 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 2DBC _ 83. C4, 20
        mov     eax, dword [ebp-0CH]                    ; 2DBF _ 8B. 45, F4
        lea     esi, [eax-1H]                           ; 2DC2 _ 8D. 70, FF
        mov     eax, dword [ebp+0CH]                    ; 2DC5 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 2DC8 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 2DCB _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 2DCE _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 2DD1 _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 2DD4 _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 2DD7 _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 2DDA _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 2DDD _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 2DE0 _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 2DE3 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 2DE6 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 2DE9 _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 2DEC _ 8B. 40, 0C
        sub     esp, 4                                  ; 2DEF _ 83. EC, 04
        push    esi                                     ; 2DF2 _ 56
        push    0                                       ; 2DF3 _ 6A, 00
        push    ebx                                     ; 2DF5 _ 53
        push    ecx                                     ; 2DF6 _ 51
        push    edx                                     ; 2DF7 _ 52
        push    eax                                     ; 2DF8 _ 50
        push    dword [ebp+8H]                          ; 2DF9 _ FF. 75, 08
        call    sheet_refresh_new                       ; 2DFC _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 2E01 _ 83. C4, 20
        jmp     ?_152                                   ; 2E04 _ E9, 0000015B

?_145:  mov     eax, dword [ebp-0CH]                    ; 2E09 _ 8B. 45, F4
        cmp     eax, dword [ebp+10H]                    ; 2E0C _ 3B. 45, 10
        jge     ?_152                                   ; 2E0F _ 0F 8D, 0000014F
        cmp     dword [ebp-0CH], 0                      ; 2E15 _ 83. 7D, F4, 00
        js      ?_148                                   ; 2E19 _ 78, 56
        mov     eax, dword [ebp-0CH]                    ; 2E1B _ 8B. 45, F4
        mov     dword [ebp-14H], eax                    ; 2E1E _ 89. 45, EC
        jmp     ?_147                                   ; 2E21 _ EB, 34

?_146:  mov     eax, dword [ebp-14H]                    ; 2E23 _ 8B. 45, EC
        lea     edx, [eax+1H]                           ; 2E26 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 2E29 _ 8B. 45, 08
        add     edx, 4                                  ; 2E2C _ 83. C2, 04
        mov     edx, dword [eax+edx*4+4H]               ; 2E2F _ 8B. 54 90, 04
        mov     eax, dword [ebp+8H]                     ; 2E33 _ 8B. 45, 08
        mov     ecx, dword [ebp-14H]                    ; 2E36 _ 8B. 4D, EC
        add     ecx, 4                                  ; 2E39 _ 83. C1, 04
        mov     dword [eax+ecx*4+4H], edx               ; 2E3C _ 89. 54 88, 04
        mov     eax, dword [ebp+8H]                     ; 2E40 _ 8B. 45, 08
        mov     edx, dword [ebp-14H]                    ; 2E43 _ 8B. 55, EC
        add     edx, 4                                  ; 2E46 _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 2E49 _ 8B. 44 90, 04
        mov     edx, dword [ebp-14H]                    ; 2E4D _ 8B. 55, EC
        mov     dword [eax+18H], edx                    ; 2E50 _ 89. 50, 18
        add     dword [ebp-14H], 1                      ; 2E53 _ 83. 45, EC, 01
?_147:  mov     eax, dword [ebp-14H]                    ; 2E57 _ 8B. 45, EC
        cmp     eax, dword [ebp+10H]                    ; 2E5A _ 3B. 45, 10
        jl      ?_146                                   ; 2E5D _ 7C, C4
        mov     eax, dword [ebp+8H]                     ; 2E5F _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 2E62 _ 8B. 55, 10
        lea     ecx, [edx+4H]                           ; 2E65 _ 8D. 4A, 04
        mov     edx, dword [ebp+0CH]                    ; 2E68 _ 8B. 55, 0C
        mov     dword [eax+ecx*4+4H], edx               ; 2E6B _ 89. 54 88, 04
        jmp     ?_151                                   ; 2E6F _ EB, 72

?_148:  cmp     dword [ebp-0CH], 0                      ; 2E71 _ 83. 7D, F4, 00
        jns     ?_151                                   ; 2E75 _ 79, 6C
        mov     eax, dword [ebp+8H]                     ; 2E77 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 2E7A _ 8B. 40, 10
        mov     dword [ebp-10H], eax                    ; 2E7D _ 89. 45, F0
        jmp     ?_150                                   ; 2E80 _ EB, 3A

?_149:  mov     eax, dword [ebp-10H]                    ; 2E82 _ 8B. 45, F0
        lea     ecx, [eax+1H]                           ; 2E85 _ 8D. 48, 01
        mov     eax, dword [ebp+8H]                     ; 2E88 _ 8B. 45, 08
        mov     edx, dword [ebp-10H]                    ; 2E8B _ 8B. 55, F0
        add     edx, 4                                  ; 2E8E _ 83. C2, 04
        mov     edx, dword [eax+edx*4+4H]               ; 2E91 _ 8B. 54 90, 04
        mov     eax, dword [ebp+8H]                     ; 2E95 _ 8B. 45, 08
        add     ecx, 4                                  ; 2E98 _ 83. C1, 04
        mov     dword [eax+ecx*4+4H], edx               ; 2E9B _ 89. 54 88, 04
        mov     eax, dword [ebp-10H]                    ; 2E9F _ 8B. 45, F0
        lea     edx, [eax+1H]                           ; 2EA2 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 2EA5 _ 8B. 45, 08
        add     edx, 4                                  ; 2EA8 _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 2EAB _ 8B. 44 90, 04
        mov     edx, dword [ebp-10H]                    ; 2EAF _ 8B. 55, F0
        add     edx, 1                                  ; 2EB2 _ 83. C2, 01
        mov     dword [eax+18H], edx                    ; 2EB5 _ 89. 50, 18
        sub     dword [ebp-10H], 1                      ; 2EB8 _ 83. 6D, F0, 01
?_150:  mov     eax, dword [ebp-10H]                    ; 2EBC _ 8B. 45, F0
        cmp     eax, dword [ebp+10H]                    ; 2EBF _ 3B. 45, 10
        jge     ?_149                                   ; 2EC2 _ 7D, BE
        mov     eax, dword [ebp+8H]                     ; 2EC4 _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 2EC7 _ 8B. 55, 10
        lea     ecx, [edx+4H]                           ; 2ECA _ 8D. 4A, 04
        mov     edx, dword [ebp+0CH]                    ; 2ECD _ 8B. 55, 0C
        mov     dword [eax+ecx*4+4H], edx               ; 2ED0 _ 89. 54 88, 04
        mov     eax, dword [ebp+8H]                     ; 2ED4 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 2ED7 _ 8B. 40, 10
        lea     edx, [eax+1H]                           ; 2EDA _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 2EDD _ 8B. 45, 08
        mov     dword [eax+10H], edx                    ; 2EE0 _ 89. 50, 10
?_151:  mov     eax, dword [ebp+0CH]                    ; 2EE3 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 2EE6 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 2EE9 _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 2EEC _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 2EEF _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 2EF2 _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 2EF5 _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 2EF8 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 2EFB _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 2EFE _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 2F01 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 2F04 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 2F07 _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 2F0A _ 8B. 40, 0C
        sub     esp, 8                                  ; 2F0D _ 83. EC, 08
        push    dword [ebp+10H]                         ; 2F10 _ FF. 75, 10
        push    ebx                                     ; 2F13 _ 53
        push    ecx                                     ; 2F14 _ 51
        push    edx                                     ; 2F15 _ 52
        push    eax                                     ; 2F16 _ 50
        push    dword [ebp+8H]                          ; 2F17 _ FF. 75, 08
        call    sheet_refreshmap                        ; 2F1A _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 2F1F _ 83. C4, 20
        mov     eax, dword [ebp+0CH]                    ; 2F22 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 2F25 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 2F28 _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 2F2B _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 2F2E _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 2F31 _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 2F34 _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 2F37 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 2F3A _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 2F3D _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 2F40 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 2F43 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 2F46 _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 2F49 _ 8B. 40, 0C
        sub     esp, 4                                  ; 2F4C _ 83. EC, 04
        push    dword [ebp+10H]                         ; 2F4F _ FF. 75, 10
        push    dword [ebp+10H]                         ; 2F52 _ FF. 75, 10
        push    ebx                                     ; 2F55 _ 53
        push    ecx                                     ; 2F56 _ 51
        push    edx                                     ; 2F57 _ 52
        push    eax                                     ; 2F58 _ 50
        push    dword [ebp+8H]                          ; 2F59 _ FF. 75, 08
        call    sheet_refresh_new                       ; 2F5C _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 2F61 _ 83. C4, 20
?_152:  nop                                             ; 2F64 _ 90
        lea     esp, [ebp-8H]                           ; 2F65 _ 8D. 65, F8
        pop     ebx                                     ; 2F68 _ 5B
        pop     esi                                     ; 2F69 _ 5E
        pop     ebp                                     ; 2F6A _ 5D
        ret                                             ; 2F6B _ C3
; sheet_level_updown End of function

sheet_refresh:; Function begin
        push    ebp                                     ; 2F6C _ 55
        mov     ebp, esp                                ; 2F6D _ 89. E5
        push    edi                                     ; 2F6F _ 57
        push    esi                                     ; 2F70 _ 56
        push    ebx                                     ; 2F71 _ 53
        sub     esp, 28                                 ; 2F72 _ 83. EC, 1C
        mov     eax, dword [ebp+0CH]                    ; 2F75 _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 2F78 _ 8B. 40, 18
        test    eax, eax                                ; 2F7B _ 85. C0
        js      ?_153                                   ; 2F7D _ 78, 52
        mov     eax, dword [ebp+0CH]                    ; 2F7F _ 8B. 45, 0C
        mov     ebx, dword [eax+18H]                    ; 2F82 _ 8B. 58, 18
        mov     eax, dword [ebp+0CH]                    ; 2F85 _ 8B. 45, 0C
        mov     ecx, dword [eax+18H]                    ; 2F88 _ 8B. 48, 18
        mov     eax, dword [ebp+0CH]                    ; 2F8B _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 2F8E _ 8B. 50, 10
        mov     eax, dword [ebp+1CH]                    ; 2F91 _ 8B. 45, 1C
        lea     edi, [edx+eax]                          ; 2F94 _ 8D. 3C 02
        mov     eax, dword [ebp+0CH]                    ; 2F97 _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 2F9A _ 8B. 50, 0C
        mov     eax, dword [ebp+18H]                    ; 2F9D _ 8B. 45, 18
        lea     esi, [edx+eax]                          ; 2FA0 _ 8D. 34 02
        mov     eax, dword [ebp+0CH]                    ; 2FA3 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 2FA6 _ 8B. 50, 10
        mov     eax, dword [ebp+14H]                    ; 2FA9 _ 8B. 45, 14
        add     edx, eax                                ; 2FAC _ 01. C2
        mov     eax, dword [ebp+0CH]                    ; 2FAE _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 2FB1 _ 8B. 40, 0C
        mov     dword [ebp-1CH], eax                    ; 2FB4 _ 89. 45, E4
        mov     eax, dword [ebp+10H]                    ; 2FB7 _ 8B. 45, 10
        add     eax, dword [ebp-1CH]                    ; 2FBA _ 03. 45, E4
        sub     esp, 4                                  ; 2FBD _ 83. EC, 04
        push    ebx                                     ; 2FC0 _ 53
        push    ecx                                     ; 2FC1 _ 51
        push    edi                                     ; 2FC2 _ 57
        push    esi                                     ; 2FC3 _ 56
        push    edx                                     ; 2FC4 _ 52
        push    eax                                     ; 2FC5 _ 50
        push    dword [ebp+8H]                          ; 2FC6 _ FF. 75, 08
        call    sheet_refresh_new                       ; 2FC9 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 2FCE _ 83. C4, 20
?_153:  mov     eax, 0                                  ; 2FD1 _ B8, 00000000
        lea     esp, [ebp-0CH]                          ; 2FD6 _ 8D. 65, F4
        pop     ebx                                     ; 2FD9 _ 5B
        pop     esi                                     ; 2FDA _ 5E
        pop     edi                                     ; 2FDB _ 5F
        pop     ebp                                     ; 2FDC _ 5D
        ret                                             ; 2FDD _ C3
; sheet_refresh End of function

sheet_slide:; Function begin
        push    ebp                                     ; 2FDE _ 55
        mov     ebp, esp                                ; 2FDF _ 89. E5
        push    esi                                     ; 2FE1 _ 56
        push    ebx                                     ; 2FE2 _ 53
        sub     esp, 16                                 ; 2FE3 _ 83. EC, 10
        mov     eax, dword [ebp+0CH]                    ; 2FE6 _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 2FE9 _ 8B. 40, 0C
        mov     dword [ebp-10H], eax                    ; 2FEC _ 89. 45, F0
        mov     eax, dword [ebp+0CH]                    ; 2FEF _ 8B. 45, 0C
        mov     eax, dword [eax+10H]                    ; 2FF2 _ 8B. 40, 10
        mov     dword [ebp-0CH], eax                    ; 2FF5 _ 89. 45, F4
        mov     eax, dword [ebp+0CH]                    ; 2FF8 _ 8B. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 2FFB _ 8B. 55, 10
        mov     dword [eax+0CH], edx                    ; 2FFE _ 89. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 3001 _ 8B. 45, 0C
        mov     edx, dword [ebp+14H]                    ; 3004 _ 8B. 55, 14
        mov     dword [eax+10H], edx                    ; 3007 _ 89. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 300A _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 300D _ 8B. 40, 18
        test    eax, eax                                ; 3010 _ 85. C0
        js      ?_154                                   ; 3012 _ 0F 88, 000000D3
        mov     eax, dword [ebp+0CH]                    ; 3018 _ 8B. 45, 0C
        mov     edx, dword [eax+8H]                     ; 301B _ 8B. 50, 08
        mov     eax, dword [ebp-0CH]                    ; 301E _ 8B. 45, F4
        add     edx, eax                                ; 3021 _ 01. C2
        mov     eax, dword [ebp+0CH]                    ; 3023 _ 8B. 45, 0C
        mov     ecx, dword [eax+4H]                     ; 3026 _ 8B. 48, 04
        mov     eax, dword [ebp-10H]                    ; 3029 _ 8B. 45, F0
        add     eax, ecx                                ; 302C _ 01. C8
        sub     esp, 8                                  ; 302E _ 83. EC, 08
        push    0                                       ; 3031 _ 6A, 00
        push    edx                                     ; 3033 _ 52
        push    eax                                     ; 3034 _ 50
        push    dword [ebp-0CH]                         ; 3035 _ FF. 75, F4
        push    dword [ebp-10H]                         ; 3038 _ FF. 75, F0
        push    dword [ebp+8H]                          ; 303B _ FF. 75, 08
        call    sheet_refreshmap                        ; 303E _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 3043 _ 83. C4, 20
        mov     eax, dword [ebp+0CH]                    ; 3046 _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 3049 _ 8B. 40, 18
        mov     edx, dword [ebp+0CH]                    ; 304C _ 8B. 55, 0C
        mov     ecx, dword [edx+8H]                     ; 304F _ 8B. 4A, 08
        mov     edx, dword [ebp+14H]                    ; 3052 _ 8B. 55, 14
        add     ecx, edx                                ; 3055 _ 01. D1
        mov     edx, dword [ebp+0CH]                    ; 3057 _ 8B. 55, 0C
        mov     ebx, dword [edx+4H]                     ; 305A _ 8B. 5A, 04
        mov     edx, dword [ebp+10H]                    ; 305D _ 8B. 55, 10
        add     edx, ebx                                ; 3060 _ 01. DA
        sub     esp, 8                                  ; 3062 _ 83. EC, 08
        push    eax                                     ; 3065 _ 50
        push    ecx                                     ; 3066 _ 51
        push    edx                                     ; 3067 _ 52
        push    dword [ebp+14H]                         ; 3068 _ FF. 75, 14
        push    dword [ebp+10H]                         ; 306B _ FF. 75, 10
        push    dword [ebp+8H]                          ; 306E _ FF. 75, 08
        call    sheet_refreshmap                        ; 3071 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 3076 _ 83. C4, 20
        mov     eax, dword [ebp+0CH]                    ; 3079 _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 307C _ 8B. 40, 18
        lea     ecx, [eax-1H]                           ; 307F _ 8D. 48, FF
        mov     eax, dword [ebp+0CH]                    ; 3082 _ 8B. 45, 0C
        mov     edx, dword [eax+8H]                     ; 3085 _ 8B. 50, 08
        mov     eax, dword [ebp-0CH]                    ; 3088 _ 8B. 45, F4
        add     edx, eax                                ; 308B _ 01. C2
        mov     eax, dword [ebp+0CH]                    ; 308D _ 8B. 45, 0C
        mov     ebx, dword [eax+4H]                     ; 3090 _ 8B. 58, 04
        mov     eax, dword [ebp-10H]                    ; 3093 _ 8B. 45, F0
        add     eax, ebx                                ; 3096 _ 01. D8
        sub     esp, 4                                  ; 3098 _ 83. EC, 04
        push    ecx                                     ; 309B _ 51
        push    0                                       ; 309C _ 6A, 00
        push    edx                                     ; 309E _ 52
        push    eax                                     ; 309F _ 50
        push    dword [ebp-0CH]                         ; 30A0 _ FF. 75, F4
        push    dword [ebp-10H]                         ; 30A3 _ FF. 75, F0
        push    dword [ebp+8H]                          ; 30A6 _ FF. 75, 08
        call    sheet_refresh_new                       ; 30A9 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 30AE _ 83. C4, 20
        mov     eax, dword [ebp+0CH]                    ; 30B1 _ 8B. 45, 0C
        mov     edx, dword [eax+18H]                    ; 30B4 _ 8B. 50, 18
        mov     eax, dword [ebp+0CH]                    ; 30B7 _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 30BA _ 8B. 40, 18
        mov     ecx, dword [ebp+0CH]                    ; 30BD _ 8B. 4D, 0C
        mov     ebx, dword [ecx+8H]                     ; 30C0 _ 8B. 59, 08
        mov     ecx, dword [ebp+14H]                    ; 30C3 _ 8B. 4D, 14
        add     ebx, ecx                                ; 30C6 _ 01. CB
        mov     ecx, dword [ebp+0CH]                    ; 30C8 _ 8B. 4D, 0C
        mov     esi, dword [ecx+4H]                     ; 30CB _ 8B. 71, 04
        mov     ecx, dword [ebp+10H]                    ; 30CE _ 8B. 4D, 10
        add     ecx, esi                                ; 30D1 _ 01. F1
        sub     esp, 4                                  ; 30D3 _ 83. EC, 04
        push    edx                                     ; 30D6 _ 52
        push    eax                                     ; 30D7 _ 50
        push    ebx                                     ; 30D8 _ 53
        push    ecx                                     ; 30D9 _ 51
        push    dword [ebp+14H]                         ; 30DA _ FF. 75, 14
        push    dword [ebp+10H]                         ; 30DD _ FF. 75, 10
        push    dword [ebp+8H]                          ; 30E0 _ FF. 75, 08
        call    sheet_refresh_new                       ; 30E3 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 30E8 _ 83. C4, 20
?_154:  nop                                             ; 30EB _ 90
        lea     esp, [ebp-8H]                           ; 30EC _ 8D. 65, F8
        pop     ebx                                     ; 30EF _ 5B
        pop     esi                                     ; 30F0 _ 5E
        pop     ebp                                     ; 30F1 _ 5D
        ret                                             ; 30F2 _ C3
; sheet_slide End of function

sheet_refresh_new:; Function begin
        push    ebp                                     ; 30F3 _ 55
        mov     ebp, esp                                ; 30F4 _ 89. E5
        sub     esp, 48                                 ; 30F6 _ 83. EC, 30
        mov     eax, dword [ebp+8H]                     ; 30F9 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 30FC _ 8B. 00
        mov     dword [ebp-18H], eax                    ; 30FE _ 89. 45, E8
        mov     eax, dword [ebp+8H]                     ; 3101 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 3104 _ 8B. 40, 04
        mov     dword [ebp-14H], eax                    ; 3107 _ 89. 45, EC
        cmp     dword [ebp+0CH], 0                      ; 310A _ 83. 7D, 0C, 00
        jns     ?_155                                   ; 310E _ 79, 07
        mov     dword [ebp+0CH], 0                      ; 3110 _ C7. 45, 0C, 00000000
?_155:  cmp     dword [ebp+10H], 8                      ; 3117 _ 83. 7D, 10, 08
        jg      ?_156                                   ; 311B _ 7F, 07
        mov     dword [ebp+10H], 0                      ; 311D _ C7. 45, 10, 00000000
?_156:  mov     eax, dword [ebp+8H]                     ; 3124 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 3127 _ 8B. 40, 08
        cmp     dword [ebp+14H], eax                    ; 312A _ 39. 45, 14
        jle     ?_157                                   ; 312D _ 7E, 09
        mov     eax, dword [ebp+8H]                     ; 312F _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 3132 _ 8B. 40, 08
        mov     dword [ebp+14H], eax                    ; 3135 _ 89. 45, 14
?_157:  mov     eax, dword [ebp+8H]                     ; 3138 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 313B _ 8B. 40, 0C
        cmp     dword [ebp+18H], eax                    ; 313E _ 39. 45, 18
        jle     ?_158                                   ; 3141 _ 7E, 09
        mov     eax, dword [ebp+8H]                     ; 3143 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 3146 _ 8B. 40, 0C
        mov     dword [ebp+18H], eax                    ; 3149 _ 89. 45, 18
?_158:  mov     eax, dword [ebp+1CH]                    ; 314C _ 8B. 45, 1C
        mov     dword [ebp-24H], eax                    ; 314F _ 89. 45, DC
        jmp     ?_165                                   ; 3152 _ E9, 00000118

?_159:  mov     eax, dword [ebp+8H]                     ; 3157 _ 8B. 45, 08
        mov     edx, dword [ebp-24H]                    ; 315A _ 8B. 55, DC
        add     edx, 4                                  ; 315D _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 3160 _ 8B. 44 90, 04
        mov     dword [ebp-10H], eax                    ; 3164 _ 89. 45, F0
        mov     eax, dword [ebp-10H]                    ; 3167 _ 8B. 45, F0
        mov     eax, dword [eax]                        ; 316A _ 8B. 00
        mov     dword [ebp-0CH], eax                    ; 316C _ 89. 45, F4
        mov     eax, dword [ebp-10H]                    ; 316F _ 8B. 45, F0
        mov     edx, dword [ebp+8H]                     ; 3172 _ 8B. 55, 08
        add     edx, 1044                               ; 3175 _ 81. C2, 00000414
        sub     eax, edx                                ; 317B _ 29. D0
        sar     eax, 5                                  ; 317D _ C1. F8, 05
        mov     byte [ebp-26H], al                      ; 3180 _ 88. 45, DA
        mov     dword [ebp-20H], 0                      ; 3183 _ C7. 45, E0, 00000000
        jmp     ?_164                                   ; 318A _ E9, 000000CD

?_160:  mov     eax, dword [ebp-10H]                    ; 318F _ 8B. 45, F0
        mov     edx, dword [eax+10H]                    ; 3192 _ 8B. 50, 10
        mov     eax, dword [ebp-20H]                    ; 3195 _ 8B. 45, E0
        add     eax, edx                                ; 3198 _ 01. D0
        mov     dword [ebp-8H], eax                     ; 319A _ 89. 45, F8
        mov     dword [ebp-1CH], 0                      ; 319D _ C7. 45, E4, 00000000
        jmp     ?_163                                   ; 31A4 _ E9, 000000A0

?_161:  mov     eax, dword [ebp-10H]                    ; 31A9 _ 8B. 45, F0
        mov     edx, dword [eax+0CH]                    ; 31AC _ 8B. 50, 0C
        mov     eax, dword [ebp-1CH]                    ; 31AF _ 8B. 45, E4
        add     eax, edx                                ; 31B2 _ 01. D0
        mov     dword [ebp-4H], eax                     ; 31B4 _ 89. 45, FC
        mov     eax, dword [ebp+0CH]                    ; 31B7 _ 8B. 45, 0C
        cmp     eax, dword [ebp-4H]                     ; 31BA _ 3B. 45, FC
        jg      ?_162                                   ; 31BD _ 0F 8F, 00000082
        mov     eax, dword [ebp-4H]                     ; 31C3 _ 8B. 45, FC
        cmp     eax, dword [ebp+14H]                    ; 31C6 _ 3B. 45, 14
        jge     ?_162                                   ; 31C9 _ 7D, 7A
        mov     eax, dword [ebp+10H]                    ; 31CB _ 8B. 45, 10
        cmp     eax, dword [ebp-8H]                     ; 31CE _ 3B. 45, F8
        jg      ?_162                                   ; 31D1 _ 7F, 72
        mov     eax, dword [ebp-8H]                     ; 31D3 _ 8B. 45, F8
        cmp     eax, dword [ebp+18H]                    ; 31D6 _ 3B. 45, 18
        jge     ?_162                                   ; 31D9 _ 7D, 6A
        mov     eax, dword [ebp-10H]                    ; 31DB _ 8B. 45, F0
        mov     eax, dword [eax+4H]                     ; 31DE _ 8B. 40, 04
        imul    eax, dword [ebp-20H]                    ; 31E1 _ 0F AF. 45, E0
        mov     edx, eax                                ; 31E5 _ 89. C2
        mov     eax, dword [ebp-1CH]                    ; 31E7 _ 8B. 45, E4
        add     eax, edx                                ; 31EA _ 01. D0
        mov     edx, eax                                ; 31EC _ 89. C2
        mov     eax, dword [ebp-0CH]                    ; 31EE _ 8B. 45, F4
        add     eax, edx                                ; 31F1 _ 01. D0
        movzx   eax, byte [eax]                         ; 31F3 _ 0F B6. 00
        mov     byte [ebp-25H], al                      ; 31F6 _ 88. 45, DB
        mov     eax, dword [ebp+8H]                     ; 31F9 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 31FC _ 8B. 40, 08
        imul    eax, dword [ebp-8H]                     ; 31FF _ 0F AF. 45, F8
        mov     edx, eax                                ; 3203 _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 3205 _ 8B. 45, FC
        add     eax, edx                                ; 3208 _ 01. D0
        mov     edx, eax                                ; 320A _ 89. C2
        mov     eax, dword [ebp-14H]                    ; 320C _ 8B. 45, EC
        add     eax, edx                                ; 320F _ 01. D0
        movzx   eax, byte [eax]                         ; 3211 _ 0F B6. 00
        cmp     byte [ebp-26H], al                      ; 3214 _ 38. 45, DA
        jnz     ?_162                                   ; 3217 _ 75, 2C
        movzx   edx, byte [ebp-25H]                     ; 3219 _ 0F B6. 55, DB
        mov     eax, dword [ebp-10H]                    ; 321D _ 8B. 45, F0
        mov     eax, dword [eax+14H]                    ; 3220 _ 8B. 40, 14
        cmp     edx, eax                                ; 3223 _ 39. C2
        jz      ?_162                                   ; 3225 _ 74, 1E
        mov     eax, dword [ebp+8H]                     ; 3227 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 322A _ 8B. 40, 08
        imul    eax, dword [ebp-8H]                     ; 322D _ 0F AF. 45, F8
        mov     edx, eax                                ; 3231 _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 3233 _ 8B. 45, FC
        add     eax, edx                                ; 3236 _ 01. D0
        mov     edx, eax                                ; 3238 _ 89. C2
        mov     eax, dword [ebp-18H]                    ; 323A _ 8B. 45, E8
        add     edx, eax                                ; 323D _ 01. C2
        movzx   eax, byte [ebp-25H]                     ; 323F _ 0F B6. 45, DB
        mov     byte [edx], al                          ; 3243 _ 88. 02
?_162:  add     dword [ebp-1CH], 1                      ; 3245 _ 83. 45, E4, 01
?_163:  mov     eax, dword [ebp-10H]                    ; 3249 _ 8B. 45, F0
        mov     eax, dword [eax+4H]                     ; 324C _ 8B. 40, 04
        cmp     dword [ebp-1CH], eax                    ; 324F _ 39. 45, E4
        jl      ?_161                                   ; 3252 _ 0F 8C, FFFFFF51
        add     dword [ebp-20H], 1                      ; 3258 _ 83. 45, E0, 01
?_164:  mov     eax, dword [ebp-10H]                    ; 325C _ 8B. 45, F0
        mov     eax, dword [eax+8H]                     ; 325F _ 8B. 40, 08
        cmp     dword [ebp-20H], eax                    ; 3262 _ 39. 45, E0
        jl      ?_160                                   ; 3265 _ 0F 8C, FFFFFF24
        add     dword [ebp-24H], 1                      ; 326B _ 83. 45, DC, 01
?_165:  mov     eax, dword [ebp-24H]                    ; 326F _ 8B. 45, DC
        cmp     eax, dword [ebp+20H]                    ; 3272 _ 3B. 45, 20
        jle     ?_159                                   ; 3275 _ 0F 8E, FFFFFEDC
        nop                                             ; 327B _ 90
        leave                                           ; 327C _ C9
        ret                                             ; 327D _ C3
; sheet_refresh_new End of function

sheet_refreshmap:; Function begin
        push    ebp                                     ; 327E _ 55
        mov     ebp, esp                                ; 327F _ 89. E5
        sub     esp, 64                                 ; 3281 _ 83. EC, 40
        mov     eax, dword [ebp+8H]                     ; 3284 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 3287 _ 8B. 40, 04
        mov     dword [ebp-14H], eax                    ; 328A _ 89. 45, EC
        cmp     dword [ebp+0CH], 0                      ; 328D _ 83. 7D, 0C, 00
        jns     ?_166                                   ; 3291 _ 79, 07
        mov     dword [ebp+0CH], 0                      ; 3293 _ C7. 45, 0C, 00000000
?_166:  mov     eax, dword [ebp+8H]                     ; 329A _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 329D _ 8B. 40, 08
        cmp     dword [ebp+0CH], eax                    ; 32A0 _ 39. 45, 0C
        jle     ?_167                                   ; 32A3 _ 7E, 09
        mov     eax, dword [ebp+8H]                     ; 32A5 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 32A8 _ 8B. 40, 08
        mov     dword [ebp+0CH], eax                    ; 32AB _ 89. 45, 0C
?_167:  cmp     dword [ebp+10H], 0                      ; 32AE _ 83. 7D, 10, 00
        jns     ?_168                                   ; 32B2 _ 79, 07
        mov     dword [ebp+10H], 0                      ; 32B4 _ C7. 45, 10, 00000000
?_168:  mov     eax, dword [ebp+8H]                     ; 32BB _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 32BE _ 8B. 40, 0C
        cmp     dword [ebp+10H], eax                    ; 32C1 _ 39. 45, 10
        jle     ?_169                                   ; 32C4 _ 7E, 09
        mov     eax, dword [ebp+8H]                     ; 32C6 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 32C9 _ 8B. 40, 0C
        mov     dword [ebp+10H], eax                    ; 32CC _ 89. 45, 10
?_169:  mov     eax, dword [ebp+1CH]                    ; 32CF _ 8B. 45, 1C
        mov     dword [ebp-20H], eax                    ; 32D2 _ 89. 45, E0
        jmp     ?_180                                   ; 32D5 _ E9, 00000140

?_170:  mov     eax, dword [ebp+8H]                     ; 32DA _ 8B. 45, 08
        mov     edx, dword [ebp-20H]                    ; 32DD _ 8B. 55, E0
        add     edx, 4                                  ; 32E0 _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 32E3 _ 8B. 44 90, 04
        mov     dword [ebp-10H], eax                    ; 32E7 _ 89. 45, F0
        mov     eax, dword [ebp-10H]                    ; 32EA _ 8B. 45, F0
        mov     edx, dword [ebp+8H]                     ; 32ED _ 8B. 55, 08
        add     edx, 1044                               ; 32F0 _ 81. C2, 00000414
        sub     eax, edx                                ; 32F6 _ 29. D0
        sar     eax, 5                                  ; 32F8 _ C1. F8, 05
        mov     byte [ebp-31H], al                      ; 32FB _ 88. 45, CF
        mov     eax, dword [ebp-10H]                    ; 32FE _ 8B. 45, F0
        mov     eax, dword [eax]                        ; 3301 _ 8B. 00
        mov     dword [ebp-0CH], eax                    ; 3303 _ 89. 45, F4
        mov     eax, dword [ebp-10H]                    ; 3306 _ 8B. 45, F0
        mov     eax, dword [eax+0CH]                    ; 3309 _ 8B. 40, 0C
        mov     edx, dword [ebp+0CH]                    ; 330C _ 8B. 55, 0C
        sub     edx, eax                                ; 330F _ 29. C2
        mov     eax, edx                                ; 3311 _ 89. D0
        mov     dword [ebp-30H], eax                    ; 3313 _ 89. 45, D0
        mov     eax, dword [ebp-10H]                    ; 3316 _ 8B. 45, F0
        mov     eax, dword [eax+10H]                    ; 3319 _ 8B. 40, 10
        mov     edx, dword [ebp+10H]                    ; 331C _ 8B. 55, 10
        sub     edx, eax                                ; 331F _ 29. C2
        mov     eax, edx                                ; 3321 _ 89. D0
        mov     dword [ebp-2CH], eax                    ; 3323 _ 89. 45, D4
        mov     eax, dword [ebp-10H]                    ; 3326 _ 8B. 45, F0
        mov     eax, dword [eax+0CH]                    ; 3329 _ 8B. 40, 0C
        mov     edx, dword [ebp+14H]                    ; 332C _ 8B. 55, 14
        sub     edx, eax                                ; 332F _ 29. C2
        mov     eax, edx                                ; 3331 _ 89. D0
        mov     dword [ebp-28H], eax                    ; 3333 _ 89. 45, D8
        mov     eax, dword [ebp-10H]                    ; 3336 _ 8B. 45, F0
        mov     eax, dword [eax+10H]                    ; 3339 _ 8B. 40, 10
        mov     edx, dword [ebp+18H]                    ; 333C _ 8B. 55, 18
        sub     edx, eax                                ; 333F _ 29. C2
        mov     eax, edx                                ; 3341 _ 89. D0
        mov     dword [ebp-24H], eax                    ; 3343 _ 89. 45, DC
        cmp     dword [ebp-30H], 0                      ; 3346 _ 83. 7D, D0, 00
        jns     ?_171                                   ; 334A _ 79, 07
        mov     dword [ebp-30H], 0                      ; 334C _ C7. 45, D0, 00000000
?_171:  cmp     dword [ebp-2CH], 0                      ; 3353 _ 83. 7D, D4, 00
        jns     ?_172                                   ; 3357 _ 79, 07
        mov     dword [ebp-2CH], 0                      ; 3359 _ C7. 45, D4, 00000000
?_172:  mov     eax, dword [ebp-10H]                    ; 3360 _ 8B. 45, F0
        mov     eax, dword [eax+4H]                     ; 3363 _ 8B. 40, 04
        cmp     dword [ebp-28H], eax                    ; 3366 _ 39. 45, D8
        jle     ?_173                                   ; 3369 _ 7E, 09
        mov     eax, dword [ebp-10H]                    ; 336B _ 8B. 45, F0
        mov     eax, dword [eax+4H]                     ; 336E _ 8B. 40, 04
        mov     dword [ebp-28H], eax                    ; 3371 _ 89. 45, D8
?_173:  mov     eax, dword [ebp-10H]                    ; 3374 _ 8B. 45, F0
        mov     eax, dword [eax+8H]                     ; 3377 _ 8B. 40, 08
        cmp     dword [ebp-24H], eax                    ; 337A _ 39. 45, DC
        jle     ?_174                                   ; 337D _ 7E, 09
        mov     eax, dword [ebp-10H]                    ; 337F _ 8B. 45, F0
        mov     eax, dword [eax+8H]                     ; 3382 _ 8B. 40, 08
        mov     dword [ebp-24H], eax                    ; 3385 _ 89. 45, DC
?_174:  mov     eax, dword [ebp-2CH]                    ; 3388 _ 8B. 45, D4
        mov     dword [ebp-1CH], eax                    ; 338B _ 89. 45, E4
        jmp     ?_179                                   ; 338E _ EB, 7A

?_175:  mov     eax, dword [ebp-10H]                    ; 3390 _ 8B. 45, F0
        mov     edx, dword [eax+10H]                    ; 3393 _ 8B. 50, 10
        mov     eax, dword [ebp-1CH]                    ; 3396 _ 8B. 45, E4
        add     eax, edx                                ; 3399 _ 01. D0
        mov     dword [ebp-8H], eax                     ; 339B _ 89. 45, F8
        mov     eax, dword [ebp-30H]                    ; 339E _ 8B. 45, D0
        mov     dword [ebp-18H], eax                    ; 33A1 _ 89. 45, E8
        jmp     ?_178                                   ; 33A4 _ EB, 58

?_176:  mov     eax, dword [ebp-10H]                    ; 33A6 _ 8B. 45, F0
        mov     edx, dword [eax+0CH]                    ; 33A9 _ 8B. 50, 0C
        mov     eax, dword [ebp-18H]                    ; 33AC _ 8B. 45, E8
        add     eax, edx                                ; 33AF _ 01. D0
        mov     dword [ebp-4H], eax                     ; 33B1 _ 89. 45, FC
        mov     eax, dword [ebp-10H]                    ; 33B4 _ 8B. 45, F0
        mov     eax, dword [eax+4H]                     ; 33B7 _ 8B. 40, 04
        imul    eax, dword [ebp-1CH]                    ; 33BA _ 0F AF. 45, E4
        mov     edx, eax                                ; 33BE _ 89. C2
        mov     eax, dword [ebp-18H]                    ; 33C0 _ 8B. 45, E8
        add     eax, edx                                ; 33C3 _ 01. D0
        mov     edx, eax                                ; 33C5 _ 89. C2
        mov     eax, dword [ebp-0CH]                    ; 33C7 _ 8B. 45, F4
        add     eax, edx                                ; 33CA _ 01. D0
        movzx   eax, byte [eax]                         ; 33CC _ 0F B6. 00
        movzx   edx, al                                 ; 33CF _ 0F B6. D0
        mov     eax, dword [ebp-10H]                    ; 33D2 _ 8B. 45, F0
        mov     eax, dword [eax+14H]                    ; 33D5 _ 8B. 40, 14
        cmp     edx, eax                                ; 33D8 _ 39. C2
        jz      ?_177                                   ; 33DA _ 74, 1E
        mov     eax, dword [ebp+8H]                     ; 33DC _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 33DF _ 8B. 40, 08
        imul    eax, dword [ebp-8H]                     ; 33E2 _ 0F AF. 45, F8
        mov     edx, eax                                ; 33E6 _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 33E8 _ 8B. 45, FC
        add     eax, edx                                ; 33EB _ 01. D0
        mov     edx, eax                                ; 33ED _ 89. C2
        mov     eax, dword [ebp-14H]                    ; 33EF _ 8B. 45, EC
        add     edx, eax                                ; 33F2 _ 01. C2
        movzx   eax, byte [ebp-31H]                     ; 33F4 _ 0F B6. 45, CF
        mov     byte [edx], al                          ; 33F8 _ 88. 02
?_177:  add     dword [ebp-18H], 1                      ; 33FA _ 83. 45, E8, 01
?_178:  mov     eax, dword [ebp-18H]                    ; 33FE _ 8B. 45, E8
        cmp     eax, dword [ebp-28H]                    ; 3401 _ 3B. 45, D8
        jl      ?_176                                   ; 3404 _ 7C, A0
        add     dword [ebp-1CH], 1                      ; 3406 _ 83. 45, E4, 01
?_179:  mov     eax, dword [ebp-1CH]                    ; 340A _ 8B. 45, E4
        cmp     eax, dword [ebp-24H]                    ; 340D _ 3B. 45, DC
        jl      ?_175                                   ; 3410 _ 0F 8C, FFFFFF7A
        add     dword [ebp-20H], 1                      ; 3416 _ 83. 45, E0, 01
?_180:  mov     eax, dword [ebp+8H]                     ; 341A _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 341D _ 8B. 40, 10
        cmp     dword [ebp-20H], eax                    ; 3420 _ 39. 45, E0
        jle     ?_170                                   ; 3423 _ 0F 8E, FFFFFEB1
        nop                                             ; 3429 _ 90
        leave                                           ; 342A _ C9
        ret                                             ; 342B _ C3
; sheet_refreshmap End of function

init_pit:; Function begin
        push    ebp                                     ; 342C _ 55
        mov     ebp, esp                                ; 342D _ 89. E5
        sub     esp, 24                                 ; 342F _ 83. EC, 18
        sub     esp, 8                                  ; 3432 _ 83. EC, 08
        push    52                                      ; 3435 _ 6A, 34
        push    67                                      ; 3437 _ 6A, 43
        call    io_out8                                 ; 3439 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 343E _ 83. C4, 10
        sub     esp, 8                                  ; 3441 _ 83. EC, 08
        push    156                                     ; 3444 _ 68, 0000009C
        push    64                                      ; 3449 _ 6A, 40
        call    io_out8                                 ; 344B _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 3450 _ 83. C4, 10
        sub     esp, 8                                  ; 3453 _ 83. EC, 08
        push    46                                      ; 3456 _ 6A, 2E
        push    64                                      ; 3458 _ 6A, 40
        call    io_out8                                 ; 345A _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 345F _ 83. C4, 10
        mov     dword [timerctl], 0                     ; 3462 _ C7. 05, 000002A0(d), 00000000
        mov     dword [ebp-0CH], 0                      ; 346C _ C7. 45, F4, 00000000
        jmp     ?_182                                   ; 3473 _ EB, 26

?_181:  mov     eax, dword [ebp-0CH]                    ; 3475 _ 8B. 45, F4
        shl     eax, 4                                  ; 3478 _ C1. E0, 04
        add     eax, ?_252                              ; 347B _ 05, 000002A8(d)
        mov     dword [eax], 0                          ; 3480 _ C7. 00, 00000000
        mov     eax, dword [ebp-0CH]                    ; 3486 _ 8B. 45, F4
        shl     eax, 4                                  ; 3489 _ C1. E0, 04
        add     eax, ?_253                              ; 348C _ 05, 000002AC(d)
        mov     dword [eax], 0                          ; 3491 _ C7. 00, 00000000
        add     dword [ebp-0CH], 1                      ; 3497 _ 83. 45, F4, 01
?_182:  cmp     dword [ebp-0CH], 499                    ; 349B _ 81. 7D, F4, 000001F3
        jle     ?_181                                   ; 34A2 _ 7E, D1
        nop                                             ; 34A4 _ 90
        leave                                           ; 34A5 _ C9
        ret                                             ; 34A6 _ C3
; init_pit End of function

timer_alloc:; Function begin
        push    ebp                                     ; 34A7 _ 55
        mov     ebp, esp                                ; 34A8 _ 89. E5
        sub     esp, 16                                 ; 34AA _ 83. EC, 10
        mov     dword [ebp-4H], 0                       ; 34AD _ C7. 45, FC, 00000000
        jmp     ?_185                                   ; 34B4 _ EB, 36

?_183:  mov     eax, dword [ebp-4H]                     ; 34B6 _ 8B. 45, FC
        shl     eax, 4                                  ; 34B9 _ C1. E0, 04
        add     eax, ?_252                              ; 34BC _ 05, 000002A8(d)
        mov     eax, dword [eax]                        ; 34C1 _ 8B. 00
        test    eax, eax                                ; 34C3 _ 85. C0
        jnz     ?_184                                   ; 34C5 _ 75, 21
        mov     eax, dword [ebp-4H]                     ; 34C7 _ 8B. 45, FC
        shl     eax, 4                                  ; 34CA _ C1. E0, 04
        add     eax, ?_252                              ; 34CD _ 05, 000002A8(d)
        mov     dword [eax], 1                          ; 34D2 _ C7. 00, 00000001
        mov     eax, dword [ebp-4H]                     ; 34D8 _ 8B. 45, FC
        shl     eax, 4                                  ; 34DB _ C1. E0, 04
        add     eax, timerctl                           ; 34DE _ 05, 000002A0(d)
        add     eax, 4                                  ; 34E3 _ 83. C0, 04
        jmp     ?_186                                   ; 34E6 _ EB, 12

?_184:  add     dword [ebp-4H], 1                       ; 34E8 _ 83. 45, FC, 01
?_185:  cmp     dword [ebp-4H], 499                     ; 34EC _ 81. 7D, FC, 000001F3
        jle     ?_183                                   ; 34F3 _ 7E, C1
        mov     eax, 0                                  ; 34F5 _ B8, 00000000
?_186:  leave                                           ; 34FA _ C9
        ret                                             ; 34FB _ C3
; timer_alloc End of function

timer_free:; Function begin
        push    ebp                                     ; 34FC _ 55
        mov     ebp, esp                                ; 34FD _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 34FF _ 8B. 45, 08
        mov     dword [eax+4H], 0                       ; 3502 _ C7. 40, 04, 00000000
        nop                                             ; 3509 _ 90
        pop     ebp                                     ; 350A _ 5D
        ret                                             ; 350B _ C3
; timer_free End of function

timer_init:; Function begin
        push    ebp                                     ; 350C _ 55
        mov     ebp, esp                                ; 350D _ 89. E5
        sub     esp, 4                                  ; 350F _ 83. EC, 04
        mov     eax, dword [ebp+10H]                    ; 3512 _ 8B. 45, 10
        mov     byte [ebp-4H], al                       ; 3515 _ 88. 45, FC
        mov     eax, dword [ebp+8H]                     ; 3518 _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 351B _ 8B. 55, 0C
        mov     dword [eax+8H], edx                     ; 351E _ 89. 50, 08
        mov     eax, dword [ebp+8H]                     ; 3521 _ 8B. 45, 08
        movzx   edx, byte [ebp-4H]                      ; 3524 _ 0F B6. 55, FC
        mov     byte [eax+0CH], dl                      ; 3528 _ 88. 50, 0C
        nop                                             ; 352B _ 90
        leave                                           ; 352C _ C9
        ret                                             ; 352D _ C3
; timer_init End of function

timer_setTime:; Function begin
        push    ebp                                     ; 352E _ 55
        mov     ebp, esp                                ; 352F _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 3531 _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 3534 _ 8B. 55, 0C
        mov     dword [eax], edx                        ; 3537 _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 3539 _ 8B. 45, 08
        mov     dword [eax+4H], 2                       ; 353C _ C7. 40, 04, 00000002
        nop                                             ; 3543 _ 90
        pop     ebp                                     ; 3544 _ 5D
        ret                                             ; 3545 _ C3
; timer_setTime End of function

timer_settime:; Function begin
        push    ebp                                     ; 3546 _ 55
        mov     ebp, esp                                ; 3547 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 3549 _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 354C _ 8B. 55, 0C
        mov     dword [eax], edx                        ; 354F _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 3551 _ 8B. 45, 08
        mov     dword [eax+4H], 2                       ; 3554 _ C7. 40, 04, 00000002
        nop                                             ; 355B _ 90
        pop     ebp                                     ; 355C _ 5D
        ret                                             ; 355D _ C3
; timer_settime End of function

getTimerController:; Function begin
        push    ebp                                     ; 355E _ 55
        mov     ebp, esp                                ; 355F _ 89. E5
        mov     eax, timerctl                           ; 3561 _ B8, 000002A0(d)
        pop     ebp                                     ; 3566 _ 5D
        ret                                             ; 3567 _ C3
; getTimerController End of function

intHandlerForTimer:; Function begin
        push    ebp                                     ; 3568 _ 55
        mov     ebp, esp                                ; 3569 _ 89. E5
        push    ebx                                     ; 356B _ 53
        sub     esp, 20                                 ; 356C _ 83. EC, 14
        sub     esp, 8                                  ; 356F _ 83. EC, 08
        push    32                                      ; 3572 _ 6A, 20
        push    32                                      ; 3574 _ 6A, 20
        call    io_out8                                 ; 3576 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 357B _ 83. C4, 10
        mov     eax, dword [timerctl]                   ; 357E _ A1, 000002A0(d)
        add     eax, 1                                  ; 3583 _ 83. C0, 01
        mov     dword [timerctl], eax                   ; 3586 _ A3, 000002A0(d)
        mov     dword [ebp-10H], 0                      ; 358B _ C7. 45, F0, 00000000
        mov     dword [ebp-0CH], 0                      ; 3592 _ C7. 45, F4, 00000000
        jmp     ?_190                                   ; 3599 _ E9, 000000AD

?_187:  mov     eax, dword [ebp-0CH]                    ; 359E _ 8B. 45, F4
        shl     eax, 4                                  ; 35A1 _ C1. E0, 04
        add     eax, ?_252                              ; 35A4 _ 05, 000002A8(d)
        mov     eax, dword [eax]                        ; 35A9 _ 8B. 00
        cmp     eax, 2                                  ; 35AB _ 83. F8, 02
        jne     ?_188                                   ; 35AE _ 0F 85, 00000088
        mov     eax, dword [ebp-0CH]                    ; 35B4 _ 8B. 45, F4
        shl     eax, 4                                  ; 35B7 _ C1. E0, 04
        add     eax, ?_251                              ; 35BA _ 05, 000002A4(d)
        mov     eax, dword [eax]                        ; 35BF _ 8B. 00
        lea     edx, [eax-1H]                           ; 35C1 _ 8D. 50, FF
        mov     eax, dword [ebp-0CH]                    ; 35C4 _ 8B. 45, F4
        shl     eax, 4                                  ; 35C7 _ C1. E0, 04
        add     eax, ?_251                              ; 35CA _ 05, 000002A4(d)
        mov     dword [eax], edx                        ; 35CF _ 89. 10
        mov     eax, dword [ebp-0CH]                    ; 35D1 _ 8B. 45, F4
        shl     eax, 4                                  ; 35D4 _ C1. E0, 04
        add     eax, ?_251                              ; 35D7 _ 05, 000002A4(d)
        mov     eax, dword [eax]                        ; 35DC _ 8B. 00
        test    eax, eax                                ; 35DE _ 85. C0
        jnz     ?_188                                   ; 35E0 _ 75, 5A
        mov     eax, dword [ebp-0CH]                    ; 35E2 _ 8B. 45, F4
        shl     eax, 4                                  ; 35E5 _ C1. E0, 04
        add     eax, ?_252                              ; 35E8 _ 05, 000002A8(d)
        mov     dword [eax], 1                          ; 35ED _ C7. 00, 00000001
        mov     eax, dword [ebp-0CH]                    ; 35F3 _ 8B. 45, F4
        shl     eax, 4                                  ; 35F6 _ C1. E0, 04
        add     eax, ?_254                              ; 35F9 _ 05, 000002B0(d)
        movzx   eax, byte [eax]                         ; 35FE _ 0F B6. 00
        movzx   edx, al                                 ; 3601 _ 0F B6. D0
        mov     eax, dword [ebp-0CH]                    ; 3604 _ 8B. 45, F4
        shl     eax, 4                                  ; 3607 _ C1. E0, 04
        add     eax, ?_253                              ; 360A _ 05, 000002AC(d)
        mov     eax, dword [eax]                        ; 360F _ 8B. 00
        sub     esp, 8                                  ; 3611 _ 83. EC, 08
        push    edx                                     ; 3614 _ 52
        push    eax                                     ; 3615 _ 50
        call    fifo8_put                               ; 3616 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 361B _ 83. C4, 10
        mov     eax, dword [ebp-0CH]                    ; 361E _ 8B. 45, F4
        shl     eax, 4                                  ; 3621 _ C1. E0, 04
        add     eax, timerctl                           ; 3624 _ 05, 000002A0(d)
        lea     ebx, [eax+4H]                           ; 3629 _ 8D. 58, 04
        call    getTaskTimer                            ; 362C _ E8, FFFFFFFC(rel)
        cmp     ebx, eax                                ; 3631 _ 39. C3
        jnz     ?_188                                   ; 3633 _ 75, 07
        mov     dword [ebp-10H], 1                      ; 3635 _ C7. 45, F0, 00000001
?_188:  cmp     dword [ebp-10H], 1                      ; 363C _ 83. 7D, F0, 01
        jnz     ?_189                                   ; 3640 _ 75, 05
        call    task_switch                             ; 3642 _ E8, FFFFFFFC(rel)
?_189:  add     dword [ebp-0CH], 1                      ; 3647 _ 83. 45, F4, 01
?_190:  cmp     dword [ebp-0CH], 499                    ; 364B _ 81. 7D, F4, 000001F3
        jle     ?_187                                   ; 3652 _ 0F 8E, FFFFFF46
        nop                                             ; 3658 _ 90
        mov     ebx, dword [ebp-4H]                     ; 3659 _ 8B. 5D, FC
        leave                                           ; 365C _ C9
        ret                                             ; 365D _ C3
; intHandlerForTimer End of function

fifo8_init:; Function begin
        push    ebp                                     ; 365E _ 55
        mov     ebp, esp                                ; 365F _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 3661 _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 3664 _ 8B. 55, 0C
        mov     dword [eax+0CH], edx                    ; 3667 _ 89. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 366A _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 366D _ 8B. 55, 10
        mov     dword [eax], edx                        ; 3670 _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 3672 _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 3675 _ 8B. 55, 0C
        mov     dword [eax+10H], edx                    ; 3678 _ 89. 50, 10
        mov     eax, dword [ebp+8H]                     ; 367B _ 8B. 45, 08
        mov     dword [eax+4H], 0                       ; 367E _ C7. 40, 04, 00000000
        mov     eax, dword [ebp+8H]                     ; 3685 _ 8B. 45, 08
        mov     dword [eax+8H], 0                       ; 3688 _ C7. 40, 08, 00000000
        mov     eax, dword [ebp+8H]                     ; 368F _ 8B. 45, 08
        mov     dword [eax+14H], 0                      ; 3692 _ C7. 40, 14, 00000000
        mov     eax, dword [ebp+8H]                     ; 3699 _ 8B. 45, 08
        mov     edx, dword [ebp+14H]                    ; 369C _ 8B. 55, 14
        mov     dword [eax+18H], edx                    ; 369F _ 89. 50, 18
        nop                                             ; 36A2 _ 90
        pop     ebp                                     ; 36A3 _ 5D
        ret                                             ; 36A4 _ C3
; fifo8_init End of function

fifo8_put:; Function begin
        push    ebp                                     ; 36A5 _ 55
        mov     ebp, esp                                ; 36A6 _ 89. E5
        sub     esp, 24                                 ; 36A8 _ 83. EC, 18
        mov     eax, dword [ebp+0CH]                    ; 36AB _ 8B. 45, 0C
        mov     byte [ebp-0CH], al                      ; 36AE _ 88. 45, F4
        cmp     dword [ebp+8H], 0                       ; 36B1 _ 83. 7D, 08, 00
        jnz     ?_191                                   ; 36B5 _ 75, 0A
        mov     eax, 4294967295                         ; 36B7 _ B8, FFFFFFFF
        jmp     ?_195                                   ; 36BC _ E9, 000000A0

?_191:  mov     eax, dword [ebp+8H]                     ; 36C1 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 36C4 _ 8B. 40, 10
        test    eax, eax                                ; 36C7 _ 85. C0
        jnz     ?_192                                   ; 36C9 _ 75, 18
        mov     eax, dword [ebp+8H]                     ; 36CB _ 8B. 45, 08
        mov     eax, dword [eax+14H]                    ; 36CE _ 8B. 40, 14
        or      eax, 01H                                ; 36D1 _ 83. C8, 01
        mov     edx, eax                                ; 36D4 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 36D6 _ 8B. 45, 08
        mov     dword [eax+14H], edx                    ; 36D9 _ 89. 50, 14
        mov     eax, 4294967295                         ; 36DC _ B8, FFFFFFFF
        jmp     ?_195                                   ; 36E1 _ EB, 7E

?_192:  mov     eax, dword [ebp+8H]                     ; 36E3 _ 8B. 45, 08
        mov     edx, dword [eax]                        ; 36E6 _ 8B. 10
        mov     eax, dword [ebp+8H]                     ; 36E8 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 36EB _ 8B. 40, 08
        add     edx, eax                                ; 36EE _ 01. C2
        movzx   eax, byte [ebp-0CH]                     ; 36F0 _ 0F B6. 45, F4
        mov     byte [edx], al                          ; 36F4 _ 88. 02
        mov     eax, dword [ebp+8H]                     ; 36F6 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 36F9 _ 8B. 40, 08
        lea     edx, [eax+1H]                           ; 36FC _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 36FF _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 3702 _ 89. 50, 08
        mov     eax, dword [ebp+8H]                     ; 3705 _ 8B. 45, 08
        mov     edx, dword [eax+8H]                     ; 3708 _ 8B. 50, 08
        mov     eax, dword [ebp+8H]                     ; 370B _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 370E _ 8B. 40, 0C
        cmp     edx, eax                                ; 3711 _ 39. C2
        jl      ?_193                                   ; 3713 _ 7C, 0A
        mov     eax, dword [ebp+8H]                     ; 3715 _ 8B. 45, 08
        mov     dword [eax+8H], 0                       ; 3718 _ C7. 40, 08, 00000000
?_193:  mov     eax, dword [ebp+8H]                     ; 371F _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 3722 _ 8B. 40, 10
        lea     edx, [eax-1H]                           ; 3725 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 3728 _ 8B. 45, 08
        mov     dword [eax+10H], edx                    ; 372B _ 89. 50, 10
        mov     eax, dword [ebp+8H]                     ; 372E _ 8B. 45, 08
        mov     eax, dword [eax+18H]                    ; 3731 _ 8B. 40, 18
        test    eax, eax                                ; 3734 _ 85. C0
        jz      ?_194                                   ; 3736 _ 74, 24
        mov     eax, dword [ebp+8H]                     ; 3738 _ 8B. 45, 08
        mov     eax, dword [eax+18H]                    ; 373B _ 8B. 40, 18
        mov     eax, dword [eax+4H]                     ; 373E _ 8B. 40, 04
        cmp     eax, 2                                  ; 3741 _ 83. F8, 02
        jz      ?_194                                   ; 3744 _ 74, 16
        mov     eax, dword [ebp+8H]                     ; 3746 _ 8B. 45, 08
        mov     eax, dword [eax+18H]                    ; 3749 _ 8B. 40, 18
        sub     esp, 4                                  ; 374C _ 83. EC, 04
        push    0                                       ; 374F _ 6A, 00
        push    -1                                      ; 3751 _ 6A, FF
        push    eax                                     ; 3753 _ 50
        call    task_run                                ; 3754 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 3759 _ 83. C4, 10
?_194:  mov     eax, 1                                  ; 375C _ B8, 00000001
?_195:  leave                                           ; 3761 _ C9
        ret                                             ; 3762 _ C3
; fifo8_put End of function

fifo8_get:; Function begin
        push    ebp                                     ; 3763 _ 55
        mov     ebp, esp                                ; 3764 _ 89. E5
        sub     esp, 16                                 ; 3766 _ 83. EC, 10
        mov     eax, dword [ebp+8H]                     ; 3769 _ 8B. 45, 08
        mov     edx, dword [eax+10H]                    ; 376C _ 8B. 50, 10
        mov     eax, dword [ebp+8H]                     ; 376F _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 3772 _ 8B. 40, 0C
        cmp     edx, eax                                ; 3775 _ 39. C2
        jnz     ?_196                                   ; 3777 _ 75, 07
        mov     eax, 4294967295                         ; 3779 _ B8, FFFFFFFF
        jmp     ?_198                                   ; 377E _ EB, 51

?_196:  mov     eax, dword [ebp+8H]                     ; 3780 _ 8B. 45, 08
        mov     edx, dword [eax]                        ; 3783 _ 8B. 10
        mov     eax, dword [ebp+8H]                     ; 3785 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 3788 _ 8B. 40, 04
        add     eax, edx                                ; 378B _ 01. D0
        movzx   eax, byte [eax]                         ; 378D _ 0F B6. 00
        movzx   eax, al                                 ; 3790 _ 0F B6. C0
        mov     dword [ebp-4H], eax                     ; 3793 _ 89. 45, FC
        mov     eax, dword [ebp+8H]                     ; 3796 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 3799 _ 8B. 40, 04
        lea     edx, [eax+1H]                           ; 379C _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 379F _ 8B. 45, 08
        mov     dword [eax+4H], edx                     ; 37A2 _ 89. 50, 04
        mov     eax, dword [ebp+8H]                     ; 37A5 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 37A8 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 37AB _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 37AE _ 8B. 40, 0C
        cmp     edx, eax                                ; 37B1 _ 39. C2
        jl      ?_197                                   ; 37B3 _ 7C, 0A
        mov     eax, dword [ebp+8H]                     ; 37B5 _ 8B. 45, 08
        mov     dword [eax+4H], 0                       ; 37B8 _ C7. 40, 04, 00000000
?_197:  mov     eax, dword [ebp+8H]                     ; 37BF _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 37C2 _ 8B. 40, 10
        lea     edx, [eax+1H]                           ; 37C5 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 37C8 _ 8B. 45, 08
        mov     dword [eax+10H], edx                    ; 37CB _ 89. 50, 10
        mov     eax, dword [ebp-4H]                     ; 37CE _ 8B. 45, FC
?_198:  leave                                           ; 37D1 _ C9
        ret                                             ; 37D2 _ C3
; fifo8_get End of function

fifo8_status:; Function begin
        push    ebp                                     ; 37D3 _ 55
        mov     ebp, esp                                ; 37D4 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 37D6 _ 8B. 45, 08
        mov     edx, dword [eax+0CH]                    ; 37D9 _ 8B. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 37DC _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 37DF _ 8B. 40, 10
        sub     edx, eax                                ; 37E2 _ 29. C2
        mov     eax, edx                                ; 37E4 _ 89. D0
        pop     ebp                                     ; 37E6 _ 5D
        ret                                             ; 37E7 _ C3
; fifo8_status End of function

set_segmdesc:; Function begin
        push    ebp                                     ; 37E8 _ 55
        mov     ebp, esp                                ; 37E9 _ 89. E5
        cmp     dword [ebp+0CH], 1048575                ; 37EB _ 81. 7D, 0C, 000FFFFF
        jbe     ?_199                                   ; 37F2 _ 76, 10
        or      dword [ebp+14H], 8000H                  ; 37F4 _ 81. 4D, 14, 00008000
        mov     eax, dword [ebp+0CH]                    ; 37FB _ 8B. 45, 0C
        shr     eax, 12                                 ; 37FE _ C1. E8, 0C
        mov     dword [ebp+0CH], eax                    ; 3801 _ 89. 45, 0C
?_199:  mov     eax, dword [ebp+0CH]                    ; 3804 _ 8B. 45, 0C
        mov     edx, eax                                ; 3807 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 3809 _ 8B. 45, 08
        mov     word [eax], dx                          ; 380C _ 66: 89. 10
        mov     eax, dword [ebp+10H]                    ; 380F _ 8B. 45, 10
        mov     edx, eax                                ; 3812 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 3814 _ 8B. 45, 08
        mov     word [eax+2H], dx                       ; 3817 _ 66: 89. 50, 02
        mov     eax, dword [ebp+10H]                    ; 381B _ 8B. 45, 10
        sar     eax, 16                                 ; 381E _ C1. F8, 10
        mov     edx, eax                                ; 3821 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 3823 _ 8B. 45, 08
        mov     byte [eax+4H], dl                       ; 3826 _ 88. 50, 04
        mov     eax, dword [ebp+14H]                    ; 3829 _ 8B. 45, 14
        mov     edx, eax                                ; 382C _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 382E _ 8B. 45, 08
        mov     byte [eax+5H], dl                       ; 3831 _ 88. 50, 05
        mov     eax, dword [ebp+0CH]                    ; 3834 _ 8B. 45, 0C
        shr     eax, 16                                 ; 3837 _ C1. E8, 10
        and     eax, 0FH                                ; 383A _ 83. E0, 0F
        mov     edx, eax                                ; 383D _ 89. C2
        mov     eax, dword [ebp+14H]                    ; 383F _ 8B. 45, 14
        sar     eax, 8                                  ; 3842 _ C1. F8, 08
        and     eax, 0FFFFFFF0H                         ; 3845 _ 83. E0, F0
        or      eax, edx                                ; 3848 _ 09. D0
        mov     edx, eax                                ; 384A _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 384C _ 8B. 45, 08
        mov     byte [eax+6H], dl                       ; 384F _ 88. 50, 06
        mov     eax, dword [ebp+10H]                    ; 3852 _ 8B. 45, 10
        shr     eax, 24                                 ; 3855 _ C1. E8, 18
        mov     edx, eax                                ; 3858 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 385A _ 8B. 45, 08
        mov     byte [eax+7H], dl                       ; 385D _ 88. 50, 07
        nop                                             ; 3860 _ 90
        pop     ebp                                     ; 3861 _ 5D
        ret                                             ; 3862 _ C3
; set_segmdesc End of function

getTaskTimer:; Function begin
        push    ebp                                     ; 3863 _ 55
        mov     ebp, esp                                ; 3864 _ 89. E5
        mov     eax, dword [task_timer]                 ; 3866 _ A1, 000021E4(d)
        pop     ebp                                     ; 386B _ 5D
        ret                                             ; 386C _ C3
; getTaskTimer End of function

init_task_level:; Function begin
        push    ebp                                     ; 386D _ 55
        mov     ebp, esp                                ; 386E _ 89. E5
        sub     esp, 16                                 ; 3870 _ 83. EC, 10
        mov     edx, dword [taskctl]                    ; 3873 _ 8B. 15, 000021E8(d)
        mov     eax, dword [ebp+8H]                     ; 3879 _ 8B. 45, 08
        imul    eax, eax, 28                            ; 387C _ 6B. C0, 1C
        add     eax, edx                                ; 387F _ 01. D0
        add     eax, 8                                  ; 3881 _ 83. C0, 08
        mov     dword [eax], 0                          ; 3884 _ C7. 00, 00000000
        mov     edx, dword [taskctl]                    ; 388A _ 8B. 15, 000021E8(d)
        mov     eax, dword [ebp+8H]                     ; 3890 _ 8B. 45, 08
        imul    eax, eax, 28                            ; 3893 _ 6B. C0, 1C
        add     eax, edx                                ; 3896 _ 01. D0
        add     eax, 12                                 ; 3898 _ 83. C0, 0C
        mov     dword [eax], 0                          ; 389B _ C7. 00, 00000000
        mov     dword [ebp-4H], 0                       ; 38A1 _ C7. 45, FC, 00000000
        jmp     ?_201                                   ; 38A8 _ EB, 1A

?_200:  mov     eax, dword [taskctl]                    ; 38AA _ A1, 000021E8(d)
        mov     edx, dword [ebp-4H]                     ; 38AF _ 8B. 55, FC
        shl     edx, 5                                  ; 38B2 _ C1. E2, 05
        add     eax, edx                                ; 38B5 _ 01. D0
        add     eax, 16                                 ; 38B7 _ 83. C0, 10
        mov     dword [eax], 0                          ; 38BA _ C7. 00, 00000000
        add     dword [ebp-4H], 1                       ; 38C0 _ 83. 45, FC, 01
?_201:  cmp     dword [ebp-4H], 4                       ; 38C4 _ 83. 7D, FC, 04
        jle     ?_200                                   ; 38C8 _ 7E, E0
        nop                                             ; 38CA _ 90
        leave                                           ; 38CB _ C9
        ret                                             ; 38CC _ C3
; init_task_level End of function

task_init:; Function begin
        push    ebp                                     ; 38CD _ 55
        mov     ebp, esp                                ; 38CE _ 89. E5
        sub     esp, 24                                 ; 38D0 _ 83. EC, 18
        call    get_addr_gdt                            ; 38D3 _ E8, FFFFFFFC(rel)
        mov     dword [ebp-10H], eax                    ; 38D8 _ 89. 45, F0
        sub     esp, 8                                  ; 38DB _ 83. EC, 08
        push    692                                     ; 38DE _ 68, 000002B4
        push    dword [ebp+8H]                          ; 38E3 _ FF. 75, 08
        call    memman_alloc_4K                         ; 38E6 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 38EB _ 83. C4, 10
        mov     dword [taskctl], eax                    ; 38EE _ A3, 000021E8(d)
        mov     dword [ebp-14H], 0                      ; 38F3 _ C7. 45, EC, 00000000
        jmp     ?_203                                   ; 38FA _ EB, 73

?_202:  mov     edx, dword [taskctl]                    ; 38FC _ 8B. 15, 000021E8(d)
        mov     eax, dword [ebp-14H]                    ; 3902 _ 8B. 45, EC
        imul    eax, eax, 124                           ; 3905 _ 6B. C0, 7C
        add     eax, edx                                ; 3908 _ 01. D0
        add     eax, 96                                 ; 390A _ 83. C0, 60
        mov     dword [eax], 0                          ; 390D _ C7. 00, 00000000
        mov     eax, dword [ebp-14H]                    ; 3913 _ 8B. 45, EC
        add     eax, 7                                  ; 3916 _ 83. C0, 07
        mov     ecx, dword [taskctl]                    ; 3919 _ 8B. 0D, 000021E8(d)
        lea     edx, [eax*8]                            ; 391F _ 8D. 14 C5, 00000000
        mov     eax, dword [ebp-14H]                    ; 3926 _ 8B. 45, EC
        imul    eax, eax, 124                           ; 3929 _ 6B. C0, 7C
        add     eax, ecx                                ; 392C _ 01. C8
        add     eax, 92                                 ; 392E _ 83. C0, 5C
        mov     dword [eax], edx                        ; 3931 _ 89. 10
        mov     eax, dword [taskctl]                    ; 3933 _ A1, 000021E8(d)
        mov     edx, dword [ebp-14H]                    ; 3938 _ 8B. 55, EC
        imul    edx, edx, 124                           ; 393B _ 6B. D2, 7C
        add     edx, 96                                 ; 393E _ 83. C2, 60
        add     eax, edx                                ; 3941 _ 01. D0
        add     eax, 16                                 ; 3943 _ 83. C0, 10
        mov     ecx, eax                                ; 3946 _ 89. C1
        mov     eax, dword [ebp-14H]                    ; 3948 _ 8B. 45, EC
        add     eax, 7                                  ; 394B _ 83. C0, 07
        lea     edx, [eax*8]                            ; 394E _ 8D. 14 C5, 00000000
        mov     eax, dword [ebp-10H]                    ; 3955 _ 8B. 45, F0
        add     eax, edx                                ; 3958 _ 01. D0
        push    137                                     ; 395A _ 68, 00000089
        push    ecx                                     ; 395F _ 51
        push    103                                     ; 3960 _ 6A, 67
        push    eax                                     ; 3962 _ 50
        call    set_segmdesc                            ; 3963 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 3968 _ 83. C4, 10
        add     dword [ebp-14H], 1                      ; 396B _ 83. 45, EC, 01
?_203:  cmp     dword [ebp-14H], 4                      ; 396F _ 83. 7D, EC, 04
        jle     ?_202                                   ; 3973 _ 7E, 87
        call    task_alloc                              ; 3975 _ E8, FFFFFFFC(rel)
        mov     dword [ebp-0CH], eax                    ; 397A _ 89. 45, F4
        mov     eax, dword [ebp-0CH]                    ; 397D _ 8B. 45, F4
        mov     dword [eax+4H], 2                       ; 3980 _ C7. 40, 04, 00000002
        mov     eax, dword [ebp-0CH]                    ; 3987 _ 8B. 45, F4
        mov     dword [eax+8H], 10                      ; 398A _ C7. 40, 08, 0000000A
        mov     eax, dword [ebp-0CH]                    ; 3991 _ 8B. 45, F4
        mov     dword [eax+0CH], 0                      ; 3994 _ C7. 40, 0C, 00000000
        sub     esp, 12                                 ; 399B _ 83. EC, 0C
        push    dword [ebp-0CH]                         ; 399E _ FF. 75, F4
        call    task_add                                ; 39A1 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 39A6 _ 83. C4, 10
        call    task_switchsub                          ; 39A9 _ E8, FFFFFFFC(rel)
        mov     eax, dword [ebp-0CH]                    ; 39AE _ 8B. 45, F4
        mov     eax, dword [eax]                        ; 39B1 _ 8B. 00
        sub     esp, 12                                 ; 39B3 _ 83. EC, 0C
        push    eax                                     ; 39B6 _ 50
        call    load_tr                                 ; 39B7 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 39BC _ 83. C4, 10
        call    timer_alloc                             ; 39BF _ E8, FFFFFFFC(rel)
        mov     dword [task_timer], eax                 ; 39C4 _ A3, 000021E4(d)
        mov     eax, dword [ebp-0CH]                    ; 39C9 _ 8B. 45, F4
        mov     eax, dword [eax+8H]                     ; 39CC _ 8B. 40, 08
        mov     edx, eax                                ; 39CF _ 89. C2
        mov     eax, dword [task_timer]                 ; 39D1 _ A1, 000021E4(d)
        sub     esp, 8                                  ; 39D6 _ 83. EC, 08
        push    edx                                     ; 39D9 _ 52
        push    eax                                     ; 39DA _ 50
        call    timer_setTime                           ; 39DB _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 39E0 _ 83. C4, 10
        mov     eax, dword [ebp-0CH]                    ; 39E3 _ 8B. 45, F4
        leave                                           ; 39E6 _ C9
        ret                                             ; 39E7 _ C3
; task_init End of function

task_alloc:; Function begin
        push    ebp                                     ; 39E8 _ 55
        mov     ebp, esp                                ; 39E9 _ 89. E5
        sub     esp, 16                                 ; 39EB _ 83. EC, 10
        mov     dword [ebp-8H], 0                       ; 39EE _ C7. 45, F8, 00000000
        jmp     ?_206                                   ; 39F5 _ E9, 000000E1

?_204:  mov     edx, dword [taskctl]                    ; 39FA _ 8B. 15, 000021E8(d)
        mov     eax, dword [ebp-8H]                     ; 3A00 _ 8B. 45, F8
        imul    eax, eax, 124                           ; 3A03 _ 6B. C0, 7C
        add     eax, edx                                ; 3A06 _ 01. D0
        add     eax, 96                                 ; 3A08 _ 83. C0, 60
        mov     eax, dword [eax]                        ; 3A0B _ 8B. 00
        test    eax, eax                                ; 3A0D _ 85. C0
        jne     ?_205                                   ; 3A0F _ 0F 85, 000000C2
        mov     eax, dword [taskctl]                    ; 3A15 _ A1, 000021E8(d)
        mov     edx, dword [ebp-8H]                     ; 3A1A _ 8B. 55, F8
        imul    edx, edx, 124                           ; 3A1D _ 6B. D2, 7C
        add     edx, 80                                 ; 3A20 _ 83. C2, 50
        add     eax, edx                                ; 3A23 _ 01. D0
        add     eax, 12                                 ; 3A25 _ 83. C0, 0C
        mov     dword [ebp-4H], eax                     ; 3A28 _ 89. 45, FC
        mov     eax, dword [ebp-4H]                     ; 3A2B _ 8B. 45, FC
        mov     dword [eax+4H], 1                       ; 3A2E _ C7. 40, 04, 00000001
        mov     eax, dword [ebp-4H]                     ; 3A35 _ 8B. 45, FC
        mov     dword [eax+38H], 514                    ; 3A38 _ C7. 40, 38, 00000202
        mov     eax, dword [ebp-4H]                     ; 3A3F _ 8B. 45, FC
        mov     dword [eax+3CH], 0                      ; 3A42 _ C7. 40, 3C, 00000000
        mov     eax, dword [ebp-4H]                     ; 3A49 _ 8B. 45, FC
        mov     dword [eax+40H], 0                      ; 3A4C _ C7. 40, 40, 00000000
        mov     eax, dword [ebp-4H]                     ; 3A53 _ 8B. 45, FC
        mov     dword [eax+44H], 0                      ; 3A56 _ C7. 40, 44, 00000000
        mov     eax, dword [ebp-4H]                     ; 3A5D _ 8B. 45, FC
        mov     dword [eax+48H], 0                      ; 3A60 _ C7. 40, 48, 00000000
        mov     eax, dword [ebp-4H]                     ; 3A67 _ 8B. 45, FC
        mov     dword [eax+50H], 0                      ; 3A6A _ C7. 40, 50, 00000000
        mov     eax, dword [ebp-8H]                     ; 3A71 _ 8B. 45, F8
        add     eax, 1                                  ; 3A74 _ 83. C0, 01
        shl     eax, 9                                  ; 3A77 _ C1. E0, 09
        mov     edx, eax                                ; 3A7A _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 3A7C _ 8B. 45, FC
        mov     dword [eax+4CH], edx                    ; 3A7F _ 89. 50, 4C
        mov     eax, dword [ebp-4H]                     ; 3A82 _ 8B. 45, FC
        mov     dword [eax+54H], 0                      ; 3A85 _ C7. 40, 54, 00000000
        mov     eax, dword [ebp-4H]                     ; 3A8C _ 8B. 45, FC
        mov     dword [eax+58H], 0                      ; 3A8F _ C7. 40, 58, 00000000
        mov     eax, dword [ebp-4H]                     ; 3A96 _ 8B. 45, FC
        mov     dword [eax+5CH], 0                      ; 3A99 _ C7. 40, 5C, 00000000
        mov     eax, dword [ebp-4H]                     ; 3AA0 _ 8B. 45, FC
        mov     dword [eax+68H], 0                      ; 3AA3 _ C7. 40, 68, 00000000
        mov     eax, dword [ebp-4H]                     ; 3AAA _ 8B. 45, FC
        mov     dword [eax+6CH], 0                      ; 3AAD _ C7. 40, 6C, 00000000
        mov     eax, dword [ebp-4H]                     ; 3AB4 _ 8B. 45, FC
        mov     dword [eax+70H], 0                      ; 3AB7 _ C7. 40, 70, 00000000
        mov     eax, dword [ebp-4H]                     ; 3ABE _ 8B. 45, FC
        mov     dword [eax+74H], 0                      ; 3AC1 _ C7. 40, 74, 00000000
        mov     eax, dword [ebp-4H]                     ; 3AC8 _ 8B. 45, FC
        mov     dword [eax+78H], 1073741824             ; 3ACB _ C7. 40, 78, 40000000
        mov     eax, dword [ebp-4H]                     ; 3AD2 _ 8B. 45, FC
        jmp     ?_207                                   ; 3AD5 _ EB, 13

?_205:  add     dword [ebp-8H], 1                       ; 3AD7 _ 83. 45, F8, 01
?_206:  cmp     dword [ebp-8H], 4                       ; 3ADB _ 83. 7D, F8, 04
        jle     ?_204                                   ; 3ADF _ 0F 8E, FFFFFF15
        mov     eax, 0                                  ; 3AE5 _ B8, 00000000
?_207:  leave                                           ; 3AEA _ C9
        ret                                             ; 3AEB _ C3
; task_alloc End of function

task_run:; Function begin
        push    ebp                                     ; 3AEC _ 55
        mov     ebp, esp                                ; 3AED _ 89. E5
        sub     esp, 8                                  ; 3AEF _ 83. EC, 08
        cmp     dword [ebp+0CH], 0                      ; 3AF2 _ 83. 7D, 0C, 00
        jns     ?_208                                   ; 3AF6 _ 79, 09
        mov     eax, dword [ebp+8H]                     ; 3AF8 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 3AFB _ 8B. 40, 0C
        mov     dword [ebp+0CH], eax                    ; 3AFE _ 89. 45, 0C
?_208:  cmp     dword [ebp+10H], 0                      ; 3B01 _ 83. 7D, 10, 00
        jle     ?_209                                   ; 3B05 _ 7E, 09
        mov     eax, dword [ebp+8H]                     ; 3B07 _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 3B0A _ 8B. 55, 10
        mov     dword [eax+8H], edx                     ; 3B0D _ 89. 50, 08
?_209:  mov     eax, dword [ebp+8H]                     ; 3B10 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 3B13 _ 8B. 40, 04
        cmp     eax, 2                                  ; 3B16 _ 83. F8, 02
        jnz     ?_210                                   ; 3B19 _ 75, 19
        mov     eax, dword [ebp+8H]                     ; 3B1B _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 3B1E _ 8B. 40, 0C
        cmp     dword [ebp+0CH], eax                    ; 3B21 _ 39. 45, 0C
        jz      ?_210                                   ; 3B24 _ 74, 0E
        sub     esp, 12                                 ; 3B26 _ 83. EC, 0C
        push    dword [ebp+8H]                          ; 3B29 _ FF. 75, 08
        call    task_remove                             ; 3B2C _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 3B31 _ 83. C4, 10
?_210:  mov     eax, dword [ebp+8H]                     ; 3B34 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 3B37 _ 8B. 40, 04
        cmp     eax, 2                                  ; 3B3A _ 83. F8, 02
        jz      ?_211                                   ; 3B3D _ 74, 17
        mov     eax, dword [ebp+8H]                     ; 3B3F _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 3B42 _ 8B. 55, 0C
        mov     dword [eax+0CH], edx                    ; 3B45 _ 89. 50, 0C
        sub     esp, 12                                 ; 3B48 _ 83. EC, 0C
        push    dword [ebp+8H]                          ; 3B4B _ FF. 75, 08
        call    task_add                                ; 3B4E _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 3B53 _ 83. C4, 10
?_211:  mov     eax, dword [taskctl]                    ; 3B56 _ A1, 000021E8(d)
        mov     dword [eax+4H], 1                       ; 3B5B _ C7. 40, 04, 00000001
        nop                                             ; 3B62 _ 90
        leave                                           ; 3B63 _ C9
        ret                                             ; 3B64 _ C3
; task_run End of function

task_switch:; Function begin
        push    ebp                                     ; 3B65 _ 55
        mov     ebp, esp                                ; 3B66 _ 89. E5
        sub     esp, 24                                 ; 3B68 _ 83. EC, 18
        mov     edx, dword [taskctl]                    ; 3B6B _ 8B. 15, 000021E8(d)
        mov     eax, dword [taskctl]                    ; 3B71 _ A1, 000021E8(d)
        mov     eax, dword [eax]                        ; 3B76 _ 8B. 00
        imul    eax, eax, 28                            ; 3B78 _ 6B. C0, 1C
        add     eax, edx                                ; 3B7B _ 01. D0
        add     eax, 8                                  ; 3B7D _ 83. C0, 08
        mov     dword [ebp-14H], eax                    ; 3B80 _ 89. 45, EC
        mov     eax, dword [ebp-14H]                    ; 3B83 _ 8B. 45, EC
        mov     edx, dword [eax+4H]                     ; 3B86 _ 8B. 50, 04
        mov     eax, dword [ebp-14H]                    ; 3B89 _ 8B. 45, EC
        mov     eax, dword [eax+edx*4+8H]               ; 3B8C _ 8B. 44 90, 08
        mov     dword [ebp-10H], eax                    ; 3B90 _ 89. 45, F0
        mov     eax, dword [ebp-14H]                    ; 3B93 _ 8B. 45, EC
        mov     eax, dword [eax+4H]                     ; 3B96 _ 8B. 40, 04
        lea     edx, [eax+1H]                           ; 3B99 _ 8D. 50, 01
        mov     eax, dword [ebp-14H]                    ; 3B9C _ 8B. 45, EC
        mov     dword [eax+4H], edx                     ; 3B9F _ 89. 50, 04
        mov     eax, dword [ebp-14H]                    ; 3BA2 _ 8B. 45, EC
        mov     edx, dword [eax+4H]                     ; 3BA5 _ 8B. 50, 04
        mov     eax, dword [ebp-14H]                    ; 3BA8 _ 8B. 45, EC
        mov     eax, dword [eax]                        ; 3BAB _ 8B. 00
        cmp     edx, eax                                ; 3BAD _ 39. C2
        jnz     ?_212                                   ; 3BAF _ 75, 0A
        mov     eax, dword [ebp-14H]                    ; 3BB1 _ 8B. 45, EC
        mov     dword [eax+4H], 0                       ; 3BB4 _ C7. 40, 04, 00000000
?_212:  mov     eax, dword [taskctl]                    ; 3BBB _ A1, 000021E8(d)
        mov     eax, dword [eax+4H]                     ; 3BC0 _ 8B. 40, 04
        test    eax, eax                                ; 3BC3 _ 85. C0
        jz      ?_213                                   ; 3BC5 _ 74, 1D
        call    task_switchsub                          ; 3BC7 _ E8, FFFFFFFC(rel)
        mov     edx, dword [taskctl]                    ; 3BCC _ 8B. 15, 000021E8(d)
        mov     eax, dword [taskctl]                    ; 3BD2 _ A1, 000021E8(d)
        mov     eax, dword [eax]                        ; 3BD7 _ 8B. 00
        imul    eax, eax, 28                            ; 3BD9 _ 6B. C0, 1C
        add     eax, edx                                ; 3BDC _ 01. D0
        add     eax, 8                                  ; 3BDE _ 83. C0, 08
        mov     dword [ebp-14H], eax                    ; 3BE1 _ 89. 45, EC
?_213:  mov     eax, dword [ebp-14H]                    ; 3BE4 _ 8B. 45, EC
        mov     edx, dword [eax+4H]                     ; 3BE7 _ 8B. 50, 04
        mov     eax, dword [ebp-14H]                    ; 3BEA _ 8B. 45, EC
        mov     eax, dword [eax+edx*4+8H]               ; 3BED _ 8B. 44 90, 08
        mov     dword [ebp-0CH], eax                    ; 3BF1 _ 89. 45, F4
        mov     eax, dword [ebp-0CH]                    ; 3BF4 _ 8B. 45, F4
        mov     eax, dword [eax+8H]                     ; 3BF7 _ 8B. 40, 08
        mov     edx, eax                                ; 3BFA _ 89. C2
        mov     eax, dword [task_timer]                 ; 3BFC _ A1, 000021E4(d)
        sub     esp, 8                                  ; 3C01 _ 83. EC, 08
        push    edx                                     ; 3C04 _ 52
        push    eax                                     ; 3C05 _ 50
        call    timer_setTime                           ; 3C06 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 3C0B _ 83. C4, 10
        mov     eax, dword [ebp-0CH]                    ; 3C0E _ 8B. 45, F4
        cmp     eax, dword [ebp-10H]                    ; 3C11 _ 3B. 45, F0
        jz      ?_214                                   ; 3C14 _ 74, 1A
        cmp     dword [ebp-0CH], 0                      ; 3C16 _ 83. 7D, F4, 00
        jz      ?_214                                   ; 3C1A _ 74, 14
        mov     eax, dword [ebp-0CH]                    ; 3C1C _ 8B. 45, F4
        mov     eax, dword [eax]                        ; 3C1F _ 8B. 00
        sub     esp, 8                                  ; 3C21 _ 83. EC, 08
        push    eax                                     ; 3C24 _ 50
        push    0                                       ; 3C25 _ 6A, 00
        call    farjmp                                  ; 3C27 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 3C2C _ 83. C4, 10
        nop                                             ; 3C2F _ 90
?_214:  nop                                             ; 3C30 _ 90
        leave                                           ; 3C31 _ C9
        ret                                             ; 3C32 _ C3
; task_switch End of function

task_sleep:; Function begin
        push    ebp                                     ; 3C33 _ 55
        mov     ebp, esp                                ; 3C34 _ 89. E5
        sub     esp, 24                                 ; 3C36 _ 83. EC, 18
        mov     dword [ebp-0CH], 0                      ; 3C39 _ C7. 45, F4, 00000000
        mov     byte [ebp-0DH], 0                       ; 3C40 _ C6. 45, F3, 00
        mov     eax, dword [ebp+8H]                     ; 3C44 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 3C47 _ 8B. 40, 04
        cmp     eax, 2                                  ; 3C4A _ 83. F8, 02
        jnz     ?_215                                   ; 3C4D _ 75, 4C
        call    task_now                                ; 3C4F _ E8, FFFFFFFC(rel)
        mov     dword [ebp-0CH], eax                    ; 3C54 _ 89. 45, F4
        sub     esp, 12                                 ; 3C57 _ 83. EC, 0C
        push    dword [ebp+8H]                          ; 3C5A _ FF. 75, 08
        call    task_remove                             ; 3C5D _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 3C62 _ 83. C4, 10
        mov     byte [ebp-0DH], 1                       ; 3C65 _ C6. 45, F3, 01
        mov     eax, dword [ebp+8H]                     ; 3C69 _ 8B. 45, 08
        cmp     eax, dword [ebp-0CH]                    ; 3C6C _ 3B. 45, F4
        jnz     ?_215                                   ; 3C6F _ 75, 2A
        call    task_switchsub                          ; 3C71 _ E8, FFFFFFFC(rel)
        call    task_now                                ; 3C76 _ E8, FFFFFFFC(rel)
        mov     dword [ebp-0CH], eax                    ; 3C7B _ 89. 45, F4
        mov     byte [ebp-0DH], 2                       ; 3C7E _ C6. 45, F3, 02
        cmp     dword [ebp-0CH], 0                      ; 3C82 _ 83. 7D, F4, 00
        jz      ?_215                                   ; 3C86 _ 74, 13
        mov     eax, dword [ebp-0CH]                    ; 3C88 _ 8B. 45, F4
        mov     eax, dword [eax]                        ; 3C8B _ 8B. 00
        sub     esp, 8                                  ; 3C8D _ 83. EC, 08
        push    eax                                     ; 3C90 _ 50
        push    0                                       ; 3C91 _ 6A, 00
        call    farjmp                                  ; 3C93 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 3C98 _ 83. C4, 10
?_215:  movsx   eax, byte [ebp-0DH]                     ; 3C9B _ 0F BE. 45, F3
        leave                                           ; 3C9F _ C9
        ret                                             ; 3CA0 _ C3
; task_sleep End of function

task_now:; Function begin
        push    ebp                                     ; 3CA1 _ 55
        mov     ebp, esp                                ; 3CA2 _ 89. E5
        sub     esp, 16                                 ; 3CA4 _ 83. EC, 10
        mov     edx, dword [taskctl]                    ; 3CA7 _ 8B. 15, 000021E8(d)
        mov     eax, dword [taskctl]                    ; 3CAD _ A1, 000021E8(d)
        mov     eax, dword [eax]                        ; 3CB2 _ 8B. 00
        imul    eax, eax, 28                            ; 3CB4 _ 6B. C0, 1C
        add     eax, edx                                ; 3CB7 _ 01. D0
        add     eax, 8                                  ; 3CB9 _ 83. C0, 08
        mov     dword [ebp-4H], eax                     ; 3CBC _ 89. 45, FC
        mov     eax, dword [ebp-4H]                     ; 3CBF _ 8B. 45, FC
        mov     edx, dword [eax+4H]                     ; 3CC2 _ 8B. 50, 04
        mov     eax, dword [ebp-4H]                     ; 3CC5 _ 8B. 45, FC
        mov     eax, dword [eax+edx*4+8H]               ; 3CC8 _ 8B. 44 90, 08
        leave                                           ; 3CCC _ C9
        ret                                             ; 3CCD _ C3
; task_now End of function

task_add:; Function begin
        push    ebp                                     ; 3CCE _ 55
        mov     ebp, esp                                ; 3CCF _ 89. E5
        sub     esp, 16                                 ; 3CD1 _ 83. EC, 10
        mov     edx, dword [taskctl]                    ; 3CD4 _ 8B. 15, 000021E8(d)
        mov     eax, dword [ebp+8H]                     ; 3CDA _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 3CDD _ 8B. 40, 0C
        imul    eax, eax, 28                            ; 3CE0 _ 6B. C0, 1C
        add     eax, edx                                ; 3CE3 _ 01. D0
        add     eax, 8                                  ; 3CE5 _ 83. C0, 08
        mov     dword [ebp-4H], eax                     ; 3CE8 _ 89. 45, FC
        mov     eax, dword [ebp-4H]                     ; 3CEB _ 8B. 45, FC
        mov     edx, dword [eax]                        ; 3CEE _ 8B. 10
        mov     eax, dword [ebp-4H]                     ; 3CF0 _ 8B. 45, FC
        mov     ecx, dword [ebp+8H]                     ; 3CF3 _ 8B. 4D, 08
        mov     dword [eax+edx*4+8H], ecx               ; 3CF6 _ 89. 4C 90, 08
        mov     eax, dword [ebp-4H]                     ; 3CFA _ 8B. 45, FC
        mov     eax, dword [eax]                        ; 3CFD _ 8B. 00
        lea     edx, [eax+1H]                           ; 3CFF _ 8D. 50, 01
        mov     eax, dword [ebp-4H]                     ; 3D02 _ 8B. 45, FC
        mov     dword [eax], edx                        ; 3D05 _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 3D07 _ 8B. 45, 08
        mov     dword [eax+4H], 2                       ; 3D0A _ C7. 40, 04, 00000002
        nop                                             ; 3D11 _ 90
        leave                                           ; 3D12 _ C9
        ret                                             ; 3D13 _ C3
; task_add End of function

task_remove:; Function begin
        push    ebp                                     ; 3D14 _ 55
        mov     ebp, esp                                ; 3D15 _ 89. E5
        sub     esp, 16                                 ; 3D17 _ 83. EC, 10
        mov     edx, dword [taskctl]                    ; 3D1A _ 8B. 15, 000021E8(d)
        mov     eax, dword [ebp+8H]                     ; 3D20 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 3D23 _ 8B. 40, 0C
        imul    eax, eax, 28                            ; 3D26 _ 6B. C0, 1C
        add     eax, edx                                ; 3D29 _ 01. D0
        add     eax, 8                                  ; 3D2B _ 83. C0, 08
        mov     dword [ebp-4H], eax                     ; 3D2E _ 89. 45, FC
        mov     dword [ebp-8H], 0                       ; 3D31 _ C7. 45, F8, 00000000
        jmp     ?_218                                   ; 3D38 _ EB, 23

?_216:  mov     eax, dword [ebp-4H]                     ; 3D3A _ 8B. 45, FC
        mov     edx, dword [ebp-8H]                     ; 3D3D _ 8B. 55, F8
        mov     eax, dword [eax+edx*4+8H]               ; 3D40 _ 8B. 44 90, 08
        cmp     dword [ebp+8H], eax                     ; 3D44 _ 39. 45, 08
        jnz     ?_217                                   ; 3D47 _ 75, 10
        mov     eax, dword [ebp-4H]                     ; 3D49 _ 8B. 45, FC
        mov     edx, dword [ebp-8H]                     ; 3D4C _ 8B. 55, F8
        mov     dword [eax+edx*4+8H], 0                 ; 3D4F _ C7. 44 90, 08, 00000000
        jmp     ?_219                                   ; 3D57 _ EB, 0E

?_217:  add     dword [ebp-8H], 1                       ; 3D59 _ 83. 45, F8, 01
?_218:  mov     eax, dword [ebp-4H]                     ; 3D5D _ 8B. 45, FC
        mov     eax, dword [eax]                        ; 3D60 _ 8B. 00
        cmp     dword [ebp-8H], eax                     ; 3D62 _ 39. 45, F8
        jl      ?_216                                   ; 3D65 _ 7C, D3
?_219:  mov     eax, dword [ebp-4H]                     ; 3D67 _ 8B. 45, FC
        mov     eax, dword [eax]                        ; 3D6A _ 8B. 00
        lea     edx, [eax-1H]                           ; 3D6C _ 8D. 50, FF
        mov     eax, dword [ebp-4H]                     ; 3D6F _ 8B. 45, FC
        mov     dword [eax], edx                        ; 3D72 _ 89. 10
        mov     eax, dword [ebp-4H]                     ; 3D74 _ 8B. 45, FC
        mov     eax, dword [eax+4H]                     ; 3D77 _ 8B. 40, 04
        cmp     dword [ebp-8H], eax                     ; 3D7A _ 39. 45, F8
        jge     ?_220                                   ; 3D7D _ 7D, 0F
        mov     eax, dword [ebp-4H]                     ; 3D7F _ 8B. 45, FC
        mov     eax, dword [eax+4H]                     ; 3D82 _ 8B. 40, 04
        lea     edx, [eax-1H]                           ; 3D85 _ 8D. 50, FF
        mov     eax, dword [ebp-4H]                     ; 3D88 _ 8B. 45, FC
        mov     dword [eax+4H], edx                     ; 3D8B _ 89. 50, 04
?_220:  mov     eax, dword [ebp-4H]                     ; 3D8E _ 8B. 45, FC
        mov     edx, dword [eax+4H]                     ; 3D91 _ 8B. 50, 04
        mov     eax, dword [ebp-4H]                     ; 3D94 _ 8B. 45, FC
        mov     eax, dword [eax]                        ; 3D97 _ 8B. 00
        cmp     edx, eax                                ; 3D99 _ 39. C2
        jl      ?_221                                   ; 3D9B _ 7C, 0A
        mov     eax, dword [ebp-4H]                     ; 3D9D _ 8B. 45, FC
        mov     dword [eax+4H], 0                       ; 3DA0 _ C7. 40, 04, 00000000
?_221:  mov     eax, dword [ebp+8H]                     ; 3DA7 _ 8B. 45, 08
        mov     dword [eax+4H], 1                       ; 3DAA _ C7. 40, 04, 00000001
        jmp     ?_223                                   ; 3DB1 _ EB, 1B

?_222:  mov     eax, dword [ebp-8H]                     ; 3DB3 _ 8B. 45, F8
        lea     edx, [eax+1H]                           ; 3DB6 _ 8D. 50, 01
        mov     eax, dword [ebp-4H]                     ; 3DB9 _ 8B. 45, FC
        mov     ecx, dword [eax+edx*4+8H]               ; 3DBC _ 8B. 4C 90, 08
        mov     eax, dword [ebp-4H]                     ; 3DC0 _ 8B. 45, FC
        mov     edx, dword [ebp-8H]                     ; 3DC3 _ 8B. 55, F8
        mov     dword [eax+edx*4+8H], ecx               ; 3DC6 _ 89. 4C 90, 08
        add     dword [ebp-8H], 1                       ; 3DCA _ 83. 45, F8, 01
?_223:  mov     eax, dword [ebp-4H]                     ; 3DCE _ 8B. 45, FC
        mov     eax, dword [eax]                        ; 3DD1 _ 8B. 00
        cmp     dword [ebp-8H], eax                     ; 3DD3 _ 39. 45, F8
        jl      ?_222                                   ; 3DD6 _ 7C, DB
        nop                                             ; 3DD8 _ 90
        leave                                           ; 3DD9 _ C9
        ret                                             ; 3DDA _ C3
; task_remove End of function

task_switchsub:; Function begin
        push    ebp                                     ; 3DDB _ 55
        mov     ebp, esp                                ; 3DDC _ 89. E5
        sub     esp, 16                                 ; 3DDE _ 83. EC, 10
        mov     dword [ebp-4H], 0                       ; 3DE1 _ C7. 45, FC, 00000000
        jmp     ?_225                                   ; 3DE8 _ EB, 1B

?_224:  mov     edx, dword [taskctl]                    ; 3DEA _ 8B. 15, 000021E8(d)
        mov     eax, dword [ebp-4H]                     ; 3DF0 _ 8B. 45, FC
        imul    eax, eax, 28                            ; 3DF3 _ 6B. C0, 1C
        add     eax, edx                                ; 3DF6 _ 01. D0
        add     eax, 8                                  ; 3DF8 _ 83. C0, 08
        mov     eax, dword [eax]                        ; 3DFB _ 8B. 00
        test    eax, eax                                ; 3DFD _ 85. C0
        jg      ?_226                                   ; 3DFF _ 7F, 0C
        add     dword [ebp-4H], 1                       ; 3E01 _ 83. 45, FC, 01
?_225:  cmp     dword [ebp-4H], 2                       ; 3E05 _ 83. 7D, FC, 02
        jle     ?_224                                   ; 3E09 _ 7E, DF
        jmp     ?_227                                   ; 3E0B _ EB, 01

?_226:  nop                                             ; 3E0D _ 90
?_227:  mov     eax, dword [taskctl]                    ; 3E0E _ A1, 000021E8(d)
        mov     edx, dword [ebp-4H]                     ; 3E13 _ 8B. 55, FC
        mov     dword [eax], edx                        ; 3E16 _ 89. 10
        mov     eax, dword [taskctl]                    ; 3E18 _ A1, 000021E8(d)
        mov     dword [eax+4H], 0                       ; 3E1D _ C7. 40, 04, 00000000
        nop                                             ; 3E24 _ 90
        leave                                           ; 3E25 _ C9
        ret                                             ; 3E26 _ C3
; task_switchsub End of function

getTaskctl:; Function begin
        push    ebp                                     ; 3E27 _ 55
        mov     ebp, esp                                ; 3E28 _ 89. E5
        mov     eax, dword [taskctl]                    ; 3E2A _ A1, 000021E8(d)
        pop     ebp                                     ; 3E2F _ 5D
        ret                                             ; 3E30 _ C3
; getTaskctl End of function

send_message:; Function begin
        push    ebp                                     ; 3E31 _ 55
        mov     ebp, esp                                ; 3E32 _ 89. E5
        sub     esp, 8                                  ; 3E34 _ 83. EC, 08
        mov     eax, dword [ebp+10H]                    ; 3E37 _ 8B. 45, 10
        movzx   eax, al                                 ; 3E3A _ 0F B6. C0
        mov     edx, dword [ebp+0CH]                    ; 3E3D _ 8B. 55, 0C
        add     edx, 16                                 ; 3E40 _ 83. C2, 10
        sub     esp, 8                                  ; 3E43 _ 83. EC, 08
        push    eax                                     ; 3E46 _ 50
        push    edx                                     ; 3E47 _ 52
        call    fifo8_put                               ; 3E48 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 3E4D _ 83. C4, 10
        sub     esp, 12                                 ; 3E50 _ 83. EC, 0C
        push    dword [ebp+8H]                          ; 3E53 _ FF. 75, 08
        call    task_sleep                              ; 3E56 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 3E5B _ 83. C4, 10
        nop                                             ; 3E5E _ 90
        leave                                           ; 3E5F _ C9
        ret                                             ; 3E60 _ C3
; send_message End of function



?_228:                                                  ; byte
        db 43H, 6FH, 75H, 6EH, 74H, 65H, 72H, 00H       ; 0000 _ Counter.

?_229:                                                  ; byte
        db 43H, 6FH, 70H, 79H, 72H, 69H, 67H, 68H       ; 0008 _ Copyrigh
        db 74H, 20H, 32H, 30H, 32H, 31H, 20H, 43H       ; 0010 _ t 2021 C
        db 68H, 65H, 72H, 72H, 79H, 00H                 ; 0018 _ herry.

?_230:                                                  ; byte
        db 54H, 65H, 72H, 6DH, 69H, 6EH, 61H, 6CH       ; 001E _ Terminal
        db 00H                                          ; 0026 _ .

?_231:                                                  ; byte
        db 42H, 75H, 6EH, 6EH, 79H, 2EH, 2EH, 2EH       ; 0027 _ Bunny...
        db 00H                                          ; 002F _ .

?_232:                                                  ; byte
        db 41H, 00H                                     ; 0030 _ A.

?_233:                                                  ; byte
        db 33H, 5BH, 73H, 65H, 63H, 5DH, 00H            ; 0032 _ 3[sec].

?_234:                                                  ; byte
        db 3EH, 00H                                     ; 0039 _ >.

?_235:                                                  ; byte
        db 45H, 6EH, 74H, 65H, 72H, 20H, 54H, 61H       ; 003B _ Enter Ta
        db 73H, 6BH, 20H, 42H, 00H                      ; 0043 _ sk B.

?_236:                                                  ; byte
        db 42H, 00H                                     ; 0048 _ B.

?_237:                                                  ; byte
        db 50H, 61H, 67H, 65H, 20H, 69H, 73H, 3AH       ; 004A _ Page is:
        db 20H, 00H                                     ; 0052 _  .

?_238:                                                  ; byte
        db 42H, 61H, 73H, 65H, 41H, 64H, 64H, 72H       ; 0054 _ BaseAddr
        db 4CH, 6FH, 77H, 3AH, 20H, 00H                 ; 005C _ Low: .

?_239:                                                  ; byte
        db 42H, 61H, 73H, 65H, 41H, 64H, 64H, 72H       ; 0062 _ BaseAddr
        db 48H, 69H, 67H, 68H, 3AH, 20H, 00H            ; 006A _ High: .

?_240:                                                  ; byte
        db 4CH, 65H, 6EH, 67H, 74H, 68H, 4CH, 6FH       ; 0071 _ LengthLo
        db 77H, 3AH, 20H, 00H                           ; 0079 _ w: .

?_241:                                                  ; byte
        db 4CH, 65H, 6EH, 67H, 74H, 68H, 48H, 69H       ; 007D _ LengthHi
        db 67H, 68H, 3AH, 20H, 00H                      ; 0085 _ gh: .

?_242:                                                  ; byte
        db 54H, 79H, 70H, 65H, 3AH, 20H, 00H            ; 008A _ Type: .



keyVal:                                                 ; byte
        db 30H, 78H                                     ; 0000 _ 0x

?_243:  db 00H                                          ; 0002 _ .

?_244:  db 00H, 00H, 00H, 00H, 00H                      ; 0003 _ .....

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

pos.2298: dd 00000010H, 00000000H                       ; 0100 _ 16 0 
        dd 00000000H, 00000000H                         ; 0108 _ 0 0 
        dd 00000000H, 00000000H                         ; 0110 _ 0 0 
        dd 00000000H, 00000000H                         ; 0118 _ 0 0 

table_rgb.2381:                                         ; byte
        db 00H, 00H, 00H, 0FFH, 00H, 00H, 00H, 0FFH     ; 0120 _ ........
        db 00H, 0FFH, 0FFH, 00H, 00H, 00H, 0FFH, 0FFH   ; 0128 _ ........
        db 00H, 0FFH, 00H, 0FFH, 0FFH, 0FFH, 0FFH, 0FFH ; 0130 _ ........
        db 0C6H, 0C6H, 0C6H, 84H, 00H, 00H, 00H, 84H    ; 0138 _ ........
        db 00H, 84H, 84H, 00H, 00H, 00H, 84H, 84H       ; 0140 _ ........
        db 00H, 84H, 00H, 78H, 0D7H, 84H, 84H, 84H      ; 0148 _ ...x....
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0150 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0158 _ ........

cursor.2436:                                            ; byte
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

closebtn.2589:                                          ; byte
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

?_245:  resw    1                                       ; 000C

?_246:  resw    1                                       ; 000E

keyInfo:                                                ; byte
        resb    24                                      ; 0010

?_247:  resd    1                                       ; 0028

mouseInfo:                                              ; byte
        resb    52                                      ; 002C

keybuf:                                                 ; yword
        resb    32                                      ; 0060

mousebuf:                                               ; byte
        resb    128                                     ; 0080

mouse_move:                                             ; oword
        resb    12                                      ; 0100

?_248:  resd    1                                       ; 010C

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

task_a.2293:                                            ; dword
        resd    1                                       ; 025C

line.2297:                                              ; dword
        resd    1                                       ; 0260

cnt.2294: resd  1                                       ; 0264

task_b.2283:                                            ; oword
        resb    16                                      ; 0268

str.2479:                                               ; byte
        resb    1                                       ; 0278

?_249:  resb    9                                       ; 0279

?_250:  resb    2                                       ; 0282

line.2512:                                              ; dword
        resd    1                                       ; 0284

pos.2511: resd  6                                       ; 0288

timerctl:                                               ; byte
        resd    1                                       ; 02A0

?_251:                                                  ; byte
        resb    4                                       ; 02A4

?_252:                                                  ; byte
        resb    4                                       ; 02A8

?_253:                                                  ; byte
        resb    4                                       ; 02AC

?_254:                                                  ; byte
        resb    7988                                    ; 02B0

task_timer:                                             ; dword
        resd    1                                       ; 21E4

taskctl: resd   1                                       ; 21E8


