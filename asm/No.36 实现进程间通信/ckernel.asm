; Disassembly of file: ckernel.o
; Sun May 23 22:02:48 2021
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
        je      ?_010                                   ; 041A _ 0F 84, 00000369
        call    io_sti                                  ; 0420 _ E8, FFFFFFFC(rel)
        sub     esp, 12                                 ; 0425 _ 83. EC, 0C
        push    keyInfo                                 ; 0428 _ 68, 00000010(d)
        call    fifo8_get                               ; 042D _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0432 _ 83. C4, 10
        mov     byte [ebp-6DH], al                      ; 0435 _ 88. 45, 93
        cmp     byte [ebp-6DH], 28                      ; 0438 _ 80. 7D, 93, 1C
        jnz     ?_003                                   ; 043C _ 75, 59
        mov     ebx, dword [cnt.2294]                   ; 043E _ 8B. 1D, 00000260(d)
        mov     eax, dword [sheet_back]                 ; 0444 _ A1, 0000024C(d)
        mov     ecx, dword [eax]                        ; 0449 _ 8B. 08
        mov     edx, dword [sheet_back]                 ; 044B _ 8B. 15, 0000024C(d)
        mov     eax, dword [shtctl]                     ; 0451 _ A1, 00000244(d)
        sub     esp, 4                                  ; 0456 _ 83. EC, 04
        push    7                                       ; 0459 _ 6A, 07
        push    dword [ebp-54H]                         ; 045B _ FF. 75, AC
        push    ebx                                     ; 045E _ 53
        push    ecx                                     ; 045F _ 51
        push    dword [ebp-3CH]                         ; 0460 _ FF. 75, C4
        push    edx                                     ; 0463 _ 52
        push    eax                                     ; 0464 _ 50
        call    showMemInfo                             ; 0465 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 046A _ 83. C4, 20
        mov     eax, dword [cnt.2294]                   ; 046D _ A1, 00000260(d)
        add     eax, 1                                  ; 0472 _ 83. C0, 01
        mov     dword [cnt.2294], eax                   ; 0475 _ A3, 00000260(d)
        mov     eax, dword [cnt.2294]                   ; 047A _ A1, 00000260(d)
        cmp     dword [ebp-38H], eax                    ; 047F _ 39. 45, C8
        jg      ?_006                                   ; 0482 _ 0F 8F, 00000137
        mov     dword [cnt.2294], 0                     ; 0488 _ C7. 05, 00000260(d), 00000000
        jmp     ?_006                                   ; 0492 _ E9, 00000128

?_003:  cmp     byte [ebp-6DH], 15                      ; 0497 _ 80. 7D, 93, 0F
        jne     ?_006                                   ; 049B _ 0F 85, 0000011E
        mov     dword [ebp-5CH], -1                     ; 04A1 _ C7. 45, A4, FFFFFFFF
        cmp     dword [ebp-60H], 0                      ; 04A8 _ 83. 7D, A0, 00
        jnz     ?_004                                   ; 04AC _ 75, 6C
        mov     dword [ebp-60H], 1                      ; 04AE _ C7. 45, A0, 00000001
        mov     edx, dword [sheet_win]                  ; 04B5 _ 8B. 15, 00000248(d)
        mov     eax, dword [shtctl]                     ; 04BB _ A1, 00000244(d)
        push    0                                       ; 04C0 _ 6A, 00
        push    ?_228                                   ; 04C2 _ 68, 00000000(d)
        push    edx                                     ; 04C7 _ 52
        push    eax                                     ; 04C8 _ 50
        call    make_wtitle8                            ; 04C9 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 04CE _ 83. C4, 10
        mov     eax, dword [shtctl]                     ; 04D1 _ A1, 00000244(d)
        push    1                                       ; 04D6 _ 6A, 01
        push    ?_230                                   ; 04D8 _ 68, 0000001E(d)
        push    dword [ebp-28H]                         ; 04DD _ FF. 75, D8
        push    eax                                     ; 04E0 _ 50
        call    make_wtitle8                            ; 04E1 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 04E6 _ 83. C4, 10
        mov     ebx, dword [pos.2298]                   ; 04E9 _ 8B. 1D, 00000100(d)
        mov     ecx, dword [line.2297]                  ; 04EF _ 8B. 0D, 00000264(d)
        mov     edx, dword [sheet_win]                  ; 04F5 _ 8B. 15, 00000248(d)
        mov     eax, dword [shtctl]                     ; 04FB _ A1, 00000244(d)
        sub     esp, 12                                 ; 0500 _ 83. EC, 0C
        push    7                                       ; 0503 _ 6A, 07
        push    ebx                                     ; 0505 _ 53
        push    ecx                                     ; 0506 _ 51
        push    edx                                     ; 0507 _ 52
        push    eax                                     ; 0508 _ 50
        call    set_cursor                              ; 0509 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 050E _ 83. C4, 20
        mov     dword [ebp-5CH], 87                     ; 0511 _ C7. 45, A4, 00000057
        jmp     ?_005                                   ; 0518 _ EB, 42

?_004:  mov     dword [ebp-60H], 0                      ; 051A _ C7. 45, A0, 00000000
        mov     edx, dword [sheet_win]                  ; 0521 _ 8B. 15, 00000248(d)
        mov     eax, dword [shtctl]                     ; 0527 _ A1, 00000244(d)
        push    1                                       ; 052C _ 6A, 01
        push    ?_228                                   ; 052E _ 68, 00000000(d)
        push    edx                                     ; 0533 _ 52
        push    eax                                     ; 0534 _ 50
        call    make_wtitle8                            ; 0535 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 053A _ 83. C4, 10
        mov     eax, dword [shtctl]                     ; 053D _ A1, 00000244(d)
        push    0                                       ; 0542 _ 6A, 00
        push    ?_230                                   ; 0544 _ 68, 0000001E(d)
        push    dword [ebp-28H]                         ; 0549 _ FF. 75, D8
        push    eax                                     ; 054C _ 50
        call    make_wtitle8                            ; 054D _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0552 _ 83. C4, 10
        mov     dword [ebp-5CH], 88                     ; 0555 _ C7. 45, A4, 00000058
?_005:  mov     eax, dword [sheet_win]                  ; 055C _ A1, 00000248(d)
        mov     ecx, dword [eax+4H]                     ; 0561 _ 8B. 48, 04
        mov     edx, dword [sheet_win]                  ; 0564 _ 8B. 15, 00000248(d)
        mov     eax, dword [shtctl]                     ; 056A _ A1, 00000244(d)
        sub     esp, 8                                  ; 056F _ 83. EC, 08
        push    21                                      ; 0572 _ 6A, 15
        push    ecx                                     ; 0574 _ 51
        push    0                                       ; 0575 _ 6A, 00
        push    0                                       ; 0577 _ 6A, 00
        push    edx                                     ; 0579 _ 52
        push    eax                                     ; 057A _ 50
        call    sheet_refresh                           ; 057B _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0580 _ 83. C4, 20
        mov     eax, dword [ebp-28H]                    ; 0583 _ 8B. 45, D8
        mov     edx, dword [eax+4H]                     ; 0586 _ 8B. 50, 04
        mov     eax, dword [shtctl]                     ; 0589 _ A1, 00000244(d)
        sub     esp, 8                                  ; 058E _ 83. EC, 08
        push    21                                      ; 0591 _ 6A, 15
        push    edx                                     ; 0593 _ 52
        push    0                                       ; 0594 _ 6A, 00
        push    0                                       ; 0596 _ 6A, 00
        push    dword [ebp-28H]                         ; 0598 _ FF. 75, D8
        push    eax                                     ; 059B _ 50
        call    sheet_refresh                           ; 059C _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 05A1 _ 83. C4, 20
        mov     edx, dword [task_console]               ; 05A4 _ 8B. 15, 00000254(d)
        mov     eax, dword [task_a.2293]                ; 05AA _ A1, 0000025C(d)
        sub     esp, 4                                  ; 05AF _ 83. EC, 04
        push    dword [ebp-5CH]                         ; 05B2 _ FF. 75, A4
        push    edx                                     ; 05B5 _ 52
        push    eax                                     ; 05B6 _ 50
        call    send_message                            ; 05B7 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 05BC _ 83. C4, 10
?_006:  cmp     dword [ebp-60H], 0                      ; 05BF _ 83. 7D, A0, 00
        jne     ?_009                                   ; 05C3 _ 0F 85, 00000178
        mov     edx, dword [sheet_back]                 ; 05C9 _ 8B. 15, 0000024C(d)
        mov     eax, dword [shtctl]                     ; 05CF _ A1, 00000244(d)
        sub     esp, 8                                  ; 05D4 _ 83. EC, 08
        push    ?_231                                   ; 05D7 _ 68, 00000027(d)
        push    11                                      ; 05DC _ 6A, 0B
        push    0                                       ; 05DE _ 6A, 00
        push    0                                       ; 05E0 _ 6A, 00
        push    edx                                     ; 05E2 _ 52
        push    eax                                     ; 05E3 _ 50
        call    showString                              ; 05E4 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 05E9 _ 83. C4, 20
        movzx   eax, byte [ebp-6DH]                     ; 05EC _ 0F B6. 45, 93
        sub     esp, 12                                 ; 05F0 _ 83. EC, 0C
        push    eax                                     ; 05F3 _ 50
        call    transferScanCode                        ; 05F4 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 05F9 _ 83. C4, 10
        test    al, al                                  ; 05FC _ 84. C0
        je      ?_008                                   ; 05FE _ 0F 84, 000000C3
        mov     eax, dword [line.2297]                  ; 0604 _ A1, 00000264(d)
        cmp     eax, 142                                ; 0609 _ 3D, 0000008E
        jg      ?_008                                   ; 060E _ 0F 8F, 000000B3
        mov     ebx, dword [pos.2298]                   ; 0614 _ 8B. 1D, 00000100(d)
        mov     ecx, dword [line.2297]                  ; 061A _ 8B. 0D, 00000264(d)
        mov     edx, dword [sheet_win]                  ; 0620 _ 8B. 15, 00000248(d)
        mov     eax, dword [shtctl]                     ; 0626 _ A1, 00000244(d)
        sub     esp, 12                                 ; 062B _ 83. EC, 0C
        push    7                                       ; 062E _ 6A, 07
        push    ebx                                     ; 0630 _ 53
        push    ecx                                     ; 0631 _ 51
        push    edx                                     ; 0632 _ 52
        push    eax                                     ; 0633 _ 50
        call    set_cursor                              ; 0634 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0639 _ 83. C4, 20
        movzx   eax, byte [ebp-6DH]                     ; 063C _ 0F B6. 45, 93
        sub     esp, 12                                 ; 0640 _ 83. EC, 0C
        push    eax                                     ; 0643 _ 50
        call    transferScanCode                        ; 0644 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0649 _ 83. C4, 10
        mov     byte [ebp-0EH], al                      ; 064C _ 88. 45, F2
        mov     byte [ebp-0DH], 0                       ; 064F _ C6. 45, F3, 00
        mov     eax, dword [pos.2298]                   ; 0653 _ A1, 00000100(d)
        lea     esi, [eax+1AH]                          ; 0658 _ 8D. 70, 1A
        mov     eax, dword [line.2297]                  ; 065B _ A1, 00000264(d)
        lea     ebx, [eax+0AH]                          ; 0660 _ 8D. 58, 0A
        mov     edx, dword [sheet_win]                  ; 0663 _ 8B. 15, 00000248(d)
        mov     eax, dword [shtctl]                     ; 0669 _ A1, 00000244(d)
        sub     esp, 8                                  ; 066E _ 83. EC, 08
        lea     ecx, [ebp-0EH]                          ; 0671 _ 8D. 4D, F2
        push    ecx                                     ; 0674 _ 51
        push    0                                       ; 0675 _ 6A, 00
        push    esi                                     ; 0677 _ 56
        push    ebx                                     ; 0678 _ 53
        push    edx                                     ; 0679 _ 52
        push    eax                                     ; 067A _ 50
        call    showString                              ; 067B _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0680 _ 83. C4, 20
        mov     eax, dword [line.2297]                  ; 0683 _ A1, 00000264(d)
        add     eax, 8                                  ; 0688 _ 83. C0, 08
        mov     dword [line.2297], eax                  ; 068B _ A3, 00000264(d)
        mov     eax, dword [sheet_win]                  ; 0690 _ A1, 00000248(d)
        mov     eax, dword [eax+4H]                     ; 0695 _ 8B. 40, 04
        lea     edx, [eax-10H]                          ; 0698 _ 8D. 50, F0
        mov     eax, dword [line.2297]                  ; 069B _ A1, 00000264(d)
        cmp     edx, eax                                ; 06A0 _ 39. C2
        jg      ?_007                                   ; 06A2 _ 7F, 17
        mov     eax, dword [pos.2298]                   ; 06A4 _ A1, 00000100(d)
        add     eax, 16                                 ; 06A9 _ 83. C0, 10
        mov     dword [pos.2298], eax                   ; 06AC _ A3, 00000100(d)
        mov     dword [line.2297], 0                    ; 06B1 _ C7. 05, 00000264(d), 00000000
?_007:  mov     dword [ebp-64H], 0                      ; 06BB _ C7. 45, 9C, 00000000
        jmp     ?_016                                   ; 06C2 _ E9, 00000239

?_008:  cmp     byte [ebp-6DH], 14                      ; 06C7 _ 80. 7D, 93, 0E
        jne     ?_001                                   ; 06CB _ 0F 85, FFFFFCEC
        mov     eax, dword [line.2297]                  ; 06D1 _ A1, 00000264(d)
        cmp     eax, 7                                  ; 06D6 _ 83. F8, 07
        jle     ?_001                                   ; 06D9 _ 0F 8E, FFFFFCDE
        mov     ebx, dword [pos.2298]                   ; 06DF _ 8B. 1D, 00000100(d)
        mov     ecx, dword [line.2297]                  ; 06E5 _ 8B. 0D, 00000264(d)
        mov     edx, dword [sheet_win]                  ; 06EB _ 8B. 15, 00000248(d)
        mov     eax, dword [shtctl]                     ; 06F1 _ A1, 00000244(d)
        sub     esp, 12                                 ; 06F6 _ 83. EC, 0C
        push    7                                       ; 06F9 _ 6A, 07
        push    ebx                                     ; 06FB _ 53
        push    ecx                                     ; 06FC _ 51
        push    edx                                     ; 06FD _ 52
        push    eax                                     ; 06FE _ 50
        call    set_cursor                              ; 06FF _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0704 _ 83. C4, 20
        mov     eax, dword [line.2297]                  ; 0707 _ A1, 00000264(d)
        sub     eax, 8                                  ; 070C _ 83. E8, 08
        mov     dword [line.2297], eax                  ; 070F _ A3, 00000264(d)
        mov     ebx, dword [pos.2298]                   ; 0714 _ 8B. 1D, 00000100(d)
        mov     ecx, dword [line.2297]                  ; 071A _ 8B. 0D, 00000264(d)
        mov     edx, dword [sheet_win]                  ; 0720 _ 8B. 15, 00000248(d)
        mov     eax, dword [shtctl]                     ; 0726 _ A1, 00000244(d)
        sub     esp, 12                                 ; 072B _ 83. EC, 0C
        push    7                                       ; 072E _ 6A, 07
        push    ebx                                     ; 0730 _ 53
        push    ecx                                     ; 0731 _ 51
        push    edx                                     ; 0732 _ 52
        push    eax                                     ; 0733 _ 50
        call    set_cursor                              ; 0734 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0739 _ 83. C4, 20
        jmp     ?_001                                   ; 073C _ E9, FFFFFC7C

?_009:  movzx   eax, byte [ebp-6DH]                     ; 0741 _ 0F B6. 45, 93
        mov     edx, dword [task_console]               ; 0745 _ 8B. 15, 00000254(d)
        add     edx, 16                                 ; 074B _ 83. C2, 10
        sub     esp, 8                                  ; 074E _ 83. EC, 08
        push    eax                                     ; 0751 _ 50
        push    edx                                     ; 0752 _ 52
        call    fifo8_put                               ; 0753 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0758 _ 83. C4, 10
        sub     esp, 12                                 ; 075B _ 83. EC, 0C
        push    keyInfo                                 ; 075E _ 68, 00000010(d)
        call    fifo8_status                            ; 0763 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0768 _ 83. C4, 10
        test    eax, eax                                ; 076B _ 85. C0
        jne     ?_001                                   ; 076D _ 0F 85, FFFFFC4A
        mov     eax, dword [task_a.2293]                ; 0773 _ A1, 0000025C(d)
        sub     esp, 12                                 ; 0778 _ 83. EC, 0C
        push    eax                                     ; 077B _ 50
        call    task_sleep                              ; 077C _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0781 _ 83. C4, 10
        jmp     ?_001                                   ; 0784 _ E9, FFFFFC34

?_010:  sub     esp, 12                                 ; 0789 _ 83. EC, 0C
        push    mouseInfo                               ; 078C _ 68, 0000002C(d)
        call    fifo8_status                            ; 0791 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0796 _ 83. C4, 10
        test    eax, eax                                ; 0799 _ 85. C0
        jz      ?_011                                   ; 079B _ 74, 24
        mov     ecx, dword [sheet_mouse]                ; 079D _ 8B. 0D, 00000250(d)
        mov     edx, dword [sheet_back]                 ; 07A3 _ 8B. 15, 0000024C(d)
        mov     eax, dword [shtctl]                     ; 07A9 _ A1, 00000244(d)
        sub     esp, 4                                  ; 07AE _ 83. EC, 04
        push    ecx                                     ; 07B1 _ 51
        push    edx                                     ; 07B2 _ 52
        push    eax                                     ; 07B3 _ 50
        call    showMouseInfo                           ; 07B4 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 07B9 _ 83. C4, 10
        jmp     ?_001                                   ; 07BC _ E9, FFFFFBFC

?_011:  sub     esp, 12                                 ; 07C1 _ 83. EC, 0C
        push    timerInfo                               ; 07C4 _ 68, 00000220(d)
        call    fifo8_status                            ; 07C9 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 07CE _ 83. C4, 10
        test    eax, eax                                ; 07D1 _ 85. C0
        je      ?_001                                   ; 07D3 _ 0F 84, FFFFFBE4
        call    io_sti                                  ; 07D9 _ E8, FFFFFFFC(rel)
        sub     esp, 12                                 ; 07DE _ 83. EC, 0C
        push    timerInfo                               ; 07E1 _ 68, 00000220(d)
        call    fifo8_get                               ; 07E6 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 07EB _ 83. C4, 10
        mov     dword [ebp-24H], eax                    ; 07EE _ 89. 45, DC
        cmp     dword [ebp-24H], 10                     ; 07F1 _ 83. 7D, DC, 0A
        jnz     ?_012                                   ; 07F5 _ 75, 62
        mov     edx, dword [sheet_back]                 ; 07F7 _ 8B. 15, 0000024C(d)
        mov     eax, dword [shtctl]                     ; 07FD _ A1, 00000244(d)
        sub     esp, 8                                  ; 0802 _ 83. EC, 08
        push    ?_232                                   ; 0805 _ 68, 00000030(d)
        push    7                                       ; 080A _ 6A, 07
        push    160                                     ; 080C _ 68, 000000A0
        push    dword [ebp-68H]                         ; 0811 _ FF. 75, 98
        push    edx                                     ; 0814 _ 52
        push    eax                                     ; 0815 _ 50
        call    showString                              ; 0816 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 081B _ 83. C4, 20
        sub     esp, 8                                  ; 081E _ 83. EC, 08
        push    100                                     ; 0821 _ 6A, 64
        push    dword [ebp-48H]                         ; 0823 _ FF. 75, B8
        call    timer_setTime                           ; 0826 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 082B _ 83. C4, 10
        add     dword [ebp-68H], 8                      ; 082E _ 83. 45, 98, 08
        add     dword [ebp-64H], 1                      ; 0832 _ 83. 45, 9C, 01
        cmp     dword [ebp-68H], 39                     ; 0836 _ 83. 7D, 98, 27
        jle     ?_001                                   ; 083A _ 0F 8E, FFFFFB7D
        cmp     dword [ebp-64H], 5                      ; 0840 _ 83. 7D, 9C, 05
        jne     ?_001                                   ; 0844 _ 0F 85, FFFFFB73
        call    io_cli                                  ; 084A _ E8, FFFFFFFC(rel)
        call    io_sti                                  ; 084F _ E8, FFFFFFFC(rel)
        jmp     ?_001                                   ; 0854 _ E9, FFFFFB64

?_012:  cmp     dword [ebp-24H], 2                      ; 0859 _ 83. 7D, DC, 02
        jnz     ?_013                                   ; 085D _ 75, 28
        mov     edx, dword [sheet_back]                 ; 085F _ 8B. 15, 0000024C(d)
        mov     eax, dword [shtctl]                     ; 0865 _ A1, 00000244(d)
        sub     esp, 8                                  ; 086A _ 83. EC, 08
        push    ?_233                                   ; 086D _ 68, 00000032(d)
        push    7                                       ; 0872 _ 6A, 07
        push    32                                      ; 0874 _ 6A, 20
        push    0                                       ; 0876 _ 6A, 00
        push    edx                                     ; 0878 _ 52
        push    eax                                     ; 0879 _ 50
        call    showString                              ; 087A _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 087F _ 83. C4, 20
        jmp     ?_001                                   ; 0882 _ E9, FFFFFB36

?_013:  cmp     dword [ebp-24H], 0                      ; 0887 _ 83. 7D, DC, 00
        jz      ?_014                                   ; 088B _ 74, 1E
        sub     esp, 4                                  ; 088D _ 83. EC, 04
        push    0                                       ; 0890 _ 6A, 00
        push    timerInfo                               ; 0892 _ 68, 00000220(d)
        push    dword [ebp-40H]                         ; 0897 _ FF. 75, C0
        call    timer_init                              ; 089A _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 089F _ 83. C4, 10
        mov     dword [ebp-6CH], 0                      ; 08A2 _ C7. 45, 94, 00000000
        jmp     ?_015                                   ; 08A9 _ EB, 1C

?_014:  sub     esp, 4                                  ; 08AB _ 83. EC, 04
        push    1                                       ; 08AE _ 6A, 01
        push    timerInfo                               ; 08B0 _ 68, 00000220(d)
        push    dword [ebp-40H]                         ; 08B5 _ FF. 75, C0
        call    timer_init                              ; 08B8 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 08BD _ 83. C4, 10
        mov     dword [ebp-6CH], 7                      ; 08C0 _ C7. 45, 94, 00000007
?_015:  sub     esp, 8                                  ; 08C7 _ 83. EC, 08
        push    50                                      ; 08CA _ 6A, 32
        push    dword [ebp-40H]                         ; 08CC _ FF. 75, C0
        call    timer_setTime                           ; 08CF _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 08D4 _ 83. C4, 10
        mov     ebx, dword [pos.2298]                   ; 08D7 _ 8B. 1D, 00000100(d)
        mov     ecx, dword [line.2297]                  ; 08DD _ 8B. 0D, 00000264(d)
        mov     edx, dword [sheet_win]                  ; 08E3 _ 8B. 15, 00000248(d)
        mov     eax, dword [shtctl]                     ; 08E9 _ A1, 00000244(d)
        sub     esp, 12                                 ; 08EE _ 83. EC, 0C
        push    dword [ebp-6CH]                         ; 08F1 _ FF. 75, 94
        push    ebx                                     ; 08F4 _ 53
        push    ecx                                     ; 08F5 _ 51
        push    edx                                     ; 08F6 _ 52
        push    eax                                     ; 08F7 _ 50
        call    set_cursor                              ; 08F8 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 08FD _ 83. C4, 20
?_016:  jmp     ?_001                                   ; 0900 _ E9, FFFFFAB8
; CMain End of function

set_cursor:; Function begin
        push    ebp                                     ; 0905 _ 55
        mov     ebp, esp                                ; 0906 _ 89. E5
        push    edi                                     ; 0908 _ 57
        push    esi                                     ; 0909 _ 56
        push    ebx                                     ; 090A _ 53
        sub     esp, 28                                 ; 090B _ 83. EC, 1C
        mov     eax, dword [ebp+14H]                    ; 090E _ 8B. 45, 14
        add     eax, 41                                 ; 0911 _ 83. C0, 29
        mov     dword [ebp-1CH], eax                    ; 0914 _ 89. 45, E4
        mov     eax, dword [ebp+10H]                    ; 0917 _ 8B. 45, 10
        lea     edi, [eax+10H]                          ; 091A _ 8D. 78, 10
        mov     eax, dword [ebp+14H]                    ; 091D _ 8B. 45, 14
        lea     esi, [eax+1AH]                          ; 0920 _ 8D. 70, 1A
        mov     eax, dword [ebp+10H]                    ; 0923 _ 8B. 45, 10
        lea     ebx, [eax+0AH]                          ; 0926 _ 8D. 58, 0A
        mov     eax, dword [ebp+18H]                    ; 0929 _ 8B. 45, 18
        movzx   ecx, al                                 ; 092C _ 0F B6. C8
        mov     eax, dword [ebp+0CH]                    ; 092F _ 8B. 45, 0C
        mov     edx, dword [eax+4H]                     ; 0932 _ 8B. 50, 04
        mov     eax, dword [ebp+0CH]                    ; 0935 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 0938 _ 8B. 00
        sub     esp, 4                                  ; 093A _ 83. EC, 04
        push    dword [ebp-1CH]                         ; 093D _ FF. 75, E4
        push    edi                                     ; 0940 _ 57
        push    esi                                     ; 0941 _ 56
        push    ebx                                     ; 0942 _ 53
        push    ecx                                     ; 0943 _ 51
        push    edx                                     ; 0944 _ 52
        push    eax                                     ; 0945 _ 50
        call    boxfill8                                ; 0946 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 094B _ 83. C4, 20
        mov     eax, dword [ebp+14H]                    ; 094E _ 8B. 45, 14
        lea     ebx, [eax+2BH]                          ; 0951 _ 8D. 58, 2B
        mov     eax, dword [ebp+10H]                    ; 0954 _ 8B. 45, 10
        lea     ecx, [eax+12H]                          ; 0957 _ 8D. 48, 12
        mov     eax, dword [ebp+14H]                    ; 095A _ 8B. 45, 14
        lea     edx, [eax+1AH]                          ; 095D _ 8D. 50, 1A
        mov     eax, dword [ebp+10H]                    ; 0960 _ 8B. 45, 10
        add     eax, 10                                 ; 0963 _ 83. C0, 0A
        sub     esp, 8                                  ; 0966 _ 83. EC, 08
        push    ebx                                     ; 0969 _ 53
        push    ecx                                     ; 096A _ 51
        push    edx                                     ; 096B _ 52
        push    eax                                     ; 096C _ 50
        push    dword [ebp+0CH]                         ; 096D _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 0970 _ FF. 75, 08
        call    sheet_refresh                           ; 0973 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0978 _ 83. C4, 20
        nop                                             ; 097B _ 90
        lea     esp, [ebp-0CH]                          ; 097C _ 8D. 65, F4
        pop     ebx                                     ; 097F _ 5B
        pop     esi                                     ; 0980 _ 5E
        pop     edi                                     ; 0981 _ 5F
        pop     ebp                                     ; 0982 _ 5D
        ret                                             ; 0983 _ C3
; set_cursor End of function

isSpecialKey:; Function begin
        push    ebp                                     ; 0984 _ 55
        mov     ebp, esp                                ; 0985 _ 89. E5
        sub     esp, 8                                  ; 0987 _ 83. EC, 08
        sub     esp, 12                                 ; 098A _ 83. EC, 0C
        push    dword [ebp+8H]                          ; 098D _ FF. 75, 08
        call    transferScanCode                        ; 0990 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0995 _ 83. C4, 10
        cmp     dword [ebp+8H], 58                      ; 0998 _ 83. 7D, 08, 3A
        jz      ?_017                                   ; 099C _ 74, 27
        cmp     dword [ebp+8H], 186                     ; 099E _ 81. 7D, 08, 000000BA
        jz      ?_017                                   ; 09A5 _ 74, 1E
        cmp     dword [ebp+8H], 42                      ; 09A7 _ 83. 7D, 08, 2A
        jz      ?_017                                   ; 09AB _ 74, 18
        cmp     dword [ebp+8H], 54                      ; 09AD _ 83. 7D, 08, 36
        jz      ?_017                                   ; 09B1 _ 74, 12
        cmp     dword [ebp+8H], 170                     ; 09B3 _ 81. 7D, 08, 000000AA
        jz      ?_017                                   ; 09BA _ 74, 09
        cmp     dword [ebp+8H], 182                     ; 09BC _ 81. 7D, 08, 000000B6
        jnz     ?_018                                   ; 09C3 _ 75, 07
?_017:  mov     eax, 1                                  ; 09C5 _ B8, 00000001
        jmp     ?_019                                   ; 09CA _ EB, 05

?_018:  mov     eax, 0                                  ; 09CC _ B8, 00000000
?_019:  leave                                           ; 09D1 _ C9
        ret                                             ; 09D2 _ C3
; isSpecialKey End of function

transferScanCode:; Function begin
        push    ebp                                     ; 09D3 _ 55
        mov     ebp, esp                                ; 09D4 _ 89. E5
        sub     esp, 16                                 ; 09D6 _ 83. EC, 10
        cmp     dword [ebp+8H], 42                      ; 09D9 _ 83. 7D, 08, 2A
        jnz     ?_020                                   ; 09DD _ 75, 0D
        mov     eax, dword [key_shift]                  ; 09DF _ A1, 00000000(d)
        or      eax, 01H                                ; 09E4 _ 83. C8, 01
        mov     dword [key_shift], eax                  ; 09E7 _ A3, 00000000(d)
?_020:  cmp     dword [ebp+8H], 54                      ; 09EC _ 83. 7D, 08, 36
        jnz     ?_021                                   ; 09F0 _ 75, 0D
        mov     eax, dword [key_shift]                  ; 09F2 _ A1, 00000000(d)
        or      eax, 02H                                ; 09F7 _ 83. C8, 02
        mov     dword [key_shift], eax                  ; 09FA _ A3, 00000000(d)
?_021:  cmp     dword [ebp+8H], 170                     ; 09FF _ 81. 7D, 08, 000000AA
        jnz     ?_022                                   ; 0A06 _ 75, 0D
        mov     eax, dword [key_shift]                  ; 0A08 _ A1, 00000000(d)
        and     eax, 0FFFFFFFEH                         ; 0A0D _ 83. E0, FE
        mov     dword [key_shift], eax                  ; 0A10 _ A3, 00000000(d)
?_022:  cmp     dword [ebp+8H], 182                     ; 0A15 _ 81. 7D, 08, 000000B6
        jnz     ?_023                                   ; 0A1C _ 75, 0D
        mov     eax, dword [key_shift]                  ; 0A1E _ A1, 00000000(d)
        and     eax, 0FFFFFFFDH                         ; 0A23 _ 83. E0, FD
        mov     dword [key_shift], eax                  ; 0A26 _ A3, 00000000(d)
?_023:  cmp     dword [ebp+8H], 58                      ; 0A2B _ 83. 7D, 08, 3A
        jnz     ?_025                                   ; 0A2F _ 75, 1F
        mov     eax, dword [caps_lock]                  ; 0A31 _ A1, 00000000(d)
        test    eax, eax                                ; 0A36 _ 85. C0
        jnz     ?_024                                   ; 0A38 _ 75, 0C
        mov     dword [caps_lock], 1                    ; 0A3A _ C7. 05, 00000000(d), 00000001
        jmp     ?_025                                   ; 0A44 _ EB, 0A

?_024:  mov     dword [caps_lock], 0                    ; 0A46 _ C7. 05, 00000000(d), 00000000
?_025:  cmp     dword [ebp+8H], 42                      ; 0A50 _ 83. 7D, 08, 2A
        jz      ?_026                                   ; 0A54 _ 74, 1E
        cmp     dword [ebp+8H], 54                      ; 0A56 _ 83. 7D, 08, 36
        jz      ?_026                                   ; 0A5A _ 74, 18
        cmp     dword [ebp+8H], 170                     ; 0A5C _ 81. 7D, 08, 000000AA
        jz      ?_026                                   ; 0A63 _ 74, 0F
        cmp     dword [ebp+8H], 182                     ; 0A65 _ 81. 7D, 08, 000000B6
        jz      ?_026                                   ; 0A6C _ 74, 06
        cmp     dword [ebp+8H], 83                      ; 0A6E _ 83. 7D, 08, 53
        jle     ?_027                                   ; 0A72 _ 7E, 0A
?_026:  mov     eax, 0                                  ; 0A74 _ B8, 00000000
        jmp     ?_032                                   ; 0A79 _ E9, 00000090

?_027:  mov     byte [ebp-1H], 0                        ; 0A7E _ C6. 45, FF, 00
        mov     eax, dword [key_shift]                  ; 0A82 _ A1, 00000000(d)
        test    eax, eax                                ; 0A87 _ 85. C0
        jnz     ?_028                                   ; 0A89 _ 75, 4A
        cmp     dword [ebp+8H], 14                      ; 0A8B _ 83. 7D, 08, 0E
        jz      ?_028                                   ; 0A8F _ 74, 44
        cmp     dword [ebp+8H], 83                      ; 0A91 _ 83. 7D, 08, 53
        jg      ?_028                                   ; 0A95 _ 7F, 3E
        mov     eax, dword [ebp+8H]                     ; 0A97 _ 8B. 45, 08
        add     eax, keytable                           ; 0A9A _ 05, 00000020(d)
        movzx   eax, byte [eax]                         ; 0A9F _ 0F B6. 00
        test    al, al                                  ; 0AA2 _ 84. C0
        jz      ?_028                                   ; 0AA4 _ 74, 2F
        mov     eax, dword [ebp+8H]                     ; 0AA6 _ 8B. 45, 08
        add     eax, keytable                           ; 0AA9 _ 05, 00000020(d)
        movzx   eax, byte [eax]                         ; 0AAE _ 0F B6. 00
        mov     byte [ebp-1H], al                       ; 0AB1 _ 88. 45, FF
        cmp     byte [ebp-1H], 64                       ; 0AB4 _ 80. 7D, FF, 40
        jle     ?_030                                   ; 0AB8 _ 7E, 4F
        cmp     byte [ebp-1H], 90                       ; 0ABA _ 80. 7D, FF, 5A
        jg      ?_030                                   ; 0ABE _ 7F, 49
        mov     eax, dword [caps_lock]                  ; 0AC0 _ A1, 00000000(d)
        test    eax, eax                                ; 0AC5 _ 85. C0
        jnz     ?_030                                   ; 0AC7 _ 75, 40
        movzx   eax, byte [ebp-1H]                      ; 0AC9 _ 0F B6. 45, FF
        add     eax, 32                                 ; 0ACD _ 83. C0, 20
        mov     byte [ebp-1H], al                       ; 0AD0 _ 88. 45, FF
        jmp     ?_030                                   ; 0AD3 _ EB, 34

?_028:  mov     eax, dword [key_shift]                  ; 0AD5 _ A1, 00000000(d)
        test    eax, eax                                ; 0ADA _ 85. C0
        jz      ?_029                                   ; 0ADC _ 74, 25
        cmp     dword [ebp+8H], 127                     ; 0ADE _ 83. 7D, 08, 7F
        jg      ?_029                                   ; 0AE2 _ 7F, 1F
        mov     eax, dword [ebp+8H]                     ; 0AE4 _ 8B. 45, 08
        add     eax, keytable1                          ; 0AE7 _ 05, 00000080(d)
        movzx   eax, byte [eax]                         ; 0AEC _ 0F B6. 00
        test    al, al                                  ; 0AEF _ 84. C0
        jz      ?_029                                   ; 0AF1 _ 74, 10
        mov     eax, dword [ebp+8H]                     ; 0AF3 _ 8B. 45, 08
        add     eax, keytable1                          ; 0AF6 _ 05, 00000080(d)
        movzx   eax, byte [eax]                         ; 0AFB _ 0F B6. 00
        mov     byte [ebp-1H], al                       ; 0AFE _ 88. 45, FF
        jmp     ?_031                                   ; 0B01 _ EB, 07

?_029:  mov     byte [ebp-1H], 0                        ; 0B03 _ C6. 45, FF, 00
        jmp     ?_031                                   ; 0B07 _ EB, 01

?_030:  nop                                             ; 0B09 _ 90
?_031:  movzx   eax, byte [ebp-1H]                      ; 0B0A _ 0F B6. 45, FF
?_032:  leave                                           ; 0B0E _ C9
        ret                                             ; 0B0F _ C3
; transferScanCode End of function

launch_console:; Function begin
        push    ebp                                     ; 0B10 _ 55
        mov     ebp, esp                                ; 0B11 _ 89. E5
        sub     esp, 24                                 ; 0B13 _ 83. EC, 18
        mov     eax, dword [shtctl]                     ; 0B16 _ A1, 00000244(d)
        sub     esp, 12                                 ; 0B1B _ 83. EC, 0C
        push    eax                                     ; 0B1E _ 50
        call    sheet_alloc                             ; 0B1F _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0B24 _ 83. C4, 10
        mov     dword [ebp-18H], eax                    ; 0B27 _ 89. 45, E8
        mov     eax, dword [memman]                     ; 0B2A _ A1, 00000008(d)
        sub     esp, 8                                  ; 0B2F _ 83. EC, 08
        push    72000                                   ; 0B32 _ 68, 00011940
        push    eax                                     ; 0B37 _ 50
        call    memman_alloc_4K                         ; 0B38 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0B3D _ 83. C4, 10
        mov     dword [ebp-14H], eax                    ; 0B40 _ 89. 45, EC
        sub     esp, 12                                 ; 0B43 _ 83. EC, 0C
        push    99                                      ; 0B46 _ 6A, 63
        push    240                                     ; 0B48 _ 68, 000000F0
        push    300                                     ; 0B4D _ 68, 0000012C
        push    dword [ebp-14H]                         ; 0B52 _ FF. 75, EC
        push    dword [ebp-18H]                         ; 0B55 _ FF. 75, E8
        call    sheet_setbuf                            ; 0B58 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0B5D _ 83. C4, 20
        mov     eax, dword [shtctl]                     ; 0B60 _ A1, 00000244(d)
        push    0                                       ; 0B65 _ 6A, 00
        push    ?_230                                   ; 0B67 _ 68, 0000001E(d)
        push    dword [ebp-18H]                         ; 0B6C _ FF. 75, E8
        push    eax                                     ; 0B6F _ 50
        call    make_window8                            ; 0B70 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0B75 _ 83. C4, 10
        sub     esp, 8                                  ; 0B78 _ 83. EC, 08
        push    0                                       ; 0B7B _ 6A, 00
        push    204                                     ; 0B7D _ 68, 000000CC
        push    284                                     ; 0B82 _ 68, 0000011C
        push    28                                      ; 0B87 _ 6A, 1C
        push    8                                       ; 0B89 _ 6A, 08
        push    dword [ebp-18H]                         ; 0B8B _ FF. 75, E8
        call    make_textbox8                           ; 0B8E _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0B93 _ 83. C4, 20
        call    task_alloc                              ; 0B96 _ E8, FFFFFFFC(rel)
        mov     dword [ebp-10H], eax                    ; 0B9B _ 89. 45, F0
        call    get_code32_addr                         ; 0B9E _ E8, FFFFFFFC(rel)
        mov     dword [ebp-0CH], eax                    ; 0BA3 _ 89. 45, F4
        mov     eax, dword [ebp-10H]                    ; 0BA6 _ 8B. 45, F0
        mov     dword [eax+74H], 0                      ; 0BA9 _ C7. 40, 74, 00000000
        mov     eax, dword [ebp-10H]                    ; 0BB0 _ 8B. 45, F0
        mov     dword [eax+78H], 1073741824             ; 0BB3 _ C7. 40, 78, 40000000
        mov     eax, dword [ebp-0CH]                    ; 0BBA _ 8B. 45, F4
        neg     eax                                     ; 0BBD _ F7. D8
        add     eax, console_task                       ; 0BBF _ 05, 00000000(d)
        mov     edx, eax                                ; 0BC4 _ 89. C2
        mov     eax, dword [ebp-10H]                    ; 0BC6 _ 8B. 45, F0
        mov     dword [eax+34H], edx                    ; 0BC9 _ 89. 50, 34
        mov     eax, dword [ebp-10H]                    ; 0BCC _ 8B. 45, F0
        mov     dword [eax+5CH], 0                      ; 0BCF _ C7. 40, 5C, 00000000
        mov     eax, dword [ebp-10H]                    ; 0BD6 _ 8B. 45, F0
        mov     dword [eax+60H], 8                      ; 0BD9 _ C7. 40, 60, 00000008
        mov     eax, dword [ebp-10H]                    ; 0BE0 _ 8B. 45, F0
        mov     dword [eax+64H], 32                     ; 0BE3 _ C7. 40, 64, 00000020
        mov     eax, dword [ebp-10H]                    ; 0BEA _ 8B. 45, F0
        mov     dword [eax+68H], 24                     ; 0BED _ C7. 40, 68, 00000018
        mov     eax, dword [ebp-10H]                    ; 0BF4 _ 8B. 45, F0
        mov     dword [eax+6CH], 0                      ; 0BF7 _ C7. 40, 6C, 00000000
        mov     eax, dword [ebp-10H]                    ; 0BFE _ 8B. 45, F0
        mov     dword [eax+70H], 16                     ; 0C01 _ C7. 40, 70, 00000010
        mov     eax, dword [ebp-10H]                    ; 0C08 _ 8B. 45, F0
        mov     eax, dword [eax+4CH]                    ; 0C0B _ 8B. 40, 4C
        lea     edx, [eax-8H]                           ; 0C0E _ 8D. 50, F8
        mov     eax, dword [ebp-10H]                    ; 0C11 _ 8B. 45, F0
        mov     dword [eax+4CH], edx                    ; 0C14 _ 89. 50, 4C
        mov     eax, dword [ebp-10H]                    ; 0C17 _ 8B. 45, F0
        mov     eax, dword [eax+4CH]                    ; 0C1A _ 8B. 40, 4C
        add     eax, 4                                  ; 0C1D _ 83. C0, 04
        mov     edx, eax                                ; 0C20 _ 89. C2
        mov     eax, dword [ebp-18H]                    ; 0C22 _ 8B. 45, E8
        mov     dword [edx], eax                        ; 0C25 _ 89. 02
        mov     eax, dword [ebp-10H]                    ; 0C27 _ 8B. 45, F0
        mov     dword [task_console], eax               ; 0C2A _ A3, 00000254(d)
        sub     esp, 4                                  ; 0C2F _ 83. EC, 04
        push    5                                       ; 0C32 _ 6A, 05
        push    1                                       ; 0C34 _ 6A, 01
        push    dword [ebp-10H]                         ; 0C36 _ FF. 75, F0
        call    task_run                                ; 0C39 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0C3E _ 83. C4, 10
        mov     eax, dword [shtctl]                     ; 0C41 _ A1, 00000244(d)
        push    160                                     ; 0C46 _ 68, 000000A0
        push    330                                     ; 0C4B _ 68, 0000014A
        push    dword [ebp-18H]                         ; 0C50 _ FF. 75, E8
        push    eax                                     ; 0C53 _ 50
        call    sheet_slide                             ; 0C54 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0C59 _ 83. C4, 10
        mov     eax, dword [shtctl]                     ; 0C5C _ A1, 00000244(d)
        sub     esp, 4                                  ; 0C61 _ 83. EC, 04
        push    2                                       ; 0C64 _ 6A, 02
        push    dword [ebp-18H]                         ; 0C66 _ FF. 75, E8
        push    eax                                     ; 0C69 _ 50
        call    sheet_level_updown                      ; 0C6A _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0C6F _ 83. C4, 10
        mov     eax, dword [ebp-18H]                    ; 0C72 _ 8B. 45, E8
        leave                                           ; 0C75 _ C9
        ret                                             ; 0C76 _ C3
; launch_console End of function

console_task:; Function begin
        push    ebp                                     ; 0C77 _ 55
        mov     ebp, esp                                ; 0C78 _ 89. E5
        sub     esp, 184                                ; 0C7A _ 81. EC, 000000B8
        mov     eax, dword [ebp+8H]                     ; 0C80 _ 8B. 45, 08
        mov     dword [ebp-0ACH], eax                   ; 0C83 _ 89. 85, FFFFFF54
; Note: Absolute memory address without relocation
        mov     eax, dword [gs:14H]                     ; 0C89 _ 65: A1, 00000014
        mov     dword [ebp-0CH], eax                    ; 0C8F _ 89. 45, F4
        xor     eax, eax                                ; 0C92 _ 31. C0
        call    task_now                                ; 0C94 _ E8, FFFFFFFC(rel)
        mov     dword [ebp-9CH], eax                    ; 0C99 _ 89. 85, FFFFFF64
        mov     dword [ebp-0A4H], 8                     ; 0C9F _ C7. 85, FFFFFF5C, 00000008
        mov     dword [ebp-0A0H], 0                     ; 0CA9 _ C7. 85, FFFFFF60, 00000000
        mov     eax, dword [ebp-9CH]                    ; 0CB3 _ 8B. 85, FFFFFF64
        lea     edx, [eax+10H]                          ; 0CB9 _ 8D. 50, 10
        push    dword [ebp-9CH]                         ; 0CBC _ FF. B5, FFFFFF64
        lea     eax, [ebp-8CH]                          ; 0CC2 _ 8D. 85, FFFFFF74
        push    eax                                     ; 0CC8 _ 50
        push    128                                     ; 0CC9 _ 68, 00000080
        push    edx                                     ; 0CCE _ 52
        call    fifo8_init                              ; 0CCF _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0CD4 _ 83. C4, 10
        call    timer_alloc                             ; 0CD7 _ E8, FFFFFFFC(rel)
        mov     dword [ebp-98H], eax                    ; 0CDC _ 89. 85, FFFFFF68
        mov     eax, dword [ebp-9CH]                    ; 0CE2 _ 8B. 85, FFFFFF64
        add     eax, 16                                 ; 0CE8 _ 83. C0, 10
        sub     esp, 4                                  ; 0CEB _ 83. EC, 04
        push    1                                       ; 0CEE _ 6A, 01
        push    eax                                     ; 0CF0 _ 50
        push    dword [ebp-98H]                         ; 0CF1 _ FF. B5, FFFFFF68
        call    timer_init                              ; 0CF7 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0CFC _ 83. C4, 10
        sub     esp, 8                                  ; 0CFF _ 83. EC, 08
        push    50                                      ; 0D02 _ 6A, 32
        push    dword [ebp-98H]                         ; 0D04 _ FF. B5, FFFFFF68
        call    timer_setTime                           ; 0D0A _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0D0F _ 83. C4, 10
        mov     dword [ebp-94H], 0                      ; 0D12 _ C7. 85, FFFFFF6C, 00000000
        mov     eax, dword [shtctl]                     ; 0D1C _ A1, 00000244(d)
        sub     esp, 8                                  ; 0D21 _ 83. EC, 08
        push    ?_234                                   ; 0D24 _ 68, 00000039(d)
        push    7                                       ; 0D29 _ 6A, 07
        push    28                                      ; 0D2B _ 6A, 1C
        push    8                                       ; 0D2D _ 6A, 08
        push    dword [ebp-0ACH]                        ; 0D2F _ FF. B5, FFFFFF54
        push    eax                                     ; 0D35 _ 50
        call    showString                              ; 0D36 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0D3B _ 83. C4, 20
?_033:  call    io_cli                                  ; 0D3E _ E8, FFFFFFFC(rel)
        mov     eax, dword [ebp-9CH]                    ; 0D43 _ 8B. 85, FFFFFF64
        add     eax, 16                                 ; 0D49 _ 83. C0, 10
        sub     esp, 12                                 ; 0D4C _ 83. EC, 0C
        push    eax                                     ; 0D4F _ 50
        call    fifo8_status                            ; 0D50 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0D55 _ 83. C4, 10
        test    eax, eax                                ; 0D58 _ 85. C0
        jnz     ?_034                                   ; 0D5A _ 75, 0A
        call    io_sti                                  ; 0D5C _ E8, FFFFFFFC(rel)
        jmp     ?_041                                   ; 0D61 _ E9, 00000245

?_034:  mov     eax, dword [ebp-9CH]                    ; 0D66 _ 8B. 85, FFFFFF64
        add     eax, 16                                 ; 0D6C _ 83. C0, 10
        sub     esp, 12                                 ; 0D6F _ 83. EC, 0C
        push    eax                                     ; 0D72 _ 50
        call    fifo8_get                               ; 0D73 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0D78 _ 83. C4, 10
        mov     dword [ebp-94H], eax                    ; 0D7B _ 89. 85, FFFFFF6C
        call    io_sti                                  ; 0D81 _ E8, FFFFFFFC(rel)
        cmp     dword [ebp-94H], 1                      ; 0D86 _ 83. BD, FFFFFF6C, 01
        jg      ?_037                                   ; 0D8D _ 0F 8F, 00000083
        cmp     dword [ebp-0A0H], 0                     ; 0D93 _ 83. BD, FFFFFF60, 00
        js      ?_037                                   ; 0D9A _ 78, 7A
        cmp     dword [ebp-94H], 1                      ; 0D9C _ 83. BD, FFFFFF6C, 01
        jnz     ?_035                                   ; 0DA3 _ 75, 29
        mov     eax, dword [ebp-9CH]                    ; 0DA5 _ 8B. 85, FFFFFF64
        add     eax, 16                                 ; 0DAB _ 83. C0, 10
        sub     esp, 4                                  ; 0DAE _ 83. EC, 04
        push    0                                       ; 0DB1 _ 6A, 00
        push    eax                                     ; 0DB3 _ 50
        push    dword [ebp-98H]                         ; 0DB4 _ FF. B5, FFFFFF68
        call    timer_init                              ; 0DBA _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0DBF _ 83. C4, 10
        mov     dword [ebp-0A0H], 7                     ; 0DC2 _ C7. 85, FFFFFF60, 00000007
        jmp     ?_036                                   ; 0DCC _ EB, 30

?_035:  cmp     dword [ebp-94H], 0                      ; 0DCE _ 83. BD, FFFFFF6C, 00
        jnz     ?_036                                   ; 0DD5 _ 75, 27
        mov     eax, dword [ebp-9CH]                    ; 0DD7 _ 8B. 85, FFFFFF64
        add     eax, 16                                 ; 0DDD _ 83. C0, 10
        sub     esp, 4                                  ; 0DE0 _ 83. EC, 04
        push    1                                       ; 0DE3 _ 6A, 01
        push    eax                                     ; 0DE5 _ 50
        push    dword [ebp-98H]                         ; 0DE6 _ FF. B5, FFFFFF68
        call    timer_init                              ; 0DEC _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0DF1 _ 83. C4, 10
        mov     dword [ebp-0A0H], 0                     ; 0DF4 _ C7. 85, FFFFFF60, 00000000
?_036:  sub     esp, 8                                  ; 0DFE _ 83. EC, 08
        push    50                                      ; 0E01 _ 6A, 32
        push    dword [ebp-98H]                         ; 0E03 _ FF. B5, FFFFFF68
        call    timer_setTime                           ; 0E09 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0E0E _ 83. C4, 10
        jmp     ?_041                                   ; 0E11 _ E9, 00000195

?_037:  cmp     dword [ebp-94H], 87                     ; 0E16 _ 83. BD, FFFFFF6C, 57
        jnz     ?_038                                   ; 0E1D _ 75, 3F
        mov     dword [ebp-0A0H], 7                     ; 0E1F _ C7. 85, FFFFFF60, 00000007
        mov     eax, dword [ebp-9CH]                    ; 0E29 _ 8B. 85, FFFFFF64
        add     eax, 16                                 ; 0E2F _ 83. C0, 10
        sub     esp, 4                                  ; 0E32 _ 83. EC, 04
        push    0                                       ; 0E35 _ 6A, 00
        push    eax                                     ; 0E37 _ 50
        push    dword [ebp-98H]                         ; 0E38 _ FF. B5, FFFFFF68
        call    timer_init                              ; 0E3E _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0E43 _ 83. C4, 10
        sub     esp, 8                                  ; 0E46 _ 83. EC, 08
        push    50                                      ; 0E49 _ 6A, 32
        push    dword [ebp-98H]                         ; 0E4B _ FF. B5, FFFFFF68
        call    timer_setTime                           ; 0E51 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0E56 _ 83. C4, 10
        jmp     ?_041                                   ; 0E59 _ E9, 0000014D

?_038:  cmp     dword [ebp-94H], 88                     ; 0E5E _ 83. BD, FFFFFF6C, 58
        jnz     ?_039                                   ; 0E65 _ 75, 45
        mov     eax, dword [shtctl]                     ; 0E67 _ A1, 00000244(d)
        sub     esp, 12                                 ; 0E6C _ 83. EC, 0C
        push    0                                       ; 0E6F _ 6A, 00
        push    2                                       ; 0E71 _ 6A, 02
        push    dword [ebp-0A4H]                        ; 0E73 _ FF. B5, FFFFFF5C
        push    dword [ebp-0ACH]                        ; 0E79 _ FF. B5, FFFFFF54
        push    eax                                     ; 0E7F _ 50
        call    set_cursor                              ; 0E80 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0E85 _ 83. C4, 20
        mov     dword [ebp-0A0H], -1                    ; 0E88 _ C7. 85, FFFFFF60, FFFFFFFF
        mov     eax, dword [task_main]                  ; 0E92 _ A1, 00000258(d)
        sub     esp, 4                                  ; 0E97 _ 83. EC, 04
        push    0                                       ; 0E9A _ 6A, 00
        push    -1                                      ; 0E9C _ 6A, FF
        push    eax                                     ; 0E9E _ 50
        call    task_run                                ; 0E9F _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0EA4 _ 83. C4, 10
        jmp     ?_041                                   ; 0EA7 _ E9, 000000FF

?_039:  cmp     dword [ebp-94H], 14                     ; 0EAC _ 83. BD, FFFFFF6C, 0E
        jnz     ?_040                                   ; 0EB3 _ 75, 57
        cmp     dword [ebp-0A4H], 15                    ; 0EB5 _ 83. BD, FFFFFF5C, 0F
        jle     ?_040                                   ; 0EBC _ 7E, 4E
        mov     eax, dword [shtctl]                     ; 0EBE _ A1, 00000244(d)
        sub     esp, 12                                 ; 0EC3 _ 83. EC, 0C
        push    0                                       ; 0EC6 _ 6A, 00
        push    2                                       ; 0EC8 _ 6A, 02
        push    dword [ebp-0A4H]                        ; 0ECA _ FF. B5, FFFFFF5C
        push    dword [ebp-0ACH]                        ; 0ED0 _ FF. B5, FFFFFF54
        push    eax                                     ; 0ED6 _ 50
        call    set_cursor                              ; 0ED7 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0EDC _ 83. C4, 20
        sub     dword [ebp-0A4H], 8                     ; 0EDF _ 83. AD, FFFFFF5C, 08
        mov     eax, dword [shtctl]                     ; 0EE6 _ A1, 00000244(d)
        sub     esp, 12                                 ; 0EEB _ 83. EC, 0C
        push    0                                       ; 0EEE _ 6A, 00
        push    2                                       ; 0EF0 _ 6A, 02
        push    dword [ebp-0A4H]                        ; 0EF2 _ FF. B5, FFFFFF5C
        push    dword [ebp-0ACH]                        ; 0EF8 _ FF. B5, FFFFFF54
        push    eax                                     ; 0EFE _ 50
        call    set_cursor                              ; 0EFF _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0F04 _ 83. C4, 20
        jmp     ?_041                                   ; 0F07 _ E9, 0000009F

?_040:  sub     esp, 12                                 ; 0F0C _ 83. EC, 0C
        push    dword [ebp-94H]                         ; 0F0F _ FF. B5, FFFFFF6C
        call    transferScanCode                        ; 0F15 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0F1A _ 83. C4, 10
        test    al, al                                  ; 0F1D _ 84. C0
        je      ?_041                                   ; 0F1F _ 0F 84, 00000086
        mov     eax, dword [ebp-0ACH]                   ; 0F25 _ 8B. 85, FFFFFF54
        mov     eax, dword [eax+4H]                     ; 0F2B _ 8B. 40, 04
        sub     eax, 35                                 ; 0F2E _ 83. E8, 23
        cmp     dword [ebp-0A4H], eax                   ; 0F31 _ 39. 85, FFFFFF5C
        jg      ?_041                                   ; 0F37 _ 7F, 72
        mov     eax, dword [shtctl]                     ; 0F39 _ A1, 00000244(d)
        sub     esp, 12                                 ; 0F3E _ 83. EC, 0C
        push    0                                       ; 0F41 _ 6A, 00
        push    2                                       ; 0F43 _ 6A, 02
        push    dword [ebp-0A4H]                        ; 0F45 _ FF. B5, FFFFFF5C
        push    dword [ebp-0ACH]                        ; 0F4B _ FF. B5, FFFFFF54
        push    eax                                     ; 0F51 _ 50
        call    set_cursor                              ; 0F52 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0F57 _ 83. C4, 20
        sub     esp, 12                                 ; 0F5A _ 83. EC, 0C
        push    dword [ebp-94H]                         ; 0F5D _ FF. B5, FFFFFF6C
        call    transferScanCode                        ; 0F63 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0F68 _ 83. C4, 10
        mov     byte [ebp-8EH], al                      ; 0F6B _ 88. 85, FFFFFF72
        mov     byte [ebp-8DH], 0                       ; 0F71 _ C6. 85, FFFFFF73, 00
        mov     eax, dword [ebp-0A4H]                   ; 0F78 _ 8B. 85, FFFFFF5C
        lea     ecx, [eax+0AH]                          ; 0F7E _ 8D. 48, 0A
        mov     eax, dword [shtctl]                     ; 0F81 _ A1, 00000244(d)
        sub     esp, 8                                  ; 0F86 _ 83. EC, 08
        lea     edx, [ebp-8EH]                          ; 0F89 _ 8D. 95, FFFFFF72
        push    edx                                     ; 0F8F _ 52
        push    7                                       ; 0F90 _ 6A, 07
        push    28                                      ; 0F92 _ 6A, 1C
        push    ecx                                     ; 0F94 _ 51
        push    dword [ebp-0ACH]                        ; 0F95 _ FF. B5, FFFFFF54
        push    eax                                     ; 0F9B _ 50
        call    showString                              ; 0F9C _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0FA1 _ 83. C4, 20
        add     dword [ebp-0A4H], 8                     ; 0FA4 _ 83. 85, FFFFFF5C, 08
?_041:  cmp     dword [ebp-0A0H], 0                     ; 0FAB _ 83. BD, FFFFFF60, 00
        js      ?_033                                   ; 0FB2 _ 0F 88, FFFFFD86
        mov     eax, dword [shtctl]                     ; 0FB8 _ A1, 00000244(d)
        sub     esp, 12                                 ; 0FBD _ 83. EC, 0C
        push    dword [ebp-0A0H]                        ; 0FC0 _ FF. B5, FFFFFF60
        push    2                                       ; 0FC6 _ 6A, 02
        push    dword [ebp-0A4H]                        ; 0FC8 _ FF. B5, FFFFFF5C
        push    dword [ebp-0ACH]                        ; 0FCE _ FF. B5, FFFFFF54
        push    eax                                     ; 0FD4 _ 50
        call    set_cursor                              ; 0FD5 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0FDA _ 83. C4, 20
        jmp     ?_033                                   ; 0FDD _ E9, FFFFFD5C
; console_task End of function

task_b_main:; Function begin
        push    ebp                                     ; 0FE2 _ 55
        mov     ebp, esp                                ; 0FE3 _ 89. E5
        sub     esp, 88                                 ; 0FE5 _ 83. EC, 58
        mov     eax, dword [ebp+8H]                     ; 0FE8 _ 8B. 45, 08
        mov     dword [ebp-4CH], eax                    ; 0FEB _ 89. 45, B4
; Note: Absolute memory address without relocation
        mov     eax, dword [gs:14H]                     ; 0FEE _ 65: A1, 00000014
        mov     dword [ebp-0CH], eax                    ; 0FF4 _ 89. 45, F4
        xor     eax, eax                                ; 0FF7 _ 31. C0
        mov     edx, dword [sheet_back]                 ; 0FF9 _ 8B. 15, 0000024C(d)
        mov     eax, dword [shtctl]                     ; 0FFF _ A1, 00000244(d)
        sub     esp, 8                                  ; 1004 _ 83. EC, 08
        push    ?_235                                   ; 1007 _ 68, 0000003B(d)
        push    7                                       ; 100C _ 6A, 07
        push    144                                     ; 100E _ 68, 00000090
        push    0                                       ; 1013 _ 6A, 00
        push    edx                                     ; 1015 _ 52
        push    eax                                     ; 1016 _ 50
        call    showString                              ; 1017 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 101C _ 83. C4, 20
        mov     dword [ebp-3CH], 0                      ; 101F _ C7. 45, C4, 00000000
        mov     dword [ebp-38H], 0                      ; 1026 _ C7. 45, C8, 00000000
        push    0                                       ; 102D _ 6A, 00
        lea     eax, [ebp-14H]                          ; 102F _ 8D. 45, EC
        push    eax                                     ; 1032 _ 50
        push    8                                       ; 1033 _ 6A, 08
        lea     eax, [ebp-30H]                          ; 1035 _ 8D. 45, D0
        push    eax                                     ; 1038 _ 50
        call    fifo8_init                              ; 1039 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 103E _ 83. C4, 10
        call    timer_alloc                             ; 1041 _ E8, FFFFFFFC(rel)
        mov     dword [ebp-3CH], eax                    ; 1046 _ 89. 45, C4
        sub     esp, 4                                  ; 1049 _ 83. EC, 04
        push    123                                     ; 104C _ 6A, 7B
        lea     eax, [ebp-30H]                          ; 104E _ 8D. 45, D0
        push    eax                                     ; 1051 _ 50
        push    dword [ebp-3CH]                         ; 1052 _ FF. 75, C4
        call    timer_init                              ; 1055 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 105A _ 83. C4, 10
        sub     esp, 8                                  ; 105D _ 83. EC, 08
        push    100                                     ; 1060 _ 6A, 64
        push    dword [ebp-3CH]                         ; 1062 _ FF. 75, C4
        call    timer_setTime                           ; 1065 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 106A _ 83. C4, 10
        mov     dword [ebp-44H], 0                      ; 106D _ C7. 45, BC, 00000000
        mov     dword [ebp-40H], 0                      ; 1074 _ C7. 45, C0, 00000000
?_042:  add     dword [ebp-40H], 1                      ; 107B _ 83. 45, C0, 01
        mov     eax, dword [ebp-4CH]                    ; 107F _ 8B. 45, B4
        mov     edx, dword [eax+4H]                     ; 1082 _ 8B. 50, 04
        mov     eax, dword [ebp-4CH]                    ; 1085 _ 8B. 45, B4
        mov     eax, dword [eax]                        ; 1088 _ 8B. 00
        sub     esp, 4                                  ; 108A _ 83. EC, 04
        push    38                                      ; 108D _ 6A, 26
        push    100                                     ; 108F _ 6A, 64
        push    23                                      ; 1091 _ 6A, 17
        push    8                                       ; 1093 _ 6A, 08
        push    8                                       ; 1095 _ 6A, 08
        push    edx                                     ; 1097 _ 52
        push    eax                                     ; 1098 _ 50
        call    boxfill8                                ; 1099 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 109E _ 83. C4, 20
        sub     esp, 12                                 ; 10A1 _ 83. EC, 0C
        push    dword [ebp-40H]                         ; 10A4 _ FF. 75, C0
        call    intToHexStr                             ; 10A7 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 10AC _ 83. C4, 10
        mov     dword [ebp-34H], eax                    ; 10AF _ 89. 45, CC
        mov     eax, dword [shtctl]                     ; 10B2 _ A1, 00000244(d)
        sub     esp, 8                                  ; 10B7 _ 83. EC, 08
        push    dword [ebp-34H]                         ; 10BA _ FF. 75, CC
        push    10                                      ; 10BD _ 6A, 0A
        push    23                                      ; 10BF _ 6A, 17
        push    8                                       ; 10C1 _ 6A, 08
        push    dword [ebp-4CH]                         ; 10C3 _ FF. 75, B4
        push    eax                                     ; 10C6 _ 50
        call    showString                              ; 10C7 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 10CC _ 83. C4, 20
        call    io_cli                                  ; 10CF _ E8, FFFFFFFC(rel)
        sub     esp, 12                                 ; 10D4 _ 83. EC, 0C
        lea     eax, [ebp-30H]                          ; 10D7 _ 8D. 45, D0
        push    eax                                     ; 10DA _ 50
        call    fifo8_status                            ; 10DB _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 10E0 _ 83. C4, 10
        test    eax, eax                                ; 10E3 _ 85. C0
        jnz     ?_043                                   ; 10E5 _ 75, 07
        call    io_sti                                  ; 10E7 _ E8, FFFFFFFC(rel)
        jmp     ?_042                                   ; 10EC _ EB, 8D

?_043:  sub     esp, 12                                 ; 10EE _ 83. EC, 0C
        lea     eax, [ebp-30H]                          ; 10F1 _ 8D. 45, D0
        push    eax                                     ; 10F4 _ 50
        call    fifo8_get                               ; 10F5 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 10FA _ 83. C4, 10
        mov     dword [ebp-38H], eax                    ; 10FD _ 89. 45, C8
        call    io_sti                                  ; 1100 _ E8, FFFFFFFC(rel)
        cmp     dword [ebp-38H], 123                    ; 1105 _ 83. 7D, C8, 7B
        jne     ?_042                                   ; 1109 _ 0F 85, FFFFFF6C
        mov     edx, dword [sheet_back]                 ; 110F _ 8B. 15, 0000024C(d)
        mov     eax, dword [shtctl]                     ; 1115 _ A1, 00000244(d)
        sub     esp, 8                                  ; 111A _ 83. EC, 08
        push    ?_236                                   ; 111D _ 68, 00000048(d)
        push    7                                       ; 1122 _ 6A, 07
        push    176                                     ; 1124 _ 68, 000000B0
        push    dword [ebp-44H]                         ; 1129 _ FF. 75, BC
        push    edx                                     ; 112C _ 52
        push    eax                                     ; 112D _ 50
        call    showString                              ; 112E _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1133 _ 83. C4, 20
        sub     esp, 8                                  ; 1136 _ 83. EC, 08
        push    100                                     ; 1139 _ 6A, 64
        push    dword [ebp-3CH]                         ; 113B _ FF. 75, C4
        call    timer_setTime                           ; 113E _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1143 _ 83. C4, 10
        add     dword [ebp-44H], 8                      ; 1146 _ 83. 45, BC, 08
        jmp     ?_042                                   ; 114A _ E9, FFFFFF2C
; task_b_main End of function

initBootInfo:; Function begin
        push    ebp                                     ; 114F _ 55
        mov     ebp, esp                                ; 1150 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 1152 _ 8B. 45, 08
        mov     dword [eax], -536870912                 ; 1155 _ C7. 00, E0000000
        mov     eax, dword [ebp+8H]                     ; 115B _ 8B. 45, 08
; Note: Length-changing prefix causes delay on Intel processors
        mov     word [eax+4H], 640                      ; 115E _ 66: C7. 40, 04, 0280
        mov     eax, dword [ebp+8H]                     ; 1164 _ 8B. 45, 08
; Note: Length-changing prefix causes delay on Intel processors
        mov     word [eax+6H], 480                      ; 1167 _ 66: C7. 40, 06, 01E0
        nop                                             ; 116D _ 90
        pop     ebp                                     ; 116E _ 5D
        ret                                             ; 116F _ C3
; initBootInfo End of function

showString:; Function begin
        push    ebp                                     ; 1170 _ 55
        mov     ebp, esp                                ; 1171 _ 89. E5
        push    ebx                                     ; 1173 _ 53
        sub     esp, 36                                 ; 1174 _ 83. EC, 24
        mov     eax, dword [ebp+18H]                    ; 1177 _ 8B. 45, 18
        mov     byte [ebp-1CH], al                      ; 117A _ 88. 45, E4
        mov     eax, dword [ebp+10H]                    ; 117D _ 8B. 45, 10
        mov     dword [ebp-0CH], eax                    ; 1180 _ 89. 45, F4
        jmp     ?_045                                   ; 1183 _ EB, 3E

?_044:  mov     eax, dword [ebp+1CH]                    ; 1185 _ 8B. 45, 1C
        movzx   eax, byte [eax]                         ; 1188 _ 0F B6. 00
        movzx   eax, al                                 ; 118B _ 0F B6. C0
        shl     eax, 4                                  ; 118E _ C1. E0, 04
        lea     ebx, [systemFont+eax]                   ; 1191 _ 8D. 98, 00000000(d)
        movsx   ecx, byte [ebp-1CH]                     ; 1197 _ 0F BE. 4D, E4
        mov     eax, dword [ebp+0CH]                    ; 119B _ 8B. 45, 0C
        mov     edx, dword [eax+4H]                     ; 119E _ 8B. 50, 04
        mov     eax, dword [ebp+0CH]                    ; 11A1 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 11A4 _ 8B. 00
        sub     esp, 8                                  ; 11A6 _ 83. EC, 08
        push    ebx                                     ; 11A9 _ 53
        push    ecx                                     ; 11AA _ 51
        push    dword [ebp+14H]                         ; 11AB _ FF. 75, 14
        push    dword [ebp+10H]                         ; 11AE _ FF. 75, 10
        push    edx                                     ; 11B1 _ 52
        push    eax                                     ; 11B2 _ 50
        call    showFont8                               ; 11B3 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 11B8 _ 83. C4, 20
        add     dword [ebp+10H], 8                      ; 11BB _ 83. 45, 10, 08
        add     dword [ebp+1CH], 1                      ; 11BF _ 83. 45, 1C, 01
?_045:  mov     eax, dword [ebp+1CH]                    ; 11C3 _ 8B. 45, 1C
        movzx   eax, byte [eax]                         ; 11C6 _ 0F B6. 00
        test    al, al                                  ; 11C9 _ 84. C0
        jnz     ?_044                                   ; 11CB _ 75, B8
        mov     eax, dword [ebp+14H]                    ; 11CD _ 8B. 45, 14
        add     eax, 16                                 ; 11D0 _ 83. C0, 10
        sub     esp, 8                                  ; 11D3 _ 83. EC, 08
        push    eax                                     ; 11D6 _ 50
        push    dword [ebp+10H]                         ; 11D7 _ FF. 75, 10
        push    dword [ebp+14H]                         ; 11DA _ FF. 75, 14
        push    dword [ebp-0CH]                         ; 11DD _ FF. 75, F4
        push    dword [ebp+0CH]                         ; 11E0 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 11E3 _ FF. 75, 08
        call    sheet_refresh                           ; 11E6 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 11EB _ 83. C4, 20
        nop                                             ; 11EE _ 90
        mov     ebx, dword [ebp-4H]                     ; 11EF _ 8B. 5D, FC
        leave                                           ; 11F2 _ C9
        ret                                             ; 11F3 _ C3
; showString End of function

init_screen8:; Function begin
        push    ebp                                     ; 11F4 _ 55
        mov     ebp, esp                                ; 11F5 _ 89. E5
        push    ebx                                     ; 11F7 _ 53
        sub     esp, 4                                  ; 11F8 _ 83. EC, 04
        mov     eax, dword [ebp+10H]                    ; 11FB _ 8B. 45, 10
        lea     edx, [eax-19H]                          ; 11FE _ 8D. 50, E7
        mov     eax, dword [ebp+0CH]                    ; 1201 _ 8B. 45, 0C
        sub     eax, 1                                  ; 1204 _ 83. E8, 01
        sub     esp, 4                                  ; 1207 _ 83. EC, 04
        push    edx                                     ; 120A _ 52
        push    eax                                     ; 120B _ 50
        push    0                                       ; 120C _ 6A, 00
        push    0                                       ; 120E _ 6A, 00
        push    14                                      ; 1210 _ 6A, 0E
        push    dword [ebp+0CH]                         ; 1212 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1215 _ FF. 75, 08
        call    boxfill8                                ; 1218 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 121D _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 1220 _ 8B. 45, 10
        lea     ecx, [eax-18H]                          ; 1223 _ 8D. 48, E8
        mov     eax, dword [ebp+0CH]                    ; 1226 _ 8B. 45, 0C
        lea     edx, [eax-1H]                           ; 1229 _ 8D. 50, FF
        mov     eax, dword [ebp+10H]                    ; 122C _ 8B. 45, 10
        sub     eax, 24                                 ; 122F _ 83. E8, 18
        sub     esp, 4                                  ; 1232 _ 83. EC, 04
        push    ecx                                     ; 1235 _ 51
        push    edx                                     ; 1236 _ 52
        push    eax                                     ; 1237 _ 50
        push    0                                       ; 1238 _ 6A, 00
        push    8                                       ; 123A _ 6A, 08
        push    dword [ebp+0CH]                         ; 123C _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 123F _ FF. 75, 08
        call    boxfill8                                ; 1242 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1247 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 124A _ 8B. 45, 10
        lea     ecx, [eax-17H]                          ; 124D _ 8D. 48, E9
        mov     eax, dword [ebp+0CH]                    ; 1250 _ 8B. 45, 0C
        lea     edx, [eax-1H]                           ; 1253 _ 8D. 50, FF
        mov     eax, dword [ebp+10H]                    ; 1256 _ 8B. 45, 10
        sub     eax, 23                                 ; 1259 _ 83. E8, 17
        sub     esp, 4                                  ; 125C _ 83. EC, 04
        push    ecx                                     ; 125F _ 51
        push    edx                                     ; 1260 _ 52
        push    eax                                     ; 1261 _ 50
        push    0                                       ; 1262 _ 6A, 00
        push    7                                       ; 1264 _ 6A, 07
        push    dword [ebp+0CH]                         ; 1266 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1269 _ FF. 75, 08
        call    boxfill8                                ; 126C _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1271 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 1274 _ 8B. 45, 10
        lea     ecx, [eax-1H]                           ; 1277 _ 8D. 48, FF
        mov     eax, dword [ebp+0CH]                    ; 127A _ 8B. 45, 0C
        lea     edx, [eax-1H]                           ; 127D _ 8D. 50, FF
        mov     eax, dword [ebp+10H]                    ; 1280 _ 8B. 45, 10
        sub     eax, 22                                 ; 1283 _ 83. E8, 16
        sub     esp, 4                                  ; 1286 _ 83. EC, 04
        push    ecx                                     ; 1289 _ 51
        push    edx                                     ; 128A _ 52
        push    eax                                     ; 128B _ 50
        push    0                                       ; 128C _ 6A, 00
        push    8                                       ; 128E _ 6A, 08
        push    dword [ebp+0CH]                         ; 1290 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1293 _ FF. 75, 08
        call    boxfill8                                ; 1296 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 129B _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 129E _ 8B. 45, 10
        lea     edx, [eax-14H]                          ; 12A1 _ 8D. 50, EC
        mov     eax, dword [ebp+10H]                    ; 12A4 _ 8B. 45, 10
        sub     eax, 20                                 ; 12A7 _ 83. E8, 14
        sub     esp, 4                                  ; 12AA _ 83. EC, 04
        push    edx                                     ; 12AD _ 52
        push    51                                      ; 12AE _ 6A, 33
        push    eax                                     ; 12B0 _ 50
        push    10                                      ; 12B1 _ 6A, 0A
        push    7                                       ; 12B3 _ 6A, 07
        push    dword [ebp+0CH]                         ; 12B5 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 12B8 _ FF. 75, 08
        call    boxfill8                                ; 12BB _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 12C0 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 12C3 _ 8B. 45, 10
        lea     edx, [eax-4H]                           ; 12C6 _ 8D. 50, FC
        mov     eax, dword [ebp+10H]                    ; 12C9 _ 8B. 45, 10
        sub     eax, 20                                 ; 12CC _ 83. E8, 14
        sub     esp, 4                                  ; 12CF _ 83. EC, 04
        push    edx                                     ; 12D2 _ 52
        push    9                                       ; 12D3 _ 6A, 09
        push    eax                                     ; 12D5 _ 50
        push    9                                       ; 12D6 _ 6A, 09
        push    7                                       ; 12D8 _ 6A, 07
        push    dword [ebp+0CH]                         ; 12DA _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 12DD _ FF. 75, 08
        call    boxfill8                                ; 12E0 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 12E5 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 12E8 _ 8B. 45, 10
        lea     edx, [eax-4H]                           ; 12EB _ 8D. 50, FC
        mov     eax, dword [ebp+10H]                    ; 12EE _ 8B. 45, 10
        sub     eax, 4                                  ; 12F1 _ 83. E8, 04
        sub     esp, 4                                  ; 12F4 _ 83. EC, 04
        push    edx                                     ; 12F7 _ 52
        push    50                                      ; 12F8 _ 6A, 32
        push    eax                                     ; 12FA _ 50
        push    10                                      ; 12FB _ 6A, 0A
        push    15                                      ; 12FD _ 6A, 0F
        push    dword [ebp+0CH]                         ; 12FF _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1302 _ FF. 75, 08
        call    boxfill8                                ; 1305 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 130A _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 130D _ 8B. 45, 10
        lea     edx, [eax-5H]                           ; 1310 _ 8D. 50, FB
        mov     eax, dword [ebp+10H]                    ; 1313 _ 8B. 45, 10
        sub     eax, 19                                 ; 1316 _ 83. E8, 13
        sub     esp, 4                                  ; 1319 _ 83. EC, 04
        push    edx                                     ; 131C _ 52
        push    50                                      ; 131D _ 6A, 32
        push    eax                                     ; 131F _ 50
        push    50                                      ; 1320 _ 6A, 32
        push    15                                      ; 1322 _ 6A, 0F
        push    dword [ebp+0CH]                         ; 1324 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1327 _ FF. 75, 08
        call    boxfill8                                ; 132A _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 132F _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 1332 _ 8B. 45, 10
        lea     edx, [eax-3H]                           ; 1335 _ 8D. 50, FD
        mov     eax, dword [ebp+10H]                    ; 1338 _ 8B. 45, 10
        sub     eax, 3                                  ; 133B _ 83. E8, 03
        sub     esp, 4                                  ; 133E _ 83. EC, 04
        push    edx                                     ; 1341 _ 52
        push    50                                      ; 1342 _ 6A, 32
        push    eax                                     ; 1344 _ 50
        push    10                                      ; 1345 _ 6A, 0A
        push    0                                       ; 1347 _ 6A, 00
        push    dword [ebp+0CH]                         ; 1349 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 134C _ FF. 75, 08
        call    boxfill8                                ; 134F _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1354 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 1357 _ 8B. 45, 10
        lea     edx, [eax-3H]                           ; 135A _ 8D. 50, FD
        mov     eax, dword [ebp+10H]                    ; 135D _ 8B. 45, 10
        sub     eax, 20                                 ; 1360 _ 83. E8, 14
        sub     esp, 4                                  ; 1363 _ 83. EC, 04
        push    edx                                     ; 1366 _ 52
        push    51                                      ; 1367 _ 6A, 33
        push    eax                                     ; 1369 _ 50
        push    51                                      ; 136A _ 6A, 33
        push    0                                       ; 136C _ 6A, 00
        push    dword [ebp+0CH]                         ; 136E _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1371 _ FF. 75, 08
        call    boxfill8                                ; 1374 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1379 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 137C _ 8B. 45, 10
        lea     ebx, [eax-14H]                          ; 137F _ 8D. 58, EC
        mov     eax, dword [ebp+0CH]                    ; 1382 _ 8B. 45, 0C
        lea     ecx, [eax-4H]                           ; 1385 _ 8D. 48, FC
        mov     eax, dword [ebp+10H]                    ; 1388 _ 8B. 45, 10
        lea     edx, [eax-14H]                          ; 138B _ 8D. 50, EC
        mov     eax, dword [ebp+0CH]                    ; 138E _ 8B. 45, 0C
        sub     eax, 47                                 ; 1391 _ 83. E8, 2F
        sub     esp, 4                                  ; 1394 _ 83. EC, 04
        push    ebx                                     ; 1397 _ 53
        push    ecx                                     ; 1398 _ 51
        push    edx                                     ; 1399 _ 52
        push    eax                                     ; 139A _ 50
        push    15                                      ; 139B _ 6A, 0F
        push    dword [ebp+0CH]                         ; 139D _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 13A0 _ FF. 75, 08
        call    boxfill8                                ; 13A3 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 13A8 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 13AB _ 8B. 45, 10
        lea     ebx, [eax-3H]                           ; 13AE _ 8D. 58, FD
        mov     eax, dword [ebp+0CH]                    ; 13B1 _ 8B. 45, 0C
        lea     ecx, [eax-2FH]                          ; 13B4 _ 8D. 48, D1
        mov     eax, dword [ebp+10H]                    ; 13B7 _ 8B. 45, 10
        lea     edx, [eax-14H]                          ; 13BA _ 8D. 50, EC
        mov     eax, dword [ebp+0CH]                    ; 13BD _ 8B. 45, 0C
        sub     eax, 47                                 ; 13C0 _ 83. E8, 2F
        sub     esp, 4                                  ; 13C3 _ 83. EC, 04
        push    ebx                                     ; 13C6 _ 53
        push    ecx                                     ; 13C7 _ 51
        push    edx                                     ; 13C8 _ 52
        push    eax                                     ; 13C9 _ 50
        push    15                                      ; 13CA _ 6A, 0F
        push    dword [ebp+0CH]                         ; 13CC _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 13CF _ FF. 75, 08
        call    boxfill8                                ; 13D2 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 13D7 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 13DA _ 8B. 45, 10
        lea     ebx, [eax-3H]                           ; 13DD _ 8D. 58, FD
        mov     eax, dword [ebp+0CH]                    ; 13E0 _ 8B. 45, 0C
        lea     ecx, [eax-4H]                           ; 13E3 _ 8D. 48, FC
        mov     eax, dword [ebp+10H]                    ; 13E6 _ 8B. 45, 10
        lea     edx, [eax-3H]                           ; 13E9 _ 8D. 50, FD
        mov     eax, dword [ebp+0CH]                    ; 13EC _ 8B. 45, 0C
        sub     eax, 47                                 ; 13EF _ 83. E8, 2F
        sub     esp, 4                                  ; 13F2 _ 83. EC, 04
        push    ebx                                     ; 13F5 _ 53
        push    ecx                                     ; 13F6 _ 51
        push    edx                                     ; 13F7 _ 52
        push    eax                                     ; 13F8 _ 50
        push    7                                       ; 13F9 _ 6A, 07
        push    dword [ebp+0CH]                         ; 13FB _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 13FE _ FF. 75, 08
        call    boxfill8                                ; 1401 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1406 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 1409 _ 8B. 45, 10
        lea     ebx, [eax-3H]                           ; 140C _ 8D. 58, FD
        mov     eax, dword [ebp+0CH]                    ; 140F _ 8B. 45, 0C
        lea     ecx, [eax-3H]                           ; 1412 _ 8D. 48, FD
        mov     eax, dword [ebp+10H]                    ; 1415 _ 8B. 45, 10
        lea     edx, [eax-14H]                          ; 1418 _ 8D. 50, EC
        mov     eax, dword [ebp+0CH]                    ; 141B _ 8B. 45, 0C
        sub     eax, 3                                  ; 141E _ 83. E8, 03
        sub     esp, 4                                  ; 1421 _ 83. EC, 04
        push    ebx                                     ; 1424 _ 53
        push    ecx                                     ; 1425 _ 51
        push    edx                                     ; 1426 _ 52
        push    eax                                     ; 1427 _ 50
        push    7                                       ; 1428 _ 6A, 07
        push    dword [ebp+0CH]                         ; 142A _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 142D _ FF. 75, 08
        call    boxfill8                                ; 1430 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1435 _ 83. C4, 20
        nop                                             ; 1438 _ 90
        mov     ebx, dword [ebp-4H]                     ; 1439 _ 8B. 5D, FC
        leave                                           ; 143C _ C9
        ret                                             ; 143D _ C3
; init_screen8 End of function

init_palette:; Function begin
        push    ebp                                     ; 143E _ 55
        mov     ebp, esp                                ; 143F _ 89. E5
        sub     esp, 24                                 ; 1441 _ 83. EC, 18
        mov     eax, dword [bootInfo]                   ; 1444 _ A1, 00000008(d)
        mov     dword [ebp-14H], eax                    ; 1449 _ 89. 45, EC
        movzx   eax, word [?_245]                       ; 144C _ 0F B7. 05, 0000000C(d)
        cwde                                            ; 1453 _ 98
        mov     dword [ebp-10H], eax                    ; 1454 _ 89. 45, F0
        movzx   eax, word [?_246]                       ; 1457 _ 0F B7. 05, 0000000E(d)
        cwde                                            ; 145E _ 98
        mov     dword [ebp-0CH], eax                    ; 145F _ 89. 45, F4
        sub     esp, 4                                  ; 1462 _ 83. EC, 04
        push    table_rgb.2380                          ; 1465 _ 68, 00000120(d)
        push    15                                      ; 146A _ 6A, 0F
        push    0                                       ; 146C _ 6A, 00
        call    set_palette                             ; 146E _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1473 _ 83. C4, 10
        nop                                             ; 1476 _ 90
        leave                                           ; 1477 _ C9
        ret                                             ; 1478 _ C3
; init_palette End of function

set_palette:; Function begin
        push    ebp                                     ; 1479 _ 55
        mov     ebp, esp                                ; 147A _ 89. E5
        sub     esp, 24                                 ; 147C _ 83. EC, 18
        call    io_load_eflags                          ; 147F _ E8, FFFFFFFC(rel)
        mov     dword [ebp-0CH], eax                    ; 1484 _ 89. 45, F4
        call    io_cli                                  ; 1487 _ E8, FFFFFFFC(rel)
        sub     esp, 8                                  ; 148C _ 83. EC, 08
        push    dword [ebp+8H]                          ; 148F _ FF. 75, 08
        push    968                                     ; 1492 _ 68, 000003C8
        call    io_out8                                 ; 1497 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 149C _ 83. C4, 10
        mov     eax, dword [ebp+8H]                     ; 149F _ 8B. 45, 08
        mov     dword [ebp-10H], eax                    ; 14A2 _ 89. 45, F0
        jmp     ?_047                                   ; 14A5 _ EB, 65

?_046:  mov     eax, dword [ebp+10H]                    ; 14A7 _ 8B. 45, 10
        movzx   eax, byte [eax]                         ; 14AA _ 0F B6. 00
        shr     al, 2                                   ; 14AD _ C0. E8, 02
        movzx   eax, al                                 ; 14B0 _ 0F B6. C0
        sub     esp, 8                                  ; 14B3 _ 83. EC, 08
        push    eax                                     ; 14B6 _ 50
        push    969                                     ; 14B7 _ 68, 000003C9
        call    io_out8                                 ; 14BC _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 14C1 _ 83. C4, 10
        mov     eax, dword [ebp+10H]                    ; 14C4 _ 8B. 45, 10
        add     eax, 1                                  ; 14C7 _ 83. C0, 01
        movzx   eax, byte [eax]                         ; 14CA _ 0F B6. 00
        shr     al, 2                                   ; 14CD _ C0. E8, 02
        movzx   eax, al                                 ; 14D0 _ 0F B6. C0
        sub     esp, 8                                  ; 14D3 _ 83. EC, 08
        push    eax                                     ; 14D6 _ 50
        push    969                                     ; 14D7 _ 68, 000003C9
        call    io_out8                                 ; 14DC _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 14E1 _ 83. C4, 10
        mov     eax, dword [ebp+10H]                    ; 14E4 _ 8B. 45, 10
        add     eax, 2                                  ; 14E7 _ 83. C0, 02
        movzx   eax, byte [eax]                         ; 14EA _ 0F B6. 00
        shr     al, 2                                   ; 14ED _ C0. E8, 02
        movzx   eax, al                                 ; 14F0 _ 0F B6. C0
        sub     esp, 8                                  ; 14F3 _ 83. EC, 08
        push    eax                                     ; 14F6 _ 50
        push    969                                     ; 14F7 _ 68, 000003C9
        call    io_out8                                 ; 14FC _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1501 _ 83. C4, 10
        add     dword [ebp+10H], 3                      ; 1504 _ 83. 45, 10, 03
        add     dword [ebp-10H], 1                      ; 1508 _ 83. 45, F0, 01
?_047:  mov     eax, dword [ebp-10H]                    ; 150C _ 8B. 45, F0
        cmp     eax, dword [ebp+0CH]                    ; 150F _ 3B. 45, 0C
        jle     ?_046                                   ; 1512 _ 7E, 93
        sub     esp, 12                                 ; 1514 _ 83. EC, 0C
        push    dword [ebp-0CH]                         ; 1517 _ FF. 75, F4
        call    io_store_eflags                         ; 151A _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 151F _ 83. C4, 10
        nop                                             ; 1522 _ 90
        leave                                           ; 1523 _ C9
        ret                                             ; 1524 _ C3
; set_palette End of function

boxfill8:; Function begin
        push    ebp                                     ; 1525 _ 55
        mov     ebp, esp                                ; 1526 _ 89. E5
        sub     esp, 20                                 ; 1528 _ 83. EC, 14
        mov     eax, dword [ebp+10H]                    ; 152B _ 8B. 45, 10
        mov     byte [ebp-14H], al                      ; 152E _ 88. 45, EC
        mov     eax, dword [ebp+18H]                    ; 1531 _ 8B. 45, 18
        mov     dword [ebp-4H], eax                     ; 1534 _ 89. 45, FC
        jmp     ?_051                                   ; 1537 _ EB, 33

?_048:  mov     eax, dword [ebp+14H]                    ; 1539 _ 8B. 45, 14
        mov     dword [ebp-8H], eax                     ; 153C _ 89. 45, F8
        jmp     ?_050                                   ; 153F _ EB, 1F

?_049:  mov     eax, dword [ebp-4H]                     ; 1541 _ 8B. 45, FC
        imul    eax, dword [ebp+0CH]                    ; 1544 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 1548 _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 154A _ 8B. 45, F8
        add     eax, edx                                ; 154D _ 01. D0
        mov     edx, eax                                ; 154F _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 1551 _ 8B. 45, 08
        add     edx, eax                                ; 1554 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 1556 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 155A _ 88. 02
        add     dword [ebp-8H], 1                       ; 155C _ 83. 45, F8, 01
?_050:  mov     eax, dword [ebp-8H]                     ; 1560 _ 8B. 45, F8
        cmp     eax, dword [ebp+1CH]                    ; 1563 _ 3B. 45, 1C
        jle     ?_049                                   ; 1566 _ 7E, D9
        add     dword [ebp-4H], 1                       ; 1568 _ 83. 45, FC, 01
?_051:  mov     eax, dword [ebp-4H]                     ; 156C _ 8B. 45, FC
        cmp     eax, dword [ebp+20H]                    ; 156F _ 3B. 45, 20
        jle     ?_048                                   ; 1572 _ 7E, C5
        nop                                             ; 1574 _ 90
        leave                                           ; 1575 _ C9
        ret                                             ; 1576 _ C3
; boxfill8 End of function

make_textbox8:; Function begin
        push    ebp                                     ; 1577 _ 55
        mov     ebp, esp                                ; 1578 _ 89. E5
        push    edi                                     ; 157A _ 57
        push    esi                                     ; 157B _ 56
        push    ebx                                     ; 157C _ 53
        sub     esp, 16                                 ; 157D _ 83. EC, 10
        mov     edx, dword [ebp+0CH]                    ; 1580 _ 8B. 55, 0C
        mov     eax, dword [ebp+14H]                    ; 1583 _ 8B. 45, 14
        add     eax, edx                                ; 1586 _ 01. D0
        mov     dword [ebp-14H], eax                    ; 1588 _ 89. 45, EC
        mov     edx, dword [ebp+10H]                    ; 158B _ 8B. 55, 10
        mov     eax, dword [ebp+18H]                    ; 158E _ 8B. 45, 18
        add     eax, edx                                ; 1591 _ 01. D0
        mov     dword [ebp-10H], eax                    ; 1593 _ 89. 45, F0
        mov     eax, dword [ebp+10H]                    ; 1596 _ 8B. 45, 10
        lea     edi, [eax-3H]                           ; 1599 _ 8D. 78, FD
        mov     eax, dword [ebp-14H]                    ; 159C _ 8B. 45, EC
        lea     esi, [eax+1H]                           ; 159F _ 8D. 70, 01
        mov     eax, dword [ebp+10H]                    ; 15A2 _ 8B. 45, 10
        lea     ebx, [eax-3H]                           ; 15A5 _ 8D. 58, FD
        mov     eax, dword [ebp+0CH]                    ; 15A8 _ 8B. 45, 0C
        lea     ecx, [eax-2H]                           ; 15AB _ 8D. 48, FE
        mov     eax, dword [ebp+8H]                     ; 15AE _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 15B1 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 15B4 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 15B7 _ 8B. 00
        push    edi                                     ; 15B9 _ 57
        push    esi                                     ; 15BA _ 56
        push    ebx                                     ; 15BB _ 53
        push    ecx                                     ; 15BC _ 51
        push    15                                      ; 15BD _ 6A, 0F
        push    edx                                     ; 15BF _ 52
        push    eax                                     ; 15C0 _ 50
        call    boxfill8                                ; 15C1 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 15C6 _ 83. C4, 1C
        mov     eax, dword [ebp-10H]                    ; 15C9 _ 8B. 45, F0
        lea     edi, [eax+1H]                           ; 15CC _ 8D. 78, 01
        mov     eax, dword [ebp+0CH]                    ; 15CF _ 8B. 45, 0C
        lea     esi, [eax-3H]                           ; 15D2 _ 8D. 70, FD
        mov     eax, dword [ebp+10H]                    ; 15D5 _ 8B. 45, 10
        lea     ebx, [eax-3H]                           ; 15D8 _ 8D. 58, FD
        mov     eax, dword [ebp+0CH]                    ; 15DB _ 8B. 45, 0C
        lea     ecx, [eax-3H]                           ; 15DE _ 8D. 48, FD
        mov     eax, dword [ebp+8H]                     ; 15E1 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 15E4 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 15E7 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 15EA _ 8B. 00
        push    edi                                     ; 15EC _ 57
        push    esi                                     ; 15ED _ 56
        push    ebx                                     ; 15EE _ 53
        push    ecx                                     ; 15EF _ 51
        push    15                                      ; 15F0 _ 6A, 0F
        push    edx                                     ; 15F2 _ 52
        push    eax                                     ; 15F3 _ 50
        call    boxfill8                                ; 15F4 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 15F9 _ 83. C4, 1C
        mov     eax, dword [ebp-10H]                    ; 15FC _ 8B. 45, F0
        lea     edi, [eax+2H]                           ; 15FF _ 8D. 78, 02
        mov     eax, dword [ebp-14H]                    ; 1602 _ 8B. 45, EC
        lea     esi, [eax+1H]                           ; 1605 _ 8D. 70, 01
        mov     eax, dword [ebp-10H]                    ; 1608 _ 8B. 45, F0
        lea     ebx, [eax+2H]                           ; 160B _ 8D. 58, 02
        mov     eax, dword [ebp+0CH]                    ; 160E _ 8B. 45, 0C
        lea     ecx, [eax-3H]                           ; 1611 _ 8D. 48, FD
        mov     eax, dword [ebp+8H]                     ; 1614 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 1617 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 161A _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 161D _ 8B. 00
        push    edi                                     ; 161F _ 57
        push    esi                                     ; 1620 _ 56
        push    ebx                                     ; 1621 _ 53
        push    ecx                                     ; 1622 _ 51
        push    7                                       ; 1623 _ 6A, 07
        push    edx                                     ; 1625 _ 52
        push    eax                                     ; 1626 _ 50
        call    boxfill8                                ; 1627 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 162C _ 83. C4, 1C
        mov     eax, dword [ebp-10H]                    ; 162F _ 8B. 45, F0
        lea     edi, [eax+2H]                           ; 1632 _ 8D. 78, 02
        mov     eax, dword [ebp-14H]                    ; 1635 _ 8B. 45, EC
        lea     esi, [eax+2H]                           ; 1638 _ 8D. 70, 02
        mov     eax, dword [ebp+10H]                    ; 163B _ 8B. 45, 10
        lea     ebx, [eax-3H]                           ; 163E _ 8D. 58, FD
        mov     eax, dword [ebp-14H]                    ; 1641 _ 8B. 45, EC
        lea     ecx, [eax+2H]                           ; 1644 _ 8D. 48, 02
        mov     eax, dword [ebp+8H]                     ; 1647 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 164A _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 164D _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 1650 _ 8B. 00
        push    edi                                     ; 1652 _ 57
        push    esi                                     ; 1653 _ 56
        push    ebx                                     ; 1654 _ 53
        push    ecx                                     ; 1655 _ 51
        push    7                                       ; 1656 _ 6A, 07
        push    edx                                     ; 1658 _ 52
        push    eax                                     ; 1659 _ 50
        call    boxfill8                                ; 165A _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 165F _ 83. C4, 1C
        mov     eax, dword [ebp+10H]                    ; 1662 _ 8B. 45, 10
        lea     esi, [eax-2H]                           ; 1665 _ 8D. 70, FE
        mov     eax, dword [ebp+10H]                    ; 1668 _ 8B. 45, 10
        lea     ebx, [eax-2H]                           ; 166B _ 8D. 58, FE
        mov     eax, dword [ebp+0CH]                    ; 166E _ 8B. 45, 0C
        lea     ecx, [eax-1H]                           ; 1671 _ 8D. 48, FF
        mov     eax, dword [ebp+8H]                     ; 1674 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 1677 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 167A _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 167D _ 8B. 00
        push    esi                                     ; 167F _ 56
        push    dword [ebp-14H]                         ; 1680 _ FF. 75, EC
        push    ebx                                     ; 1683 _ 53
        push    ecx                                     ; 1684 _ 51
        push    0                                       ; 1685 _ 6A, 00
        push    edx                                     ; 1687 _ 52
        push    eax                                     ; 1688 _ 50
        call    boxfill8                                ; 1689 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 168E _ 83. C4, 1C
        mov     eax, dword [ebp+0CH]                    ; 1691 _ 8B. 45, 0C
        lea     esi, [eax-2H]                           ; 1694 _ 8D. 70, FE
        mov     eax, dword [ebp+10H]                    ; 1697 _ 8B. 45, 10
        lea     ebx, [eax-2H]                           ; 169A _ 8D. 58, FE
        mov     eax, dword [ebp+0CH]                    ; 169D _ 8B. 45, 0C
        lea     ecx, [eax-2H]                           ; 16A0 _ 8D. 48, FE
        mov     eax, dword [ebp+8H]                     ; 16A3 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 16A6 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 16A9 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 16AC _ 8B. 00
        push    dword [ebp-10H]                         ; 16AE _ FF. 75, F0
        push    esi                                     ; 16B1 _ 56
        push    ebx                                     ; 16B2 _ 53
        push    ecx                                     ; 16B3 _ 51
        push    0                                       ; 16B4 _ 6A, 00
        push    edx                                     ; 16B6 _ 52
        push    eax                                     ; 16B7 _ 50
        call    boxfill8                                ; 16B8 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 16BD _ 83. C4, 1C
        mov     eax, dword [ebp-10H]                    ; 16C0 _ 8B. 45, F0
        lea     esi, [eax+1H]                           ; 16C3 _ 8D. 70, 01
        mov     eax, dword [ebp-10H]                    ; 16C6 _ 8B. 45, F0
        lea     ebx, [eax+1H]                           ; 16C9 _ 8D. 58, 01
        mov     eax, dword [ebp+0CH]                    ; 16CC _ 8B. 45, 0C
        lea     ecx, [eax-2H]                           ; 16CF _ 8D. 48, FE
        mov     eax, dword [ebp+8H]                     ; 16D2 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 16D5 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 16D8 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 16DB _ 8B. 00
        push    esi                                     ; 16DD _ 56
        push    dword [ebp-14H]                         ; 16DE _ FF. 75, EC
        push    ebx                                     ; 16E1 _ 53
        push    ecx                                     ; 16E2 _ 51
        push    8                                       ; 16E3 _ 6A, 08
        push    edx                                     ; 16E5 _ 52
        push    eax                                     ; 16E6 _ 50
        call    boxfill8                                ; 16E7 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 16EC _ 83. C4, 1C
        mov     eax, dword [ebp-10H]                    ; 16EF _ 8B. 45, F0
        lea     edi, [eax+1H]                           ; 16F2 _ 8D. 78, 01
        mov     eax, dword [ebp-14H]                    ; 16F5 _ 8B. 45, EC
        lea     esi, [eax+1H]                           ; 16F8 _ 8D. 70, 01
        mov     eax, dword [ebp+10H]                    ; 16FB _ 8B. 45, 10
        lea     ebx, [eax-2H]                           ; 16FE _ 8D. 58, FE
        mov     eax, dword [ebp-14H]                    ; 1701 _ 8B. 45, EC
        lea     ecx, [eax+1H]                           ; 1704 _ 8D. 48, 01
        mov     eax, dword [ebp+8H]                     ; 1707 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 170A _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 170D _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 1710 _ 8B. 00
        push    edi                                     ; 1712 _ 57
        push    esi                                     ; 1713 _ 56
        push    ebx                                     ; 1714 _ 53
        push    ecx                                     ; 1715 _ 51
        push    8                                       ; 1716 _ 6A, 08
        push    edx                                     ; 1718 _ 52
        push    eax                                     ; 1719 _ 50
        call    boxfill8                                ; 171A _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 171F _ 83. C4, 1C
        mov     eax, dword [ebp+10H]                    ; 1722 _ 8B. 45, 10
        lea     esi, [eax-1H]                           ; 1725 _ 8D. 70, FF
        mov     eax, dword [ebp+0CH]                    ; 1728 _ 8B. 45, 0C
        lea     ebx, [eax-1H]                           ; 172B _ 8D. 58, FF
        mov     eax, dword [ebp+1CH]                    ; 172E _ 8B. 45, 1C
        movzx   ecx, al                                 ; 1731 _ 0F B6. C8
        mov     eax, dword [ebp+8H]                     ; 1734 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 1737 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 173A _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 173D _ 8B. 00
        push    dword [ebp-10H]                         ; 173F _ FF. 75, F0
        push    dword [ebp-14H]                         ; 1742 _ FF. 75, EC
        push    esi                                     ; 1745 _ 56
        push    ebx                                     ; 1746 _ 53
        push    ecx                                     ; 1747 _ 51
        push    edx                                     ; 1748 _ 52
        push    eax                                     ; 1749 _ 50
        call    boxfill8                                ; 174A _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 174F _ 83. C4, 1C
        nop                                             ; 1752 _ 90
        lea     esp, [ebp-0CH]                          ; 1753 _ 8D. 65, F4
        pop     ebx                                     ; 1756 _ 5B
        pop     esi                                     ; 1757 _ 5E
        pop     edi                                     ; 1758 _ 5F
        pop     ebp                                     ; 1759 _ 5D
        ret                                             ; 175A _ C3
; make_textbox8 End of function

showFont8:; Function begin
        push    ebp                                     ; 175B _ 55
        mov     ebp, esp                                ; 175C _ 89. E5
        sub     esp, 20                                 ; 175E _ 83. EC, 14
        mov     eax, dword [ebp+18H]                    ; 1761 _ 8B. 45, 18
        mov     byte [ebp-14H], al                      ; 1764 _ 88. 45, EC
        mov     dword [ebp-4H], 0                       ; 1767 _ C7. 45, FC, 00000000
        jmp     ?_061                                   ; 176E _ E9, 0000016C

?_052:  mov     edx, dword [ebp-4H]                     ; 1773 _ 8B. 55, FC
        mov     eax, dword [ebp+1CH]                    ; 1776 _ 8B. 45, 1C
        add     eax, edx                                ; 1779 _ 01. D0
        movzx   eax, byte [eax]                         ; 177B _ 0F B6. 00
        mov     byte [ebp-5H], al                       ; 177E _ 88. 45, FB
        cmp     byte [ebp-5H], 0                        ; 1781 _ 80. 7D, FB, 00
        jns     ?_053                                   ; 1785 _ 79, 20
        mov     edx, dword [ebp+14H]                    ; 1787 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 178A _ 8B. 45, FC
        add     eax, edx                                ; 178D _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 178F _ 0F AF. 45, 0C
        mov     edx, eax                                ; 1793 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 1795 _ 8B. 45, 10
        add     eax, edx                                ; 1798 _ 01. D0
        mov     edx, eax                                ; 179A _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 179C _ 8B. 45, 08
        add     edx, eax                                ; 179F _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 17A1 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 17A5 _ 88. 02
?_053:  movsx   eax, byte [ebp-5H]                      ; 17A7 _ 0F BE. 45, FB
        and     eax, 40H                                ; 17AB _ 83. E0, 40
        test    eax, eax                                ; 17AE _ 85. C0
        jz      ?_054                                   ; 17B0 _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 17B2 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 17B5 _ 8B. 45, FC
        add     eax, edx                                ; 17B8 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 17BA _ 0F AF. 45, 0C
        mov     edx, eax                                ; 17BE _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 17C0 _ 8B. 45, 10
        add     eax, edx                                ; 17C3 _ 01. D0
        lea     edx, [eax+1H]                           ; 17C5 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 17C8 _ 8B. 45, 08
        add     edx, eax                                ; 17CB _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 17CD _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 17D1 _ 88. 02
?_054:  movsx   eax, byte [ebp-5H]                      ; 17D3 _ 0F BE. 45, FB
        and     eax, 20H                                ; 17D7 _ 83. E0, 20
        test    eax, eax                                ; 17DA _ 85. C0
        jz      ?_055                                   ; 17DC _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 17DE _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 17E1 _ 8B. 45, FC
        add     eax, edx                                ; 17E4 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 17E6 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 17EA _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 17EC _ 8B. 45, 10
        add     eax, edx                                ; 17EF _ 01. D0
        lea     edx, [eax+2H]                           ; 17F1 _ 8D. 50, 02
        mov     eax, dword [ebp+8H]                     ; 17F4 _ 8B. 45, 08
        add     edx, eax                                ; 17F7 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 17F9 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 17FD _ 88. 02
?_055:  movsx   eax, byte [ebp-5H]                      ; 17FF _ 0F BE. 45, FB
        and     eax, 10H                                ; 1803 _ 83. E0, 10
        test    eax, eax                                ; 1806 _ 85. C0
        jz      ?_056                                   ; 1808 _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 180A _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 180D _ 8B. 45, FC
        add     eax, edx                                ; 1810 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 1812 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 1816 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 1818 _ 8B. 45, 10
        add     eax, edx                                ; 181B _ 01. D0
        lea     edx, [eax+3H]                           ; 181D _ 8D. 50, 03
        mov     eax, dword [ebp+8H]                     ; 1820 _ 8B. 45, 08
        add     edx, eax                                ; 1823 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 1825 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 1829 _ 88. 02
?_056:  movsx   eax, byte [ebp-5H]                      ; 182B _ 0F BE. 45, FB
        and     eax, 08H                                ; 182F _ 83. E0, 08
        test    eax, eax                                ; 1832 _ 85. C0
        jz      ?_057                                   ; 1834 _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 1836 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 1839 _ 8B. 45, FC
        add     eax, edx                                ; 183C _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 183E _ 0F AF. 45, 0C
        mov     edx, eax                                ; 1842 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 1844 _ 8B. 45, 10
        add     eax, edx                                ; 1847 _ 01. D0
        lea     edx, [eax+4H]                           ; 1849 _ 8D. 50, 04
        mov     eax, dword [ebp+8H]                     ; 184C _ 8B. 45, 08
        add     edx, eax                                ; 184F _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 1851 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 1855 _ 88. 02
?_057:  movsx   eax, byte [ebp-5H]                      ; 1857 _ 0F BE. 45, FB
        and     eax, 04H                                ; 185B _ 83. E0, 04
        test    eax, eax                                ; 185E _ 85. C0
        jz      ?_058                                   ; 1860 _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 1862 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 1865 _ 8B. 45, FC
        add     eax, edx                                ; 1868 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 186A _ 0F AF. 45, 0C
        mov     edx, eax                                ; 186E _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 1870 _ 8B. 45, 10
        add     eax, edx                                ; 1873 _ 01. D0
        lea     edx, [eax+5H]                           ; 1875 _ 8D. 50, 05
        mov     eax, dword [ebp+8H]                     ; 1878 _ 8B. 45, 08
        add     edx, eax                                ; 187B _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 187D _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 1881 _ 88. 02
?_058:  movsx   eax, byte [ebp-5H]                      ; 1883 _ 0F BE. 45, FB
        and     eax, 02H                                ; 1887 _ 83. E0, 02
        test    eax, eax                                ; 188A _ 85. C0
        jz      ?_059                                   ; 188C _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 188E _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 1891 _ 8B. 45, FC
        add     eax, edx                                ; 1894 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 1896 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 189A _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 189C _ 8B. 45, 10
        add     eax, edx                                ; 189F _ 01. D0
        lea     edx, [eax+6H]                           ; 18A1 _ 8D. 50, 06
        mov     eax, dword [ebp+8H]                     ; 18A4 _ 8B. 45, 08
        add     edx, eax                                ; 18A7 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 18A9 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 18AD _ 88. 02
?_059:  movsx   eax, byte [ebp-5H]                      ; 18AF _ 0F BE. 45, FB
        and     eax, 01H                                ; 18B3 _ 83. E0, 01
        test    eax, eax                                ; 18B6 _ 85. C0
        jz      ?_060                                   ; 18B8 _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 18BA _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 18BD _ 8B. 45, FC
        add     eax, edx                                ; 18C0 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 18C2 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 18C6 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 18C8 _ 8B. 45, 10
        add     eax, edx                                ; 18CB _ 01. D0
        lea     edx, [eax+7H]                           ; 18CD _ 8D. 50, 07
        mov     eax, dword [ebp+8H]                     ; 18D0 _ 8B. 45, 08
        add     edx, eax                                ; 18D3 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 18D5 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 18D9 _ 88. 02
?_060:  add     dword [ebp-4H], 1                       ; 18DB _ 83. 45, FC, 01
?_061:  cmp     dword [ebp-4H], 15                      ; 18DF _ 83. 7D, FC, 0F
        jle     ?_052                                   ; 18E3 _ 0F 8E, FFFFFE8A
        nop                                             ; 18E9 _ 90
        leave                                           ; 18EA _ C9
        ret                                             ; 18EB _ C3
; showFont8 End of function

init_mouse_cursor:; Function begin
        push    ebp                                     ; 18EC _ 55
        mov     ebp, esp                                ; 18ED _ 89. E5
        sub     esp, 20                                 ; 18EF _ 83. EC, 14
        mov     eax, dword [ebp+0CH]                    ; 18F2 _ 8B. 45, 0C
        mov     byte [ebp-14H], al                      ; 18F5 _ 88. 45, EC
        mov     dword [ebp-4H], 0                       ; 18F8 _ C7. 45, FC, 00000000
        jmp     ?_068                                   ; 18FF _ E9, 000000B1

?_062:  mov     dword [ebp-8H], 0                       ; 1904 _ C7. 45, F8, 00000000
        jmp     ?_067                                   ; 190B _ E9, 00000097

?_063:  mov     eax, dword [ebp-4H]                     ; 1910 _ 8B. 45, FC
        shl     eax, 4                                  ; 1913 _ C1. E0, 04
        mov     edx, eax                                ; 1916 _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 1918 _ 8B. 45, F8
        add     eax, edx                                ; 191B _ 01. D0
        add     eax, cursor.2435                        ; 191D _ 05, 00000160(d)
        movzx   eax, byte [eax]                         ; 1922 _ 0F B6. 00
        cmp     al, 42                                  ; 1925 _ 3C, 2A
        jnz     ?_064                                   ; 1927 _ 75, 17
        mov     eax, dword [ebp-4H]                     ; 1929 _ 8B. 45, FC
        shl     eax, 4                                  ; 192C _ C1. E0, 04
        mov     edx, eax                                ; 192F _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 1931 _ 8B. 45, F8
        add     eax, edx                                ; 1934 _ 01. D0
        mov     edx, eax                                ; 1936 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 1938 _ 8B. 45, 08
        add     eax, edx                                ; 193B _ 01. D0
        mov     byte [eax], 0                           ; 193D _ C6. 00, 00
?_064:  mov     eax, dword [ebp-4H]                     ; 1940 _ 8B. 45, FC
        shl     eax, 4                                  ; 1943 _ C1. E0, 04
        mov     edx, eax                                ; 1946 _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 1948 _ 8B. 45, F8
        add     eax, edx                                ; 194B _ 01. D0
        add     eax, cursor.2435                        ; 194D _ 05, 00000160(d)
        movzx   eax, byte [eax]                         ; 1952 _ 0F B6. 00
        cmp     al, 79                                  ; 1955 _ 3C, 4F
        jnz     ?_065                                   ; 1957 _ 75, 17
        mov     eax, dword [ebp-4H]                     ; 1959 _ 8B. 45, FC
        shl     eax, 4                                  ; 195C _ C1. E0, 04
        mov     edx, eax                                ; 195F _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 1961 _ 8B. 45, F8
        add     eax, edx                                ; 1964 _ 01. D0
        mov     edx, eax                                ; 1966 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 1968 _ 8B. 45, 08
        add     eax, edx                                ; 196B _ 01. D0
        mov     byte [eax], 7                           ; 196D _ C6. 00, 07
?_065:  mov     eax, dword [ebp-4H]                     ; 1970 _ 8B. 45, FC
        shl     eax, 4                                  ; 1973 _ C1. E0, 04
        mov     edx, eax                                ; 1976 _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 1978 _ 8B. 45, F8
        add     eax, edx                                ; 197B _ 01. D0
        add     eax, cursor.2435                        ; 197D _ 05, 00000160(d)
        movzx   eax, byte [eax]                         ; 1982 _ 0F B6. 00
        cmp     al, 46                                  ; 1985 _ 3C, 2E
        jnz     ?_066                                   ; 1987 _ 75, 1A
        mov     eax, dword [ebp-4H]                     ; 1989 _ 8B. 45, FC
        shl     eax, 4                                  ; 198C _ C1. E0, 04
        mov     edx, eax                                ; 198F _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 1991 _ 8B. 45, F8
        add     eax, edx                                ; 1994 _ 01. D0
        mov     edx, eax                                ; 1996 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 1998 _ 8B. 45, 08
        add     edx, eax                                ; 199B _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 199D _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 19A1 _ 88. 02
?_066:  add     dword [ebp-8H], 1                       ; 19A3 _ 83. 45, F8, 01
?_067:  cmp     dword [ebp-8H], 15                      ; 19A7 _ 83. 7D, F8, 0F
        jle     ?_063                                   ; 19AB _ 0F 8E, FFFFFF5F
        add     dword [ebp-4H], 1                       ; 19B1 _ 83. 45, FC, 01
?_068:  cmp     dword [ebp-4H], 15                      ; 19B5 _ 83. 7D, FC, 0F
        jle     ?_062                                   ; 19B9 _ 0F 8E, FFFFFF45
        nop                                             ; 19BF _ 90
        leave                                           ; 19C0 _ C9
        ret                                             ; 19C1 _ C3
; init_mouse_cursor End of function

putblock:; Function begin
        push    ebp                                     ; 19C2 _ 55
        mov     ebp, esp                                ; 19C3 _ 89. E5
        push    ebx                                     ; 19C5 _ 53
        sub     esp, 16                                 ; 19C6 _ 83. EC, 10
        mov     dword [ebp-8H], 0                       ; 19C9 _ C7. 45, F8, 00000000
        jmp     ?_072                                   ; 19D0 _ EB, 50

?_069:  mov     dword [ebp-0CH], 0                      ; 19D2 _ C7. 45, F4, 00000000
        jmp     ?_071                                   ; 19D9 _ EB, 3B

?_070:  mov     eax, dword [ebp-8H]                     ; 19DB _ 8B. 45, F8
        imul    eax, dword [ebp+24H]                    ; 19DE _ 0F AF. 45, 24
        mov     edx, eax                                ; 19E2 _ 89. C2
        mov     eax, dword [ebp-0CH]                    ; 19E4 _ 8B. 45, F4
        add     eax, edx                                ; 19E7 _ 01. D0
        mov     edx, eax                                ; 19E9 _ 89. C2
        mov     eax, dword [ebp+20H]                    ; 19EB _ 8B. 45, 20
        add     eax, edx                                ; 19EE _ 01. D0
        mov     ecx, dword [ebp+1CH]                    ; 19F0 _ 8B. 4D, 1C
        mov     edx, dword [ebp-8H]                     ; 19F3 _ 8B. 55, F8
        add     edx, ecx                                ; 19F6 _ 01. CA
        imul    edx, dword [ebp+0CH]                    ; 19F8 _ 0F AF. 55, 0C
        mov     ebx, dword [ebp+18H]                    ; 19FC _ 8B. 5D, 18
        mov     ecx, dword [ebp-0CH]                    ; 19FF _ 8B. 4D, F4
        add     ecx, ebx                                ; 1A02 _ 01. D9
        add     edx, ecx                                ; 1A04 _ 01. CA
        mov     ecx, edx                                ; 1A06 _ 89. D1
        mov     edx, dword [ebp+8H]                     ; 1A08 _ 8B. 55, 08
        add     edx, ecx                                ; 1A0B _ 01. CA
        movzx   eax, byte [eax]                         ; 1A0D _ 0F B6. 00
        mov     byte [edx], al                          ; 1A10 _ 88. 02
        add     dword [ebp-0CH], 1                      ; 1A12 _ 83. 45, F4, 01
?_071:  mov     eax, dword [ebp-0CH]                    ; 1A16 _ 8B. 45, F4
        cmp     eax, dword [ebp+10H]                    ; 1A19 _ 3B. 45, 10
        jl      ?_070                                   ; 1A1C _ 7C, BD
        add     dword [ebp-8H], 1                       ; 1A1E _ 83. 45, F8, 01
?_072:  mov     eax, dword [ebp-8H]                     ; 1A22 _ 8B. 45, F8
        cmp     eax, dword [ebp+14H]                    ; 1A25 _ 3B. 45, 14
        jl      ?_069                                   ; 1A28 _ 7C, A8
        nop                                             ; 1A2A _ 90
        add     esp, 16                                 ; 1A2B _ 83. C4, 10
        pop     ebx                                     ; 1A2E _ 5B
        pop     ebp                                     ; 1A2F _ 5D
        ret                                             ; 1A30 _ C3
; putblock End of function

intHandlerFromC:; Function begin
        push    ebp                                     ; 1A31 _ 55
        mov     ebp, esp                                ; 1A32 _ 89. E5
        sub     esp, 24                                 ; 1A34 _ 83. EC, 18
        mov     eax, dword [bootInfo]                   ; 1A37 _ A1, 00000008(d)
        mov     dword [ebp-14H], eax                    ; 1A3C _ 89. 45, EC
        movzx   eax, word [?_245]                       ; 1A3F _ 0F B7. 05, 0000000C(d)
        cwde                                            ; 1A46 _ 98
        mov     dword [ebp-10H], eax                    ; 1A47 _ 89. 45, F0
        movzx   eax, word [?_246]                       ; 1A4A _ 0F B7. 05, 0000000E(d)
        cwde                                            ; 1A51 _ 98
        mov     dword [ebp-0CH], eax                    ; 1A52 _ 89. 45, F4
        sub     esp, 8                                  ; 1A55 _ 83. EC, 08
        push    32                                      ; 1A58 _ 6A, 20
        push    32                                      ; 1A5A _ 6A, 20
        call    io_out8                                 ; 1A5C _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1A61 _ 83. C4, 10
        mov     byte [ebp-15H], 0                       ; 1A64 _ C6. 45, EB, 00
        sub     esp, 12                                 ; 1A68 _ 83. EC, 0C
        push    96                                      ; 1A6B _ 6A, 60
        call    io_in8                                  ; 1A6D _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1A72 _ 83. C4, 10
        mov     byte [ebp-15H], al                      ; 1A75 _ 88. 45, EB
        movzx   eax, byte [ebp-15H]                     ; 1A78 _ 0F B6. 45, EB
        sub     esp, 8                                  ; 1A7C _ 83. EC, 08
        push    eax                                     ; 1A7F _ 50
        push    keyInfo                                 ; 1A80 _ 68, 00000010(d)
        call    fifo8_put                               ; 1A85 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1A8A _ 83. C4, 10
        nop                                             ; 1A8D _ 90
        leave                                           ; 1A8E _ C9
        ret                                             ; 1A8F _ C3
; intHandlerFromC End of function

charToHex:; Function begin
        push    ebp                                     ; 1A90 _ 55
        mov     ebp, esp                                ; 1A91 _ 89. E5
        sub     esp, 40                                 ; 1A93 _ 83. EC, 28
        mov     eax, dword [ebp+8H]                     ; 1A96 _ 8B. 45, 08
        mov     byte [ebp-1CH], al                      ; 1A99 _ 88. 45, E4
        movzx   eax, byte [ebp-1CH]                     ; 1A9C _ 0F B6. 45, E4
        and     eax, 0FH                                ; 1AA0 _ 83. E0, 0F
        mov     byte [ebp-9H], al                       ; 1AA3 _ 88. 45, F7
        movsx   eax, byte [ebp-9H]                      ; 1AA6 _ 0F BE. 45, F7
        sub     esp, 12                                 ; 1AAA _ 83. EC, 0C
        push    eax                                     ; 1AAD _ 50
        call    charToVal                               ; 1AAE _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1AB3 _ 83. C4, 10
        mov     byte [?_244], al                        ; 1AB6 _ A2, 00000003(d)
        movzx   eax, byte [ebp-1CH]                     ; 1ABB _ 0F B6. 45, E4
        shr     al, 4                                   ; 1ABF _ C0. E8, 04
        mov     byte [ebp-1CH], al                      ; 1AC2 _ 88. 45, E4
        movzx   eax, byte [ebp-1CH]                     ; 1AC5 _ 0F B6. 45, E4
        movsx   eax, al                                 ; 1AC9 _ 0F BE. C0
        sub     esp, 12                                 ; 1ACC _ 83. EC, 0C
        push    eax                                     ; 1ACF _ 50
        call    charToVal                               ; 1AD0 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1AD5 _ 83. C4, 10
        mov     byte [?_243], al                        ; 1AD8 _ A2, 00000002(d)
        mov     eax, keyVal                             ; 1ADD _ B8, 00000000(d)
        leave                                           ; 1AE2 _ C9
        ret                                             ; 1AE3 _ C3
; charToHex End of function

charToVal:; Function begin
        push    ebp                                     ; 1AE4 _ 55
        mov     ebp, esp                                ; 1AE5 _ 89. E5
        sub     esp, 4                                  ; 1AE7 _ 83. EC, 04
        mov     eax, dword [ebp+8H]                     ; 1AEA _ 8B. 45, 08
        mov     byte [ebp-4H], al                       ; 1AED _ 88. 45, FC
        cmp     byte [ebp-4H], 9                        ; 1AF0 _ 80. 7D, FC, 09
        jle     ?_073                                   ; 1AF4 _ 7E, 09
        movzx   eax, byte [ebp-4H]                      ; 1AF6 _ 0F B6. 45, FC
        add     eax, 55                                 ; 1AFA _ 83. C0, 37
        jmp     ?_074                                   ; 1AFD _ EB, 07

?_073:  movzx   eax, byte [ebp-4H]                      ; 1AFF _ 0F B6. 45, FC
        add     eax, 48                                 ; 1B03 _ 83. C0, 30
?_074:  leave                                           ; 1B06 _ C9
        ret                                             ; 1B07 _ C3
; charToVal End of function

intToHexStr:; Function begin
        push    ebp                                     ; 1B08 _ 55
        mov     ebp, esp                                ; 1B09 _ 89. E5
        sub     esp, 16                                 ; 1B0B _ 83. EC, 10
        mov     byte [str.2478], 48                     ; 1B0E _ C6. 05, 00000278(d), 30
        mov     byte [?_249], 120                       ; 1B15 _ C6. 05, 00000279(d), 78
        mov     byte [?_250], 0                         ; 1B1C _ C6. 05, 00000282(d), 00
        mov     dword [ebp-0CH], 2                      ; 1B23 _ C7. 45, F4, 00000002
        jmp     ?_076                                   ; 1B2A _ EB, 0F

?_075:  mov     eax, dword [ebp-0CH]                    ; 1B2C _ 8B. 45, F4
        add     eax, str.2478                           ; 1B2F _ 05, 00000278(d)
        mov     byte [eax], 48                          ; 1B34 _ C6. 00, 30
        add     dword [ebp-0CH], 1                      ; 1B37 _ 83. 45, F4, 01
?_076:  cmp     dword [ebp-0CH], 9                      ; 1B3B _ 83. 7D, F4, 09
        jle     ?_075                                   ; 1B3F _ 7E, EB
        mov     dword [ebp-8H], 9                       ; 1B41 _ C7. 45, F8, 00000009
        jmp     ?_079                                   ; 1B48 _ EB, 48

?_077:  mov     eax, dword [ebp+8H]                     ; 1B4A _ 8B. 45, 08
        and     eax, 0FH                                ; 1B4D _ 83. E0, 0F
        mov     dword [ebp-4H], eax                     ; 1B50 _ 89. 45, FC
        mov     eax, dword [ebp+8H]                     ; 1B53 _ 8B. 45, 08
        shr     eax, 4                                  ; 1B56 _ C1. E8, 04
        mov     dword [ebp+8H], eax                     ; 1B59 _ 89. 45, 08
        cmp     dword [ebp-4H], 9                       ; 1B5C _ 83. 7D, FC, 09
        jle     ?_078                                   ; 1B60 _ 7E, 19
        mov     eax, dword [ebp-4H]                     ; 1B62 _ 8B. 45, FC
        lea     ecx, [eax+37H]                          ; 1B65 _ 8D. 48, 37
        mov     eax, dword [ebp-8H]                     ; 1B68 _ 8B. 45, F8
        lea     edx, [eax-1H]                           ; 1B6B _ 8D. 50, FF
        mov     dword [ebp-8H], edx                     ; 1B6E _ 89. 55, F8
        mov     edx, ecx                                ; 1B71 _ 89. CA
        mov     byte [str.2478+eax], dl                 ; 1B73 _ 88. 90, 00000278(d)
        jmp     ?_079                                   ; 1B79 _ EB, 17

?_078:  mov     eax, dword [ebp-4H]                     ; 1B7B _ 8B. 45, FC
        lea     ecx, [eax+30H]                          ; 1B7E _ 8D. 48, 30
        mov     eax, dword [ebp-8H]                     ; 1B81 _ 8B. 45, F8
        lea     edx, [eax-1H]                           ; 1B84 _ 8D. 50, FF
        mov     dword [ebp-8H], edx                     ; 1B87 _ 89. 55, F8
        mov     edx, ecx                                ; 1B8A _ 89. CA
        mov     byte [str.2478+eax], dl                 ; 1B8C _ 88. 90, 00000278(d)
?_079:  cmp     dword [ebp-8H], 1                       ; 1B92 _ 83. 7D, F8, 01
        jle     ?_080                                   ; 1B96 _ 7E, 06
        cmp     dword [ebp+8H], 0                       ; 1B98 _ 83. 7D, 08, 00
        jnz     ?_077                                   ; 1B9C _ 75, AC
?_080:  mov     eax, str.2478                           ; 1B9E _ B8, 00000278(d)
        leave                                           ; 1BA3 _ C9
        ret                                             ; 1BA4 _ C3
; intToHexStr End of function

wait_KBC_sendReady:; Function begin
        push    ebp                                     ; 1BA5 _ 55
        mov     ebp, esp                                ; 1BA6 _ 89. E5
        sub     esp, 8                                  ; 1BA8 _ 83. EC, 08
?_081:  sub     esp, 12                                 ; 1BAB _ 83. EC, 0C
        push    100                                     ; 1BAE _ 6A, 64
        call    io_in8                                  ; 1BB0 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1BB5 _ 83. C4, 10
        movsx   eax, al                                 ; 1BB8 _ 0F BE. C0
        and     eax, 02H                                ; 1BBB _ 83. E0, 02
        test    eax, eax                                ; 1BBE _ 85. C0
        jz      ?_082                                   ; 1BC0 _ 74, 02
        jmp     ?_081                                   ; 1BC2 _ EB, E7

?_082:  nop                                             ; 1BC4 _ 90
        nop                                             ; 1BC5 _ 90
        leave                                           ; 1BC6 _ C9
        ret                                             ; 1BC7 _ C3
; wait_KBC_sendReady End of function

init_keyboard:; Function begin
        push    ebp                                     ; 1BC8 _ 55
        mov     ebp, esp                                ; 1BC9 _ 89. E5
        sub     esp, 8                                  ; 1BCB _ 83. EC, 08
        call    wait_KBC_sendReady                      ; 1BCE _ E8, FFFFFFFC(rel)
        sub     esp, 8                                  ; 1BD3 _ 83. EC, 08
        push    96                                      ; 1BD6 _ 6A, 60
        push    100                                     ; 1BD8 _ 6A, 64
        call    io_out8                                 ; 1BDA _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1BDF _ 83. C4, 10
        call    wait_KBC_sendReady                      ; 1BE2 _ E8, FFFFFFFC(rel)
        sub     esp, 8                                  ; 1BE7 _ 83. EC, 08
        push    71                                      ; 1BEA _ 6A, 47
        push    96                                      ; 1BEC _ 6A, 60
        call    io_out8                                 ; 1BEE _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1BF3 _ 83. C4, 10
        nop                                             ; 1BF6 _ 90
        leave                                           ; 1BF7 _ C9
        ret                                             ; 1BF8 _ C3
; init_keyboard End of function

enable_mouse:; Function begin
        push    ebp                                     ; 1BF9 _ 55
        mov     ebp, esp                                ; 1BFA _ 89. E5
        sub     esp, 8                                  ; 1BFC _ 83. EC, 08
        call    wait_KBC_sendReady                      ; 1BFF _ E8, FFFFFFFC(rel)
        sub     esp, 8                                  ; 1C04 _ 83. EC, 08
        push    212                                     ; 1C07 _ 68, 000000D4
        push    100                                     ; 1C0C _ 6A, 64
        call    io_out8                                 ; 1C0E _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1C13 _ 83. C4, 10
        call    wait_KBC_sendReady                      ; 1C16 _ E8, FFFFFFFC(rel)
        sub     esp, 8                                  ; 1C1B _ 83. EC, 08
        push    244                                     ; 1C1E _ 68, 000000F4
        push    96                                      ; 1C23 _ 6A, 60
        call    io_out8                                 ; 1C25 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1C2A _ 83. C4, 10
        mov     eax, dword [ebp+8H]                     ; 1C2D _ 8B. 45, 08
        mov     byte [eax+3H], 0                        ; 1C30 _ C6. 40, 03, 00
        nop                                             ; 1C34 _ 90
        leave                                           ; 1C35 _ C9
        ret                                             ; 1C36 _ C3
; enable_mouse End of function

intHandlerForMouse:; Function begin
        push    ebp                                     ; 1C37 _ 55
        mov     ebp, esp                                ; 1C38 _ 89. E5
        sub     esp, 24                                 ; 1C3A _ 83. EC, 18
        mov     byte [ebp-9H], 0                        ; 1C3D _ C6. 45, F7, 00
        sub     esp, 8                                  ; 1C41 _ 83. EC, 08
        push    32                                      ; 1C44 _ 6A, 20
        push    160                                     ; 1C46 _ 68, 000000A0
        call    io_out8                                 ; 1C4B _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1C50 _ 83. C4, 10
        sub     esp, 8                                  ; 1C53 _ 83. EC, 08
        push    32                                      ; 1C56 _ 6A, 20
        push    32                                      ; 1C58 _ 6A, 20
        call    io_out8                                 ; 1C5A _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1C5F _ 83. C4, 10
        sub     esp, 12                                 ; 1C62 _ 83. EC, 0C
        push    96                                      ; 1C65 _ 6A, 60
        call    io_in8                                  ; 1C67 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1C6C _ 83. C4, 10
        mov     byte [ebp-9H], al                       ; 1C6F _ 88. 45, F7
        movzx   eax, byte [ebp-9H]                      ; 1C72 _ 0F B6. 45, F7
        sub     esp, 8                                  ; 1C76 _ 83. EC, 08
        push    eax                                     ; 1C79 _ 50
        push    mouseInfo                               ; 1C7A _ 68, 0000002C(d)
        call    fifo8_put                               ; 1C7F _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1C84 _ 83. C4, 10
        nop                                             ; 1C87 _ 90
        leave                                           ; 1C88 _ C9
        ret                                             ; 1C89 _ C3
; intHandlerForMouse End of function

showKeyboardInfo:; Function begin
        push    ebp                                     ; 1C8A _ 55
        mov     ebp, esp                                ; 1C8B _ 89. E5
        sub     esp, 40                                 ; 1C8D _ 83. EC, 28
        call    io_sti                                  ; 1C90 _ E8, FFFFFFFC(rel)
        mov     eax, dword [bootInfo]                   ; 1C95 _ A1, 00000008(d)
        mov     dword [ebp-18H], eax                    ; 1C9A _ 89. 45, E8
        movzx   eax, word [?_245]                       ; 1C9D _ 0F B7. 05, 0000000C(d)
        cwde                                            ; 1CA4 _ 98
        mov     dword [ebp-14H], eax                    ; 1CA5 _ 89. 45, EC
        movzx   eax, word [?_246]                       ; 1CA8 _ 0F B7. 05, 0000000E(d)
        cwde                                            ; 1CAF _ 98
        mov     dword [ebp-10H], eax                    ; 1CB0 _ 89. 45, F0
        mov     byte [ebp-19H], 0                       ; 1CB3 _ C6. 45, E7, 00
        sub     esp, 12                                 ; 1CB7 _ 83. EC, 0C
        push    keyInfo                                 ; 1CBA _ 68, 00000010(d)
        call    fifo8_get                               ; 1CBF _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1CC4 _ 83. C4, 10
        mov     byte [ebp-19H], al                      ; 1CC7 _ 88. 45, E7
        movzx   eax, byte [ebp-19H]                     ; 1CCA _ 0F B6. 45, E7
        sub     esp, 12                                 ; 1CCE _ 83. EC, 0C
        push    eax                                     ; 1CD1 _ 50
        call    charToHex                               ; 1CD2 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1CD7 _ 83. C4, 10
        mov     dword [ebp-0CH], eax                    ; 1CDA _ 89. 45, F4
        mov     edx, dword [line.2511]                  ; 1CDD _ 8B. 15, 00000284(d)
        mov     eax, dword [pos.2510]                   ; 1CE3 _ A1, 00000288(d)
        sub     esp, 8                                  ; 1CE8 _ 83. EC, 08
        push    dword [ebp-0CH]                         ; 1CEB _ FF. 75, F4
        push    7                                       ; 1CEE _ 6A, 07
        push    edx                                     ; 1CF0 _ 52
        push    eax                                     ; 1CF1 _ 50
        push    dword [ebp+0CH]                         ; 1CF2 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1CF5 _ FF. 75, 08
        call    showString                              ; 1CF8 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1CFD _ 83. C4, 20
        mov     eax, dword [pos.2510]                   ; 1D00 _ A1, 00000288(d)
        add     eax, 32                                 ; 1D05 _ 83. C0, 20
        mov     dword [pos.2510], eax                   ; 1D08 _ A3, 00000288(d)
        mov     eax, dword [pos.2510]                   ; 1D0D _ A1, 00000288(d)
        cmp     dword [ebp-14H], eax                    ; 1D12 _ 39. 45, EC
        jnz     ?_085                                   ; 1D15 _ 75, 28
        mov     eax, dword [line.2511]                  ; 1D17 _ A1, 00000284(d)
        cmp     dword [ebp-10H], eax                    ; 1D1C _ 39. 45, F0
        jz      ?_083                                   ; 1D1F _ 74, 0A
        mov     eax, dword [line.2511]                  ; 1D21 _ A1, 00000284(d)
        add     eax, 16                                 ; 1D26 _ 83. C0, 10
        jmp     ?_084                                   ; 1D29 _ EB, 05

?_083:  mov     eax, 0                                  ; 1D2B _ B8, 00000000
?_084:  mov     dword [line.2511], eax                  ; 1D30 _ A3, 00000284(d)
        mov     dword [pos.2510], 0                     ; 1D35 _ C7. 05, 00000288(d), 00000000
?_085:  nop                                             ; 1D3F _ 90
        leave                                           ; 1D40 _ C9
        ret                                             ; 1D41 _ C3
; showKeyboardInfo End of function

showMouseInfo:; Function begin
        push    ebp                                     ; 1D42 _ 55
        mov     ebp, esp                                ; 1D43 _ 89. E5
        sub     esp, 24                                 ; 1D45 _ 83. EC, 18
        call    io_sti                                  ; 1D48 _ E8, FFFFFFFC(rel)
        mov     byte [ebp-9H], 0                        ; 1D4D _ C6. 45, F7, 00
        sub     esp, 12                                 ; 1D51 _ 83. EC, 0C
        push    mouseInfo                               ; 1D54 _ 68, 0000002C(d)
        call    fifo8_get                               ; 1D59 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1D5E _ 83. C4, 10
        mov     byte [ebp-9H], al                       ; 1D61 _ 88. 45, F7
        movzx   eax, byte [ebp-9H]                      ; 1D64 _ 0F B6. 45, F7
        sub     esp, 8                                  ; 1D68 _ 83. EC, 08
        push    eax                                     ; 1D6B _ 50
        push    mouse_move                              ; 1D6C _ 68, 00000100(d)
        call    mouse_decode                            ; 1D71 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1D76 _ 83. C4, 10
        test    eax, eax                                ; 1D79 _ 85. C0
        jz      ?_086                                   ; 1D7B _ 74, 60
        sub     esp, 4                                  ; 1D7D _ 83. EC, 04
        push    mouse_move                              ; 1D80 _ 68, 00000100(d)
        push    dword [ebp+0CH]                         ; 1D85 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1D88 _ FF. 75, 08
        call    computeMousePos                         ; 1D8B _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1D90 _ 83. C4, 10
        mov     edx, dword [my]                         ; 1D93 _ 8B. 15, 00000114(d)
        mov     eax, dword [mx]                         ; 1D99 _ A1, 00000110(d)
        push    edx                                     ; 1D9E _ 52
        push    eax                                     ; 1D9F _ 50
        push    dword [ebp+10H]                         ; 1DA0 _ FF. 75, 10
        push    dword [ebp+8H]                          ; 1DA3 _ FF. 75, 08
        call    sheet_slide                             ; 1DA6 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1DAB _ 83. C4, 10
        mov     eax, dword [?_248]                      ; 1DAE _ A1, 0000010C(d)
        and     eax, 01H                                ; 1DB3 _ 83. E0, 01
        test    eax, eax                                ; 1DB6 _ 85. C0
        jz      ?_086                                   ; 1DB8 _ 74, 23
        mov     eax, dword [my]                         ; 1DBA _ A1, 00000114(d)
        lea     ecx, [eax-8H]                           ; 1DBF _ 8D. 48, F8
        mov     eax, dword [mx]                         ; 1DC2 _ A1, 00000110(d)
        lea     edx, [eax-50H]                          ; 1DC7 _ 8D. 50, B0
        mov     eax, dword [sheet_win]                  ; 1DCA _ A1, 00000248(d)
        push    ecx                                     ; 1DCF _ 51
        push    edx                                     ; 1DD0 _ 52
        push    eax                                     ; 1DD1 _ 50
        push    dword [ebp+8H]                          ; 1DD2 _ FF. 75, 08
        call    sheet_slide                             ; 1DD5 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1DDA _ 83. C4, 10
?_086:  nop                                             ; 1DDD _ 90
        leave                                           ; 1DDE _ C9
        ret                                             ; 1DDF _ C3
; showMouseInfo End of function

mouse_decode:; Function begin
        push    ebp                                     ; 1DE0 _ 55
        mov     ebp, esp                                ; 1DE1 _ 89. E5
        sub     esp, 4                                  ; 1DE3 _ 83. EC, 04
        mov     eax, dword [ebp+0CH]                    ; 1DE6 _ 8B. 45, 0C
        mov     byte [ebp-4H], al                       ; 1DE9 _ 88. 45, FC
        mov     eax, dword [ebp+8H]                     ; 1DEC _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 1DEF _ 0F B6. 40, 03
        test    al, al                                  ; 1DF3 _ 84. C0
        jnz     ?_088                                   ; 1DF5 _ 75, 17
        cmp     byte [ebp-4H], -6                       ; 1DF7 _ 80. 7D, FC, FA
        jnz     ?_087                                   ; 1DFB _ 75, 07
        mov     eax, dword [ebp+8H]                     ; 1DFD _ 8B. 45, 08
        mov     byte [eax+3H], 1                        ; 1E00 _ C6. 40, 03, 01
?_087:  mov     eax, 0                                  ; 1E04 _ B8, 00000000
        jmp     ?_095                                   ; 1E09 _ E9, 0000010C

?_088:  mov     eax, dword [ebp+8H]                     ; 1E0E _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 1E11 _ 0F B6. 40, 03
        cmp     al, 1                                   ; 1E15 _ 3C, 01
        jnz     ?_090                                   ; 1E17 _ 75, 25
        movzx   eax, byte [ebp-4H]                      ; 1E19 _ 0F B6. 45, FC
        or      eax, 37H                                ; 1E1D _ 83. C8, 37
        cmp     al, 63                                  ; 1E20 _ 3C, 3F
        jnz     ?_089                                   ; 1E22 _ 75, 10
        mov     eax, dword [ebp+8H]                     ; 1E24 _ 8B. 45, 08
        movzx   edx, byte [ebp-4H]                      ; 1E27 _ 0F B6. 55, FC
        mov     byte [eax], dl                          ; 1E2B _ 88. 10
        mov     eax, dword [ebp+8H]                     ; 1E2D _ 8B. 45, 08
        mov     byte [eax+3H], 2                        ; 1E30 _ C6. 40, 03, 02
?_089:  mov     eax, 0                                  ; 1E34 _ B8, 00000000
        jmp     ?_095                                   ; 1E39 _ E9, 000000DC

?_090:  mov     eax, dword [ebp+8H]                     ; 1E3E _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 1E41 _ 0F B6. 40, 03
        cmp     al, 2                                   ; 1E45 _ 3C, 02
        jnz     ?_091                                   ; 1E47 _ 75, 1B
        mov     eax, dword [ebp+8H]                     ; 1E49 _ 8B. 45, 08
        movzx   edx, byte [ebp-4H]                      ; 1E4C _ 0F B6. 55, FC
        mov     byte [eax+1H], dl                       ; 1E50 _ 88. 50, 01
        mov     eax, dword [ebp+8H]                     ; 1E53 _ 8B. 45, 08
        mov     byte [eax+3H], 3                        ; 1E56 _ C6. 40, 03, 03
        mov     eax, 0                                  ; 1E5A _ B8, 00000000
        jmp     ?_095                                   ; 1E5F _ E9, 000000B6

?_091:  mov     eax, dword [ebp+8H]                     ; 1E64 _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 1E67 _ 0F B6. 40, 03
        cmp     al, 3                                   ; 1E6B _ 3C, 03
        jne     ?_094                                   ; 1E6D _ 0F 85, 000000A2
        mov     eax, dword [ebp+8H]                     ; 1E73 _ 8B. 45, 08
        movzx   edx, byte [ebp-4H]                      ; 1E76 _ 0F B6. 55, FC
        mov     byte [eax+2H], dl                       ; 1E7A _ 88. 50, 02
        mov     eax, dword [ebp+8H]                     ; 1E7D _ 8B. 45, 08
        mov     byte [eax+3H], 1                        ; 1E80 _ C6. 40, 03, 01
        mov     eax, dword [ebp+8H]                     ; 1E84 _ 8B. 45, 08
        movzx   eax, byte [eax]                         ; 1E87 _ 0F B6. 00
        movzx   eax, al                                 ; 1E8A _ 0F B6. C0
        and     eax, 07H                                ; 1E8D _ 83. E0, 07
        mov     edx, eax                                ; 1E90 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 1E92 _ 8B. 45, 08
        mov     dword [eax+0CH], edx                    ; 1E95 _ 89. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 1E98 _ 8B. 45, 08
        movzx   eax, byte [eax+1H]                      ; 1E9B _ 0F B6. 40, 01
        movzx   edx, al                                 ; 1E9F _ 0F B6. D0
        mov     eax, dword [ebp+8H]                     ; 1EA2 _ 8B. 45, 08
        mov     dword [eax+4H], edx                     ; 1EA5 _ 89. 50, 04
        mov     eax, dword [ebp+8H]                     ; 1EA8 _ 8B. 45, 08
        movzx   eax, byte [eax+2H]                      ; 1EAB _ 0F B6. 40, 02
        movzx   edx, al                                 ; 1EAF _ 0F B6. D0
        mov     eax, dword [ebp+8H]                     ; 1EB2 _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 1EB5 _ 89. 50, 08
        mov     eax, dword [ebp+8H]                     ; 1EB8 _ 8B. 45, 08
        movzx   eax, byte [eax]                         ; 1EBB _ 0F B6. 00
        movzx   eax, al                                 ; 1EBE _ 0F B6. C0
        and     eax, 10H                                ; 1EC1 _ 83. E0, 10
        test    eax, eax                                ; 1EC4 _ 85. C0
        jz      ?_092                                   ; 1EC6 _ 74, 13
        mov     eax, dword [ebp+8H]                     ; 1EC8 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 1ECB _ 8B. 40, 04
        or      eax, 0FFFFFF00H                         ; 1ECE _ 0D, FFFFFF00
        mov     edx, eax                                ; 1ED3 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 1ED5 _ 8B. 45, 08
        mov     dword [eax+4H], edx                     ; 1ED8 _ 89. 50, 04
?_092:  mov     eax, dword [ebp+8H]                     ; 1EDB _ 8B. 45, 08
        movzx   eax, byte [eax]                         ; 1EDE _ 0F B6. 00
        movzx   eax, al                                 ; 1EE1 _ 0F B6. C0
        and     eax, 20H                                ; 1EE4 _ 83. E0, 20
        test    eax, eax                                ; 1EE7 _ 85. C0
        jz      ?_093                                   ; 1EE9 _ 74, 13
        mov     eax, dword [ebp+8H]                     ; 1EEB _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 1EEE _ 8B. 40, 08
        or      eax, 0FFFFFF00H                         ; 1EF1 _ 0D, FFFFFF00
        mov     edx, eax                                ; 1EF6 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 1EF8 _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 1EFB _ 89. 50, 08
?_093:  mov     eax, dword [ebp+8H]                     ; 1EFE _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 1F01 _ 8B. 40, 08
        neg     eax                                     ; 1F04 _ F7. D8
        mov     edx, eax                                ; 1F06 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 1F08 _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 1F0B _ 89. 50, 08
        mov     eax, 1                                  ; 1F0E _ B8, 00000001
        jmp     ?_095                                   ; 1F13 _ EB, 05

?_094:  mov     eax, 4294967295                         ; 1F15 _ B8, FFFFFFFF
?_095:  leave                                           ; 1F1A _ C9
        ret                                             ; 1F1B _ C3
; mouse_decode End of function

computeMousePos:; Function begin
        push    ebp                                     ; 1F1C _ 55
        mov     ebp, esp                                ; 1F1D _ 89. E5
        sub     esp, 16                                 ; 1F1F _ 83. EC, 10
        movzx   eax, word [?_245]                       ; 1F22 _ 0F B7. 05, 0000000C(d)
        cwde                                            ; 1F29 _ 98
        mov     dword [ebp-8H], eax                     ; 1F2A _ 89. 45, F8
        movzx   eax, word [?_246]                       ; 1F2D _ 0F B7. 05, 0000000E(d)
        cwde                                            ; 1F34 _ 98
        mov     dword [ebp-4H], eax                     ; 1F35 _ 89. 45, FC
        mov     eax, dword [ebp+10H]                    ; 1F38 _ 8B. 45, 10
        mov     edx, dword [eax+4H]                     ; 1F3B _ 8B. 50, 04
        mov     eax, dword [mx]                         ; 1F3E _ A1, 00000110(d)
        add     eax, edx                                ; 1F43 _ 01. D0
        mov     dword [mx], eax                         ; 1F45 _ A3, 00000110(d)
        mov     eax, dword [ebp+10H]                    ; 1F4A _ 8B. 45, 10
        mov     edx, dword [eax+8H]                     ; 1F4D _ 8B. 50, 08
        mov     eax, dword [my]                         ; 1F50 _ A1, 00000114(d)
        add     eax, edx                                ; 1F55 _ 01. D0
        mov     dword [my], eax                         ; 1F57 _ A3, 00000114(d)
        mov     eax, dword [mx]                         ; 1F5C _ A1, 00000110(d)
        test    eax, eax                                ; 1F61 _ 85. C0
        jns     ?_096                                   ; 1F63 _ 79, 0A
        mov     dword [mx], 0                           ; 1F65 _ C7. 05, 00000110(d), 00000000
?_096:  mov     eax, dword [my]                         ; 1F6F _ A1, 00000114(d)
        test    eax, eax                                ; 1F74 _ 85. C0
        jns     ?_097                                   ; 1F76 _ 79, 0A
        mov     dword [my], 0                           ; 1F78 _ C7. 05, 00000114(d), 00000000
?_097:  mov     eax, dword [ebp-8H]                     ; 1F82 _ 8B. 45, F8
        lea     edx, [eax-9H]                           ; 1F85 _ 8D. 50, F7
        mov     eax, dword [mx]                         ; 1F88 _ A1, 00000110(d)
        cmp     edx, eax                                ; 1F8D _ 39. C2
        jge     ?_098                                   ; 1F8F _ 7D, 0B
        mov     eax, dword [ebp-8H]                     ; 1F91 _ 8B. 45, F8
        sub     eax, 9                                  ; 1F94 _ 83. E8, 09
        mov     dword [mx], eax                         ; 1F97 _ A3, 00000110(d)
?_098:  mov     eax, dword [ebp-4H]                     ; 1F9C _ 8B. 45, FC
        lea     edx, [eax-1H]                           ; 1F9F _ 8D. 50, FF
        mov     eax, dword [my]                         ; 1FA2 _ A1, 00000114(d)
        cmp     edx, eax                                ; 1FA7 _ 39. C2
        jge     ?_099                                   ; 1FA9 _ 7D, 0B
        mov     eax, dword [ebp-4H]                     ; 1FAB _ 8B. 45, FC
        sub     eax, 1                                  ; 1FAE _ 83. E8, 01
        mov     dword [my], eax                         ; 1FB1 _ A3, 00000114(d)
?_099:  nop                                             ; 1FB6 _ 90
        leave                                           ; 1FB7 _ C9
        ret                                             ; 1FB8 _ C3
; computeMousePos End of function

showMemInfo:; Function begin
        push    ebp                                     ; 1FB9 _ 55
        mov     ebp, esp                                ; 1FBA _ 89. E5
        sub     esp, 56                                 ; 1FBC _ 83. EC, 38
        mov     dword [ebp-30H], 0                      ; 1FBF _ C7. 45, D0, 00000000
        mov     dword [ebp-2CH], 0                      ; 1FC6 _ C7. 45, D4, 00000000
        mov     dword [ebp-28H], 112                    ; 1FCD _ C7. 45, D8, 00000070
        mov     dword [ebp-24H], 80                     ; 1FD4 _ C7. 45, DC, 00000050
        push    100                                     ; 1FDB _ 6A, 64
        push    dword [ebp+1CH]                         ; 1FDD _ FF. 75, 1C
        push    0                                       ; 1FE0 _ 6A, 00
        push    0                                       ; 1FE2 _ 6A, 00
        push    14                                      ; 1FE4 _ 6A, 0E
        push    dword [ebp+1CH]                         ; 1FE6 _ FF. 75, 1C
        push    dword [ebp+14H]                         ; 1FE9 _ FF. 75, 14
        call    boxfill8                                ; 1FEC _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 1FF1 _ 83. C4, 1C
        mov     eax, dword [ebp+20H]                    ; 1FF4 _ 8B. 45, 20
        movsx   eax, al                                 ; 1FF7 _ 0F BE. C0
        sub     esp, 8                                  ; 1FFA _ 83. EC, 08
        push    ?_237                                   ; 1FFD _ 68, 0000004A(d)
        push    eax                                     ; 2002 _ 50
        push    dword [ebp-2CH]                         ; 2003 _ FF. 75, D4
        push    dword [ebp-30H]                         ; 2006 _ FF. 75, D0
        push    dword [ebp+0CH]                         ; 2009 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 200C _ FF. 75, 08
        call    showString                              ; 200F _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 2014 _ 83. C4, 20
        mov     eax, dword [ebp+18H]                    ; 2017 _ 8B. 45, 18
        sub     esp, 12                                 ; 201A _ 83. EC, 0C
        push    eax                                     ; 201D _ 50
        call    intToHexStr                             ; 201E _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 2023 _ 83. C4, 10
        mov     dword [ebp-20H], eax                    ; 2026 _ 89. 45, E0
        mov     eax, dword [ebp+20H]                    ; 2029 _ 8B. 45, 20
        movsx   eax, al                                 ; 202C _ 0F BE. C0
        sub     esp, 8                                  ; 202F _ 83. EC, 08
        push    dword [ebp-20H]                         ; 2032 _ FF. 75, E0
        push    eax                                     ; 2035 _ 50
        push    dword [ebp-2CH]                         ; 2036 _ FF. 75, D4
        push    dword [ebp-28H]                         ; 2039 _ FF. 75, D8
        push    dword [ebp+0CH]                         ; 203C _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 203F _ FF. 75, 08
        call    showString                              ; 2042 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 2047 _ 83. C4, 20
        add     dword [ebp-2CH], 16                     ; 204A _ 83. 45, D4, 10
        mov     eax, dword [ebp+20H]                    ; 204E _ 8B. 45, 20
        movsx   eax, al                                 ; 2051 _ 0F BE. C0
        sub     esp, 8                                  ; 2054 _ 83. EC, 08
        push    ?_238                                   ; 2057 _ 68, 00000054(d)
        push    eax                                     ; 205C _ 50
        push    dword [ebp-2CH]                         ; 205D _ FF. 75, D4
        push    dword [ebp-30H]                         ; 2060 _ FF. 75, D0
        push    dword [ebp+0CH]                         ; 2063 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 2066 _ FF. 75, 08
        call    showString                              ; 2069 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 206E _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 2071 _ 8B. 45, 10
        mov     eax, dword [eax]                        ; 2074 _ 8B. 00
        sub     esp, 12                                 ; 2076 _ 83. EC, 0C
        push    eax                                     ; 2079 _ 50
        call    intToHexStr                             ; 207A _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 207F _ 83. C4, 10
        mov     dword [ebp-1CH], eax                    ; 2082 _ 89. 45, E4
        mov     eax, dword [ebp+20H]                    ; 2085 _ 8B. 45, 20
        movsx   eax, al                                 ; 2088 _ 0F BE. C0
        sub     esp, 8                                  ; 208B _ 83. EC, 08
        push    dword [ebp-1CH]                         ; 208E _ FF. 75, E4
        push    eax                                     ; 2091 _ 50
        push    dword [ebp-2CH]                         ; 2092 _ FF. 75, D4
        push    dword [ebp-28H]                         ; 2095 _ FF. 75, D8
        push    dword [ebp+0CH]                         ; 2098 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 209B _ FF. 75, 08
        call    showString                              ; 209E _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 20A3 _ 83. C4, 20
        add     dword [ebp-2CH], 16                     ; 20A6 _ 83. 45, D4, 10
        mov     eax, dword [ebp+20H]                    ; 20AA _ 8B. 45, 20
        movsx   eax, al                                 ; 20AD _ 0F BE. C0
        sub     esp, 8                                  ; 20B0 _ 83. EC, 08
        push    ?_239                                   ; 20B3 _ 68, 00000062(d)
        push    eax                                     ; 20B8 _ 50
        push    dword [ebp-2CH]                         ; 20B9 _ FF. 75, D4
        push    dword [ebp-30H]                         ; 20BC _ FF. 75, D0
        push    dword [ebp+0CH]                         ; 20BF _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 20C2 _ FF. 75, 08
        call    showString                              ; 20C5 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 20CA _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 20CD _ 8B. 45, 10
        mov     eax, dword [eax+4H]                     ; 20D0 _ 8B. 40, 04
        sub     esp, 12                                 ; 20D3 _ 83. EC, 0C
        push    eax                                     ; 20D6 _ 50
        call    intToHexStr                             ; 20D7 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 20DC _ 83. C4, 10
        mov     dword [ebp-18H], eax                    ; 20DF _ 89. 45, E8
        mov     eax, dword [ebp+20H]                    ; 20E2 _ 8B. 45, 20
        movsx   eax, al                                 ; 20E5 _ 0F BE. C0
        sub     esp, 8                                  ; 20E8 _ 83. EC, 08
        push    dword [ebp-18H]                         ; 20EB _ FF. 75, E8
        push    eax                                     ; 20EE _ 50
        push    dword [ebp-2CH]                         ; 20EF _ FF. 75, D4
        push    dword [ebp-28H]                         ; 20F2 _ FF. 75, D8
        push    dword [ebp+0CH]                         ; 20F5 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 20F8 _ FF. 75, 08
        call    showString                              ; 20FB _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 2100 _ 83. C4, 20
        add     dword [ebp-2CH], 16                     ; 2103 _ 83. 45, D4, 10
        mov     eax, dword [ebp+20H]                    ; 2107 _ 8B. 45, 20
        movsx   eax, al                                 ; 210A _ 0F BE. C0
        sub     esp, 8                                  ; 210D _ 83. EC, 08
        push    ?_240                                   ; 2110 _ 68, 00000071(d)
        push    eax                                     ; 2115 _ 50
        push    dword [ebp-2CH]                         ; 2116 _ FF. 75, D4
        push    dword [ebp-30H]                         ; 2119 _ FF. 75, D0
        push    dword [ebp+0CH]                         ; 211C _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 211F _ FF. 75, 08
        call    showString                              ; 2122 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 2127 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 212A _ 8B. 45, 10
        mov     eax, dword [eax+8H]                     ; 212D _ 8B. 40, 08
        sub     esp, 12                                 ; 2130 _ 83. EC, 0C
        push    eax                                     ; 2133 _ 50
        call    intToHexStr                             ; 2134 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 2139 _ 83. C4, 10
        mov     dword [ebp-14H], eax                    ; 213C _ 89. 45, EC
        mov     eax, dword [ebp+20H]                    ; 213F _ 8B. 45, 20
        movsx   eax, al                                 ; 2142 _ 0F BE. C0
        sub     esp, 8                                  ; 2145 _ 83. EC, 08
        push    dword [ebp-14H]                         ; 2148 _ FF. 75, EC
        push    eax                                     ; 214B _ 50
        push    dword [ebp-2CH]                         ; 214C _ FF. 75, D4
        push    dword [ebp-28H]                         ; 214F _ FF. 75, D8
        push    dword [ebp+0CH]                         ; 2152 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 2155 _ FF. 75, 08
        call    showString                              ; 2158 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 215D _ 83. C4, 20
        add     dword [ebp-2CH], 16                     ; 2160 _ 83. 45, D4, 10
        mov     eax, dword [ebp+20H]                    ; 2164 _ 8B. 45, 20
        movsx   eax, al                                 ; 2167 _ 0F BE. C0
        sub     esp, 8                                  ; 216A _ 83. EC, 08
        push    ?_241                                   ; 216D _ 68, 0000007D(d)
        push    eax                                     ; 2172 _ 50
        push    dword [ebp-2CH]                         ; 2173 _ FF. 75, D4
        push    dword [ebp-30H]                         ; 2176 _ FF. 75, D0
        push    dword [ebp+0CH]                         ; 2179 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 217C _ FF. 75, 08
        call    showString                              ; 217F _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 2184 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 2187 _ 8B. 45, 10
        mov     eax, dword [eax+0CH]                    ; 218A _ 8B. 40, 0C
        sub     esp, 12                                 ; 218D _ 83. EC, 0C
        push    eax                                     ; 2190 _ 50
        call    intToHexStr                             ; 2191 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 2196 _ 83. C4, 10
        mov     dword [ebp-10H], eax                    ; 2199 _ 89. 45, F0
        mov     eax, dword [ebp+20H]                    ; 219C _ 8B. 45, 20
        movsx   eax, al                                 ; 219F _ 0F BE. C0
        sub     esp, 8                                  ; 21A2 _ 83. EC, 08
        push    dword [ebp-10H]                         ; 21A5 _ FF. 75, F0
        push    eax                                     ; 21A8 _ 50
        push    dword [ebp-2CH]                         ; 21A9 _ FF. 75, D4
        push    dword [ebp-28H]                         ; 21AC _ FF. 75, D8
        push    dword [ebp+0CH]                         ; 21AF _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 21B2 _ FF. 75, 08
        call    showString                              ; 21B5 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 21BA _ 83. C4, 20
        add     dword [ebp-2CH], 16                     ; 21BD _ 83. 45, D4, 10
        mov     eax, dword [ebp+20H]                    ; 21C1 _ 8B. 45, 20
        movsx   eax, al                                 ; 21C4 _ 0F BE. C0
        sub     esp, 8                                  ; 21C7 _ 83. EC, 08
        push    ?_242                                   ; 21CA _ 68, 0000008A(d)
        push    eax                                     ; 21CF _ 50
        push    dword [ebp-2CH]                         ; 21D0 _ FF. 75, D4
        push    dword [ebp-30H]                         ; 21D3 _ FF. 75, D0
        push    dword [ebp+0CH]                         ; 21D6 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 21D9 _ FF. 75, 08
        call    showString                              ; 21DC _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 21E1 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 21E4 _ 8B. 45, 10
        mov     eax, dword [eax+10H]                    ; 21E7 _ 8B. 40, 10
        sub     esp, 12                                 ; 21EA _ 83. EC, 0C
        push    eax                                     ; 21ED _ 50
        call    intToHexStr                             ; 21EE _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 21F3 _ 83. C4, 10
        mov     dword [ebp-0CH], eax                    ; 21F6 _ 89. 45, F4
        mov     eax, dword [ebp+20H]                    ; 21F9 _ 8B. 45, 20
        movsx   eax, al                                 ; 21FC _ 0F BE. C0
        sub     esp, 8                                  ; 21FF _ 83. EC, 08
        push    dword [ebp-0CH]                         ; 2202 _ FF. 75, F4
        push    eax                                     ; 2205 _ 50
        push    dword [ebp-2CH]                         ; 2206 _ FF. 75, D4
        push    dword [ebp-28H]                         ; 2209 _ FF. 75, D8
        push    dword [ebp+0CH]                         ; 220C _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 220F _ FF. 75, 08
        call    showString                              ; 2212 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 2217 _ 83. C4, 20
        add     dword [ebp-2CH], 16                     ; 221A _ 83. 45, D4, 10
        nop                                             ; 221E _ 90
        leave                                           ; 221F _ C9
        ret                                             ; 2220 _ C3
; showMemInfo End of function

messageBox:; Function begin
        push    ebp                                     ; 2221 _ 55
        mov     ebp, esp                                ; 2222 _ 89. E5
        sub     esp, 24                                 ; 2224 _ 83. EC, 18
        mov     eax, dword [ebp+10H]                    ; 2227 _ 8B. 45, 10
        imul    eax, dword [ebp+14H]                    ; 222A _ 0F AF. 45, 14
        mov     edx, eax                                ; 222E _ 89. C2
        mov     eax, dword [memman]                     ; 2230 _ A1, 00000008(d)
        sub     esp, 8                                  ; 2235 _ 83. EC, 08
        push    edx                                     ; 2238 _ 52
        push    eax                                     ; 2239 _ 50
        call    memman_alloc_4K                         ; 223A _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 223F _ 83. C4, 10
        mov     dword [ebp-10H], eax                    ; 2242 _ 89. 45, F0
        sub     esp, 12                                 ; 2245 _ 83. EC, 0C
        push    dword [ebp+8H]                          ; 2248 _ FF. 75, 08
        call    sheet_alloc                             ; 224B _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 2250 _ 83. C4, 10
        mov     dword [ebp-0CH], eax                    ; 2253 _ 89. 45, F4
        sub     esp, 12                                 ; 2256 _ 83. EC, 0C
        push    99                                      ; 2259 _ 6A, 63
        push    dword [ebp+14H]                         ; 225B _ FF. 75, 14
        push    dword [ebp+10H]                         ; 225E _ FF. 75, 10
        push    dword [ebp-10H]                         ; 2261 _ FF. 75, F0
        push    dword [ebp-0CH]                         ; 2264 _ FF. 75, F4
        call    sheet_setbuf                            ; 2267 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 226C _ 83. C4, 20
        push    1                                       ; 226F _ 6A, 01
        push    dword [ebp+0CH]                         ; 2271 _ FF. 75, 0C
        push    dword [ebp-0CH]                         ; 2274 _ FF. 75, F4
        push    dword [ebp+8H]                          ; 2277 _ FF. 75, 08
        call    make_window8                            ; 227A _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 227F _ 83. C4, 10
        sub     esp, 8                                  ; 2282 _ 83. EC, 08
        push    7                                       ; 2285 _ 6A, 07
        push    16                                      ; 2287 _ 6A, 10
        push    150                                     ; 2289 _ 68, 00000096
        push    42                                      ; 228E _ 6A, 2A
        push    10                                      ; 2290 _ 6A, 0A
        push    dword [ebp-0CH]                         ; 2292 _ FF. 75, F4
        call    make_textbox8                           ; 2295 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 229A _ 83. C4, 20
        push    dword [ebp+1CH]                         ; 229D _ FF. 75, 1C
        push    dword [ebp+18H]                         ; 22A0 _ FF. 75, 18
        push    dword [ebp-0CH]                         ; 22A3 _ FF. 75, F4
        push    dword [ebp+8H]                          ; 22A6 _ FF. 75, 08
        call    sheet_slide                             ; 22A9 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 22AE _ 83. C4, 10
        sub     esp, 4                                  ; 22B1 _ 83. EC, 04
        push    dword [ebp+20H]                         ; 22B4 _ FF. 75, 20
        push    dword [ebp-0CH]                         ; 22B7 _ FF. 75, F4
        push    dword [ebp+8H]                          ; 22BA _ FF. 75, 08
        call    sheet_level_updown                      ; 22BD _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 22C2 _ 83. C4, 10
        mov     eax, dword [ebp-0CH]                    ; 22C5 _ 8B. 45, F4
        leave                                           ; 22C8 _ C9
        ret                                             ; 22C9 _ C3
; messageBox End of function

messageBoxToTask:; Function begin
        push    ebp                                     ; 22CA _ 55
        mov     ebp, esp                                ; 22CB _ 89. E5
        sub     esp, 24                                 ; 22CD _ 83. EC, 18
        mov     eax, dword [ebp+1CH]                    ; 22D0 _ 8B. 45, 1C
        imul    eax, dword [ebp+20H]                    ; 22D3 _ 0F AF. 45, 20
        mov     edx, eax                                ; 22D7 _ 89. C2
        mov     eax, dword [memman]                     ; 22D9 _ A1, 00000008(d)
        sub     esp, 8                                  ; 22DE _ 83. EC, 08
        push    edx                                     ; 22E1 _ 52
        push    eax                                     ; 22E2 _ 50
        call    memman_alloc_4K                         ; 22E3 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 22E8 _ 83. C4, 10
        mov     dword [ebp-10H], eax                    ; 22EB _ 89. 45, F0
        sub     esp, 12                                 ; 22EE _ 83. EC, 0C
        push    dword [ebp+8H]                          ; 22F1 _ FF. 75, 08
        call    sheet_alloc                             ; 22F4 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 22F9 _ 83. C4, 10
        mov     dword [ebp-0CH], eax                    ; 22FC _ 89. 45, F4
        sub     esp, 12                                 ; 22FF _ 83. EC, 0C
        push    99                                      ; 2302 _ 6A, 63
        push    dword [ebp+20H]                         ; 2304 _ FF. 75, 20
        push    dword [ebp+1CH]                         ; 2307 _ FF. 75, 1C
        push    dword [ebp-10H]                         ; 230A _ FF. 75, F0
        push    dword [ebp-0CH]                         ; 230D _ FF. 75, F4
        call    sheet_setbuf                            ; 2310 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 2315 _ 83. C4, 20
        push    0                                       ; 2318 _ 6A, 00
        push    dword [ebp+18H]                         ; 231A _ FF. 75, 18
        push    dword [ebp-0CH]                         ; 231D _ FF. 75, F4
        push    dword [ebp+8H]                          ; 2320 _ FF. 75, 08
        call    make_window8                            ; 2323 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 2328 _ 83. C4, 10
        call    task_alloc                              ; 232B _ E8, FFFFFFFC(rel)
        mov     dword [ebp+0CH], eax                    ; 2330 _ 89. 45, 0C
        mov     eax, dword [ebp+0CH]                    ; 2333 _ 8B. 45, 0C
        mov     dword [eax+74H], 0                      ; 2336 _ C7. 40, 74, 00000000
        mov     eax, dword [ebp+0CH]                    ; 233D _ 8B. 45, 0C
        mov     dword [eax+78H], 1073741824             ; 2340 _ C7. 40, 78, 40000000
        call    get_code32_addr                         ; 2347 _ E8, FFFFFFFC(rel)
        neg     eax                                     ; 234C _ F7. D8
        add     eax, task_b_main                        ; 234E _ 05, 00000000(d)
        mov     edx, eax                                ; 2353 _ 89. C2
        mov     eax, dword [ebp+0CH]                    ; 2355 _ 8B. 45, 0C
        mov     dword [eax+34H], edx                    ; 2358 _ 89. 50, 34
        mov     eax, dword [ebp+0CH]                    ; 235B _ 8B. 45, 0C
        mov     dword [eax+5CH], 0                      ; 235E _ C7. 40, 5C, 00000000
        mov     eax, dword [ebp+0CH]                    ; 2365 _ 8B. 45, 0C
        mov     dword [eax+60H], 8                      ; 2368 _ C7. 40, 60, 00000008
        mov     eax, dword [ebp+0CH]                    ; 236F _ 8B. 45, 0C
        mov     dword [eax+64H], 32                     ; 2372 _ C7. 40, 64, 00000020
        mov     eax, dword [ebp+0CH]                    ; 2379 _ 8B. 45, 0C
        mov     dword [eax+68H], 24                     ; 237C _ C7. 40, 68, 00000018
        mov     eax, dword [ebp+0CH]                    ; 2383 _ 8B. 45, 0C
        mov     dword [eax+6CH], 0                      ; 2386 _ C7. 40, 6C, 00000000
        mov     eax, dword [ebp+0CH]                    ; 238D _ 8B. 45, 0C
        mov     dword [eax+70H], 16                     ; 2390 _ C7. 40, 70, 00000010
        mov     eax, dword [ebp+0CH]                    ; 2397 _ 8B. 45, 0C
        mov     eax, dword [eax+4CH]                    ; 239A _ 8B. 40, 4C
        lea     edx, [eax-8H]                           ; 239D _ 8D. 50, F8
        mov     eax, dword [ebp+0CH]                    ; 23A0 _ 8B. 45, 0C
        mov     dword [eax+4CH], edx                    ; 23A3 _ 89. 50, 4C
        mov     eax, dword [ebp+0CH]                    ; 23A6 _ 8B. 45, 0C
        mov     eax, dword [eax+4CH]                    ; 23A9 _ 8B. 40, 4C
        add     eax, 4                                  ; 23AC _ 83. C0, 04
        mov     edx, eax                                ; 23AF _ 89. C2
        mov     eax, dword [ebp-0CH]                    ; 23B1 _ 8B. 45, F4
        mov     dword [edx], eax                        ; 23B4 _ 89. 02
        sub     esp, 4                                  ; 23B6 _ 83. EC, 04
        push    dword [ebp+14H]                         ; 23B9 _ FF. 75, 14
        push    dword [ebp+10H]                         ; 23BC _ FF. 75, 10
        push    dword [ebp+0CH]                         ; 23BF _ FF. 75, 0C
        call    task_run                                ; 23C2 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 23C7 _ 83. C4, 10
        push    dword [ebp+28H]                         ; 23CA _ FF. 75, 28
        push    dword [ebp+24H]                         ; 23CD _ FF. 75, 24
        push    dword [ebp-0CH]                         ; 23D0 _ FF. 75, F4
        push    dword [ebp+8H]                          ; 23D3 _ FF. 75, 08
        call    sheet_slide                             ; 23D6 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 23DB _ 83. C4, 10
        sub     esp, 4                                  ; 23DE _ 83. EC, 04
        push    dword [ebp+2CH]                         ; 23E1 _ FF. 75, 2C
        push    dword [ebp-0CH]                         ; 23E4 _ FF. 75, F4
        push    dword [ebp+8H]                          ; 23E7 _ FF. 75, 08
        call    sheet_level_updown                      ; 23EA _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 23EF _ 83. C4, 10
        mov     eax, dword [ebp-0CH]                    ; 23F2 _ 8B. 45, F4
        leave                                           ; 23F5 _ C9
        ret                                             ; 23F6 _ C3
; messageBoxToTask End of function

make_window8:; Function begin
        push    ebp                                     ; 23F7 _ 55
        mov     ebp, esp                                ; 23F8 _ 89. E5
        push    ebx                                     ; 23FA _ 53
        sub     esp, 36                                 ; 23FB _ 83. EC, 24
        mov     eax, dword [ebp+14H]                    ; 23FE _ 8B. 45, 14
        mov     byte [ebp-1CH], al                      ; 2401 _ 88. 45, E4
        mov     eax, dword [ebp+0CH]                    ; 2404 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 2407 _ 8B. 40, 04
        mov     dword [ebp-10H], eax                    ; 240A _ 89. 45, F0
        mov     eax, dword [ebp+0CH]                    ; 240D _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 2410 _ 8B. 40, 08
        mov     dword [ebp-0CH], eax                    ; 2413 _ 89. 45, F4
        mov     eax, dword [ebp-10H]                    ; 2416 _ 8B. 45, F0
        lea     edx, [eax-1H]                           ; 2419 _ 8D. 50, FF
        mov     eax, dword [ebp+0CH]                    ; 241C _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 241F _ 8B. 00
        push    0                                       ; 2421 _ 6A, 00
        push    edx                                     ; 2423 _ 52
        push    0                                       ; 2424 _ 6A, 00
        push    0                                       ; 2426 _ 6A, 00
        push    8                                       ; 2428 _ 6A, 08
        push    dword [ebp-10H]                         ; 242A _ FF. 75, F0
        push    eax                                     ; 242D _ 50
        call    boxfill8                                ; 242E _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 2433 _ 83. C4, 1C
        mov     eax, dword [ebp-10H]                    ; 2436 _ 8B. 45, F0
        lea     edx, [eax-2H]                           ; 2439 _ 8D. 50, FE
        mov     eax, dword [ebp+0CH]                    ; 243C _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 243F _ 8B. 00
        push    1                                       ; 2441 _ 6A, 01
        push    edx                                     ; 2443 _ 52
        push    1                                       ; 2444 _ 6A, 01
        push    1                                       ; 2446 _ 6A, 01
        push    7                                       ; 2448 _ 6A, 07
        push    dword [ebp-10H]                         ; 244A _ FF. 75, F0
        push    eax                                     ; 244D _ 50
        call    boxfill8                                ; 244E _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 2453 _ 83. C4, 1C
        mov     eax, dword [ebp-0CH]                    ; 2456 _ 8B. 45, F4
        lea     edx, [eax-1H]                           ; 2459 _ 8D. 50, FF
        mov     eax, dword [ebp+0CH]                    ; 245C _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 245F _ 8B. 00
        push    edx                                     ; 2461 _ 52
        push    0                                       ; 2462 _ 6A, 00
        push    0                                       ; 2464 _ 6A, 00
        push    0                                       ; 2466 _ 6A, 00
        push    8                                       ; 2468 _ 6A, 08
        push    dword [ebp-10H]                         ; 246A _ FF. 75, F0
        push    eax                                     ; 246D _ 50
        call    boxfill8                                ; 246E _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 2473 _ 83. C4, 1C
        mov     eax, dword [ebp-0CH]                    ; 2476 _ 8B. 45, F4
        lea     edx, [eax-1H]                           ; 2479 _ 8D. 50, FF
        mov     eax, dword [ebp+0CH]                    ; 247C _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 247F _ 8B. 00
        push    edx                                     ; 2481 _ 52
        push    1                                       ; 2482 _ 6A, 01
        push    1                                       ; 2484 _ 6A, 01
        push    1                                       ; 2486 _ 6A, 01
        push    7                                       ; 2488 _ 6A, 07
        push    dword [ebp-10H]                         ; 248A _ FF. 75, F0
        push    eax                                     ; 248D _ 50
        call    boxfill8                                ; 248E _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 2493 _ 83. C4, 1C
        mov     eax, dword [ebp-0CH]                    ; 2496 _ 8B. 45, F4
        lea     ebx, [eax-2H]                           ; 2499 _ 8D. 58, FE
        mov     eax, dword [ebp-10H]                    ; 249C _ 8B. 45, F0
        lea     ecx, [eax-2H]                           ; 249F _ 8D. 48, FE
        mov     eax, dword [ebp-10H]                    ; 24A2 _ 8B. 45, F0
        lea     edx, [eax-2H]                           ; 24A5 _ 8D. 50, FE
        mov     eax, dword [ebp+0CH]                    ; 24A8 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 24AB _ 8B. 00
        push    ebx                                     ; 24AD _ 53
        push    ecx                                     ; 24AE _ 51
        push    1                                       ; 24AF _ 6A, 01
        push    edx                                     ; 24B1 _ 52
        push    15                                      ; 24B2 _ 6A, 0F
        push    dword [ebp-10H]                         ; 24B4 _ FF. 75, F0
        push    eax                                     ; 24B7 _ 50
        call    boxfill8                                ; 24B8 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 24BD _ 83. C4, 1C
        mov     eax, dword [ebp-0CH]                    ; 24C0 _ 8B. 45, F4
        lea     ebx, [eax-1H]                           ; 24C3 _ 8D. 58, FF
        mov     eax, dword [ebp-10H]                    ; 24C6 _ 8B. 45, F0
        lea     ecx, [eax-1H]                           ; 24C9 _ 8D. 48, FF
        mov     eax, dword [ebp-10H]                    ; 24CC _ 8B. 45, F0
        lea     edx, [eax-1H]                           ; 24CF _ 8D. 50, FF
        mov     eax, dword [ebp+0CH]                    ; 24D2 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 24D5 _ 8B. 00
        push    ebx                                     ; 24D7 _ 53
        push    ecx                                     ; 24D8 _ 51
        push    0                                       ; 24D9 _ 6A, 00
        push    edx                                     ; 24DB _ 52
        push    0                                       ; 24DC _ 6A, 00
        push    dword [ebp-10H]                         ; 24DE _ FF. 75, F0
        push    eax                                     ; 24E1 _ 50
        call    boxfill8                                ; 24E2 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 24E7 _ 83. C4, 1C
        mov     eax, dword [ebp-0CH]                    ; 24EA _ 8B. 45, F4
        lea     ecx, [eax-3H]                           ; 24ED _ 8D. 48, FD
        mov     eax, dword [ebp-10H]                    ; 24F0 _ 8B. 45, F0
        lea     edx, [eax-3H]                           ; 24F3 _ 8D. 50, FD
        mov     eax, dword [ebp+0CH]                    ; 24F6 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 24F9 _ 8B. 00
        push    ecx                                     ; 24FB _ 51
        push    edx                                     ; 24FC _ 52
        push    2                                       ; 24FD _ 6A, 02
        push    2                                       ; 24FF _ 6A, 02
        push    8                                       ; 2501 _ 6A, 08
        push    dword [ebp-10H]                         ; 2503 _ FF. 75, F0
        push    eax                                     ; 2506 _ 50
        call    boxfill8                                ; 2507 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 250C _ 83. C4, 1C
        mov     eax, dword [ebp-10H]                    ; 250F _ 8B. 45, F0
        lea     edx, [eax-4H]                           ; 2512 _ 8D. 50, FC
        mov     eax, dword [ebp+0CH]                    ; 2515 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 2518 _ 8B. 00
        push    20                                      ; 251A _ 6A, 14
        push    edx                                     ; 251C _ 52
        push    3                                       ; 251D _ 6A, 03
        push    3                                       ; 251F _ 6A, 03
        push    12                                      ; 2521 _ 6A, 0C
        push    dword [ebp-10H]                         ; 2523 _ FF. 75, F0
        push    eax                                     ; 2526 _ 50
        call    boxfill8                                ; 2527 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 252C _ 83. C4, 1C
        mov     eax, dword [ebp-0CH]                    ; 252F _ 8B. 45, F4
        lea     ebx, [eax-2H]                           ; 2532 _ 8D. 58, FE
        mov     eax, dword [ebp-10H]                    ; 2535 _ 8B. 45, F0
        lea     ecx, [eax-2H]                           ; 2538 _ 8D. 48, FE
        mov     eax, dword [ebp-0CH]                    ; 253B _ 8B. 45, F4
        lea     edx, [eax-2H]                           ; 253E _ 8D. 50, FE
        mov     eax, dword [ebp+0CH]                    ; 2541 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 2544 _ 8B. 00
        push    ebx                                     ; 2546 _ 53
        push    ecx                                     ; 2547 _ 51
        push    edx                                     ; 2548 _ 52
        push    1                                       ; 2549 _ 6A, 01
        push    15                                      ; 254B _ 6A, 0F
        push    dword [ebp-10H]                         ; 254D _ FF. 75, F0
        push    eax                                     ; 2550 _ 50
        call    boxfill8                                ; 2551 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 2556 _ 83. C4, 1C
        mov     eax, dword [ebp-0CH]                    ; 2559 _ 8B. 45, F4
        lea     ebx, [eax-1H]                           ; 255C _ 8D. 58, FF
        mov     eax, dword [ebp-10H]                    ; 255F _ 8B. 45, F0
        lea     ecx, [eax-1H]                           ; 2562 _ 8D. 48, FF
        mov     eax, dword [ebp-0CH]                    ; 2565 _ 8B. 45, F4
        lea     edx, [eax-1H]                           ; 2568 _ 8D. 50, FF
        mov     eax, dword [ebp+0CH]                    ; 256B _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 256E _ 8B. 00
        push    ebx                                     ; 2570 _ 53
        push    ecx                                     ; 2571 _ 51
        push    edx                                     ; 2572 _ 52
        push    0                                       ; 2573 _ 6A, 00
        push    0                                       ; 2575 _ 6A, 00
        push    dword [ebp-10H]                         ; 2577 _ FF. 75, F0
        push    eax                                     ; 257A _ 50
        call    boxfill8                                ; 257B _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 2580 _ 83. C4, 1C
        movsx   eax, byte [ebp-1CH]                     ; 2583 _ 0F BE. 45, E4
        push    eax                                     ; 2587 _ 50
        push    dword [ebp+10H]                         ; 2588 _ FF. 75, 10
        push    dword [ebp+0CH]                         ; 258B _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 258E _ FF. 75, 08
        call    make_wtitle8                            ; 2591 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 2596 _ 83. C4, 10
        nop                                             ; 2599 _ 90
        mov     ebx, dword [ebp-4H]                     ; 259A _ 8B. 5D, FC
        leave                                           ; 259D _ C9
        ret                                             ; 259E _ C3
; make_window8 End of function

make_wtitle8:; Function begin
        push    ebp                                     ; 259F _ 55
        mov     ebp, esp                                ; 25A0 _ 89. E5
        push    ebx                                     ; 25A2 _ 53
        sub     esp, 36                                 ; 25A3 _ 83. EC, 24
        mov     eax, dword [ebp+14H]                    ; 25A6 _ 8B. 45, 14
        mov     byte [ebp-1CH], al                      ; 25A9 _ 88. 45, E4
        mov     eax, dword [ebp+0CH]                    ; 25AC _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 25AF _ 8B. 40, 04
        mov     dword [ebp-0CH], eax                    ; 25B2 _ 89. 45, F4
        cmp     byte [ebp-1CH], 0                       ; 25B5 _ 80. 7D, E4, 00
        jz      ?_100                                   ; 25B9 _ 74, 0A
        mov     byte [ebp-16H], 7                       ; 25BB _ C6. 45, EA, 07
        mov     byte [ebp-15H], 12                      ; 25BF _ C6. 45, EB, 0C
        jmp     ?_101                                   ; 25C3 _ EB, 0E

?_100:  cmp     byte [ebp-1CH], 0                       ; 25C5 _ 80. 7D, E4, 00
        jnz     ?_101                                   ; 25C9 _ 75, 08
        mov     byte [ebp-16H], 8                       ; 25CB _ C6. 45, EA, 08
        mov     byte [ebp-15H], 15                      ; 25CF _ C6. 45, EB, 0F
?_101:  mov     eax, dword [ebp-0CH]                    ; 25D3 _ 8B. 45, F4
        lea     ecx, [eax-4H]                           ; 25D6 _ 8D. 48, FC
        movzx   eax, byte [ebp-15H]                     ; 25D9 _ 0F B6. 45, EB
        movzx   edx, al                                 ; 25DD _ 0F B6. D0
        mov     eax, dword [ebp+0CH]                    ; 25E0 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 25E3 _ 8B. 00
        push    20                                      ; 25E5 _ 6A, 14
        push    ecx                                     ; 25E7 _ 51
        push    3                                       ; 25E8 _ 6A, 03
        push    3                                       ; 25EA _ 6A, 03
        push    edx                                     ; 25EC _ 52
        push    dword [ebp-0CH]                         ; 25ED _ FF. 75, F4
        push    eax                                     ; 25F0 _ 50
        call    boxfill8                                ; 25F1 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 25F6 _ 83. C4, 1C
        movsx   eax, byte [ebp-16H]                     ; 25F9 _ 0F BE. 45, EA
        sub     esp, 8                                  ; 25FD _ 83. EC, 08
        push    dword [ebp+10H]                         ; 2600 _ FF. 75, 10
        push    eax                                     ; 2603 _ 50
        push    4                                       ; 2604 _ 6A, 04
        push    8                                       ; 2606 _ 6A, 08
        push    dword [ebp+0CH]                         ; 2608 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 260B _ FF. 75, 08
        call    showString                              ; 260E _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 2613 _ 83. C4, 20
        mov     dword [ebp-14H], 0                      ; 2616 _ C7. 45, EC, 00000000
        jmp     ?_108                                   ; 261D _ EB, 75

?_102:  mov     dword [ebp-10H], 0                      ; 261F _ C7. 45, F0, 00000000
        jmp     ?_107                                   ; 2626 _ EB, 62

?_103:  mov     eax, dword [ebp-14H]                    ; 2628 _ 8B. 45, EC
        shl     eax, 4                                  ; 262B _ C1. E0, 04
        mov     edx, eax                                ; 262E _ 89. C2
        mov     eax, dword [ebp-10H]                    ; 2630 _ 8B. 45, F0
        add     eax, edx                                ; 2633 _ 01. D0
        add     eax, closebtn.2588                      ; 2635 _ 05, 00000260(d)
        movzx   eax, byte [eax]                         ; 263A _ 0F B6. 00
        mov     byte [ebp-17H], al                      ; 263D _ 88. 45, E9
        cmp     byte [ebp-17H], 64                      ; 2640 _ 80. 7D, E9, 40
        jnz     ?_104                                   ; 2644 _ 75, 06
        mov     byte [ebp-17H], 0                       ; 2646 _ C6. 45, E9, 00
        jmp     ?_106                                   ; 264A _ EB, 16

?_104:  cmp     byte [ebp-17H], 36                      ; 264C _ 80. 7D, E9, 24
        jnz     ?_105                                   ; 2650 _ 75, 06
        mov     byte [ebp-17H], 15                      ; 2652 _ C6. 45, E9, 0F
        jmp     ?_106                                   ; 2656 _ EB, 0A

?_105:  cmp     byte [ebp-17H], 81                      ; 2658 _ 80. 7D, E9, 51
        jnz     ?_106                                   ; 265C _ 75, 04
        mov     byte [ebp-17H], 8                       ; 265E _ C6. 45, E9, 08
?_106:  mov     eax, dword [ebp+0CH]                    ; 2662 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 2665 _ 8B. 00
        mov     edx, dword [ebp-14H]                    ; 2667 _ 8B. 55, EC
        add     edx, 5                                  ; 266A _ 83. C2, 05
        imul    edx, dword [ebp-0CH]                    ; 266D _ 0F AF. 55, F4
        mov     ecx, dword [ebp-0CH]                    ; 2671 _ 8B. 4D, F4
        lea     ebx, [ecx-15H]                          ; 2674 _ 8D. 59, EB
        mov     ecx, dword [ebp-10H]                    ; 2677 _ 8B. 4D, F0
        add     ecx, ebx                                ; 267A _ 01. D9
        add     edx, ecx                                ; 267C _ 01. CA
        add     edx, eax                                ; 267E _ 01. C2
        movzx   eax, byte [ebp-17H]                     ; 2680 _ 0F B6. 45, E9
        mov     byte [edx], al                          ; 2684 _ 88. 02
        add     dword [ebp-10H], 1                      ; 2686 _ 83. 45, F0, 01
?_107:  cmp     dword [ebp-10H], 15                     ; 268A _ 83. 7D, F0, 0F
        jle     ?_103                                   ; 268E _ 7E, 98
        add     dword [ebp-14H], 1                      ; 2690 _ 83. 45, EC, 01
?_108:  cmp     dword [ebp-14H], 13                     ; 2694 _ 83. 7D, EC, 0D
        jle     ?_102                                   ; 2698 _ 7E, 85
        nop                                             ; 269A _ 90
        mov     ebx, dword [ebp-4H]                     ; 269B _ 8B. 5D, FC
        leave                                           ; 269E _ C9
        ret                                             ; 269F _ C3
; make_wtitle8 End of function

memman_init:; Function begin
        push    ebp                                     ; 26A0 _ 55
        mov     ebp, esp                                ; 26A1 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 26A3 _ 8B. 45, 08
        mov     dword [eax], 0                          ; 26A6 _ C7. 00, 00000000
        mov     eax, dword [ebp+8H]                     ; 26AC _ 8B. 45, 08
        mov     dword [eax+4H], 0                       ; 26AF _ C7. 40, 04, 00000000
        mov     eax, dword [ebp+8H]                     ; 26B6 _ 8B. 45, 08
        mov     dword [eax+8H], 0                       ; 26B9 _ C7. 40, 08, 00000000
        mov     eax, dword [ebp+8H]                     ; 26C0 _ 8B. 45, 08
        mov     dword [eax+0CH], 0                      ; 26C3 _ C7. 40, 0C, 00000000
        nop                                             ; 26CA _ 90
        pop     ebp                                     ; 26CB _ 5D
        ret                                             ; 26CC _ C3
; memman_init End of function

memman_total:; Function begin
        push    ebp                                     ; 26CD _ 55
        mov     ebp, esp                                ; 26CE _ 89. E5
        sub     esp, 16                                 ; 26D0 _ 83. EC, 10
        mov     dword [ebp-8H], 0                       ; 26D3 _ C7. 45, F8, 00000000
        mov     dword [ebp-4H], 0                       ; 26DA _ C7. 45, FC, 00000000
        jmp     ?_110                                   ; 26E1 _ EB, 14

?_109:  mov     eax, dword [ebp+8H]                     ; 26E3 _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 26E6 _ 8B. 55, FC
        add     edx, 2                                  ; 26E9 _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 26EC _ 8B. 44 D0, 04
        add     dword [ebp-8H], eax                     ; 26F0 _ 01. 45, F8
        add     dword [ebp-4H], 1                       ; 26F3 _ 83. 45, FC, 01
?_110:  mov     eax, dword [ebp+8H]                     ; 26F7 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 26FA _ 8B. 00
        cmp     dword [ebp-4H], eax                     ; 26FC _ 39. 45, FC
        jl      ?_109                                   ; 26FF _ 7C, E2
        mov     eax, dword [ebp-8H]                     ; 2701 _ 8B. 45, F8
        leave                                           ; 2704 _ C9
        ret                                             ; 2705 _ C3
; memman_total End of function

memman_alloc_FF:; Function begin
        push    ebp                                     ; 2706 _ 55
        mov     ebp, esp                                ; 2707 _ 89. E5
        sub     esp, 16                                 ; 2709 _ 83. EC, 10
        mov     dword [ebp-8H], 0                       ; 270C _ C7. 45, F8, 00000000
        jmp     ?_114                                   ; 2713 _ E9, 00000085

?_111:  mov     eax, dword [ebp+8H]                     ; 2718 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 271B _ 8B. 55, F8
        add     edx, 2                                  ; 271E _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 2721 _ 8B. 44 D0, 04
        cmp     dword [ebp+0CH], eax                    ; 2725 _ 39. 45, 0C
        ja      ?_113                                   ; 2728 _ 77, 6F
        mov     eax, dword [ebp+8H]                     ; 272A _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 272D _ 8B. 55, F8
        add     edx, 2                                  ; 2730 _ 83. C2, 02
        mov     eax, dword [eax+edx*8]                  ; 2733 _ 8B. 04 D0
        mov     dword [ebp-4H], eax                     ; 2736 _ 89. 45, FC
        mov     eax, dword [ebp+8H]                     ; 2739 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 273C _ 8B. 55, F8
        add     edx, 2                                  ; 273F _ 83. C2, 02
        mov     edx, dword [eax+edx*8]                  ; 2742 _ 8B. 14 D0
        mov     eax, dword [ebp+0CH]                    ; 2745 _ 8B. 45, 0C
        lea     ecx, [edx+eax]                          ; 2748 _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 274B _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 274E _ 8B. 55, F8
        add     edx, 2                                  ; 2751 _ 83. C2, 02
        mov     dword [eax+edx*8], ecx                  ; 2754 _ 89. 0C D0
        mov     eax, dword [ebp+8H]                     ; 2757 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 275A _ 8B. 55, F8
        add     edx, 2                                  ; 275D _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 2760 _ 8B. 44 D0, 04
        sub     eax, dword [ebp+0CH]                    ; 2764 _ 2B. 45, 0C
        mov     edx, eax                                ; 2767 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 2769 _ 8B. 45, 08
        mov     ecx, dword [ebp-8H]                     ; 276C _ 8B. 4D, F8
        add     ecx, 2                                  ; 276F _ 83. C1, 02
        mov     dword [eax+ecx*8+4H], edx               ; 2772 _ 89. 54 C8, 04
        mov     eax, dword [ebp+8H]                     ; 2776 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 2779 _ 8B. 55, F8
        add     edx, 2                                  ; 277C _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 277F _ 8B. 44 D0, 04
        test    eax, eax                                ; 2783 _ 85. C0
        jnz     ?_112                                   ; 2785 _ 75, 0D
        mov     eax, dword [ebp+8H]                     ; 2787 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 278A _ 8B. 00
        lea     edx, [eax-1H]                           ; 278C _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 278F _ 8B. 45, 08
        mov     dword [eax], edx                        ; 2792 _ 89. 10
?_112:  mov     eax, dword [ebp-4H]                     ; 2794 _ 8B. 45, FC
        jmp     ?_115                                   ; 2797 _ EB, 17

?_113:  add     dword [ebp-8H], 1                       ; 2799 _ 83. 45, F8, 01
?_114:  mov     eax, dword [ebp+8H]                     ; 279D _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 27A0 _ 8B. 00
        cmp     dword [ebp-8H], eax                     ; 27A2 _ 39. 45, F8
        jl      ?_111                                   ; 27A5 _ 0F 8C, FFFFFF6D
        mov     eax, 0                                  ; 27AB _ B8, 00000000
?_115:  leave                                           ; 27B0 _ C9
        ret                                             ; 27B1 _ C3
; memman_alloc_FF End of function

memman_alloc_4K:; Function begin
        push    ebp                                     ; 27B2 _ 55
        mov     ebp, esp                                ; 27B3 _ 89. E5
        sub     esp, 16                                 ; 27B5 _ 83. EC, 10
        mov     eax, dword [ebp+0CH]                    ; 27B8 _ 8B. 45, 0C
        add     eax, 4095                               ; 27BB _ 05, 00000FFF
        and     eax, 0FFFFF000H                         ; 27C0 _ 25, FFFFF000
        mov     dword [ebp+0CH], eax                    ; 27C5 _ 89. 45, 0C
        push    dword [ebp+0CH]                         ; 27C8 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 27CB _ FF. 75, 08
        call    memman_alloc_FF                         ; 27CE _ E8, FFFFFFFC(rel)
        add     esp, 8                                  ; 27D3 _ 83. C4, 08
        mov     dword [ebp-4H], eax                     ; 27D6 _ 89. 45, FC
        mov     eax, dword [ebp-4H]                     ; 27D9 _ 8B. 45, FC
        leave                                           ; 27DC _ C9
        ret                                             ; 27DD _ C3
; memman_alloc_4K End of function

memman_free:; Function begin
        push    ebp                                     ; 27DE _ 55
        mov     ebp, esp                                ; 27DF _ 89. E5
        push    ebx                                     ; 27E1 _ 53
        sub     esp, 16                                 ; 27E2 _ 83. EC, 10
        mov     dword [ebp-0CH], 0                      ; 27E5 _ C7. 45, F4, 00000000
        jmp     ?_117                                   ; 27EC _ EB, 15

?_116:  mov     eax, dword [ebp+8H]                     ; 27EE _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 27F1 _ 8B. 55, F4
        add     edx, 2                                  ; 27F4 _ 83. C2, 02
        mov     eax, dword [eax+edx*8]                  ; 27F7 _ 8B. 04 D0
        cmp     dword [ebp+0CH], eax                    ; 27FA _ 39. 45, 0C
        jc      ?_118                                   ; 27FD _ 72, 10
        add     dword [ebp-0CH], 1                      ; 27FF _ 83. 45, F4, 01
?_117:  mov     eax, dword [ebp+8H]                     ; 2803 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 2806 _ 8B. 00
        cmp     dword [ebp-0CH], eax                    ; 2808 _ 39. 45, F4
        jl      ?_116                                   ; 280B _ 7C, E1
        jmp     ?_119                                   ; 280D _ EB, 01

?_118:  nop                                             ; 280F _ 90
?_119:  cmp     dword [ebp-0CH], 0                      ; 2810 _ 83. 7D, F4, 00
        jle     ?_121                                   ; 2814 _ 0F 8E, 000000BA
        mov     eax, dword [ebp-0CH]                    ; 281A _ 8B. 45, F4
        lea     edx, [eax-1H]                           ; 281D _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 2820 _ 8B. 45, 08
        add     edx, 2                                  ; 2823 _ 83. C2, 02
        mov     edx, dword [eax+edx*8]                  ; 2826 _ 8B. 14 D0
        mov     eax, dword [ebp-0CH]                    ; 2829 _ 8B. 45, F4
        lea     ecx, [eax-1H]                           ; 282C _ 8D. 48, FF
        mov     eax, dword [ebp+8H]                     ; 282F _ 8B. 45, 08
        add     ecx, 2                                  ; 2832 _ 83. C1, 02
        mov     eax, dword [eax+ecx*8+4H]               ; 2835 _ 8B. 44 C8, 04
        add     eax, edx                                ; 2839 _ 01. D0
        cmp     dword [ebp+0CH], eax                    ; 283B _ 39. 45, 0C
        jne     ?_121                                   ; 283E _ 0F 85, 00000090
        mov     eax, dword [ebp-0CH]                    ; 2844 _ 8B. 45, F4
        lea     edx, [eax-1H]                           ; 2847 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 284A _ 8B. 45, 08
        add     edx, 2                                  ; 284D _ 83. C2, 02
        mov     edx, dword [eax+edx*8+4H]               ; 2850 _ 8B. 54 D0, 04
        mov     eax, dword [ebp-0CH]                    ; 2854 _ 8B. 45, F4
        lea     ebx, [eax-1H]                           ; 2857 _ 8D. 58, FF
        mov     eax, dword [ebp+10H]                    ; 285A _ 8B. 45, 10
        lea     ecx, [edx+eax]                          ; 285D _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 2860 _ 8B. 45, 08
        lea     edx, [ebx+2H]                           ; 2863 _ 8D. 53, 02
        mov     dword [eax+edx*8+4H], ecx               ; 2866 _ 89. 4C D0, 04
        mov     eax, dword [ebp+8H]                     ; 286A _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 286D _ 8B. 00
        cmp     dword [ebp-0CH], eax                    ; 286F _ 39. 45, F4
        jge     ?_120                                   ; 2872 _ 7D, 56
        mov     edx, dword [ebp+0CH]                    ; 2874 _ 8B. 55, 0C
        mov     eax, dword [ebp+10H]                    ; 2877 _ 8B. 45, 10
        lea     ecx, [edx+eax]                          ; 287A _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 287D _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 2880 _ 8B. 55, F4
        add     edx, 2                                  ; 2883 _ 83. C2, 02
        mov     eax, dword [eax+edx*8]                  ; 2886 _ 8B. 04 D0
        cmp     ecx, eax                                ; 2889 _ 39. C1
        jnz     ?_120                                   ; 288B _ 75, 3D
        mov     eax, dword [ebp-0CH]                    ; 288D _ 8B. 45, F4
        lea     edx, [eax-1H]                           ; 2890 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 2893 _ 8B. 45, 08
        add     edx, 2                                  ; 2896 _ 83. C2, 02
        mov     edx, dword [eax+edx*8+4H]               ; 2899 _ 8B. 54 D0, 04
        mov     eax, dword [ebp+8H]                     ; 289D _ 8B. 45, 08
        mov     ecx, dword [ebp-0CH]                    ; 28A0 _ 8B. 4D, F4
        add     ecx, 2                                  ; 28A3 _ 83. C1, 02
        mov     eax, dword [eax+ecx*8+4H]               ; 28A6 _ 8B. 44 C8, 04
        mov     ecx, dword [ebp-0CH]                    ; 28AA _ 8B. 4D, F4
        lea     ebx, [ecx-1H]                           ; 28AD _ 8D. 59, FF
        lea     ecx, [edx+eax]                          ; 28B0 _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 28B3 _ 8B. 45, 08
        lea     edx, [ebx+2H]                           ; 28B6 _ 8D. 53, 02
        mov     dword [eax+edx*8+4H], ecx               ; 28B9 _ 89. 4C D0, 04
        mov     eax, dword [ebp+8H]                     ; 28BD _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 28C0 _ 8B. 00
        lea     edx, [eax-1H]                           ; 28C2 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 28C5 _ 8B. 45, 08
        mov     dword [eax], edx                        ; 28C8 _ 89. 10
?_120:  mov     eax, 0                                  ; 28CA _ B8, 00000000
        jmp     ?_127                                   ; 28CF _ E9, 0000011C

?_121:  mov     eax, dword [ebp+8H]                     ; 28D4 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 28D7 _ 8B. 00
        cmp     dword [ebp-0CH], eax                    ; 28D9 _ 39. 45, F4
        jge     ?_122                                   ; 28DC _ 7D, 52
        mov     edx, dword [ebp+0CH]                    ; 28DE _ 8B. 55, 0C
        mov     eax, dword [ebp+10H]                    ; 28E1 _ 8B. 45, 10
        lea     ecx, [edx+eax]                          ; 28E4 _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 28E7 _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 28EA _ 8B. 55, F4
        add     edx, 2                                  ; 28ED _ 83. C2, 02
        mov     eax, dword [eax+edx*8]                  ; 28F0 _ 8B. 04 D0
        cmp     ecx, eax                                ; 28F3 _ 39. C1
        jnz     ?_122                                   ; 28F5 _ 75, 39
        mov     eax, dword [ebp+8H]                     ; 28F7 _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 28FA _ 8B. 55, F4
        lea     ecx, [edx+2H]                           ; 28FD _ 8D. 4A, 02
        mov     edx, dword [ebp+0CH]                    ; 2900 _ 8B. 55, 0C
        mov     dword [eax+ecx*8], edx                  ; 2903 _ 89. 14 C8
        mov     eax, dword [ebp+8H]                     ; 2906 _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 2909 _ 8B. 55, F4
        add     edx, 2                                  ; 290C _ 83. C2, 02
        mov     edx, dword [eax+edx*8+4H]               ; 290F _ 8B. 54 D0, 04
        mov     eax, dword [ebp+10H]                    ; 2913 _ 8B. 45, 10
        lea     ecx, [edx+eax]                          ; 2916 _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 2919 _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 291C _ 8B. 55, F4
        add     edx, 2                                  ; 291F _ 83. C2, 02
        mov     dword [eax+edx*8+4H], ecx               ; 2922 _ 89. 4C D0, 04
        mov     eax, 0                                  ; 2926 _ B8, 00000000
        jmp     ?_127                                   ; 292B _ E9, 000000C0

?_122:  mov     eax, dword [ebp+8H]                     ; 2930 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 2933 _ 8B. 00
        cmp     eax, 4095                               ; 2935 _ 3D, 00000FFF
        jg      ?_126                                   ; 293A _ 0F 8F, 00000087
        mov     eax, dword [ebp+8H]                     ; 2940 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 2943 _ 8B. 00
        mov     dword [ebp-8H], eax                     ; 2945 _ 89. 45, F8
        jmp     ?_124                                   ; 2948 _ EB, 28

?_123:  mov     eax, dword [ebp-8H]                     ; 294A _ 8B. 45, F8
        lea     edx, [eax-1H]                           ; 294D _ 8D. 50, FF
        mov     ecx, dword [ebp+8H]                     ; 2950 _ 8B. 4D, 08
        mov     eax, dword [ebp-8H]                     ; 2953 _ 8B. 45, F8
        lea     ebx, [eax+2H]                           ; 2956 _ 8D. 58, 02
        mov     eax, dword [ebp+8H]                     ; 2959 _ 8B. 45, 08
        add     edx, 2                                  ; 295C _ 83. C2, 02
        lea     edx, [eax+edx*8]                        ; 295F _ 8D. 14 D0
        mov     eax, dword [edx]                        ; 2962 _ 8B. 02
        mov     edx, dword [edx+4H]                     ; 2964 _ 8B. 52, 04
        mov     dword [ecx+ebx*8], eax                  ; 2967 _ 89. 04 D9
        mov     dword [ecx+ebx*8+4H], edx               ; 296A _ 89. 54 D9, 04
        sub     dword [ebp-8H], 1                       ; 296E _ 83. 6D, F8, 01
?_124:  mov     eax, dword [ebp-8H]                     ; 2972 _ 8B. 45, F8
        cmp     eax, dword [ebp-0CH]                    ; 2975 _ 3B. 45, F4
        jg      ?_123                                   ; 2978 _ 7F, D0
        mov     eax, dword [ebp+8H]                     ; 297A _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 297D _ 8B. 00
        lea     edx, [eax+1H]                           ; 297F _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 2982 _ 8B. 45, 08
        mov     dword [eax], edx                        ; 2985 _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 2987 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 298A _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 298D _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 2990 _ 8B. 00
        cmp     edx, eax                                ; 2992 _ 39. C2
        jge     ?_125                                   ; 2994 _ 7D, 0B
        mov     eax, dword [ebp+8H]                     ; 2996 _ 8B. 45, 08
        mov     edx, dword [eax]                        ; 2999 _ 8B. 10
        mov     eax, dword [ebp+8H]                     ; 299B _ 8B. 45, 08
        mov     dword [eax+4H], edx                     ; 299E _ 89. 50, 04
?_125:  mov     eax, dword [ebp+8H]                     ; 29A1 _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 29A4 _ 8B. 55, F4
        lea     ecx, [edx+2H]                           ; 29A7 _ 8D. 4A, 02
        mov     edx, dword [ebp+0CH]                    ; 29AA _ 8B. 55, 0C
        mov     dword [eax+ecx*8], edx                  ; 29AD _ 89. 14 C8
        mov     eax, dword [ebp+8H]                     ; 29B0 _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 29B3 _ 8B. 55, F4
        lea     ecx, [edx+2H]                           ; 29B6 _ 8D. 4A, 02
        mov     edx, dword [ebp+10H]                    ; 29B9 _ 8B. 55, 10
        mov     dword [eax+ecx*8+4H], edx               ; 29BC _ 89. 54 C8, 04
        mov     eax, 0                                  ; 29C0 _ B8, 00000000
        jmp     ?_127                                   ; 29C5 _ EB, 29

?_126:  mov     eax, dword [ebp+8H]                     ; 29C7 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 29CA _ 8B. 40, 0C
        lea     edx, [eax+1H]                           ; 29CD _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 29D0 _ 8B. 45, 08
        mov     dword [eax+0CH], edx                    ; 29D3 _ 89. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 29D6 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 29D9 _ 8B. 40, 08
        mov     edx, eax                                ; 29DC _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 29DE _ 8B. 45, 10
        add     eax, edx                                ; 29E1 _ 01. D0
        mov     edx, eax                                ; 29E3 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 29E5 _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 29E8 _ 89. 50, 08
        mov     eax, 4294967295                         ; 29EB _ B8, FFFFFFFF
?_127:  add     esp, 16                                 ; 29F0 _ 83. C4, 10
        pop     ebx                                     ; 29F3 _ 5B
        pop     ebp                                     ; 29F4 _ 5D
        ret                                             ; 29F5 _ C3
; memman_free End of function

memman_free_4K:; Function begin
        push    ebp                                     ; 29F6 _ 55
        mov     ebp, esp                                ; 29F7 _ 89. E5
        sub     esp, 16                                 ; 29F9 _ 83. EC, 10
        mov     eax, dword [ebp+10H]                    ; 29FC _ 8B. 45, 10
        add     eax, 4095                               ; 29FF _ 05, 00000FFF
        and     eax, 0FFFFF000H                         ; 2A04 _ 25, FFFFF000
        mov     dword [ebp+10H], eax                    ; 2A09 _ 89. 45, 10
        push    dword [ebp+10H]                         ; 2A0C _ FF. 75, 10
        push    dword [ebp+0CH]                         ; 2A0F _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 2A12 _ FF. 75, 08
        call    memman_free                             ; 2A15 _ E8, FFFFFFFC(rel)
        add     esp, 12                                 ; 2A1A _ 83. C4, 0C
        mov     dword [ebp-4H], eax                     ; 2A1D _ 89. 45, FC
        mov     eax, dword [ebp-4H]                     ; 2A20 _ 8B. 45, FC
        leave                                           ; 2A23 _ C9
        ret                                             ; 2A24 _ C3
; memman_free_4K End of function

shtctl_init:; Function begin
        push    ebp                                     ; 2A25 _ 55
        mov     ebp, esp                                ; 2A26 _ 89. E5
        sub     esp, 24                                 ; 2A28 _ 83. EC, 18
        sub     esp, 8                                  ; 2A2B _ 83. EC, 08
        push    9232                                    ; 2A2E _ 68, 00002410
        push    dword [ebp+8H]                          ; 2A33 _ FF. 75, 08
        call    memman_alloc_4K                         ; 2A36 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 2A3B _ 83. C4, 10
        mov     dword [ebp-0CH], eax                    ; 2A3E _ 89. 45, F4
        cmp     dword [ebp-0CH], 0                      ; 2A41 _ 83. 7D, F4, 00
        jnz     ?_128                                   ; 2A45 _ 75, 0A
        mov     eax, 0                                  ; 2A47 _ B8, 00000000
        jmp     ?_132                                   ; 2A4C _ E9, 0000009A

?_128:  mov     eax, dword [ebp+10H]                    ; 2A51 _ 8B. 45, 10
        imul    eax, dword [ebp+14H]                    ; 2A54 _ 0F AF. 45, 14
        sub     esp, 8                                  ; 2A58 _ 83. EC, 08
        push    eax                                     ; 2A5B _ 50
        push    dword [ebp+8H]                          ; 2A5C _ FF. 75, 08
        call    memman_alloc_4K                         ; 2A5F _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 2A64 _ 83. C4, 10
        mov     edx, eax                                ; 2A67 _ 89. C2
        mov     eax, dword [ebp-0CH]                    ; 2A69 _ 8B. 45, F4
        mov     dword [eax+4H], edx                     ; 2A6C _ 89. 50, 04
        mov     eax, dword [ebp-0CH]                    ; 2A6F _ 8B. 45, F4
        mov     eax, dword [eax+4H]                     ; 2A72 _ 8B. 40, 04
        test    eax, eax                                ; 2A75 _ 85. C0
        jnz     ?_129                                   ; 2A77 _ 75, 1E
        mov     eax, dword [ebp-0CH]                    ; 2A79 _ 8B. 45, F4
        sub     esp, 4                                  ; 2A7C _ 83. EC, 04
        push    9232                                    ; 2A7F _ 68, 00002410
        push    eax                                     ; 2A84 _ 50
        push    dword [ebp+8H]                          ; 2A85 _ FF. 75, 08
        call    memman_free_4K                          ; 2A88 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 2A8D _ 83. C4, 10
        mov     eax, 0                                  ; 2A90 _ B8, 00000000
        jmp     ?_132                                   ; 2A95 _ EB, 54

?_129:  mov     eax, dword [ebp-0CH]                    ; 2A97 _ 8B. 45, F4
        mov     edx, dword [ebp+0CH]                    ; 2A9A _ 8B. 55, 0C
        mov     dword [eax], edx                        ; 2A9D _ 89. 10
        mov     eax, dword [ebp-0CH]                    ; 2A9F _ 8B. 45, F4
        mov     edx, dword [ebp+10H]                    ; 2AA2 _ 8B. 55, 10
        mov     dword [eax+8H], edx                     ; 2AA5 _ 89. 50, 08
        mov     eax, dword [ebp-0CH]                    ; 2AA8 _ 8B. 45, F4
        mov     edx, dword [ebp+14H]                    ; 2AAB _ 8B. 55, 14
        mov     dword [eax+0CH], edx                    ; 2AAE _ 89. 50, 0C
        mov     eax, dword [ebp-0CH]                    ; 2AB1 _ 8B. 45, F4
        mov     dword [eax+10H], -1                     ; 2AB4 _ C7. 40, 10, FFFFFFFF
        mov     dword [ebp-10H], 0                      ; 2ABB _ C7. 45, F0, 00000000
        jmp     ?_131                                   ; 2AC2 _ EB, 1B

?_130:  mov     eax, dword [ebp-0CH]                    ; 2AC4 _ 8B. 45, F4
        mov     edx, dword [ebp-10H]                    ; 2AC7 _ 8B. 55, F0
        add     edx, 33                                 ; 2ACA _ 83. C2, 21
        shl     edx, 5                                  ; 2ACD _ C1. E2, 05
        add     eax, edx                                ; 2AD0 _ 01. D0
        add     eax, 16                                 ; 2AD2 _ 83. C0, 10
        mov     dword [eax], 0                          ; 2AD5 _ C7. 00, 00000000
        add     dword [ebp-10H], 1                      ; 2ADB _ 83. 45, F0, 01
?_131:  cmp     dword [ebp-10H], 255                    ; 2ADF _ 81. 7D, F0, 000000FF
        jle     ?_130                                   ; 2AE6 _ 7E, DC
        mov     eax, dword [ebp-0CH]                    ; 2AE8 _ 8B. 45, F4
?_132:  leave                                           ; 2AEB _ C9
        ret                                             ; 2AEC _ C3
; shtctl_init End of function

sheet_alloc:; Function begin
        push    ebp                                     ; 2AED _ 55
        mov     ebp, esp                                ; 2AEE _ 89. E5
        sub     esp, 16                                 ; 2AF0 _ 83. EC, 10
        mov     dword [ebp-8H], 0                       ; 2AF3 _ C7. 45, F8, 00000000
        jmp     ?_135                                   ; 2AFA _ EB, 4B

?_133:  mov     eax, dword [ebp+8H]                     ; 2AFC _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 2AFF _ 8B. 55, F8
        add     edx, 33                                 ; 2B02 _ 83. C2, 21
        shl     edx, 5                                  ; 2B05 _ C1. E2, 05
        add     eax, edx                                ; 2B08 _ 01. D0
        add     eax, 16                                 ; 2B0A _ 83. C0, 10
        mov     eax, dword [eax]                        ; 2B0D _ 8B. 00
        test    eax, eax                                ; 2B0F _ 85. C0
        jnz     ?_134                                   ; 2B11 _ 75, 30
        mov     eax, dword [ebp-8H]                     ; 2B13 _ 8B. 45, F8
        shl     eax, 5                                  ; 2B16 _ C1. E0, 05
        lea     edx, [eax+410H]                         ; 2B19 _ 8D. 90, 00000410
        mov     eax, dword [ebp+8H]                     ; 2B1F _ 8B. 45, 08
        add     eax, edx                                ; 2B22 _ 01. D0
        add     eax, 4                                  ; 2B24 _ 83. C0, 04
        mov     dword [ebp-4H], eax                     ; 2B27 _ 89. 45, FC
        mov     eax, dword [ebp-4H]                     ; 2B2A _ 8B. 45, FC
        mov     dword [eax+1CH], 1                      ; 2B2D _ C7. 40, 1C, 00000001
        mov     eax, dword [ebp-4H]                     ; 2B34 _ 8B. 45, FC
        mov     dword [eax+18H], -1                     ; 2B37 _ C7. 40, 18, FFFFFFFF
        mov     eax, dword [ebp-4H]                     ; 2B3E _ 8B. 45, FC
        jmp     ?_136                                   ; 2B41 _ EB, 12

?_134:  add     dword [ebp-8H], 1                       ; 2B43 _ 83. 45, F8, 01
?_135:  cmp     dword [ebp-8H], 255                     ; 2B47 _ 81. 7D, F8, 000000FF
        jle     ?_133                                   ; 2B4E _ 7E, AC
        mov     eax, 0                                  ; 2B50 _ B8, 00000000
?_136:  leave                                           ; 2B55 _ C9
        ret                                             ; 2B56 _ C3
; sheet_alloc End of function

sheet_setbuf:; Function begin
        push    ebp                                     ; 2B57 _ 55
        mov     ebp, esp                                ; 2B58 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 2B5A _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 2B5D _ 8B. 55, 0C
        mov     dword [eax], edx                        ; 2B60 _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 2B62 _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 2B65 _ 8B. 55, 10
        mov     dword [eax+4H], edx                     ; 2B68 _ 89. 50, 04
        mov     eax, dword [ebp+8H]                     ; 2B6B _ 8B. 45, 08
        mov     edx, dword [ebp+14H]                    ; 2B6E _ 8B. 55, 14
        mov     dword [eax+8H], edx                     ; 2B71 _ 89. 50, 08
        mov     eax, dword [ebp+8H]                     ; 2B74 _ 8B. 45, 08
        mov     edx, dword [ebp+18H]                    ; 2B77 _ 8B. 55, 18
        mov     dword [eax+14H], edx                    ; 2B7A _ 89. 50, 14
        nop                                             ; 2B7D _ 90
        pop     ebp                                     ; 2B7E _ 5D
        ret                                             ; 2B7F _ C3
; sheet_setbuf End of function

sheet_level_updown:; Function begin
        push    ebp                                     ; 2B80 _ 55
        mov     ebp, esp                                ; 2B81 _ 89. E5
        push    esi                                     ; 2B83 _ 56
        push    ebx                                     ; 2B84 _ 53
        sub     esp, 32                                 ; 2B85 _ 83. EC, 20
        mov     eax, dword [ebp+0CH]                    ; 2B88 _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 2B8B _ 8B. 40, 18
        mov     dword [ebp-0CH], eax                    ; 2B8E _ 89. 45, F4
        mov     eax, dword [ebp+8H]                     ; 2B91 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 2B94 _ 8B. 40, 10
        add     eax, 1                                  ; 2B97 _ 83. C0, 01
        cmp     dword [ebp+10H], eax                    ; 2B9A _ 39. 45, 10
        jle     ?_137                                   ; 2B9D _ 7E, 0C
        mov     eax, dword [ebp+8H]                     ; 2B9F _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 2BA2 _ 8B. 40, 10
        add     eax, 1                                  ; 2BA5 _ 83. C0, 01
        mov     dword [ebp+10H], eax                    ; 2BA8 _ 89. 45, 10
?_137:  cmp     dword [ebp+10H], -1                     ; 2BAB _ 83. 7D, 10, FF
        jge     ?_138                                   ; 2BAF _ 7D, 07
        mov     dword [ebp+10H], -1                     ; 2BB1 _ C7. 45, 10, FFFFFFFF
?_138:  mov     eax, dword [ebp+0CH]                    ; 2BB8 _ 8B. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 2BBB _ 8B. 55, 10
        mov     dword [eax+18H], edx                    ; 2BBE _ 89. 50, 18
        mov     eax, dword [ebp-0CH]                    ; 2BC1 _ 8B. 45, F4
        cmp     eax, dword [ebp+10H]                    ; 2BC4 _ 3B. 45, 10
        jle     ?_145                                   ; 2BC7 _ 0F 8E, 000001D5
        cmp     dword [ebp+10H], 0                      ; 2BCD _ 83. 7D, 10, 00
        js      ?_141                                   ; 2BD1 _ 0F 88, 000000E2
        mov     eax, dword [ebp-0CH]                    ; 2BD7 _ 8B. 45, F4
        mov     dword [ebp-1CH], eax                    ; 2BDA _ 89. 45, E4
        jmp     ?_140                                   ; 2BDD _ EB, 34

?_139:  mov     eax, dword [ebp-1CH]                    ; 2BDF _ 8B. 45, E4
        lea     edx, [eax-1H]                           ; 2BE2 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 2BE5 _ 8B. 45, 08
        add     edx, 4                                  ; 2BE8 _ 83. C2, 04
        mov     edx, dword [eax+edx*4+4H]               ; 2BEB _ 8B. 54 90, 04
        mov     eax, dword [ebp+8H]                     ; 2BEF _ 8B. 45, 08
        mov     ecx, dword [ebp-1CH]                    ; 2BF2 _ 8B. 4D, E4
        add     ecx, 4                                  ; 2BF5 _ 83. C1, 04
        mov     dword [eax+ecx*4+4H], edx               ; 2BF8 _ 89. 54 88, 04
        mov     eax, dword [ebp+8H]                     ; 2BFC _ 8B. 45, 08
        mov     edx, dword [ebp-1CH]                    ; 2BFF _ 8B. 55, E4
        add     edx, 4                                  ; 2C02 _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 2C05 _ 8B. 44 90, 04
        mov     edx, dword [ebp-1CH]                    ; 2C09 _ 8B. 55, E4
        mov     dword [eax+18H], edx                    ; 2C0C _ 89. 50, 18
        sub     dword [ebp-1CH], 1                      ; 2C0F _ 83. 6D, E4, 01
?_140:  mov     eax, dword [ebp-1CH]                    ; 2C13 _ 8B. 45, E4
        cmp     eax, dword [ebp+10H]                    ; 2C16 _ 3B. 45, 10
        jg      ?_139                                   ; 2C19 _ 7F, C4
        mov     eax, dword [ebp+8H]                     ; 2C1B _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 2C1E _ 8B. 55, 10
        lea     ecx, [edx+4H]                           ; 2C21 _ 8D. 4A, 04
        mov     edx, dword [ebp+0CH]                    ; 2C24 _ 8B. 55, 0C
        mov     dword [eax+ecx*4+4H], edx               ; 2C27 _ 89. 54 88, 04
        mov     eax, dword [ebp+10H]                    ; 2C2B _ 8B. 45, 10
        lea     esi, [eax+1H]                           ; 2C2E _ 8D. 70, 01
        mov     eax, dword [ebp+0CH]                    ; 2C31 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 2C34 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 2C37 _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 2C3A _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 2C3D _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 2C40 _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 2C43 _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 2C46 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 2C49 _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 2C4C _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 2C4F _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 2C52 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 2C55 _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 2C58 _ 8B. 40, 0C
        sub     esp, 8                                  ; 2C5B _ 83. EC, 08
        push    esi                                     ; 2C5E _ 56
        push    ebx                                     ; 2C5F _ 53
        push    ecx                                     ; 2C60 _ 51
        push    edx                                     ; 2C61 _ 52
        push    eax                                     ; 2C62 _ 50
        push    dword [ebp+8H]                          ; 2C63 _ FF. 75, 08
        call    sheet_refreshmap                        ; 2C66 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 2C6B _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 2C6E _ 8B. 45, 10
        lea     esi, [eax+1H]                           ; 2C71 _ 8D. 70, 01
        mov     eax, dword [ebp+0CH]                    ; 2C74 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 2C77 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 2C7A _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 2C7D _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 2C80 _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 2C83 _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 2C86 _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 2C89 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 2C8C _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 2C8F _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 2C92 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 2C95 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 2C98 _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 2C9B _ 8B. 40, 0C
        sub     esp, 4                                  ; 2C9E _ 83. EC, 04
        push    dword [ebp-0CH]                         ; 2CA1 _ FF. 75, F4
        push    esi                                     ; 2CA4 _ 56
        push    ebx                                     ; 2CA5 _ 53
        push    ecx                                     ; 2CA6 _ 51
        push    edx                                     ; 2CA7 _ 52
        push    eax                                     ; 2CA8 _ 50
        push    dword [ebp+8H]                          ; 2CA9 _ FF. 75, 08
        call    sheet_refresh_new                       ; 2CAC _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 2CB1 _ 83. C4, 20
        jmp     ?_152                                   ; 2CB4 _ E9, 00000244

?_141:  mov     eax, dword [ebp+8H]                     ; 2CB9 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 2CBC _ 8B. 40, 10
        cmp     dword [ebp-0CH], eax                    ; 2CBF _ 39. 45, F4
        jge     ?_144                                   ; 2CC2 _ 7D, 47
        mov     eax, dword [ebp-0CH]                    ; 2CC4 _ 8B. 45, F4
        mov     dword [ebp-18H], eax                    ; 2CC7 _ 89. 45, E8
        jmp     ?_143                                   ; 2CCA _ EB, 34

?_142:  mov     eax, dword [ebp-18H]                    ; 2CCC _ 8B. 45, E8
        lea     edx, [eax+1H]                           ; 2CCF _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 2CD2 _ 8B. 45, 08
        add     edx, 4                                  ; 2CD5 _ 83. C2, 04
        mov     edx, dword [eax+edx*4+4H]               ; 2CD8 _ 8B. 54 90, 04
        mov     eax, dword [ebp+8H]                     ; 2CDC _ 8B. 45, 08
        mov     ecx, dword [ebp-18H]                    ; 2CDF _ 8B. 4D, E8
        add     ecx, 4                                  ; 2CE2 _ 83. C1, 04
        mov     dword [eax+ecx*4+4H], edx               ; 2CE5 _ 89. 54 88, 04
        mov     eax, dword [ebp+8H]                     ; 2CE9 _ 8B. 45, 08
        mov     edx, dword [ebp-18H]                    ; 2CEC _ 8B. 55, E8
        add     edx, 4                                  ; 2CEF _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 2CF2 _ 8B. 44 90, 04
        mov     edx, dword [ebp-18H]                    ; 2CF6 _ 8B. 55, E8
        mov     dword [eax+18H], edx                    ; 2CF9 _ 89. 50, 18
        add     dword [ebp-18H], 1                      ; 2CFC _ 83. 45, E8, 01
?_143:  mov     eax, dword [ebp+8H]                     ; 2D00 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 2D03 _ 8B. 40, 10
        cmp     dword [ebp-18H], eax                    ; 2D06 _ 39. 45, E8
        jl      ?_142                                   ; 2D09 _ 7C, C1
?_144:  mov     eax, dword [ebp+8H]                     ; 2D0B _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 2D0E _ 8B. 40, 10
        lea     edx, [eax-1H]                           ; 2D11 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 2D14 _ 8B. 45, 08
        mov     dword [eax+10H], edx                    ; 2D17 _ 89. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 2D1A _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 2D1D _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 2D20 _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 2D23 _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 2D26 _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 2D29 _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 2D2C _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 2D2F _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 2D32 _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 2D35 _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 2D38 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 2D3B _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 2D3E _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 2D41 _ 8B. 40, 0C
        sub     esp, 8                                  ; 2D44 _ 83. EC, 08
        push    0                                       ; 2D47 _ 6A, 00
        push    ebx                                     ; 2D49 _ 53
        push    ecx                                     ; 2D4A _ 51
        push    edx                                     ; 2D4B _ 52
        push    eax                                     ; 2D4C _ 50
        push    dword [ebp+8H]                          ; 2D4D _ FF. 75, 08
        call    sheet_refreshmap                        ; 2D50 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 2D55 _ 83. C4, 20
        mov     eax, dword [ebp-0CH]                    ; 2D58 _ 8B. 45, F4
        lea     esi, [eax-1H]                           ; 2D5B _ 8D. 70, FF
        mov     eax, dword [ebp+0CH]                    ; 2D5E _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 2D61 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 2D64 _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 2D67 _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 2D6A _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 2D6D _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 2D70 _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 2D73 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 2D76 _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 2D79 _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 2D7C _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 2D7F _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 2D82 _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 2D85 _ 8B. 40, 0C
        sub     esp, 4                                  ; 2D88 _ 83. EC, 04
        push    esi                                     ; 2D8B _ 56
        push    0                                       ; 2D8C _ 6A, 00
        push    ebx                                     ; 2D8E _ 53
        push    ecx                                     ; 2D8F _ 51
        push    edx                                     ; 2D90 _ 52
        push    eax                                     ; 2D91 _ 50
        push    dword [ebp+8H]                          ; 2D92 _ FF. 75, 08
        call    sheet_refresh_new                       ; 2D95 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 2D9A _ 83. C4, 20
        jmp     ?_152                                   ; 2D9D _ E9, 0000015B

?_145:  mov     eax, dword [ebp-0CH]                    ; 2DA2 _ 8B. 45, F4
        cmp     eax, dword [ebp+10H]                    ; 2DA5 _ 3B. 45, 10
        jge     ?_152                                   ; 2DA8 _ 0F 8D, 0000014F
        cmp     dword [ebp-0CH], 0                      ; 2DAE _ 83. 7D, F4, 00
        js      ?_148                                   ; 2DB2 _ 78, 56
        mov     eax, dword [ebp-0CH]                    ; 2DB4 _ 8B. 45, F4
        mov     dword [ebp-14H], eax                    ; 2DB7 _ 89. 45, EC
        jmp     ?_147                                   ; 2DBA _ EB, 34

?_146:  mov     eax, dword [ebp-14H]                    ; 2DBC _ 8B. 45, EC
        lea     edx, [eax+1H]                           ; 2DBF _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 2DC2 _ 8B. 45, 08
        add     edx, 4                                  ; 2DC5 _ 83. C2, 04
        mov     edx, dword [eax+edx*4+4H]               ; 2DC8 _ 8B. 54 90, 04
        mov     eax, dword [ebp+8H]                     ; 2DCC _ 8B. 45, 08
        mov     ecx, dword [ebp-14H]                    ; 2DCF _ 8B. 4D, EC
        add     ecx, 4                                  ; 2DD2 _ 83. C1, 04
        mov     dword [eax+ecx*4+4H], edx               ; 2DD5 _ 89. 54 88, 04
        mov     eax, dword [ebp+8H]                     ; 2DD9 _ 8B. 45, 08
        mov     edx, dword [ebp-14H]                    ; 2DDC _ 8B. 55, EC
        add     edx, 4                                  ; 2DDF _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 2DE2 _ 8B. 44 90, 04
        mov     edx, dword [ebp-14H]                    ; 2DE6 _ 8B. 55, EC
        mov     dword [eax+18H], edx                    ; 2DE9 _ 89. 50, 18
        add     dword [ebp-14H], 1                      ; 2DEC _ 83. 45, EC, 01
?_147:  mov     eax, dword [ebp-14H]                    ; 2DF0 _ 8B. 45, EC
        cmp     eax, dword [ebp+10H]                    ; 2DF3 _ 3B. 45, 10
        jl      ?_146                                   ; 2DF6 _ 7C, C4
        mov     eax, dword [ebp+8H]                     ; 2DF8 _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 2DFB _ 8B. 55, 10
        lea     ecx, [edx+4H]                           ; 2DFE _ 8D. 4A, 04
        mov     edx, dword [ebp+0CH]                    ; 2E01 _ 8B. 55, 0C
        mov     dword [eax+ecx*4+4H], edx               ; 2E04 _ 89. 54 88, 04
        jmp     ?_151                                   ; 2E08 _ EB, 72

?_148:  cmp     dword [ebp-0CH], 0                      ; 2E0A _ 83. 7D, F4, 00
        jns     ?_151                                   ; 2E0E _ 79, 6C
        mov     eax, dword [ebp+8H]                     ; 2E10 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 2E13 _ 8B. 40, 10
        mov     dword [ebp-10H], eax                    ; 2E16 _ 89. 45, F0
        jmp     ?_150                                   ; 2E19 _ EB, 3A

?_149:  mov     eax, dword [ebp-10H]                    ; 2E1B _ 8B. 45, F0
        lea     ecx, [eax+1H]                           ; 2E1E _ 8D. 48, 01
        mov     eax, dword [ebp+8H]                     ; 2E21 _ 8B. 45, 08
        mov     edx, dword [ebp-10H]                    ; 2E24 _ 8B. 55, F0
        add     edx, 4                                  ; 2E27 _ 83. C2, 04
        mov     edx, dword [eax+edx*4+4H]               ; 2E2A _ 8B. 54 90, 04
        mov     eax, dword [ebp+8H]                     ; 2E2E _ 8B. 45, 08
        add     ecx, 4                                  ; 2E31 _ 83. C1, 04
        mov     dword [eax+ecx*4+4H], edx               ; 2E34 _ 89. 54 88, 04
        mov     eax, dword [ebp-10H]                    ; 2E38 _ 8B. 45, F0
        lea     edx, [eax+1H]                           ; 2E3B _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 2E3E _ 8B. 45, 08
        add     edx, 4                                  ; 2E41 _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 2E44 _ 8B. 44 90, 04
        mov     edx, dword [ebp-10H]                    ; 2E48 _ 8B. 55, F0
        add     edx, 1                                  ; 2E4B _ 83. C2, 01
        mov     dword [eax+18H], edx                    ; 2E4E _ 89. 50, 18
        sub     dword [ebp-10H], 1                      ; 2E51 _ 83. 6D, F0, 01
?_150:  mov     eax, dword [ebp-10H]                    ; 2E55 _ 8B. 45, F0
        cmp     eax, dword [ebp+10H]                    ; 2E58 _ 3B. 45, 10
        jge     ?_149                                   ; 2E5B _ 7D, BE
        mov     eax, dword [ebp+8H]                     ; 2E5D _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 2E60 _ 8B. 55, 10
        lea     ecx, [edx+4H]                           ; 2E63 _ 8D. 4A, 04
        mov     edx, dword [ebp+0CH]                    ; 2E66 _ 8B. 55, 0C
        mov     dword [eax+ecx*4+4H], edx               ; 2E69 _ 89. 54 88, 04
        mov     eax, dword [ebp+8H]                     ; 2E6D _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 2E70 _ 8B. 40, 10
        lea     edx, [eax+1H]                           ; 2E73 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 2E76 _ 8B. 45, 08
        mov     dword [eax+10H], edx                    ; 2E79 _ 89. 50, 10
?_151:  mov     eax, dword [ebp+0CH]                    ; 2E7C _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 2E7F _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 2E82 _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 2E85 _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 2E88 _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 2E8B _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 2E8E _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 2E91 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 2E94 _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 2E97 _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 2E9A _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 2E9D _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 2EA0 _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 2EA3 _ 8B. 40, 0C
        sub     esp, 8                                  ; 2EA6 _ 83. EC, 08
        push    dword [ebp+10H]                         ; 2EA9 _ FF. 75, 10
        push    ebx                                     ; 2EAC _ 53
        push    ecx                                     ; 2EAD _ 51
        push    edx                                     ; 2EAE _ 52
        push    eax                                     ; 2EAF _ 50
        push    dword [ebp+8H]                          ; 2EB0 _ FF. 75, 08
        call    sheet_refreshmap                        ; 2EB3 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 2EB8 _ 83. C4, 20
        mov     eax, dword [ebp+0CH]                    ; 2EBB _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 2EBE _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 2EC1 _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 2EC4 _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 2EC7 _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 2ECA _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 2ECD _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 2ED0 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 2ED3 _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 2ED6 _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 2ED9 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 2EDC _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 2EDF _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 2EE2 _ 8B. 40, 0C
        sub     esp, 4                                  ; 2EE5 _ 83. EC, 04
        push    dword [ebp+10H]                         ; 2EE8 _ FF. 75, 10
        push    dword [ebp+10H]                         ; 2EEB _ FF. 75, 10
        push    ebx                                     ; 2EEE _ 53
        push    ecx                                     ; 2EEF _ 51
        push    edx                                     ; 2EF0 _ 52
        push    eax                                     ; 2EF1 _ 50
        push    dword [ebp+8H]                          ; 2EF2 _ FF. 75, 08
        call    sheet_refresh_new                       ; 2EF5 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 2EFA _ 83. C4, 20
?_152:  nop                                             ; 2EFD _ 90
        lea     esp, [ebp-8H]                           ; 2EFE _ 8D. 65, F8
        pop     ebx                                     ; 2F01 _ 5B
        pop     esi                                     ; 2F02 _ 5E
        pop     ebp                                     ; 2F03 _ 5D
        ret                                             ; 2F04 _ C3
; sheet_level_updown End of function

sheet_refresh:; Function begin
        push    ebp                                     ; 2F05 _ 55
        mov     ebp, esp                                ; 2F06 _ 89. E5
        push    edi                                     ; 2F08 _ 57
        push    esi                                     ; 2F09 _ 56
        push    ebx                                     ; 2F0A _ 53
        sub     esp, 28                                 ; 2F0B _ 83. EC, 1C
        mov     eax, dword [ebp+0CH]                    ; 2F0E _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 2F11 _ 8B. 40, 18
        test    eax, eax                                ; 2F14 _ 85. C0
        js      ?_153                                   ; 2F16 _ 78, 52
        mov     eax, dword [ebp+0CH]                    ; 2F18 _ 8B. 45, 0C
        mov     ebx, dword [eax+18H]                    ; 2F1B _ 8B. 58, 18
        mov     eax, dword [ebp+0CH]                    ; 2F1E _ 8B. 45, 0C
        mov     ecx, dword [eax+18H]                    ; 2F21 _ 8B. 48, 18
        mov     eax, dword [ebp+0CH]                    ; 2F24 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 2F27 _ 8B. 50, 10
        mov     eax, dword [ebp+1CH]                    ; 2F2A _ 8B. 45, 1C
        lea     edi, [edx+eax]                          ; 2F2D _ 8D. 3C 02
        mov     eax, dword [ebp+0CH]                    ; 2F30 _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 2F33 _ 8B. 50, 0C
        mov     eax, dword [ebp+18H]                    ; 2F36 _ 8B. 45, 18
        lea     esi, [edx+eax]                          ; 2F39 _ 8D. 34 02
        mov     eax, dword [ebp+0CH]                    ; 2F3C _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 2F3F _ 8B. 50, 10
        mov     eax, dword [ebp+14H]                    ; 2F42 _ 8B. 45, 14
        add     edx, eax                                ; 2F45 _ 01. C2
        mov     eax, dword [ebp+0CH]                    ; 2F47 _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 2F4A _ 8B. 40, 0C
        mov     dword [ebp-1CH], eax                    ; 2F4D _ 89. 45, E4
        mov     eax, dword [ebp+10H]                    ; 2F50 _ 8B. 45, 10
        add     eax, dword [ebp-1CH]                    ; 2F53 _ 03. 45, E4
        sub     esp, 4                                  ; 2F56 _ 83. EC, 04
        push    ebx                                     ; 2F59 _ 53
        push    ecx                                     ; 2F5A _ 51
        push    edi                                     ; 2F5B _ 57
        push    esi                                     ; 2F5C _ 56
        push    edx                                     ; 2F5D _ 52
        push    eax                                     ; 2F5E _ 50
        push    dword [ebp+8H]                          ; 2F5F _ FF. 75, 08
        call    sheet_refresh_new                       ; 2F62 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 2F67 _ 83. C4, 20
?_153:  mov     eax, 0                                  ; 2F6A _ B8, 00000000
        lea     esp, [ebp-0CH]                          ; 2F6F _ 8D. 65, F4
        pop     ebx                                     ; 2F72 _ 5B
        pop     esi                                     ; 2F73 _ 5E
        pop     edi                                     ; 2F74 _ 5F
        pop     ebp                                     ; 2F75 _ 5D
        ret                                             ; 2F76 _ C3
; sheet_refresh End of function

sheet_slide:; Function begin
        push    ebp                                     ; 2F77 _ 55
        mov     ebp, esp                                ; 2F78 _ 89. E5
        push    esi                                     ; 2F7A _ 56
        push    ebx                                     ; 2F7B _ 53
        sub     esp, 16                                 ; 2F7C _ 83. EC, 10
        mov     eax, dword [ebp+0CH]                    ; 2F7F _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 2F82 _ 8B. 40, 0C
        mov     dword [ebp-10H], eax                    ; 2F85 _ 89. 45, F0
        mov     eax, dword [ebp+0CH]                    ; 2F88 _ 8B. 45, 0C
        mov     eax, dword [eax+10H]                    ; 2F8B _ 8B. 40, 10
        mov     dword [ebp-0CH], eax                    ; 2F8E _ 89. 45, F4
        mov     eax, dword [ebp+0CH]                    ; 2F91 _ 8B. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 2F94 _ 8B. 55, 10
        mov     dword [eax+0CH], edx                    ; 2F97 _ 89. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 2F9A _ 8B. 45, 0C
        mov     edx, dword [ebp+14H]                    ; 2F9D _ 8B. 55, 14
        mov     dword [eax+10H], edx                    ; 2FA0 _ 89. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 2FA3 _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 2FA6 _ 8B. 40, 18
        test    eax, eax                                ; 2FA9 _ 85. C0
        js      ?_154                                   ; 2FAB _ 0F 88, 000000D3
        mov     eax, dword [ebp+0CH]                    ; 2FB1 _ 8B. 45, 0C
        mov     edx, dword [eax+8H]                     ; 2FB4 _ 8B. 50, 08
        mov     eax, dword [ebp-0CH]                    ; 2FB7 _ 8B. 45, F4
        add     edx, eax                                ; 2FBA _ 01. C2
        mov     eax, dword [ebp+0CH]                    ; 2FBC _ 8B. 45, 0C
        mov     ecx, dword [eax+4H]                     ; 2FBF _ 8B. 48, 04
        mov     eax, dword [ebp-10H]                    ; 2FC2 _ 8B. 45, F0
        add     eax, ecx                                ; 2FC5 _ 01. C8
        sub     esp, 8                                  ; 2FC7 _ 83. EC, 08
        push    0                                       ; 2FCA _ 6A, 00
        push    edx                                     ; 2FCC _ 52
        push    eax                                     ; 2FCD _ 50
        push    dword [ebp-0CH]                         ; 2FCE _ FF. 75, F4
        push    dword [ebp-10H]                         ; 2FD1 _ FF. 75, F0
        push    dword [ebp+8H]                          ; 2FD4 _ FF. 75, 08
        call    sheet_refreshmap                        ; 2FD7 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 2FDC _ 83. C4, 20
        mov     eax, dword [ebp+0CH]                    ; 2FDF _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 2FE2 _ 8B. 40, 18
        mov     edx, dword [ebp+0CH]                    ; 2FE5 _ 8B. 55, 0C
        mov     ecx, dword [edx+8H]                     ; 2FE8 _ 8B. 4A, 08
        mov     edx, dword [ebp+14H]                    ; 2FEB _ 8B. 55, 14
        add     ecx, edx                                ; 2FEE _ 01. D1
        mov     edx, dword [ebp+0CH]                    ; 2FF0 _ 8B. 55, 0C
        mov     ebx, dword [edx+4H]                     ; 2FF3 _ 8B. 5A, 04
        mov     edx, dword [ebp+10H]                    ; 2FF6 _ 8B. 55, 10
        add     edx, ebx                                ; 2FF9 _ 01. DA
        sub     esp, 8                                  ; 2FFB _ 83. EC, 08
        push    eax                                     ; 2FFE _ 50
        push    ecx                                     ; 2FFF _ 51
        push    edx                                     ; 3000 _ 52
        push    dword [ebp+14H]                         ; 3001 _ FF. 75, 14
        push    dword [ebp+10H]                         ; 3004 _ FF. 75, 10
        push    dword [ebp+8H]                          ; 3007 _ FF. 75, 08
        call    sheet_refreshmap                        ; 300A _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 300F _ 83. C4, 20
        mov     eax, dword [ebp+0CH]                    ; 3012 _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 3015 _ 8B. 40, 18
        lea     ecx, [eax-1H]                           ; 3018 _ 8D. 48, FF
        mov     eax, dword [ebp+0CH]                    ; 301B _ 8B. 45, 0C
        mov     edx, dword [eax+8H]                     ; 301E _ 8B. 50, 08
        mov     eax, dword [ebp-0CH]                    ; 3021 _ 8B. 45, F4
        add     edx, eax                                ; 3024 _ 01. C2
        mov     eax, dword [ebp+0CH]                    ; 3026 _ 8B. 45, 0C
        mov     ebx, dword [eax+4H]                     ; 3029 _ 8B. 58, 04
        mov     eax, dword [ebp-10H]                    ; 302C _ 8B. 45, F0
        add     eax, ebx                                ; 302F _ 01. D8
        sub     esp, 4                                  ; 3031 _ 83. EC, 04
        push    ecx                                     ; 3034 _ 51
        push    0                                       ; 3035 _ 6A, 00
        push    edx                                     ; 3037 _ 52
        push    eax                                     ; 3038 _ 50
        push    dword [ebp-0CH]                         ; 3039 _ FF. 75, F4
        push    dword [ebp-10H]                         ; 303C _ FF. 75, F0
        push    dword [ebp+8H]                          ; 303F _ FF. 75, 08
        call    sheet_refresh_new                       ; 3042 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 3047 _ 83. C4, 20
        mov     eax, dword [ebp+0CH]                    ; 304A _ 8B. 45, 0C
        mov     edx, dword [eax+18H]                    ; 304D _ 8B. 50, 18
        mov     eax, dword [ebp+0CH]                    ; 3050 _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 3053 _ 8B. 40, 18
        mov     ecx, dword [ebp+0CH]                    ; 3056 _ 8B. 4D, 0C
        mov     ebx, dword [ecx+8H]                     ; 3059 _ 8B. 59, 08
        mov     ecx, dword [ebp+14H]                    ; 305C _ 8B. 4D, 14
        add     ebx, ecx                                ; 305F _ 01. CB
        mov     ecx, dword [ebp+0CH]                    ; 3061 _ 8B. 4D, 0C
        mov     esi, dword [ecx+4H]                     ; 3064 _ 8B. 71, 04
        mov     ecx, dword [ebp+10H]                    ; 3067 _ 8B. 4D, 10
        add     ecx, esi                                ; 306A _ 01. F1
        sub     esp, 4                                  ; 306C _ 83. EC, 04
        push    edx                                     ; 306F _ 52
        push    eax                                     ; 3070 _ 50
        push    ebx                                     ; 3071 _ 53
        push    ecx                                     ; 3072 _ 51
        push    dword [ebp+14H]                         ; 3073 _ FF. 75, 14
        push    dword [ebp+10H]                         ; 3076 _ FF. 75, 10
        push    dword [ebp+8H]                          ; 3079 _ FF. 75, 08
        call    sheet_refresh_new                       ; 307C _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 3081 _ 83. C4, 20
?_154:  nop                                             ; 3084 _ 90
        lea     esp, [ebp-8H]                           ; 3085 _ 8D. 65, F8
        pop     ebx                                     ; 3088 _ 5B
        pop     esi                                     ; 3089 _ 5E
        pop     ebp                                     ; 308A _ 5D
        ret                                             ; 308B _ C3
; sheet_slide End of function

sheet_refresh_new:; Function begin
        push    ebp                                     ; 308C _ 55
        mov     ebp, esp                                ; 308D _ 89. E5
        sub     esp, 48                                 ; 308F _ 83. EC, 30
        mov     eax, dword [ebp+8H]                     ; 3092 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 3095 _ 8B. 00
        mov     dword [ebp-18H], eax                    ; 3097 _ 89. 45, E8
        mov     eax, dword [ebp+8H]                     ; 309A _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 309D _ 8B. 40, 04
        mov     dword [ebp-14H], eax                    ; 30A0 _ 89. 45, EC
        cmp     dword [ebp+0CH], 0                      ; 30A3 _ 83. 7D, 0C, 00
        jns     ?_155                                   ; 30A7 _ 79, 07
        mov     dword [ebp+0CH], 0                      ; 30A9 _ C7. 45, 0C, 00000000
?_155:  cmp     dword [ebp+10H], 8                      ; 30B0 _ 83. 7D, 10, 08
        jg      ?_156                                   ; 30B4 _ 7F, 07
        mov     dword [ebp+10H], 0                      ; 30B6 _ C7. 45, 10, 00000000
?_156:  mov     eax, dword [ebp+8H]                     ; 30BD _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 30C0 _ 8B. 40, 08
        cmp     dword [ebp+14H], eax                    ; 30C3 _ 39. 45, 14
        jle     ?_157                                   ; 30C6 _ 7E, 09
        mov     eax, dword [ebp+8H]                     ; 30C8 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 30CB _ 8B. 40, 08
        mov     dword [ebp+14H], eax                    ; 30CE _ 89. 45, 14
?_157:  mov     eax, dword [ebp+8H]                     ; 30D1 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 30D4 _ 8B. 40, 0C
        cmp     dword [ebp+18H], eax                    ; 30D7 _ 39. 45, 18
        jle     ?_158                                   ; 30DA _ 7E, 09
        mov     eax, dword [ebp+8H]                     ; 30DC _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 30DF _ 8B. 40, 0C
        mov     dword [ebp+18H], eax                    ; 30E2 _ 89. 45, 18
?_158:  mov     eax, dword [ebp+1CH]                    ; 30E5 _ 8B. 45, 1C
        mov     dword [ebp-24H], eax                    ; 30E8 _ 89. 45, DC
        jmp     ?_165                                   ; 30EB _ E9, 00000118

?_159:  mov     eax, dword [ebp+8H]                     ; 30F0 _ 8B. 45, 08
        mov     edx, dword [ebp-24H]                    ; 30F3 _ 8B. 55, DC
        add     edx, 4                                  ; 30F6 _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 30F9 _ 8B. 44 90, 04
        mov     dword [ebp-10H], eax                    ; 30FD _ 89. 45, F0
        mov     eax, dword [ebp-10H]                    ; 3100 _ 8B. 45, F0
        mov     eax, dword [eax]                        ; 3103 _ 8B. 00
        mov     dword [ebp-0CH], eax                    ; 3105 _ 89. 45, F4
        mov     eax, dword [ebp-10H]                    ; 3108 _ 8B. 45, F0
        mov     edx, dword [ebp+8H]                     ; 310B _ 8B. 55, 08
        add     edx, 1044                               ; 310E _ 81. C2, 00000414
        sub     eax, edx                                ; 3114 _ 29. D0
        sar     eax, 5                                  ; 3116 _ C1. F8, 05
        mov     byte [ebp-26H], al                      ; 3119 _ 88. 45, DA
        mov     dword [ebp-20H], 0                      ; 311C _ C7. 45, E0, 00000000
        jmp     ?_164                                   ; 3123 _ E9, 000000CD

?_160:  mov     eax, dword [ebp-10H]                    ; 3128 _ 8B. 45, F0
        mov     edx, dword [eax+10H]                    ; 312B _ 8B. 50, 10
        mov     eax, dword [ebp-20H]                    ; 312E _ 8B. 45, E0
        add     eax, edx                                ; 3131 _ 01. D0
        mov     dword [ebp-8H], eax                     ; 3133 _ 89. 45, F8
        mov     dword [ebp-1CH], 0                      ; 3136 _ C7. 45, E4, 00000000
        jmp     ?_163                                   ; 313D _ E9, 000000A0

?_161:  mov     eax, dword [ebp-10H]                    ; 3142 _ 8B. 45, F0
        mov     edx, dword [eax+0CH]                    ; 3145 _ 8B. 50, 0C
        mov     eax, dword [ebp-1CH]                    ; 3148 _ 8B. 45, E4
        add     eax, edx                                ; 314B _ 01. D0
        mov     dword [ebp-4H], eax                     ; 314D _ 89. 45, FC
        mov     eax, dword [ebp+0CH]                    ; 3150 _ 8B. 45, 0C
        cmp     eax, dword [ebp-4H]                     ; 3153 _ 3B. 45, FC
        jg      ?_162                                   ; 3156 _ 0F 8F, 00000082
        mov     eax, dword [ebp-4H]                     ; 315C _ 8B. 45, FC
        cmp     eax, dword [ebp+14H]                    ; 315F _ 3B. 45, 14
        jge     ?_162                                   ; 3162 _ 7D, 7A
        mov     eax, dword [ebp+10H]                    ; 3164 _ 8B. 45, 10
        cmp     eax, dword [ebp-8H]                     ; 3167 _ 3B. 45, F8
        jg      ?_162                                   ; 316A _ 7F, 72
        mov     eax, dword [ebp-8H]                     ; 316C _ 8B. 45, F8
        cmp     eax, dword [ebp+18H]                    ; 316F _ 3B. 45, 18
        jge     ?_162                                   ; 3172 _ 7D, 6A
        mov     eax, dword [ebp-10H]                    ; 3174 _ 8B. 45, F0
        mov     eax, dword [eax+4H]                     ; 3177 _ 8B. 40, 04
        imul    eax, dword [ebp-20H]                    ; 317A _ 0F AF. 45, E0
        mov     edx, eax                                ; 317E _ 89. C2
        mov     eax, dword [ebp-1CH]                    ; 3180 _ 8B. 45, E4
        add     eax, edx                                ; 3183 _ 01. D0
        mov     edx, eax                                ; 3185 _ 89. C2
        mov     eax, dword [ebp-0CH]                    ; 3187 _ 8B. 45, F4
        add     eax, edx                                ; 318A _ 01. D0
        movzx   eax, byte [eax]                         ; 318C _ 0F B6. 00
        mov     byte [ebp-25H], al                      ; 318F _ 88. 45, DB
        mov     eax, dword [ebp+8H]                     ; 3192 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 3195 _ 8B. 40, 08
        imul    eax, dword [ebp-8H]                     ; 3198 _ 0F AF. 45, F8
        mov     edx, eax                                ; 319C _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 319E _ 8B. 45, FC
        add     eax, edx                                ; 31A1 _ 01. D0
        mov     edx, eax                                ; 31A3 _ 89. C2
        mov     eax, dword [ebp-14H]                    ; 31A5 _ 8B. 45, EC
        add     eax, edx                                ; 31A8 _ 01. D0
        movzx   eax, byte [eax]                         ; 31AA _ 0F B6. 00
        cmp     byte [ebp-26H], al                      ; 31AD _ 38. 45, DA
        jnz     ?_162                                   ; 31B0 _ 75, 2C
        movzx   edx, byte [ebp-25H]                     ; 31B2 _ 0F B6. 55, DB
        mov     eax, dword [ebp-10H]                    ; 31B6 _ 8B. 45, F0
        mov     eax, dword [eax+14H]                    ; 31B9 _ 8B. 40, 14
        cmp     edx, eax                                ; 31BC _ 39. C2
        jz      ?_162                                   ; 31BE _ 74, 1E
        mov     eax, dword [ebp+8H]                     ; 31C0 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 31C3 _ 8B. 40, 08
        imul    eax, dword [ebp-8H]                     ; 31C6 _ 0F AF. 45, F8
        mov     edx, eax                                ; 31CA _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 31CC _ 8B. 45, FC
        add     eax, edx                                ; 31CF _ 01. D0
        mov     edx, eax                                ; 31D1 _ 89. C2
        mov     eax, dword [ebp-18H]                    ; 31D3 _ 8B. 45, E8
        add     edx, eax                                ; 31D6 _ 01. C2
        movzx   eax, byte [ebp-25H]                     ; 31D8 _ 0F B6. 45, DB
        mov     byte [edx], al                          ; 31DC _ 88. 02
?_162:  add     dword [ebp-1CH], 1                      ; 31DE _ 83. 45, E4, 01
?_163:  mov     eax, dword [ebp-10H]                    ; 31E2 _ 8B. 45, F0
        mov     eax, dword [eax+4H]                     ; 31E5 _ 8B. 40, 04
        cmp     dword [ebp-1CH], eax                    ; 31E8 _ 39. 45, E4
        jl      ?_161                                   ; 31EB _ 0F 8C, FFFFFF51
        add     dword [ebp-20H], 1                      ; 31F1 _ 83. 45, E0, 01
?_164:  mov     eax, dword [ebp-10H]                    ; 31F5 _ 8B. 45, F0
        mov     eax, dword [eax+8H]                     ; 31F8 _ 8B. 40, 08
        cmp     dword [ebp-20H], eax                    ; 31FB _ 39. 45, E0
        jl      ?_160                                   ; 31FE _ 0F 8C, FFFFFF24
        add     dword [ebp-24H], 1                      ; 3204 _ 83. 45, DC, 01
?_165:  mov     eax, dword [ebp-24H]                    ; 3208 _ 8B. 45, DC
        cmp     eax, dword [ebp+20H]                    ; 320B _ 3B. 45, 20
        jle     ?_159                                   ; 320E _ 0F 8E, FFFFFEDC
        nop                                             ; 3214 _ 90
        leave                                           ; 3215 _ C9
        ret                                             ; 3216 _ C3
; sheet_refresh_new End of function

sheet_refreshmap:; Function begin
        push    ebp                                     ; 3217 _ 55
        mov     ebp, esp                                ; 3218 _ 89. E5
        sub     esp, 64                                 ; 321A _ 83. EC, 40
        mov     eax, dword [ebp+8H]                     ; 321D _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 3220 _ 8B. 40, 04
        mov     dword [ebp-14H], eax                    ; 3223 _ 89. 45, EC
        cmp     dword [ebp+0CH], 0                      ; 3226 _ 83. 7D, 0C, 00
        jns     ?_166                                   ; 322A _ 79, 07
        mov     dword [ebp+0CH], 0                      ; 322C _ C7. 45, 0C, 00000000
?_166:  mov     eax, dword [ebp+8H]                     ; 3233 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 3236 _ 8B. 40, 08
        cmp     dword [ebp+0CH], eax                    ; 3239 _ 39. 45, 0C
        jle     ?_167                                   ; 323C _ 7E, 09
        mov     eax, dword [ebp+8H]                     ; 323E _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 3241 _ 8B. 40, 08
        mov     dword [ebp+0CH], eax                    ; 3244 _ 89. 45, 0C
?_167:  cmp     dword [ebp+10H], 0                      ; 3247 _ 83. 7D, 10, 00
        jns     ?_168                                   ; 324B _ 79, 07
        mov     dword [ebp+10H], 0                      ; 324D _ C7. 45, 10, 00000000
?_168:  mov     eax, dword [ebp+8H]                     ; 3254 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 3257 _ 8B. 40, 0C
        cmp     dword [ebp+10H], eax                    ; 325A _ 39. 45, 10
        jle     ?_169                                   ; 325D _ 7E, 09
        mov     eax, dword [ebp+8H]                     ; 325F _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 3262 _ 8B. 40, 0C
        mov     dword [ebp+10H], eax                    ; 3265 _ 89. 45, 10
?_169:  mov     eax, dword [ebp+1CH]                    ; 3268 _ 8B. 45, 1C
        mov     dword [ebp-20H], eax                    ; 326B _ 89. 45, E0
        jmp     ?_180                                   ; 326E _ E9, 00000140

?_170:  mov     eax, dword [ebp+8H]                     ; 3273 _ 8B. 45, 08
        mov     edx, dword [ebp-20H]                    ; 3276 _ 8B. 55, E0
        add     edx, 4                                  ; 3279 _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 327C _ 8B. 44 90, 04
        mov     dword [ebp-10H], eax                    ; 3280 _ 89. 45, F0
        mov     eax, dword [ebp-10H]                    ; 3283 _ 8B. 45, F0
        mov     edx, dword [ebp+8H]                     ; 3286 _ 8B. 55, 08
        add     edx, 1044                               ; 3289 _ 81. C2, 00000414
        sub     eax, edx                                ; 328F _ 29. D0
        sar     eax, 5                                  ; 3291 _ C1. F8, 05
        mov     byte [ebp-31H], al                      ; 3294 _ 88. 45, CF
        mov     eax, dword [ebp-10H]                    ; 3297 _ 8B. 45, F0
        mov     eax, dword [eax]                        ; 329A _ 8B. 00
        mov     dword [ebp-0CH], eax                    ; 329C _ 89. 45, F4
        mov     eax, dword [ebp-10H]                    ; 329F _ 8B. 45, F0
        mov     eax, dword [eax+0CH]                    ; 32A2 _ 8B. 40, 0C
        mov     edx, dword [ebp+0CH]                    ; 32A5 _ 8B. 55, 0C
        sub     edx, eax                                ; 32A8 _ 29. C2
        mov     eax, edx                                ; 32AA _ 89. D0
        mov     dword [ebp-30H], eax                    ; 32AC _ 89. 45, D0
        mov     eax, dword [ebp-10H]                    ; 32AF _ 8B. 45, F0
        mov     eax, dword [eax+10H]                    ; 32B2 _ 8B. 40, 10
        mov     edx, dword [ebp+10H]                    ; 32B5 _ 8B. 55, 10
        sub     edx, eax                                ; 32B8 _ 29. C2
        mov     eax, edx                                ; 32BA _ 89. D0
        mov     dword [ebp-2CH], eax                    ; 32BC _ 89. 45, D4
        mov     eax, dword [ebp-10H]                    ; 32BF _ 8B. 45, F0
        mov     eax, dword [eax+0CH]                    ; 32C2 _ 8B. 40, 0C
        mov     edx, dword [ebp+14H]                    ; 32C5 _ 8B. 55, 14
        sub     edx, eax                                ; 32C8 _ 29. C2
        mov     eax, edx                                ; 32CA _ 89. D0
        mov     dword [ebp-28H], eax                    ; 32CC _ 89. 45, D8
        mov     eax, dword [ebp-10H]                    ; 32CF _ 8B. 45, F0
        mov     eax, dword [eax+10H]                    ; 32D2 _ 8B. 40, 10
        mov     edx, dword [ebp+18H]                    ; 32D5 _ 8B. 55, 18
        sub     edx, eax                                ; 32D8 _ 29. C2
        mov     eax, edx                                ; 32DA _ 89. D0
        mov     dword [ebp-24H], eax                    ; 32DC _ 89. 45, DC
        cmp     dword [ebp-30H], 0                      ; 32DF _ 83. 7D, D0, 00
        jns     ?_171                                   ; 32E3 _ 79, 07
        mov     dword [ebp-30H], 0                      ; 32E5 _ C7. 45, D0, 00000000
?_171:  cmp     dword [ebp-2CH], 0                      ; 32EC _ 83. 7D, D4, 00
        jns     ?_172                                   ; 32F0 _ 79, 07
        mov     dword [ebp-2CH], 0                      ; 32F2 _ C7. 45, D4, 00000000
?_172:  mov     eax, dword [ebp-10H]                    ; 32F9 _ 8B. 45, F0
        mov     eax, dword [eax+4H]                     ; 32FC _ 8B. 40, 04
        cmp     dword [ebp-28H], eax                    ; 32FF _ 39. 45, D8
        jle     ?_173                                   ; 3302 _ 7E, 09
        mov     eax, dword [ebp-10H]                    ; 3304 _ 8B. 45, F0
        mov     eax, dword [eax+4H]                     ; 3307 _ 8B. 40, 04
        mov     dword [ebp-28H], eax                    ; 330A _ 89. 45, D8
?_173:  mov     eax, dword [ebp-10H]                    ; 330D _ 8B. 45, F0
        mov     eax, dword [eax+8H]                     ; 3310 _ 8B. 40, 08
        cmp     dword [ebp-24H], eax                    ; 3313 _ 39. 45, DC
        jle     ?_174                                   ; 3316 _ 7E, 09
        mov     eax, dword [ebp-10H]                    ; 3318 _ 8B. 45, F0
        mov     eax, dword [eax+8H]                     ; 331B _ 8B. 40, 08
        mov     dword [ebp-24H], eax                    ; 331E _ 89. 45, DC
?_174:  mov     eax, dword [ebp-2CH]                    ; 3321 _ 8B. 45, D4
        mov     dword [ebp-1CH], eax                    ; 3324 _ 89. 45, E4
        jmp     ?_179                                   ; 3327 _ EB, 7A

?_175:  mov     eax, dword [ebp-10H]                    ; 3329 _ 8B. 45, F0
        mov     edx, dword [eax+10H]                    ; 332C _ 8B. 50, 10
        mov     eax, dword [ebp-1CH]                    ; 332F _ 8B. 45, E4
        add     eax, edx                                ; 3332 _ 01. D0
        mov     dword [ebp-8H], eax                     ; 3334 _ 89. 45, F8
        mov     eax, dword [ebp-30H]                    ; 3337 _ 8B. 45, D0
        mov     dword [ebp-18H], eax                    ; 333A _ 89. 45, E8
        jmp     ?_178                                   ; 333D _ EB, 58

?_176:  mov     eax, dword [ebp-10H]                    ; 333F _ 8B. 45, F0
        mov     edx, dword [eax+0CH]                    ; 3342 _ 8B. 50, 0C
        mov     eax, dword [ebp-18H]                    ; 3345 _ 8B. 45, E8
        add     eax, edx                                ; 3348 _ 01. D0
        mov     dword [ebp-4H], eax                     ; 334A _ 89. 45, FC
        mov     eax, dword [ebp-10H]                    ; 334D _ 8B. 45, F0
        mov     eax, dword [eax+4H]                     ; 3350 _ 8B. 40, 04
        imul    eax, dword [ebp-1CH]                    ; 3353 _ 0F AF. 45, E4
        mov     edx, eax                                ; 3357 _ 89. C2
        mov     eax, dword [ebp-18H]                    ; 3359 _ 8B. 45, E8
        add     eax, edx                                ; 335C _ 01. D0
        mov     edx, eax                                ; 335E _ 89. C2
        mov     eax, dword [ebp-0CH]                    ; 3360 _ 8B. 45, F4
        add     eax, edx                                ; 3363 _ 01. D0
        movzx   eax, byte [eax]                         ; 3365 _ 0F B6. 00
        movzx   edx, al                                 ; 3368 _ 0F B6. D0
        mov     eax, dword [ebp-10H]                    ; 336B _ 8B. 45, F0
        mov     eax, dword [eax+14H]                    ; 336E _ 8B. 40, 14
        cmp     edx, eax                                ; 3371 _ 39. C2
        jz      ?_177                                   ; 3373 _ 74, 1E
        mov     eax, dword [ebp+8H]                     ; 3375 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 3378 _ 8B. 40, 08
        imul    eax, dword [ebp-8H]                     ; 337B _ 0F AF. 45, F8
        mov     edx, eax                                ; 337F _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 3381 _ 8B. 45, FC
        add     eax, edx                                ; 3384 _ 01. D0
        mov     edx, eax                                ; 3386 _ 89. C2
        mov     eax, dword [ebp-14H]                    ; 3388 _ 8B. 45, EC
        add     edx, eax                                ; 338B _ 01. C2
        movzx   eax, byte [ebp-31H]                     ; 338D _ 0F B6. 45, CF
        mov     byte [edx], al                          ; 3391 _ 88. 02
?_177:  add     dword [ebp-18H], 1                      ; 3393 _ 83. 45, E8, 01
?_178:  mov     eax, dword [ebp-18H]                    ; 3397 _ 8B. 45, E8
        cmp     eax, dword [ebp-28H]                    ; 339A _ 3B. 45, D8
        jl      ?_176                                   ; 339D _ 7C, A0
        add     dword [ebp-1CH], 1                      ; 339F _ 83. 45, E4, 01
?_179:  mov     eax, dword [ebp-1CH]                    ; 33A3 _ 8B. 45, E4
        cmp     eax, dword [ebp-24H]                    ; 33A6 _ 3B. 45, DC
        jl      ?_175                                   ; 33A9 _ 0F 8C, FFFFFF7A
        add     dword [ebp-20H], 1                      ; 33AF _ 83. 45, E0, 01
?_180:  mov     eax, dword [ebp+8H]                     ; 33B3 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 33B6 _ 8B. 40, 10
        cmp     dword [ebp-20H], eax                    ; 33B9 _ 39. 45, E0
        jle     ?_170                                   ; 33BC _ 0F 8E, FFFFFEB1
        nop                                             ; 33C2 _ 90
        leave                                           ; 33C3 _ C9
        ret                                             ; 33C4 _ C3
; sheet_refreshmap End of function

init_pit:; Function begin
        push    ebp                                     ; 33C5 _ 55
        mov     ebp, esp                                ; 33C6 _ 89. E5
        sub     esp, 24                                 ; 33C8 _ 83. EC, 18
        sub     esp, 8                                  ; 33CB _ 83. EC, 08
        push    52                                      ; 33CE _ 6A, 34
        push    67                                      ; 33D0 _ 6A, 43
        call    io_out8                                 ; 33D2 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 33D7 _ 83. C4, 10
        sub     esp, 8                                  ; 33DA _ 83. EC, 08
        push    156                                     ; 33DD _ 68, 0000009C
        push    64                                      ; 33E2 _ 6A, 40
        call    io_out8                                 ; 33E4 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 33E9 _ 83. C4, 10
        sub     esp, 8                                  ; 33EC _ 83. EC, 08
        push    46                                      ; 33EF _ 6A, 2E
        push    64                                      ; 33F1 _ 6A, 40
        call    io_out8                                 ; 33F3 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 33F8 _ 83. C4, 10
        mov     dword [timerctl], 0                     ; 33FB _ C7. 05, 000002A0(d), 00000000
        mov     dword [ebp-0CH], 0                      ; 3405 _ C7. 45, F4, 00000000
        jmp     ?_182                                   ; 340C _ EB, 26

?_181:  mov     eax, dword [ebp-0CH]                    ; 340E _ 8B. 45, F4
        shl     eax, 4                                  ; 3411 _ C1. E0, 04
        add     eax, ?_252                              ; 3414 _ 05, 000002A8(d)
        mov     dword [eax], 0                          ; 3419 _ C7. 00, 00000000
        mov     eax, dword [ebp-0CH]                    ; 341F _ 8B. 45, F4
        shl     eax, 4                                  ; 3422 _ C1. E0, 04
        add     eax, ?_253                              ; 3425 _ 05, 000002AC(d)
        mov     dword [eax], 0                          ; 342A _ C7. 00, 00000000
        add     dword [ebp-0CH], 1                      ; 3430 _ 83. 45, F4, 01
?_182:  cmp     dword [ebp-0CH], 499                    ; 3434 _ 81. 7D, F4, 000001F3
        jle     ?_181                                   ; 343B _ 7E, D1
        nop                                             ; 343D _ 90
        leave                                           ; 343E _ C9
        ret                                             ; 343F _ C3
; init_pit End of function

timer_alloc:; Function begin
        push    ebp                                     ; 3440 _ 55
        mov     ebp, esp                                ; 3441 _ 89. E5
        sub     esp, 16                                 ; 3443 _ 83. EC, 10
        mov     dword [ebp-4H], 0                       ; 3446 _ C7. 45, FC, 00000000
        jmp     ?_185                                   ; 344D _ EB, 36

?_183:  mov     eax, dword [ebp-4H]                     ; 344F _ 8B. 45, FC
        shl     eax, 4                                  ; 3452 _ C1. E0, 04
        add     eax, ?_252                              ; 3455 _ 05, 000002A8(d)
        mov     eax, dword [eax]                        ; 345A _ 8B. 00
        test    eax, eax                                ; 345C _ 85. C0
        jnz     ?_184                                   ; 345E _ 75, 21
        mov     eax, dword [ebp-4H]                     ; 3460 _ 8B. 45, FC
        shl     eax, 4                                  ; 3463 _ C1. E0, 04
        add     eax, ?_252                              ; 3466 _ 05, 000002A8(d)
        mov     dword [eax], 1                          ; 346B _ C7. 00, 00000001
        mov     eax, dword [ebp-4H]                     ; 3471 _ 8B. 45, FC
        shl     eax, 4                                  ; 3474 _ C1. E0, 04
        add     eax, timerctl                           ; 3477 _ 05, 000002A0(d)
        add     eax, 4                                  ; 347C _ 83. C0, 04
        jmp     ?_186                                   ; 347F _ EB, 12

?_184:  add     dword [ebp-4H], 1                       ; 3481 _ 83. 45, FC, 01
?_185:  cmp     dword [ebp-4H], 499                     ; 3485 _ 81. 7D, FC, 000001F3
        jle     ?_183                                   ; 348C _ 7E, C1
        mov     eax, 0                                  ; 348E _ B8, 00000000
?_186:  leave                                           ; 3493 _ C9
        ret                                             ; 3494 _ C3
; timer_alloc End of function

timer_free:; Function begin
        push    ebp                                     ; 3495 _ 55
        mov     ebp, esp                                ; 3496 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 3498 _ 8B. 45, 08
        mov     dword [eax+4H], 0                       ; 349B _ C7. 40, 04, 00000000
        nop                                             ; 34A2 _ 90
        pop     ebp                                     ; 34A3 _ 5D
        ret                                             ; 34A4 _ C3
; timer_free End of function

timer_init:; Function begin
        push    ebp                                     ; 34A5 _ 55
        mov     ebp, esp                                ; 34A6 _ 89. E5
        sub     esp, 4                                  ; 34A8 _ 83. EC, 04
        mov     eax, dword [ebp+10H]                    ; 34AB _ 8B. 45, 10
        mov     byte [ebp-4H], al                       ; 34AE _ 88. 45, FC
        mov     eax, dword [ebp+8H]                     ; 34B1 _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 34B4 _ 8B. 55, 0C
        mov     dword [eax+8H], edx                     ; 34B7 _ 89. 50, 08
        mov     eax, dword [ebp+8H]                     ; 34BA _ 8B. 45, 08
        movzx   edx, byte [ebp-4H]                      ; 34BD _ 0F B6. 55, FC
        mov     byte [eax+0CH], dl                      ; 34C1 _ 88. 50, 0C
        nop                                             ; 34C4 _ 90
        leave                                           ; 34C5 _ C9
        ret                                             ; 34C6 _ C3
; timer_init End of function

timer_setTime:; Function begin
        push    ebp                                     ; 34C7 _ 55
        mov     ebp, esp                                ; 34C8 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 34CA _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 34CD _ 8B. 55, 0C
        mov     dword [eax], edx                        ; 34D0 _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 34D2 _ 8B. 45, 08
        mov     dword [eax+4H], 2                       ; 34D5 _ C7. 40, 04, 00000002
        nop                                             ; 34DC _ 90
        pop     ebp                                     ; 34DD _ 5D
        ret                                             ; 34DE _ C3
; timer_setTime End of function

timer_settime:; Function begin
        push    ebp                                     ; 34DF _ 55
        mov     ebp, esp                                ; 34E0 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 34E2 _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 34E5 _ 8B. 55, 0C
        mov     dword [eax], edx                        ; 34E8 _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 34EA _ 8B. 45, 08
        mov     dword [eax+4H], 2                       ; 34ED _ C7. 40, 04, 00000002
        nop                                             ; 34F4 _ 90
        pop     ebp                                     ; 34F5 _ 5D
        ret                                             ; 34F6 _ C3
; timer_settime End of function

getTimerController:; Function begin
        push    ebp                                     ; 34F7 _ 55
        mov     ebp, esp                                ; 34F8 _ 89. E5
        mov     eax, timerctl                           ; 34FA _ B8, 000002A0(d)
        pop     ebp                                     ; 34FF _ 5D
        ret                                             ; 3500 _ C3
; getTimerController End of function

intHandlerForTimer:; Function begin
        push    ebp                                     ; 3501 _ 55
        mov     ebp, esp                                ; 3502 _ 89. E5
        push    ebx                                     ; 3504 _ 53
        sub     esp, 20                                 ; 3505 _ 83. EC, 14
        sub     esp, 8                                  ; 3508 _ 83. EC, 08
        push    32                                      ; 350B _ 6A, 20
        push    32                                      ; 350D _ 6A, 20
        call    io_out8                                 ; 350F _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 3514 _ 83. C4, 10
        mov     eax, dword [timerctl]                   ; 3517 _ A1, 000002A0(d)
        add     eax, 1                                  ; 351C _ 83. C0, 01
        mov     dword [timerctl], eax                   ; 351F _ A3, 000002A0(d)
        mov     dword [ebp-10H], 0                      ; 3524 _ C7. 45, F0, 00000000
        mov     dword [ebp-0CH], 0                      ; 352B _ C7. 45, F4, 00000000
        jmp     ?_190                                   ; 3532 _ E9, 000000AD

?_187:  mov     eax, dword [ebp-0CH]                    ; 3537 _ 8B. 45, F4
        shl     eax, 4                                  ; 353A _ C1. E0, 04
        add     eax, ?_252                              ; 353D _ 05, 000002A8(d)
        mov     eax, dword [eax]                        ; 3542 _ 8B. 00
        cmp     eax, 2                                  ; 3544 _ 83. F8, 02
        jne     ?_188                                   ; 3547 _ 0F 85, 00000088
        mov     eax, dword [ebp-0CH]                    ; 354D _ 8B. 45, F4
        shl     eax, 4                                  ; 3550 _ C1. E0, 04
        add     eax, ?_251                              ; 3553 _ 05, 000002A4(d)
        mov     eax, dword [eax]                        ; 3558 _ 8B. 00
        lea     edx, [eax-1H]                           ; 355A _ 8D. 50, FF
        mov     eax, dword [ebp-0CH]                    ; 355D _ 8B. 45, F4
        shl     eax, 4                                  ; 3560 _ C1. E0, 04
        add     eax, ?_251                              ; 3563 _ 05, 000002A4(d)
        mov     dword [eax], edx                        ; 3568 _ 89. 10
        mov     eax, dword [ebp-0CH]                    ; 356A _ 8B. 45, F4
        shl     eax, 4                                  ; 356D _ C1. E0, 04
        add     eax, ?_251                              ; 3570 _ 05, 000002A4(d)
        mov     eax, dword [eax]                        ; 3575 _ 8B. 00
        test    eax, eax                                ; 3577 _ 85. C0
        jnz     ?_188                                   ; 3579 _ 75, 5A
        mov     eax, dword [ebp-0CH]                    ; 357B _ 8B. 45, F4
        shl     eax, 4                                  ; 357E _ C1. E0, 04
        add     eax, ?_252                              ; 3581 _ 05, 000002A8(d)
        mov     dword [eax], 1                          ; 3586 _ C7. 00, 00000001
        mov     eax, dword [ebp-0CH]                    ; 358C _ 8B. 45, F4
        shl     eax, 4                                  ; 358F _ C1. E0, 04
        add     eax, ?_254                              ; 3592 _ 05, 000002B0(d)
        movzx   eax, byte [eax]                         ; 3597 _ 0F B6. 00
        movzx   edx, al                                 ; 359A _ 0F B6. D0
        mov     eax, dword [ebp-0CH]                    ; 359D _ 8B. 45, F4
        shl     eax, 4                                  ; 35A0 _ C1. E0, 04
        add     eax, ?_253                              ; 35A3 _ 05, 000002AC(d)
        mov     eax, dword [eax]                        ; 35A8 _ 8B. 00
        sub     esp, 8                                  ; 35AA _ 83. EC, 08
        push    edx                                     ; 35AD _ 52
        push    eax                                     ; 35AE _ 50
        call    fifo8_put                               ; 35AF _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 35B4 _ 83. C4, 10
        mov     eax, dword [ebp-0CH]                    ; 35B7 _ 8B. 45, F4
        shl     eax, 4                                  ; 35BA _ C1. E0, 04
        add     eax, timerctl                           ; 35BD _ 05, 000002A0(d)
        lea     ebx, [eax+4H]                           ; 35C2 _ 8D. 58, 04
        call    getTaskTimer                            ; 35C5 _ E8, FFFFFFFC(rel)
        cmp     ebx, eax                                ; 35CA _ 39. C3
        jnz     ?_188                                   ; 35CC _ 75, 07
        mov     dword [ebp-10H], 1                      ; 35CE _ C7. 45, F0, 00000001
?_188:  cmp     dword [ebp-10H], 1                      ; 35D5 _ 83. 7D, F0, 01
        jnz     ?_189                                   ; 35D9 _ 75, 05
        call    task_switch                             ; 35DB _ E8, FFFFFFFC(rel)
?_189:  add     dword [ebp-0CH], 1                      ; 35E0 _ 83. 45, F4, 01
?_190:  cmp     dword [ebp-0CH], 499                    ; 35E4 _ 81. 7D, F4, 000001F3
        jle     ?_187                                   ; 35EB _ 0F 8E, FFFFFF46
        nop                                             ; 35F1 _ 90
        mov     ebx, dword [ebp-4H]                     ; 35F2 _ 8B. 5D, FC
        leave                                           ; 35F5 _ C9
        ret                                             ; 35F6 _ C3
; intHandlerForTimer End of function

fifo8_init:; Function begin
        push    ebp                                     ; 35F7 _ 55
        mov     ebp, esp                                ; 35F8 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 35FA _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 35FD _ 8B. 55, 0C
        mov     dword [eax+0CH], edx                    ; 3600 _ 89. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 3603 _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 3606 _ 8B. 55, 10
        mov     dword [eax], edx                        ; 3609 _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 360B _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 360E _ 8B. 55, 0C
        mov     dword [eax+10H], edx                    ; 3611 _ 89. 50, 10
        mov     eax, dword [ebp+8H]                     ; 3614 _ 8B. 45, 08
        mov     dword [eax+4H], 0                       ; 3617 _ C7. 40, 04, 00000000
        mov     eax, dword [ebp+8H]                     ; 361E _ 8B. 45, 08
        mov     dword [eax+8H], 0                       ; 3621 _ C7. 40, 08, 00000000
        mov     eax, dword [ebp+8H]                     ; 3628 _ 8B. 45, 08
        mov     dword [eax+14H], 0                      ; 362B _ C7. 40, 14, 00000000
        mov     eax, dword [ebp+8H]                     ; 3632 _ 8B. 45, 08
        mov     edx, dword [ebp+14H]                    ; 3635 _ 8B. 55, 14
        mov     dword [eax+18H], edx                    ; 3638 _ 89. 50, 18
        nop                                             ; 363B _ 90
        pop     ebp                                     ; 363C _ 5D
        ret                                             ; 363D _ C3
; fifo8_init End of function

fifo8_put:; Function begin
        push    ebp                                     ; 363E _ 55
        mov     ebp, esp                                ; 363F _ 89. E5
        sub     esp, 24                                 ; 3641 _ 83. EC, 18
        mov     eax, dword [ebp+0CH]                    ; 3644 _ 8B. 45, 0C
        mov     byte [ebp-0CH], al                      ; 3647 _ 88. 45, F4
        cmp     dword [ebp+8H], 0                       ; 364A _ 83. 7D, 08, 00
        jnz     ?_191                                   ; 364E _ 75, 0A
        mov     eax, 4294967295                         ; 3650 _ B8, FFFFFFFF
        jmp     ?_195                                   ; 3655 _ E9, 000000A0

?_191:  mov     eax, dword [ebp+8H]                     ; 365A _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 365D _ 8B. 40, 10
        test    eax, eax                                ; 3660 _ 85. C0
        jnz     ?_192                                   ; 3662 _ 75, 18
        mov     eax, dword [ebp+8H]                     ; 3664 _ 8B. 45, 08
        mov     eax, dword [eax+14H]                    ; 3667 _ 8B. 40, 14
        or      eax, 01H                                ; 366A _ 83. C8, 01
        mov     edx, eax                                ; 366D _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 366F _ 8B. 45, 08
        mov     dword [eax+14H], edx                    ; 3672 _ 89. 50, 14
        mov     eax, 4294967295                         ; 3675 _ B8, FFFFFFFF
        jmp     ?_195                                   ; 367A _ EB, 7E

?_192:  mov     eax, dword [ebp+8H]                     ; 367C _ 8B. 45, 08
        mov     edx, dword [eax]                        ; 367F _ 8B. 10
        mov     eax, dword [ebp+8H]                     ; 3681 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 3684 _ 8B. 40, 08
        add     edx, eax                                ; 3687 _ 01. C2
        movzx   eax, byte [ebp-0CH]                     ; 3689 _ 0F B6. 45, F4
        mov     byte [edx], al                          ; 368D _ 88. 02
        mov     eax, dword [ebp+8H]                     ; 368F _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 3692 _ 8B. 40, 08
        lea     edx, [eax+1H]                           ; 3695 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 3698 _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 369B _ 89. 50, 08
        mov     eax, dword [ebp+8H]                     ; 369E _ 8B. 45, 08
        mov     edx, dword [eax+8H]                     ; 36A1 _ 8B. 50, 08
        mov     eax, dword [ebp+8H]                     ; 36A4 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 36A7 _ 8B. 40, 0C
        cmp     edx, eax                                ; 36AA _ 39. C2
        jl      ?_193                                   ; 36AC _ 7C, 0A
        mov     eax, dword [ebp+8H]                     ; 36AE _ 8B. 45, 08
        mov     dword [eax+8H], 0                       ; 36B1 _ C7. 40, 08, 00000000
?_193:  mov     eax, dword [ebp+8H]                     ; 36B8 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 36BB _ 8B. 40, 10
        lea     edx, [eax-1H]                           ; 36BE _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 36C1 _ 8B. 45, 08
        mov     dword [eax+10H], edx                    ; 36C4 _ 89. 50, 10
        mov     eax, dword [ebp+8H]                     ; 36C7 _ 8B. 45, 08
        mov     eax, dword [eax+18H]                    ; 36CA _ 8B. 40, 18
        test    eax, eax                                ; 36CD _ 85. C0
        jz      ?_194                                   ; 36CF _ 74, 24
        mov     eax, dword [ebp+8H]                     ; 36D1 _ 8B. 45, 08
        mov     eax, dword [eax+18H]                    ; 36D4 _ 8B. 40, 18
        mov     eax, dword [eax+4H]                     ; 36D7 _ 8B. 40, 04
        cmp     eax, 2                                  ; 36DA _ 83. F8, 02
        jz      ?_194                                   ; 36DD _ 74, 16
        mov     eax, dword [ebp+8H]                     ; 36DF _ 8B. 45, 08
        mov     eax, dword [eax+18H]                    ; 36E2 _ 8B. 40, 18
        sub     esp, 4                                  ; 36E5 _ 83. EC, 04
        push    0                                       ; 36E8 _ 6A, 00
        push    -1                                      ; 36EA _ 6A, FF
        push    eax                                     ; 36EC _ 50
        call    task_run                                ; 36ED _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 36F2 _ 83. C4, 10
?_194:  mov     eax, 1                                  ; 36F5 _ B8, 00000001
?_195:  leave                                           ; 36FA _ C9
        ret                                             ; 36FB _ C3
; fifo8_put End of function

fifo8_get:; Function begin
        push    ebp                                     ; 36FC _ 55
        mov     ebp, esp                                ; 36FD _ 89. E5
        sub     esp, 16                                 ; 36FF _ 83. EC, 10
        mov     eax, dword [ebp+8H]                     ; 3702 _ 8B. 45, 08
        mov     edx, dword [eax+10H]                    ; 3705 _ 8B. 50, 10
        mov     eax, dword [ebp+8H]                     ; 3708 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 370B _ 8B. 40, 0C
        cmp     edx, eax                                ; 370E _ 39. C2
        jnz     ?_196                                   ; 3710 _ 75, 07
        mov     eax, 4294967295                         ; 3712 _ B8, FFFFFFFF
        jmp     ?_198                                   ; 3717 _ EB, 51

?_196:  mov     eax, dword [ebp+8H]                     ; 3719 _ 8B. 45, 08
        mov     edx, dword [eax]                        ; 371C _ 8B. 10
        mov     eax, dword [ebp+8H]                     ; 371E _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 3721 _ 8B. 40, 04
        add     eax, edx                                ; 3724 _ 01. D0
        movzx   eax, byte [eax]                         ; 3726 _ 0F B6. 00
        movzx   eax, al                                 ; 3729 _ 0F B6. C0
        mov     dword [ebp-4H], eax                     ; 372C _ 89. 45, FC
        mov     eax, dword [ebp+8H]                     ; 372F _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 3732 _ 8B. 40, 04
        lea     edx, [eax+1H]                           ; 3735 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 3738 _ 8B. 45, 08
        mov     dword [eax+4H], edx                     ; 373B _ 89. 50, 04
        mov     eax, dword [ebp+8H]                     ; 373E _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 3741 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 3744 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 3747 _ 8B. 40, 0C
        cmp     edx, eax                                ; 374A _ 39. C2
        jl      ?_197                                   ; 374C _ 7C, 0A
        mov     eax, dword [ebp+8H]                     ; 374E _ 8B. 45, 08
        mov     dword [eax+4H], 0                       ; 3751 _ C7. 40, 04, 00000000
?_197:  mov     eax, dword [ebp+8H]                     ; 3758 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 375B _ 8B. 40, 10
        lea     edx, [eax+1H]                           ; 375E _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 3761 _ 8B. 45, 08
        mov     dword [eax+10H], edx                    ; 3764 _ 89. 50, 10
        mov     eax, dword [ebp-4H]                     ; 3767 _ 8B. 45, FC
?_198:  leave                                           ; 376A _ C9
        ret                                             ; 376B _ C3
; fifo8_get End of function

fifo8_status:; Function begin
        push    ebp                                     ; 376C _ 55
        mov     ebp, esp                                ; 376D _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 376F _ 8B. 45, 08
        mov     edx, dword [eax+0CH]                    ; 3772 _ 8B. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 3775 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 3778 _ 8B. 40, 10
        sub     edx, eax                                ; 377B _ 29. C2
        mov     eax, edx                                ; 377D _ 89. D0
        pop     ebp                                     ; 377F _ 5D
        ret                                             ; 3780 _ C3
; fifo8_status End of function

set_segmdesc:; Function begin
        push    ebp                                     ; 3781 _ 55
        mov     ebp, esp                                ; 3782 _ 89. E5
        cmp     dword [ebp+0CH], 1048575                ; 3784 _ 81. 7D, 0C, 000FFFFF
        jbe     ?_199                                   ; 378B _ 76, 10
        or      dword [ebp+14H], 8000H                  ; 378D _ 81. 4D, 14, 00008000
        mov     eax, dword [ebp+0CH]                    ; 3794 _ 8B. 45, 0C
        shr     eax, 12                                 ; 3797 _ C1. E8, 0C
        mov     dword [ebp+0CH], eax                    ; 379A _ 89. 45, 0C
?_199:  mov     eax, dword [ebp+0CH]                    ; 379D _ 8B. 45, 0C
        mov     edx, eax                                ; 37A0 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 37A2 _ 8B. 45, 08
        mov     word [eax], dx                          ; 37A5 _ 66: 89. 10
        mov     eax, dword [ebp+10H]                    ; 37A8 _ 8B. 45, 10
        mov     edx, eax                                ; 37AB _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 37AD _ 8B. 45, 08
        mov     word [eax+2H], dx                       ; 37B0 _ 66: 89. 50, 02
        mov     eax, dword [ebp+10H]                    ; 37B4 _ 8B. 45, 10
        sar     eax, 16                                 ; 37B7 _ C1. F8, 10
        mov     edx, eax                                ; 37BA _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 37BC _ 8B. 45, 08
        mov     byte [eax+4H], dl                       ; 37BF _ 88. 50, 04
        mov     eax, dword [ebp+14H]                    ; 37C2 _ 8B. 45, 14
        mov     edx, eax                                ; 37C5 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 37C7 _ 8B. 45, 08
        mov     byte [eax+5H], dl                       ; 37CA _ 88. 50, 05
        mov     eax, dword [ebp+0CH]                    ; 37CD _ 8B. 45, 0C
        shr     eax, 16                                 ; 37D0 _ C1. E8, 10
        and     eax, 0FH                                ; 37D3 _ 83. E0, 0F
        mov     edx, eax                                ; 37D6 _ 89. C2
        mov     eax, dword [ebp+14H]                    ; 37D8 _ 8B. 45, 14
        sar     eax, 8                                  ; 37DB _ C1. F8, 08
        and     eax, 0FFFFFFF0H                         ; 37DE _ 83. E0, F0
        or      eax, edx                                ; 37E1 _ 09. D0
        mov     edx, eax                                ; 37E3 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 37E5 _ 8B. 45, 08
        mov     byte [eax+6H], dl                       ; 37E8 _ 88. 50, 06
        mov     eax, dword [ebp+10H]                    ; 37EB _ 8B. 45, 10
        shr     eax, 24                                 ; 37EE _ C1. E8, 18
        mov     edx, eax                                ; 37F1 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 37F3 _ 8B. 45, 08
        mov     byte [eax+7H], dl                       ; 37F6 _ 88. 50, 07
        nop                                             ; 37F9 _ 90
        pop     ebp                                     ; 37FA _ 5D
        ret                                             ; 37FB _ C3
; set_segmdesc End of function

getTaskTimer:; Function begin
        push    ebp                                     ; 37FC _ 55
        mov     ebp, esp                                ; 37FD _ 89. E5
        mov     eax, dword [task_timer]                 ; 37FF _ A1, 000021E4(d)
        pop     ebp                                     ; 3804 _ 5D
        ret                                             ; 3805 _ C3
; getTaskTimer End of function

init_task_level:; Function begin
        push    ebp                                     ; 3806 _ 55
        mov     ebp, esp                                ; 3807 _ 89. E5
        sub     esp, 16                                 ; 3809 _ 83. EC, 10
        mov     edx, dword [taskctl]                    ; 380C _ 8B. 15, 000021E8(d)
        mov     eax, dword [ebp+8H]                     ; 3812 _ 8B. 45, 08
        imul    eax, eax, 28                            ; 3815 _ 6B. C0, 1C
        add     eax, edx                                ; 3818 _ 01. D0
        add     eax, 8                                  ; 381A _ 83. C0, 08
        mov     dword [eax], 0                          ; 381D _ C7. 00, 00000000
        mov     edx, dword [taskctl]                    ; 3823 _ 8B. 15, 000021E8(d)
        mov     eax, dword [ebp+8H]                     ; 3829 _ 8B. 45, 08
        imul    eax, eax, 28                            ; 382C _ 6B. C0, 1C
        add     eax, edx                                ; 382F _ 01. D0
        add     eax, 12                                 ; 3831 _ 83. C0, 0C
        mov     dword [eax], 0                          ; 3834 _ C7. 00, 00000000
        mov     dword [ebp-4H], 0                       ; 383A _ C7. 45, FC, 00000000
        jmp     ?_201                                   ; 3841 _ EB, 1A

?_200:  mov     eax, dword [taskctl]                    ; 3843 _ A1, 000021E8(d)
        mov     edx, dword [ebp-4H]                     ; 3848 _ 8B. 55, FC
        shl     edx, 5                                  ; 384B _ C1. E2, 05
        add     eax, edx                                ; 384E _ 01. D0
        add     eax, 16                                 ; 3850 _ 83. C0, 10
        mov     dword [eax], 0                          ; 3853 _ C7. 00, 00000000
        add     dword [ebp-4H], 1                       ; 3859 _ 83. 45, FC, 01
?_201:  cmp     dword [ebp-4H], 4                       ; 385D _ 83. 7D, FC, 04
        jle     ?_200                                   ; 3861 _ 7E, E0
        nop                                             ; 3863 _ 90
        leave                                           ; 3864 _ C9
        ret                                             ; 3865 _ C3
; init_task_level End of function

task_init:; Function begin
        push    ebp                                     ; 3866 _ 55
        mov     ebp, esp                                ; 3867 _ 89. E5
        sub     esp, 24                                 ; 3869 _ 83. EC, 18
        call    get_addr_gdt                            ; 386C _ E8, FFFFFFFC(rel)
        mov     dword [ebp-10H], eax                    ; 3871 _ 89. 45, F0
        sub     esp, 8                                  ; 3874 _ 83. EC, 08
        push    692                                     ; 3877 _ 68, 000002B4
        push    dword [ebp+8H]                          ; 387C _ FF. 75, 08
        call    memman_alloc_4K                         ; 387F _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 3884 _ 83. C4, 10
        mov     dword [taskctl], eax                    ; 3887 _ A3, 000021E8(d)
        mov     dword [ebp-14H], 0                      ; 388C _ C7. 45, EC, 00000000
        jmp     ?_203                                   ; 3893 _ EB, 73

?_202:  mov     edx, dword [taskctl]                    ; 3895 _ 8B. 15, 000021E8(d)
        mov     eax, dword [ebp-14H]                    ; 389B _ 8B. 45, EC
        imul    eax, eax, 124                           ; 389E _ 6B. C0, 7C
        add     eax, edx                                ; 38A1 _ 01. D0
        add     eax, 96                                 ; 38A3 _ 83. C0, 60
        mov     dword [eax], 0                          ; 38A6 _ C7. 00, 00000000
        mov     eax, dword [ebp-14H]                    ; 38AC _ 8B. 45, EC
        add     eax, 7                                  ; 38AF _ 83. C0, 07
        mov     ecx, dword [taskctl]                    ; 38B2 _ 8B. 0D, 000021E8(d)
        lea     edx, [eax*8]                            ; 38B8 _ 8D. 14 C5, 00000000
        mov     eax, dword [ebp-14H]                    ; 38BF _ 8B. 45, EC
        imul    eax, eax, 124                           ; 38C2 _ 6B. C0, 7C
        add     eax, ecx                                ; 38C5 _ 01. C8
        add     eax, 92                                 ; 38C7 _ 83. C0, 5C
        mov     dword [eax], edx                        ; 38CA _ 89. 10
        mov     eax, dword [taskctl]                    ; 38CC _ A1, 000021E8(d)
        mov     edx, dword [ebp-14H]                    ; 38D1 _ 8B. 55, EC
        imul    edx, edx, 124                           ; 38D4 _ 6B. D2, 7C
        add     edx, 96                                 ; 38D7 _ 83. C2, 60
        add     eax, edx                                ; 38DA _ 01. D0
        add     eax, 16                                 ; 38DC _ 83. C0, 10
        mov     ecx, eax                                ; 38DF _ 89. C1
        mov     eax, dword [ebp-14H]                    ; 38E1 _ 8B. 45, EC
        add     eax, 7                                  ; 38E4 _ 83. C0, 07
        lea     edx, [eax*8]                            ; 38E7 _ 8D. 14 C5, 00000000
        mov     eax, dword [ebp-10H]                    ; 38EE _ 8B. 45, F0
        add     eax, edx                                ; 38F1 _ 01. D0
        push    137                                     ; 38F3 _ 68, 00000089
        push    ecx                                     ; 38F8 _ 51
        push    103                                     ; 38F9 _ 6A, 67
        push    eax                                     ; 38FB _ 50
        call    set_segmdesc                            ; 38FC _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 3901 _ 83. C4, 10
        add     dword [ebp-14H], 1                      ; 3904 _ 83. 45, EC, 01
?_203:  cmp     dword [ebp-14H], 4                      ; 3908 _ 83. 7D, EC, 04
        jle     ?_202                                   ; 390C _ 7E, 87
        call    task_alloc                              ; 390E _ E8, FFFFFFFC(rel)
        mov     dword [ebp-0CH], eax                    ; 3913 _ 89. 45, F4
        mov     eax, dword [ebp-0CH]                    ; 3916 _ 8B. 45, F4
        mov     dword [eax+4H], 2                       ; 3919 _ C7. 40, 04, 00000002
        mov     eax, dword [ebp-0CH]                    ; 3920 _ 8B. 45, F4
        mov     dword [eax+8H], 10                      ; 3923 _ C7. 40, 08, 0000000A
        mov     eax, dword [ebp-0CH]                    ; 392A _ 8B. 45, F4
        mov     dword [eax+0CH], 0                      ; 392D _ C7. 40, 0C, 00000000
        sub     esp, 12                                 ; 3934 _ 83. EC, 0C
        push    dword [ebp-0CH]                         ; 3937 _ FF. 75, F4
        call    task_add                                ; 393A _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 393F _ 83. C4, 10
        call    task_switchsub                          ; 3942 _ E8, FFFFFFFC(rel)
        mov     eax, dword [ebp-0CH]                    ; 3947 _ 8B. 45, F4
        mov     eax, dword [eax]                        ; 394A _ 8B. 00
        sub     esp, 12                                 ; 394C _ 83. EC, 0C
        push    eax                                     ; 394F _ 50
        call    load_tr                                 ; 3950 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 3955 _ 83. C4, 10
        call    timer_alloc                             ; 3958 _ E8, FFFFFFFC(rel)
        mov     dword [task_timer], eax                 ; 395D _ A3, 000021E4(d)
        mov     eax, dword [ebp-0CH]                    ; 3962 _ 8B. 45, F4
        mov     eax, dword [eax+8H]                     ; 3965 _ 8B. 40, 08
        mov     edx, eax                                ; 3968 _ 89. C2
        mov     eax, dword [task_timer]                 ; 396A _ A1, 000021E4(d)
        sub     esp, 8                                  ; 396F _ 83. EC, 08
        push    edx                                     ; 3972 _ 52
        push    eax                                     ; 3973 _ 50
        call    timer_setTime                           ; 3974 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 3979 _ 83. C4, 10
        mov     eax, dword [ebp-0CH]                    ; 397C _ 8B. 45, F4
        leave                                           ; 397F _ C9
        ret                                             ; 3980 _ C3
; task_init End of function

task_alloc:; Function begin
        push    ebp                                     ; 3981 _ 55
        mov     ebp, esp                                ; 3982 _ 89. E5
        sub     esp, 16                                 ; 3984 _ 83. EC, 10
        mov     dword [ebp-8H], 0                       ; 3987 _ C7. 45, F8, 00000000
        jmp     ?_206                                   ; 398E _ E9, 000000E1

?_204:  mov     edx, dword [taskctl]                    ; 3993 _ 8B. 15, 000021E8(d)
        mov     eax, dword [ebp-8H]                     ; 3999 _ 8B. 45, F8
        imul    eax, eax, 124                           ; 399C _ 6B. C0, 7C
        add     eax, edx                                ; 399F _ 01. D0
        add     eax, 96                                 ; 39A1 _ 83. C0, 60
        mov     eax, dword [eax]                        ; 39A4 _ 8B. 00
        test    eax, eax                                ; 39A6 _ 85. C0
        jne     ?_205                                   ; 39A8 _ 0F 85, 000000C2
        mov     eax, dword [taskctl]                    ; 39AE _ A1, 000021E8(d)
        mov     edx, dword [ebp-8H]                     ; 39B3 _ 8B. 55, F8
        imul    edx, edx, 124                           ; 39B6 _ 6B. D2, 7C
        add     edx, 80                                 ; 39B9 _ 83. C2, 50
        add     eax, edx                                ; 39BC _ 01. D0
        add     eax, 12                                 ; 39BE _ 83. C0, 0C
        mov     dword [ebp-4H], eax                     ; 39C1 _ 89. 45, FC
        mov     eax, dword [ebp-4H]                     ; 39C4 _ 8B. 45, FC
        mov     dword [eax+4H], 1                       ; 39C7 _ C7. 40, 04, 00000001
        mov     eax, dword [ebp-4H]                     ; 39CE _ 8B. 45, FC
        mov     dword [eax+38H], 514                    ; 39D1 _ C7. 40, 38, 00000202
        mov     eax, dword [ebp-4H]                     ; 39D8 _ 8B. 45, FC
        mov     dword [eax+3CH], 0                      ; 39DB _ C7. 40, 3C, 00000000
        mov     eax, dword [ebp-4H]                     ; 39E2 _ 8B. 45, FC
        mov     dword [eax+40H], 0                      ; 39E5 _ C7. 40, 40, 00000000
        mov     eax, dword [ebp-4H]                     ; 39EC _ 8B. 45, FC
        mov     dword [eax+44H], 0                      ; 39EF _ C7. 40, 44, 00000000
        mov     eax, dword [ebp-4H]                     ; 39F6 _ 8B. 45, FC
        mov     dword [eax+48H], 0                      ; 39F9 _ C7. 40, 48, 00000000
        mov     eax, dword [ebp-4H]                     ; 3A00 _ 8B. 45, FC
        mov     dword [eax+50H], 0                      ; 3A03 _ C7. 40, 50, 00000000
        mov     eax, dword [ebp-8H]                     ; 3A0A _ 8B. 45, F8
        add     eax, 1                                  ; 3A0D _ 83. C0, 01
        shl     eax, 9                                  ; 3A10 _ C1. E0, 09
        mov     edx, eax                                ; 3A13 _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 3A15 _ 8B. 45, FC
        mov     dword [eax+4CH], edx                    ; 3A18 _ 89. 50, 4C
        mov     eax, dword [ebp-4H]                     ; 3A1B _ 8B. 45, FC
        mov     dword [eax+54H], 0                      ; 3A1E _ C7. 40, 54, 00000000
        mov     eax, dword [ebp-4H]                     ; 3A25 _ 8B. 45, FC
        mov     dword [eax+58H], 0                      ; 3A28 _ C7. 40, 58, 00000000
        mov     eax, dword [ebp-4H]                     ; 3A2F _ 8B. 45, FC
        mov     dword [eax+5CH], 0                      ; 3A32 _ C7. 40, 5C, 00000000
        mov     eax, dword [ebp-4H]                     ; 3A39 _ 8B. 45, FC
        mov     dword [eax+68H], 0                      ; 3A3C _ C7. 40, 68, 00000000
        mov     eax, dword [ebp-4H]                     ; 3A43 _ 8B. 45, FC
        mov     dword [eax+6CH], 0                      ; 3A46 _ C7. 40, 6C, 00000000
        mov     eax, dword [ebp-4H]                     ; 3A4D _ 8B. 45, FC
        mov     dword [eax+70H], 0                      ; 3A50 _ C7. 40, 70, 00000000
        mov     eax, dword [ebp-4H]                     ; 3A57 _ 8B. 45, FC
        mov     dword [eax+74H], 0                      ; 3A5A _ C7. 40, 74, 00000000
        mov     eax, dword [ebp-4H]                     ; 3A61 _ 8B. 45, FC
        mov     dword [eax+78H], 1073741824             ; 3A64 _ C7. 40, 78, 40000000
        mov     eax, dword [ebp-4H]                     ; 3A6B _ 8B. 45, FC
        jmp     ?_207                                   ; 3A6E _ EB, 13

?_205:  add     dword [ebp-8H], 1                       ; 3A70 _ 83. 45, F8, 01
?_206:  cmp     dword [ebp-8H], 4                       ; 3A74 _ 83. 7D, F8, 04
        jle     ?_204                                   ; 3A78 _ 0F 8E, FFFFFF15
        mov     eax, 0                                  ; 3A7E _ B8, 00000000
?_207:  leave                                           ; 3A83 _ C9
        ret                                             ; 3A84 _ C3
; task_alloc End of function

task_run:; Function begin
        push    ebp                                     ; 3A85 _ 55
        mov     ebp, esp                                ; 3A86 _ 89. E5
        sub     esp, 8                                  ; 3A88 _ 83. EC, 08
        cmp     dword [ebp+0CH], 0                      ; 3A8B _ 83. 7D, 0C, 00
        jns     ?_208                                   ; 3A8F _ 79, 09
        mov     eax, dword [ebp+8H]                     ; 3A91 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 3A94 _ 8B. 40, 0C
        mov     dword [ebp+0CH], eax                    ; 3A97 _ 89. 45, 0C
?_208:  cmp     dword [ebp+10H], 0                      ; 3A9A _ 83. 7D, 10, 00
        jle     ?_209                                   ; 3A9E _ 7E, 09
        mov     eax, dword [ebp+8H]                     ; 3AA0 _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 3AA3 _ 8B. 55, 10
        mov     dword [eax+8H], edx                     ; 3AA6 _ 89. 50, 08
?_209:  mov     eax, dword [ebp+8H]                     ; 3AA9 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 3AAC _ 8B. 40, 04
        cmp     eax, 2                                  ; 3AAF _ 83. F8, 02
        jnz     ?_210                                   ; 3AB2 _ 75, 19
        mov     eax, dword [ebp+8H]                     ; 3AB4 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 3AB7 _ 8B. 40, 0C
        cmp     dword [ebp+0CH], eax                    ; 3ABA _ 39. 45, 0C
        jz      ?_210                                   ; 3ABD _ 74, 0E
        sub     esp, 12                                 ; 3ABF _ 83. EC, 0C
        push    dword [ebp+8H]                          ; 3AC2 _ FF. 75, 08
        call    task_remove                             ; 3AC5 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 3ACA _ 83. C4, 10
?_210:  mov     eax, dword [ebp+8H]                     ; 3ACD _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 3AD0 _ 8B. 40, 04
        cmp     eax, 2                                  ; 3AD3 _ 83. F8, 02
        jz      ?_211                                   ; 3AD6 _ 74, 17
        mov     eax, dword [ebp+8H]                     ; 3AD8 _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 3ADB _ 8B. 55, 0C
        mov     dword [eax+0CH], edx                    ; 3ADE _ 89. 50, 0C
        sub     esp, 12                                 ; 3AE1 _ 83. EC, 0C
        push    dword [ebp+8H]                          ; 3AE4 _ FF. 75, 08
        call    task_add                                ; 3AE7 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 3AEC _ 83. C4, 10
?_211:  mov     eax, dword [taskctl]                    ; 3AEF _ A1, 000021E8(d)
        mov     dword [eax+4H], 1                       ; 3AF4 _ C7. 40, 04, 00000001
        nop                                             ; 3AFB _ 90
        leave                                           ; 3AFC _ C9
        ret                                             ; 3AFD _ C3
; task_run End of function

task_switch:; Function begin
        push    ebp                                     ; 3AFE _ 55
        mov     ebp, esp                                ; 3AFF _ 89. E5
        sub     esp, 24                                 ; 3B01 _ 83. EC, 18
        mov     edx, dword [taskctl]                    ; 3B04 _ 8B. 15, 000021E8(d)
        mov     eax, dword [taskctl]                    ; 3B0A _ A1, 000021E8(d)
        mov     eax, dword [eax]                        ; 3B0F _ 8B. 00
        imul    eax, eax, 28                            ; 3B11 _ 6B. C0, 1C
        add     eax, edx                                ; 3B14 _ 01. D0
        add     eax, 8                                  ; 3B16 _ 83. C0, 08
        mov     dword [ebp-14H], eax                    ; 3B19 _ 89. 45, EC
        mov     eax, dword [ebp-14H]                    ; 3B1C _ 8B. 45, EC
        mov     edx, dword [eax+4H]                     ; 3B1F _ 8B. 50, 04
        mov     eax, dword [ebp-14H]                    ; 3B22 _ 8B. 45, EC
        mov     eax, dword [eax+edx*4+8H]               ; 3B25 _ 8B. 44 90, 08
        mov     dword [ebp-10H], eax                    ; 3B29 _ 89. 45, F0
        mov     eax, dword [ebp-14H]                    ; 3B2C _ 8B. 45, EC
        mov     eax, dword [eax+4H]                     ; 3B2F _ 8B. 40, 04
        lea     edx, [eax+1H]                           ; 3B32 _ 8D. 50, 01
        mov     eax, dword [ebp-14H]                    ; 3B35 _ 8B. 45, EC
        mov     dword [eax+4H], edx                     ; 3B38 _ 89. 50, 04
        mov     eax, dword [ebp-14H]                    ; 3B3B _ 8B. 45, EC
        mov     edx, dword [eax+4H]                     ; 3B3E _ 8B. 50, 04
        mov     eax, dword [ebp-14H]                    ; 3B41 _ 8B. 45, EC
        mov     eax, dword [eax]                        ; 3B44 _ 8B. 00
        cmp     edx, eax                                ; 3B46 _ 39. C2
        jnz     ?_212                                   ; 3B48 _ 75, 0A
        mov     eax, dword [ebp-14H]                    ; 3B4A _ 8B. 45, EC
        mov     dword [eax+4H], 0                       ; 3B4D _ C7. 40, 04, 00000000
?_212:  mov     eax, dword [taskctl]                    ; 3B54 _ A1, 000021E8(d)
        mov     eax, dword [eax+4H]                     ; 3B59 _ 8B. 40, 04
        test    eax, eax                                ; 3B5C _ 85. C0
        jz      ?_213                                   ; 3B5E _ 74, 1D
        call    task_switchsub                          ; 3B60 _ E8, FFFFFFFC(rel)
        mov     edx, dword [taskctl]                    ; 3B65 _ 8B. 15, 000021E8(d)
        mov     eax, dword [taskctl]                    ; 3B6B _ A1, 000021E8(d)
        mov     eax, dword [eax]                        ; 3B70 _ 8B. 00
        imul    eax, eax, 28                            ; 3B72 _ 6B. C0, 1C
        add     eax, edx                                ; 3B75 _ 01. D0
        add     eax, 8                                  ; 3B77 _ 83. C0, 08
        mov     dword [ebp-14H], eax                    ; 3B7A _ 89. 45, EC
?_213:  mov     eax, dword [ebp-14H]                    ; 3B7D _ 8B. 45, EC
        mov     edx, dword [eax+4H]                     ; 3B80 _ 8B. 50, 04
        mov     eax, dword [ebp-14H]                    ; 3B83 _ 8B. 45, EC
        mov     eax, dword [eax+edx*4+8H]               ; 3B86 _ 8B. 44 90, 08
        mov     dword [ebp-0CH], eax                    ; 3B8A _ 89. 45, F4
        mov     eax, dword [ebp-0CH]                    ; 3B8D _ 8B. 45, F4
        mov     eax, dword [eax+8H]                     ; 3B90 _ 8B. 40, 08
        mov     edx, eax                                ; 3B93 _ 89. C2
        mov     eax, dword [task_timer]                 ; 3B95 _ A1, 000021E4(d)
        sub     esp, 8                                  ; 3B9A _ 83. EC, 08
        push    edx                                     ; 3B9D _ 52
        push    eax                                     ; 3B9E _ 50
        call    timer_setTime                           ; 3B9F _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 3BA4 _ 83. C4, 10
        mov     eax, dword [ebp-0CH]                    ; 3BA7 _ 8B. 45, F4
        cmp     eax, dword [ebp-10H]                    ; 3BAA _ 3B. 45, F0
        jz      ?_214                                   ; 3BAD _ 74, 1A
        cmp     dword [ebp-0CH], 0                      ; 3BAF _ 83. 7D, F4, 00
        jz      ?_214                                   ; 3BB3 _ 74, 14
        mov     eax, dword [ebp-0CH]                    ; 3BB5 _ 8B. 45, F4
        mov     eax, dword [eax]                        ; 3BB8 _ 8B. 00
        sub     esp, 8                                  ; 3BBA _ 83. EC, 08
        push    eax                                     ; 3BBD _ 50
        push    0                                       ; 3BBE _ 6A, 00
        call    farjmp                                  ; 3BC0 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 3BC5 _ 83. C4, 10
        nop                                             ; 3BC8 _ 90
?_214:  nop                                             ; 3BC9 _ 90
        leave                                           ; 3BCA _ C9
        ret                                             ; 3BCB _ C3
; task_switch End of function

task_sleep:; Function begin
        push    ebp                                     ; 3BCC _ 55
        mov     ebp, esp                                ; 3BCD _ 89. E5
        sub     esp, 24                                 ; 3BCF _ 83. EC, 18
        mov     dword [ebp-0CH], 0                      ; 3BD2 _ C7. 45, F4, 00000000
        mov     byte [ebp-0DH], 0                       ; 3BD9 _ C6. 45, F3, 00
        mov     eax, dword [ebp+8H]                     ; 3BDD _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 3BE0 _ 8B. 40, 04
        cmp     eax, 2                                  ; 3BE3 _ 83. F8, 02
        jnz     ?_215                                   ; 3BE6 _ 75, 4C
        call    task_now                                ; 3BE8 _ E8, FFFFFFFC(rel)
        mov     dword [ebp-0CH], eax                    ; 3BED _ 89. 45, F4
        sub     esp, 12                                 ; 3BF0 _ 83. EC, 0C
        push    dword [ebp+8H]                          ; 3BF3 _ FF. 75, 08
        call    task_remove                             ; 3BF6 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 3BFB _ 83. C4, 10
        mov     byte [ebp-0DH], 1                       ; 3BFE _ C6. 45, F3, 01
        mov     eax, dword [ebp+8H]                     ; 3C02 _ 8B. 45, 08
        cmp     eax, dword [ebp-0CH]                    ; 3C05 _ 3B. 45, F4
        jnz     ?_215                                   ; 3C08 _ 75, 2A
        call    task_switchsub                          ; 3C0A _ E8, FFFFFFFC(rel)
        call    task_now                                ; 3C0F _ E8, FFFFFFFC(rel)
        mov     dword [ebp-0CH], eax                    ; 3C14 _ 89. 45, F4
        mov     byte [ebp-0DH], 2                       ; 3C17 _ C6. 45, F3, 02
        cmp     dword [ebp-0CH], 0                      ; 3C1B _ 83. 7D, F4, 00
        jz      ?_215                                   ; 3C1F _ 74, 13
        mov     eax, dword [ebp-0CH]                    ; 3C21 _ 8B. 45, F4
        mov     eax, dword [eax]                        ; 3C24 _ 8B. 00
        sub     esp, 8                                  ; 3C26 _ 83. EC, 08
        push    eax                                     ; 3C29 _ 50
        push    0                                       ; 3C2A _ 6A, 00
        call    farjmp                                  ; 3C2C _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 3C31 _ 83. C4, 10
?_215:  movsx   eax, byte [ebp-0DH]                     ; 3C34 _ 0F BE. 45, F3
        leave                                           ; 3C38 _ C9
        ret                                             ; 3C39 _ C3
; task_sleep End of function

task_now:; Function begin
        push    ebp                                     ; 3C3A _ 55
        mov     ebp, esp                                ; 3C3B _ 89. E5
        sub     esp, 16                                 ; 3C3D _ 83. EC, 10
        mov     edx, dword [taskctl]                    ; 3C40 _ 8B. 15, 000021E8(d)
        mov     eax, dword [taskctl]                    ; 3C46 _ A1, 000021E8(d)
        mov     eax, dword [eax]                        ; 3C4B _ 8B. 00
        imul    eax, eax, 28                            ; 3C4D _ 6B. C0, 1C
        add     eax, edx                                ; 3C50 _ 01. D0
        add     eax, 8                                  ; 3C52 _ 83. C0, 08
        mov     dword [ebp-4H], eax                     ; 3C55 _ 89. 45, FC
        mov     eax, dword [ebp-4H]                     ; 3C58 _ 8B. 45, FC
        mov     edx, dword [eax+4H]                     ; 3C5B _ 8B. 50, 04
        mov     eax, dword [ebp-4H]                     ; 3C5E _ 8B. 45, FC
        mov     eax, dword [eax+edx*4+8H]               ; 3C61 _ 8B. 44 90, 08
        leave                                           ; 3C65 _ C9
        ret                                             ; 3C66 _ C3
; task_now End of function

task_add:; Function begin
        push    ebp                                     ; 3C67 _ 55
        mov     ebp, esp                                ; 3C68 _ 89. E5
        sub     esp, 16                                 ; 3C6A _ 83. EC, 10
        mov     edx, dword [taskctl]                    ; 3C6D _ 8B. 15, 000021E8(d)
        mov     eax, dword [ebp+8H]                     ; 3C73 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 3C76 _ 8B. 40, 0C
        imul    eax, eax, 28                            ; 3C79 _ 6B. C0, 1C
        add     eax, edx                                ; 3C7C _ 01. D0
        add     eax, 8                                  ; 3C7E _ 83. C0, 08
        mov     dword [ebp-4H], eax                     ; 3C81 _ 89. 45, FC
        mov     eax, dword [ebp-4H]                     ; 3C84 _ 8B. 45, FC
        mov     edx, dword [eax]                        ; 3C87 _ 8B. 10
        mov     eax, dword [ebp-4H]                     ; 3C89 _ 8B. 45, FC
        mov     ecx, dword [ebp+8H]                     ; 3C8C _ 8B. 4D, 08
        mov     dword [eax+edx*4+8H], ecx               ; 3C8F _ 89. 4C 90, 08
        mov     eax, dword [ebp-4H]                     ; 3C93 _ 8B. 45, FC
        mov     eax, dword [eax]                        ; 3C96 _ 8B. 00
        lea     edx, [eax+1H]                           ; 3C98 _ 8D. 50, 01
        mov     eax, dword [ebp-4H]                     ; 3C9B _ 8B. 45, FC
        mov     dword [eax], edx                        ; 3C9E _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 3CA0 _ 8B. 45, 08
        mov     dword [eax+4H], 2                       ; 3CA3 _ C7. 40, 04, 00000002
        nop                                             ; 3CAA _ 90
        leave                                           ; 3CAB _ C9
        ret                                             ; 3CAC _ C3
; task_add End of function

task_remove:; Function begin
        push    ebp                                     ; 3CAD _ 55
        mov     ebp, esp                                ; 3CAE _ 89. E5
        sub     esp, 16                                 ; 3CB0 _ 83. EC, 10
        mov     edx, dword [taskctl]                    ; 3CB3 _ 8B. 15, 000021E8(d)
        mov     eax, dword [ebp+8H]                     ; 3CB9 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 3CBC _ 8B. 40, 0C
        imul    eax, eax, 28                            ; 3CBF _ 6B. C0, 1C
        add     eax, edx                                ; 3CC2 _ 01. D0
        add     eax, 8                                  ; 3CC4 _ 83. C0, 08
        mov     dword [ebp-4H], eax                     ; 3CC7 _ 89. 45, FC
        mov     dword [ebp-8H], 0                       ; 3CCA _ C7. 45, F8, 00000000
        jmp     ?_218                                   ; 3CD1 _ EB, 23

?_216:  mov     eax, dword [ebp-4H]                     ; 3CD3 _ 8B. 45, FC
        mov     edx, dword [ebp-8H]                     ; 3CD6 _ 8B. 55, F8
        mov     eax, dword [eax+edx*4+8H]               ; 3CD9 _ 8B. 44 90, 08
        cmp     dword [ebp+8H], eax                     ; 3CDD _ 39. 45, 08
        jnz     ?_217                                   ; 3CE0 _ 75, 10
        mov     eax, dword [ebp-4H]                     ; 3CE2 _ 8B. 45, FC
        mov     edx, dword [ebp-8H]                     ; 3CE5 _ 8B. 55, F8
        mov     dword [eax+edx*4+8H], 0                 ; 3CE8 _ C7. 44 90, 08, 00000000
        jmp     ?_219                                   ; 3CF0 _ EB, 0E

?_217:  add     dword [ebp-8H], 1                       ; 3CF2 _ 83. 45, F8, 01
?_218:  mov     eax, dword [ebp-4H]                     ; 3CF6 _ 8B. 45, FC
        mov     eax, dword [eax]                        ; 3CF9 _ 8B. 00
        cmp     dword [ebp-8H], eax                     ; 3CFB _ 39. 45, F8
        jl      ?_216                                   ; 3CFE _ 7C, D3
?_219:  mov     eax, dword [ebp-4H]                     ; 3D00 _ 8B. 45, FC
        mov     eax, dword [eax]                        ; 3D03 _ 8B. 00
        lea     edx, [eax-1H]                           ; 3D05 _ 8D. 50, FF
        mov     eax, dword [ebp-4H]                     ; 3D08 _ 8B. 45, FC
        mov     dword [eax], edx                        ; 3D0B _ 89. 10
        mov     eax, dword [ebp-4H]                     ; 3D0D _ 8B. 45, FC
        mov     eax, dword [eax+4H]                     ; 3D10 _ 8B. 40, 04
        cmp     dword [ebp-8H], eax                     ; 3D13 _ 39. 45, F8
        jge     ?_220                                   ; 3D16 _ 7D, 0F
        mov     eax, dword [ebp-4H]                     ; 3D18 _ 8B. 45, FC
        mov     eax, dword [eax+4H]                     ; 3D1B _ 8B. 40, 04
        lea     edx, [eax-1H]                           ; 3D1E _ 8D. 50, FF
        mov     eax, dword [ebp-4H]                     ; 3D21 _ 8B. 45, FC
        mov     dword [eax+4H], edx                     ; 3D24 _ 89. 50, 04
?_220:  mov     eax, dword [ebp-4H]                     ; 3D27 _ 8B. 45, FC
        mov     edx, dword [eax+4H]                     ; 3D2A _ 8B. 50, 04
        mov     eax, dword [ebp-4H]                     ; 3D2D _ 8B. 45, FC
        mov     eax, dword [eax]                        ; 3D30 _ 8B. 00
        cmp     edx, eax                                ; 3D32 _ 39. C2
        jl      ?_221                                   ; 3D34 _ 7C, 0A
        mov     eax, dword [ebp-4H]                     ; 3D36 _ 8B. 45, FC
        mov     dword [eax+4H], 0                       ; 3D39 _ C7. 40, 04, 00000000
?_221:  mov     eax, dword [ebp+8H]                     ; 3D40 _ 8B. 45, 08
        mov     dword [eax+4H], 1                       ; 3D43 _ C7. 40, 04, 00000001
        jmp     ?_223                                   ; 3D4A _ EB, 1B

?_222:  mov     eax, dword [ebp-8H]                     ; 3D4C _ 8B. 45, F8
        lea     edx, [eax+1H]                           ; 3D4F _ 8D. 50, 01
        mov     eax, dword [ebp-4H]                     ; 3D52 _ 8B. 45, FC
        mov     ecx, dword [eax+edx*4+8H]               ; 3D55 _ 8B. 4C 90, 08
        mov     eax, dword [ebp-4H]                     ; 3D59 _ 8B. 45, FC
        mov     edx, dword [ebp-8H]                     ; 3D5C _ 8B. 55, F8
        mov     dword [eax+edx*4+8H], ecx               ; 3D5F _ 89. 4C 90, 08
        add     dword [ebp-8H], 1                       ; 3D63 _ 83. 45, F8, 01
?_223:  mov     eax, dword [ebp-4H]                     ; 3D67 _ 8B. 45, FC
        mov     eax, dword [eax]                        ; 3D6A _ 8B. 00
        cmp     dword [ebp-8H], eax                     ; 3D6C _ 39. 45, F8
        jl      ?_222                                   ; 3D6F _ 7C, DB
        nop                                             ; 3D71 _ 90
        leave                                           ; 3D72 _ C9
        ret                                             ; 3D73 _ C3
; task_remove End of function

task_switchsub:; Function begin
        push    ebp                                     ; 3D74 _ 55
        mov     ebp, esp                                ; 3D75 _ 89. E5
        sub     esp, 16                                 ; 3D77 _ 83. EC, 10
        mov     dword [ebp-4H], 0                       ; 3D7A _ C7. 45, FC, 00000000
        jmp     ?_225                                   ; 3D81 _ EB, 1B

?_224:  mov     edx, dword [taskctl]                    ; 3D83 _ 8B. 15, 000021E8(d)
        mov     eax, dword [ebp-4H]                     ; 3D89 _ 8B. 45, FC
        imul    eax, eax, 28                            ; 3D8C _ 6B. C0, 1C
        add     eax, edx                                ; 3D8F _ 01. D0
        add     eax, 8                                  ; 3D91 _ 83. C0, 08
        mov     eax, dword [eax]                        ; 3D94 _ 8B. 00
        test    eax, eax                                ; 3D96 _ 85. C0
        jg      ?_226                                   ; 3D98 _ 7F, 0C
        add     dword [ebp-4H], 1                       ; 3D9A _ 83. 45, FC, 01
?_225:  cmp     dword [ebp-4H], 2                       ; 3D9E _ 83. 7D, FC, 02
        jle     ?_224                                   ; 3DA2 _ 7E, DF
        jmp     ?_227                                   ; 3DA4 _ EB, 01

?_226:  nop                                             ; 3DA6 _ 90
?_227:  mov     eax, dword [taskctl]                    ; 3DA7 _ A1, 000021E8(d)
        mov     edx, dword [ebp-4H]                     ; 3DAC _ 8B. 55, FC
        mov     dword [eax], edx                        ; 3DAF _ 89. 10
        mov     eax, dword [taskctl]                    ; 3DB1 _ A1, 000021E8(d)
        mov     dword [eax+4H], 0                       ; 3DB6 _ C7. 40, 04, 00000000
        nop                                             ; 3DBD _ 90
        leave                                           ; 3DBE _ C9
        ret                                             ; 3DBF _ C3
; task_switchsub End of function

getTaskctl:; Function begin
        push    ebp                                     ; 3DC0 _ 55
        mov     ebp, esp                                ; 3DC1 _ 89. E5
        mov     eax, dword [taskctl]                    ; 3DC3 _ A1, 000021E8(d)
        pop     ebp                                     ; 3DC8 _ 5D
        ret                                             ; 3DC9 _ C3
; getTaskctl End of function

send_message:; Function begin
        push    ebp                                     ; 3DCA _ 55
        mov     ebp, esp                                ; 3DCB _ 89. E5
        sub     esp, 8                                  ; 3DCD _ 83. EC, 08
        mov     eax, dword [ebp+10H]                    ; 3DD0 _ 8B. 45, 10
        movzx   eax, al                                 ; 3DD3 _ 0F B6. C0
        mov     edx, dword [ebp+0CH]                    ; 3DD6 _ 8B. 55, 0C
        add     edx, 16                                 ; 3DD9 _ 83. C2, 10
        sub     esp, 8                                  ; 3DDC _ 83. EC, 08
        push    eax                                     ; 3DDF _ 50
        push    edx                                     ; 3DE0 _ 52
        call    fifo8_put                               ; 3DE1 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 3DE6 _ 83. C4, 10
        sub     esp, 12                                 ; 3DE9 _ 83. EC, 0C
        push    dword [ebp+8H]                          ; 3DEC _ FF. 75, 08
        call    task_sleep                              ; 3DEF _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 3DF4 _ 83. C4, 10
        nop                                             ; 3DF7 _ 90
        leave                                           ; 3DF8 _ C9
        ret                                             ; 3DF9 _ C3
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

table_rgb.2380:                                         ; byte
        db 00H, 00H, 00H, 0FFH, 00H, 00H, 00H, 0FFH     ; 0120 _ ........
        db 00H, 0FFH, 0FFH, 00H, 00H, 00H, 0FFH, 0FFH   ; 0128 _ ........
        db 00H, 0FFH, 00H, 0FFH, 0FFH, 0FFH, 0FFH, 0FFH ; 0130 _ ........
        db 0C6H, 0C6H, 0C6H, 84H, 00H, 00H, 00H, 84H    ; 0138 _ ........
        db 00H, 84H, 84H, 00H, 00H, 00H, 84H, 84H       ; 0140 _ ........
        db 00H, 84H, 00H, 78H, 0D7H, 84H, 84H, 84H      ; 0148 _ ...x....
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0150 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0158 _ ........

cursor.2435:                                            ; byte
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

closebtn.2588:                                          ; byte
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

cnt.2294: resd  1                                       ; 0260

line.2297:                                              ; dword
        resd    1                                       ; 0264

task_b.2283:                                            ; oword
        resb    16                                      ; 0268

str.2478:                                               ; byte
        resb    1                                       ; 0278

?_249:  resb    9                                       ; 0279

?_250:  resb    2                                       ; 0282

line.2511:                                              ; dword
        resd    1                                       ; 0284

pos.2510: resd  6                                       ; 0288

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


