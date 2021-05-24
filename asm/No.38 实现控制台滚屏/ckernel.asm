; Disassembly of file: ckernel.o
; Mon May 24 09:25:06 2021
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
        movzx   eax, word [?_255]                       ; 002B _ 0F B7. 05, 0000000C(d)
        cwde                                            ; 0032 _ 98
        mov     dword [ebp-54H], eax                    ; 0033 _ 89. 45, AC
        movzx   eax, word [?_256]                       ; 0036 _ 0F B7. 05, 0000000E(d)
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
        push    ?_238                                   ; 02ED _ 68, 00000000(d)
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
        mov     dword [task_a.2302], eax                ; 0352 _ A3, 0000025C(d)
        mov     eax, dword [task_a.2302]                ; 0357 _ A1, 0000025C(d)
        mov     dword [task_main], eax                  ; 035C _ A3, 00000258(d)
        mov     eax, dword [task_a.2302]                ; 0361 _ A1, 0000025C(d)
        mov     dword [?_257], eax                      ; 0366 _ A3, 00000028(d)
        mov     byte [ebp-6DH], 0                       ; 036B _ C6. 45, 93, 00
        mov     dword [ebp-6CH], 7                      ; 036F _ C7. 45, 94, 00000007
        mov     dword [ebp-68H], 0                      ; 0376 _ C7. 45, 98, 00000000
        mov     edx, dword [sheet_win]                  ; 037D _ 8B. 15, 00000248(d)
        mov     eax, dword [shtctl]                     ; 0383 _ A1, 00000244(d)
        sub     esp, 8                                  ; 0388 _ 83. EC, 08
        push    ?_239                                   ; 038B _ 68, 00000008(d)
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
        push    ?_238                                   ; 0463 _ 68, 00000000(d)
        push    edx                                     ; 0468 _ 52
        push    eax                                     ; 0469 _ 50
        call    make_wtitle8                            ; 046A _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 046F _ 83. C4, 10
        mov     eax, dword [shtctl]                     ; 0472 _ A1, 00000244(d)
        push    1                                       ; 0477 _ 6A, 01
        push    ?_240                                   ; 0479 _ 68, 0000001E(d)
        push    dword [ebp-28H]                         ; 047E _ FF. 75, D8
        push    eax                                     ; 0481 _ 50
        call    make_wtitle8                            ; 0482 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0487 _ 83. C4, 10
        mov     ebx, dword [pos.2307]                   ; 048A _ 8B. 1D, 00000100(d)
        mov     ecx, dword [line.2306]                  ; 0490 _ 8B. 0D, 00000260(d)
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
        push    ?_238                                   ; 04CF _ 68, 00000000(d)
        push    edx                                     ; 04D4 _ 52
        push    eax                                     ; 04D5 _ 50
        call    make_wtitle8                            ; 04D6 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 04DB _ 83. C4, 10
        mov     eax, dword [shtctl]                     ; 04DE _ A1, 00000244(d)
        push    0                                       ; 04E3 _ 6A, 00
        push    ?_240                                   ; 04E5 _ 68, 0000001E(d)
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
        mov     eax, dword [task_a.2302]                ; 054B _ A1, 0000025C(d)
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
        push    ?_241                                   ; 0578 _ 68, 00000027(d)
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
        mov     eax, dword [line.2306]                  ; 05A5 _ A1, 00000260(d)
        cmp     eax, 142                                ; 05AA _ 3D, 0000008E
        jg      ?_007                                   ; 05AF _ 0F 8F, 000000B3
        mov     ebx, dword [pos.2307]                   ; 05B5 _ 8B. 1D, 00000100(d)
        mov     ecx, dword [line.2306]                  ; 05BB _ 8B. 0D, 00000260(d)
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
        mov     eax, dword [pos.2307]                   ; 05F4 _ A1, 00000100(d)
        lea     esi, [eax+1AH]                          ; 05F9 _ 8D. 70, 1A
        mov     eax, dword [line.2306]                  ; 05FC _ A1, 00000260(d)
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
        mov     eax, dword [line.2306]                  ; 0624 _ A1, 00000260(d)
        add     eax, 8                                  ; 0629 _ 83. C0, 08
        mov     dword [line.2306], eax                  ; 062C _ A3, 00000260(d)
        mov     eax, dword [sheet_win]                  ; 0631 _ A1, 00000248(d)
        mov     eax, dword [eax+4H]                     ; 0636 _ 8B. 40, 04
        lea     edx, [eax-10H]                          ; 0639 _ 8D. 50, F0
        mov     eax, dword [line.2306]                  ; 063C _ A1, 00000260(d)
        cmp     edx, eax                                ; 0641 _ 39. C2
        jg      ?_006                                   ; 0643 _ 7F, 17
        mov     eax, dword [pos.2307]                   ; 0645 _ A1, 00000100(d)
        add     eax, 16                                 ; 064A _ 83. C0, 10
        mov     dword [pos.2307], eax                   ; 064D _ A3, 00000100(d)
        mov     dword [line.2306], 0                    ; 0652 _ C7. 05, 00000260(d), 00000000
?_006:  mov     dword [ebp-64H], 0                      ; 065C _ C7. 45, 9C, 00000000
        jmp     ?_015                                   ; 0663 _ E9, 00000239

?_007:  cmp     byte [ebp-6DH], 14                      ; 0668 _ 80. 7D, 93, 0E
        jne     ?_001                                   ; 066C _ 0F 85, FFFFFD4B
        mov     eax, dword [line.2306]                  ; 0672 _ A1, 00000260(d)
        cmp     eax, 7                                  ; 0677 _ 83. F8, 07
        jle     ?_001                                   ; 067A _ 0F 8E, FFFFFD3D
        mov     ebx, dword [pos.2307]                   ; 0680 _ 8B. 1D, 00000100(d)
        mov     ecx, dword [line.2306]                  ; 0686 _ 8B. 0D, 00000260(d)
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
        mov     eax, dword [line.2306]                  ; 06A8 _ A1, 00000260(d)
        sub     eax, 8                                  ; 06AD _ 83. E8, 08
        mov     dword [line.2306], eax                  ; 06B0 _ A3, 00000260(d)
        mov     ebx, dword [pos.2307]                   ; 06B5 _ 8B. 1D, 00000100(d)
        mov     ecx, dword [line.2306]                  ; 06BB _ 8B. 0D, 00000260(d)
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
        mov     eax, dword [task_a.2302]                ; 0714 _ A1, 0000025C(d)
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
        push    ?_242                                   ; 07A6 _ 68, 00000030(d)
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
        push    ?_243                                   ; 080E _ 68, 00000032(d)
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
        mov     ebx, dword [pos.2307]                   ; 0878 _ 8B. 1D, 00000100(d)
        mov     ecx, dword [line.2306]                  ; 087E _ 8B. 0D, 00000260(d)
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
        push    69600                                   ; 0AD3 _ 68, 00010FE0
        push    eax                                     ; 0AD8 _ 50
        call    memman_alloc_4K                         ; 0AD9 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0ADE _ 83. C4, 10
        mov     dword [ebp-14H], eax                    ; 0AE1 _ 89. 45, EC
        sub     esp, 12                                 ; 0AE4 _ 83. EC, 0C
        push    99                                      ; 0AE7 _ 6A, 63
        push    232                                     ; 0AE9 _ 68, 000000E8
        push    300                                     ; 0AEE _ 68, 0000012C
        push    dword [ebp-14H]                         ; 0AF3 _ FF. 75, EC
        push    dword [ebp-18H]                         ; 0AF6 _ FF. 75, E8
        call    sheet_setbuf                            ; 0AF9 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0AFE _ 83. C4, 20
        mov     eax, dword [shtctl]                     ; 0B01 _ A1, 00000244(d)
        push    0                                       ; 0B06 _ 6A, 00
        push    ?_240                                   ; 0B08 _ 68, 0000001E(d)
        push    dword [ebp-18H]                         ; 0B0D _ FF. 75, E8
        push    eax                                     ; 0B10 _ 50
        call    make_window8                            ; 0B11 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0B16 _ 83. C4, 10
        sub     esp, 8                                  ; 0B19 _ 83. EC, 08
        push    0                                       ; 0B1C _ 6A, 00
        push    196                                     ; 0B1E _ 68, 000000C4
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
        push    ?_244                                   ; 0CD9 _ 68, 00000039(d)
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
        jmp     ?_041                                   ; 0D15 _ E9, 000002DC

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
        jmp     ?_041                                   ; 0DC5 _ E9, 0000022C

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
        jmp     ?_041                                   ; 0E0D _ E9, 000001E4

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
        jmp     ?_041                                   ; 0E5F _ E9, 00000192

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
        jmp     ?_041                                   ; 0EC7 _ E9, 0000012A

?_039:  cmp     dword [ebp-94H], 28                     ; 0ECC _ 83. BD, FFFFFF6C, 1C
        jnz     ?_040                                   ; 0ED3 _ 75, 76
        mov     eax, dword [shtctl]                     ; 0ED5 _ A1, 00000244(d)
        sub     esp, 12                                 ; 0EDA _ 83. EC, 0C
        push    0                                       ; 0EDD _ 6A, 00
        push    dword [ebp-0A0H]                        ; 0EDF _ FF. B5, FFFFFF60
        push    dword [ebp-0A8H]                        ; 0EE5 _ FF. B5, FFFFFF58
        push    dword [ebp-0ACH]                        ; 0EEB _ FF. B5, FFFFFF54
        push    eax                                     ; 0EF1 _ 50
        call    set_cursor                              ; 0EF2 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0EF7 _ 83. C4, 20
        sub     esp, 8                                  ; 0EFA _ 83. EC, 08
        push    dword [ebp-0ACH]                        ; 0EFD _ FF. B5, FFFFFF54
        push    dword [ebp-0A0H]                        ; 0F03 _ FF. B5, FFFFFF60
        call    cons_newline                            ; 0F09 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0F0E _ 83. C4, 10
        mov     dword [ebp-0A0H], eax                   ; 0F11 _ 89. 85, FFFFFF60
        mov     dword [ebp-0A8H], 8                     ; 0F17 _ C7. 85, FFFFFF58, 00000008
        mov     eax, dword [shtctl]                     ; 0F21 _ A1, 00000244(d)
        sub     esp, 12                                 ; 0F26 _ 83. EC, 0C
        push    7                                       ; 0F29 _ 6A, 07
        push    dword [ebp-0A0H]                        ; 0F2B _ FF. B5, FFFFFF60
        push    dword [ebp-0A8H]                        ; 0F31 _ FF. B5, FFFFFF58
        push    dword [ebp-0ACH]                        ; 0F37 _ FF. B5, FFFFFF54
        push    eax                                     ; 0F3D _ 50
        call    set_cursor                              ; 0F3E _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0F43 _ 83. C4, 20
        jmp     ?_041                                   ; 0F46 _ E9, 000000AB

?_040:  sub     esp, 12                                 ; 0F4B _ 83. EC, 0C
        push    dword [ebp-94H]                         ; 0F4E _ FF. B5, FFFFFF6C
        call    transferScanCode                        ; 0F54 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0F59 _ 83. C4, 10
        test    al, al                                  ; 0F5C _ 84. C0
        je      ?_041                                   ; 0F5E _ 0F 84, 00000092
        mov     eax, dword [ebp-0ACH]                   ; 0F64 _ 8B. 85, FFFFFF54
        mov     eax, dword [eax+4H]                     ; 0F6A _ 8B. 40, 04
        sub     eax, 35                                 ; 0F6D _ 83. E8, 23
        cmp     dword [ebp-0A8H], eax                   ; 0F70 _ 39. 85, FFFFFF58
        jg      ?_041                                   ; 0F76 _ 7F, 7E
        mov     eax, dword [shtctl]                     ; 0F78 _ A1, 00000244(d)
        sub     esp, 12                                 ; 0F7D _ 83. EC, 0C
        push    0                                       ; 0F80 _ 6A, 00
        push    dword [ebp-0A0H]                        ; 0F82 _ FF. B5, FFFFFF60
        push    dword [ebp-0A8H]                        ; 0F88 _ FF. B5, FFFFFF58
        push    dword [ebp-0ACH]                        ; 0F8E _ FF. B5, FFFFFF54
        push    eax                                     ; 0F94 _ 50
        call    set_cursor                              ; 0F95 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0F9A _ 83. C4, 20
        sub     esp, 12                                 ; 0F9D _ 83. EC, 0C
        push    dword [ebp-94H]                         ; 0FA0 _ FF. B5, FFFFFF6C
        call    transferScanCode                        ; 0FA6 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0FAB _ 83. C4, 10
        mov     byte [ebp-8EH], al                      ; 0FAE _ 88. 85, FFFFFF72
        mov     byte [ebp-8DH], 0                       ; 0FB4 _ C6. 85, FFFFFF73, 00
        mov     eax, dword [ebp-0A0H]                   ; 0FBB _ 8B. 85, FFFFFF60
        lea     ebx, [eax+1AH]                          ; 0FC1 _ 8D. 58, 1A
        mov     eax, dword [ebp-0A8H]                   ; 0FC4 _ 8B. 85, FFFFFF58
        lea     ecx, [eax+0AH]                          ; 0FCA _ 8D. 48, 0A
        mov     eax, dword [shtctl]                     ; 0FCD _ A1, 00000244(d)
        sub     esp, 8                                  ; 0FD2 _ 83. EC, 08
        lea     edx, [ebp-8EH]                          ; 0FD5 _ 8D. 95, FFFFFF72
        push    edx                                     ; 0FDB _ 52
        push    7                                       ; 0FDC _ 6A, 07
        push    ebx                                     ; 0FDE _ 53
        push    ecx                                     ; 0FDF _ 51
        push    dword [ebp-0ACH]                        ; 0FE0 _ FF. B5, FFFFFF54
        push    eax                                     ; 0FE6 _ 50
        call    showString                              ; 0FE7 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0FEC _ 83. C4, 20
        add     dword [ebp-0A8H], 8                     ; 0FEF _ 83. 85, FFFFFF58, 08
?_041:  cmp     dword [ebp-0A4H], 0                     ; 0FF6 _ 83. BD, FFFFFF5C, 00
        js      ?_032                                   ; 0FFD _ 0F 88, FFFFFCEF
        mov     eax, dword [shtctl]                     ; 1003 _ A1, 00000244(d)
        sub     esp, 12                                 ; 1008 _ 83. EC, 0C
        push    dword [ebp-0A4H]                        ; 100B _ FF. B5, FFFFFF5C
        push    dword [ebp-0A0H]                        ; 1011 _ FF. B5, FFFFFF60
        push    dword [ebp-0A8H]                        ; 1017 _ FF. B5, FFFFFF58
        push    dword [ebp-0ACH]                        ; 101D _ FF. B5, FFFFFF54
        push    eax                                     ; 1023 _ 50
        call    set_cursor                              ; 1024 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1029 _ 83. C4, 20
        jmp     ?_032                                   ; 102C _ E9, FFFFFCC1
; console_task End of function

task_b_main:; Function begin
        push    ebp                                     ; 1031 _ 55
        mov     ebp, esp                                ; 1032 _ 89. E5
        sub     esp, 88                                 ; 1034 _ 83. EC, 58
        mov     eax, dword [ebp+8H]                     ; 1037 _ 8B. 45, 08
        mov     dword [ebp-4CH], eax                    ; 103A _ 89. 45, B4
; Note: Absolute memory address without relocation
        mov     eax, dword [gs:14H]                     ; 103D _ 65: A1, 00000014
        mov     dword [ebp-0CH], eax                    ; 1043 _ 89. 45, F4
        xor     eax, eax                                ; 1046 _ 31. C0
        mov     edx, dword [sheet_back]                 ; 1048 _ 8B. 15, 0000024C(d)
        mov     eax, dword [shtctl]                     ; 104E _ A1, 00000244(d)
        sub     esp, 8                                  ; 1053 _ 83. EC, 08
        push    ?_245                                   ; 1056 _ 68, 0000003B(d)
        push    7                                       ; 105B _ 6A, 07
        push    144                                     ; 105D _ 68, 00000090
        push    0                                       ; 1062 _ 6A, 00
        push    edx                                     ; 1064 _ 52
        push    eax                                     ; 1065 _ 50
        call    showString                              ; 1066 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 106B _ 83. C4, 20
        mov     dword [ebp-3CH], 0                      ; 106E _ C7. 45, C4, 00000000
        mov     dword [ebp-38H], 0                      ; 1075 _ C7. 45, C8, 00000000
        push    0                                       ; 107C _ 6A, 00
        lea     eax, [ebp-14H]                          ; 107E _ 8D. 45, EC
        push    eax                                     ; 1081 _ 50
        push    8                                       ; 1082 _ 6A, 08
        lea     eax, [ebp-30H]                          ; 1084 _ 8D. 45, D0
        push    eax                                     ; 1087 _ 50
        call    fifo8_init                              ; 1088 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 108D _ 83. C4, 10
        call    timer_alloc                             ; 1090 _ E8, FFFFFFFC(rel)
        mov     dword [ebp-3CH], eax                    ; 1095 _ 89. 45, C4
        sub     esp, 4                                  ; 1098 _ 83. EC, 04
        push    123                                     ; 109B _ 6A, 7B
        lea     eax, [ebp-30H]                          ; 109D _ 8D. 45, D0
        push    eax                                     ; 10A0 _ 50
        push    dword [ebp-3CH]                         ; 10A1 _ FF. 75, C4
        call    timer_init                              ; 10A4 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 10A9 _ 83. C4, 10
        sub     esp, 8                                  ; 10AC _ 83. EC, 08
        push    100                                     ; 10AF _ 6A, 64
        push    dword [ebp-3CH]                         ; 10B1 _ FF. 75, C4
        call    timer_setTime                           ; 10B4 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 10B9 _ 83. C4, 10
        mov     dword [ebp-44H], 0                      ; 10BC _ C7. 45, BC, 00000000
        mov     dword [ebp-40H], 0                      ; 10C3 _ C7. 45, C0, 00000000
?_042:  add     dword [ebp-40H], 1                      ; 10CA _ 83. 45, C0, 01
        mov     eax, dword [ebp-4CH]                    ; 10CE _ 8B. 45, B4
        mov     edx, dword [eax+4H]                     ; 10D1 _ 8B. 50, 04
        mov     eax, dword [ebp-4CH]                    ; 10D4 _ 8B. 45, B4
        mov     eax, dword [eax]                        ; 10D7 _ 8B. 00
        sub     esp, 4                                  ; 10D9 _ 83. EC, 04
        push    38                                      ; 10DC _ 6A, 26
        push    100                                     ; 10DE _ 6A, 64
        push    23                                      ; 10E0 _ 6A, 17
        push    8                                       ; 10E2 _ 6A, 08
        push    8                                       ; 10E4 _ 6A, 08
        push    edx                                     ; 10E6 _ 52
        push    eax                                     ; 10E7 _ 50
        call    boxfill8                                ; 10E8 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 10ED _ 83. C4, 20
        sub     esp, 12                                 ; 10F0 _ 83. EC, 0C
        push    dword [ebp-40H]                         ; 10F3 _ FF. 75, C0
        call    intToHexStr                             ; 10F6 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 10FB _ 83. C4, 10
        mov     dword [ebp-34H], eax                    ; 10FE _ 89. 45, CC
        mov     eax, dword [shtctl]                     ; 1101 _ A1, 00000244(d)
        sub     esp, 8                                  ; 1106 _ 83. EC, 08
        push    dword [ebp-34H]                         ; 1109 _ FF. 75, CC
        push    10                                      ; 110C _ 6A, 0A
        push    23                                      ; 110E _ 6A, 17
        push    8                                       ; 1110 _ 6A, 08
        push    dword [ebp-4CH]                         ; 1112 _ FF. 75, B4
        push    eax                                     ; 1115 _ 50
        call    showString                              ; 1116 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 111B _ 83. C4, 20
        call    io_cli                                  ; 111E _ E8, FFFFFFFC(rel)
        sub     esp, 12                                 ; 1123 _ 83. EC, 0C
        lea     eax, [ebp-30H]                          ; 1126 _ 8D. 45, D0
        push    eax                                     ; 1129 _ 50
        call    fifo8_status                            ; 112A _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 112F _ 83. C4, 10
        test    eax, eax                                ; 1132 _ 85. C0
        jnz     ?_043                                   ; 1134 _ 75, 07
        call    io_sti                                  ; 1136 _ E8, FFFFFFFC(rel)
        jmp     ?_042                                   ; 113B _ EB, 8D

?_043:  sub     esp, 12                                 ; 113D _ 83. EC, 0C
        lea     eax, [ebp-30H]                          ; 1140 _ 8D. 45, D0
        push    eax                                     ; 1143 _ 50
        call    fifo8_get                               ; 1144 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1149 _ 83. C4, 10
        mov     dword [ebp-38H], eax                    ; 114C _ 89. 45, C8
        call    io_sti                                  ; 114F _ E8, FFFFFFFC(rel)
        cmp     dword [ebp-38H], 123                    ; 1154 _ 83. 7D, C8, 7B
        jne     ?_042                                   ; 1158 _ 0F 85, FFFFFF6C
        mov     edx, dword [sheet_back]                 ; 115E _ 8B. 15, 0000024C(d)
        mov     eax, dword [shtctl]                     ; 1164 _ A1, 00000244(d)
        sub     esp, 8                                  ; 1169 _ 83. EC, 08
        push    ?_246                                   ; 116C _ 68, 00000048(d)
        push    7                                       ; 1171 _ 6A, 07
        push    176                                     ; 1173 _ 68, 000000B0
        push    dword [ebp-44H]                         ; 1178 _ FF. 75, BC
        push    edx                                     ; 117B _ 52
        push    eax                                     ; 117C _ 50
        call    showString                              ; 117D _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1182 _ 83. C4, 20
        sub     esp, 8                                  ; 1185 _ 83. EC, 08
        push    100                                     ; 1188 _ 6A, 64
        push    dword [ebp-3CH]                         ; 118A _ FF. 75, C4
        call    timer_setTime                           ; 118D _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1192 _ 83. C4, 10
        add     dword [ebp-44H], 8                      ; 1195 _ 83. 45, BC, 08
        jmp     ?_042                                   ; 1199 _ E9, FFFFFF2C
; task_b_main End of function

cons_newline:; Function begin
        push    ebp                                     ; 119E _ 55
        mov     ebp, esp                                ; 119F _ 89. E5
        push    ebx                                     ; 11A1 _ 53
        sub     esp, 20                                 ; 11A2 _ 83. EC, 14
        mov     eax, dword [ebp+8H]                     ; 11A5 _ 8B. 45, 08
        lea     edx, [eax+17H]                          ; 11A8 _ 8D. 50, 17
        mov     eax, dword [ebp+0CH]                    ; 11AB _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 11AE _ 8B. 40, 08
        sub     eax, 36                                 ; 11B1 _ 83. E8, 24
        cmp     edx, eax                                ; 11B4 _ 39. C2
        jge     ?_044                                   ; 11B6 _ 7D, 09
        add     dword [ebp+8H], 16                      ; 11B8 _ 83. 45, 08, 10
        jmp     ?_053                                   ; 11BC _ E9, 000000E8

?_044:  mov     dword [ebp-0CH], 26                     ; 11C1 _ C7. 45, F4, 0000001A
        jmp     ?_048                                   ; 11C8 _ EB, 58

?_045:  mov     dword [ebp-10H], 8                      ; 11CA _ C7. 45, F0, 00000008
        jmp     ?_047                                   ; 11D1 _ EB, 3D

?_046:  mov     eax, dword [ebp+0CH]                    ; 11D3 _ 8B. 45, 0C
        mov     edx, dword [eax]                        ; 11D6 _ 8B. 10
        mov     eax, dword [ebp-0CH]                    ; 11D8 _ 8B. 45, F4
        lea     ecx, [eax+10H]                          ; 11DB _ 8D. 48, 10
        mov     eax, dword [ebp+0CH]                    ; 11DE _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 11E1 _ 8B. 40, 04
        imul    ecx, eax                                ; 11E4 _ 0F AF. C8
        mov     eax, dword [ebp-10H]                    ; 11E7 _ 8B. 45, F0
        add     eax, ecx                                ; 11EA _ 01. C8
        lea     ecx, [edx+eax]                          ; 11EC _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 11EF _ 8B. 45, 0C
        mov     edx, dword [eax]                        ; 11F2 _ 8B. 10
        mov     eax, dword [ebp+0CH]                    ; 11F4 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 11F7 _ 8B. 40, 04
        imul    eax, dword [ebp-0CH]                    ; 11FA _ 0F AF. 45, F4
        mov     ebx, eax                                ; 11FE _ 89. C3
        mov     eax, dword [ebp-10H]                    ; 1200 _ 8B. 45, F0
        add     eax, ebx                                ; 1203 _ 01. D8
        add     edx, eax                                ; 1205 _ 01. C2
        movzx   eax, byte [ecx]                         ; 1207 _ 0F B6. 01
        mov     byte [edx], al                          ; 120A _ 88. 02
        add     dword [ebp-10H], 1                      ; 120C _ 83. 45, F0, 01
?_047:  mov     eax, dword [ebp+0CH]                    ; 1210 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 1213 _ 8B. 40, 04
        sub     eax, 8                                  ; 1216 _ 83. E8, 08
        cmp     dword [ebp-10H], eax                    ; 1219 _ 39. 45, F0
        jl      ?_046                                   ; 121C _ 7C, B5
        add     dword [ebp-0CH], 1                      ; 121E _ 83. 45, F4, 01
?_048:  mov     eax, dword [ebp+0CH]                    ; 1222 _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 1225 _ 8B. 40, 08
        sub     eax, 20                                 ; 1228 _ 83. E8, 14
        cmp     dword [ebp-0CH], eax                    ; 122B _ 39. 45, F4
        jl      ?_045                                   ; 122E _ 7C, 9A
        mov     eax, dword [ebp+8H]                     ; 1230 _ 8B. 45, 08
        add     eax, 26                                 ; 1233 _ 83. C0, 1A
        mov     dword [ebp-0CH], eax                    ; 1236 _ 89. 45, F4
        jmp     ?_052                                   ; 1239 _ EB, 3A

?_049:  mov     dword [ebp-10H], 8                      ; 123B _ C7. 45, F0, 00000008
        jmp     ?_051                                   ; 1242 _ EB, 1F

?_050:  mov     eax, dword [ebp+0CH]                    ; 1244 _ 8B. 45, 0C
        mov     edx, dword [eax]                        ; 1247 _ 8B. 10
        mov     eax, dword [ebp+0CH]                    ; 1249 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 124C _ 8B. 40, 04
        imul    eax, dword [ebp-0CH]                    ; 124F _ 0F AF. 45, F4
        mov     ecx, eax                                ; 1253 _ 89. C1
        mov     eax, dword [ebp-10H]                    ; 1255 _ 8B. 45, F0
        add     eax, ecx                                ; 1258 _ 01. C8
        add     eax, edx                                ; 125A _ 01. D0
        mov     byte [eax], 0                           ; 125C _ C6. 00, 00
        add     dword [ebp-10H], 1                      ; 125F _ 83. 45, F0, 01
?_051:  mov     eax, dword [ebp+0CH]                    ; 1263 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 1266 _ 8B. 40, 04
        sub     eax, 8                                  ; 1269 _ 83. E8, 08
        cmp     dword [ebp-10H], eax                    ; 126C _ 39. 45, F0
        jl      ?_050                                   ; 126F _ 7C, D3
        add     dword [ebp-0CH], 1                      ; 1271 _ 83. 45, F4, 01
?_052:  mov     eax, dword [ebp+8H]                     ; 1275 _ 8B. 45, 08
        add     eax, 42                                 ; 1278 _ 83. C0, 2A
        cmp     dword [ebp-0CH], eax                    ; 127B _ 39. 45, F4
        jl      ?_049                                   ; 127E _ 7C, BB
        mov     eax, dword [ebp+0CH]                    ; 1280 _ 8B. 45, 0C
        mov     edx, dword [eax+8H]                     ; 1283 _ 8B. 50, 08
        mov     eax, dword [ebp+0CH]                    ; 1286 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 1289 _ 8B. 40, 04
        lea     ecx, [eax-8H]                           ; 128C _ 8D. 48, F8
        mov     eax, dword [shtctl]                     ; 128F _ A1, 00000244(d)
        sub     esp, 8                                  ; 1294 _ 83. EC, 08
        push    edx                                     ; 1297 _ 52
        push    ecx                                     ; 1298 _ 51
        push    28                                      ; 1299 _ 6A, 1C
        push    8                                       ; 129B _ 6A, 08
        push    dword [ebp+0CH]                         ; 129D _ FF. 75, 0C
        push    eax                                     ; 12A0 _ 50
        call    sheet_refresh                           ; 12A1 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 12A6 _ 83. C4, 20
?_053:  mov     eax, dword [ebp+8H]                     ; 12A9 _ 8B. 45, 08
        lea     edx, [eax+1AH]                          ; 12AC _ 8D. 50, 1A
        mov     eax, dword [shtctl]                     ; 12AF _ A1, 00000244(d)
        sub     esp, 8                                  ; 12B4 _ 83. EC, 08
        push    ?_244                                   ; 12B7 _ 68, 00000039(d)
        push    7                                       ; 12BC _ 6A, 07
        push    edx                                     ; 12BE _ 52
        push    8                                       ; 12BF _ 6A, 08
        push    dword [ebp+0CH]                         ; 12C1 _ FF. 75, 0C
        push    eax                                     ; 12C4 _ 50
        call    showString                              ; 12C5 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 12CA _ 83. C4, 20
        mov     eax, dword [ebp+8H]                     ; 12CD _ 8B. 45, 08
        mov     ebx, dword [ebp-4H]                     ; 12D0 _ 8B. 5D, FC
        leave                                           ; 12D3 _ C9
        ret                                             ; 12D4 _ C3
; cons_newline End of function

initBootInfo:; Function begin
        push    ebp                                     ; 12D5 _ 55
        mov     ebp, esp                                ; 12D6 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 12D8 _ 8B. 45, 08
        mov     dword [eax], -536870912                 ; 12DB _ C7. 00, E0000000
        mov     eax, dword [ebp+8H]                     ; 12E1 _ 8B. 45, 08
; Note: Length-changing prefix causes delay on Intel processors
        mov     word [eax+4H], 640                      ; 12E4 _ 66: C7. 40, 04, 0280
        mov     eax, dword [ebp+8H]                     ; 12EA _ 8B. 45, 08
; Note: Length-changing prefix causes delay on Intel processors
        mov     word [eax+6H], 480                      ; 12ED _ 66: C7. 40, 06, 01E0
        nop                                             ; 12F3 _ 90
        pop     ebp                                     ; 12F4 _ 5D
        ret                                             ; 12F5 _ C3
; initBootInfo End of function

showString:; Function begin
        push    ebp                                     ; 12F6 _ 55
        mov     ebp, esp                                ; 12F7 _ 89. E5
        push    ebx                                     ; 12F9 _ 53
        sub     esp, 36                                 ; 12FA _ 83. EC, 24
        mov     eax, dword [ebp+18H]                    ; 12FD _ 8B. 45, 18
        mov     byte [ebp-1CH], al                      ; 1300 _ 88. 45, E4
        mov     eax, dword [ebp+10H]                    ; 1303 _ 8B. 45, 10
        mov     dword [ebp-0CH], eax                    ; 1306 _ 89. 45, F4
        jmp     ?_055                                   ; 1309 _ EB, 3E

?_054:  mov     eax, dword [ebp+1CH]                    ; 130B _ 8B. 45, 1C
        movzx   eax, byte [eax]                         ; 130E _ 0F B6. 00
        movzx   eax, al                                 ; 1311 _ 0F B6. C0
        shl     eax, 4                                  ; 1314 _ C1. E0, 04
        lea     ebx, [systemFont+eax]                   ; 1317 _ 8D. 98, 00000000(d)
        movsx   ecx, byte [ebp-1CH]                     ; 131D _ 0F BE. 4D, E4
        mov     eax, dword [ebp+0CH]                    ; 1321 _ 8B. 45, 0C
        mov     edx, dword [eax+4H]                     ; 1324 _ 8B. 50, 04
        mov     eax, dword [ebp+0CH]                    ; 1327 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 132A _ 8B. 00
        sub     esp, 8                                  ; 132C _ 83. EC, 08
        push    ebx                                     ; 132F _ 53
        push    ecx                                     ; 1330 _ 51
        push    dword [ebp+14H]                         ; 1331 _ FF. 75, 14
        push    dword [ebp+10H]                         ; 1334 _ FF. 75, 10
        push    edx                                     ; 1337 _ 52
        push    eax                                     ; 1338 _ 50
        call    showFont8                               ; 1339 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 133E _ 83. C4, 20
        add     dword [ebp+10H], 8                      ; 1341 _ 83. 45, 10, 08
        add     dword [ebp+1CH], 1                      ; 1345 _ 83. 45, 1C, 01
?_055:  mov     eax, dword [ebp+1CH]                    ; 1349 _ 8B. 45, 1C
        movzx   eax, byte [eax]                         ; 134C _ 0F B6. 00
        test    al, al                                  ; 134F _ 84. C0
        jnz     ?_054                                   ; 1351 _ 75, B8
        mov     eax, dword [ebp+14H]                    ; 1353 _ 8B. 45, 14
        add     eax, 16                                 ; 1356 _ 83. C0, 10
        sub     esp, 8                                  ; 1359 _ 83. EC, 08
        push    eax                                     ; 135C _ 50
        push    dword [ebp+10H]                         ; 135D _ FF. 75, 10
        push    dword [ebp+14H]                         ; 1360 _ FF. 75, 14
        push    dword [ebp-0CH]                         ; 1363 _ FF. 75, F4
        push    dword [ebp+0CH]                         ; 1366 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1369 _ FF. 75, 08
        call    sheet_refresh                           ; 136C _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1371 _ 83. C4, 20
        nop                                             ; 1374 _ 90
        mov     ebx, dword [ebp-4H]                     ; 1375 _ 8B. 5D, FC
        leave                                           ; 1378 _ C9
        ret                                             ; 1379 _ C3
; showString End of function

init_screen8:; Function begin
        push    ebp                                     ; 137A _ 55
        mov     ebp, esp                                ; 137B _ 89. E5
        push    ebx                                     ; 137D _ 53
        sub     esp, 4                                  ; 137E _ 83. EC, 04
        mov     eax, dword [ebp+10H]                    ; 1381 _ 8B. 45, 10
        lea     edx, [eax-19H]                          ; 1384 _ 8D. 50, E7
        mov     eax, dword [ebp+0CH]                    ; 1387 _ 8B. 45, 0C
        sub     eax, 1                                  ; 138A _ 83. E8, 01
        sub     esp, 4                                  ; 138D _ 83. EC, 04
        push    edx                                     ; 1390 _ 52
        push    eax                                     ; 1391 _ 50
        push    0                                       ; 1392 _ 6A, 00
        push    0                                       ; 1394 _ 6A, 00
        push    14                                      ; 1396 _ 6A, 0E
        push    dword [ebp+0CH]                         ; 1398 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 139B _ FF. 75, 08
        call    boxfill8                                ; 139E _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 13A3 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 13A6 _ 8B. 45, 10
        lea     ecx, [eax-18H]                          ; 13A9 _ 8D. 48, E8
        mov     eax, dword [ebp+0CH]                    ; 13AC _ 8B. 45, 0C
        lea     edx, [eax-1H]                           ; 13AF _ 8D. 50, FF
        mov     eax, dword [ebp+10H]                    ; 13B2 _ 8B. 45, 10
        sub     eax, 24                                 ; 13B5 _ 83. E8, 18
        sub     esp, 4                                  ; 13B8 _ 83. EC, 04
        push    ecx                                     ; 13BB _ 51
        push    edx                                     ; 13BC _ 52
        push    eax                                     ; 13BD _ 50
        push    0                                       ; 13BE _ 6A, 00
        push    8                                       ; 13C0 _ 6A, 08
        push    dword [ebp+0CH]                         ; 13C2 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 13C5 _ FF. 75, 08
        call    boxfill8                                ; 13C8 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 13CD _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 13D0 _ 8B. 45, 10
        lea     ecx, [eax-17H]                          ; 13D3 _ 8D. 48, E9
        mov     eax, dword [ebp+0CH]                    ; 13D6 _ 8B. 45, 0C
        lea     edx, [eax-1H]                           ; 13D9 _ 8D. 50, FF
        mov     eax, dword [ebp+10H]                    ; 13DC _ 8B. 45, 10
        sub     eax, 23                                 ; 13DF _ 83. E8, 17
        sub     esp, 4                                  ; 13E2 _ 83. EC, 04
        push    ecx                                     ; 13E5 _ 51
        push    edx                                     ; 13E6 _ 52
        push    eax                                     ; 13E7 _ 50
        push    0                                       ; 13E8 _ 6A, 00
        push    7                                       ; 13EA _ 6A, 07
        push    dword [ebp+0CH]                         ; 13EC _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 13EF _ FF. 75, 08
        call    boxfill8                                ; 13F2 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 13F7 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 13FA _ 8B. 45, 10
        lea     ecx, [eax-1H]                           ; 13FD _ 8D. 48, FF
        mov     eax, dword [ebp+0CH]                    ; 1400 _ 8B. 45, 0C
        lea     edx, [eax-1H]                           ; 1403 _ 8D. 50, FF
        mov     eax, dword [ebp+10H]                    ; 1406 _ 8B. 45, 10
        sub     eax, 22                                 ; 1409 _ 83. E8, 16
        sub     esp, 4                                  ; 140C _ 83. EC, 04
        push    ecx                                     ; 140F _ 51
        push    edx                                     ; 1410 _ 52
        push    eax                                     ; 1411 _ 50
        push    0                                       ; 1412 _ 6A, 00
        push    8                                       ; 1414 _ 6A, 08
        push    dword [ebp+0CH]                         ; 1416 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1419 _ FF. 75, 08
        call    boxfill8                                ; 141C _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1421 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 1424 _ 8B. 45, 10
        lea     edx, [eax-14H]                          ; 1427 _ 8D. 50, EC
        mov     eax, dword [ebp+10H]                    ; 142A _ 8B. 45, 10
        sub     eax, 20                                 ; 142D _ 83. E8, 14
        sub     esp, 4                                  ; 1430 _ 83. EC, 04
        push    edx                                     ; 1433 _ 52
        push    51                                      ; 1434 _ 6A, 33
        push    eax                                     ; 1436 _ 50
        push    10                                      ; 1437 _ 6A, 0A
        push    7                                       ; 1439 _ 6A, 07
        push    dword [ebp+0CH]                         ; 143B _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 143E _ FF. 75, 08
        call    boxfill8                                ; 1441 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1446 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 1449 _ 8B. 45, 10
        lea     edx, [eax-4H]                           ; 144C _ 8D. 50, FC
        mov     eax, dword [ebp+10H]                    ; 144F _ 8B. 45, 10
        sub     eax, 20                                 ; 1452 _ 83. E8, 14
        sub     esp, 4                                  ; 1455 _ 83. EC, 04
        push    edx                                     ; 1458 _ 52
        push    9                                       ; 1459 _ 6A, 09
        push    eax                                     ; 145B _ 50
        push    9                                       ; 145C _ 6A, 09
        push    7                                       ; 145E _ 6A, 07
        push    dword [ebp+0CH]                         ; 1460 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1463 _ FF. 75, 08
        call    boxfill8                                ; 1466 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 146B _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 146E _ 8B. 45, 10
        lea     edx, [eax-4H]                           ; 1471 _ 8D. 50, FC
        mov     eax, dword [ebp+10H]                    ; 1474 _ 8B. 45, 10
        sub     eax, 4                                  ; 1477 _ 83. E8, 04
        sub     esp, 4                                  ; 147A _ 83. EC, 04
        push    edx                                     ; 147D _ 52
        push    50                                      ; 147E _ 6A, 32
        push    eax                                     ; 1480 _ 50
        push    10                                      ; 1481 _ 6A, 0A
        push    15                                      ; 1483 _ 6A, 0F
        push    dword [ebp+0CH]                         ; 1485 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1488 _ FF. 75, 08
        call    boxfill8                                ; 148B _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1490 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 1493 _ 8B. 45, 10
        lea     edx, [eax-5H]                           ; 1496 _ 8D. 50, FB
        mov     eax, dword [ebp+10H]                    ; 1499 _ 8B. 45, 10
        sub     eax, 19                                 ; 149C _ 83. E8, 13
        sub     esp, 4                                  ; 149F _ 83. EC, 04
        push    edx                                     ; 14A2 _ 52
        push    50                                      ; 14A3 _ 6A, 32
        push    eax                                     ; 14A5 _ 50
        push    50                                      ; 14A6 _ 6A, 32
        push    15                                      ; 14A8 _ 6A, 0F
        push    dword [ebp+0CH]                         ; 14AA _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 14AD _ FF. 75, 08
        call    boxfill8                                ; 14B0 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 14B5 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 14B8 _ 8B. 45, 10
        lea     edx, [eax-3H]                           ; 14BB _ 8D. 50, FD
        mov     eax, dword [ebp+10H]                    ; 14BE _ 8B. 45, 10
        sub     eax, 3                                  ; 14C1 _ 83. E8, 03
        sub     esp, 4                                  ; 14C4 _ 83. EC, 04
        push    edx                                     ; 14C7 _ 52
        push    50                                      ; 14C8 _ 6A, 32
        push    eax                                     ; 14CA _ 50
        push    10                                      ; 14CB _ 6A, 0A
        push    0                                       ; 14CD _ 6A, 00
        push    dword [ebp+0CH]                         ; 14CF _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 14D2 _ FF. 75, 08
        call    boxfill8                                ; 14D5 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 14DA _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 14DD _ 8B. 45, 10
        lea     edx, [eax-3H]                           ; 14E0 _ 8D. 50, FD
        mov     eax, dword [ebp+10H]                    ; 14E3 _ 8B. 45, 10
        sub     eax, 20                                 ; 14E6 _ 83. E8, 14
        sub     esp, 4                                  ; 14E9 _ 83. EC, 04
        push    edx                                     ; 14EC _ 52
        push    51                                      ; 14ED _ 6A, 33
        push    eax                                     ; 14EF _ 50
        push    51                                      ; 14F0 _ 6A, 33
        push    0                                       ; 14F2 _ 6A, 00
        push    dword [ebp+0CH]                         ; 14F4 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 14F7 _ FF. 75, 08
        call    boxfill8                                ; 14FA _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 14FF _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 1502 _ 8B. 45, 10
        lea     ebx, [eax-14H]                          ; 1505 _ 8D. 58, EC
        mov     eax, dword [ebp+0CH]                    ; 1508 _ 8B. 45, 0C
        lea     ecx, [eax-4H]                           ; 150B _ 8D. 48, FC
        mov     eax, dword [ebp+10H]                    ; 150E _ 8B. 45, 10
        lea     edx, [eax-14H]                          ; 1511 _ 8D. 50, EC
        mov     eax, dword [ebp+0CH]                    ; 1514 _ 8B. 45, 0C
        sub     eax, 47                                 ; 1517 _ 83. E8, 2F
        sub     esp, 4                                  ; 151A _ 83. EC, 04
        push    ebx                                     ; 151D _ 53
        push    ecx                                     ; 151E _ 51
        push    edx                                     ; 151F _ 52
        push    eax                                     ; 1520 _ 50
        push    15                                      ; 1521 _ 6A, 0F
        push    dword [ebp+0CH]                         ; 1523 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1526 _ FF. 75, 08
        call    boxfill8                                ; 1529 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 152E _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 1531 _ 8B. 45, 10
        lea     ebx, [eax-3H]                           ; 1534 _ 8D. 58, FD
        mov     eax, dword [ebp+0CH]                    ; 1537 _ 8B. 45, 0C
        lea     ecx, [eax-2FH]                          ; 153A _ 8D. 48, D1
        mov     eax, dword [ebp+10H]                    ; 153D _ 8B. 45, 10
        lea     edx, [eax-14H]                          ; 1540 _ 8D. 50, EC
        mov     eax, dword [ebp+0CH]                    ; 1543 _ 8B. 45, 0C
        sub     eax, 47                                 ; 1546 _ 83. E8, 2F
        sub     esp, 4                                  ; 1549 _ 83. EC, 04
        push    ebx                                     ; 154C _ 53
        push    ecx                                     ; 154D _ 51
        push    edx                                     ; 154E _ 52
        push    eax                                     ; 154F _ 50
        push    15                                      ; 1550 _ 6A, 0F
        push    dword [ebp+0CH]                         ; 1552 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1555 _ FF. 75, 08
        call    boxfill8                                ; 1558 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 155D _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 1560 _ 8B. 45, 10
        lea     ebx, [eax-3H]                           ; 1563 _ 8D. 58, FD
        mov     eax, dword [ebp+0CH]                    ; 1566 _ 8B. 45, 0C
        lea     ecx, [eax-4H]                           ; 1569 _ 8D. 48, FC
        mov     eax, dword [ebp+10H]                    ; 156C _ 8B. 45, 10
        lea     edx, [eax-3H]                           ; 156F _ 8D. 50, FD
        mov     eax, dword [ebp+0CH]                    ; 1572 _ 8B. 45, 0C
        sub     eax, 47                                 ; 1575 _ 83. E8, 2F
        sub     esp, 4                                  ; 1578 _ 83. EC, 04
        push    ebx                                     ; 157B _ 53
        push    ecx                                     ; 157C _ 51
        push    edx                                     ; 157D _ 52
        push    eax                                     ; 157E _ 50
        push    7                                       ; 157F _ 6A, 07
        push    dword [ebp+0CH]                         ; 1581 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1584 _ FF. 75, 08
        call    boxfill8                                ; 1587 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 158C _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 158F _ 8B. 45, 10
        lea     ebx, [eax-3H]                           ; 1592 _ 8D. 58, FD
        mov     eax, dword [ebp+0CH]                    ; 1595 _ 8B. 45, 0C
        lea     ecx, [eax-3H]                           ; 1598 _ 8D. 48, FD
        mov     eax, dword [ebp+10H]                    ; 159B _ 8B. 45, 10
        lea     edx, [eax-14H]                          ; 159E _ 8D. 50, EC
        mov     eax, dword [ebp+0CH]                    ; 15A1 _ 8B. 45, 0C
        sub     eax, 3                                  ; 15A4 _ 83. E8, 03
        sub     esp, 4                                  ; 15A7 _ 83. EC, 04
        push    ebx                                     ; 15AA _ 53
        push    ecx                                     ; 15AB _ 51
        push    edx                                     ; 15AC _ 52
        push    eax                                     ; 15AD _ 50
        push    7                                       ; 15AE _ 6A, 07
        push    dword [ebp+0CH]                         ; 15B0 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 15B3 _ FF. 75, 08
        call    boxfill8                                ; 15B6 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 15BB _ 83. C4, 20
        nop                                             ; 15BE _ 90
        mov     ebx, dword [ebp-4H]                     ; 15BF _ 8B. 5D, FC
        leave                                           ; 15C2 _ C9
        ret                                             ; 15C3 _ C3
; init_screen8 End of function

init_palette:; Function begin
        push    ebp                                     ; 15C4 _ 55
        mov     ebp, esp                                ; 15C5 _ 89. E5
        sub     esp, 24                                 ; 15C7 _ 83. EC, 18
        mov     eax, dword [bootInfo]                   ; 15CA _ A1, 00000008(d)
        mov     dword [ebp-14H], eax                    ; 15CF _ 89. 45, EC
        movzx   eax, word [?_255]                       ; 15D2 _ 0F B7. 05, 0000000C(d)
        cwde                                            ; 15D9 _ 98
        mov     dword [ebp-10H], eax                    ; 15DA _ 89. 45, F0
        movzx   eax, word [?_256]                       ; 15DD _ 0F B7. 05, 0000000E(d)
        cwde                                            ; 15E4 _ 98
        mov     dword [ebp-0CH], eax                    ; 15E5 _ 89. 45, F4
        sub     esp, 4                                  ; 15E8 _ 83. EC, 04
        push    table_rgb.2403                          ; 15EB _ 68, 00000120(d)
        push    15                                      ; 15F0 _ 6A, 0F
        push    0                                       ; 15F2 _ 6A, 00
        call    set_palette                             ; 15F4 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 15F9 _ 83. C4, 10
        nop                                             ; 15FC _ 90
        leave                                           ; 15FD _ C9
        ret                                             ; 15FE _ C3
; init_palette End of function

set_palette:; Function begin
        push    ebp                                     ; 15FF _ 55
        mov     ebp, esp                                ; 1600 _ 89. E5
        sub     esp, 24                                 ; 1602 _ 83. EC, 18
        call    io_load_eflags                          ; 1605 _ E8, FFFFFFFC(rel)
        mov     dword [ebp-0CH], eax                    ; 160A _ 89. 45, F4
        call    io_cli                                  ; 160D _ E8, FFFFFFFC(rel)
        sub     esp, 8                                  ; 1612 _ 83. EC, 08
        push    dword [ebp+8H]                          ; 1615 _ FF. 75, 08
        push    968                                     ; 1618 _ 68, 000003C8
        call    io_out8                                 ; 161D _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1622 _ 83. C4, 10
        mov     eax, dword [ebp+8H]                     ; 1625 _ 8B. 45, 08
        mov     dword [ebp-10H], eax                    ; 1628 _ 89. 45, F0
        jmp     ?_057                                   ; 162B _ EB, 65

?_056:  mov     eax, dword [ebp+10H]                    ; 162D _ 8B. 45, 10
        movzx   eax, byte [eax]                         ; 1630 _ 0F B6. 00
        shr     al, 2                                   ; 1633 _ C0. E8, 02
        movzx   eax, al                                 ; 1636 _ 0F B6. C0
        sub     esp, 8                                  ; 1639 _ 83. EC, 08
        push    eax                                     ; 163C _ 50
        push    969                                     ; 163D _ 68, 000003C9
        call    io_out8                                 ; 1642 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1647 _ 83. C4, 10
        mov     eax, dword [ebp+10H]                    ; 164A _ 8B. 45, 10
        add     eax, 1                                  ; 164D _ 83. C0, 01
        movzx   eax, byte [eax]                         ; 1650 _ 0F B6. 00
        shr     al, 2                                   ; 1653 _ C0. E8, 02
        movzx   eax, al                                 ; 1656 _ 0F B6. C0
        sub     esp, 8                                  ; 1659 _ 83. EC, 08
        push    eax                                     ; 165C _ 50
        push    969                                     ; 165D _ 68, 000003C9
        call    io_out8                                 ; 1662 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1667 _ 83. C4, 10
        mov     eax, dword [ebp+10H]                    ; 166A _ 8B. 45, 10
        add     eax, 2                                  ; 166D _ 83. C0, 02
        movzx   eax, byte [eax]                         ; 1670 _ 0F B6. 00
        shr     al, 2                                   ; 1673 _ C0. E8, 02
        movzx   eax, al                                 ; 1676 _ 0F B6. C0
        sub     esp, 8                                  ; 1679 _ 83. EC, 08
        push    eax                                     ; 167C _ 50
        push    969                                     ; 167D _ 68, 000003C9
        call    io_out8                                 ; 1682 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1687 _ 83. C4, 10
        add     dword [ebp+10H], 3                      ; 168A _ 83. 45, 10, 03
        add     dword [ebp-10H], 1                      ; 168E _ 83. 45, F0, 01
?_057:  mov     eax, dword [ebp-10H]                    ; 1692 _ 8B. 45, F0
        cmp     eax, dword [ebp+0CH]                    ; 1695 _ 3B. 45, 0C
        jle     ?_056                                   ; 1698 _ 7E, 93
        sub     esp, 12                                 ; 169A _ 83. EC, 0C
        push    dword [ebp-0CH]                         ; 169D _ FF. 75, F4
        call    io_store_eflags                         ; 16A0 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 16A5 _ 83. C4, 10
        nop                                             ; 16A8 _ 90
        leave                                           ; 16A9 _ C9
        ret                                             ; 16AA _ C3
; set_palette End of function

boxfill8:; Function begin
        push    ebp                                     ; 16AB _ 55
        mov     ebp, esp                                ; 16AC _ 89. E5
        sub     esp, 20                                 ; 16AE _ 83. EC, 14
        mov     eax, dword [ebp+10H]                    ; 16B1 _ 8B. 45, 10
        mov     byte [ebp-14H], al                      ; 16B4 _ 88. 45, EC
        mov     eax, dword [ebp+18H]                    ; 16B7 _ 8B. 45, 18
        mov     dword [ebp-4H], eax                     ; 16BA _ 89. 45, FC
        jmp     ?_061                                   ; 16BD _ EB, 33

?_058:  mov     eax, dword [ebp+14H]                    ; 16BF _ 8B. 45, 14
        mov     dword [ebp-8H], eax                     ; 16C2 _ 89. 45, F8
        jmp     ?_060                                   ; 16C5 _ EB, 1F

?_059:  mov     eax, dword [ebp-4H]                     ; 16C7 _ 8B. 45, FC
        imul    eax, dword [ebp+0CH]                    ; 16CA _ 0F AF. 45, 0C
        mov     edx, eax                                ; 16CE _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 16D0 _ 8B. 45, F8
        add     eax, edx                                ; 16D3 _ 01. D0
        mov     edx, eax                                ; 16D5 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 16D7 _ 8B. 45, 08
        add     edx, eax                                ; 16DA _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 16DC _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 16E0 _ 88. 02
        add     dword [ebp-8H], 1                       ; 16E2 _ 83. 45, F8, 01
?_060:  mov     eax, dword [ebp-8H]                     ; 16E6 _ 8B. 45, F8
        cmp     eax, dword [ebp+1CH]                    ; 16E9 _ 3B. 45, 1C
        jle     ?_059                                   ; 16EC _ 7E, D9
        add     dword [ebp-4H], 1                       ; 16EE _ 83. 45, FC, 01
?_061:  mov     eax, dword [ebp-4H]                     ; 16F2 _ 8B. 45, FC
        cmp     eax, dword [ebp+20H]                    ; 16F5 _ 3B. 45, 20
        jle     ?_058                                   ; 16F8 _ 7E, C5
        nop                                             ; 16FA _ 90
        leave                                           ; 16FB _ C9
        ret                                             ; 16FC _ C3
; boxfill8 End of function

make_textbox8:; Function begin
        push    ebp                                     ; 16FD _ 55
        mov     ebp, esp                                ; 16FE _ 89. E5
        push    edi                                     ; 1700 _ 57
        push    esi                                     ; 1701 _ 56
        push    ebx                                     ; 1702 _ 53
        sub     esp, 16                                 ; 1703 _ 83. EC, 10
        mov     edx, dword [ebp+0CH]                    ; 1706 _ 8B. 55, 0C
        mov     eax, dword [ebp+14H]                    ; 1709 _ 8B. 45, 14
        add     eax, edx                                ; 170C _ 01. D0
        mov     dword [ebp-14H], eax                    ; 170E _ 89. 45, EC
        mov     edx, dword [ebp+10H]                    ; 1711 _ 8B. 55, 10
        mov     eax, dword [ebp+18H]                    ; 1714 _ 8B. 45, 18
        add     eax, edx                                ; 1717 _ 01. D0
        mov     dword [ebp-10H], eax                    ; 1719 _ 89. 45, F0
        mov     eax, dword [ebp+10H]                    ; 171C _ 8B. 45, 10
        lea     edi, [eax-3H]                           ; 171F _ 8D. 78, FD
        mov     eax, dword [ebp-14H]                    ; 1722 _ 8B. 45, EC
        lea     esi, [eax+1H]                           ; 1725 _ 8D. 70, 01
        mov     eax, dword [ebp+10H]                    ; 1728 _ 8B. 45, 10
        lea     ebx, [eax-3H]                           ; 172B _ 8D. 58, FD
        mov     eax, dword [ebp+0CH]                    ; 172E _ 8B. 45, 0C
        lea     ecx, [eax-2H]                           ; 1731 _ 8D. 48, FE
        mov     eax, dword [ebp+8H]                     ; 1734 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 1737 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 173A _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 173D _ 8B. 00
        push    edi                                     ; 173F _ 57
        push    esi                                     ; 1740 _ 56
        push    ebx                                     ; 1741 _ 53
        push    ecx                                     ; 1742 _ 51
        push    15                                      ; 1743 _ 6A, 0F
        push    edx                                     ; 1745 _ 52
        push    eax                                     ; 1746 _ 50
        call    boxfill8                                ; 1747 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 174C _ 83. C4, 1C
        mov     eax, dword [ebp-10H]                    ; 174F _ 8B. 45, F0
        lea     edi, [eax+1H]                           ; 1752 _ 8D. 78, 01
        mov     eax, dword [ebp+0CH]                    ; 1755 _ 8B. 45, 0C
        lea     esi, [eax-3H]                           ; 1758 _ 8D. 70, FD
        mov     eax, dword [ebp+10H]                    ; 175B _ 8B. 45, 10
        lea     ebx, [eax-3H]                           ; 175E _ 8D. 58, FD
        mov     eax, dword [ebp+0CH]                    ; 1761 _ 8B. 45, 0C
        lea     ecx, [eax-3H]                           ; 1764 _ 8D. 48, FD
        mov     eax, dword [ebp+8H]                     ; 1767 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 176A _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 176D _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 1770 _ 8B. 00
        push    edi                                     ; 1772 _ 57
        push    esi                                     ; 1773 _ 56
        push    ebx                                     ; 1774 _ 53
        push    ecx                                     ; 1775 _ 51
        push    15                                      ; 1776 _ 6A, 0F
        push    edx                                     ; 1778 _ 52
        push    eax                                     ; 1779 _ 50
        call    boxfill8                                ; 177A _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 177F _ 83. C4, 1C
        mov     eax, dword [ebp-10H]                    ; 1782 _ 8B. 45, F0
        lea     edi, [eax+2H]                           ; 1785 _ 8D. 78, 02
        mov     eax, dword [ebp-14H]                    ; 1788 _ 8B. 45, EC
        lea     esi, [eax+1H]                           ; 178B _ 8D. 70, 01
        mov     eax, dword [ebp-10H]                    ; 178E _ 8B. 45, F0
        lea     ebx, [eax+2H]                           ; 1791 _ 8D. 58, 02
        mov     eax, dword [ebp+0CH]                    ; 1794 _ 8B. 45, 0C
        lea     ecx, [eax-3H]                           ; 1797 _ 8D. 48, FD
        mov     eax, dword [ebp+8H]                     ; 179A _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 179D _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 17A0 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 17A3 _ 8B. 00
        push    edi                                     ; 17A5 _ 57
        push    esi                                     ; 17A6 _ 56
        push    ebx                                     ; 17A7 _ 53
        push    ecx                                     ; 17A8 _ 51
        push    7                                       ; 17A9 _ 6A, 07
        push    edx                                     ; 17AB _ 52
        push    eax                                     ; 17AC _ 50
        call    boxfill8                                ; 17AD _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 17B2 _ 83. C4, 1C
        mov     eax, dword [ebp-10H]                    ; 17B5 _ 8B. 45, F0
        lea     edi, [eax+2H]                           ; 17B8 _ 8D. 78, 02
        mov     eax, dword [ebp-14H]                    ; 17BB _ 8B. 45, EC
        lea     esi, [eax+2H]                           ; 17BE _ 8D. 70, 02
        mov     eax, dword [ebp+10H]                    ; 17C1 _ 8B. 45, 10
        lea     ebx, [eax-3H]                           ; 17C4 _ 8D. 58, FD
        mov     eax, dword [ebp-14H]                    ; 17C7 _ 8B. 45, EC
        lea     ecx, [eax+2H]                           ; 17CA _ 8D. 48, 02
        mov     eax, dword [ebp+8H]                     ; 17CD _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 17D0 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 17D3 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 17D6 _ 8B. 00
        push    edi                                     ; 17D8 _ 57
        push    esi                                     ; 17D9 _ 56
        push    ebx                                     ; 17DA _ 53
        push    ecx                                     ; 17DB _ 51
        push    7                                       ; 17DC _ 6A, 07
        push    edx                                     ; 17DE _ 52
        push    eax                                     ; 17DF _ 50
        call    boxfill8                                ; 17E0 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 17E5 _ 83. C4, 1C
        mov     eax, dword [ebp+10H]                    ; 17E8 _ 8B. 45, 10
        lea     esi, [eax-2H]                           ; 17EB _ 8D. 70, FE
        mov     eax, dword [ebp+10H]                    ; 17EE _ 8B. 45, 10
        lea     ebx, [eax-2H]                           ; 17F1 _ 8D. 58, FE
        mov     eax, dword [ebp+0CH]                    ; 17F4 _ 8B. 45, 0C
        lea     ecx, [eax-1H]                           ; 17F7 _ 8D. 48, FF
        mov     eax, dword [ebp+8H]                     ; 17FA _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 17FD _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 1800 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 1803 _ 8B. 00
        push    esi                                     ; 1805 _ 56
        push    dword [ebp-14H]                         ; 1806 _ FF. 75, EC
        push    ebx                                     ; 1809 _ 53
        push    ecx                                     ; 180A _ 51
        push    0                                       ; 180B _ 6A, 00
        push    edx                                     ; 180D _ 52
        push    eax                                     ; 180E _ 50
        call    boxfill8                                ; 180F _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 1814 _ 83. C4, 1C
        mov     eax, dword [ebp+0CH]                    ; 1817 _ 8B. 45, 0C
        lea     esi, [eax-2H]                           ; 181A _ 8D. 70, FE
        mov     eax, dword [ebp+10H]                    ; 181D _ 8B. 45, 10
        lea     ebx, [eax-2H]                           ; 1820 _ 8D. 58, FE
        mov     eax, dword [ebp+0CH]                    ; 1823 _ 8B. 45, 0C
        lea     ecx, [eax-2H]                           ; 1826 _ 8D. 48, FE
        mov     eax, dword [ebp+8H]                     ; 1829 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 182C _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 182F _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 1832 _ 8B. 00
        push    dword [ebp-10H]                         ; 1834 _ FF. 75, F0
        push    esi                                     ; 1837 _ 56
        push    ebx                                     ; 1838 _ 53
        push    ecx                                     ; 1839 _ 51
        push    0                                       ; 183A _ 6A, 00
        push    edx                                     ; 183C _ 52
        push    eax                                     ; 183D _ 50
        call    boxfill8                                ; 183E _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 1843 _ 83. C4, 1C
        mov     eax, dword [ebp-10H]                    ; 1846 _ 8B. 45, F0
        lea     esi, [eax+1H]                           ; 1849 _ 8D. 70, 01
        mov     eax, dword [ebp-10H]                    ; 184C _ 8B. 45, F0
        lea     ebx, [eax+1H]                           ; 184F _ 8D. 58, 01
        mov     eax, dword [ebp+0CH]                    ; 1852 _ 8B. 45, 0C
        lea     ecx, [eax-2H]                           ; 1855 _ 8D. 48, FE
        mov     eax, dword [ebp+8H]                     ; 1858 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 185B _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 185E _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 1861 _ 8B. 00
        push    esi                                     ; 1863 _ 56
        push    dword [ebp-14H]                         ; 1864 _ FF. 75, EC
        push    ebx                                     ; 1867 _ 53
        push    ecx                                     ; 1868 _ 51
        push    8                                       ; 1869 _ 6A, 08
        push    edx                                     ; 186B _ 52
        push    eax                                     ; 186C _ 50
        call    boxfill8                                ; 186D _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 1872 _ 83. C4, 1C
        mov     eax, dword [ebp-10H]                    ; 1875 _ 8B. 45, F0
        lea     edi, [eax+1H]                           ; 1878 _ 8D. 78, 01
        mov     eax, dword [ebp-14H]                    ; 187B _ 8B. 45, EC
        lea     esi, [eax+1H]                           ; 187E _ 8D. 70, 01
        mov     eax, dword [ebp+10H]                    ; 1881 _ 8B. 45, 10
        lea     ebx, [eax-2H]                           ; 1884 _ 8D. 58, FE
        mov     eax, dword [ebp-14H]                    ; 1887 _ 8B. 45, EC
        lea     ecx, [eax+1H]                           ; 188A _ 8D. 48, 01
        mov     eax, dword [ebp+8H]                     ; 188D _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 1890 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 1893 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 1896 _ 8B. 00
        push    edi                                     ; 1898 _ 57
        push    esi                                     ; 1899 _ 56
        push    ebx                                     ; 189A _ 53
        push    ecx                                     ; 189B _ 51
        push    8                                       ; 189C _ 6A, 08
        push    edx                                     ; 189E _ 52
        push    eax                                     ; 189F _ 50
        call    boxfill8                                ; 18A0 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 18A5 _ 83. C4, 1C
        mov     eax, dword [ebp+10H]                    ; 18A8 _ 8B. 45, 10
        lea     esi, [eax-1H]                           ; 18AB _ 8D. 70, FF
        mov     eax, dword [ebp+0CH]                    ; 18AE _ 8B. 45, 0C
        lea     ebx, [eax-1H]                           ; 18B1 _ 8D. 58, FF
        mov     eax, dword [ebp+1CH]                    ; 18B4 _ 8B. 45, 1C
        movzx   ecx, al                                 ; 18B7 _ 0F B6. C8
        mov     eax, dword [ebp+8H]                     ; 18BA _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 18BD _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 18C0 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 18C3 _ 8B. 00
        push    dword [ebp-10H]                         ; 18C5 _ FF. 75, F0
        push    dword [ebp-14H]                         ; 18C8 _ FF. 75, EC
        push    esi                                     ; 18CB _ 56
        push    ebx                                     ; 18CC _ 53
        push    ecx                                     ; 18CD _ 51
        push    edx                                     ; 18CE _ 52
        push    eax                                     ; 18CF _ 50
        call    boxfill8                                ; 18D0 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 18D5 _ 83. C4, 1C
        nop                                             ; 18D8 _ 90
        lea     esp, [ebp-0CH]                          ; 18D9 _ 8D. 65, F4
        pop     ebx                                     ; 18DC _ 5B
        pop     esi                                     ; 18DD _ 5E
        pop     edi                                     ; 18DE _ 5F
        pop     ebp                                     ; 18DF _ 5D
        ret                                             ; 18E0 _ C3
; make_textbox8 End of function

showFont8:; Function begin
        push    ebp                                     ; 18E1 _ 55
        mov     ebp, esp                                ; 18E2 _ 89. E5
        sub     esp, 20                                 ; 18E4 _ 83. EC, 14
        mov     eax, dword [ebp+18H]                    ; 18E7 _ 8B. 45, 18
        mov     byte [ebp-14H], al                      ; 18EA _ 88. 45, EC
        mov     dword [ebp-4H], 0                       ; 18ED _ C7. 45, FC, 00000000
        jmp     ?_071                                   ; 18F4 _ E9, 0000016C

?_062:  mov     edx, dword [ebp-4H]                     ; 18F9 _ 8B. 55, FC
        mov     eax, dword [ebp+1CH]                    ; 18FC _ 8B. 45, 1C
        add     eax, edx                                ; 18FF _ 01. D0
        movzx   eax, byte [eax]                         ; 1901 _ 0F B6. 00
        mov     byte [ebp-5H], al                       ; 1904 _ 88. 45, FB
        cmp     byte [ebp-5H], 0                        ; 1907 _ 80. 7D, FB, 00
        jns     ?_063                                   ; 190B _ 79, 20
        mov     edx, dword [ebp+14H]                    ; 190D _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 1910 _ 8B. 45, FC
        add     eax, edx                                ; 1913 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 1915 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 1919 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 191B _ 8B. 45, 10
        add     eax, edx                                ; 191E _ 01. D0
        mov     edx, eax                                ; 1920 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 1922 _ 8B. 45, 08
        add     edx, eax                                ; 1925 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 1927 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 192B _ 88. 02
?_063:  movsx   eax, byte [ebp-5H]                      ; 192D _ 0F BE. 45, FB
        and     eax, 40H                                ; 1931 _ 83. E0, 40
        test    eax, eax                                ; 1934 _ 85. C0
        jz      ?_064                                   ; 1936 _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 1938 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 193B _ 8B. 45, FC
        add     eax, edx                                ; 193E _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 1940 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 1944 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 1946 _ 8B. 45, 10
        add     eax, edx                                ; 1949 _ 01. D0
        lea     edx, [eax+1H]                           ; 194B _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 194E _ 8B. 45, 08
        add     edx, eax                                ; 1951 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 1953 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 1957 _ 88. 02
?_064:  movsx   eax, byte [ebp-5H]                      ; 1959 _ 0F BE. 45, FB
        and     eax, 20H                                ; 195D _ 83. E0, 20
        test    eax, eax                                ; 1960 _ 85. C0
        jz      ?_065                                   ; 1962 _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 1964 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 1967 _ 8B. 45, FC
        add     eax, edx                                ; 196A _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 196C _ 0F AF. 45, 0C
        mov     edx, eax                                ; 1970 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 1972 _ 8B. 45, 10
        add     eax, edx                                ; 1975 _ 01. D0
        lea     edx, [eax+2H]                           ; 1977 _ 8D. 50, 02
        mov     eax, dword [ebp+8H]                     ; 197A _ 8B. 45, 08
        add     edx, eax                                ; 197D _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 197F _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 1983 _ 88. 02
?_065:  movsx   eax, byte [ebp-5H]                      ; 1985 _ 0F BE. 45, FB
        and     eax, 10H                                ; 1989 _ 83. E0, 10
        test    eax, eax                                ; 198C _ 85. C0
        jz      ?_066                                   ; 198E _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 1990 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 1993 _ 8B. 45, FC
        add     eax, edx                                ; 1996 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 1998 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 199C _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 199E _ 8B. 45, 10
        add     eax, edx                                ; 19A1 _ 01. D0
        lea     edx, [eax+3H]                           ; 19A3 _ 8D. 50, 03
        mov     eax, dword [ebp+8H]                     ; 19A6 _ 8B. 45, 08
        add     edx, eax                                ; 19A9 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 19AB _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 19AF _ 88. 02
?_066:  movsx   eax, byte [ebp-5H]                      ; 19B1 _ 0F BE. 45, FB
        and     eax, 08H                                ; 19B5 _ 83. E0, 08
        test    eax, eax                                ; 19B8 _ 85. C0
        jz      ?_067                                   ; 19BA _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 19BC _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 19BF _ 8B. 45, FC
        add     eax, edx                                ; 19C2 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 19C4 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 19C8 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 19CA _ 8B. 45, 10
        add     eax, edx                                ; 19CD _ 01. D0
        lea     edx, [eax+4H]                           ; 19CF _ 8D. 50, 04
        mov     eax, dword [ebp+8H]                     ; 19D2 _ 8B. 45, 08
        add     edx, eax                                ; 19D5 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 19D7 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 19DB _ 88. 02
?_067:  movsx   eax, byte [ebp-5H]                      ; 19DD _ 0F BE. 45, FB
        and     eax, 04H                                ; 19E1 _ 83. E0, 04
        test    eax, eax                                ; 19E4 _ 85. C0
        jz      ?_068                                   ; 19E6 _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 19E8 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 19EB _ 8B. 45, FC
        add     eax, edx                                ; 19EE _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 19F0 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 19F4 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 19F6 _ 8B. 45, 10
        add     eax, edx                                ; 19F9 _ 01. D0
        lea     edx, [eax+5H]                           ; 19FB _ 8D. 50, 05
        mov     eax, dword [ebp+8H]                     ; 19FE _ 8B. 45, 08
        add     edx, eax                                ; 1A01 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 1A03 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 1A07 _ 88. 02
?_068:  movsx   eax, byte [ebp-5H]                      ; 1A09 _ 0F BE. 45, FB
        and     eax, 02H                                ; 1A0D _ 83. E0, 02
        test    eax, eax                                ; 1A10 _ 85. C0
        jz      ?_069                                   ; 1A12 _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 1A14 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 1A17 _ 8B. 45, FC
        add     eax, edx                                ; 1A1A _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 1A1C _ 0F AF. 45, 0C
        mov     edx, eax                                ; 1A20 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 1A22 _ 8B. 45, 10
        add     eax, edx                                ; 1A25 _ 01. D0
        lea     edx, [eax+6H]                           ; 1A27 _ 8D. 50, 06
        mov     eax, dword [ebp+8H]                     ; 1A2A _ 8B. 45, 08
        add     edx, eax                                ; 1A2D _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 1A2F _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 1A33 _ 88. 02
?_069:  movsx   eax, byte [ebp-5H]                      ; 1A35 _ 0F BE. 45, FB
        and     eax, 01H                                ; 1A39 _ 83. E0, 01
        test    eax, eax                                ; 1A3C _ 85. C0
        jz      ?_070                                   ; 1A3E _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 1A40 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 1A43 _ 8B. 45, FC
        add     eax, edx                                ; 1A46 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 1A48 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 1A4C _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 1A4E _ 8B. 45, 10
        add     eax, edx                                ; 1A51 _ 01. D0
        lea     edx, [eax+7H]                           ; 1A53 _ 8D. 50, 07
        mov     eax, dword [ebp+8H]                     ; 1A56 _ 8B. 45, 08
        add     edx, eax                                ; 1A59 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 1A5B _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 1A5F _ 88. 02
?_070:  add     dword [ebp-4H], 1                       ; 1A61 _ 83. 45, FC, 01
?_071:  cmp     dword [ebp-4H], 15                      ; 1A65 _ 83. 7D, FC, 0F
        jle     ?_062                                   ; 1A69 _ 0F 8E, FFFFFE8A
        nop                                             ; 1A6F _ 90
        leave                                           ; 1A70 _ C9
        ret                                             ; 1A71 _ C3
; showFont8 End of function

init_mouse_cursor:; Function begin
        push    ebp                                     ; 1A72 _ 55
        mov     ebp, esp                                ; 1A73 _ 89. E5
        sub     esp, 20                                 ; 1A75 _ 83. EC, 14
        mov     eax, dword [ebp+0CH]                    ; 1A78 _ 8B. 45, 0C
        mov     byte [ebp-14H], al                      ; 1A7B _ 88. 45, EC
        mov     dword [ebp-4H], 0                       ; 1A7E _ C7. 45, FC, 00000000
        jmp     ?_078                                   ; 1A85 _ E9, 000000B1

?_072:  mov     dword [ebp-8H], 0                       ; 1A8A _ C7. 45, F8, 00000000
        jmp     ?_077                                   ; 1A91 _ E9, 00000097

?_073:  mov     eax, dword [ebp-4H]                     ; 1A96 _ 8B. 45, FC
        shl     eax, 4                                  ; 1A99 _ C1. E0, 04
        mov     edx, eax                                ; 1A9C _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 1A9E _ 8B. 45, F8
        add     eax, edx                                ; 1AA1 _ 01. D0
        add     eax, cursor.2458                        ; 1AA3 _ 05, 00000160(d)
        movzx   eax, byte [eax]                         ; 1AA8 _ 0F B6. 00
        cmp     al, 42                                  ; 1AAB _ 3C, 2A
        jnz     ?_074                                   ; 1AAD _ 75, 17
        mov     eax, dword [ebp-4H]                     ; 1AAF _ 8B. 45, FC
        shl     eax, 4                                  ; 1AB2 _ C1. E0, 04
        mov     edx, eax                                ; 1AB5 _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 1AB7 _ 8B. 45, F8
        add     eax, edx                                ; 1ABA _ 01. D0
        mov     edx, eax                                ; 1ABC _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 1ABE _ 8B. 45, 08
        add     eax, edx                                ; 1AC1 _ 01. D0
        mov     byte [eax], 0                           ; 1AC3 _ C6. 00, 00
?_074:  mov     eax, dword [ebp-4H]                     ; 1AC6 _ 8B. 45, FC
        shl     eax, 4                                  ; 1AC9 _ C1. E0, 04
        mov     edx, eax                                ; 1ACC _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 1ACE _ 8B. 45, F8
        add     eax, edx                                ; 1AD1 _ 01. D0
        add     eax, cursor.2458                        ; 1AD3 _ 05, 00000160(d)
        movzx   eax, byte [eax]                         ; 1AD8 _ 0F B6. 00
        cmp     al, 79                                  ; 1ADB _ 3C, 4F
        jnz     ?_075                                   ; 1ADD _ 75, 17
        mov     eax, dword [ebp-4H]                     ; 1ADF _ 8B. 45, FC
        shl     eax, 4                                  ; 1AE2 _ C1. E0, 04
        mov     edx, eax                                ; 1AE5 _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 1AE7 _ 8B. 45, F8
        add     eax, edx                                ; 1AEA _ 01. D0
        mov     edx, eax                                ; 1AEC _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 1AEE _ 8B. 45, 08
        add     eax, edx                                ; 1AF1 _ 01. D0
        mov     byte [eax], 7                           ; 1AF3 _ C6. 00, 07
?_075:  mov     eax, dword [ebp-4H]                     ; 1AF6 _ 8B. 45, FC
        shl     eax, 4                                  ; 1AF9 _ C1. E0, 04
        mov     edx, eax                                ; 1AFC _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 1AFE _ 8B. 45, F8
        add     eax, edx                                ; 1B01 _ 01. D0
        add     eax, cursor.2458                        ; 1B03 _ 05, 00000160(d)
        movzx   eax, byte [eax]                         ; 1B08 _ 0F B6. 00
        cmp     al, 46                                  ; 1B0B _ 3C, 2E
        jnz     ?_076                                   ; 1B0D _ 75, 1A
        mov     eax, dword [ebp-4H]                     ; 1B0F _ 8B. 45, FC
        shl     eax, 4                                  ; 1B12 _ C1. E0, 04
        mov     edx, eax                                ; 1B15 _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 1B17 _ 8B. 45, F8
        add     eax, edx                                ; 1B1A _ 01. D0
        mov     edx, eax                                ; 1B1C _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 1B1E _ 8B. 45, 08
        add     edx, eax                                ; 1B21 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 1B23 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 1B27 _ 88. 02
?_076:  add     dword [ebp-8H], 1                       ; 1B29 _ 83. 45, F8, 01
?_077:  cmp     dword [ebp-8H], 15                      ; 1B2D _ 83. 7D, F8, 0F
        jle     ?_073                                   ; 1B31 _ 0F 8E, FFFFFF5F
        add     dword [ebp-4H], 1                       ; 1B37 _ 83. 45, FC, 01
?_078:  cmp     dword [ebp-4H], 15                      ; 1B3B _ 83. 7D, FC, 0F
        jle     ?_072                                   ; 1B3F _ 0F 8E, FFFFFF45
        nop                                             ; 1B45 _ 90
        leave                                           ; 1B46 _ C9
        ret                                             ; 1B47 _ C3
; init_mouse_cursor End of function

putblock:; Function begin
        push    ebp                                     ; 1B48 _ 55
        mov     ebp, esp                                ; 1B49 _ 89. E5
        push    ebx                                     ; 1B4B _ 53
        sub     esp, 16                                 ; 1B4C _ 83. EC, 10
        mov     dword [ebp-8H], 0                       ; 1B4F _ C7. 45, F8, 00000000
        jmp     ?_082                                   ; 1B56 _ EB, 50

?_079:  mov     dword [ebp-0CH], 0                      ; 1B58 _ C7. 45, F4, 00000000
        jmp     ?_081                                   ; 1B5F _ EB, 3B

?_080:  mov     eax, dword [ebp-8H]                     ; 1B61 _ 8B. 45, F8
        imul    eax, dword [ebp+24H]                    ; 1B64 _ 0F AF. 45, 24
        mov     edx, eax                                ; 1B68 _ 89. C2
        mov     eax, dword [ebp-0CH]                    ; 1B6A _ 8B. 45, F4
        add     eax, edx                                ; 1B6D _ 01. D0
        mov     edx, eax                                ; 1B6F _ 89. C2
        mov     eax, dword [ebp+20H]                    ; 1B71 _ 8B. 45, 20
        add     eax, edx                                ; 1B74 _ 01. D0
        mov     ecx, dword [ebp+1CH]                    ; 1B76 _ 8B. 4D, 1C
        mov     edx, dword [ebp-8H]                     ; 1B79 _ 8B. 55, F8
        add     edx, ecx                                ; 1B7C _ 01. CA
        imul    edx, dword [ebp+0CH]                    ; 1B7E _ 0F AF. 55, 0C
        mov     ebx, dword [ebp+18H]                    ; 1B82 _ 8B. 5D, 18
        mov     ecx, dword [ebp-0CH]                    ; 1B85 _ 8B. 4D, F4
        add     ecx, ebx                                ; 1B88 _ 01. D9
        add     edx, ecx                                ; 1B8A _ 01. CA
        mov     ecx, edx                                ; 1B8C _ 89. D1
        mov     edx, dword [ebp+8H]                     ; 1B8E _ 8B. 55, 08
        add     edx, ecx                                ; 1B91 _ 01. CA
        movzx   eax, byte [eax]                         ; 1B93 _ 0F B6. 00
        mov     byte [edx], al                          ; 1B96 _ 88. 02
        add     dword [ebp-0CH], 1                      ; 1B98 _ 83. 45, F4, 01
?_081:  mov     eax, dword [ebp-0CH]                    ; 1B9C _ 8B. 45, F4
        cmp     eax, dword [ebp+10H]                    ; 1B9F _ 3B. 45, 10
        jl      ?_080                                   ; 1BA2 _ 7C, BD
        add     dword [ebp-8H], 1                       ; 1BA4 _ 83. 45, F8, 01
?_082:  mov     eax, dword [ebp-8H]                     ; 1BA8 _ 8B. 45, F8
        cmp     eax, dword [ebp+14H]                    ; 1BAB _ 3B. 45, 14
        jl      ?_079                                   ; 1BAE _ 7C, A8
        nop                                             ; 1BB0 _ 90
        add     esp, 16                                 ; 1BB1 _ 83. C4, 10
        pop     ebx                                     ; 1BB4 _ 5B
        pop     ebp                                     ; 1BB5 _ 5D
        ret                                             ; 1BB6 _ C3
; putblock End of function

intHandlerFromC:; Function begin
        push    ebp                                     ; 1BB7 _ 55
        mov     ebp, esp                                ; 1BB8 _ 89. E5
        sub     esp, 24                                 ; 1BBA _ 83. EC, 18
        mov     eax, dword [bootInfo]                   ; 1BBD _ A1, 00000008(d)
        mov     dword [ebp-14H], eax                    ; 1BC2 _ 89. 45, EC
        movzx   eax, word [?_255]                       ; 1BC5 _ 0F B7. 05, 0000000C(d)
        cwde                                            ; 1BCC _ 98
        mov     dword [ebp-10H], eax                    ; 1BCD _ 89. 45, F0
        movzx   eax, word [?_256]                       ; 1BD0 _ 0F B7. 05, 0000000E(d)
        cwde                                            ; 1BD7 _ 98
        mov     dword [ebp-0CH], eax                    ; 1BD8 _ 89. 45, F4
        sub     esp, 8                                  ; 1BDB _ 83. EC, 08
        push    32                                      ; 1BDE _ 6A, 20
        push    32                                      ; 1BE0 _ 6A, 20
        call    io_out8                                 ; 1BE2 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1BE7 _ 83. C4, 10
        mov     byte [ebp-15H], 0                       ; 1BEA _ C6. 45, EB, 00
        sub     esp, 12                                 ; 1BEE _ 83. EC, 0C
        push    96                                      ; 1BF1 _ 6A, 60
        call    io_in8                                  ; 1BF3 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1BF8 _ 83. C4, 10
        mov     byte [ebp-15H], al                      ; 1BFB _ 88. 45, EB
        movzx   eax, byte [ebp-15H]                     ; 1BFE _ 0F B6. 45, EB
        sub     esp, 8                                  ; 1C02 _ 83. EC, 08
        push    eax                                     ; 1C05 _ 50
        push    keyInfo                                 ; 1C06 _ 68, 00000010(d)
        call    fifo8_put                               ; 1C0B _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1C10 _ 83. C4, 10
        nop                                             ; 1C13 _ 90
        leave                                           ; 1C14 _ C9
        ret                                             ; 1C15 _ C3
; intHandlerFromC End of function

charToHex:; Function begin
        push    ebp                                     ; 1C16 _ 55
        mov     ebp, esp                                ; 1C17 _ 89. E5
        sub     esp, 40                                 ; 1C19 _ 83. EC, 28
        mov     eax, dword [ebp+8H]                     ; 1C1C _ 8B. 45, 08
        mov     byte [ebp-1CH], al                      ; 1C1F _ 88. 45, E4
        movzx   eax, byte [ebp-1CH]                     ; 1C22 _ 0F B6. 45, E4
        and     eax, 0FH                                ; 1C26 _ 83. E0, 0F
        mov     byte [ebp-9H], al                       ; 1C29 _ 88. 45, F7
        movsx   eax, byte [ebp-9H]                      ; 1C2C _ 0F BE. 45, F7
        sub     esp, 12                                 ; 1C30 _ 83. EC, 0C
        push    eax                                     ; 1C33 _ 50
        call    charToVal                               ; 1C34 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1C39 _ 83. C4, 10
        mov     byte [?_254], al                        ; 1C3C _ A2, 00000003(d)
        movzx   eax, byte [ebp-1CH]                     ; 1C41 _ 0F B6. 45, E4
        shr     al, 4                                   ; 1C45 _ C0. E8, 04
        mov     byte [ebp-1CH], al                      ; 1C48 _ 88. 45, E4
        movzx   eax, byte [ebp-1CH]                     ; 1C4B _ 0F B6. 45, E4
        movsx   eax, al                                 ; 1C4F _ 0F BE. C0
        sub     esp, 12                                 ; 1C52 _ 83. EC, 0C
        push    eax                                     ; 1C55 _ 50
        call    charToVal                               ; 1C56 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1C5B _ 83. C4, 10
        mov     byte [?_253], al                        ; 1C5E _ A2, 00000002(d)
        mov     eax, keyVal                             ; 1C63 _ B8, 00000000(d)
        leave                                           ; 1C68 _ C9
        ret                                             ; 1C69 _ C3
; charToHex End of function

charToVal:; Function begin
        push    ebp                                     ; 1C6A _ 55
        mov     ebp, esp                                ; 1C6B _ 89. E5
        sub     esp, 4                                  ; 1C6D _ 83. EC, 04
        mov     eax, dword [ebp+8H]                     ; 1C70 _ 8B. 45, 08
        mov     byte [ebp-4H], al                       ; 1C73 _ 88. 45, FC
        cmp     byte [ebp-4H], 9                        ; 1C76 _ 80. 7D, FC, 09
        jle     ?_083                                   ; 1C7A _ 7E, 09
        movzx   eax, byte [ebp-4H]                      ; 1C7C _ 0F B6. 45, FC
        add     eax, 55                                 ; 1C80 _ 83. C0, 37
        jmp     ?_084                                   ; 1C83 _ EB, 07

?_083:  movzx   eax, byte [ebp-4H]                      ; 1C85 _ 0F B6. 45, FC
        add     eax, 48                                 ; 1C89 _ 83. C0, 30
?_084:  leave                                           ; 1C8C _ C9
        ret                                             ; 1C8D _ C3
; charToVal End of function

intToHexStr:; Function begin
        push    ebp                                     ; 1C8E _ 55
        mov     ebp, esp                                ; 1C8F _ 89. E5
        sub     esp, 16                                 ; 1C91 _ 83. EC, 10
        mov     byte [str.2501], 48                     ; 1C94 _ C6. 05, 00000278(d), 30
        mov     byte [?_259], 120                       ; 1C9B _ C6. 05, 00000279(d), 78
        mov     byte [?_260], 0                         ; 1CA2 _ C6. 05, 00000282(d), 00
        mov     dword [ebp-0CH], 2                      ; 1CA9 _ C7. 45, F4, 00000002
        jmp     ?_086                                   ; 1CB0 _ EB, 0F

?_085:  mov     eax, dword [ebp-0CH]                    ; 1CB2 _ 8B. 45, F4
        add     eax, str.2501                           ; 1CB5 _ 05, 00000278(d)
        mov     byte [eax], 48                          ; 1CBA _ C6. 00, 30
        add     dword [ebp-0CH], 1                      ; 1CBD _ 83. 45, F4, 01
?_086:  cmp     dword [ebp-0CH], 9                      ; 1CC1 _ 83. 7D, F4, 09
        jle     ?_085                                   ; 1CC5 _ 7E, EB
        mov     dword [ebp-8H], 9                       ; 1CC7 _ C7. 45, F8, 00000009
        jmp     ?_089                                   ; 1CCE _ EB, 48

?_087:  mov     eax, dword [ebp+8H]                     ; 1CD0 _ 8B. 45, 08
        and     eax, 0FH                                ; 1CD3 _ 83. E0, 0F
        mov     dword [ebp-4H], eax                     ; 1CD6 _ 89. 45, FC
        mov     eax, dword [ebp+8H]                     ; 1CD9 _ 8B. 45, 08
        shr     eax, 4                                  ; 1CDC _ C1. E8, 04
        mov     dword [ebp+8H], eax                     ; 1CDF _ 89. 45, 08
        cmp     dword [ebp-4H], 9                       ; 1CE2 _ 83. 7D, FC, 09
        jle     ?_088                                   ; 1CE6 _ 7E, 19
        mov     eax, dword [ebp-4H]                     ; 1CE8 _ 8B. 45, FC
        lea     ecx, [eax+37H]                          ; 1CEB _ 8D. 48, 37
        mov     eax, dword [ebp-8H]                     ; 1CEE _ 8B. 45, F8
        lea     edx, [eax-1H]                           ; 1CF1 _ 8D. 50, FF
        mov     dword [ebp-8H], edx                     ; 1CF4 _ 89. 55, F8
        mov     edx, ecx                                ; 1CF7 _ 89. CA
        mov     byte [str.2501+eax], dl                 ; 1CF9 _ 88. 90, 00000278(d)
        jmp     ?_089                                   ; 1CFF _ EB, 17

?_088:  mov     eax, dword [ebp-4H]                     ; 1D01 _ 8B. 45, FC
        lea     ecx, [eax+30H]                          ; 1D04 _ 8D. 48, 30
        mov     eax, dword [ebp-8H]                     ; 1D07 _ 8B. 45, F8
        lea     edx, [eax-1H]                           ; 1D0A _ 8D. 50, FF
        mov     dword [ebp-8H], edx                     ; 1D0D _ 89. 55, F8
        mov     edx, ecx                                ; 1D10 _ 89. CA
        mov     byte [str.2501+eax], dl                 ; 1D12 _ 88. 90, 00000278(d)
?_089:  cmp     dword [ebp-8H], 1                       ; 1D18 _ 83. 7D, F8, 01
        jle     ?_090                                   ; 1D1C _ 7E, 06
        cmp     dword [ebp+8H], 0                       ; 1D1E _ 83. 7D, 08, 00
        jnz     ?_087                                   ; 1D22 _ 75, AC
?_090:  mov     eax, str.2501                           ; 1D24 _ B8, 00000278(d)
        leave                                           ; 1D29 _ C9
        ret                                             ; 1D2A _ C3
; intToHexStr End of function

wait_KBC_sendReady:; Function begin
        push    ebp                                     ; 1D2B _ 55
        mov     ebp, esp                                ; 1D2C _ 89. E5
        sub     esp, 8                                  ; 1D2E _ 83. EC, 08
?_091:  sub     esp, 12                                 ; 1D31 _ 83. EC, 0C
        push    100                                     ; 1D34 _ 6A, 64
        call    io_in8                                  ; 1D36 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1D3B _ 83. C4, 10
        movsx   eax, al                                 ; 1D3E _ 0F BE. C0
        and     eax, 02H                                ; 1D41 _ 83. E0, 02
        test    eax, eax                                ; 1D44 _ 85. C0
        jz      ?_092                                   ; 1D46 _ 74, 02
        jmp     ?_091                                   ; 1D48 _ EB, E7

?_092:  nop                                             ; 1D4A _ 90
        nop                                             ; 1D4B _ 90
        leave                                           ; 1D4C _ C9
        ret                                             ; 1D4D _ C3
; wait_KBC_sendReady End of function

init_keyboard:; Function begin
        push    ebp                                     ; 1D4E _ 55
        mov     ebp, esp                                ; 1D4F _ 89. E5
        sub     esp, 8                                  ; 1D51 _ 83. EC, 08
        call    wait_KBC_sendReady                      ; 1D54 _ E8, FFFFFFFC(rel)
        sub     esp, 8                                  ; 1D59 _ 83. EC, 08
        push    96                                      ; 1D5C _ 6A, 60
        push    100                                     ; 1D5E _ 6A, 64
        call    io_out8                                 ; 1D60 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1D65 _ 83. C4, 10
        call    wait_KBC_sendReady                      ; 1D68 _ E8, FFFFFFFC(rel)
        sub     esp, 8                                  ; 1D6D _ 83. EC, 08
        push    71                                      ; 1D70 _ 6A, 47
        push    96                                      ; 1D72 _ 6A, 60
        call    io_out8                                 ; 1D74 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1D79 _ 83. C4, 10
        nop                                             ; 1D7C _ 90
        leave                                           ; 1D7D _ C9
        ret                                             ; 1D7E _ C3
; init_keyboard End of function

enable_mouse:; Function begin
        push    ebp                                     ; 1D7F _ 55
        mov     ebp, esp                                ; 1D80 _ 89. E5
        sub     esp, 8                                  ; 1D82 _ 83. EC, 08
        call    wait_KBC_sendReady                      ; 1D85 _ E8, FFFFFFFC(rel)
        sub     esp, 8                                  ; 1D8A _ 83. EC, 08
        push    212                                     ; 1D8D _ 68, 000000D4
        push    100                                     ; 1D92 _ 6A, 64
        call    io_out8                                 ; 1D94 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1D99 _ 83. C4, 10
        call    wait_KBC_sendReady                      ; 1D9C _ E8, FFFFFFFC(rel)
        sub     esp, 8                                  ; 1DA1 _ 83. EC, 08
        push    244                                     ; 1DA4 _ 68, 000000F4
        push    96                                      ; 1DA9 _ 6A, 60
        call    io_out8                                 ; 1DAB _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1DB0 _ 83. C4, 10
        mov     eax, dword [ebp+8H]                     ; 1DB3 _ 8B. 45, 08
        mov     byte [eax+3H], 0                        ; 1DB6 _ C6. 40, 03, 00
        nop                                             ; 1DBA _ 90
        leave                                           ; 1DBB _ C9
        ret                                             ; 1DBC _ C3
; enable_mouse End of function

intHandlerForMouse:; Function begin
        push    ebp                                     ; 1DBD _ 55
        mov     ebp, esp                                ; 1DBE _ 89. E5
        sub     esp, 24                                 ; 1DC0 _ 83. EC, 18
        mov     byte [ebp-9H], 0                        ; 1DC3 _ C6. 45, F7, 00
        sub     esp, 8                                  ; 1DC7 _ 83. EC, 08
        push    32                                      ; 1DCA _ 6A, 20
        push    160                                     ; 1DCC _ 68, 000000A0
        call    io_out8                                 ; 1DD1 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1DD6 _ 83. C4, 10
        sub     esp, 8                                  ; 1DD9 _ 83. EC, 08
        push    32                                      ; 1DDC _ 6A, 20
        push    32                                      ; 1DDE _ 6A, 20
        call    io_out8                                 ; 1DE0 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1DE5 _ 83. C4, 10
        sub     esp, 12                                 ; 1DE8 _ 83. EC, 0C
        push    96                                      ; 1DEB _ 6A, 60
        call    io_in8                                  ; 1DED _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1DF2 _ 83. C4, 10
        mov     byte [ebp-9H], al                       ; 1DF5 _ 88. 45, F7
        movzx   eax, byte [ebp-9H]                      ; 1DF8 _ 0F B6. 45, F7
        sub     esp, 8                                  ; 1DFC _ 83. EC, 08
        push    eax                                     ; 1DFF _ 50
        push    mouseInfo                               ; 1E00 _ 68, 0000002C(d)
        call    fifo8_put                               ; 1E05 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1E0A _ 83. C4, 10
        nop                                             ; 1E0D _ 90
        leave                                           ; 1E0E _ C9
        ret                                             ; 1E0F _ C3
; intHandlerForMouse End of function

showKeyboardInfo:; Function begin
        push    ebp                                     ; 1E10 _ 55
        mov     ebp, esp                                ; 1E11 _ 89. E5
        sub     esp, 40                                 ; 1E13 _ 83. EC, 28
        call    io_sti                                  ; 1E16 _ E8, FFFFFFFC(rel)
        mov     eax, dword [bootInfo]                   ; 1E1B _ A1, 00000008(d)
        mov     dword [ebp-18H], eax                    ; 1E20 _ 89. 45, E8
        movzx   eax, word [?_255]                       ; 1E23 _ 0F B7. 05, 0000000C(d)
        cwde                                            ; 1E2A _ 98
        mov     dword [ebp-14H], eax                    ; 1E2B _ 89. 45, EC
        movzx   eax, word [?_256]                       ; 1E2E _ 0F B7. 05, 0000000E(d)
        cwde                                            ; 1E35 _ 98
        mov     dword [ebp-10H], eax                    ; 1E36 _ 89. 45, F0
        mov     byte [ebp-19H], 0                       ; 1E39 _ C6. 45, E7, 00
        sub     esp, 12                                 ; 1E3D _ 83. EC, 0C
        push    keyInfo                                 ; 1E40 _ 68, 00000010(d)
        call    fifo8_get                               ; 1E45 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1E4A _ 83. C4, 10
        mov     byte [ebp-19H], al                      ; 1E4D _ 88. 45, E7
        movzx   eax, byte [ebp-19H]                     ; 1E50 _ 0F B6. 45, E7
        sub     esp, 12                                 ; 1E54 _ 83. EC, 0C
        push    eax                                     ; 1E57 _ 50
        call    charToHex                               ; 1E58 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1E5D _ 83. C4, 10
        mov     dword [ebp-0CH], eax                    ; 1E60 _ 89. 45, F4
        mov     edx, dword [line.2534]                  ; 1E63 _ 8B. 15, 00000284(d)
        mov     eax, dword [pos.2533]                   ; 1E69 _ A1, 00000288(d)
        sub     esp, 8                                  ; 1E6E _ 83. EC, 08
        push    dword [ebp-0CH]                         ; 1E71 _ FF. 75, F4
        push    7                                       ; 1E74 _ 6A, 07
        push    edx                                     ; 1E76 _ 52
        push    eax                                     ; 1E77 _ 50
        push    dword [ebp+0CH]                         ; 1E78 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1E7B _ FF. 75, 08
        call    showString                              ; 1E7E _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1E83 _ 83. C4, 20
        mov     eax, dword [pos.2533]                   ; 1E86 _ A1, 00000288(d)
        add     eax, 32                                 ; 1E8B _ 83. C0, 20
        mov     dword [pos.2533], eax                   ; 1E8E _ A3, 00000288(d)
        mov     eax, dword [pos.2533]                   ; 1E93 _ A1, 00000288(d)
        cmp     dword [ebp-14H], eax                    ; 1E98 _ 39. 45, EC
        jnz     ?_095                                   ; 1E9B _ 75, 28
        mov     eax, dword [line.2534]                  ; 1E9D _ A1, 00000284(d)
        cmp     dword [ebp-10H], eax                    ; 1EA2 _ 39. 45, F0
        jz      ?_093                                   ; 1EA5 _ 74, 0A
        mov     eax, dword [line.2534]                  ; 1EA7 _ A1, 00000284(d)
        add     eax, 16                                 ; 1EAC _ 83. C0, 10
        jmp     ?_094                                   ; 1EAF _ EB, 05

?_093:  mov     eax, 0                                  ; 1EB1 _ B8, 00000000
?_094:  mov     dword [line.2534], eax                  ; 1EB6 _ A3, 00000284(d)
        mov     dword [pos.2533], 0                     ; 1EBB _ C7. 05, 00000288(d), 00000000
?_095:  nop                                             ; 1EC5 _ 90
        leave                                           ; 1EC6 _ C9
        ret                                             ; 1EC7 _ C3
; showKeyboardInfo End of function

showMouseInfo:; Function begin
        push    ebp                                     ; 1EC8 _ 55
        mov     ebp, esp                                ; 1EC9 _ 89. E5
        sub     esp, 24                                 ; 1ECB _ 83. EC, 18
        call    io_sti                                  ; 1ECE _ E8, FFFFFFFC(rel)
        mov     byte [ebp-9H], 0                        ; 1ED3 _ C6. 45, F7, 00
        sub     esp, 12                                 ; 1ED7 _ 83. EC, 0C
        push    mouseInfo                               ; 1EDA _ 68, 0000002C(d)
        call    fifo8_get                               ; 1EDF _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1EE4 _ 83. C4, 10
        mov     byte [ebp-9H], al                       ; 1EE7 _ 88. 45, F7
        movzx   eax, byte [ebp-9H]                      ; 1EEA _ 0F B6. 45, F7
        sub     esp, 8                                  ; 1EEE _ 83. EC, 08
        push    eax                                     ; 1EF1 _ 50
        push    mouse_move                              ; 1EF2 _ 68, 00000100(d)
        call    mouse_decode                            ; 1EF7 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1EFC _ 83. C4, 10
        test    eax, eax                                ; 1EFF _ 85. C0
        jz      ?_096                                   ; 1F01 _ 74, 60
        sub     esp, 4                                  ; 1F03 _ 83. EC, 04
        push    mouse_move                              ; 1F06 _ 68, 00000100(d)
        push    dword [ebp+0CH]                         ; 1F0B _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1F0E _ FF. 75, 08
        call    computeMousePos                         ; 1F11 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1F16 _ 83. C4, 10
        mov     edx, dword [my]                         ; 1F19 _ 8B. 15, 00000114(d)
        mov     eax, dword [mx]                         ; 1F1F _ A1, 00000110(d)
        push    edx                                     ; 1F24 _ 52
        push    eax                                     ; 1F25 _ 50
        push    dword [ebp+10H]                         ; 1F26 _ FF. 75, 10
        push    dword [ebp+8H]                          ; 1F29 _ FF. 75, 08
        call    sheet_slide                             ; 1F2C _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1F31 _ 83. C4, 10
        mov     eax, dword [?_258]                      ; 1F34 _ A1, 0000010C(d)
        and     eax, 01H                                ; 1F39 _ 83. E0, 01
        test    eax, eax                                ; 1F3C _ 85. C0
        jz      ?_096                                   ; 1F3E _ 74, 23
        mov     eax, dword [my]                         ; 1F40 _ A1, 00000114(d)
        lea     ecx, [eax-8H]                           ; 1F45 _ 8D. 48, F8
        mov     eax, dword [mx]                         ; 1F48 _ A1, 00000110(d)
        lea     edx, [eax-50H]                          ; 1F4D _ 8D. 50, B0
        mov     eax, dword [sheet_win]                  ; 1F50 _ A1, 00000248(d)
        push    ecx                                     ; 1F55 _ 51
        push    edx                                     ; 1F56 _ 52
        push    eax                                     ; 1F57 _ 50
        push    dword [ebp+8H]                          ; 1F58 _ FF. 75, 08
        call    sheet_slide                             ; 1F5B _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1F60 _ 83. C4, 10
?_096:  nop                                             ; 1F63 _ 90
        leave                                           ; 1F64 _ C9
        ret                                             ; 1F65 _ C3
; showMouseInfo End of function

mouse_decode:; Function begin
        push    ebp                                     ; 1F66 _ 55
        mov     ebp, esp                                ; 1F67 _ 89. E5
        sub     esp, 4                                  ; 1F69 _ 83. EC, 04
        mov     eax, dword [ebp+0CH]                    ; 1F6C _ 8B. 45, 0C
        mov     byte [ebp-4H], al                       ; 1F6F _ 88. 45, FC
        mov     eax, dword [ebp+8H]                     ; 1F72 _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 1F75 _ 0F B6. 40, 03
        test    al, al                                  ; 1F79 _ 84. C0
        jnz     ?_098                                   ; 1F7B _ 75, 17
        cmp     byte [ebp-4H], -6                       ; 1F7D _ 80. 7D, FC, FA
        jnz     ?_097                                   ; 1F81 _ 75, 07
        mov     eax, dword [ebp+8H]                     ; 1F83 _ 8B. 45, 08
        mov     byte [eax+3H], 1                        ; 1F86 _ C6. 40, 03, 01
?_097:  mov     eax, 0                                  ; 1F8A _ B8, 00000000
        jmp     ?_105                                   ; 1F8F _ E9, 0000010C

?_098:  mov     eax, dword [ebp+8H]                     ; 1F94 _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 1F97 _ 0F B6. 40, 03
        cmp     al, 1                                   ; 1F9B _ 3C, 01
        jnz     ?_100                                   ; 1F9D _ 75, 25
        movzx   eax, byte [ebp-4H]                      ; 1F9F _ 0F B6. 45, FC
        or      eax, 37H                                ; 1FA3 _ 83. C8, 37
        cmp     al, 63                                  ; 1FA6 _ 3C, 3F
        jnz     ?_099                                   ; 1FA8 _ 75, 10
        mov     eax, dword [ebp+8H]                     ; 1FAA _ 8B. 45, 08
        movzx   edx, byte [ebp-4H]                      ; 1FAD _ 0F B6. 55, FC
        mov     byte [eax], dl                          ; 1FB1 _ 88. 10
        mov     eax, dword [ebp+8H]                     ; 1FB3 _ 8B. 45, 08
        mov     byte [eax+3H], 2                        ; 1FB6 _ C6. 40, 03, 02
?_099:  mov     eax, 0                                  ; 1FBA _ B8, 00000000
        jmp     ?_105                                   ; 1FBF _ E9, 000000DC

?_100:  mov     eax, dword [ebp+8H]                     ; 1FC4 _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 1FC7 _ 0F B6. 40, 03
        cmp     al, 2                                   ; 1FCB _ 3C, 02
        jnz     ?_101                                   ; 1FCD _ 75, 1B
        mov     eax, dword [ebp+8H]                     ; 1FCF _ 8B. 45, 08
        movzx   edx, byte [ebp-4H]                      ; 1FD2 _ 0F B6. 55, FC
        mov     byte [eax+1H], dl                       ; 1FD6 _ 88. 50, 01
        mov     eax, dword [ebp+8H]                     ; 1FD9 _ 8B. 45, 08
        mov     byte [eax+3H], 3                        ; 1FDC _ C6. 40, 03, 03
        mov     eax, 0                                  ; 1FE0 _ B8, 00000000
        jmp     ?_105                                   ; 1FE5 _ E9, 000000B6

?_101:  mov     eax, dword [ebp+8H]                     ; 1FEA _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 1FED _ 0F B6. 40, 03
        cmp     al, 3                                   ; 1FF1 _ 3C, 03
        jne     ?_104                                   ; 1FF3 _ 0F 85, 000000A2
        mov     eax, dword [ebp+8H]                     ; 1FF9 _ 8B. 45, 08
        movzx   edx, byte [ebp-4H]                      ; 1FFC _ 0F B6. 55, FC
        mov     byte [eax+2H], dl                       ; 2000 _ 88. 50, 02
        mov     eax, dword [ebp+8H]                     ; 2003 _ 8B. 45, 08
        mov     byte [eax+3H], 1                        ; 2006 _ C6. 40, 03, 01
        mov     eax, dword [ebp+8H]                     ; 200A _ 8B. 45, 08
        movzx   eax, byte [eax]                         ; 200D _ 0F B6. 00
        movzx   eax, al                                 ; 2010 _ 0F B6. C0
        and     eax, 07H                                ; 2013 _ 83. E0, 07
        mov     edx, eax                                ; 2016 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 2018 _ 8B. 45, 08
        mov     dword [eax+0CH], edx                    ; 201B _ 89. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 201E _ 8B. 45, 08
        movzx   eax, byte [eax+1H]                      ; 2021 _ 0F B6. 40, 01
        movzx   edx, al                                 ; 2025 _ 0F B6. D0
        mov     eax, dword [ebp+8H]                     ; 2028 _ 8B. 45, 08
        mov     dword [eax+4H], edx                     ; 202B _ 89. 50, 04
        mov     eax, dword [ebp+8H]                     ; 202E _ 8B. 45, 08
        movzx   eax, byte [eax+2H]                      ; 2031 _ 0F B6. 40, 02
        movzx   edx, al                                 ; 2035 _ 0F B6. D0
        mov     eax, dword [ebp+8H]                     ; 2038 _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 203B _ 89. 50, 08
        mov     eax, dword [ebp+8H]                     ; 203E _ 8B. 45, 08
        movzx   eax, byte [eax]                         ; 2041 _ 0F B6. 00
        movzx   eax, al                                 ; 2044 _ 0F B6. C0
        and     eax, 10H                                ; 2047 _ 83. E0, 10
        test    eax, eax                                ; 204A _ 85. C0
        jz      ?_102                                   ; 204C _ 74, 13
        mov     eax, dword [ebp+8H]                     ; 204E _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 2051 _ 8B. 40, 04
        or      eax, 0FFFFFF00H                         ; 2054 _ 0D, FFFFFF00
        mov     edx, eax                                ; 2059 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 205B _ 8B. 45, 08
        mov     dword [eax+4H], edx                     ; 205E _ 89. 50, 04
?_102:  mov     eax, dword [ebp+8H]                     ; 2061 _ 8B. 45, 08
        movzx   eax, byte [eax]                         ; 2064 _ 0F B6. 00
        movzx   eax, al                                 ; 2067 _ 0F B6. C0
        and     eax, 20H                                ; 206A _ 83. E0, 20
        test    eax, eax                                ; 206D _ 85. C0
        jz      ?_103                                   ; 206F _ 74, 13
        mov     eax, dword [ebp+8H]                     ; 2071 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 2074 _ 8B. 40, 08
        or      eax, 0FFFFFF00H                         ; 2077 _ 0D, FFFFFF00
        mov     edx, eax                                ; 207C _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 207E _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 2081 _ 89. 50, 08
?_103:  mov     eax, dword [ebp+8H]                     ; 2084 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 2087 _ 8B. 40, 08
        neg     eax                                     ; 208A _ F7. D8
        mov     edx, eax                                ; 208C _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 208E _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 2091 _ 89. 50, 08
        mov     eax, 1                                  ; 2094 _ B8, 00000001
        jmp     ?_105                                   ; 2099 _ EB, 05

?_104:  mov     eax, 4294967295                         ; 209B _ B8, FFFFFFFF
?_105:  leave                                           ; 20A0 _ C9
        ret                                             ; 20A1 _ C3
; mouse_decode End of function

computeMousePos:; Function begin
        push    ebp                                     ; 20A2 _ 55
        mov     ebp, esp                                ; 20A3 _ 89. E5
        sub     esp, 16                                 ; 20A5 _ 83. EC, 10
        movzx   eax, word [?_255]                       ; 20A8 _ 0F B7. 05, 0000000C(d)
        cwde                                            ; 20AF _ 98
        mov     dword [ebp-8H], eax                     ; 20B0 _ 89. 45, F8
        movzx   eax, word [?_256]                       ; 20B3 _ 0F B7. 05, 0000000E(d)
        cwde                                            ; 20BA _ 98
        mov     dword [ebp-4H], eax                     ; 20BB _ 89. 45, FC
        mov     eax, dword [ebp+10H]                    ; 20BE _ 8B. 45, 10
        mov     edx, dword [eax+4H]                     ; 20C1 _ 8B. 50, 04
        mov     eax, dword [mx]                         ; 20C4 _ A1, 00000110(d)
        add     eax, edx                                ; 20C9 _ 01. D0
        mov     dword [mx], eax                         ; 20CB _ A3, 00000110(d)
        mov     eax, dword [ebp+10H]                    ; 20D0 _ 8B. 45, 10
        mov     edx, dword [eax+8H]                     ; 20D3 _ 8B. 50, 08
        mov     eax, dword [my]                         ; 20D6 _ A1, 00000114(d)
        add     eax, edx                                ; 20DB _ 01. D0
        mov     dword [my], eax                         ; 20DD _ A3, 00000114(d)
        mov     eax, dword [mx]                         ; 20E2 _ A1, 00000110(d)
        test    eax, eax                                ; 20E7 _ 85. C0
        jns     ?_106                                   ; 20E9 _ 79, 0A
        mov     dword [mx], 0                           ; 20EB _ C7. 05, 00000110(d), 00000000
?_106:  mov     eax, dword [my]                         ; 20F5 _ A1, 00000114(d)
        test    eax, eax                                ; 20FA _ 85. C0
        jns     ?_107                                   ; 20FC _ 79, 0A
        mov     dword [my], 0                           ; 20FE _ C7. 05, 00000114(d), 00000000
?_107:  mov     eax, dword [ebp-8H]                     ; 2108 _ 8B. 45, F8
        lea     edx, [eax-9H]                           ; 210B _ 8D. 50, F7
        mov     eax, dword [mx]                         ; 210E _ A1, 00000110(d)
        cmp     edx, eax                                ; 2113 _ 39. C2
        jge     ?_108                                   ; 2115 _ 7D, 0B
        mov     eax, dword [ebp-8H]                     ; 2117 _ 8B. 45, F8
        sub     eax, 9                                  ; 211A _ 83. E8, 09
        mov     dword [mx], eax                         ; 211D _ A3, 00000110(d)
?_108:  mov     eax, dword [ebp-4H]                     ; 2122 _ 8B. 45, FC
        lea     edx, [eax-1H]                           ; 2125 _ 8D. 50, FF
        mov     eax, dword [my]                         ; 2128 _ A1, 00000114(d)
        cmp     edx, eax                                ; 212D _ 39. C2
        jge     ?_109                                   ; 212F _ 7D, 0B
        mov     eax, dword [ebp-4H]                     ; 2131 _ 8B. 45, FC
        sub     eax, 1                                  ; 2134 _ 83. E8, 01
        mov     dword [my], eax                         ; 2137 _ A3, 00000114(d)
?_109:  nop                                             ; 213C _ 90
        leave                                           ; 213D _ C9
        ret                                             ; 213E _ C3
; computeMousePos End of function

showMemInfo:; Function begin
        push    ebp                                     ; 213F _ 55
        mov     ebp, esp                                ; 2140 _ 89. E5
        sub     esp, 56                                 ; 2142 _ 83. EC, 38
        mov     dword [ebp-30H], 0                      ; 2145 _ C7. 45, D0, 00000000
        mov     dword [ebp-2CH], 0                      ; 214C _ C7. 45, D4, 00000000
        mov     dword [ebp-28H], 112                    ; 2153 _ C7. 45, D8, 00000070
        mov     dword [ebp-24H], 80                     ; 215A _ C7. 45, DC, 00000050
        push    100                                     ; 2161 _ 6A, 64
        push    dword [ebp+1CH]                         ; 2163 _ FF. 75, 1C
        push    0                                       ; 2166 _ 6A, 00
        push    0                                       ; 2168 _ 6A, 00
        push    14                                      ; 216A _ 6A, 0E
        push    dword [ebp+1CH]                         ; 216C _ FF. 75, 1C
        push    dword [ebp+14H]                         ; 216F _ FF. 75, 14
        call    boxfill8                                ; 2172 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 2177 _ 83. C4, 1C
        mov     eax, dword [ebp+20H]                    ; 217A _ 8B. 45, 20
        movsx   eax, al                                 ; 217D _ 0F BE. C0
        sub     esp, 8                                  ; 2180 _ 83. EC, 08
        push    ?_247                                   ; 2183 _ 68, 0000004A(d)
        push    eax                                     ; 2188 _ 50
        push    dword [ebp-2CH]                         ; 2189 _ FF. 75, D4
        push    dword [ebp-30H]                         ; 218C _ FF. 75, D0
        push    dword [ebp+0CH]                         ; 218F _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 2192 _ FF. 75, 08
        call    showString                              ; 2195 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 219A _ 83. C4, 20
        mov     eax, dword [ebp+18H]                    ; 219D _ 8B. 45, 18
        sub     esp, 12                                 ; 21A0 _ 83. EC, 0C
        push    eax                                     ; 21A3 _ 50
        call    intToHexStr                             ; 21A4 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 21A9 _ 83. C4, 10
        mov     dword [ebp-20H], eax                    ; 21AC _ 89. 45, E0
        mov     eax, dword [ebp+20H]                    ; 21AF _ 8B. 45, 20
        movsx   eax, al                                 ; 21B2 _ 0F BE. C0
        sub     esp, 8                                  ; 21B5 _ 83. EC, 08
        push    dword [ebp-20H]                         ; 21B8 _ FF. 75, E0
        push    eax                                     ; 21BB _ 50
        push    dword [ebp-2CH]                         ; 21BC _ FF. 75, D4
        push    dword [ebp-28H]                         ; 21BF _ FF. 75, D8
        push    dword [ebp+0CH]                         ; 21C2 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 21C5 _ FF. 75, 08
        call    showString                              ; 21C8 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 21CD _ 83. C4, 20
        add     dword [ebp-2CH], 16                     ; 21D0 _ 83. 45, D4, 10
        mov     eax, dword [ebp+20H]                    ; 21D4 _ 8B. 45, 20
        movsx   eax, al                                 ; 21D7 _ 0F BE. C0
        sub     esp, 8                                  ; 21DA _ 83. EC, 08
        push    ?_248                                   ; 21DD _ 68, 00000054(d)
        push    eax                                     ; 21E2 _ 50
        push    dword [ebp-2CH]                         ; 21E3 _ FF. 75, D4
        push    dword [ebp-30H]                         ; 21E6 _ FF. 75, D0
        push    dword [ebp+0CH]                         ; 21E9 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 21EC _ FF. 75, 08
        call    showString                              ; 21EF _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 21F4 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 21F7 _ 8B. 45, 10
        mov     eax, dword [eax]                        ; 21FA _ 8B. 00
        sub     esp, 12                                 ; 21FC _ 83. EC, 0C
        push    eax                                     ; 21FF _ 50
        call    intToHexStr                             ; 2200 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 2205 _ 83. C4, 10
        mov     dword [ebp-1CH], eax                    ; 2208 _ 89. 45, E4
        mov     eax, dword [ebp+20H]                    ; 220B _ 8B. 45, 20
        movsx   eax, al                                 ; 220E _ 0F BE. C0
        sub     esp, 8                                  ; 2211 _ 83. EC, 08
        push    dword [ebp-1CH]                         ; 2214 _ FF. 75, E4
        push    eax                                     ; 2217 _ 50
        push    dword [ebp-2CH]                         ; 2218 _ FF. 75, D4
        push    dword [ebp-28H]                         ; 221B _ FF. 75, D8
        push    dword [ebp+0CH]                         ; 221E _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 2221 _ FF. 75, 08
        call    showString                              ; 2224 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 2229 _ 83. C4, 20
        add     dword [ebp-2CH], 16                     ; 222C _ 83. 45, D4, 10
        mov     eax, dword [ebp+20H]                    ; 2230 _ 8B. 45, 20
        movsx   eax, al                                 ; 2233 _ 0F BE. C0
        sub     esp, 8                                  ; 2236 _ 83. EC, 08
        push    ?_249                                   ; 2239 _ 68, 00000062(d)
        push    eax                                     ; 223E _ 50
        push    dword [ebp-2CH]                         ; 223F _ FF. 75, D4
        push    dword [ebp-30H]                         ; 2242 _ FF. 75, D0
        push    dword [ebp+0CH]                         ; 2245 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 2248 _ FF. 75, 08
        call    showString                              ; 224B _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 2250 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 2253 _ 8B. 45, 10
        mov     eax, dword [eax+4H]                     ; 2256 _ 8B. 40, 04
        sub     esp, 12                                 ; 2259 _ 83. EC, 0C
        push    eax                                     ; 225C _ 50
        call    intToHexStr                             ; 225D _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 2262 _ 83. C4, 10
        mov     dword [ebp-18H], eax                    ; 2265 _ 89. 45, E8
        mov     eax, dword [ebp+20H]                    ; 2268 _ 8B. 45, 20
        movsx   eax, al                                 ; 226B _ 0F BE. C0
        sub     esp, 8                                  ; 226E _ 83. EC, 08
        push    dword [ebp-18H]                         ; 2271 _ FF. 75, E8
        push    eax                                     ; 2274 _ 50
        push    dword [ebp-2CH]                         ; 2275 _ FF. 75, D4
        push    dword [ebp-28H]                         ; 2278 _ FF. 75, D8
        push    dword [ebp+0CH]                         ; 227B _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 227E _ FF. 75, 08
        call    showString                              ; 2281 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 2286 _ 83. C4, 20
        add     dword [ebp-2CH], 16                     ; 2289 _ 83. 45, D4, 10
        mov     eax, dword [ebp+20H]                    ; 228D _ 8B. 45, 20
        movsx   eax, al                                 ; 2290 _ 0F BE. C0
        sub     esp, 8                                  ; 2293 _ 83. EC, 08
        push    ?_250                                   ; 2296 _ 68, 00000071(d)
        push    eax                                     ; 229B _ 50
        push    dword [ebp-2CH]                         ; 229C _ FF. 75, D4
        push    dword [ebp-30H]                         ; 229F _ FF. 75, D0
        push    dword [ebp+0CH]                         ; 22A2 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 22A5 _ FF. 75, 08
        call    showString                              ; 22A8 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 22AD _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 22B0 _ 8B. 45, 10
        mov     eax, dword [eax+8H]                     ; 22B3 _ 8B. 40, 08
        sub     esp, 12                                 ; 22B6 _ 83. EC, 0C
        push    eax                                     ; 22B9 _ 50
        call    intToHexStr                             ; 22BA _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 22BF _ 83. C4, 10
        mov     dword [ebp-14H], eax                    ; 22C2 _ 89. 45, EC
        mov     eax, dword [ebp+20H]                    ; 22C5 _ 8B. 45, 20
        movsx   eax, al                                 ; 22C8 _ 0F BE. C0
        sub     esp, 8                                  ; 22CB _ 83. EC, 08
        push    dword [ebp-14H]                         ; 22CE _ FF. 75, EC
        push    eax                                     ; 22D1 _ 50
        push    dword [ebp-2CH]                         ; 22D2 _ FF. 75, D4
        push    dword [ebp-28H]                         ; 22D5 _ FF. 75, D8
        push    dword [ebp+0CH]                         ; 22D8 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 22DB _ FF. 75, 08
        call    showString                              ; 22DE _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 22E3 _ 83. C4, 20
        add     dword [ebp-2CH], 16                     ; 22E6 _ 83. 45, D4, 10
        mov     eax, dword [ebp+20H]                    ; 22EA _ 8B. 45, 20
        movsx   eax, al                                 ; 22ED _ 0F BE. C0
        sub     esp, 8                                  ; 22F0 _ 83. EC, 08
        push    ?_251                                   ; 22F3 _ 68, 0000007D(d)
        push    eax                                     ; 22F8 _ 50
        push    dword [ebp-2CH]                         ; 22F9 _ FF. 75, D4
        push    dword [ebp-30H]                         ; 22FC _ FF. 75, D0
        push    dword [ebp+0CH]                         ; 22FF _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 2302 _ FF. 75, 08
        call    showString                              ; 2305 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 230A _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 230D _ 8B. 45, 10
        mov     eax, dword [eax+0CH]                    ; 2310 _ 8B. 40, 0C
        sub     esp, 12                                 ; 2313 _ 83. EC, 0C
        push    eax                                     ; 2316 _ 50
        call    intToHexStr                             ; 2317 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 231C _ 83. C4, 10
        mov     dword [ebp-10H], eax                    ; 231F _ 89. 45, F0
        mov     eax, dword [ebp+20H]                    ; 2322 _ 8B. 45, 20
        movsx   eax, al                                 ; 2325 _ 0F BE. C0
        sub     esp, 8                                  ; 2328 _ 83. EC, 08
        push    dword [ebp-10H]                         ; 232B _ FF. 75, F0
        push    eax                                     ; 232E _ 50
        push    dword [ebp-2CH]                         ; 232F _ FF. 75, D4
        push    dword [ebp-28H]                         ; 2332 _ FF. 75, D8
        push    dword [ebp+0CH]                         ; 2335 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 2338 _ FF. 75, 08
        call    showString                              ; 233B _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 2340 _ 83. C4, 20
        add     dword [ebp-2CH], 16                     ; 2343 _ 83. 45, D4, 10
        mov     eax, dword [ebp+20H]                    ; 2347 _ 8B. 45, 20
        movsx   eax, al                                 ; 234A _ 0F BE. C0
        sub     esp, 8                                  ; 234D _ 83. EC, 08
        push    ?_252                                   ; 2350 _ 68, 0000008A(d)
        push    eax                                     ; 2355 _ 50
        push    dword [ebp-2CH]                         ; 2356 _ FF. 75, D4
        push    dword [ebp-30H]                         ; 2359 _ FF. 75, D0
        push    dword [ebp+0CH]                         ; 235C _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 235F _ FF. 75, 08
        call    showString                              ; 2362 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 2367 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 236A _ 8B. 45, 10
        mov     eax, dword [eax+10H]                    ; 236D _ 8B. 40, 10
        sub     esp, 12                                 ; 2370 _ 83. EC, 0C
        push    eax                                     ; 2373 _ 50
        call    intToHexStr                             ; 2374 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 2379 _ 83. C4, 10
        mov     dword [ebp-0CH], eax                    ; 237C _ 89. 45, F4
        mov     eax, dword [ebp+20H]                    ; 237F _ 8B. 45, 20
        movsx   eax, al                                 ; 2382 _ 0F BE. C0
        sub     esp, 8                                  ; 2385 _ 83. EC, 08
        push    dword [ebp-0CH]                         ; 2388 _ FF. 75, F4
        push    eax                                     ; 238B _ 50
        push    dword [ebp-2CH]                         ; 238C _ FF. 75, D4
        push    dword [ebp-28H]                         ; 238F _ FF. 75, D8
        push    dword [ebp+0CH]                         ; 2392 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 2395 _ FF. 75, 08
        call    showString                              ; 2398 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 239D _ 83. C4, 20
        add     dword [ebp-2CH], 16                     ; 23A0 _ 83. 45, D4, 10
        nop                                             ; 23A4 _ 90
        leave                                           ; 23A5 _ C9
        ret                                             ; 23A6 _ C3
; showMemInfo End of function

messageBox:; Function begin
        push    ebp                                     ; 23A7 _ 55
        mov     ebp, esp                                ; 23A8 _ 89. E5
        sub     esp, 24                                 ; 23AA _ 83. EC, 18
        mov     eax, dword [ebp+10H]                    ; 23AD _ 8B. 45, 10
        imul    eax, dword [ebp+14H]                    ; 23B0 _ 0F AF. 45, 14
        mov     edx, eax                                ; 23B4 _ 89. C2
        mov     eax, dword [memman]                     ; 23B6 _ A1, 00000008(d)
        sub     esp, 8                                  ; 23BB _ 83. EC, 08
        push    edx                                     ; 23BE _ 52
        push    eax                                     ; 23BF _ 50
        call    memman_alloc_4K                         ; 23C0 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 23C5 _ 83. C4, 10
        mov     dword [ebp-10H], eax                    ; 23C8 _ 89. 45, F0
        sub     esp, 12                                 ; 23CB _ 83. EC, 0C
        push    dword [ebp+8H]                          ; 23CE _ FF. 75, 08
        call    sheet_alloc                             ; 23D1 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 23D6 _ 83. C4, 10
        mov     dword [ebp-0CH], eax                    ; 23D9 _ 89. 45, F4
        sub     esp, 12                                 ; 23DC _ 83. EC, 0C
        push    99                                      ; 23DF _ 6A, 63
        push    dword [ebp+14H]                         ; 23E1 _ FF. 75, 14
        push    dword [ebp+10H]                         ; 23E4 _ FF. 75, 10
        push    dword [ebp-10H]                         ; 23E7 _ FF. 75, F0
        push    dword [ebp-0CH]                         ; 23EA _ FF. 75, F4
        call    sheet_setbuf                            ; 23ED _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 23F2 _ 83. C4, 20
        push    1                                       ; 23F5 _ 6A, 01
        push    dword [ebp+0CH]                         ; 23F7 _ FF. 75, 0C
        push    dword [ebp-0CH]                         ; 23FA _ FF. 75, F4
        push    dword [ebp+8H]                          ; 23FD _ FF. 75, 08
        call    make_window8                            ; 2400 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 2405 _ 83. C4, 10
        sub     esp, 8                                  ; 2408 _ 83. EC, 08
        push    7                                       ; 240B _ 6A, 07
        push    16                                      ; 240D _ 6A, 10
        push    150                                     ; 240F _ 68, 00000096
        push    42                                      ; 2414 _ 6A, 2A
        push    10                                      ; 2416 _ 6A, 0A
        push    dword [ebp-0CH]                         ; 2418 _ FF. 75, F4
        call    make_textbox8                           ; 241B _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 2420 _ 83. C4, 20
        push    dword [ebp+1CH]                         ; 2423 _ FF. 75, 1C
        push    dword [ebp+18H]                         ; 2426 _ FF. 75, 18
        push    dword [ebp-0CH]                         ; 2429 _ FF. 75, F4
        push    dword [ebp+8H]                          ; 242C _ FF. 75, 08
        call    sheet_slide                             ; 242F _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 2434 _ 83. C4, 10
        sub     esp, 4                                  ; 2437 _ 83. EC, 04
        push    dword [ebp+20H]                         ; 243A _ FF. 75, 20
        push    dword [ebp-0CH]                         ; 243D _ FF. 75, F4
        push    dword [ebp+8H]                          ; 2440 _ FF. 75, 08
        call    sheet_level_updown                      ; 2443 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 2448 _ 83. C4, 10
        mov     eax, dword [ebp-0CH]                    ; 244B _ 8B. 45, F4
        leave                                           ; 244E _ C9
        ret                                             ; 244F _ C3
; messageBox End of function

messageBoxToTask:; Function begin
        push    ebp                                     ; 2450 _ 55
        mov     ebp, esp                                ; 2451 _ 89. E5
        sub     esp, 24                                 ; 2453 _ 83. EC, 18
        mov     eax, dword [ebp+1CH]                    ; 2456 _ 8B. 45, 1C
        imul    eax, dword [ebp+20H]                    ; 2459 _ 0F AF. 45, 20
        mov     edx, eax                                ; 245D _ 89. C2
        mov     eax, dword [memman]                     ; 245F _ A1, 00000008(d)
        sub     esp, 8                                  ; 2464 _ 83. EC, 08
        push    edx                                     ; 2467 _ 52
        push    eax                                     ; 2468 _ 50
        call    memman_alloc_4K                         ; 2469 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 246E _ 83. C4, 10
        mov     dword [ebp-10H], eax                    ; 2471 _ 89. 45, F0
        sub     esp, 12                                 ; 2474 _ 83. EC, 0C
        push    dword [ebp+8H]                          ; 2477 _ FF. 75, 08
        call    sheet_alloc                             ; 247A _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 247F _ 83. C4, 10
        mov     dword [ebp-0CH], eax                    ; 2482 _ 89. 45, F4
        sub     esp, 12                                 ; 2485 _ 83. EC, 0C
        push    99                                      ; 2488 _ 6A, 63
        push    dword [ebp+20H]                         ; 248A _ FF. 75, 20
        push    dword [ebp+1CH]                         ; 248D _ FF. 75, 1C
        push    dword [ebp-10H]                         ; 2490 _ FF. 75, F0
        push    dword [ebp-0CH]                         ; 2493 _ FF. 75, F4
        call    sheet_setbuf                            ; 2496 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 249B _ 83. C4, 20
        push    0                                       ; 249E _ 6A, 00
        push    dword [ebp+18H]                         ; 24A0 _ FF. 75, 18
        push    dword [ebp-0CH]                         ; 24A3 _ FF. 75, F4
        push    dword [ebp+8H]                          ; 24A6 _ FF. 75, 08
        call    make_window8                            ; 24A9 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 24AE _ 83. C4, 10
        call    task_alloc                              ; 24B1 _ E8, FFFFFFFC(rel)
        mov     dword [ebp+0CH], eax                    ; 24B6 _ 89. 45, 0C
        mov     eax, dword [ebp+0CH]                    ; 24B9 _ 8B. 45, 0C
        mov     dword [eax+74H], 0                      ; 24BC _ C7. 40, 74, 00000000
        mov     eax, dword [ebp+0CH]                    ; 24C3 _ 8B. 45, 0C
        mov     dword [eax+78H], 1073741824             ; 24C6 _ C7. 40, 78, 40000000
        call    get_code32_addr                         ; 24CD _ E8, FFFFFFFC(rel)
        neg     eax                                     ; 24D2 _ F7. D8
        add     eax, task_b_main                        ; 24D4 _ 05, 00000000(d)
        mov     edx, eax                                ; 24D9 _ 89. C2
        mov     eax, dword [ebp+0CH]                    ; 24DB _ 8B. 45, 0C
        mov     dword [eax+34H], edx                    ; 24DE _ 89. 50, 34
        mov     eax, dword [ebp+0CH]                    ; 24E1 _ 8B. 45, 0C
        mov     dword [eax+5CH], 0                      ; 24E4 _ C7. 40, 5C, 00000000
        mov     eax, dword [ebp+0CH]                    ; 24EB _ 8B. 45, 0C
        mov     dword [eax+60H], 8                      ; 24EE _ C7. 40, 60, 00000008
        mov     eax, dword [ebp+0CH]                    ; 24F5 _ 8B. 45, 0C
        mov     dword [eax+64H], 32                     ; 24F8 _ C7. 40, 64, 00000020
        mov     eax, dword [ebp+0CH]                    ; 24FF _ 8B. 45, 0C
        mov     dword [eax+68H], 24                     ; 2502 _ C7. 40, 68, 00000018
        mov     eax, dword [ebp+0CH]                    ; 2509 _ 8B. 45, 0C
        mov     dword [eax+6CH], 0                      ; 250C _ C7. 40, 6C, 00000000
        mov     eax, dword [ebp+0CH]                    ; 2513 _ 8B. 45, 0C
        mov     dword [eax+70H], 16                     ; 2516 _ C7. 40, 70, 00000010
        mov     eax, dword [ebp+0CH]                    ; 251D _ 8B. 45, 0C
        mov     eax, dword [eax+4CH]                    ; 2520 _ 8B. 40, 4C
        lea     edx, [eax-8H]                           ; 2523 _ 8D. 50, F8
        mov     eax, dword [ebp+0CH]                    ; 2526 _ 8B. 45, 0C
        mov     dword [eax+4CH], edx                    ; 2529 _ 89. 50, 4C
        mov     eax, dword [ebp+0CH]                    ; 252C _ 8B. 45, 0C
        mov     eax, dword [eax+4CH]                    ; 252F _ 8B. 40, 4C
        add     eax, 4                                  ; 2532 _ 83. C0, 04
        mov     edx, eax                                ; 2535 _ 89. C2
        mov     eax, dword [ebp-0CH]                    ; 2537 _ 8B. 45, F4
        mov     dword [edx], eax                        ; 253A _ 89. 02
        sub     esp, 4                                  ; 253C _ 83. EC, 04
        push    dword [ebp+14H]                         ; 253F _ FF. 75, 14
        push    dword [ebp+10H]                         ; 2542 _ FF. 75, 10
        push    dword [ebp+0CH]                         ; 2545 _ FF. 75, 0C
        call    task_run                                ; 2548 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 254D _ 83. C4, 10
        push    dword [ebp+28H]                         ; 2550 _ FF. 75, 28
        push    dword [ebp+24H]                         ; 2553 _ FF. 75, 24
        push    dword [ebp-0CH]                         ; 2556 _ FF. 75, F4
        push    dword [ebp+8H]                          ; 2559 _ FF. 75, 08
        call    sheet_slide                             ; 255C _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 2561 _ 83. C4, 10
        sub     esp, 4                                  ; 2564 _ 83. EC, 04
        push    dword [ebp+2CH]                         ; 2567 _ FF. 75, 2C
        push    dword [ebp-0CH]                         ; 256A _ FF. 75, F4
        push    dword [ebp+8H]                          ; 256D _ FF. 75, 08
        call    sheet_level_updown                      ; 2570 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 2575 _ 83. C4, 10
        mov     eax, dword [ebp-0CH]                    ; 2578 _ 8B. 45, F4
        leave                                           ; 257B _ C9
        ret                                             ; 257C _ C3
; messageBoxToTask End of function

make_window8:; Function begin
        push    ebp                                     ; 257D _ 55
        mov     ebp, esp                                ; 257E _ 89. E5
        push    ebx                                     ; 2580 _ 53
        sub     esp, 36                                 ; 2581 _ 83. EC, 24
        mov     eax, dword [ebp+14H]                    ; 2584 _ 8B. 45, 14
        mov     byte [ebp-1CH], al                      ; 2587 _ 88. 45, E4
        mov     eax, dword [ebp+0CH]                    ; 258A _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 258D _ 8B. 40, 04
        mov     dword [ebp-10H], eax                    ; 2590 _ 89. 45, F0
        mov     eax, dword [ebp+0CH]                    ; 2593 _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 2596 _ 8B. 40, 08
        mov     dword [ebp-0CH], eax                    ; 2599 _ 89. 45, F4
        mov     eax, dword [ebp-10H]                    ; 259C _ 8B. 45, F0
        lea     edx, [eax-1H]                           ; 259F _ 8D. 50, FF
        mov     eax, dword [ebp+0CH]                    ; 25A2 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 25A5 _ 8B. 00
        push    0                                       ; 25A7 _ 6A, 00
        push    edx                                     ; 25A9 _ 52
        push    0                                       ; 25AA _ 6A, 00
        push    0                                       ; 25AC _ 6A, 00
        push    8                                       ; 25AE _ 6A, 08
        push    dword [ebp-10H]                         ; 25B0 _ FF. 75, F0
        push    eax                                     ; 25B3 _ 50
        call    boxfill8                                ; 25B4 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 25B9 _ 83. C4, 1C
        mov     eax, dword [ebp-10H]                    ; 25BC _ 8B. 45, F0
        lea     edx, [eax-2H]                           ; 25BF _ 8D. 50, FE
        mov     eax, dword [ebp+0CH]                    ; 25C2 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 25C5 _ 8B. 00
        push    1                                       ; 25C7 _ 6A, 01
        push    edx                                     ; 25C9 _ 52
        push    1                                       ; 25CA _ 6A, 01
        push    1                                       ; 25CC _ 6A, 01
        push    7                                       ; 25CE _ 6A, 07
        push    dword [ebp-10H]                         ; 25D0 _ FF. 75, F0
        push    eax                                     ; 25D3 _ 50
        call    boxfill8                                ; 25D4 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 25D9 _ 83. C4, 1C
        mov     eax, dword [ebp-0CH]                    ; 25DC _ 8B. 45, F4
        lea     edx, [eax-1H]                           ; 25DF _ 8D. 50, FF
        mov     eax, dword [ebp+0CH]                    ; 25E2 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 25E5 _ 8B. 00
        push    edx                                     ; 25E7 _ 52
        push    0                                       ; 25E8 _ 6A, 00
        push    0                                       ; 25EA _ 6A, 00
        push    0                                       ; 25EC _ 6A, 00
        push    8                                       ; 25EE _ 6A, 08
        push    dword [ebp-10H]                         ; 25F0 _ FF. 75, F0
        push    eax                                     ; 25F3 _ 50
        call    boxfill8                                ; 25F4 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 25F9 _ 83. C4, 1C
        mov     eax, dword [ebp-0CH]                    ; 25FC _ 8B. 45, F4
        lea     edx, [eax-1H]                           ; 25FF _ 8D. 50, FF
        mov     eax, dword [ebp+0CH]                    ; 2602 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 2605 _ 8B. 00
        push    edx                                     ; 2607 _ 52
        push    1                                       ; 2608 _ 6A, 01
        push    1                                       ; 260A _ 6A, 01
        push    1                                       ; 260C _ 6A, 01
        push    7                                       ; 260E _ 6A, 07
        push    dword [ebp-10H]                         ; 2610 _ FF. 75, F0
        push    eax                                     ; 2613 _ 50
        call    boxfill8                                ; 2614 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 2619 _ 83. C4, 1C
        mov     eax, dword [ebp-0CH]                    ; 261C _ 8B. 45, F4
        lea     ebx, [eax-2H]                           ; 261F _ 8D. 58, FE
        mov     eax, dword [ebp-10H]                    ; 2622 _ 8B. 45, F0
        lea     ecx, [eax-2H]                           ; 2625 _ 8D. 48, FE
        mov     eax, dword [ebp-10H]                    ; 2628 _ 8B. 45, F0
        lea     edx, [eax-2H]                           ; 262B _ 8D. 50, FE
        mov     eax, dword [ebp+0CH]                    ; 262E _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 2631 _ 8B. 00
        push    ebx                                     ; 2633 _ 53
        push    ecx                                     ; 2634 _ 51
        push    1                                       ; 2635 _ 6A, 01
        push    edx                                     ; 2637 _ 52
        push    15                                      ; 2638 _ 6A, 0F
        push    dword [ebp-10H]                         ; 263A _ FF. 75, F0
        push    eax                                     ; 263D _ 50
        call    boxfill8                                ; 263E _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 2643 _ 83. C4, 1C
        mov     eax, dword [ebp-0CH]                    ; 2646 _ 8B. 45, F4
        lea     ebx, [eax-1H]                           ; 2649 _ 8D. 58, FF
        mov     eax, dword [ebp-10H]                    ; 264C _ 8B. 45, F0
        lea     ecx, [eax-1H]                           ; 264F _ 8D. 48, FF
        mov     eax, dword [ebp-10H]                    ; 2652 _ 8B. 45, F0
        lea     edx, [eax-1H]                           ; 2655 _ 8D. 50, FF
        mov     eax, dword [ebp+0CH]                    ; 2658 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 265B _ 8B. 00
        push    ebx                                     ; 265D _ 53
        push    ecx                                     ; 265E _ 51
        push    0                                       ; 265F _ 6A, 00
        push    edx                                     ; 2661 _ 52
        push    0                                       ; 2662 _ 6A, 00
        push    dword [ebp-10H]                         ; 2664 _ FF. 75, F0
        push    eax                                     ; 2667 _ 50
        call    boxfill8                                ; 2668 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 266D _ 83. C4, 1C
        mov     eax, dword [ebp-0CH]                    ; 2670 _ 8B. 45, F4
        lea     ecx, [eax-3H]                           ; 2673 _ 8D. 48, FD
        mov     eax, dword [ebp-10H]                    ; 2676 _ 8B. 45, F0
        lea     edx, [eax-3H]                           ; 2679 _ 8D. 50, FD
        mov     eax, dword [ebp+0CH]                    ; 267C _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 267F _ 8B. 00
        push    ecx                                     ; 2681 _ 51
        push    edx                                     ; 2682 _ 52
        push    2                                       ; 2683 _ 6A, 02
        push    2                                       ; 2685 _ 6A, 02
        push    8                                       ; 2687 _ 6A, 08
        push    dword [ebp-10H]                         ; 2689 _ FF. 75, F0
        push    eax                                     ; 268C _ 50
        call    boxfill8                                ; 268D _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 2692 _ 83. C4, 1C
        mov     eax, dword [ebp-10H]                    ; 2695 _ 8B. 45, F0
        lea     edx, [eax-4H]                           ; 2698 _ 8D. 50, FC
        mov     eax, dword [ebp+0CH]                    ; 269B _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 269E _ 8B. 00
        push    20                                      ; 26A0 _ 6A, 14
        push    edx                                     ; 26A2 _ 52
        push    3                                       ; 26A3 _ 6A, 03
        push    3                                       ; 26A5 _ 6A, 03
        push    12                                      ; 26A7 _ 6A, 0C
        push    dword [ebp-10H]                         ; 26A9 _ FF. 75, F0
        push    eax                                     ; 26AC _ 50
        call    boxfill8                                ; 26AD _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 26B2 _ 83. C4, 1C
        mov     eax, dword [ebp-0CH]                    ; 26B5 _ 8B. 45, F4
        lea     ebx, [eax-2H]                           ; 26B8 _ 8D. 58, FE
        mov     eax, dword [ebp-10H]                    ; 26BB _ 8B. 45, F0
        lea     ecx, [eax-2H]                           ; 26BE _ 8D. 48, FE
        mov     eax, dword [ebp-0CH]                    ; 26C1 _ 8B. 45, F4
        lea     edx, [eax-2H]                           ; 26C4 _ 8D. 50, FE
        mov     eax, dword [ebp+0CH]                    ; 26C7 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 26CA _ 8B. 00
        push    ebx                                     ; 26CC _ 53
        push    ecx                                     ; 26CD _ 51
        push    edx                                     ; 26CE _ 52
        push    1                                       ; 26CF _ 6A, 01
        push    15                                      ; 26D1 _ 6A, 0F
        push    dword [ebp-10H]                         ; 26D3 _ FF. 75, F0
        push    eax                                     ; 26D6 _ 50
        call    boxfill8                                ; 26D7 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 26DC _ 83. C4, 1C
        mov     eax, dword [ebp-0CH]                    ; 26DF _ 8B. 45, F4
        lea     ebx, [eax-1H]                           ; 26E2 _ 8D. 58, FF
        mov     eax, dword [ebp-10H]                    ; 26E5 _ 8B. 45, F0
        lea     ecx, [eax-1H]                           ; 26E8 _ 8D. 48, FF
        mov     eax, dword [ebp-0CH]                    ; 26EB _ 8B. 45, F4
        lea     edx, [eax-1H]                           ; 26EE _ 8D. 50, FF
        mov     eax, dword [ebp+0CH]                    ; 26F1 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 26F4 _ 8B. 00
        push    ebx                                     ; 26F6 _ 53
        push    ecx                                     ; 26F7 _ 51
        push    edx                                     ; 26F8 _ 52
        push    0                                       ; 26F9 _ 6A, 00
        push    0                                       ; 26FB _ 6A, 00
        push    dword [ebp-10H]                         ; 26FD _ FF. 75, F0
        push    eax                                     ; 2700 _ 50
        call    boxfill8                                ; 2701 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 2706 _ 83. C4, 1C
        movsx   eax, byte [ebp-1CH]                     ; 2709 _ 0F BE. 45, E4
        push    eax                                     ; 270D _ 50
        push    dword [ebp+10H]                         ; 270E _ FF. 75, 10
        push    dword [ebp+0CH]                         ; 2711 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 2714 _ FF. 75, 08
        call    make_wtitle8                            ; 2717 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 271C _ 83. C4, 10
        nop                                             ; 271F _ 90
        mov     ebx, dword [ebp-4H]                     ; 2720 _ 8B. 5D, FC
        leave                                           ; 2723 _ C9
        ret                                             ; 2724 _ C3
; make_window8 End of function

make_wtitle8:; Function begin
        push    ebp                                     ; 2725 _ 55
        mov     ebp, esp                                ; 2726 _ 89. E5
        push    ebx                                     ; 2728 _ 53
        sub     esp, 36                                 ; 2729 _ 83. EC, 24
        mov     eax, dword [ebp+14H]                    ; 272C _ 8B. 45, 14
        mov     byte [ebp-1CH], al                      ; 272F _ 88. 45, E4
        mov     eax, dword [ebp+0CH]                    ; 2732 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 2735 _ 8B. 40, 04
        mov     dword [ebp-0CH], eax                    ; 2738 _ 89. 45, F4
        cmp     byte [ebp-1CH], 0                       ; 273B _ 80. 7D, E4, 00
        jz      ?_110                                   ; 273F _ 74, 0A
        mov     byte [ebp-16H], 7                       ; 2741 _ C6. 45, EA, 07
        mov     byte [ebp-15H], 12                      ; 2745 _ C6. 45, EB, 0C
        jmp     ?_111                                   ; 2749 _ EB, 0E

?_110:  cmp     byte [ebp-1CH], 0                       ; 274B _ 80. 7D, E4, 00
        jnz     ?_111                                   ; 274F _ 75, 08
        mov     byte [ebp-16H], 8                       ; 2751 _ C6. 45, EA, 08
        mov     byte [ebp-15H], 15                      ; 2755 _ C6. 45, EB, 0F
?_111:  mov     eax, dword [ebp-0CH]                    ; 2759 _ 8B. 45, F4
        lea     ecx, [eax-4H]                           ; 275C _ 8D. 48, FC
        movzx   eax, byte [ebp-15H]                     ; 275F _ 0F B6. 45, EB
        movzx   edx, al                                 ; 2763 _ 0F B6. D0
        mov     eax, dword [ebp+0CH]                    ; 2766 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 2769 _ 8B. 00
        push    20                                      ; 276B _ 6A, 14
        push    ecx                                     ; 276D _ 51
        push    3                                       ; 276E _ 6A, 03
        push    3                                       ; 2770 _ 6A, 03
        push    edx                                     ; 2772 _ 52
        push    dword [ebp-0CH]                         ; 2773 _ FF. 75, F4
        push    eax                                     ; 2776 _ 50
        call    boxfill8                                ; 2777 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 277C _ 83. C4, 1C
        movsx   eax, byte [ebp-16H]                     ; 277F _ 0F BE. 45, EA
        sub     esp, 8                                  ; 2783 _ 83. EC, 08
        push    dword [ebp+10H]                         ; 2786 _ FF. 75, 10
        push    eax                                     ; 2789 _ 50
        push    4                                       ; 278A _ 6A, 04
        push    8                                       ; 278C _ 6A, 08
        push    dword [ebp+0CH]                         ; 278E _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 2791 _ FF. 75, 08
        call    showString                              ; 2794 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 2799 _ 83. C4, 20
        mov     dword [ebp-14H], 0                      ; 279C _ C7. 45, EC, 00000000
        jmp     ?_118                                   ; 27A3 _ EB, 75

?_112:  mov     dword [ebp-10H], 0                      ; 27A5 _ C7. 45, F0, 00000000
        jmp     ?_117                                   ; 27AC _ EB, 62

?_113:  mov     eax, dword [ebp-14H]                    ; 27AE _ 8B. 45, EC
        shl     eax, 4                                  ; 27B1 _ C1. E0, 04
        mov     edx, eax                                ; 27B4 _ 89. C2
        mov     eax, dword [ebp-10H]                    ; 27B6 _ 8B. 45, F0
        add     eax, edx                                ; 27B9 _ 01. D0
        add     eax, closebtn.2611                      ; 27BB _ 05, 00000260(d)
        movzx   eax, byte [eax]                         ; 27C0 _ 0F B6. 00
        mov     byte [ebp-17H], al                      ; 27C3 _ 88. 45, E9
        cmp     byte [ebp-17H], 64                      ; 27C6 _ 80. 7D, E9, 40
        jnz     ?_114                                   ; 27CA _ 75, 06
        mov     byte [ebp-17H], 0                       ; 27CC _ C6. 45, E9, 00
        jmp     ?_116                                   ; 27D0 _ EB, 16

?_114:  cmp     byte [ebp-17H], 36                      ; 27D2 _ 80. 7D, E9, 24
        jnz     ?_115                                   ; 27D6 _ 75, 06
        mov     byte [ebp-17H], 15                      ; 27D8 _ C6. 45, E9, 0F
        jmp     ?_116                                   ; 27DC _ EB, 0A

?_115:  cmp     byte [ebp-17H], 81                      ; 27DE _ 80. 7D, E9, 51
        jnz     ?_116                                   ; 27E2 _ 75, 04
        mov     byte [ebp-17H], 8                       ; 27E4 _ C6. 45, E9, 08
?_116:  mov     eax, dword [ebp+0CH]                    ; 27E8 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 27EB _ 8B. 00
        mov     edx, dword [ebp-14H]                    ; 27ED _ 8B. 55, EC
        add     edx, 5                                  ; 27F0 _ 83. C2, 05
        imul    edx, dword [ebp-0CH]                    ; 27F3 _ 0F AF. 55, F4
        mov     ecx, dword [ebp-0CH]                    ; 27F7 _ 8B. 4D, F4
        lea     ebx, [ecx-15H]                          ; 27FA _ 8D. 59, EB
        mov     ecx, dword [ebp-10H]                    ; 27FD _ 8B. 4D, F0
        add     ecx, ebx                                ; 2800 _ 01. D9
        add     edx, ecx                                ; 2802 _ 01. CA
        add     edx, eax                                ; 2804 _ 01. C2
        movzx   eax, byte [ebp-17H]                     ; 2806 _ 0F B6. 45, E9
        mov     byte [edx], al                          ; 280A _ 88. 02
        add     dword [ebp-10H], 1                      ; 280C _ 83. 45, F0, 01
?_117:  cmp     dword [ebp-10H], 15                     ; 2810 _ 83. 7D, F0, 0F
        jle     ?_113                                   ; 2814 _ 7E, 98
        add     dword [ebp-14H], 1                      ; 2816 _ 83. 45, EC, 01
?_118:  cmp     dword [ebp-14H], 13                     ; 281A _ 83. 7D, EC, 0D
        jle     ?_112                                   ; 281E _ 7E, 85
        nop                                             ; 2820 _ 90
        mov     ebx, dword [ebp-4H]                     ; 2821 _ 8B. 5D, FC
        leave                                           ; 2824 _ C9
        ret                                             ; 2825 _ C3
; make_wtitle8 End of function

memman_init:; Function begin
        push    ebp                                     ; 2826 _ 55
        mov     ebp, esp                                ; 2827 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 2829 _ 8B. 45, 08
        mov     dword [eax], 0                          ; 282C _ C7. 00, 00000000
        mov     eax, dword [ebp+8H]                     ; 2832 _ 8B. 45, 08
        mov     dword [eax+4H], 0                       ; 2835 _ C7. 40, 04, 00000000
        mov     eax, dword [ebp+8H]                     ; 283C _ 8B. 45, 08
        mov     dword [eax+8H], 0                       ; 283F _ C7. 40, 08, 00000000
        mov     eax, dword [ebp+8H]                     ; 2846 _ 8B. 45, 08
        mov     dword [eax+0CH], 0                      ; 2849 _ C7. 40, 0C, 00000000
        nop                                             ; 2850 _ 90
        pop     ebp                                     ; 2851 _ 5D
        ret                                             ; 2852 _ C3
; memman_init End of function

memman_total:; Function begin
        push    ebp                                     ; 2853 _ 55
        mov     ebp, esp                                ; 2854 _ 89. E5
        sub     esp, 16                                 ; 2856 _ 83. EC, 10
        mov     dword [ebp-8H], 0                       ; 2859 _ C7. 45, F8, 00000000
        mov     dword [ebp-4H], 0                       ; 2860 _ C7. 45, FC, 00000000
        jmp     ?_120                                   ; 2867 _ EB, 14

?_119:  mov     eax, dword [ebp+8H]                     ; 2869 _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 286C _ 8B. 55, FC
        add     edx, 2                                  ; 286F _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 2872 _ 8B. 44 D0, 04
        add     dword [ebp-8H], eax                     ; 2876 _ 01. 45, F8
        add     dword [ebp-4H], 1                       ; 2879 _ 83. 45, FC, 01
?_120:  mov     eax, dword [ebp+8H]                     ; 287D _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 2880 _ 8B. 00
        cmp     dword [ebp-4H], eax                     ; 2882 _ 39. 45, FC
        jl      ?_119                                   ; 2885 _ 7C, E2
        mov     eax, dword [ebp-8H]                     ; 2887 _ 8B. 45, F8
        leave                                           ; 288A _ C9
        ret                                             ; 288B _ C3
; memman_total End of function

memman_alloc_FF:; Function begin
        push    ebp                                     ; 288C _ 55
        mov     ebp, esp                                ; 288D _ 89. E5
        sub     esp, 16                                 ; 288F _ 83. EC, 10
        mov     dword [ebp-8H], 0                       ; 2892 _ C7. 45, F8, 00000000
        jmp     ?_124                                   ; 2899 _ E9, 00000085

?_121:  mov     eax, dword [ebp+8H]                     ; 289E _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 28A1 _ 8B. 55, F8
        add     edx, 2                                  ; 28A4 _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 28A7 _ 8B. 44 D0, 04
        cmp     dword [ebp+0CH], eax                    ; 28AB _ 39. 45, 0C
        ja      ?_123                                   ; 28AE _ 77, 6F
        mov     eax, dword [ebp+8H]                     ; 28B0 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 28B3 _ 8B. 55, F8
        add     edx, 2                                  ; 28B6 _ 83. C2, 02
        mov     eax, dword [eax+edx*8]                  ; 28B9 _ 8B. 04 D0
        mov     dword [ebp-4H], eax                     ; 28BC _ 89. 45, FC
        mov     eax, dword [ebp+8H]                     ; 28BF _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 28C2 _ 8B. 55, F8
        add     edx, 2                                  ; 28C5 _ 83. C2, 02
        mov     edx, dword [eax+edx*8]                  ; 28C8 _ 8B. 14 D0
        mov     eax, dword [ebp+0CH]                    ; 28CB _ 8B. 45, 0C
        lea     ecx, [edx+eax]                          ; 28CE _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 28D1 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 28D4 _ 8B. 55, F8
        add     edx, 2                                  ; 28D7 _ 83. C2, 02
        mov     dword [eax+edx*8], ecx                  ; 28DA _ 89. 0C D0
        mov     eax, dword [ebp+8H]                     ; 28DD _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 28E0 _ 8B. 55, F8
        add     edx, 2                                  ; 28E3 _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 28E6 _ 8B. 44 D0, 04
        sub     eax, dword [ebp+0CH]                    ; 28EA _ 2B. 45, 0C
        mov     edx, eax                                ; 28ED _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 28EF _ 8B. 45, 08
        mov     ecx, dword [ebp-8H]                     ; 28F2 _ 8B. 4D, F8
        add     ecx, 2                                  ; 28F5 _ 83. C1, 02
        mov     dword [eax+ecx*8+4H], edx               ; 28F8 _ 89. 54 C8, 04
        mov     eax, dword [ebp+8H]                     ; 28FC _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 28FF _ 8B. 55, F8
        add     edx, 2                                  ; 2902 _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 2905 _ 8B. 44 D0, 04
        test    eax, eax                                ; 2909 _ 85. C0
        jnz     ?_122                                   ; 290B _ 75, 0D
        mov     eax, dword [ebp+8H]                     ; 290D _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 2910 _ 8B. 00
        lea     edx, [eax-1H]                           ; 2912 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 2915 _ 8B. 45, 08
        mov     dword [eax], edx                        ; 2918 _ 89. 10
?_122:  mov     eax, dword [ebp-4H]                     ; 291A _ 8B. 45, FC
        jmp     ?_125                                   ; 291D _ EB, 17

?_123:  add     dword [ebp-8H], 1                       ; 291F _ 83. 45, F8, 01
?_124:  mov     eax, dword [ebp+8H]                     ; 2923 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 2926 _ 8B. 00
        cmp     dword [ebp-8H], eax                     ; 2928 _ 39. 45, F8
        jl      ?_121                                   ; 292B _ 0F 8C, FFFFFF6D
        mov     eax, 0                                  ; 2931 _ B8, 00000000
?_125:  leave                                           ; 2936 _ C9
        ret                                             ; 2937 _ C3
; memman_alloc_FF End of function

memman_alloc_4K:; Function begin
        push    ebp                                     ; 2938 _ 55
        mov     ebp, esp                                ; 2939 _ 89. E5
        sub     esp, 16                                 ; 293B _ 83. EC, 10
        mov     eax, dword [ebp+0CH]                    ; 293E _ 8B. 45, 0C
        add     eax, 4095                               ; 2941 _ 05, 00000FFF
        and     eax, 0FFFFF000H                         ; 2946 _ 25, FFFFF000
        mov     dword [ebp+0CH], eax                    ; 294B _ 89. 45, 0C
        push    dword [ebp+0CH]                         ; 294E _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 2951 _ FF. 75, 08
        call    memman_alloc_FF                         ; 2954 _ E8, FFFFFFFC(rel)
        add     esp, 8                                  ; 2959 _ 83. C4, 08
        mov     dword [ebp-4H], eax                     ; 295C _ 89. 45, FC
        mov     eax, dword [ebp-4H]                     ; 295F _ 8B. 45, FC
        leave                                           ; 2962 _ C9
        ret                                             ; 2963 _ C3
; memman_alloc_4K End of function

memman_free:; Function begin
        push    ebp                                     ; 2964 _ 55
        mov     ebp, esp                                ; 2965 _ 89. E5
        push    ebx                                     ; 2967 _ 53
        sub     esp, 16                                 ; 2968 _ 83. EC, 10
        mov     dword [ebp-0CH], 0                      ; 296B _ C7. 45, F4, 00000000
        jmp     ?_127                                   ; 2972 _ EB, 15

?_126:  mov     eax, dword [ebp+8H]                     ; 2974 _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 2977 _ 8B. 55, F4
        add     edx, 2                                  ; 297A _ 83. C2, 02
        mov     eax, dword [eax+edx*8]                  ; 297D _ 8B. 04 D0
        cmp     dword [ebp+0CH], eax                    ; 2980 _ 39. 45, 0C
        jc      ?_128                                   ; 2983 _ 72, 10
        add     dword [ebp-0CH], 1                      ; 2985 _ 83. 45, F4, 01
?_127:  mov     eax, dword [ebp+8H]                     ; 2989 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 298C _ 8B. 00
        cmp     dword [ebp-0CH], eax                    ; 298E _ 39. 45, F4
        jl      ?_126                                   ; 2991 _ 7C, E1
        jmp     ?_129                                   ; 2993 _ EB, 01

?_128:  nop                                             ; 2995 _ 90
?_129:  cmp     dword [ebp-0CH], 0                      ; 2996 _ 83. 7D, F4, 00
        jle     ?_131                                   ; 299A _ 0F 8E, 000000BA
        mov     eax, dword [ebp-0CH]                    ; 29A0 _ 8B. 45, F4
        lea     edx, [eax-1H]                           ; 29A3 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 29A6 _ 8B. 45, 08
        add     edx, 2                                  ; 29A9 _ 83. C2, 02
        mov     edx, dword [eax+edx*8]                  ; 29AC _ 8B. 14 D0
        mov     eax, dword [ebp-0CH]                    ; 29AF _ 8B. 45, F4
        lea     ecx, [eax-1H]                           ; 29B2 _ 8D. 48, FF
        mov     eax, dword [ebp+8H]                     ; 29B5 _ 8B. 45, 08
        add     ecx, 2                                  ; 29B8 _ 83. C1, 02
        mov     eax, dword [eax+ecx*8+4H]               ; 29BB _ 8B. 44 C8, 04
        add     eax, edx                                ; 29BF _ 01. D0
        cmp     dword [ebp+0CH], eax                    ; 29C1 _ 39. 45, 0C
        jne     ?_131                                   ; 29C4 _ 0F 85, 00000090
        mov     eax, dword [ebp-0CH]                    ; 29CA _ 8B. 45, F4
        lea     edx, [eax-1H]                           ; 29CD _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 29D0 _ 8B. 45, 08
        add     edx, 2                                  ; 29D3 _ 83. C2, 02
        mov     edx, dword [eax+edx*8+4H]               ; 29D6 _ 8B. 54 D0, 04
        mov     eax, dword [ebp-0CH]                    ; 29DA _ 8B. 45, F4
        lea     ebx, [eax-1H]                           ; 29DD _ 8D. 58, FF
        mov     eax, dword [ebp+10H]                    ; 29E0 _ 8B. 45, 10
        lea     ecx, [edx+eax]                          ; 29E3 _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 29E6 _ 8B. 45, 08
        lea     edx, [ebx+2H]                           ; 29E9 _ 8D. 53, 02
        mov     dword [eax+edx*8+4H], ecx               ; 29EC _ 89. 4C D0, 04
        mov     eax, dword [ebp+8H]                     ; 29F0 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 29F3 _ 8B. 00
        cmp     dword [ebp-0CH], eax                    ; 29F5 _ 39. 45, F4
        jge     ?_130                                   ; 29F8 _ 7D, 56
        mov     edx, dword [ebp+0CH]                    ; 29FA _ 8B. 55, 0C
        mov     eax, dword [ebp+10H]                    ; 29FD _ 8B. 45, 10
        lea     ecx, [edx+eax]                          ; 2A00 _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 2A03 _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 2A06 _ 8B. 55, F4
        add     edx, 2                                  ; 2A09 _ 83. C2, 02
        mov     eax, dword [eax+edx*8]                  ; 2A0C _ 8B. 04 D0
        cmp     ecx, eax                                ; 2A0F _ 39. C1
        jnz     ?_130                                   ; 2A11 _ 75, 3D
        mov     eax, dword [ebp-0CH]                    ; 2A13 _ 8B. 45, F4
        lea     edx, [eax-1H]                           ; 2A16 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 2A19 _ 8B. 45, 08
        add     edx, 2                                  ; 2A1C _ 83. C2, 02
        mov     edx, dword [eax+edx*8+4H]               ; 2A1F _ 8B. 54 D0, 04
        mov     eax, dword [ebp+8H]                     ; 2A23 _ 8B. 45, 08
        mov     ecx, dword [ebp-0CH]                    ; 2A26 _ 8B. 4D, F4
        add     ecx, 2                                  ; 2A29 _ 83. C1, 02
        mov     eax, dword [eax+ecx*8+4H]               ; 2A2C _ 8B. 44 C8, 04
        mov     ecx, dword [ebp-0CH]                    ; 2A30 _ 8B. 4D, F4
        lea     ebx, [ecx-1H]                           ; 2A33 _ 8D. 59, FF
        lea     ecx, [edx+eax]                          ; 2A36 _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 2A39 _ 8B. 45, 08
        lea     edx, [ebx+2H]                           ; 2A3C _ 8D. 53, 02
        mov     dword [eax+edx*8+4H], ecx               ; 2A3F _ 89. 4C D0, 04
        mov     eax, dword [ebp+8H]                     ; 2A43 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 2A46 _ 8B. 00
        lea     edx, [eax-1H]                           ; 2A48 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 2A4B _ 8B. 45, 08
        mov     dword [eax], edx                        ; 2A4E _ 89. 10
?_130:  mov     eax, 0                                  ; 2A50 _ B8, 00000000
        jmp     ?_137                                   ; 2A55 _ E9, 0000011C

?_131:  mov     eax, dword [ebp+8H]                     ; 2A5A _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 2A5D _ 8B. 00
        cmp     dword [ebp-0CH], eax                    ; 2A5F _ 39. 45, F4
        jge     ?_132                                   ; 2A62 _ 7D, 52
        mov     edx, dword [ebp+0CH]                    ; 2A64 _ 8B. 55, 0C
        mov     eax, dword [ebp+10H]                    ; 2A67 _ 8B. 45, 10
        lea     ecx, [edx+eax]                          ; 2A6A _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 2A6D _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 2A70 _ 8B. 55, F4
        add     edx, 2                                  ; 2A73 _ 83. C2, 02
        mov     eax, dword [eax+edx*8]                  ; 2A76 _ 8B. 04 D0
        cmp     ecx, eax                                ; 2A79 _ 39. C1
        jnz     ?_132                                   ; 2A7B _ 75, 39
        mov     eax, dword [ebp+8H]                     ; 2A7D _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 2A80 _ 8B. 55, F4
        lea     ecx, [edx+2H]                           ; 2A83 _ 8D. 4A, 02
        mov     edx, dword [ebp+0CH]                    ; 2A86 _ 8B. 55, 0C
        mov     dword [eax+ecx*8], edx                  ; 2A89 _ 89. 14 C8
        mov     eax, dword [ebp+8H]                     ; 2A8C _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 2A8F _ 8B. 55, F4
        add     edx, 2                                  ; 2A92 _ 83. C2, 02
        mov     edx, dword [eax+edx*8+4H]               ; 2A95 _ 8B. 54 D0, 04
        mov     eax, dword [ebp+10H]                    ; 2A99 _ 8B. 45, 10
        lea     ecx, [edx+eax]                          ; 2A9C _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 2A9F _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 2AA2 _ 8B. 55, F4
        add     edx, 2                                  ; 2AA5 _ 83. C2, 02
        mov     dword [eax+edx*8+4H], ecx               ; 2AA8 _ 89. 4C D0, 04
        mov     eax, 0                                  ; 2AAC _ B8, 00000000
        jmp     ?_137                                   ; 2AB1 _ E9, 000000C0

?_132:  mov     eax, dword [ebp+8H]                     ; 2AB6 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 2AB9 _ 8B. 00
        cmp     eax, 4095                               ; 2ABB _ 3D, 00000FFF
        jg      ?_136                                   ; 2AC0 _ 0F 8F, 00000087
        mov     eax, dword [ebp+8H]                     ; 2AC6 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 2AC9 _ 8B. 00
        mov     dword [ebp-8H], eax                     ; 2ACB _ 89. 45, F8
        jmp     ?_134                                   ; 2ACE _ EB, 28

?_133:  mov     eax, dword [ebp-8H]                     ; 2AD0 _ 8B. 45, F8
        lea     edx, [eax-1H]                           ; 2AD3 _ 8D. 50, FF
        mov     ecx, dword [ebp+8H]                     ; 2AD6 _ 8B. 4D, 08
        mov     eax, dword [ebp-8H]                     ; 2AD9 _ 8B. 45, F8
        lea     ebx, [eax+2H]                           ; 2ADC _ 8D. 58, 02
        mov     eax, dword [ebp+8H]                     ; 2ADF _ 8B. 45, 08
        add     edx, 2                                  ; 2AE2 _ 83. C2, 02
        lea     edx, [eax+edx*8]                        ; 2AE5 _ 8D. 14 D0
        mov     eax, dword [edx]                        ; 2AE8 _ 8B. 02
        mov     edx, dword [edx+4H]                     ; 2AEA _ 8B. 52, 04
        mov     dword [ecx+ebx*8], eax                  ; 2AED _ 89. 04 D9
        mov     dword [ecx+ebx*8+4H], edx               ; 2AF0 _ 89. 54 D9, 04
        sub     dword [ebp-8H], 1                       ; 2AF4 _ 83. 6D, F8, 01
?_134:  mov     eax, dword [ebp-8H]                     ; 2AF8 _ 8B. 45, F8
        cmp     eax, dword [ebp-0CH]                    ; 2AFB _ 3B. 45, F4
        jg      ?_133                                   ; 2AFE _ 7F, D0
        mov     eax, dword [ebp+8H]                     ; 2B00 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 2B03 _ 8B. 00
        lea     edx, [eax+1H]                           ; 2B05 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 2B08 _ 8B. 45, 08
        mov     dword [eax], edx                        ; 2B0B _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 2B0D _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 2B10 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 2B13 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 2B16 _ 8B. 00
        cmp     edx, eax                                ; 2B18 _ 39. C2
        jge     ?_135                                   ; 2B1A _ 7D, 0B
        mov     eax, dword [ebp+8H]                     ; 2B1C _ 8B. 45, 08
        mov     edx, dword [eax]                        ; 2B1F _ 8B. 10
        mov     eax, dword [ebp+8H]                     ; 2B21 _ 8B. 45, 08
        mov     dword [eax+4H], edx                     ; 2B24 _ 89. 50, 04
?_135:  mov     eax, dword [ebp+8H]                     ; 2B27 _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 2B2A _ 8B. 55, F4
        lea     ecx, [edx+2H]                           ; 2B2D _ 8D. 4A, 02
        mov     edx, dword [ebp+0CH]                    ; 2B30 _ 8B. 55, 0C
        mov     dword [eax+ecx*8], edx                  ; 2B33 _ 89. 14 C8
        mov     eax, dword [ebp+8H]                     ; 2B36 _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 2B39 _ 8B. 55, F4
        lea     ecx, [edx+2H]                           ; 2B3C _ 8D. 4A, 02
        mov     edx, dword [ebp+10H]                    ; 2B3F _ 8B. 55, 10
        mov     dword [eax+ecx*8+4H], edx               ; 2B42 _ 89. 54 C8, 04
        mov     eax, 0                                  ; 2B46 _ B8, 00000000
        jmp     ?_137                                   ; 2B4B _ EB, 29

?_136:  mov     eax, dword [ebp+8H]                     ; 2B4D _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 2B50 _ 8B. 40, 0C
        lea     edx, [eax+1H]                           ; 2B53 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 2B56 _ 8B. 45, 08
        mov     dword [eax+0CH], edx                    ; 2B59 _ 89. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 2B5C _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 2B5F _ 8B. 40, 08
        mov     edx, eax                                ; 2B62 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 2B64 _ 8B. 45, 10
        add     eax, edx                                ; 2B67 _ 01. D0
        mov     edx, eax                                ; 2B69 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 2B6B _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 2B6E _ 89. 50, 08
        mov     eax, 4294967295                         ; 2B71 _ B8, FFFFFFFF
?_137:  add     esp, 16                                 ; 2B76 _ 83. C4, 10
        pop     ebx                                     ; 2B79 _ 5B
        pop     ebp                                     ; 2B7A _ 5D
        ret                                             ; 2B7B _ C3
; memman_free End of function

memman_free_4K:; Function begin
        push    ebp                                     ; 2B7C _ 55
        mov     ebp, esp                                ; 2B7D _ 89. E5
        sub     esp, 16                                 ; 2B7F _ 83. EC, 10
        mov     eax, dword [ebp+10H]                    ; 2B82 _ 8B. 45, 10
        add     eax, 4095                               ; 2B85 _ 05, 00000FFF
        and     eax, 0FFFFF000H                         ; 2B8A _ 25, FFFFF000
        mov     dword [ebp+10H], eax                    ; 2B8F _ 89. 45, 10
        push    dword [ebp+10H]                         ; 2B92 _ FF. 75, 10
        push    dword [ebp+0CH]                         ; 2B95 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 2B98 _ FF. 75, 08
        call    memman_free                             ; 2B9B _ E8, FFFFFFFC(rel)
        add     esp, 12                                 ; 2BA0 _ 83. C4, 0C
        mov     dword [ebp-4H], eax                     ; 2BA3 _ 89. 45, FC
        mov     eax, dword [ebp-4H]                     ; 2BA6 _ 8B. 45, FC
        leave                                           ; 2BA9 _ C9
        ret                                             ; 2BAA _ C3
; memman_free_4K End of function

shtctl_init:; Function begin
        push    ebp                                     ; 2BAB _ 55
        mov     ebp, esp                                ; 2BAC _ 89. E5
        sub     esp, 24                                 ; 2BAE _ 83. EC, 18
        sub     esp, 8                                  ; 2BB1 _ 83. EC, 08
        push    9232                                    ; 2BB4 _ 68, 00002410
        push    dword [ebp+8H]                          ; 2BB9 _ FF. 75, 08
        call    memman_alloc_4K                         ; 2BBC _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 2BC1 _ 83. C4, 10
        mov     dword [ebp-0CH], eax                    ; 2BC4 _ 89. 45, F4
        cmp     dword [ebp-0CH], 0                      ; 2BC7 _ 83. 7D, F4, 00
        jnz     ?_138                                   ; 2BCB _ 75, 0A
        mov     eax, 0                                  ; 2BCD _ B8, 00000000
        jmp     ?_142                                   ; 2BD2 _ E9, 0000009A

?_138:  mov     eax, dword [ebp+10H]                    ; 2BD7 _ 8B. 45, 10
        imul    eax, dword [ebp+14H]                    ; 2BDA _ 0F AF. 45, 14
        sub     esp, 8                                  ; 2BDE _ 83. EC, 08
        push    eax                                     ; 2BE1 _ 50
        push    dword [ebp+8H]                          ; 2BE2 _ FF. 75, 08
        call    memman_alloc_4K                         ; 2BE5 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 2BEA _ 83. C4, 10
        mov     edx, eax                                ; 2BED _ 89. C2
        mov     eax, dword [ebp-0CH]                    ; 2BEF _ 8B. 45, F4
        mov     dword [eax+4H], edx                     ; 2BF2 _ 89. 50, 04
        mov     eax, dword [ebp-0CH]                    ; 2BF5 _ 8B. 45, F4
        mov     eax, dword [eax+4H]                     ; 2BF8 _ 8B. 40, 04
        test    eax, eax                                ; 2BFB _ 85. C0
        jnz     ?_139                                   ; 2BFD _ 75, 1E
        mov     eax, dword [ebp-0CH]                    ; 2BFF _ 8B. 45, F4
        sub     esp, 4                                  ; 2C02 _ 83. EC, 04
        push    9232                                    ; 2C05 _ 68, 00002410
        push    eax                                     ; 2C0A _ 50
        push    dword [ebp+8H]                          ; 2C0B _ FF. 75, 08
        call    memman_free_4K                          ; 2C0E _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 2C13 _ 83. C4, 10
        mov     eax, 0                                  ; 2C16 _ B8, 00000000
        jmp     ?_142                                   ; 2C1B _ EB, 54

?_139:  mov     eax, dword [ebp-0CH]                    ; 2C1D _ 8B. 45, F4
        mov     edx, dword [ebp+0CH]                    ; 2C20 _ 8B. 55, 0C
        mov     dword [eax], edx                        ; 2C23 _ 89. 10
        mov     eax, dword [ebp-0CH]                    ; 2C25 _ 8B. 45, F4
        mov     edx, dword [ebp+10H]                    ; 2C28 _ 8B. 55, 10
        mov     dword [eax+8H], edx                     ; 2C2B _ 89. 50, 08
        mov     eax, dword [ebp-0CH]                    ; 2C2E _ 8B. 45, F4
        mov     edx, dword [ebp+14H]                    ; 2C31 _ 8B. 55, 14
        mov     dword [eax+0CH], edx                    ; 2C34 _ 89. 50, 0C
        mov     eax, dword [ebp-0CH]                    ; 2C37 _ 8B. 45, F4
        mov     dword [eax+10H], -1                     ; 2C3A _ C7. 40, 10, FFFFFFFF
        mov     dword [ebp-10H], 0                      ; 2C41 _ C7. 45, F0, 00000000
        jmp     ?_141                                   ; 2C48 _ EB, 1B

?_140:  mov     eax, dword [ebp-0CH]                    ; 2C4A _ 8B. 45, F4
        mov     edx, dword [ebp-10H]                    ; 2C4D _ 8B. 55, F0
        add     edx, 33                                 ; 2C50 _ 83. C2, 21
        shl     edx, 5                                  ; 2C53 _ C1. E2, 05
        add     eax, edx                                ; 2C56 _ 01. D0
        add     eax, 16                                 ; 2C58 _ 83. C0, 10
        mov     dword [eax], 0                          ; 2C5B _ C7. 00, 00000000
        add     dword [ebp-10H], 1                      ; 2C61 _ 83. 45, F0, 01
?_141:  cmp     dword [ebp-10H], 255                    ; 2C65 _ 81. 7D, F0, 000000FF
        jle     ?_140                                   ; 2C6C _ 7E, DC
        mov     eax, dword [ebp-0CH]                    ; 2C6E _ 8B. 45, F4
?_142:  leave                                           ; 2C71 _ C9
        ret                                             ; 2C72 _ C3
; shtctl_init End of function

sheet_alloc:; Function begin
        push    ebp                                     ; 2C73 _ 55
        mov     ebp, esp                                ; 2C74 _ 89. E5
        sub     esp, 16                                 ; 2C76 _ 83. EC, 10
        mov     dword [ebp-8H], 0                       ; 2C79 _ C7. 45, F8, 00000000
        jmp     ?_145                                   ; 2C80 _ EB, 4B

?_143:  mov     eax, dword [ebp+8H]                     ; 2C82 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 2C85 _ 8B. 55, F8
        add     edx, 33                                 ; 2C88 _ 83. C2, 21
        shl     edx, 5                                  ; 2C8B _ C1. E2, 05
        add     eax, edx                                ; 2C8E _ 01. D0
        add     eax, 16                                 ; 2C90 _ 83. C0, 10
        mov     eax, dword [eax]                        ; 2C93 _ 8B. 00
        test    eax, eax                                ; 2C95 _ 85. C0
        jnz     ?_144                                   ; 2C97 _ 75, 30
        mov     eax, dword [ebp-8H]                     ; 2C99 _ 8B. 45, F8
        shl     eax, 5                                  ; 2C9C _ C1. E0, 05
        lea     edx, [eax+410H]                         ; 2C9F _ 8D. 90, 00000410
        mov     eax, dword [ebp+8H]                     ; 2CA5 _ 8B. 45, 08
        add     eax, edx                                ; 2CA8 _ 01. D0
        add     eax, 4                                  ; 2CAA _ 83. C0, 04
        mov     dword [ebp-4H], eax                     ; 2CAD _ 89. 45, FC
        mov     eax, dword [ebp-4H]                     ; 2CB0 _ 8B. 45, FC
        mov     dword [eax+1CH], 1                      ; 2CB3 _ C7. 40, 1C, 00000001
        mov     eax, dword [ebp-4H]                     ; 2CBA _ 8B. 45, FC
        mov     dword [eax+18H], -1                     ; 2CBD _ C7. 40, 18, FFFFFFFF
        mov     eax, dword [ebp-4H]                     ; 2CC4 _ 8B. 45, FC
        jmp     ?_146                                   ; 2CC7 _ EB, 12

?_144:  add     dword [ebp-8H], 1                       ; 2CC9 _ 83. 45, F8, 01
?_145:  cmp     dword [ebp-8H], 255                     ; 2CCD _ 81. 7D, F8, 000000FF
        jle     ?_143                                   ; 2CD4 _ 7E, AC
        mov     eax, 0                                  ; 2CD6 _ B8, 00000000
?_146:  leave                                           ; 2CDB _ C9
        ret                                             ; 2CDC _ C3
; sheet_alloc End of function

sheet_setbuf:; Function begin
        push    ebp                                     ; 2CDD _ 55
        mov     ebp, esp                                ; 2CDE _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 2CE0 _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 2CE3 _ 8B. 55, 0C
        mov     dword [eax], edx                        ; 2CE6 _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 2CE8 _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 2CEB _ 8B. 55, 10
        mov     dword [eax+4H], edx                     ; 2CEE _ 89. 50, 04
        mov     eax, dword [ebp+8H]                     ; 2CF1 _ 8B. 45, 08
        mov     edx, dword [ebp+14H]                    ; 2CF4 _ 8B. 55, 14
        mov     dword [eax+8H], edx                     ; 2CF7 _ 89. 50, 08
        mov     eax, dword [ebp+8H]                     ; 2CFA _ 8B. 45, 08
        mov     edx, dword [ebp+18H]                    ; 2CFD _ 8B. 55, 18
        mov     dword [eax+14H], edx                    ; 2D00 _ 89. 50, 14
        nop                                             ; 2D03 _ 90
        pop     ebp                                     ; 2D04 _ 5D
        ret                                             ; 2D05 _ C3
; sheet_setbuf End of function

sheet_level_updown:; Function begin
        push    ebp                                     ; 2D06 _ 55
        mov     ebp, esp                                ; 2D07 _ 89. E5
        push    esi                                     ; 2D09 _ 56
        push    ebx                                     ; 2D0A _ 53
        sub     esp, 32                                 ; 2D0B _ 83. EC, 20
        mov     eax, dword [ebp+0CH]                    ; 2D0E _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 2D11 _ 8B. 40, 18
        mov     dword [ebp-0CH], eax                    ; 2D14 _ 89. 45, F4
        mov     eax, dword [ebp+8H]                     ; 2D17 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 2D1A _ 8B. 40, 10
        add     eax, 1                                  ; 2D1D _ 83. C0, 01
        cmp     dword [ebp+10H], eax                    ; 2D20 _ 39. 45, 10
        jle     ?_147                                   ; 2D23 _ 7E, 0C
        mov     eax, dword [ebp+8H]                     ; 2D25 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 2D28 _ 8B. 40, 10
        add     eax, 1                                  ; 2D2B _ 83. C0, 01
        mov     dword [ebp+10H], eax                    ; 2D2E _ 89. 45, 10
?_147:  cmp     dword [ebp+10H], -1                     ; 2D31 _ 83. 7D, 10, FF
        jge     ?_148                                   ; 2D35 _ 7D, 07
        mov     dword [ebp+10H], -1                     ; 2D37 _ C7. 45, 10, FFFFFFFF
?_148:  mov     eax, dword [ebp+0CH]                    ; 2D3E _ 8B. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 2D41 _ 8B. 55, 10
        mov     dword [eax+18H], edx                    ; 2D44 _ 89. 50, 18
        mov     eax, dword [ebp-0CH]                    ; 2D47 _ 8B. 45, F4
        cmp     eax, dword [ebp+10H]                    ; 2D4A _ 3B. 45, 10
        jle     ?_155                                   ; 2D4D _ 0F 8E, 000001D5
        cmp     dword [ebp+10H], 0                      ; 2D53 _ 83. 7D, 10, 00
        js      ?_151                                   ; 2D57 _ 0F 88, 000000E2
        mov     eax, dword [ebp-0CH]                    ; 2D5D _ 8B. 45, F4
        mov     dword [ebp-1CH], eax                    ; 2D60 _ 89. 45, E4
        jmp     ?_150                                   ; 2D63 _ EB, 34

?_149:  mov     eax, dword [ebp-1CH]                    ; 2D65 _ 8B. 45, E4
        lea     edx, [eax-1H]                           ; 2D68 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 2D6B _ 8B. 45, 08
        add     edx, 4                                  ; 2D6E _ 83. C2, 04
        mov     edx, dword [eax+edx*4+4H]               ; 2D71 _ 8B. 54 90, 04
        mov     eax, dword [ebp+8H]                     ; 2D75 _ 8B. 45, 08
        mov     ecx, dword [ebp-1CH]                    ; 2D78 _ 8B. 4D, E4
        add     ecx, 4                                  ; 2D7B _ 83. C1, 04
        mov     dword [eax+ecx*4+4H], edx               ; 2D7E _ 89. 54 88, 04
        mov     eax, dword [ebp+8H]                     ; 2D82 _ 8B. 45, 08
        mov     edx, dword [ebp-1CH]                    ; 2D85 _ 8B. 55, E4
        add     edx, 4                                  ; 2D88 _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 2D8B _ 8B. 44 90, 04
        mov     edx, dword [ebp-1CH]                    ; 2D8F _ 8B. 55, E4
        mov     dword [eax+18H], edx                    ; 2D92 _ 89. 50, 18
        sub     dword [ebp-1CH], 1                      ; 2D95 _ 83. 6D, E4, 01
?_150:  mov     eax, dword [ebp-1CH]                    ; 2D99 _ 8B. 45, E4
        cmp     eax, dword [ebp+10H]                    ; 2D9C _ 3B. 45, 10
        jg      ?_149                                   ; 2D9F _ 7F, C4
        mov     eax, dword [ebp+8H]                     ; 2DA1 _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 2DA4 _ 8B. 55, 10
        lea     ecx, [edx+4H]                           ; 2DA7 _ 8D. 4A, 04
        mov     edx, dword [ebp+0CH]                    ; 2DAA _ 8B. 55, 0C
        mov     dword [eax+ecx*4+4H], edx               ; 2DAD _ 89. 54 88, 04
        mov     eax, dword [ebp+10H]                    ; 2DB1 _ 8B. 45, 10
        lea     esi, [eax+1H]                           ; 2DB4 _ 8D. 70, 01
        mov     eax, dword [ebp+0CH]                    ; 2DB7 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 2DBA _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 2DBD _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 2DC0 _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 2DC3 _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 2DC6 _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 2DC9 _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 2DCC _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 2DCF _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 2DD2 _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 2DD5 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 2DD8 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 2DDB _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 2DDE _ 8B. 40, 0C
        sub     esp, 8                                  ; 2DE1 _ 83. EC, 08
        push    esi                                     ; 2DE4 _ 56
        push    ebx                                     ; 2DE5 _ 53
        push    ecx                                     ; 2DE6 _ 51
        push    edx                                     ; 2DE7 _ 52
        push    eax                                     ; 2DE8 _ 50
        push    dword [ebp+8H]                          ; 2DE9 _ FF. 75, 08
        call    sheet_refreshmap                        ; 2DEC _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 2DF1 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 2DF4 _ 8B. 45, 10
        lea     esi, [eax+1H]                           ; 2DF7 _ 8D. 70, 01
        mov     eax, dword [ebp+0CH]                    ; 2DFA _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 2DFD _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 2E00 _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 2E03 _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 2E06 _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 2E09 _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 2E0C _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 2E0F _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 2E12 _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 2E15 _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 2E18 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 2E1B _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 2E1E _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 2E21 _ 8B. 40, 0C
        sub     esp, 4                                  ; 2E24 _ 83. EC, 04
        push    dword [ebp-0CH]                         ; 2E27 _ FF. 75, F4
        push    esi                                     ; 2E2A _ 56
        push    ebx                                     ; 2E2B _ 53
        push    ecx                                     ; 2E2C _ 51
        push    edx                                     ; 2E2D _ 52
        push    eax                                     ; 2E2E _ 50
        push    dword [ebp+8H]                          ; 2E2F _ FF. 75, 08
        call    sheet_refresh_new                       ; 2E32 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 2E37 _ 83. C4, 20
        jmp     ?_162                                   ; 2E3A _ E9, 00000244

?_151:  mov     eax, dword [ebp+8H]                     ; 2E3F _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 2E42 _ 8B. 40, 10
        cmp     dword [ebp-0CH], eax                    ; 2E45 _ 39. 45, F4
        jge     ?_154                                   ; 2E48 _ 7D, 47
        mov     eax, dword [ebp-0CH]                    ; 2E4A _ 8B. 45, F4
        mov     dword [ebp-18H], eax                    ; 2E4D _ 89. 45, E8
        jmp     ?_153                                   ; 2E50 _ EB, 34

?_152:  mov     eax, dword [ebp-18H]                    ; 2E52 _ 8B. 45, E8
        lea     edx, [eax+1H]                           ; 2E55 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 2E58 _ 8B. 45, 08
        add     edx, 4                                  ; 2E5B _ 83. C2, 04
        mov     edx, dword [eax+edx*4+4H]               ; 2E5E _ 8B. 54 90, 04
        mov     eax, dword [ebp+8H]                     ; 2E62 _ 8B. 45, 08
        mov     ecx, dword [ebp-18H]                    ; 2E65 _ 8B. 4D, E8
        add     ecx, 4                                  ; 2E68 _ 83. C1, 04
        mov     dword [eax+ecx*4+4H], edx               ; 2E6B _ 89. 54 88, 04
        mov     eax, dword [ebp+8H]                     ; 2E6F _ 8B. 45, 08
        mov     edx, dword [ebp-18H]                    ; 2E72 _ 8B. 55, E8
        add     edx, 4                                  ; 2E75 _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 2E78 _ 8B. 44 90, 04
        mov     edx, dword [ebp-18H]                    ; 2E7C _ 8B. 55, E8
        mov     dword [eax+18H], edx                    ; 2E7F _ 89. 50, 18
        add     dword [ebp-18H], 1                      ; 2E82 _ 83. 45, E8, 01
?_153:  mov     eax, dword [ebp+8H]                     ; 2E86 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 2E89 _ 8B. 40, 10
        cmp     dword [ebp-18H], eax                    ; 2E8C _ 39. 45, E8
        jl      ?_152                                   ; 2E8F _ 7C, C1
?_154:  mov     eax, dword [ebp+8H]                     ; 2E91 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 2E94 _ 8B. 40, 10
        lea     edx, [eax-1H]                           ; 2E97 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 2E9A _ 8B. 45, 08
        mov     dword [eax+10H], edx                    ; 2E9D _ 89. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 2EA0 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 2EA3 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 2EA6 _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 2EA9 _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 2EAC _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 2EAF _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 2EB2 _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 2EB5 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 2EB8 _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 2EBB _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 2EBE _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 2EC1 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 2EC4 _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 2EC7 _ 8B. 40, 0C
        sub     esp, 8                                  ; 2ECA _ 83. EC, 08
        push    0                                       ; 2ECD _ 6A, 00
        push    ebx                                     ; 2ECF _ 53
        push    ecx                                     ; 2ED0 _ 51
        push    edx                                     ; 2ED1 _ 52
        push    eax                                     ; 2ED2 _ 50
        push    dword [ebp+8H]                          ; 2ED3 _ FF. 75, 08
        call    sheet_refreshmap                        ; 2ED6 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 2EDB _ 83. C4, 20
        mov     eax, dword [ebp-0CH]                    ; 2EDE _ 8B. 45, F4
        lea     esi, [eax-1H]                           ; 2EE1 _ 8D. 70, FF
        mov     eax, dword [ebp+0CH]                    ; 2EE4 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 2EE7 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 2EEA _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 2EED _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 2EF0 _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 2EF3 _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 2EF6 _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 2EF9 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 2EFC _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 2EFF _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 2F02 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 2F05 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 2F08 _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 2F0B _ 8B. 40, 0C
        sub     esp, 4                                  ; 2F0E _ 83. EC, 04
        push    esi                                     ; 2F11 _ 56
        push    0                                       ; 2F12 _ 6A, 00
        push    ebx                                     ; 2F14 _ 53
        push    ecx                                     ; 2F15 _ 51
        push    edx                                     ; 2F16 _ 52
        push    eax                                     ; 2F17 _ 50
        push    dword [ebp+8H]                          ; 2F18 _ FF. 75, 08
        call    sheet_refresh_new                       ; 2F1B _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 2F20 _ 83. C4, 20
        jmp     ?_162                                   ; 2F23 _ E9, 0000015B

?_155:  mov     eax, dword [ebp-0CH]                    ; 2F28 _ 8B. 45, F4
        cmp     eax, dword [ebp+10H]                    ; 2F2B _ 3B. 45, 10
        jge     ?_162                                   ; 2F2E _ 0F 8D, 0000014F
        cmp     dword [ebp-0CH], 0                      ; 2F34 _ 83. 7D, F4, 00
        js      ?_158                                   ; 2F38 _ 78, 56
        mov     eax, dword [ebp-0CH]                    ; 2F3A _ 8B. 45, F4
        mov     dword [ebp-14H], eax                    ; 2F3D _ 89. 45, EC
        jmp     ?_157                                   ; 2F40 _ EB, 34

?_156:  mov     eax, dword [ebp-14H]                    ; 2F42 _ 8B. 45, EC
        lea     edx, [eax+1H]                           ; 2F45 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 2F48 _ 8B. 45, 08
        add     edx, 4                                  ; 2F4B _ 83. C2, 04
        mov     edx, dword [eax+edx*4+4H]               ; 2F4E _ 8B. 54 90, 04
        mov     eax, dword [ebp+8H]                     ; 2F52 _ 8B. 45, 08
        mov     ecx, dword [ebp-14H]                    ; 2F55 _ 8B. 4D, EC
        add     ecx, 4                                  ; 2F58 _ 83. C1, 04
        mov     dword [eax+ecx*4+4H], edx               ; 2F5B _ 89. 54 88, 04
        mov     eax, dword [ebp+8H]                     ; 2F5F _ 8B. 45, 08
        mov     edx, dword [ebp-14H]                    ; 2F62 _ 8B. 55, EC
        add     edx, 4                                  ; 2F65 _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 2F68 _ 8B. 44 90, 04
        mov     edx, dword [ebp-14H]                    ; 2F6C _ 8B. 55, EC
        mov     dword [eax+18H], edx                    ; 2F6F _ 89. 50, 18
        add     dword [ebp-14H], 1                      ; 2F72 _ 83. 45, EC, 01
?_157:  mov     eax, dword [ebp-14H]                    ; 2F76 _ 8B. 45, EC
        cmp     eax, dword [ebp+10H]                    ; 2F79 _ 3B. 45, 10
        jl      ?_156                                   ; 2F7C _ 7C, C4
        mov     eax, dword [ebp+8H]                     ; 2F7E _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 2F81 _ 8B. 55, 10
        lea     ecx, [edx+4H]                           ; 2F84 _ 8D. 4A, 04
        mov     edx, dword [ebp+0CH]                    ; 2F87 _ 8B. 55, 0C
        mov     dword [eax+ecx*4+4H], edx               ; 2F8A _ 89. 54 88, 04
        jmp     ?_161                                   ; 2F8E _ EB, 72

?_158:  cmp     dword [ebp-0CH], 0                      ; 2F90 _ 83. 7D, F4, 00
        jns     ?_161                                   ; 2F94 _ 79, 6C
        mov     eax, dword [ebp+8H]                     ; 2F96 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 2F99 _ 8B. 40, 10
        mov     dword [ebp-10H], eax                    ; 2F9C _ 89. 45, F0
        jmp     ?_160                                   ; 2F9F _ EB, 3A

?_159:  mov     eax, dword [ebp-10H]                    ; 2FA1 _ 8B. 45, F0
        lea     ecx, [eax+1H]                           ; 2FA4 _ 8D. 48, 01
        mov     eax, dword [ebp+8H]                     ; 2FA7 _ 8B. 45, 08
        mov     edx, dword [ebp-10H]                    ; 2FAA _ 8B. 55, F0
        add     edx, 4                                  ; 2FAD _ 83. C2, 04
        mov     edx, dword [eax+edx*4+4H]               ; 2FB0 _ 8B. 54 90, 04
        mov     eax, dword [ebp+8H]                     ; 2FB4 _ 8B. 45, 08
        add     ecx, 4                                  ; 2FB7 _ 83. C1, 04
        mov     dword [eax+ecx*4+4H], edx               ; 2FBA _ 89. 54 88, 04
        mov     eax, dword [ebp-10H]                    ; 2FBE _ 8B. 45, F0
        lea     edx, [eax+1H]                           ; 2FC1 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 2FC4 _ 8B. 45, 08
        add     edx, 4                                  ; 2FC7 _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 2FCA _ 8B. 44 90, 04
        mov     edx, dword [ebp-10H]                    ; 2FCE _ 8B. 55, F0
        add     edx, 1                                  ; 2FD1 _ 83. C2, 01
        mov     dword [eax+18H], edx                    ; 2FD4 _ 89. 50, 18
        sub     dword [ebp-10H], 1                      ; 2FD7 _ 83. 6D, F0, 01
?_160:  mov     eax, dword [ebp-10H]                    ; 2FDB _ 8B. 45, F0
        cmp     eax, dword [ebp+10H]                    ; 2FDE _ 3B. 45, 10
        jge     ?_159                                   ; 2FE1 _ 7D, BE
        mov     eax, dword [ebp+8H]                     ; 2FE3 _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 2FE6 _ 8B. 55, 10
        lea     ecx, [edx+4H]                           ; 2FE9 _ 8D. 4A, 04
        mov     edx, dword [ebp+0CH]                    ; 2FEC _ 8B. 55, 0C
        mov     dword [eax+ecx*4+4H], edx               ; 2FEF _ 89. 54 88, 04
        mov     eax, dword [ebp+8H]                     ; 2FF3 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 2FF6 _ 8B. 40, 10
        lea     edx, [eax+1H]                           ; 2FF9 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 2FFC _ 8B. 45, 08
        mov     dword [eax+10H], edx                    ; 2FFF _ 89. 50, 10
?_161:  mov     eax, dword [ebp+0CH]                    ; 3002 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 3005 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 3008 _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 300B _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 300E _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 3011 _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 3014 _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 3017 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 301A _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 301D _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 3020 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 3023 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 3026 _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 3029 _ 8B. 40, 0C
        sub     esp, 8                                  ; 302C _ 83. EC, 08
        push    dword [ebp+10H]                         ; 302F _ FF. 75, 10
        push    ebx                                     ; 3032 _ 53
        push    ecx                                     ; 3033 _ 51
        push    edx                                     ; 3034 _ 52
        push    eax                                     ; 3035 _ 50
        push    dword [ebp+8H]                          ; 3036 _ FF. 75, 08
        call    sheet_refreshmap                        ; 3039 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 303E _ 83. C4, 20
        mov     eax, dword [ebp+0CH]                    ; 3041 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 3044 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 3047 _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 304A _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 304D _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 3050 _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 3053 _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 3056 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 3059 _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 305C _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 305F _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 3062 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 3065 _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 3068 _ 8B. 40, 0C
        sub     esp, 4                                  ; 306B _ 83. EC, 04
        push    dword [ebp+10H]                         ; 306E _ FF. 75, 10
        push    dword [ebp+10H]                         ; 3071 _ FF. 75, 10
        push    ebx                                     ; 3074 _ 53
        push    ecx                                     ; 3075 _ 51
        push    edx                                     ; 3076 _ 52
        push    eax                                     ; 3077 _ 50
        push    dword [ebp+8H]                          ; 3078 _ FF. 75, 08
        call    sheet_refresh_new                       ; 307B _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 3080 _ 83. C4, 20
?_162:  nop                                             ; 3083 _ 90
        lea     esp, [ebp-8H]                           ; 3084 _ 8D. 65, F8
        pop     ebx                                     ; 3087 _ 5B
        pop     esi                                     ; 3088 _ 5E
        pop     ebp                                     ; 3089 _ 5D
        ret                                             ; 308A _ C3
; sheet_level_updown End of function

sheet_refresh:; Function begin
        push    ebp                                     ; 308B _ 55
        mov     ebp, esp                                ; 308C _ 89. E5
        push    edi                                     ; 308E _ 57
        push    esi                                     ; 308F _ 56
        push    ebx                                     ; 3090 _ 53
        sub     esp, 28                                 ; 3091 _ 83. EC, 1C
        mov     eax, dword [ebp+0CH]                    ; 3094 _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 3097 _ 8B. 40, 18
        test    eax, eax                                ; 309A _ 85. C0
        js      ?_163                                   ; 309C _ 78, 52
        mov     eax, dword [ebp+0CH]                    ; 309E _ 8B. 45, 0C
        mov     ebx, dword [eax+18H]                    ; 30A1 _ 8B. 58, 18
        mov     eax, dword [ebp+0CH]                    ; 30A4 _ 8B. 45, 0C
        mov     ecx, dword [eax+18H]                    ; 30A7 _ 8B. 48, 18
        mov     eax, dword [ebp+0CH]                    ; 30AA _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 30AD _ 8B. 50, 10
        mov     eax, dword [ebp+1CH]                    ; 30B0 _ 8B. 45, 1C
        lea     edi, [edx+eax]                          ; 30B3 _ 8D. 3C 02
        mov     eax, dword [ebp+0CH]                    ; 30B6 _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 30B9 _ 8B. 50, 0C
        mov     eax, dword [ebp+18H]                    ; 30BC _ 8B. 45, 18
        lea     esi, [edx+eax]                          ; 30BF _ 8D. 34 02
        mov     eax, dword [ebp+0CH]                    ; 30C2 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 30C5 _ 8B. 50, 10
        mov     eax, dword [ebp+14H]                    ; 30C8 _ 8B. 45, 14
        add     edx, eax                                ; 30CB _ 01. C2
        mov     eax, dword [ebp+0CH]                    ; 30CD _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 30D0 _ 8B. 40, 0C
        mov     dword [ebp-1CH], eax                    ; 30D3 _ 89. 45, E4
        mov     eax, dword [ebp+10H]                    ; 30D6 _ 8B. 45, 10
        add     eax, dword [ebp-1CH]                    ; 30D9 _ 03. 45, E4
        sub     esp, 4                                  ; 30DC _ 83. EC, 04
        push    ebx                                     ; 30DF _ 53
        push    ecx                                     ; 30E0 _ 51
        push    edi                                     ; 30E1 _ 57
        push    esi                                     ; 30E2 _ 56
        push    edx                                     ; 30E3 _ 52
        push    eax                                     ; 30E4 _ 50
        push    dword [ebp+8H]                          ; 30E5 _ FF. 75, 08
        call    sheet_refresh_new                       ; 30E8 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 30ED _ 83. C4, 20
?_163:  mov     eax, 0                                  ; 30F0 _ B8, 00000000
        lea     esp, [ebp-0CH]                          ; 30F5 _ 8D. 65, F4
        pop     ebx                                     ; 30F8 _ 5B
        pop     esi                                     ; 30F9 _ 5E
        pop     edi                                     ; 30FA _ 5F
        pop     ebp                                     ; 30FB _ 5D
        ret                                             ; 30FC _ C3
; sheet_refresh End of function

sheet_slide:; Function begin
        push    ebp                                     ; 30FD _ 55
        mov     ebp, esp                                ; 30FE _ 89. E5
        push    esi                                     ; 3100 _ 56
        push    ebx                                     ; 3101 _ 53
        sub     esp, 16                                 ; 3102 _ 83. EC, 10
        mov     eax, dword [ebp+0CH]                    ; 3105 _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 3108 _ 8B. 40, 0C
        mov     dword [ebp-10H], eax                    ; 310B _ 89. 45, F0
        mov     eax, dword [ebp+0CH]                    ; 310E _ 8B. 45, 0C
        mov     eax, dword [eax+10H]                    ; 3111 _ 8B. 40, 10
        mov     dword [ebp-0CH], eax                    ; 3114 _ 89. 45, F4
        mov     eax, dword [ebp+0CH]                    ; 3117 _ 8B. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 311A _ 8B. 55, 10
        mov     dword [eax+0CH], edx                    ; 311D _ 89. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 3120 _ 8B. 45, 0C
        mov     edx, dword [ebp+14H]                    ; 3123 _ 8B. 55, 14
        mov     dword [eax+10H], edx                    ; 3126 _ 89. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 3129 _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 312C _ 8B. 40, 18
        test    eax, eax                                ; 312F _ 85. C0
        js      ?_164                                   ; 3131 _ 0F 88, 000000D3
        mov     eax, dword [ebp+0CH]                    ; 3137 _ 8B. 45, 0C
        mov     edx, dword [eax+8H]                     ; 313A _ 8B. 50, 08
        mov     eax, dword [ebp-0CH]                    ; 313D _ 8B. 45, F4
        add     edx, eax                                ; 3140 _ 01. C2
        mov     eax, dword [ebp+0CH]                    ; 3142 _ 8B. 45, 0C
        mov     ecx, dword [eax+4H]                     ; 3145 _ 8B. 48, 04
        mov     eax, dword [ebp-10H]                    ; 3148 _ 8B. 45, F0
        add     eax, ecx                                ; 314B _ 01. C8
        sub     esp, 8                                  ; 314D _ 83. EC, 08
        push    0                                       ; 3150 _ 6A, 00
        push    edx                                     ; 3152 _ 52
        push    eax                                     ; 3153 _ 50
        push    dword [ebp-0CH]                         ; 3154 _ FF. 75, F4
        push    dword [ebp-10H]                         ; 3157 _ FF. 75, F0
        push    dword [ebp+8H]                          ; 315A _ FF. 75, 08
        call    sheet_refreshmap                        ; 315D _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 3162 _ 83. C4, 20
        mov     eax, dword [ebp+0CH]                    ; 3165 _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 3168 _ 8B. 40, 18
        mov     edx, dword [ebp+0CH]                    ; 316B _ 8B. 55, 0C
        mov     ecx, dword [edx+8H]                     ; 316E _ 8B. 4A, 08
        mov     edx, dword [ebp+14H]                    ; 3171 _ 8B. 55, 14
        add     ecx, edx                                ; 3174 _ 01. D1
        mov     edx, dword [ebp+0CH]                    ; 3176 _ 8B. 55, 0C
        mov     ebx, dword [edx+4H]                     ; 3179 _ 8B. 5A, 04
        mov     edx, dword [ebp+10H]                    ; 317C _ 8B. 55, 10
        add     edx, ebx                                ; 317F _ 01. DA
        sub     esp, 8                                  ; 3181 _ 83. EC, 08
        push    eax                                     ; 3184 _ 50
        push    ecx                                     ; 3185 _ 51
        push    edx                                     ; 3186 _ 52
        push    dword [ebp+14H]                         ; 3187 _ FF. 75, 14
        push    dword [ebp+10H]                         ; 318A _ FF. 75, 10
        push    dword [ebp+8H]                          ; 318D _ FF. 75, 08
        call    sheet_refreshmap                        ; 3190 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 3195 _ 83. C4, 20
        mov     eax, dword [ebp+0CH]                    ; 3198 _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 319B _ 8B. 40, 18
        lea     ecx, [eax-1H]                           ; 319E _ 8D. 48, FF
        mov     eax, dword [ebp+0CH]                    ; 31A1 _ 8B. 45, 0C
        mov     edx, dword [eax+8H]                     ; 31A4 _ 8B. 50, 08
        mov     eax, dword [ebp-0CH]                    ; 31A7 _ 8B. 45, F4
        add     edx, eax                                ; 31AA _ 01. C2
        mov     eax, dword [ebp+0CH]                    ; 31AC _ 8B. 45, 0C
        mov     ebx, dword [eax+4H]                     ; 31AF _ 8B. 58, 04
        mov     eax, dword [ebp-10H]                    ; 31B2 _ 8B. 45, F0
        add     eax, ebx                                ; 31B5 _ 01. D8
        sub     esp, 4                                  ; 31B7 _ 83. EC, 04
        push    ecx                                     ; 31BA _ 51
        push    0                                       ; 31BB _ 6A, 00
        push    edx                                     ; 31BD _ 52
        push    eax                                     ; 31BE _ 50
        push    dword [ebp-0CH]                         ; 31BF _ FF. 75, F4
        push    dword [ebp-10H]                         ; 31C2 _ FF. 75, F0
        push    dword [ebp+8H]                          ; 31C5 _ FF. 75, 08
        call    sheet_refresh_new                       ; 31C8 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 31CD _ 83. C4, 20
        mov     eax, dword [ebp+0CH]                    ; 31D0 _ 8B. 45, 0C
        mov     edx, dword [eax+18H]                    ; 31D3 _ 8B. 50, 18
        mov     eax, dword [ebp+0CH]                    ; 31D6 _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 31D9 _ 8B. 40, 18
        mov     ecx, dword [ebp+0CH]                    ; 31DC _ 8B. 4D, 0C
        mov     ebx, dword [ecx+8H]                     ; 31DF _ 8B. 59, 08
        mov     ecx, dword [ebp+14H]                    ; 31E2 _ 8B. 4D, 14
        add     ebx, ecx                                ; 31E5 _ 01. CB
        mov     ecx, dword [ebp+0CH]                    ; 31E7 _ 8B. 4D, 0C
        mov     esi, dword [ecx+4H]                     ; 31EA _ 8B. 71, 04
        mov     ecx, dword [ebp+10H]                    ; 31ED _ 8B. 4D, 10
        add     ecx, esi                                ; 31F0 _ 01. F1
        sub     esp, 4                                  ; 31F2 _ 83. EC, 04
        push    edx                                     ; 31F5 _ 52
        push    eax                                     ; 31F6 _ 50
        push    ebx                                     ; 31F7 _ 53
        push    ecx                                     ; 31F8 _ 51
        push    dword [ebp+14H]                         ; 31F9 _ FF. 75, 14
        push    dword [ebp+10H]                         ; 31FC _ FF. 75, 10
        push    dword [ebp+8H]                          ; 31FF _ FF. 75, 08
        call    sheet_refresh_new                       ; 3202 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 3207 _ 83. C4, 20
?_164:  nop                                             ; 320A _ 90
        lea     esp, [ebp-8H]                           ; 320B _ 8D. 65, F8
        pop     ebx                                     ; 320E _ 5B
        pop     esi                                     ; 320F _ 5E
        pop     ebp                                     ; 3210 _ 5D
        ret                                             ; 3211 _ C3
; sheet_slide End of function

sheet_refresh_new:; Function begin
        push    ebp                                     ; 3212 _ 55
        mov     ebp, esp                                ; 3213 _ 89. E5
        sub     esp, 48                                 ; 3215 _ 83. EC, 30
        mov     eax, dword [ebp+8H]                     ; 3218 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 321B _ 8B. 00
        mov     dword [ebp-18H], eax                    ; 321D _ 89. 45, E8
        mov     eax, dword [ebp+8H]                     ; 3220 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 3223 _ 8B. 40, 04
        mov     dword [ebp-14H], eax                    ; 3226 _ 89. 45, EC
        cmp     dword [ebp+0CH], 0                      ; 3229 _ 83. 7D, 0C, 00
        jns     ?_165                                   ; 322D _ 79, 07
        mov     dword [ebp+0CH], 0                      ; 322F _ C7. 45, 0C, 00000000
?_165:  cmp     dword [ebp+10H], 8                      ; 3236 _ 83. 7D, 10, 08
        jg      ?_166                                   ; 323A _ 7F, 07
        mov     dword [ebp+10H], 0                      ; 323C _ C7. 45, 10, 00000000
?_166:  mov     eax, dword [ebp+8H]                     ; 3243 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 3246 _ 8B. 40, 08
        cmp     dword [ebp+14H], eax                    ; 3249 _ 39. 45, 14
        jle     ?_167                                   ; 324C _ 7E, 09
        mov     eax, dword [ebp+8H]                     ; 324E _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 3251 _ 8B. 40, 08
        mov     dword [ebp+14H], eax                    ; 3254 _ 89. 45, 14
?_167:  mov     eax, dword [ebp+8H]                     ; 3257 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 325A _ 8B. 40, 0C
        cmp     dword [ebp+18H], eax                    ; 325D _ 39. 45, 18
        jle     ?_168                                   ; 3260 _ 7E, 09
        mov     eax, dword [ebp+8H]                     ; 3262 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 3265 _ 8B. 40, 0C
        mov     dword [ebp+18H], eax                    ; 3268 _ 89. 45, 18
?_168:  mov     eax, dword [ebp+1CH]                    ; 326B _ 8B. 45, 1C
        mov     dword [ebp-24H], eax                    ; 326E _ 89. 45, DC
        jmp     ?_175                                   ; 3271 _ E9, 00000118

?_169:  mov     eax, dword [ebp+8H]                     ; 3276 _ 8B. 45, 08
        mov     edx, dword [ebp-24H]                    ; 3279 _ 8B. 55, DC
        add     edx, 4                                  ; 327C _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 327F _ 8B. 44 90, 04
        mov     dword [ebp-10H], eax                    ; 3283 _ 89. 45, F0
        mov     eax, dword [ebp-10H]                    ; 3286 _ 8B. 45, F0
        mov     eax, dword [eax]                        ; 3289 _ 8B. 00
        mov     dword [ebp-0CH], eax                    ; 328B _ 89. 45, F4
        mov     eax, dword [ebp-10H]                    ; 328E _ 8B. 45, F0
        mov     edx, dword [ebp+8H]                     ; 3291 _ 8B. 55, 08
        add     edx, 1044                               ; 3294 _ 81. C2, 00000414
        sub     eax, edx                                ; 329A _ 29. D0
        sar     eax, 5                                  ; 329C _ C1. F8, 05
        mov     byte [ebp-26H], al                      ; 329F _ 88. 45, DA
        mov     dword [ebp-20H], 0                      ; 32A2 _ C7. 45, E0, 00000000
        jmp     ?_174                                   ; 32A9 _ E9, 000000CD

?_170:  mov     eax, dword [ebp-10H]                    ; 32AE _ 8B. 45, F0
        mov     edx, dword [eax+10H]                    ; 32B1 _ 8B. 50, 10
        mov     eax, dword [ebp-20H]                    ; 32B4 _ 8B. 45, E0
        add     eax, edx                                ; 32B7 _ 01. D0
        mov     dword [ebp-8H], eax                     ; 32B9 _ 89. 45, F8
        mov     dword [ebp-1CH], 0                      ; 32BC _ C7. 45, E4, 00000000
        jmp     ?_173                                   ; 32C3 _ E9, 000000A0

?_171:  mov     eax, dword [ebp-10H]                    ; 32C8 _ 8B. 45, F0
        mov     edx, dword [eax+0CH]                    ; 32CB _ 8B. 50, 0C
        mov     eax, dword [ebp-1CH]                    ; 32CE _ 8B. 45, E4
        add     eax, edx                                ; 32D1 _ 01. D0
        mov     dword [ebp-4H], eax                     ; 32D3 _ 89. 45, FC
        mov     eax, dword [ebp+0CH]                    ; 32D6 _ 8B. 45, 0C
        cmp     eax, dword [ebp-4H]                     ; 32D9 _ 3B. 45, FC
        jg      ?_172                                   ; 32DC _ 0F 8F, 00000082
        mov     eax, dword [ebp-4H]                     ; 32E2 _ 8B. 45, FC
        cmp     eax, dword [ebp+14H]                    ; 32E5 _ 3B. 45, 14
        jge     ?_172                                   ; 32E8 _ 7D, 7A
        mov     eax, dword [ebp+10H]                    ; 32EA _ 8B. 45, 10
        cmp     eax, dword [ebp-8H]                     ; 32ED _ 3B. 45, F8
        jg      ?_172                                   ; 32F0 _ 7F, 72
        mov     eax, dword [ebp-8H]                     ; 32F2 _ 8B. 45, F8
        cmp     eax, dword [ebp+18H]                    ; 32F5 _ 3B. 45, 18
        jge     ?_172                                   ; 32F8 _ 7D, 6A
        mov     eax, dword [ebp-10H]                    ; 32FA _ 8B. 45, F0
        mov     eax, dword [eax+4H]                     ; 32FD _ 8B. 40, 04
        imul    eax, dword [ebp-20H]                    ; 3300 _ 0F AF. 45, E0
        mov     edx, eax                                ; 3304 _ 89. C2
        mov     eax, dword [ebp-1CH]                    ; 3306 _ 8B. 45, E4
        add     eax, edx                                ; 3309 _ 01. D0
        mov     edx, eax                                ; 330B _ 89. C2
        mov     eax, dword [ebp-0CH]                    ; 330D _ 8B. 45, F4
        add     eax, edx                                ; 3310 _ 01. D0
        movzx   eax, byte [eax]                         ; 3312 _ 0F B6. 00
        mov     byte [ebp-25H], al                      ; 3315 _ 88. 45, DB
        mov     eax, dword [ebp+8H]                     ; 3318 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 331B _ 8B. 40, 08
        imul    eax, dword [ebp-8H]                     ; 331E _ 0F AF. 45, F8
        mov     edx, eax                                ; 3322 _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 3324 _ 8B. 45, FC
        add     eax, edx                                ; 3327 _ 01. D0
        mov     edx, eax                                ; 3329 _ 89. C2
        mov     eax, dword [ebp-14H]                    ; 332B _ 8B. 45, EC
        add     eax, edx                                ; 332E _ 01. D0
        movzx   eax, byte [eax]                         ; 3330 _ 0F B6. 00
        cmp     byte [ebp-26H], al                      ; 3333 _ 38. 45, DA
        jnz     ?_172                                   ; 3336 _ 75, 2C
        movzx   edx, byte [ebp-25H]                     ; 3338 _ 0F B6. 55, DB
        mov     eax, dword [ebp-10H]                    ; 333C _ 8B. 45, F0
        mov     eax, dword [eax+14H]                    ; 333F _ 8B. 40, 14
        cmp     edx, eax                                ; 3342 _ 39. C2
        jz      ?_172                                   ; 3344 _ 74, 1E
        mov     eax, dword [ebp+8H]                     ; 3346 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 3349 _ 8B. 40, 08
        imul    eax, dword [ebp-8H]                     ; 334C _ 0F AF. 45, F8
        mov     edx, eax                                ; 3350 _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 3352 _ 8B. 45, FC
        add     eax, edx                                ; 3355 _ 01. D0
        mov     edx, eax                                ; 3357 _ 89. C2
        mov     eax, dword [ebp-18H]                    ; 3359 _ 8B. 45, E8
        add     edx, eax                                ; 335C _ 01. C2
        movzx   eax, byte [ebp-25H]                     ; 335E _ 0F B6. 45, DB
        mov     byte [edx], al                          ; 3362 _ 88. 02
?_172:  add     dword [ebp-1CH], 1                      ; 3364 _ 83. 45, E4, 01
?_173:  mov     eax, dword [ebp-10H]                    ; 3368 _ 8B. 45, F0
        mov     eax, dword [eax+4H]                     ; 336B _ 8B. 40, 04
        cmp     dword [ebp-1CH], eax                    ; 336E _ 39. 45, E4
        jl      ?_171                                   ; 3371 _ 0F 8C, FFFFFF51
        add     dword [ebp-20H], 1                      ; 3377 _ 83. 45, E0, 01
?_174:  mov     eax, dword [ebp-10H]                    ; 337B _ 8B. 45, F0
        mov     eax, dword [eax+8H]                     ; 337E _ 8B. 40, 08
        cmp     dword [ebp-20H], eax                    ; 3381 _ 39. 45, E0
        jl      ?_170                                   ; 3384 _ 0F 8C, FFFFFF24
        add     dword [ebp-24H], 1                      ; 338A _ 83. 45, DC, 01
?_175:  mov     eax, dword [ebp-24H]                    ; 338E _ 8B. 45, DC
        cmp     eax, dword [ebp+20H]                    ; 3391 _ 3B. 45, 20
        jle     ?_169                                   ; 3394 _ 0F 8E, FFFFFEDC
        nop                                             ; 339A _ 90
        leave                                           ; 339B _ C9
        ret                                             ; 339C _ C3
; sheet_refresh_new End of function

sheet_refreshmap:; Function begin
        push    ebp                                     ; 339D _ 55
        mov     ebp, esp                                ; 339E _ 89. E5
        sub     esp, 64                                 ; 33A0 _ 83. EC, 40
        mov     eax, dword [ebp+8H]                     ; 33A3 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 33A6 _ 8B. 40, 04
        mov     dword [ebp-14H], eax                    ; 33A9 _ 89. 45, EC
        cmp     dword [ebp+0CH], 0                      ; 33AC _ 83. 7D, 0C, 00
        jns     ?_176                                   ; 33B0 _ 79, 07
        mov     dword [ebp+0CH], 0                      ; 33B2 _ C7. 45, 0C, 00000000
?_176:  mov     eax, dword [ebp+8H]                     ; 33B9 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 33BC _ 8B. 40, 08
        cmp     dword [ebp+0CH], eax                    ; 33BF _ 39. 45, 0C
        jle     ?_177                                   ; 33C2 _ 7E, 09
        mov     eax, dword [ebp+8H]                     ; 33C4 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 33C7 _ 8B. 40, 08
        mov     dword [ebp+0CH], eax                    ; 33CA _ 89. 45, 0C
?_177:  cmp     dword [ebp+10H], 0                      ; 33CD _ 83. 7D, 10, 00
        jns     ?_178                                   ; 33D1 _ 79, 07
        mov     dword [ebp+10H], 0                      ; 33D3 _ C7. 45, 10, 00000000
?_178:  mov     eax, dword [ebp+8H]                     ; 33DA _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 33DD _ 8B. 40, 0C
        cmp     dword [ebp+10H], eax                    ; 33E0 _ 39. 45, 10
        jle     ?_179                                   ; 33E3 _ 7E, 09
        mov     eax, dword [ebp+8H]                     ; 33E5 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 33E8 _ 8B. 40, 0C
        mov     dword [ebp+10H], eax                    ; 33EB _ 89. 45, 10
?_179:  mov     eax, dword [ebp+1CH]                    ; 33EE _ 8B. 45, 1C
        mov     dword [ebp-20H], eax                    ; 33F1 _ 89. 45, E0
        jmp     ?_190                                   ; 33F4 _ E9, 00000140

?_180:  mov     eax, dword [ebp+8H]                     ; 33F9 _ 8B. 45, 08
        mov     edx, dword [ebp-20H]                    ; 33FC _ 8B. 55, E0
        add     edx, 4                                  ; 33FF _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 3402 _ 8B. 44 90, 04
        mov     dword [ebp-10H], eax                    ; 3406 _ 89. 45, F0
        mov     eax, dword [ebp-10H]                    ; 3409 _ 8B. 45, F0
        mov     edx, dword [ebp+8H]                     ; 340C _ 8B. 55, 08
        add     edx, 1044                               ; 340F _ 81. C2, 00000414
        sub     eax, edx                                ; 3415 _ 29. D0
        sar     eax, 5                                  ; 3417 _ C1. F8, 05
        mov     byte [ebp-31H], al                      ; 341A _ 88. 45, CF
        mov     eax, dword [ebp-10H]                    ; 341D _ 8B. 45, F0
        mov     eax, dword [eax]                        ; 3420 _ 8B. 00
        mov     dword [ebp-0CH], eax                    ; 3422 _ 89. 45, F4
        mov     eax, dword [ebp-10H]                    ; 3425 _ 8B. 45, F0
        mov     eax, dword [eax+0CH]                    ; 3428 _ 8B. 40, 0C
        mov     edx, dword [ebp+0CH]                    ; 342B _ 8B. 55, 0C
        sub     edx, eax                                ; 342E _ 29. C2
        mov     eax, edx                                ; 3430 _ 89. D0
        mov     dword [ebp-30H], eax                    ; 3432 _ 89. 45, D0
        mov     eax, dword [ebp-10H]                    ; 3435 _ 8B. 45, F0
        mov     eax, dword [eax+10H]                    ; 3438 _ 8B. 40, 10
        mov     edx, dword [ebp+10H]                    ; 343B _ 8B. 55, 10
        sub     edx, eax                                ; 343E _ 29. C2
        mov     eax, edx                                ; 3440 _ 89. D0
        mov     dword [ebp-2CH], eax                    ; 3442 _ 89. 45, D4
        mov     eax, dword [ebp-10H]                    ; 3445 _ 8B. 45, F0
        mov     eax, dword [eax+0CH]                    ; 3448 _ 8B. 40, 0C
        mov     edx, dword [ebp+14H]                    ; 344B _ 8B. 55, 14
        sub     edx, eax                                ; 344E _ 29. C2
        mov     eax, edx                                ; 3450 _ 89. D0
        mov     dword [ebp-28H], eax                    ; 3452 _ 89. 45, D8
        mov     eax, dword [ebp-10H]                    ; 3455 _ 8B. 45, F0
        mov     eax, dword [eax+10H]                    ; 3458 _ 8B. 40, 10
        mov     edx, dword [ebp+18H]                    ; 345B _ 8B. 55, 18
        sub     edx, eax                                ; 345E _ 29. C2
        mov     eax, edx                                ; 3460 _ 89. D0
        mov     dword [ebp-24H], eax                    ; 3462 _ 89. 45, DC
        cmp     dword [ebp-30H], 0                      ; 3465 _ 83. 7D, D0, 00
        jns     ?_181                                   ; 3469 _ 79, 07
        mov     dword [ebp-30H], 0                      ; 346B _ C7. 45, D0, 00000000
?_181:  cmp     dword [ebp-2CH], 0                      ; 3472 _ 83. 7D, D4, 00
        jns     ?_182                                   ; 3476 _ 79, 07
        mov     dword [ebp-2CH], 0                      ; 3478 _ C7. 45, D4, 00000000
?_182:  mov     eax, dword [ebp-10H]                    ; 347F _ 8B. 45, F0
        mov     eax, dword [eax+4H]                     ; 3482 _ 8B. 40, 04
        cmp     dword [ebp-28H], eax                    ; 3485 _ 39. 45, D8
        jle     ?_183                                   ; 3488 _ 7E, 09
        mov     eax, dword [ebp-10H]                    ; 348A _ 8B. 45, F0
        mov     eax, dword [eax+4H]                     ; 348D _ 8B. 40, 04
        mov     dword [ebp-28H], eax                    ; 3490 _ 89. 45, D8
?_183:  mov     eax, dword [ebp-10H]                    ; 3493 _ 8B. 45, F0
        mov     eax, dword [eax+8H]                     ; 3496 _ 8B. 40, 08
        cmp     dword [ebp-24H], eax                    ; 3499 _ 39. 45, DC
        jle     ?_184                                   ; 349C _ 7E, 09
        mov     eax, dword [ebp-10H]                    ; 349E _ 8B. 45, F0
        mov     eax, dword [eax+8H]                     ; 34A1 _ 8B. 40, 08
        mov     dword [ebp-24H], eax                    ; 34A4 _ 89. 45, DC
?_184:  mov     eax, dword [ebp-2CH]                    ; 34A7 _ 8B. 45, D4
        mov     dword [ebp-1CH], eax                    ; 34AA _ 89. 45, E4
        jmp     ?_189                                   ; 34AD _ EB, 7A

?_185:  mov     eax, dword [ebp-10H]                    ; 34AF _ 8B. 45, F0
        mov     edx, dword [eax+10H]                    ; 34B2 _ 8B. 50, 10
        mov     eax, dword [ebp-1CH]                    ; 34B5 _ 8B. 45, E4
        add     eax, edx                                ; 34B8 _ 01. D0
        mov     dword [ebp-8H], eax                     ; 34BA _ 89. 45, F8
        mov     eax, dword [ebp-30H]                    ; 34BD _ 8B. 45, D0
        mov     dword [ebp-18H], eax                    ; 34C0 _ 89. 45, E8
        jmp     ?_188                                   ; 34C3 _ EB, 58

?_186:  mov     eax, dword [ebp-10H]                    ; 34C5 _ 8B. 45, F0
        mov     edx, dword [eax+0CH]                    ; 34C8 _ 8B. 50, 0C
        mov     eax, dword [ebp-18H]                    ; 34CB _ 8B. 45, E8
        add     eax, edx                                ; 34CE _ 01. D0
        mov     dword [ebp-4H], eax                     ; 34D0 _ 89. 45, FC
        mov     eax, dword [ebp-10H]                    ; 34D3 _ 8B. 45, F0
        mov     eax, dword [eax+4H]                     ; 34D6 _ 8B. 40, 04
        imul    eax, dword [ebp-1CH]                    ; 34D9 _ 0F AF. 45, E4
        mov     edx, eax                                ; 34DD _ 89. C2
        mov     eax, dword [ebp-18H]                    ; 34DF _ 8B. 45, E8
        add     eax, edx                                ; 34E2 _ 01. D0
        mov     edx, eax                                ; 34E4 _ 89. C2
        mov     eax, dword [ebp-0CH]                    ; 34E6 _ 8B. 45, F4
        add     eax, edx                                ; 34E9 _ 01. D0
        movzx   eax, byte [eax]                         ; 34EB _ 0F B6. 00
        movzx   edx, al                                 ; 34EE _ 0F B6. D0
        mov     eax, dword [ebp-10H]                    ; 34F1 _ 8B. 45, F0
        mov     eax, dword [eax+14H]                    ; 34F4 _ 8B. 40, 14
        cmp     edx, eax                                ; 34F7 _ 39. C2
        jz      ?_187                                   ; 34F9 _ 74, 1E
        mov     eax, dword [ebp+8H]                     ; 34FB _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 34FE _ 8B. 40, 08
        imul    eax, dword [ebp-8H]                     ; 3501 _ 0F AF. 45, F8
        mov     edx, eax                                ; 3505 _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 3507 _ 8B. 45, FC
        add     eax, edx                                ; 350A _ 01. D0
        mov     edx, eax                                ; 350C _ 89. C2
        mov     eax, dword [ebp-14H]                    ; 350E _ 8B. 45, EC
        add     edx, eax                                ; 3511 _ 01. C2
        movzx   eax, byte [ebp-31H]                     ; 3513 _ 0F B6. 45, CF
        mov     byte [edx], al                          ; 3517 _ 88. 02
?_187:  add     dword [ebp-18H], 1                      ; 3519 _ 83. 45, E8, 01
?_188:  mov     eax, dword [ebp-18H]                    ; 351D _ 8B. 45, E8
        cmp     eax, dword [ebp-28H]                    ; 3520 _ 3B. 45, D8
        jl      ?_186                                   ; 3523 _ 7C, A0
        add     dword [ebp-1CH], 1                      ; 3525 _ 83. 45, E4, 01
?_189:  mov     eax, dword [ebp-1CH]                    ; 3529 _ 8B. 45, E4
        cmp     eax, dword [ebp-24H]                    ; 352C _ 3B. 45, DC
        jl      ?_185                                   ; 352F _ 0F 8C, FFFFFF7A
        add     dword [ebp-20H], 1                      ; 3535 _ 83. 45, E0, 01
?_190:  mov     eax, dword [ebp+8H]                     ; 3539 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 353C _ 8B. 40, 10
        cmp     dword [ebp-20H], eax                    ; 353F _ 39. 45, E0
        jle     ?_180                                   ; 3542 _ 0F 8E, FFFFFEB1
        nop                                             ; 3548 _ 90
        leave                                           ; 3549 _ C9
        ret                                             ; 354A _ C3
; sheet_refreshmap End of function

init_pit:; Function begin
        push    ebp                                     ; 354B _ 55
        mov     ebp, esp                                ; 354C _ 89. E5
        sub     esp, 24                                 ; 354E _ 83. EC, 18
        sub     esp, 8                                  ; 3551 _ 83. EC, 08
        push    52                                      ; 3554 _ 6A, 34
        push    67                                      ; 3556 _ 6A, 43
        call    io_out8                                 ; 3558 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 355D _ 83. C4, 10
        sub     esp, 8                                  ; 3560 _ 83. EC, 08
        push    156                                     ; 3563 _ 68, 0000009C
        push    64                                      ; 3568 _ 6A, 40
        call    io_out8                                 ; 356A _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 356F _ 83. C4, 10
        sub     esp, 8                                  ; 3572 _ 83. EC, 08
        push    46                                      ; 3575 _ 6A, 2E
        push    64                                      ; 3577 _ 6A, 40
        call    io_out8                                 ; 3579 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 357E _ 83. C4, 10
        mov     dword [timerctl], 0                     ; 3581 _ C7. 05, 000002A0(d), 00000000
        mov     dword [ebp-0CH], 0                      ; 358B _ C7. 45, F4, 00000000
        jmp     ?_192                                   ; 3592 _ EB, 26

?_191:  mov     eax, dword [ebp-0CH]                    ; 3594 _ 8B. 45, F4
        shl     eax, 4                                  ; 3597 _ C1. E0, 04
        add     eax, ?_262                              ; 359A _ 05, 000002A8(d)
        mov     dword [eax], 0                          ; 359F _ C7. 00, 00000000
        mov     eax, dword [ebp-0CH]                    ; 35A5 _ 8B. 45, F4
        shl     eax, 4                                  ; 35A8 _ C1. E0, 04
        add     eax, ?_263                              ; 35AB _ 05, 000002AC(d)
        mov     dword [eax], 0                          ; 35B0 _ C7. 00, 00000000
        add     dword [ebp-0CH], 1                      ; 35B6 _ 83. 45, F4, 01
?_192:  cmp     dword [ebp-0CH], 499                    ; 35BA _ 81. 7D, F4, 000001F3
        jle     ?_191                                   ; 35C1 _ 7E, D1
        nop                                             ; 35C3 _ 90
        leave                                           ; 35C4 _ C9
        ret                                             ; 35C5 _ C3
; init_pit End of function

timer_alloc:; Function begin
        push    ebp                                     ; 35C6 _ 55
        mov     ebp, esp                                ; 35C7 _ 89. E5
        sub     esp, 16                                 ; 35C9 _ 83. EC, 10
        mov     dword [ebp-4H], 0                       ; 35CC _ C7. 45, FC, 00000000
        jmp     ?_195                                   ; 35D3 _ EB, 36

?_193:  mov     eax, dword [ebp-4H]                     ; 35D5 _ 8B. 45, FC
        shl     eax, 4                                  ; 35D8 _ C1. E0, 04
        add     eax, ?_262                              ; 35DB _ 05, 000002A8(d)
        mov     eax, dword [eax]                        ; 35E0 _ 8B. 00
        test    eax, eax                                ; 35E2 _ 85. C0
        jnz     ?_194                                   ; 35E4 _ 75, 21
        mov     eax, dword [ebp-4H]                     ; 35E6 _ 8B. 45, FC
        shl     eax, 4                                  ; 35E9 _ C1. E0, 04
        add     eax, ?_262                              ; 35EC _ 05, 000002A8(d)
        mov     dword [eax], 1                          ; 35F1 _ C7. 00, 00000001
        mov     eax, dword [ebp-4H]                     ; 35F7 _ 8B. 45, FC
        shl     eax, 4                                  ; 35FA _ C1. E0, 04
        add     eax, timerctl                           ; 35FD _ 05, 000002A0(d)
        add     eax, 4                                  ; 3602 _ 83. C0, 04
        jmp     ?_196                                   ; 3605 _ EB, 12

?_194:  add     dword [ebp-4H], 1                       ; 3607 _ 83. 45, FC, 01
?_195:  cmp     dword [ebp-4H], 499                     ; 360B _ 81. 7D, FC, 000001F3
        jle     ?_193                                   ; 3612 _ 7E, C1
        mov     eax, 0                                  ; 3614 _ B8, 00000000
?_196:  leave                                           ; 3619 _ C9
        ret                                             ; 361A _ C3
; timer_alloc End of function

timer_free:; Function begin
        push    ebp                                     ; 361B _ 55
        mov     ebp, esp                                ; 361C _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 361E _ 8B. 45, 08
        mov     dword [eax+4H], 0                       ; 3621 _ C7. 40, 04, 00000000
        nop                                             ; 3628 _ 90
        pop     ebp                                     ; 3629 _ 5D
        ret                                             ; 362A _ C3
; timer_free End of function

timer_init:; Function begin
        push    ebp                                     ; 362B _ 55
        mov     ebp, esp                                ; 362C _ 89. E5
        sub     esp, 4                                  ; 362E _ 83. EC, 04
        mov     eax, dword [ebp+10H]                    ; 3631 _ 8B. 45, 10
        mov     byte [ebp-4H], al                       ; 3634 _ 88. 45, FC
        mov     eax, dword [ebp+8H]                     ; 3637 _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 363A _ 8B. 55, 0C
        mov     dword [eax+8H], edx                     ; 363D _ 89. 50, 08
        mov     eax, dword [ebp+8H]                     ; 3640 _ 8B. 45, 08
        movzx   edx, byte [ebp-4H]                      ; 3643 _ 0F B6. 55, FC
        mov     byte [eax+0CH], dl                      ; 3647 _ 88. 50, 0C
        nop                                             ; 364A _ 90
        leave                                           ; 364B _ C9
        ret                                             ; 364C _ C3
; timer_init End of function

timer_setTime:; Function begin
        push    ebp                                     ; 364D _ 55
        mov     ebp, esp                                ; 364E _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 3650 _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 3653 _ 8B. 55, 0C
        mov     dword [eax], edx                        ; 3656 _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 3658 _ 8B. 45, 08
        mov     dword [eax+4H], 2                       ; 365B _ C7. 40, 04, 00000002
        nop                                             ; 3662 _ 90
        pop     ebp                                     ; 3663 _ 5D
        ret                                             ; 3664 _ C3
; timer_setTime End of function

timer_settime:; Function begin
        push    ebp                                     ; 3665 _ 55
        mov     ebp, esp                                ; 3666 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 3668 _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 366B _ 8B. 55, 0C
        mov     dword [eax], edx                        ; 366E _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 3670 _ 8B. 45, 08
        mov     dword [eax+4H], 2                       ; 3673 _ C7. 40, 04, 00000002
        nop                                             ; 367A _ 90
        pop     ebp                                     ; 367B _ 5D
        ret                                             ; 367C _ C3
; timer_settime End of function

getTimerController:; Function begin
        push    ebp                                     ; 367D _ 55
        mov     ebp, esp                                ; 367E _ 89. E5
        mov     eax, timerctl                           ; 3680 _ B8, 000002A0(d)
        pop     ebp                                     ; 3685 _ 5D
        ret                                             ; 3686 _ C3
; getTimerController End of function

intHandlerForTimer:; Function begin
        push    ebp                                     ; 3687 _ 55
        mov     ebp, esp                                ; 3688 _ 89. E5
        push    ebx                                     ; 368A _ 53
        sub     esp, 20                                 ; 368B _ 83. EC, 14
        sub     esp, 8                                  ; 368E _ 83. EC, 08
        push    32                                      ; 3691 _ 6A, 20
        push    32                                      ; 3693 _ 6A, 20
        call    io_out8                                 ; 3695 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 369A _ 83. C4, 10
        mov     eax, dword [timerctl]                   ; 369D _ A1, 000002A0(d)
        add     eax, 1                                  ; 36A2 _ 83. C0, 01
        mov     dword [timerctl], eax                   ; 36A5 _ A3, 000002A0(d)
        mov     dword [ebp-10H], 0                      ; 36AA _ C7. 45, F0, 00000000
        mov     dword [ebp-0CH], 0                      ; 36B1 _ C7. 45, F4, 00000000
        jmp     ?_200                                   ; 36B8 _ E9, 000000AD

?_197:  mov     eax, dword [ebp-0CH]                    ; 36BD _ 8B. 45, F4
        shl     eax, 4                                  ; 36C0 _ C1. E0, 04
        add     eax, ?_262                              ; 36C3 _ 05, 000002A8(d)
        mov     eax, dword [eax]                        ; 36C8 _ 8B. 00
        cmp     eax, 2                                  ; 36CA _ 83. F8, 02
        jne     ?_198                                   ; 36CD _ 0F 85, 00000088
        mov     eax, dword [ebp-0CH]                    ; 36D3 _ 8B. 45, F4
        shl     eax, 4                                  ; 36D6 _ C1. E0, 04
        add     eax, ?_261                              ; 36D9 _ 05, 000002A4(d)
        mov     eax, dword [eax]                        ; 36DE _ 8B. 00
        lea     edx, [eax-1H]                           ; 36E0 _ 8D. 50, FF
        mov     eax, dword [ebp-0CH]                    ; 36E3 _ 8B. 45, F4
        shl     eax, 4                                  ; 36E6 _ C1. E0, 04
        add     eax, ?_261                              ; 36E9 _ 05, 000002A4(d)
        mov     dword [eax], edx                        ; 36EE _ 89. 10
        mov     eax, dword [ebp-0CH]                    ; 36F0 _ 8B. 45, F4
        shl     eax, 4                                  ; 36F3 _ C1. E0, 04
        add     eax, ?_261                              ; 36F6 _ 05, 000002A4(d)
        mov     eax, dword [eax]                        ; 36FB _ 8B. 00
        test    eax, eax                                ; 36FD _ 85. C0
        jnz     ?_198                                   ; 36FF _ 75, 5A
        mov     eax, dword [ebp-0CH]                    ; 3701 _ 8B. 45, F4
        shl     eax, 4                                  ; 3704 _ C1. E0, 04
        add     eax, ?_262                              ; 3707 _ 05, 000002A8(d)
        mov     dword [eax], 1                          ; 370C _ C7. 00, 00000001
        mov     eax, dword [ebp-0CH]                    ; 3712 _ 8B. 45, F4
        shl     eax, 4                                  ; 3715 _ C1. E0, 04
        add     eax, ?_264                              ; 3718 _ 05, 000002B0(d)
        movzx   eax, byte [eax]                         ; 371D _ 0F B6. 00
        movzx   edx, al                                 ; 3720 _ 0F B6. D0
        mov     eax, dword [ebp-0CH]                    ; 3723 _ 8B. 45, F4
        shl     eax, 4                                  ; 3726 _ C1. E0, 04
        add     eax, ?_263                              ; 3729 _ 05, 000002AC(d)
        mov     eax, dword [eax]                        ; 372E _ 8B. 00
        sub     esp, 8                                  ; 3730 _ 83. EC, 08
        push    edx                                     ; 3733 _ 52
        push    eax                                     ; 3734 _ 50
        call    fifo8_put                               ; 3735 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 373A _ 83. C4, 10
        mov     eax, dword [ebp-0CH]                    ; 373D _ 8B. 45, F4
        shl     eax, 4                                  ; 3740 _ C1. E0, 04
        add     eax, timerctl                           ; 3743 _ 05, 000002A0(d)
        lea     ebx, [eax+4H]                           ; 3748 _ 8D. 58, 04
        call    getTaskTimer                            ; 374B _ E8, FFFFFFFC(rel)
        cmp     ebx, eax                                ; 3750 _ 39. C3
        jnz     ?_198                                   ; 3752 _ 75, 07
        mov     dword [ebp-10H], 1                      ; 3754 _ C7. 45, F0, 00000001
?_198:  cmp     dword [ebp-10H], 1                      ; 375B _ 83. 7D, F0, 01
        jnz     ?_199                                   ; 375F _ 75, 05
        call    task_switch                             ; 3761 _ E8, FFFFFFFC(rel)
?_199:  add     dword [ebp-0CH], 1                      ; 3766 _ 83. 45, F4, 01
?_200:  cmp     dword [ebp-0CH], 499                    ; 376A _ 81. 7D, F4, 000001F3
        jle     ?_197                                   ; 3771 _ 0F 8E, FFFFFF46
        nop                                             ; 3777 _ 90
        mov     ebx, dword [ebp-4H]                     ; 3778 _ 8B. 5D, FC
        leave                                           ; 377B _ C9
        ret                                             ; 377C _ C3
; intHandlerForTimer End of function

fifo8_init:; Function begin
        push    ebp                                     ; 377D _ 55
        mov     ebp, esp                                ; 377E _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 3780 _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 3783 _ 8B. 55, 0C
        mov     dword [eax+0CH], edx                    ; 3786 _ 89. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 3789 _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 378C _ 8B. 55, 10
        mov     dword [eax], edx                        ; 378F _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 3791 _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 3794 _ 8B. 55, 0C
        mov     dword [eax+10H], edx                    ; 3797 _ 89. 50, 10
        mov     eax, dword [ebp+8H]                     ; 379A _ 8B. 45, 08
        mov     dword [eax+4H], 0                       ; 379D _ C7. 40, 04, 00000000
        mov     eax, dword [ebp+8H]                     ; 37A4 _ 8B. 45, 08
        mov     dword [eax+8H], 0                       ; 37A7 _ C7. 40, 08, 00000000
        mov     eax, dword [ebp+8H]                     ; 37AE _ 8B. 45, 08
        mov     dword [eax+14H], 0                      ; 37B1 _ C7. 40, 14, 00000000
        mov     eax, dword [ebp+8H]                     ; 37B8 _ 8B. 45, 08
        mov     edx, dword [ebp+14H]                    ; 37BB _ 8B. 55, 14
        mov     dword [eax+18H], edx                    ; 37BE _ 89. 50, 18
        nop                                             ; 37C1 _ 90
        pop     ebp                                     ; 37C2 _ 5D
        ret                                             ; 37C3 _ C3
; fifo8_init End of function

fifo8_put:; Function begin
        push    ebp                                     ; 37C4 _ 55
        mov     ebp, esp                                ; 37C5 _ 89. E5
        sub     esp, 24                                 ; 37C7 _ 83. EC, 18
        mov     eax, dword [ebp+0CH]                    ; 37CA _ 8B. 45, 0C
        mov     byte [ebp-0CH], al                      ; 37CD _ 88. 45, F4
        cmp     dword [ebp+8H], 0                       ; 37D0 _ 83. 7D, 08, 00
        jnz     ?_201                                   ; 37D4 _ 75, 0A
        mov     eax, 4294967295                         ; 37D6 _ B8, FFFFFFFF
        jmp     ?_205                                   ; 37DB _ E9, 000000A0

?_201:  mov     eax, dword [ebp+8H]                     ; 37E0 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 37E3 _ 8B. 40, 10
        test    eax, eax                                ; 37E6 _ 85. C0
        jnz     ?_202                                   ; 37E8 _ 75, 18
        mov     eax, dword [ebp+8H]                     ; 37EA _ 8B. 45, 08
        mov     eax, dword [eax+14H]                    ; 37ED _ 8B. 40, 14
        or      eax, 01H                                ; 37F0 _ 83. C8, 01
        mov     edx, eax                                ; 37F3 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 37F5 _ 8B. 45, 08
        mov     dword [eax+14H], edx                    ; 37F8 _ 89. 50, 14
        mov     eax, 4294967295                         ; 37FB _ B8, FFFFFFFF
        jmp     ?_205                                   ; 3800 _ EB, 7E

?_202:  mov     eax, dword [ebp+8H]                     ; 3802 _ 8B. 45, 08
        mov     edx, dword [eax]                        ; 3805 _ 8B. 10
        mov     eax, dword [ebp+8H]                     ; 3807 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 380A _ 8B. 40, 08
        add     edx, eax                                ; 380D _ 01. C2
        movzx   eax, byte [ebp-0CH]                     ; 380F _ 0F B6. 45, F4
        mov     byte [edx], al                          ; 3813 _ 88. 02
        mov     eax, dword [ebp+8H]                     ; 3815 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 3818 _ 8B. 40, 08
        lea     edx, [eax+1H]                           ; 381B _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 381E _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 3821 _ 89. 50, 08
        mov     eax, dword [ebp+8H]                     ; 3824 _ 8B. 45, 08
        mov     edx, dword [eax+8H]                     ; 3827 _ 8B. 50, 08
        mov     eax, dword [ebp+8H]                     ; 382A _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 382D _ 8B. 40, 0C
        cmp     edx, eax                                ; 3830 _ 39. C2
        jl      ?_203                                   ; 3832 _ 7C, 0A
        mov     eax, dword [ebp+8H]                     ; 3834 _ 8B. 45, 08
        mov     dword [eax+8H], 0                       ; 3837 _ C7. 40, 08, 00000000
?_203:  mov     eax, dword [ebp+8H]                     ; 383E _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 3841 _ 8B. 40, 10
        lea     edx, [eax-1H]                           ; 3844 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 3847 _ 8B. 45, 08
        mov     dword [eax+10H], edx                    ; 384A _ 89. 50, 10
        mov     eax, dword [ebp+8H]                     ; 384D _ 8B. 45, 08
        mov     eax, dword [eax+18H]                    ; 3850 _ 8B. 40, 18
        test    eax, eax                                ; 3853 _ 85. C0
        jz      ?_204                                   ; 3855 _ 74, 24
        mov     eax, dword [ebp+8H]                     ; 3857 _ 8B. 45, 08
        mov     eax, dword [eax+18H]                    ; 385A _ 8B. 40, 18
        mov     eax, dword [eax+4H]                     ; 385D _ 8B. 40, 04
        cmp     eax, 2                                  ; 3860 _ 83. F8, 02
        jz      ?_204                                   ; 3863 _ 74, 16
        mov     eax, dword [ebp+8H]                     ; 3865 _ 8B. 45, 08
        mov     eax, dword [eax+18H]                    ; 3868 _ 8B. 40, 18
        sub     esp, 4                                  ; 386B _ 83. EC, 04
        push    0                                       ; 386E _ 6A, 00
        push    -1                                      ; 3870 _ 6A, FF
        push    eax                                     ; 3872 _ 50
        call    task_run                                ; 3873 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 3878 _ 83. C4, 10
?_204:  mov     eax, 1                                  ; 387B _ B8, 00000001
?_205:  leave                                           ; 3880 _ C9
        ret                                             ; 3881 _ C3
; fifo8_put End of function

fifo8_get:; Function begin
        push    ebp                                     ; 3882 _ 55
        mov     ebp, esp                                ; 3883 _ 89. E5
        sub     esp, 16                                 ; 3885 _ 83. EC, 10
        mov     eax, dword [ebp+8H]                     ; 3888 _ 8B. 45, 08
        mov     edx, dword [eax+10H]                    ; 388B _ 8B. 50, 10
        mov     eax, dword [ebp+8H]                     ; 388E _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 3891 _ 8B. 40, 0C
        cmp     edx, eax                                ; 3894 _ 39. C2
        jnz     ?_206                                   ; 3896 _ 75, 07
        mov     eax, 4294967295                         ; 3898 _ B8, FFFFFFFF
        jmp     ?_208                                   ; 389D _ EB, 51

?_206:  mov     eax, dword [ebp+8H]                     ; 389F _ 8B. 45, 08
        mov     edx, dword [eax]                        ; 38A2 _ 8B. 10
        mov     eax, dword [ebp+8H]                     ; 38A4 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 38A7 _ 8B. 40, 04
        add     eax, edx                                ; 38AA _ 01. D0
        movzx   eax, byte [eax]                         ; 38AC _ 0F B6. 00
        movzx   eax, al                                 ; 38AF _ 0F B6. C0
        mov     dword [ebp-4H], eax                     ; 38B2 _ 89. 45, FC
        mov     eax, dword [ebp+8H]                     ; 38B5 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 38B8 _ 8B. 40, 04
        lea     edx, [eax+1H]                           ; 38BB _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 38BE _ 8B. 45, 08
        mov     dword [eax+4H], edx                     ; 38C1 _ 89. 50, 04
        mov     eax, dword [ebp+8H]                     ; 38C4 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 38C7 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 38CA _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 38CD _ 8B. 40, 0C
        cmp     edx, eax                                ; 38D0 _ 39. C2
        jl      ?_207                                   ; 38D2 _ 7C, 0A
        mov     eax, dword [ebp+8H]                     ; 38D4 _ 8B. 45, 08
        mov     dword [eax+4H], 0                       ; 38D7 _ C7. 40, 04, 00000000
?_207:  mov     eax, dword [ebp+8H]                     ; 38DE _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 38E1 _ 8B. 40, 10
        lea     edx, [eax+1H]                           ; 38E4 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 38E7 _ 8B. 45, 08
        mov     dword [eax+10H], edx                    ; 38EA _ 89. 50, 10
        mov     eax, dword [ebp-4H]                     ; 38ED _ 8B. 45, FC
?_208:  leave                                           ; 38F0 _ C9
        ret                                             ; 38F1 _ C3
; fifo8_get End of function

fifo8_status:; Function begin
        push    ebp                                     ; 38F2 _ 55
        mov     ebp, esp                                ; 38F3 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 38F5 _ 8B. 45, 08
        mov     edx, dword [eax+0CH]                    ; 38F8 _ 8B. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 38FB _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 38FE _ 8B. 40, 10
        sub     edx, eax                                ; 3901 _ 29. C2
        mov     eax, edx                                ; 3903 _ 89. D0
        pop     ebp                                     ; 3905 _ 5D
        ret                                             ; 3906 _ C3
; fifo8_status End of function

set_segmdesc:; Function begin
        push    ebp                                     ; 3907 _ 55
        mov     ebp, esp                                ; 3908 _ 89. E5
        cmp     dword [ebp+0CH], 1048575                ; 390A _ 81. 7D, 0C, 000FFFFF
        jbe     ?_209                                   ; 3911 _ 76, 10
        or      dword [ebp+14H], 8000H                  ; 3913 _ 81. 4D, 14, 00008000
        mov     eax, dword [ebp+0CH]                    ; 391A _ 8B. 45, 0C
        shr     eax, 12                                 ; 391D _ C1. E8, 0C
        mov     dword [ebp+0CH], eax                    ; 3920 _ 89. 45, 0C
?_209:  mov     eax, dword [ebp+0CH]                    ; 3923 _ 8B. 45, 0C
        mov     edx, eax                                ; 3926 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 3928 _ 8B. 45, 08
        mov     word [eax], dx                          ; 392B _ 66: 89. 10
        mov     eax, dword [ebp+10H]                    ; 392E _ 8B. 45, 10
        mov     edx, eax                                ; 3931 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 3933 _ 8B. 45, 08
        mov     word [eax+2H], dx                       ; 3936 _ 66: 89. 50, 02
        mov     eax, dword [ebp+10H]                    ; 393A _ 8B. 45, 10
        sar     eax, 16                                 ; 393D _ C1. F8, 10
        mov     edx, eax                                ; 3940 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 3942 _ 8B. 45, 08
        mov     byte [eax+4H], dl                       ; 3945 _ 88. 50, 04
        mov     eax, dword [ebp+14H]                    ; 3948 _ 8B. 45, 14
        mov     edx, eax                                ; 394B _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 394D _ 8B. 45, 08
        mov     byte [eax+5H], dl                       ; 3950 _ 88. 50, 05
        mov     eax, dword [ebp+0CH]                    ; 3953 _ 8B. 45, 0C
        shr     eax, 16                                 ; 3956 _ C1. E8, 10
        and     eax, 0FH                                ; 3959 _ 83. E0, 0F
        mov     edx, eax                                ; 395C _ 89. C2
        mov     eax, dword [ebp+14H]                    ; 395E _ 8B. 45, 14
        sar     eax, 8                                  ; 3961 _ C1. F8, 08
        and     eax, 0FFFFFFF0H                         ; 3964 _ 83. E0, F0
        or      eax, edx                                ; 3967 _ 09. D0
        mov     edx, eax                                ; 3969 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 396B _ 8B. 45, 08
        mov     byte [eax+6H], dl                       ; 396E _ 88. 50, 06
        mov     eax, dword [ebp+10H]                    ; 3971 _ 8B. 45, 10
        shr     eax, 24                                 ; 3974 _ C1. E8, 18
        mov     edx, eax                                ; 3977 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 3979 _ 8B. 45, 08
        mov     byte [eax+7H], dl                       ; 397C _ 88. 50, 07
        nop                                             ; 397F _ 90
        pop     ebp                                     ; 3980 _ 5D
        ret                                             ; 3981 _ C3
; set_segmdesc End of function

getTaskTimer:; Function begin
        push    ebp                                     ; 3982 _ 55
        mov     ebp, esp                                ; 3983 _ 89. E5
        mov     eax, dword [task_timer]                 ; 3985 _ A1, 000021E4(d)
        pop     ebp                                     ; 398A _ 5D
        ret                                             ; 398B _ C3
; getTaskTimer End of function

init_task_level:; Function begin
        push    ebp                                     ; 398C _ 55
        mov     ebp, esp                                ; 398D _ 89. E5
        sub     esp, 16                                 ; 398F _ 83. EC, 10
        mov     edx, dword [taskctl]                    ; 3992 _ 8B. 15, 000021E8(d)
        mov     eax, dword [ebp+8H]                     ; 3998 _ 8B. 45, 08
        imul    eax, eax, 28                            ; 399B _ 6B. C0, 1C
        add     eax, edx                                ; 399E _ 01. D0
        add     eax, 8                                  ; 39A0 _ 83. C0, 08
        mov     dword [eax], 0                          ; 39A3 _ C7. 00, 00000000
        mov     edx, dword [taskctl]                    ; 39A9 _ 8B. 15, 000021E8(d)
        mov     eax, dword [ebp+8H]                     ; 39AF _ 8B. 45, 08
        imul    eax, eax, 28                            ; 39B2 _ 6B. C0, 1C
        add     eax, edx                                ; 39B5 _ 01. D0
        add     eax, 12                                 ; 39B7 _ 83. C0, 0C
        mov     dword [eax], 0                          ; 39BA _ C7. 00, 00000000
        mov     dword [ebp-4H], 0                       ; 39C0 _ C7. 45, FC, 00000000
        jmp     ?_211                                   ; 39C7 _ EB, 1A

?_210:  mov     eax, dword [taskctl]                    ; 39C9 _ A1, 000021E8(d)
        mov     edx, dword [ebp-4H]                     ; 39CE _ 8B. 55, FC
        shl     edx, 5                                  ; 39D1 _ C1. E2, 05
        add     eax, edx                                ; 39D4 _ 01. D0
        add     eax, 16                                 ; 39D6 _ 83. C0, 10
        mov     dword [eax], 0                          ; 39D9 _ C7. 00, 00000000
        add     dword [ebp-4H], 1                       ; 39DF _ 83. 45, FC, 01
?_211:  cmp     dword [ebp-4H], 4                       ; 39E3 _ 83. 7D, FC, 04
        jle     ?_210                                   ; 39E7 _ 7E, E0
        nop                                             ; 39E9 _ 90
        leave                                           ; 39EA _ C9
        ret                                             ; 39EB _ C3
; init_task_level End of function

task_init:; Function begin
        push    ebp                                     ; 39EC _ 55
        mov     ebp, esp                                ; 39ED _ 89. E5
        sub     esp, 24                                 ; 39EF _ 83. EC, 18
        call    get_addr_gdt                            ; 39F2 _ E8, FFFFFFFC(rel)
        mov     dword [ebp-10H], eax                    ; 39F7 _ 89. 45, F0
        sub     esp, 8                                  ; 39FA _ 83. EC, 08
        push    692                                     ; 39FD _ 68, 000002B4
        push    dword [ebp+8H]                          ; 3A02 _ FF. 75, 08
        call    memman_alloc_4K                         ; 3A05 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 3A0A _ 83. C4, 10
        mov     dword [taskctl], eax                    ; 3A0D _ A3, 000021E8(d)
        mov     dword [ebp-14H], 0                      ; 3A12 _ C7. 45, EC, 00000000
        jmp     ?_213                                   ; 3A19 _ EB, 73

?_212:  mov     edx, dword [taskctl]                    ; 3A1B _ 8B. 15, 000021E8(d)
        mov     eax, dword [ebp-14H]                    ; 3A21 _ 8B. 45, EC
        imul    eax, eax, 124                           ; 3A24 _ 6B. C0, 7C
        add     eax, edx                                ; 3A27 _ 01. D0
        add     eax, 96                                 ; 3A29 _ 83. C0, 60
        mov     dword [eax], 0                          ; 3A2C _ C7. 00, 00000000
        mov     eax, dword [ebp-14H]                    ; 3A32 _ 8B. 45, EC
        add     eax, 7                                  ; 3A35 _ 83. C0, 07
        mov     ecx, dword [taskctl]                    ; 3A38 _ 8B. 0D, 000021E8(d)
        lea     edx, [eax*8]                            ; 3A3E _ 8D. 14 C5, 00000000
        mov     eax, dword [ebp-14H]                    ; 3A45 _ 8B. 45, EC
        imul    eax, eax, 124                           ; 3A48 _ 6B. C0, 7C
        add     eax, ecx                                ; 3A4B _ 01. C8
        add     eax, 92                                 ; 3A4D _ 83. C0, 5C
        mov     dword [eax], edx                        ; 3A50 _ 89. 10
        mov     eax, dword [taskctl]                    ; 3A52 _ A1, 000021E8(d)
        mov     edx, dword [ebp-14H]                    ; 3A57 _ 8B. 55, EC
        imul    edx, edx, 124                           ; 3A5A _ 6B. D2, 7C
        add     edx, 96                                 ; 3A5D _ 83. C2, 60
        add     eax, edx                                ; 3A60 _ 01. D0
        add     eax, 16                                 ; 3A62 _ 83. C0, 10
        mov     ecx, eax                                ; 3A65 _ 89. C1
        mov     eax, dword [ebp-14H]                    ; 3A67 _ 8B. 45, EC
        add     eax, 7                                  ; 3A6A _ 83. C0, 07
        lea     edx, [eax*8]                            ; 3A6D _ 8D. 14 C5, 00000000
        mov     eax, dword [ebp-10H]                    ; 3A74 _ 8B. 45, F0
        add     eax, edx                                ; 3A77 _ 01. D0
        push    137                                     ; 3A79 _ 68, 00000089
        push    ecx                                     ; 3A7E _ 51
        push    103                                     ; 3A7F _ 6A, 67
        push    eax                                     ; 3A81 _ 50
        call    set_segmdesc                            ; 3A82 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 3A87 _ 83. C4, 10
        add     dword [ebp-14H], 1                      ; 3A8A _ 83. 45, EC, 01
?_213:  cmp     dword [ebp-14H], 4                      ; 3A8E _ 83. 7D, EC, 04
        jle     ?_212                                   ; 3A92 _ 7E, 87
        call    task_alloc                              ; 3A94 _ E8, FFFFFFFC(rel)
        mov     dword [ebp-0CH], eax                    ; 3A99 _ 89. 45, F4
        mov     eax, dword [ebp-0CH]                    ; 3A9C _ 8B. 45, F4
        mov     dword [eax+4H], 2                       ; 3A9F _ C7. 40, 04, 00000002
        mov     eax, dword [ebp-0CH]                    ; 3AA6 _ 8B. 45, F4
        mov     dword [eax+8H], 10                      ; 3AA9 _ C7. 40, 08, 0000000A
        mov     eax, dword [ebp-0CH]                    ; 3AB0 _ 8B. 45, F4
        mov     dword [eax+0CH], 0                      ; 3AB3 _ C7. 40, 0C, 00000000
        sub     esp, 12                                 ; 3ABA _ 83. EC, 0C
        push    dword [ebp-0CH]                         ; 3ABD _ FF. 75, F4
        call    task_add                                ; 3AC0 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 3AC5 _ 83. C4, 10
        call    task_switchsub                          ; 3AC8 _ E8, FFFFFFFC(rel)
        mov     eax, dword [ebp-0CH]                    ; 3ACD _ 8B. 45, F4
        mov     eax, dword [eax]                        ; 3AD0 _ 8B. 00
        sub     esp, 12                                 ; 3AD2 _ 83. EC, 0C
        push    eax                                     ; 3AD5 _ 50
        call    load_tr                                 ; 3AD6 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 3ADB _ 83. C4, 10
        call    timer_alloc                             ; 3ADE _ E8, FFFFFFFC(rel)
        mov     dword [task_timer], eax                 ; 3AE3 _ A3, 000021E4(d)
        mov     eax, dword [ebp-0CH]                    ; 3AE8 _ 8B. 45, F4
        mov     eax, dword [eax+8H]                     ; 3AEB _ 8B. 40, 08
        mov     edx, eax                                ; 3AEE _ 89. C2
        mov     eax, dword [task_timer]                 ; 3AF0 _ A1, 000021E4(d)
        sub     esp, 8                                  ; 3AF5 _ 83. EC, 08
        push    edx                                     ; 3AF8 _ 52
        push    eax                                     ; 3AF9 _ 50
        call    timer_setTime                           ; 3AFA _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 3AFF _ 83. C4, 10
        mov     eax, dword [ebp-0CH]                    ; 3B02 _ 8B. 45, F4
        leave                                           ; 3B05 _ C9
        ret                                             ; 3B06 _ C3
; task_init End of function

task_alloc:; Function begin
        push    ebp                                     ; 3B07 _ 55
        mov     ebp, esp                                ; 3B08 _ 89. E5
        sub     esp, 16                                 ; 3B0A _ 83. EC, 10
        mov     dword [ebp-8H], 0                       ; 3B0D _ C7. 45, F8, 00000000
        jmp     ?_216                                   ; 3B14 _ E9, 000000E1

?_214:  mov     edx, dword [taskctl]                    ; 3B19 _ 8B. 15, 000021E8(d)
        mov     eax, dword [ebp-8H]                     ; 3B1F _ 8B. 45, F8
        imul    eax, eax, 124                           ; 3B22 _ 6B. C0, 7C
        add     eax, edx                                ; 3B25 _ 01. D0
        add     eax, 96                                 ; 3B27 _ 83. C0, 60
        mov     eax, dword [eax]                        ; 3B2A _ 8B. 00
        test    eax, eax                                ; 3B2C _ 85. C0
        jne     ?_215                                   ; 3B2E _ 0F 85, 000000C2
        mov     eax, dword [taskctl]                    ; 3B34 _ A1, 000021E8(d)
        mov     edx, dword [ebp-8H]                     ; 3B39 _ 8B. 55, F8
        imul    edx, edx, 124                           ; 3B3C _ 6B. D2, 7C
        add     edx, 80                                 ; 3B3F _ 83. C2, 50
        add     eax, edx                                ; 3B42 _ 01. D0
        add     eax, 12                                 ; 3B44 _ 83. C0, 0C
        mov     dword [ebp-4H], eax                     ; 3B47 _ 89. 45, FC
        mov     eax, dword [ebp-4H]                     ; 3B4A _ 8B. 45, FC
        mov     dword [eax+4H], 1                       ; 3B4D _ C7. 40, 04, 00000001
        mov     eax, dword [ebp-4H]                     ; 3B54 _ 8B. 45, FC
        mov     dword [eax+38H], 514                    ; 3B57 _ C7. 40, 38, 00000202
        mov     eax, dword [ebp-4H]                     ; 3B5E _ 8B. 45, FC
        mov     dword [eax+3CH], 0                      ; 3B61 _ C7. 40, 3C, 00000000
        mov     eax, dword [ebp-4H]                     ; 3B68 _ 8B. 45, FC
        mov     dword [eax+40H], 0                      ; 3B6B _ C7. 40, 40, 00000000
        mov     eax, dword [ebp-4H]                     ; 3B72 _ 8B. 45, FC
        mov     dword [eax+44H], 0                      ; 3B75 _ C7. 40, 44, 00000000
        mov     eax, dword [ebp-4H]                     ; 3B7C _ 8B. 45, FC
        mov     dword [eax+48H], 0                      ; 3B7F _ C7. 40, 48, 00000000
        mov     eax, dword [ebp-4H]                     ; 3B86 _ 8B. 45, FC
        mov     dword [eax+50H], 0                      ; 3B89 _ C7. 40, 50, 00000000
        mov     eax, dword [ebp-8H]                     ; 3B90 _ 8B. 45, F8
        add     eax, 1                                  ; 3B93 _ 83. C0, 01
        shl     eax, 9                                  ; 3B96 _ C1. E0, 09
        mov     edx, eax                                ; 3B99 _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 3B9B _ 8B. 45, FC
        mov     dword [eax+4CH], edx                    ; 3B9E _ 89. 50, 4C
        mov     eax, dword [ebp-4H]                     ; 3BA1 _ 8B. 45, FC
        mov     dword [eax+54H], 0                      ; 3BA4 _ C7. 40, 54, 00000000
        mov     eax, dword [ebp-4H]                     ; 3BAB _ 8B. 45, FC
        mov     dword [eax+58H], 0                      ; 3BAE _ C7. 40, 58, 00000000
        mov     eax, dword [ebp-4H]                     ; 3BB5 _ 8B. 45, FC
        mov     dword [eax+5CH], 0                      ; 3BB8 _ C7. 40, 5C, 00000000
        mov     eax, dword [ebp-4H]                     ; 3BBF _ 8B. 45, FC
        mov     dword [eax+68H], 0                      ; 3BC2 _ C7. 40, 68, 00000000
        mov     eax, dword [ebp-4H]                     ; 3BC9 _ 8B. 45, FC
        mov     dword [eax+6CH], 0                      ; 3BCC _ C7. 40, 6C, 00000000
        mov     eax, dword [ebp-4H]                     ; 3BD3 _ 8B. 45, FC
        mov     dword [eax+70H], 0                      ; 3BD6 _ C7. 40, 70, 00000000
        mov     eax, dword [ebp-4H]                     ; 3BDD _ 8B. 45, FC
        mov     dword [eax+74H], 0                      ; 3BE0 _ C7. 40, 74, 00000000
        mov     eax, dword [ebp-4H]                     ; 3BE7 _ 8B. 45, FC
        mov     dword [eax+78H], 1073741824             ; 3BEA _ C7. 40, 78, 40000000
        mov     eax, dword [ebp-4H]                     ; 3BF1 _ 8B. 45, FC
        jmp     ?_217                                   ; 3BF4 _ EB, 13

?_215:  add     dword [ebp-8H], 1                       ; 3BF6 _ 83. 45, F8, 01
?_216:  cmp     dword [ebp-8H], 4                       ; 3BFA _ 83. 7D, F8, 04
        jle     ?_214                                   ; 3BFE _ 0F 8E, FFFFFF15
        mov     eax, 0                                  ; 3C04 _ B8, 00000000
?_217:  leave                                           ; 3C09 _ C9
        ret                                             ; 3C0A _ C3
; task_alloc End of function

task_run:; Function begin
        push    ebp                                     ; 3C0B _ 55
        mov     ebp, esp                                ; 3C0C _ 89. E5
        sub     esp, 8                                  ; 3C0E _ 83. EC, 08
        cmp     dword [ebp+0CH], 0                      ; 3C11 _ 83. 7D, 0C, 00
        jns     ?_218                                   ; 3C15 _ 79, 09
        mov     eax, dword [ebp+8H]                     ; 3C17 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 3C1A _ 8B. 40, 0C
        mov     dword [ebp+0CH], eax                    ; 3C1D _ 89. 45, 0C
?_218:  cmp     dword [ebp+10H], 0                      ; 3C20 _ 83. 7D, 10, 00
        jle     ?_219                                   ; 3C24 _ 7E, 09
        mov     eax, dword [ebp+8H]                     ; 3C26 _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 3C29 _ 8B. 55, 10
        mov     dword [eax+8H], edx                     ; 3C2C _ 89. 50, 08
?_219:  mov     eax, dword [ebp+8H]                     ; 3C2F _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 3C32 _ 8B. 40, 04
        cmp     eax, 2                                  ; 3C35 _ 83. F8, 02
        jnz     ?_220                                   ; 3C38 _ 75, 19
        mov     eax, dword [ebp+8H]                     ; 3C3A _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 3C3D _ 8B. 40, 0C
        cmp     dword [ebp+0CH], eax                    ; 3C40 _ 39. 45, 0C
        jz      ?_220                                   ; 3C43 _ 74, 0E
        sub     esp, 12                                 ; 3C45 _ 83. EC, 0C
        push    dword [ebp+8H]                          ; 3C48 _ FF. 75, 08
        call    task_remove                             ; 3C4B _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 3C50 _ 83. C4, 10
?_220:  mov     eax, dword [ebp+8H]                     ; 3C53 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 3C56 _ 8B. 40, 04
        cmp     eax, 2                                  ; 3C59 _ 83. F8, 02
        jz      ?_221                                   ; 3C5C _ 74, 17
        mov     eax, dword [ebp+8H]                     ; 3C5E _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 3C61 _ 8B. 55, 0C
        mov     dword [eax+0CH], edx                    ; 3C64 _ 89. 50, 0C
        sub     esp, 12                                 ; 3C67 _ 83. EC, 0C
        push    dword [ebp+8H]                          ; 3C6A _ FF. 75, 08
        call    task_add                                ; 3C6D _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 3C72 _ 83. C4, 10
?_221:  mov     eax, dword [taskctl]                    ; 3C75 _ A1, 000021E8(d)
        mov     dword [eax+4H], 1                       ; 3C7A _ C7. 40, 04, 00000001
        nop                                             ; 3C81 _ 90
        leave                                           ; 3C82 _ C9
        ret                                             ; 3C83 _ C3
; task_run End of function

task_switch:; Function begin
        push    ebp                                     ; 3C84 _ 55
        mov     ebp, esp                                ; 3C85 _ 89. E5
        sub     esp, 24                                 ; 3C87 _ 83. EC, 18
        mov     edx, dword [taskctl]                    ; 3C8A _ 8B. 15, 000021E8(d)
        mov     eax, dword [taskctl]                    ; 3C90 _ A1, 000021E8(d)
        mov     eax, dword [eax]                        ; 3C95 _ 8B. 00
        imul    eax, eax, 28                            ; 3C97 _ 6B. C0, 1C
        add     eax, edx                                ; 3C9A _ 01. D0
        add     eax, 8                                  ; 3C9C _ 83. C0, 08
        mov     dword [ebp-14H], eax                    ; 3C9F _ 89. 45, EC
        mov     eax, dword [ebp-14H]                    ; 3CA2 _ 8B. 45, EC
        mov     edx, dword [eax+4H]                     ; 3CA5 _ 8B. 50, 04
        mov     eax, dword [ebp-14H]                    ; 3CA8 _ 8B. 45, EC
        mov     eax, dword [eax+edx*4+8H]               ; 3CAB _ 8B. 44 90, 08
        mov     dword [ebp-10H], eax                    ; 3CAF _ 89. 45, F0
        mov     eax, dword [ebp-14H]                    ; 3CB2 _ 8B. 45, EC
        mov     eax, dword [eax+4H]                     ; 3CB5 _ 8B. 40, 04
        lea     edx, [eax+1H]                           ; 3CB8 _ 8D. 50, 01
        mov     eax, dword [ebp-14H]                    ; 3CBB _ 8B. 45, EC
        mov     dword [eax+4H], edx                     ; 3CBE _ 89. 50, 04
        mov     eax, dword [ebp-14H]                    ; 3CC1 _ 8B. 45, EC
        mov     edx, dword [eax+4H]                     ; 3CC4 _ 8B. 50, 04
        mov     eax, dword [ebp-14H]                    ; 3CC7 _ 8B. 45, EC
        mov     eax, dword [eax]                        ; 3CCA _ 8B. 00
        cmp     edx, eax                                ; 3CCC _ 39. C2
        jnz     ?_222                                   ; 3CCE _ 75, 0A
        mov     eax, dword [ebp-14H]                    ; 3CD0 _ 8B. 45, EC
        mov     dword [eax+4H], 0                       ; 3CD3 _ C7. 40, 04, 00000000
?_222:  mov     eax, dword [taskctl]                    ; 3CDA _ A1, 000021E8(d)
        mov     eax, dword [eax+4H]                     ; 3CDF _ 8B. 40, 04
        test    eax, eax                                ; 3CE2 _ 85. C0
        jz      ?_223                                   ; 3CE4 _ 74, 1D
        call    task_switchsub                          ; 3CE6 _ E8, FFFFFFFC(rel)
        mov     edx, dword [taskctl]                    ; 3CEB _ 8B. 15, 000021E8(d)
        mov     eax, dword [taskctl]                    ; 3CF1 _ A1, 000021E8(d)
        mov     eax, dword [eax]                        ; 3CF6 _ 8B. 00
        imul    eax, eax, 28                            ; 3CF8 _ 6B. C0, 1C
        add     eax, edx                                ; 3CFB _ 01. D0
        add     eax, 8                                  ; 3CFD _ 83. C0, 08
        mov     dword [ebp-14H], eax                    ; 3D00 _ 89. 45, EC
?_223:  mov     eax, dword [ebp-14H]                    ; 3D03 _ 8B. 45, EC
        mov     edx, dword [eax+4H]                     ; 3D06 _ 8B. 50, 04
        mov     eax, dword [ebp-14H]                    ; 3D09 _ 8B. 45, EC
        mov     eax, dword [eax+edx*4+8H]               ; 3D0C _ 8B. 44 90, 08
        mov     dword [ebp-0CH], eax                    ; 3D10 _ 89. 45, F4
        mov     eax, dword [ebp-0CH]                    ; 3D13 _ 8B. 45, F4
        mov     eax, dword [eax+8H]                     ; 3D16 _ 8B. 40, 08
        mov     edx, eax                                ; 3D19 _ 89. C2
        mov     eax, dword [task_timer]                 ; 3D1B _ A1, 000021E4(d)
        sub     esp, 8                                  ; 3D20 _ 83. EC, 08
        push    edx                                     ; 3D23 _ 52
        push    eax                                     ; 3D24 _ 50
        call    timer_setTime                           ; 3D25 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 3D2A _ 83. C4, 10
        mov     eax, dword [ebp-0CH]                    ; 3D2D _ 8B. 45, F4
        cmp     eax, dword [ebp-10H]                    ; 3D30 _ 3B. 45, F0
        jz      ?_224                                   ; 3D33 _ 74, 1A
        cmp     dword [ebp-0CH], 0                      ; 3D35 _ 83. 7D, F4, 00
        jz      ?_224                                   ; 3D39 _ 74, 14
        mov     eax, dword [ebp-0CH]                    ; 3D3B _ 8B. 45, F4
        mov     eax, dword [eax]                        ; 3D3E _ 8B. 00
        sub     esp, 8                                  ; 3D40 _ 83. EC, 08
        push    eax                                     ; 3D43 _ 50
        push    0                                       ; 3D44 _ 6A, 00
        call    farjmp                                  ; 3D46 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 3D4B _ 83. C4, 10
        nop                                             ; 3D4E _ 90
?_224:  nop                                             ; 3D4F _ 90
        leave                                           ; 3D50 _ C9
        ret                                             ; 3D51 _ C3
; task_switch End of function

task_sleep:; Function begin
        push    ebp                                     ; 3D52 _ 55
        mov     ebp, esp                                ; 3D53 _ 89. E5
        sub     esp, 24                                 ; 3D55 _ 83. EC, 18
        mov     dword [ebp-0CH], 0                      ; 3D58 _ C7. 45, F4, 00000000
        mov     byte [ebp-0DH], 0                       ; 3D5F _ C6. 45, F3, 00
        mov     eax, dword [ebp+8H]                     ; 3D63 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 3D66 _ 8B. 40, 04
        cmp     eax, 2                                  ; 3D69 _ 83. F8, 02
        jnz     ?_225                                   ; 3D6C _ 75, 4C
        call    task_now                                ; 3D6E _ E8, FFFFFFFC(rel)
        mov     dword [ebp-0CH], eax                    ; 3D73 _ 89. 45, F4
        sub     esp, 12                                 ; 3D76 _ 83. EC, 0C
        push    dword [ebp+8H]                          ; 3D79 _ FF. 75, 08
        call    task_remove                             ; 3D7C _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 3D81 _ 83. C4, 10
        mov     byte [ebp-0DH], 1                       ; 3D84 _ C6. 45, F3, 01
        mov     eax, dword [ebp+8H]                     ; 3D88 _ 8B. 45, 08
        cmp     eax, dword [ebp-0CH]                    ; 3D8B _ 3B. 45, F4
        jnz     ?_225                                   ; 3D8E _ 75, 2A
        call    task_switchsub                          ; 3D90 _ E8, FFFFFFFC(rel)
        call    task_now                                ; 3D95 _ E8, FFFFFFFC(rel)
        mov     dword [ebp-0CH], eax                    ; 3D9A _ 89. 45, F4
        mov     byte [ebp-0DH], 2                       ; 3D9D _ C6. 45, F3, 02
        cmp     dword [ebp-0CH], 0                      ; 3DA1 _ 83. 7D, F4, 00
        jz      ?_225                                   ; 3DA5 _ 74, 13
        mov     eax, dword [ebp-0CH]                    ; 3DA7 _ 8B. 45, F4
        mov     eax, dword [eax]                        ; 3DAA _ 8B. 00
        sub     esp, 8                                  ; 3DAC _ 83. EC, 08
        push    eax                                     ; 3DAF _ 50
        push    0                                       ; 3DB0 _ 6A, 00
        call    farjmp                                  ; 3DB2 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 3DB7 _ 83. C4, 10
?_225:  movsx   eax, byte [ebp-0DH]                     ; 3DBA _ 0F BE. 45, F3
        leave                                           ; 3DBE _ C9
        ret                                             ; 3DBF _ C3
; task_sleep End of function

task_now:; Function begin
        push    ebp                                     ; 3DC0 _ 55
        mov     ebp, esp                                ; 3DC1 _ 89. E5
        sub     esp, 16                                 ; 3DC3 _ 83. EC, 10
        mov     edx, dword [taskctl]                    ; 3DC6 _ 8B. 15, 000021E8(d)
        mov     eax, dword [taskctl]                    ; 3DCC _ A1, 000021E8(d)
        mov     eax, dword [eax]                        ; 3DD1 _ 8B. 00
        imul    eax, eax, 28                            ; 3DD3 _ 6B. C0, 1C
        add     eax, edx                                ; 3DD6 _ 01. D0
        add     eax, 8                                  ; 3DD8 _ 83. C0, 08
        mov     dword [ebp-4H], eax                     ; 3DDB _ 89. 45, FC
        mov     eax, dword [ebp-4H]                     ; 3DDE _ 8B. 45, FC
        mov     edx, dword [eax+4H]                     ; 3DE1 _ 8B. 50, 04
        mov     eax, dword [ebp-4H]                     ; 3DE4 _ 8B. 45, FC
        mov     eax, dword [eax+edx*4+8H]               ; 3DE7 _ 8B. 44 90, 08
        leave                                           ; 3DEB _ C9
        ret                                             ; 3DEC _ C3
; task_now End of function

task_add:; Function begin
        push    ebp                                     ; 3DED _ 55
        mov     ebp, esp                                ; 3DEE _ 89. E5
        sub     esp, 16                                 ; 3DF0 _ 83. EC, 10
        mov     edx, dword [taskctl]                    ; 3DF3 _ 8B. 15, 000021E8(d)
        mov     eax, dword [ebp+8H]                     ; 3DF9 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 3DFC _ 8B. 40, 0C
        imul    eax, eax, 28                            ; 3DFF _ 6B. C0, 1C
        add     eax, edx                                ; 3E02 _ 01. D0
        add     eax, 8                                  ; 3E04 _ 83. C0, 08
        mov     dword [ebp-4H], eax                     ; 3E07 _ 89. 45, FC
        mov     eax, dword [ebp-4H]                     ; 3E0A _ 8B. 45, FC
        mov     edx, dword [eax]                        ; 3E0D _ 8B. 10
        mov     eax, dword [ebp-4H]                     ; 3E0F _ 8B. 45, FC
        mov     ecx, dword [ebp+8H]                     ; 3E12 _ 8B. 4D, 08
        mov     dword [eax+edx*4+8H], ecx               ; 3E15 _ 89. 4C 90, 08
        mov     eax, dword [ebp-4H]                     ; 3E19 _ 8B. 45, FC
        mov     eax, dword [eax]                        ; 3E1C _ 8B. 00
        lea     edx, [eax+1H]                           ; 3E1E _ 8D. 50, 01
        mov     eax, dword [ebp-4H]                     ; 3E21 _ 8B. 45, FC
        mov     dword [eax], edx                        ; 3E24 _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 3E26 _ 8B. 45, 08
        mov     dword [eax+4H], 2                       ; 3E29 _ C7. 40, 04, 00000002
        nop                                             ; 3E30 _ 90
        leave                                           ; 3E31 _ C9
        ret                                             ; 3E32 _ C3
; task_add End of function

task_remove:; Function begin
        push    ebp                                     ; 3E33 _ 55
        mov     ebp, esp                                ; 3E34 _ 89. E5
        sub     esp, 16                                 ; 3E36 _ 83. EC, 10
        mov     edx, dword [taskctl]                    ; 3E39 _ 8B. 15, 000021E8(d)
        mov     eax, dword [ebp+8H]                     ; 3E3F _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 3E42 _ 8B. 40, 0C
        imul    eax, eax, 28                            ; 3E45 _ 6B. C0, 1C
        add     eax, edx                                ; 3E48 _ 01. D0
        add     eax, 8                                  ; 3E4A _ 83. C0, 08
        mov     dword [ebp-4H], eax                     ; 3E4D _ 89. 45, FC
        mov     dword [ebp-8H], 0                       ; 3E50 _ C7. 45, F8, 00000000
        jmp     ?_228                                   ; 3E57 _ EB, 23

?_226:  mov     eax, dword [ebp-4H]                     ; 3E59 _ 8B. 45, FC
        mov     edx, dword [ebp-8H]                     ; 3E5C _ 8B. 55, F8
        mov     eax, dword [eax+edx*4+8H]               ; 3E5F _ 8B. 44 90, 08
        cmp     dword [ebp+8H], eax                     ; 3E63 _ 39. 45, 08
        jnz     ?_227                                   ; 3E66 _ 75, 10
        mov     eax, dword [ebp-4H]                     ; 3E68 _ 8B. 45, FC
        mov     edx, dword [ebp-8H]                     ; 3E6B _ 8B. 55, F8
        mov     dword [eax+edx*4+8H], 0                 ; 3E6E _ C7. 44 90, 08, 00000000
        jmp     ?_229                                   ; 3E76 _ EB, 0E

?_227:  add     dword [ebp-8H], 1                       ; 3E78 _ 83. 45, F8, 01
?_228:  mov     eax, dword [ebp-4H]                     ; 3E7C _ 8B. 45, FC
        mov     eax, dword [eax]                        ; 3E7F _ 8B. 00
        cmp     dword [ebp-8H], eax                     ; 3E81 _ 39. 45, F8
        jl      ?_226                                   ; 3E84 _ 7C, D3
?_229:  mov     eax, dword [ebp-4H]                     ; 3E86 _ 8B. 45, FC
        mov     eax, dword [eax]                        ; 3E89 _ 8B. 00
        lea     edx, [eax-1H]                           ; 3E8B _ 8D. 50, FF
        mov     eax, dword [ebp-4H]                     ; 3E8E _ 8B. 45, FC
        mov     dword [eax], edx                        ; 3E91 _ 89. 10
        mov     eax, dword [ebp-4H]                     ; 3E93 _ 8B. 45, FC
        mov     eax, dword [eax+4H]                     ; 3E96 _ 8B. 40, 04
        cmp     dword [ebp-8H], eax                     ; 3E99 _ 39. 45, F8
        jge     ?_230                                   ; 3E9C _ 7D, 0F
        mov     eax, dword [ebp-4H]                     ; 3E9E _ 8B. 45, FC
        mov     eax, dword [eax+4H]                     ; 3EA1 _ 8B. 40, 04
        lea     edx, [eax-1H]                           ; 3EA4 _ 8D. 50, FF
        mov     eax, dword [ebp-4H]                     ; 3EA7 _ 8B. 45, FC
        mov     dword [eax+4H], edx                     ; 3EAA _ 89. 50, 04
?_230:  mov     eax, dword [ebp-4H]                     ; 3EAD _ 8B. 45, FC
        mov     edx, dword [eax+4H]                     ; 3EB0 _ 8B. 50, 04
        mov     eax, dword [ebp-4H]                     ; 3EB3 _ 8B. 45, FC
        mov     eax, dword [eax]                        ; 3EB6 _ 8B. 00
        cmp     edx, eax                                ; 3EB8 _ 39. C2
        jl      ?_231                                   ; 3EBA _ 7C, 0A
        mov     eax, dword [ebp-4H]                     ; 3EBC _ 8B. 45, FC
        mov     dword [eax+4H], 0                       ; 3EBF _ C7. 40, 04, 00000000
?_231:  mov     eax, dword [ebp+8H]                     ; 3EC6 _ 8B. 45, 08
        mov     dword [eax+4H], 1                       ; 3EC9 _ C7. 40, 04, 00000001
        jmp     ?_233                                   ; 3ED0 _ EB, 1B

?_232:  mov     eax, dword [ebp-8H]                     ; 3ED2 _ 8B. 45, F8
        lea     edx, [eax+1H]                           ; 3ED5 _ 8D. 50, 01
        mov     eax, dword [ebp-4H]                     ; 3ED8 _ 8B. 45, FC
        mov     ecx, dword [eax+edx*4+8H]               ; 3EDB _ 8B. 4C 90, 08
        mov     eax, dword [ebp-4H]                     ; 3EDF _ 8B. 45, FC
        mov     edx, dword [ebp-8H]                     ; 3EE2 _ 8B. 55, F8
        mov     dword [eax+edx*4+8H], ecx               ; 3EE5 _ 89. 4C 90, 08
        add     dword [ebp-8H], 1                       ; 3EE9 _ 83. 45, F8, 01
?_233:  mov     eax, dword [ebp-4H]                     ; 3EED _ 8B. 45, FC
        mov     eax, dword [eax]                        ; 3EF0 _ 8B. 00
        cmp     dword [ebp-8H], eax                     ; 3EF2 _ 39. 45, F8
        jl      ?_232                                   ; 3EF5 _ 7C, DB
        nop                                             ; 3EF7 _ 90
        leave                                           ; 3EF8 _ C9
        ret                                             ; 3EF9 _ C3
; task_remove End of function

task_switchsub:; Function begin
        push    ebp                                     ; 3EFA _ 55
        mov     ebp, esp                                ; 3EFB _ 89. E5
        sub     esp, 16                                 ; 3EFD _ 83. EC, 10
        mov     dword [ebp-4H], 0                       ; 3F00 _ C7. 45, FC, 00000000
        jmp     ?_235                                   ; 3F07 _ EB, 1B

?_234:  mov     edx, dword [taskctl]                    ; 3F09 _ 8B. 15, 000021E8(d)
        mov     eax, dword [ebp-4H]                     ; 3F0F _ 8B. 45, FC
        imul    eax, eax, 28                            ; 3F12 _ 6B. C0, 1C
        add     eax, edx                                ; 3F15 _ 01. D0
        add     eax, 8                                  ; 3F17 _ 83. C0, 08
        mov     eax, dword [eax]                        ; 3F1A _ 8B. 00
        test    eax, eax                                ; 3F1C _ 85. C0
        jg      ?_236                                   ; 3F1E _ 7F, 0C
        add     dword [ebp-4H], 1                       ; 3F20 _ 83. 45, FC, 01
?_235:  cmp     dword [ebp-4H], 2                       ; 3F24 _ 83. 7D, FC, 02
        jle     ?_234                                   ; 3F28 _ 7E, DF
        jmp     ?_237                                   ; 3F2A _ EB, 01

?_236:  nop                                             ; 3F2C _ 90
?_237:  mov     eax, dword [taskctl]                    ; 3F2D _ A1, 000021E8(d)
        mov     edx, dword [ebp-4H]                     ; 3F32 _ 8B. 55, FC
        mov     dword [eax], edx                        ; 3F35 _ 89. 10
        mov     eax, dword [taskctl]                    ; 3F37 _ A1, 000021E8(d)
        mov     dword [eax+4H], 0                       ; 3F3C _ C7. 40, 04, 00000000
        nop                                             ; 3F43 _ 90
        leave                                           ; 3F44 _ C9
        ret                                             ; 3F45 _ C3
; task_switchsub End of function

getTaskctl:; Function begin
        push    ebp                                     ; 3F46 _ 55
        mov     ebp, esp                                ; 3F47 _ 89. E5
        mov     eax, dword [taskctl]                    ; 3F49 _ A1, 000021E8(d)
        pop     ebp                                     ; 3F4E _ 5D
        ret                                             ; 3F4F _ C3
; getTaskctl End of function

send_message:; Function begin
        push    ebp                                     ; 3F50 _ 55
        mov     ebp, esp                                ; 3F51 _ 89. E5
        sub     esp, 8                                  ; 3F53 _ 83. EC, 08
        mov     eax, dword [ebp+10H]                    ; 3F56 _ 8B. 45, 10
        movzx   eax, al                                 ; 3F59 _ 0F B6. C0
        mov     edx, dword [ebp+0CH]                    ; 3F5C _ 8B. 55, 0C
        add     edx, 16                                 ; 3F5F _ 83. C2, 10
        sub     esp, 8                                  ; 3F62 _ 83. EC, 08
        push    eax                                     ; 3F65 _ 50
        push    edx                                     ; 3F66 _ 52
        call    fifo8_put                               ; 3F67 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 3F6C _ 83. C4, 10
        sub     esp, 12                                 ; 3F6F _ 83. EC, 0C
        push    dword [ebp+8H]                          ; 3F72 _ FF. 75, 08
        call    task_sleep                              ; 3F75 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 3F7A _ 83. C4, 10
        nop                                             ; 3F7D _ 90
        leave                                           ; 3F7E _ C9
        ret                                             ; 3F7F _ C3
; send_message End of function



?_238:                                                  ; byte
        db 43H, 6FH, 75H, 6EH, 74H, 65H, 72H, 00H       ; 0000 _ Counter.

?_239:                                                  ; byte
        db 43H, 6FH, 70H, 79H, 72H, 69H, 67H, 68H       ; 0008 _ Copyrigh
        db 74H, 20H, 32H, 30H, 32H, 31H, 20H, 43H       ; 0010 _ t 2021 C
        db 68H, 65H, 72H, 72H, 79H, 00H                 ; 0018 _ herry.

?_240:                                                  ; byte
        db 54H, 65H, 72H, 6DH, 69H, 6EH, 61H, 6CH       ; 001E _ Terminal
        db 00H                                          ; 0026 _ .

?_241:                                                  ; byte
        db 42H, 75H, 6EH, 6EH, 79H, 2EH, 2EH, 2EH       ; 0027 _ Bunny...
        db 00H                                          ; 002F _ .

?_242:                                                  ; byte
        db 41H, 00H                                     ; 0030 _ A.

?_243:                                                  ; byte
        db 33H, 5BH, 73H, 65H, 63H, 5DH, 00H            ; 0032 _ 3[sec].

?_244:                                                  ; byte
        db 3EH, 00H                                     ; 0039 _ >.

?_245:                                                  ; byte
        db 45H, 6EH, 74H, 65H, 72H, 20H, 54H, 61H       ; 003B _ Enter Ta
        db 73H, 6BH, 20H, 42H, 00H                      ; 0043 _ sk B.

?_246:                                                  ; byte
        db 42H, 00H                                     ; 0048 _ B.

?_247:                                                  ; byte
        db 50H, 61H, 67H, 65H, 20H, 69H, 73H, 3AH       ; 004A _ Page is:
        db 20H, 00H                                     ; 0052 _  .

?_248:                                                  ; byte
        db 42H, 61H, 73H, 65H, 41H, 64H, 64H, 72H       ; 0054 _ BaseAddr
        db 4CH, 6FH, 77H, 3AH, 20H, 00H                 ; 005C _ Low: .

?_249:                                                  ; byte
        db 42H, 61H, 73H, 65H, 41H, 64H, 64H, 72H       ; 0062 _ BaseAddr
        db 48H, 69H, 67H, 68H, 3AH, 20H, 00H            ; 006A _ High: .

?_250:                                                  ; byte
        db 4CH, 65H, 6EH, 67H, 74H, 68H, 4CH, 6FH       ; 0071 _ LengthLo
        db 77H, 3AH, 20H, 00H                           ; 0079 _ w: .

?_251:                                                  ; byte
        db 4CH, 65H, 6EH, 67H, 74H, 68H, 48H, 69H       ; 007D _ LengthHi
        db 67H, 68H, 3AH, 20H, 00H                      ; 0085 _ gh: .

?_252:                                                  ; byte
        db 54H, 79H, 70H, 65H, 3AH, 20H, 00H            ; 008A _ Type: .



keyVal:                                                 ; byte
        db 30H, 78H                                     ; 0000 _ 0x

?_253:  db 00H                                          ; 0002 _ .

?_254:  db 00H, 00H, 00H, 00H, 00H                      ; 0003 _ .....

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

pos.2307: dd 00000010H, 00000000H                       ; 0100 _ 16 0 
        dd 00000000H, 00000000H                         ; 0108 _ 0 0 
        dd 00000000H, 00000000H                         ; 0110 _ 0 0 
        dd 00000000H, 00000000H                         ; 0118 _ 0 0 

table_rgb.2403:                                         ; byte
        db 00H, 00H, 00H, 0FFH, 00H, 00H, 00H, 0FFH     ; 0120 _ ........
        db 00H, 0FFH, 0FFH, 00H, 00H, 00H, 0FFH, 0FFH   ; 0128 _ ........
        db 00H, 0FFH, 00H, 0FFH, 0FFH, 0FFH, 0FFH, 0FFH ; 0130 _ ........
        db 0C6H, 0C6H, 0C6H, 84H, 00H, 00H, 00H, 84H    ; 0138 _ ........
        db 00H, 84H, 84H, 00H, 00H, 00H, 84H, 84H       ; 0140 _ ........
        db 00H, 84H, 00H, 78H, 0D7H, 84H, 84H, 84H      ; 0148 _ ...x....
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0150 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0158 _ ........

cursor.2458:                                            ; byte
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

closebtn.2611:                                          ; byte
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

?_255:  resw    1                                       ; 000C

?_256:  resw    1                                       ; 000E

keyInfo:                                                ; byte
        resb    24                                      ; 0010

?_257:  resd    1                                       ; 0028

mouseInfo:                                              ; byte
        resb    52                                      ; 002C

keybuf:                                                 ; yword
        resb    32                                      ; 0060

mousebuf:                                               ; byte
        resb    128                                     ; 0080

mouse_move:                                             ; oword
        resb    12                                      ; 0100

?_258:  resd    1                                       ; 010C

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

task_a.2302:                                            ; dword
        resd    1                                       ; 025C

line.2306:                                              ; dword
        resd    1                                       ; 0260

cnt.2303: resd  1                                       ; 0264

task_b.2292:                                            ; oword
        resb    16                                      ; 0268

str.2501:                                               ; byte
        resb    1                                       ; 0278

?_259:  resb    9                                       ; 0279

?_260:  resb    2                                       ; 0282

line.2534:                                              ; dword
        resd    1                                       ; 0284

pos.2533: resd  6                                       ; 0288

timerctl:                                               ; byte
        resd    1                                       ; 02A0

?_261:                                                  ; byte
        resb    4                                       ; 02A4

?_262:                                                  ; byte
        resb    4                                       ; 02A8

?_263:                                                  ; byte
        resb    4                                       ; 02AC

?_264:                                                  ; byte
        resb    7988                                    ; 02B0

task_timer:                                             ; dword
        resd    1                                       ; 21E4

taskctl: resd   1                                       ; 21E8


