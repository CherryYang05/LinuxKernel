; Disassembly of file: ckernel.o
; Thu Apr  8 16:46:54 2021
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
        mov     dword [ebp-60H], eax                    ; 0029 _ 89. 45, A0
        movzx   eax, word [?_170]                       ; 002C _ 0F B7. 05, 00000004(d)
        cwde                                            ; 0033 _ 98
        mov     dword [ebp-5CH], eax                    ; 0034 _ 89. 45, A4
        movzx   eax, word [?_171]                       ; 0037 _ 0F B7. 05, 00000006(d)
        cwde                                            ; 003E _ 98
        mov     dword [ebp-58H], eax                    ; 003F _ 89. 45, A8
        mov     dword [ebp-54H], 0                      ; 0042 _ C7. 45, AC, 00000000
        mov     dword [ebp-50H], 0                      ; 0049 _ C7. 45, B0, 00000000
        call    init_pit                                ; 0050 _ E8, FFFFFFFC(rel)
        sub     esp, 4                                  ; 0055 _ 83. EC, 04
        push    timerbuf                                ; 0058 _ 68, 00000218(d)
        push    8                                       ; 005D _ 6A, 08
        push    timerInfo                               ; 005F _ 68, 00000200(d)
        call    fifo8_init                              ; 0064 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0069 _ 83. C4, 10
        call    timer_alloc                             ; 006C _ E8, FFFFFFFC(rel)
        mov     dword [ebp-4CH], eax                    ; 0071 _ 89. 45, B4
        sub     esp, 4                                  ; 0074 _ 83. EC, 04
        push    1                                       ; 0077 _ 6A, 01
        push    timerInfo                               ; 0079 _ 68, 00000200(d)
        push    dword [ebp-4CH]                         ; 007E _ FF. 75, B4
        call    timer_init                              ; 0081 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0086 _ 83. C4, 10
        sub     esp, 8                                  ; 0089 _ 83. EC, 08
        push    500                                     ; 008C _ 68, 000001F4
        push    dword [ebp-4CH]                         ; 0091 _ FF. 75, B4
        call    timer_setTime                           ; 0094 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0099 _ 83. C4, 10
        sub     esp, 4                                  ; 009C _ 83. EC, 04
        push    timerbuf2.1700                          ; 009F _ 68, 0000023C(d)
        push    8                                       ; 00A4 _ 6A, 08
        push    timerInfo2.1698                         ; 00A6 _ 68, 00000224(d)
        call    fifo8_init                              ; 00AB _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 00B0 _ 83. C4, 10
        call    timer_alloc                             ; 00B3 _ E8, FFFFFFFC(rel)
        mov     dword [ebp-48H], eax                    ; 00B8 _ 89. 45, B8
        sub     esp, 4                                  ; 00BB _ 83. EC, 04
        push    1                                       ; 00BE _ 6A, 01
        push    timerInfo2.1698                         ; 00C0 _ 68, 00000224(d)
        push    dword [ebp-48H]                         ; 00C5 _ FF. 75, B8
        call    timer_init                              ; 00C8 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 00CD _ 83. C4, 10
        sub     esp, 8                                  ; 00D0 _ 83. EC, 08
        push    300                                     ; 00D3 _ 68, 0000012C
        push    dword [ebp-48H]                         ; 00D8 _ FF. 75, B8
        call    timer_setTime                           ; 00DB _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 00E0 _ 83. C4, 10
        sub     esp, 4                                  ; 00E3 _ 83. EC, 04
        push    timerbuf3.1701                          ; 00E6 _ 68, 0000025C(d)
        push    8                                       ; 00EB _ 6A, 08
        push    timerInfo3.1699                         ; 00ED _ 68, 00000244(d)
        call    fifo8_init                              ; 00F2 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 00F7 _ 83. C4, 10
        call    timer_alloc                             ; 00FA _ E8, FFFFFFFC(rel)
        mov     dword [ebp-44H], eax                    ; 00FF _ 89. 45, BC
        sub     esp, 4                                  ; 0102 _ 83. EC, 04
        push    1                                       ; 0105 _ 6A, 01
        push    timerInfo3.1699                         ; 0107 _ 68, 00000244(d)
        push    dword [ebp-44H]                         ; 010C _ FF. 75, BC
        call    timer_init                              ; 010F _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0114 _ 83. C4, 10
        sub     esp, 8                                  ; 0117 _ 83. EC, 08
        push    100                                     ; 011A _ 6A, 64
        push    dword [ebp-44H]                         ; 011C _ FF. 75, BC
        call    timer_setTime                           ; 011F _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0124 _ 83. C4, 10
        sub     esp, 4                                  ; 0127 _ 83. EC, 04
        push    mousebuf                                ; 012A _ 68, 00000060(d)
        push    128                                     ; 012F _ 68, 00000080
        push    mouseInfo                               ; 0134 _ 68, 00000020(d)
        call    fifo8_init                              ; 0139 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 013E _ 83. C4, 10
        sub     esp, 4                                  ; 0141 _ 83. EC, 04
        push    keybuf                                  ; 0144 _ 68, 00000040(d)
        push    32                                      ; 0149 _ 6A, 20
        push    keyInfo                                 ; 014B _ 68, 00000008(d)
        call    fifo8_init                              ; 0150 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0155 _ 83. C4, 10
        call    init_palette                            ; 0158 _ E8, FFFFFFFC(rel)
        call    init_keyboard                           ; 015D _ E8, FFFFFFFC(rel)
        call    get_addr_buffer                         ; 0162 _ E8, FFFFFFFC(rel)
        mov     dword [ebp-40H], eax                    ; 0167 _ 89. 45, C0
        call    get_memory_block_count                  ; 016A _ E8, FFFFFFFC(rel)
        mov     dword [ebp-3CH], eax                    ; 016F _ 89. 45, C4
        mov     eax, dword [memman]                     ; 0172 _ A1, 00000008(d)
        sub     esp, 12                                 ; 0177 _ 83. EC, 0C
        push    eax                                     ; 017A _ 50
        call    memman_init                             ; 017B _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0180 _ 83. C4, 10
        mov     eax, dword [memman]                     ; 0183 _ A1, 00000008(d)
        sub     esp, 4                                  ; 0188 _ 83. EC, 04
        push    1072594944                              ; 018B _ 68, 3FEE8000
        push    1081344                                 ; 0190 _ 68, 00108000
        push    eax                                     ; 0195 _ 50
        call    memman_free                             ; 0196 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 019B _ 83. C4, 10
        mov     eax, dword [memman]                     ; 019E _ A1, 00000008(d)
        sub     esp, 12                                 ; 01A3 _ 83. EC, 0C
        push    eax                                     ; 01A6 _ 50
        call    memman_total                            ; 01A7 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 01AC _ 83. C4, 10
        shr     eax, 20                                 ; 01AF _ C1. E8, 14
        mov     dword [ebp-38H], eax                    ; 01B2 _ 89. 45, C8
        mov     eax, dword [ebp-38H]                    ; 01B5 _ 8B. 45, C8
        sub     esp, 12                                 ; 01B8 _ 83. EC, 0C
        push    eax                                     ; 01BB _ 50
        call    intToHexStr                             ; 01BC _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 01C1 _ 83. C4, 10
        mov     dword [ebp-34H], eax                    ; 01C4 _ 89. 45, CC
        sub     esp, 8                                  ; 01C7 _ 83. EC, 08
        push    ?_156                                   ; 01CA _ 68, 00000000(d)
        push    3                                       ; 01CF _ 6A, 03
        push    0                                       ; 01D1 _ 6A, 00
        push    0                                       ; 01D3 _ 6A, 00
        push    dword [ebp-54H]                         ; 01D5 _ FF. 75, AC
        push    dword [ebp-30H]                         ; 01D8 _ FF. 75, D0
        call    showString                              ; 01DB _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 01E0 _ 83. C4, 20
        sub     esp, 8                                  ; 01E3 _ 83. EC, 08
        push    dword [ebp-34H]                         ; 01E6 _ FF. 75, CC
        push    3                                       ; 01E9 _ 6A, 03
        push    0                                       ; 01EB _ 6A, 00
        push    152                                     ; 01ED _ 68, 00000098
        push    dword [ebp-54H]                         ; 01F2 _ FF. 75, AC
        push    dword [ebp-30H]                         ; 01F5 _ FF. 75, D0
        call    showString                              ; 01F8 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 01FD _ 83. C4, 20
        sub     esp, 8                                  ; 0200 _ 83. EC, 08
        push    ?_157                                   ; 0203 _ 68, 00000014(d)
        push    3                                       ; 0208 _ 6A, 03
        push    0                                       ; 020A _ 6A, 00
        push    240                                     ; 020C _ 68, 000000F0
        push    dword [ebp-54H]                         ; 0211 _ FF. 75, AC
        push    dword [ebp-30H]                         ; 0214 _ FF. 75, D0
        call    showString                              ; 0217 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 021C _ 83. C4, 20
        mov     eax, dword [memman]                     ; 021F _ A1, 00000008(d)
        push    dword [ebp-58H]                         ; 0224 _ FF. 75, A8
        push    dword [ebp-5CH]                         ; 0227 _ FF. 75, A4
        push    dword [ebp-60H]                         ; 022A _ FF. 75, A0
        push    eax                                     ; 022D _ 50
        call    shtctl_init                             ; 022E _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0233 _ 83. C4, 10
        mov     dword [ebp-30H], eax                    ; 0236 _ 89. 45, D0
        sub     esp, 12                                 ; 0239 _ 83. EC, 0C
        push    dword [ebp-30H]                         ; 023C _ FF. 75, D0
        call    sheet_alloc                             ; 023F _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0244 _ 83. C4, 10
        mov     dword [ebp-54H], eax                    ; 0247 _ 89. 45, AC
        sub     esp, 12                                 ; 024A _ 83. EC, 0C
        push    dword [ebp-30H]                         ; 024D _ FF. 75, D0
        call    sheet_alloc                             ; 0250 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0255 _ 83. C4, 10
        mov     dword [ebp-50H], eax                    ; 0258 _ 89. 45, B0
        mov     eax, dword [ebp-5CH]                    ; 025B _ 8B. 45, A4
        imul    eax, dword [ebp-58H]                    ; 025E _ 0F AF. 45, A8
        mov     edx, eax                                ; 0262 _ 89. C2
        mov     eax, dword [memman]                     ; 0264 _ A1, 00000008(d)
        sub     esp, 8                                  ; 0269 _ 83. EC, 08
        push    edx                                     ; 026C _ 52
        push    eax                                     ; 026D _ 50
        call    memman_alloc_4K                         ; 026E _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0273 _ 83. C4, 10
        mov     dword [buf_back], eax                   ; 0276 _ A3, 000000F8(d)
        mov     eax, dword [buf_back]                   ; 027B _ A1, 000000F8(d)
        sub     esp, 4                                  ; 0280 _ 83. EC, 04
        push    dword [ebp-58H]                         ; 0283 _ FF. 75, A8
        push    dword [ebp-5CH]                         ; 0286 _ FF. 75, A4
        push    eax                                     ; 0289 _ 50
        call    init_screen8                            ; 028A _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 028F _ 83. C4, 10
        mov     eax, dword [buf_back]                   ; 0292 _ A1, 000000F8(d)
        sub     esp, 12                                 ; 0297 _ 83. EC, 0C
        push    99                                      ; 029A _ 6A, 63
        push    dword [ebp-58H]                         ; 029C _ FF. 75, A8
        push    dword [ebp-5CH]                         ; 029F _ FF. 75, A4
        push    eax                                     ; 02A2 _ 50
        push    dword [ebp-54H]                         ; 02A3 _ FF. 75, AC
        call    sheet_setbuf                            ; 02A6 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 02AB _ 83. C4, 20
        sub     esp, 12                                 ; 02AE _ 83. EC, 0C
        push    99                                      ; 02B1 _ 6A, 63
        push    16                                      ; 02B3 _ 6A, 10
        push    16                                      ; 02B5 _ 6A, 10
        push    buf_mouse                               ; 02B7 _ 68, 00000100(d)
        push    dword [ebp-50H]                         ; 02BC _ FF. 75, B0
        call    sheet_setbuf                            ; 02BF _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 02C4 _ 83. C4, 20
        sub     esp, 8                                  ; 02C7 _ 83. EC, 08
        push    99                                      ; 02CA _ 6A, 63
        push    buf_mouse                               ; 02CC _ 68, 00000100(d)
        call    init_mouse_cursor                       ; 02D1 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 02D6 _ 83. C4, 10
        push    0                                       ; 02D9 _ 6A, 00
        push    0                                       ; 02DB _ 6A, 00
        push    dword [ebp-54H]                         ; 02DD _ FF. 75, AC
        push    dword [ebp-30H]                         ; 02E0 _ FF. 75, D0
        call    sheet_slide                             ; 02E3 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 02E8 _ 83. C4, 10
        mov     eax, dword [ebp-5CH]                    ; 02EB _ 8B. 45, A4
        sub     eax, 16                                 ; 02EE _ 83. E8, 10
        mov     edx, eax                                ; 02F1 _ 89. C2
        shr     edx, 31                                 ; 02F3 _ C1. EA, 1F
        add     eax, edx                                ; 02F6 _ 01. D0
        sar     eax, 1                                  ; 02F8 _ D1. F8
        mov     dword [mx], eax                         ; 02FA _ A3, 000000F0(d)
        mov     eax, dword [ebp-58H]                    ; 02FF _ 8B. 45, A8
        sub     eax, 44                                 ; 0302 _ 83. E8, 2C
        mov     edx, eax                                ; 0305 _ 89. C2
        shr     edx, 31                                 ; 0307 _ C1. EA, 1F
        add     eax, edx                                ; 030A _ 01. D0
        sar     eax, 1                                  ; 030C _ D1. F8
        mov     dword [my], eax                         ; 030E _ A3, 000000F4(d)
        mov     edx, dword [my]                         ; 0313 _ 8B. 15, 000000F4(d)
        mov     eax, dword [mx]                         ; 0319 _ A1, 000000F0(d)
        push    edx                                     ; 031E _ 52
        push    eax                                     ; 031F _ 50
        push    dword [ebp-50H]                         ; 0320 _ FF. 75, B0
        push    dword [ebp-30H]                         ; 0323 _ FF. 75, D0
        call    sheet_slide                             ; 0326 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 032B _ 83. C4, 10
        sub     esp, 8                                  ; 032E _ 83. EC, 08
        push    ?_158                                   ; 0331 _ 68, 00000017(d)
        push    dword [ebp-30H]                         ; 0336 _ FF. 75, D0
        call    messageBox                              ; 0339 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 033E _ 83. C4, 10
        mov     dword [sheet_win], eax                  ; 0341 _ A3, 00000220(d)
        sub     esp, 4                                  ; 0346 _ 83. EC, 04
        push    0                                       ; 0349 _ 6A, 00
        push    dword [ebp-54H]                         ; 034B _ FF. 75, AC
        push    dword [ebp-30H]                         ; 034E _ FF. 75, D0
        call    sheet_level_updown                      ; 0351 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0356 _ 83. C4, 10
        sub     esp, 4                                  ; 0359 _ 83. EC, 04
        push    50                                      ; 035C _ 6A, 32
        push    dword [ebp-50H]                         ; 035E _ FF. 75, B0
        push    dword [ebp-30H]                         ; 0361 _ FF. 75, D0
        call    sheet_level_updown                      ; 0364 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0369 _ 83. C4, 10
        call    io_sti                                  ; 036C _ E8, FFFFFFFC(rel)
        sub     esp, 12                                 ; 0371 _ 83. EC, 0C
        push    mouse_move                              ; 0374 _ 68, 000000E0(d)
        call    enable_mouse                            ; 0379 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 037E _ 83. C4, 10
        mov     dword [ebp-68H], 0                      ; 0381 _ C7. 45, 98, 00000000
        mov     byte [ebp-69H], 0                       ; 0388 _ C6. 45, 97, 00
        call    getTimerController                      ; 038C _ E8, FFFFFFFC(rel)
        mov     dword [ebp-2CH], eax                    ; 0391 _ 89. 45, D4
        mov     dword [ebp-64H], 7                      ; 0394 _ C7. 45, 9C, 00000007
?_001:  mov     eax, dword [ebp-4CH]                    ; 039B _ 8B. 45, B4
        mov     eax, dword [eax]                        ; 039E _ 8B. 00
        sub     esp, 12                                 ; 03A0 _ 83. EC, 0C
        push    eax                                     ; 03A3 _ 50
        call    intToHexStr                             ; 03A4 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 03A9 _ 83. C4, 10
        mov     dword [ebp-28H], eax                    ; 03AC _ 89. 45, D8
        mov     eax, dword [sheet_win]                  ; 03AF _ A1, 00000220(d)
        mov     edx, dword [eax+4H]                     ; 03B4 _ 8B. 50, 04
        mov     eax, dword [sheet_win]                  ; 03B7 _ A1, 00000220(d)
        mov     eax, dword [eax]                        ; 03BC _ 8B. 00
        sub     esp, 4                                  ; 03BE _ 83. EC, 04
        push    38                                      ; 03C1 _ 6A, 26
        push    150                                     ; 03C3 _ 68, 00000096
        push    22                                      ; 03C8 _ 6A, 16
        push    8                                       ; 03CA _ 6A, 08
        push    8                                       ; 03CC _ 6A, 08
        push    edx                                     ; 03CE _ 52
        push    eax                                     ; 03CF _ 50
        call    boxfill8                                ; 03D0 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 03D5 _ 83. C4, 20
        mov     eax, dword [sheet_win]                  ; 03D8 _ A1, 00000220(d)
        sub     esp, 8                                  ; 03DD _ 83. EC, 08
        push    dword [ebp-28H]                         ; 03E0 _ FF. 75, D8
        push    10                                      ; 03E3 _ 6A, 0A
        push    22                                      ; 03E5 _ 6A, 16
        push    8                                       ; 03E7 _ 6A, 08
        push    eax                                     ; 03E9 _ 50
        push    dword [ebp-30H]                         ; 03EA _ FF. 75, D0
        call    showString                              ; 03ED _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 03F2 _ 83. C4, 20
        call    io_cli                                  ; 03F5 _ E8, FFFFFFFC(rel)
        sub     esp, 12                                 ; 03FA _ 83. EC, 0C
        push    keyInfo                                 ; 03FD _ 68, 00000008(d)
        call    fifo8_status                            ; 0402 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0407 _ 83. C4, 10
        mov     ebx, eax                                ; 040A _ 89. C3
        sub     esp, 12                                 ; 040C _ 83. EC, 0C
        push    mouseInfo                               ; 040F _ 68, 00000020(d)
        call    fifo8_status                            ; 0414 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0419 _ 83. C4, 10
        add     ebx, eax                                ; 041C _ 01. C3
        sub     esp, 12                                 ; 041E _ 83. EC, 0C
        push    timerInfo                               ; 0421 _ 68, 00000200(d)
        call    fifo8_status                            ; 0426 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 042B _ 83. C4, 10
        add     ebx, eax                                ; 042E _ 01. C3
        sub     esp, 12                                 ; 0430 _ 83. EC, 0C
        push    timerInfo2.1698                         ; 0433 _ 68, 00000224(d)
        call    fifo8_status                            ; 0438 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 043D _ 83. C4, 10
        add     ebx, eax                                ; 0440 _ 01. C3
        sub     esp, 12                                 ; 0442 _ 83. EC, 0C
        push    timerInfo3.1699                         ; 0445 _ 68, 00000244(d)
        call    fifo8_status                            ; 044A _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 044F _ 83. C4, 10
        add     eax, ebx                                ; 0452 _ 01. D8
        test    eax, eax                                ; 0454 _ 85. C0
        jnz     ?_002                                   ; 0456 _ 75, 0A
        call    io_sti                                  ; 0458 _ E8, FFFFFFFC(rel)
        jmp     ?_001                                   ; 045D _ E9, FFFFFF39

?_002:  sub     esp, 12                                 ; 0462 _ 83. EC, 0C
        push    keyInfo                                 ; 0465 _ 68, 00000008(d)
        call    fifo8_status                            ; 046A _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 046F _ 83. C4, 10
        test    eax, eax                                ; 0472 _ 85. C0
        je      ?_004                                   ; 0474 _ 0F 84, 0000018F
        call    io_sti                                  ; 047A _ E8, FFFFFFFC(rel)
        sub     esp, 12                                 ; 047F _ 83. EC, 0C
        push    keyInfo                                 ; 0482 _ 68, 00000008(d)
        call    fifo8_get                               ; 0487 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 048C _ 83. C4, 10
        mov     byte [ebp-69H], al                      ; 048F _ 88. 45, 97
        cmp     byte [ebp-69H], 28                      ; 0492 _ 80. 7D, 97, 1C
        jnz     ?_003                                   ; 0496 _ 75, 51
        mov     ecx, dword [buf_back]                   ; 0498 _ 8B. 0D, 000000F8(d)
        mov     edx, dword [ebp-68H]                    ; 049E _ 8B. 55, 98
        mov     eax, edx                                ; 04A1 _ 89. D0
        shl     eax, 2                                  ; 04A3 _ C1. E0, 02
        add     eax, edx                                ; 04A6 _ 01. D0
        shl     eax, 2                                  ; 04A8 _ C1. E0, 02
        mov     edx, eax                                ; 04AB _ 89. C2
        mov     eax, dword [ebp-40H]                    ; 04AD _ 8B. 45, C0
        add     eax, edx                                ; 04B0 _ 01. D0
        sub     esp, 4                                  ; 04B2 _ 83. EC, 04
        push    7                                       ; 04B5 _ 6A, 07
        push    dword [ebp-5CH]                         ; 04B7 _ FF. 75, A4
        push    dword [ebp-68H]                         ; 04BA _ FF. 75, 98
        push    ecx                                     ; 04BD _ 51
        push    eax                                     ; 04BE _ 50
        push    dword [ebp-54H]                         ; 04BF _ FF. 75, AC
        push    dword [ebp-30H]                         ; 04C2 _ FF. 75, D0
        call    showMemInfo                             ; 04C5 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 04CA _ 83. C4, 20
        add     dword [ebp-68H], 1                      ; 04CD _ 83. 45, 98, 01
        mov     eax, dword [ebp-68H]                    ; 04D1 _ 8B. 45, 98
        cmp     eax, dword [ebp-3CH]                    ; 04D4 _ 3B. 45, C4
        jl      ?_001                                   ; 04D7 _ 0F 8C, FFFFFEBE
        mov     dword [ebp-68H], 0                      ; 04DD _ C7. 45, 98, 00000000
        jmp     ?_001                                   ; 04E4 _ E9, FFFFFEB2

?_003:  movzx   eax, byte [ebp-69H]                     ; 04E9 _ 0F B6. 45, 97
        movzx   eax, byte [keytable+eax]                ; 04ED _ 0F B6. 80, 00000020(d)
        test    al, al                                  ; 04F4 _ 84. C0
        je      ?_001                                   ; 04F6 _ 0F 84, FFFFFE9F
        cmp     byte [ebp-69H], 15                      ; 04FC _ 80. 7D, 97, 0F
        jbe     ?_001                                   ; 0500 _ 0F 86, FFFFFE95
        cmp     byte [ebp-69H], 83                      ; 0506 _ 80. 7D, 97, 53
        ja      ?_001                                   ; 050A _ 0F 87, FFFFFE8B
        mov     eax, dword [pos.1711]                   ; 0510 _ A1, 00000074(d)
        lea     edi, [eax+28H]                          ; 0515 _ 8D. 78, 28
        mov     eax, dword [line.1710]                  ; 0518 _ A1, 00000264(d)
        lea     esi, [eax+0FH]                          ; 051D _ 8D. 70, 0F
        mov     eax, dword [pos.1711]                   ; 0520 _ A1, 00000074(d)
        lea     ebx, [eax+19H]                          ; 0525 _ 8D. 58, 19
        mov     eax, dword [line.1710]                  ; 0528 _ A1, 00000264(d)
        lea     ecx, [eax+8H]                           ; 052D _ 8D. 48, 08
        mov     eax, dword [sheet_win]                  ; 0530 _ A1, 00000220(d)
        mov     edx, dword [eax+4H]                     ; 0535 _ 8B. 50, 04
        mov     eax, dword [sheet_win]                  ; 0538 _ A1, 00000220(d)
        mov     eax, dword [eax]                        ; 053D _ 8B. 00
        sub     esp, 4                                  ; 053F _ 83. EC, 04
        push    edi                                     ; 0542 _ 57
        push    esi                                     ; 0543 _ 56
        push    ebx                                     ; 0544 _ 53
        push    ecx                                     ; 0545 _ 51
        push    7                                       ; 0546 _ 6A, 07
        push    edx                                     ; 0548 _ 52
        push    eax                                     ; 0549 _ 50
        call    boxfill8                                ; 054A _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 054F _ 83. C4, 20
        mov     eax, dword [pos.1711]                   ; 0552 _ A1, 00000074(d)
        lea     esi, [eax+28H]                          ; 0557 _ 8D. 70, 28
        mov     eax, dword [line.1710]                  ; 055A _ A1, 00000264(d)
        lea     ebx, [eax+0FH]                          ; 055F _ 8D. 58, 0F
        mov     eax, dword [pos.1711]                   ; 0562 _ A1, 00000074(d)
        lea     ecx, [eax+19H]                          ; 0567 _ 8D. 48, 19
        mov     eax, dword [line.1710]                  ; 056A _ A1, 00000264(d)
        lea     edx, [eax+8H]                           ; 056F _ 8D. 50, 08
        mov     eax, dword [sheet_win]                  ; 0572 _ A1, 00000220(d)
        sub     esp, 8                                  ; 0577 _ 83. EC, 08
        push    esi                                     ; 057A _ 56
        push    ebx                                     ; 057B _ 53
        push    ecx                                     ; 057C _ 51
        push    edx                                     ; 057D _ 52
        push    eax                                     ; 057E _ 50
        push    dword [ebp-30H]                         ; 057F _ FF. 75, D0
        call    sheet_refresh                           ; 0582 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0587 _ 83. C4, 20
        movzx   eax, byte [ebp-69H]                     ; 058A _ 0F B6. 45, 97
        movzx   eax, byte [keytable+eax]                ; 058E _ 0F B6. 80, 00000020(d)
        mov     byte [ebp-1EH], al                      ; 0595 _ 88. 45, E2
        mov     byte [ebp-1DH], 0                       ; 0598 _ C6. 45, E3, 00
        mov     eax, dword [pos.1711]                   ; 059C _ A1, 00000074(d)
        lea     ebx, [eax+19H]                          ; 05A1 _ 8D. 58, 19
        mov     eax, dword [line.1710]                  ; 05A4 _ A1, 00000264(d)
        lea     ecx, [eax+8H]                           ; 05A9 _ 8D. 48, 08
        mov     eax, dword [sheet_win]                  ; 05AC _ A1, 00000220(d)
        sub     esp, 8                                  ; 05B1 _ 83. EC, 08
        lea     edx, [ebp-1EH]                          ; 05B4 _ 8D. 55, E2
        push    edx                                     ; 05B7 _ 52
        push    0                                       ; 05B8 _ 6A, 00
        push    ebx                                     ; 05BA _ 53
        push    ecx                                     ; 05BB _ 51
        push    eax                                     ; 05BC _ 50
        push    dword [ebp-30H]                         ; 05BD _ FF. 75, D0
        call    showString                              ; 05C0 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 05C5 _ 83. C4, 20
        mov     eax, dword [line.1710]                  ; 05C8 _ A1, 00000264(d)
        add     eax, 8                                  ; 05CD _ 83. C0, 08
        mov     dword [line.1710], eax                  ; 05D0 _ A3, 00000264(d)
        mov     eax, dword [sheet_win]                  ; 05D5 _ A1, 00000220(d)
        mov     eax, dword [eax+4H]                     ; 05DA _ 8B. 40, 04
        lea     edx, [eax-10H]                          ; 05DD _ 8D. 50, F0
        mov     eax, dword [line.1710]                  ; 05E0 _ A1, 00000264(d)
        cmp     edx, eax                                ; 05E5 _ 39. C2
        jg      ?_001                                   ; 05E7 _ 0F 8F, FFFFFDAE
        mov     eax, dword [pos.1711]                   ; 05ED _ A1, 00000074(d)
        add     eax, 16                                 ; 05F2 _ 83. C0, 10
        mov     dword [pos.1711], eax                   ; 05F5 _ A3, 00000074(d)
        mov     dword [line.1710], 0                    ; 05FA _ C7. 05, 00000264(d), 00000000
        jmp     ?_001                                   ; 0604 _ E9, FFFFFD92

?_004:  sub     esp, 12                                 ; 0609 _ 83. EC, 0C
        push    mouseInfo                               ; 060C _ 68, 00000020(d)
        call    fifo8_status                            ; 0611 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0616 _ 83. C4, 10
        test    eax, eax                                ; 0619 _ 85. C0
        jz      ?_005                                   ; 061B _ 74, 19
        sub     esp, 4                                  ; 061D _ 83. EC, 04
        push    dword [ebp-50H]                         ; 0620 _ FF. 75, B0
        push    dword [ebp-54H]                         ; 0623 _ FF. 75, AC
        push    dword [ebp-30H]                         ; 0626 _ FF. 75, D0
        call    showMouseInfo                           ; 0629 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 062E _ 83. C4, 10
        jmp     ?_001                                   ; 0631 _ E9, FFFFFD65

?_005:  sub     esp, 12                                 ; 0636 _ 83. EC, 0C
        push    timerInfo                               ; 0639 _ 68, 00000200(d)
        call    fifo8_status                            ; 063E _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0643 _ 83. C4, 10
        test    eax, eax                                ; 0646 _ 85. C0
        jz      ?_006                                   ; 0648 _ 74, 36
        call    io_sti                                  ; 064A _ E8, FFFFFFFC(rel)
        sub     esp, 12                                 ; 064F _ 83. EC, 0C
        push    timerInfo                               ; 0652 _ 68, 00000200(d)
        call    fifo8_get                               ; 0657 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 065C _ 83. C4, 10
        sub     esp, 8                                  ; 065F _ 83. EC, 08
        push    ?_159                                   ; 0662 _ 68, 0000001F(d)
        push    5                                       ; 0667 _ 6A, 05
        push    0                                       ; 0669 _ 6A, 00
        push    0                                       ; 066B _ 6A, 00
        push    dword [ebp-54H]                         ; 066D _ FF. 75, AC
        push    dword [ebp-30H]                         ; 0670 _ FF. 75, D0
        call    showString                              ; 0673 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0678 _ 83. C4, 20
        jmp     ?_001                                   ; 067B _ E9, FFFFFD1B

?_006:  sub     esp, 12                                 ; 0680 _ 83. EC, 0C
        push    timerInfo2.1698                         ; 0683 _ 68, 00000224(d)
        call    fifo8_status                            ; 0688 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 068D _ 83. C4, 10
        test    eax, eax                                ; 0690 _ 85. C0
        jz      ?_007                                   ; 0692 _ 74, 36
        call    io_sti                                  ; 0694 _ E8, FFFFFFFC(rel)
        sub     esp, 12                                 ; 0699 _ 83. EC, 0C
        push    timerInfo2.1698                         ; 069C _ 68, 00000224(d)
        call    fifo8_get                               ; 06A1 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 06A6 _ 83. C4, 10
        sub     esp, 8                                  ; 06A9 _ 83. EC, 08
        push    ?_160                                   ; 06AC _ 68, 00000027(d)
        push    5                                       ; 06B1 _ 6A, 05
        push    16                                      ; 06B3 _ 6A, 10
        push    0                                       ; 06B5 _ 6A, 00
        push    dword [ebp-54H]                         ; 06B7 _ FF. 75, AC
        push    dword [ebp-30H]                         ; 06BA _ FF. 75, D0
        call    showString                              ; 06BD _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 06C2 _ 83. C4, 20
        jmp     ?_001                                   ; 06C5 _ E9, FFFFFCD1

?_007:  sub     esp, 12                                 ; 06CA _ 83. EC, 0C
        push    timerInfo3.1699                         ; 06CD _ 68, 00000244(d)
        call    fifo8_status                            ; 06D2 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 06D7 _ 83. C4, 10
        test    eax, eax                                ; 06DA _ 85. C0
        je      ?_001                                   ; 06DC _ 0F 84, FFFFFCB9
        call    io_sti                                  ; 06E2 _ E8, FFFFFFFC(rel)
        sub     esp, 12                                 ; 06E7 _ 83. EC, 0C
        push    timerInfo3.1699                         ; 06EA _ 68, 00000244(d)
        call    fifo8_get                               ; 06EF _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 06F4 _ 83. C4, 10
        mov     dword [ebp-24H], eax                    ; 06F7 _ 89. 45, DC
        cmp     dword [ebp-24H], 0                      ; 06FA _ 83. 7D, DC, 00
        jz      ?_008                                   ; 06FE _ 74, 1E
        sub     esp, 4                                  ; 0700 _ 83. EC, 04
        push    0                                       ; 0703 _ 6A, 00
        push    timerInfo3.1699                         ; 0705 _ 68, 00000244(d)
        push    dword [ebp-44H]                         ; 070A _ FF. 75, BC
        call    timer_init                              ; 070D _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0712 _ 83. C4, 10
        mov     dword [ebp-64H], 0                      ; 0715 _ C7. 45, 9C, 00000000
        jmp     ?_009                                   ; 071C _ EB, 1C

?_008:  sub     esp, 4                                  ; 071E _ 83. EC, 04
        push    1                                       ; 0721 _ 6A, 01
        push    timerInfo3.1699                         ; 0723 _ 68, 00000244(d)
        push    dword [ebp-44H]                         ; 0728 _ FF. 75, BC
        call    timer_init                              ; 072B _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0730 _ 83. C4, 10
        mov     dword [ebp-64H], 7                      ; 0733 _ C7. 45, 9C, 00000007
?_009:  sub     esp, 8                                  ; 073A _ 83. EC, 08
        push    50                                      ; 073D _ 6A, 32
        push    dword [ebp-44H]                         ; 073F _ FF. 75, BC
        call    timer_setTime                           ; 0742 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0747 _ 83. C4, 10
        mov     eax, dword [pos.1711]                   ; 074A _ A1, 00000074(d)
        add     eax, 40                                 ; 074F _ 83. C0, 28
        mov     dword [ebp-7CH], eax                    ; 0752 _ 89. 45, 84
        mov     eax, dword [line.1710]                  ; 0755 _ A1, 00000264(d)
        lea     edi, [eax+0FH]                          ; 075A _ 8D. 78, 0F
        mov     eax, dword [pos.1711]                   ; 075D _ A1, 00000074(d)
        lea     esi, [eax+19H]                          ; 0762 _ 8D. 70, 19
        mov     eax, dword [line.1710]                  ; 0765 _ A1, 00000264(d)
        lea     ebx, [eax+8H]                           ; 076A _ 8D. 58, 08
        mov     eax, dword [ebp-64H]                    ; 076D _ 8B. 45, 9C
        movzx   ecx, al                                 ; 0770 _ 0F B6. C8
        mov     eax, dword [sheet_win]                  ; 0773 _ A1, 00000220(d)
        mov     edx, dword [eax+4H]                     ; 0778 _ 8B. 50, 04
        mov     eax, dword [sheet_win]                  ; 077B _ A1, 00000220(d)
        mov     eax, dword [eax]                        ; 0780 _ 8B. 00
        sub     esp, 4                                  ; 0782 _ 83. EC, 04
        push    dword [ebp-7CH]                         ; 0785 _ FF. 75, 84
        push    edi                                     ; 0788 _ 57
        push    esi                                     ; 0789 _ 56
        push    ebx                                     ; 078A _ 53
        push    ecx                                     ; 078B _ 51
        push    edx                                     ; 078C _ 52
        push    eax                                     ; 078D _ 50
        call    boxfill8                                ; 078E _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0793 _ 83. C4, 20
        mov     eax, dword [pos.1711]                   ; 0796 _ A1, 00000074(d)
        lea     esi, [eax+28H]                          ; 079B _ 8D. 70, 28
        mov     eax, dword [line.1710]                  ; 079E _ A1, 00000264(d)
        lea     ebx, [eax+0FH]                          ; 07A3 _ 8D. 58, 0F
        mov     eax, dword [pos.1711]                   ; 07A6 _ A1, 00000074(d)
        lea     ecx, [eax+19H]                          ; 07AB _ 8D. 48, 19
        mov     eax, dword [line.1710]                  ; 07AE _ A1, 00000264(d)
        lea     edx, [eax+8H]                           ; 07B3 _ 8D. 50, 08
        mov     eax, dword [sheet_win]                  ; 07B6 _ A1, 00000220(d)
        sub     esp, 8                                  ; 07BB _ 83. EC, 08
        push    esi                                     ; 07BE _ 56
        push    ebx                                     ; 07BF _ 53
        push    ecx                                     ; 07C0 _ 51
        push    edx                                     ; 07C1 _ 52
        push    eax                                     ; 07C2 _ 50
        push    dword [ebp-30H]                         ; 07C3 _ FF. 75, D0
        call    sheet_refresh                           ; 07C6 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 07CB _ 83. C4, 20
        jmp     ?_001                                   ; 07CE _ E9, FFFFFBC8
; CMain End of function

initBootInfo:; Function begin
        push    ebp                                     ; 07D3 _ 55
        mov     ebp, esp                                ; 07D4 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 07D6 _ 8B. 45, 08
        mov     dword [eax], -536870912                 ; 07D9 _ C7. 00, E0000000
        mov     eax, dword [ebp+8H]                     ; 07DF _ 8B. 45, 08
; Note: Length-changing prefix causes delay on Intel processors
        mov     word [eax+4H], 640                      ; 07E2 _ 66: C7. 40, 04, 0280
        mov     eax, dword [ebp+8H]                     ; 07E8 _ 8B. 45, 08
; Note: Length-changing prefix causes delay on Intel processors
        mov     word [eax+6H], 480                      ; 07EB _ 66: C7. 40, 06, 01E0
        nop                                             ; 07F1 _ 90
        pop     ebp                                     ; 07F2 _ 5D
        ret                                             ; 07F3 _ C3
; initBootInfo End of function

showString:; Function begin
        push    ebp                                     ; 07F4 _ 55
        mov     ebp, esp                                ; 07F5 _ 89. E5
        push    ebx                                     ; 07F7 _ 53
        sub     esp, 36                                 ; 07F8 _ 83. EC, 24
        mov     eax, dword [ebp+18H]                    ; 07FB _ 8B. 45, 18
        mov     byte [ebp-1CH], al                      ; 07FE _ 88. 45, E4
        mov     eax, dword [ebp+10H]                    ; 0801 _ 8B. 45, 10
        mov     dword [ebp-0CH], eax                    ; 0804 _ 89. 45, F4
        jmp     ?_011                                   ; 0807 _ EB, 3E

?_010:  mov     eax, dword [ebp+1CH]                    ; 0809 _ 8B. 45, 1C
        movzx   eax, byte [eax]                         ; 080C _ 0F B6. 00
        movzx   eax, al                                 ; 080F _ 0F B6. C0
        shl     eax, 4                                  ; 0812 _ C1. E0, 04
        lea     ebx, [systemFont+eax]                   ; 0815 _ 8D. 98, 00000000(d)
        movsx   ecx, byte [ebp-1CH]                     ; 081B _ 0F BE. 4D, E4
        mov     eax, dword [ebp+0CH]                    ; 081F _ 8B. 45, 0C
        mov     edx, dword [eax+4H]                     ; 0822 _ 8B. 50, 04
        mov     eax, dword [ebp+0CH]                    ; 0825 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 0828 _ 8B. 00
        sub     esp, 8                                  ; 082A _ 83. EC, 08
        push    ebx                                     ; 082D _ 53
        push    ecx                                     ; 082E _ 51
        push    dword [ebp+14H]                         ; 082F _ FF. 75, 14
        push    dword [ebp+10H]                         ; 0832 _ FF. 75, 10
        push    edx                                     ; 0835 _ 52
        push    eax                                     ; 0836 _ 50
        call    showFont8                               ; 0837 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 083C _ 83. C4, 20
        add     dword [ebp+10H], 8                      ; 083F _ 83. 45, 10, 08
        add     dword [ebp+1CH], 1                      ; 0843 _ 83. 45, 1C, 01
?_011:  mov     eax, dword [ebp+1CH]                    ; 0847 _ 8B. 45, 1C
        movzx   eax, byte [eax]                         ; 084A _ 0F B6. 00
        test    al, al                                  ; 084D _ 84. C0
        jnz     ?_010                                   ; 084F _ 75, B8
        mov     eax, dword [ebp+14H]                    ; 0851 _ 8B. 45, 14
        add     eax, 16                                 ; 0854 _ 83. C0, 10
        sub     esp, 8                                  ; 0857 _ 83. EC, 08
        push    eax                                     ; 085A _ 50
        push    dword [ebp+10H]                         ; 085B _ FF. 75, 10
        push    dword [ebp+14H]                         ; 085E _ FF. 75, 14
        push    dword [ebp-0CH]                         ; 0861 _ FF. 75, F4
        push    dword [ebp+0CH]                         ; 0864 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 0867 _ FF. 75, 08
        call    sheet_refresh                           ; 086A _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 086F _ 83. C4, 20
        nop                                             ; 0872 _ 90
        mov     ebx, dword [ebp-4H]                     ; 0873 _ 8B. 5D, FC
        leave                                           ; 0876 _ C9
        ret                                             ; 0877 _ C3
; showString End of function

init_screen8:; Function begin
        push    ebp                                     ; 0878 _ 55
        mov     ebp, esp                                ; 0879 _ 89. E5
        push    ebx                                     ; 087B _ 53
        sub     esp, 4                                  ; 087C _ 83. EC, 04
        mov     eax, dword [ebp+10H]                    ; 087F _ 8B. 45, 10
        lea     edx, [eax-19H]                          ; 0882 _ 8D. 50, E7
        mov     eax, dword [ebp+0CH]                    ; 0885 _ 8B. 45, 0C
        sub     eax, 1                                  ; 0888 _ 83. E8, 01
        sub     esp, 4                                  ; 088B _ 83. EC, 04
        push    edx                                     ; 088E _ 52
        push    eax                                     ; 088F _ 50
        push    0                                       ; 0890 _ 6A, 00
        push    0                                       ; 0892 _ 6A, 00
        push    14                                      ; 0894 _ 6A, 0E
        push    dword [ebp+0CH]                         ; 0896 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 0899 _ FF. 75, 08
        call    boxfill8                                ; 089C _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 08A1 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 08A4 _ 8B. 45, 10
        lea     ecx, [eax-18H]                          ; 08A7 _ 8D. 48, E8
        mov     eax, dword [ebp+0CH]                    ; 08AA _ 8B. 45, 0C
        lea     edx, [eax-1H]                           ; 08AD _ 8D. 50, FF
        mov     eax, dword [ebp+10H]                    ; 08B0 _ 8B. 45, 10
        sub     eax, 24                                 ; 08B3 _ 83. E8, 18
        sub     esp, 4                                  ; 08B6 _ 83. EC, 04
        push    ecx                                     ; 08B9 _ 51
        push    edx                                     ; 08BA _ 52
        push    eax                                     ; 08BB _ 50
        push    0                                       ; 08BC _ 6A, 00
        push    8                                       ; 08BE _ 6A, 08
        push    dword [ebp+0CH]                         ; 08C0 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 08C3 _ FF. 75, 08
        call    boxfill8                                ; 08C6 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 08CB _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 08CE _ 8B. 45, 10
        lea     ecx, [eax-17H]                          ; 08D1 _ 8D. 48, E9
        mov     eax, dword [ebp+0CH]                    ; 08D4 _ 8B. 45, 0C
        lea     edx, [eax-1H]                           ; 08D7 _ 8D. 50, FF
        mov     eax, dword [ebp+10H]                    ; 08DA _ 8B. 45, 10
        sub     eax, 23                                 ; 08DD _ 83. E8, 17
        sub     esp, 4                                  ; 08E0 _ 83. EC, 04
        push    ecx                                     ; 08E3 _ 51
        push    edx                                     ; 08E4 _ 52
        push    eax                                     ; 08E5 _ 50
        push    0                                       ; 08E6 _ 6A, 00
        push    7                                       ; 08E8 _ 6A, 07
        push    dword [ebp+0CH]                         ; 08EA _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 08ED _ FF. 75, 08
        call    boxfill8                                ; 08F0 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 08F5 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 08F8 _ 8B. 45, 10
        lea     ecx, [eax-1H]                           ; 08FB _ 8D. 48, FF
        mov     eax, dword [ebp+0CH]                    ; 08FE _ 8B. 45, 0C
        lea     edx, [eax-1H]                           ; 0901 _ 8D. 50, FF
        mov     eax, dword [ebp+10H]                    ; 0904 _ 8B. 45, 10
        sub     eax, 22                                 ; 0907 _ 83. E8, 16
        sub     esp, 4                                  ; 090A _ 83. EC, 04
        push    ecx                                     ; 090D _ 51
        push    edx                                     ; 090E _ 52
        push    eax                                     ; 090F _ 50
        push    0                                       ; 0910 _ 6A, 00
        push    8                                       ; 0912 _ 6A, 08
        push    dword [ebp+0CH]                         ; 0914 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 0917 _ FF. 75, 08
        call    boxfill8                                ; 091A _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 091F _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 0922 _ 8B. 45, 10
        lea     edx, [eax-14H]                          ; 0925 _ 8D. 50, EC
        mov     eax, dword [ebp+10H]                    ; 0928 _ 8B. 45, 10
        sub     eax, 20                                 ; 092B _ 83. E8, 14
        sub     esp, 4                                  ; 092E _ 83. EC, 04
        push    edx                                     ; 0931 _ 52
        push    51                                      ; 0932 _ 6A, 33
        push    eax                                     ; 0934 _ 50
        push    10                                      ; 0935 _ 6A, 0A
        push    7                                       ; 0937 _ 6A, 07
        push    dword [ebp+0CH]                         ; 0939 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 093C _ FF. 75, 08
        call    boxfill8                                ; 093F _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0944 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 0947 _ 8B. 45, 10
        lea     edx, [eax-4H]                           ; 094A _ 8D. 50, FC
        mov     eax, dword [ebp+10H]                    ; 094D _ 8B. 45, 10
        sub     eax, 20                                 ; 0950 _ 83. E8, 14
        sub     esp, 4                                  ; 0953 _ 83. EC, 04
        push    edx                                     ; 0956 _ 52
        push    9                                       ; 0957 _ 6A, 09
        push    eax                                     ; 0959 _ 50
        push    9                                       ; 095A _ 6A, 09
        push    7                                       ; 095C _ 6A, 07
        push    dword [ebp+0CH]                         ; 095E _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 0961 _ FF. 75, 08
        call    boxfill8                                ; 0964 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0969 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 096C _ 8B. 45, 10
        lea     edx, [eax-4H]                           ; 096F _ 8D. 50, FC
        mov     eax, dword [ebp+10H]                    ; 0972 _ 8B. 45, 10
        sub     eax, 4                                  ; 0975 _ 83. E8, 04
        sub     esp, 4                                  ; 0978 _ 83. EC, 04
        push    edx                                     ; 097B _ 52
        push    50                                      ; 097C _ 6A, 32
        push    eax                                     ; 097E _ 50
        push    10                                      ; 097F _ 6A, 0A
        push    15                                      ; 0981 _ 6A, 0F
        push    dword [ebp+0CH]                         ; 0983 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 0986 _ FF. 75, 08
        call    boxfill8                                ; 0989 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 098E _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 0991 _ 8B. 45, 10
        lea     edx, [eax-5H]                           ; 0994 _ 8D. 50, FB
        mov     eax, dword [ebp+10H]                    ; 0997 _ 8B. 45, 10
        sub     eax, 19                                 ; 099A _ 83. E8, 13
        sub     esp, 4                                  ; 099D _ 83. EC, 04
        push    edx                                     ; 09A0 _ 52
        push    50                                      ; 09A1 _ 6A, 32
        push    eax                                     ; 09A3 _ 50
        push    50                                      ; 09A4 _ 6A, 32
        push    15                                      ; 09A6 _ 6A, 0F
        push    dword [ebp+0CH]                         ; 09A8 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 09AB _ FF. 75, 08
        call    boxfill8                                ; 09AE _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 09B3 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 09B6 _ 8B. 45, 10
        lea     edx, [eax-3H]                           ; 09B9 _ 8D. 50, FD
        mov     eax, dword [ebp+10H]                    ; 09BC _ 8B. 45, 10
        sub     eax, 3                                  ; 09BF _ 83. E8, 03
        sub     esp, 4                                  ; 09C2 _ 83. EC, 04
        push    edx                                     ; 09C5 _ 52
        push    50                                      ; 09C6 _ 6A, 32
        push    eax                                     ; 09C8 _ 50
        push    10                                      ; 09C9 _ 6A, 0A
        push    0                                       ; 09CB _ 6A, 00
        push    dword [ebp+0CH]                         ; 09CD _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 09D0 _ FF. 75, 08
        call    boxfill8                                ; 09D3 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 09D8 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 09DB _ 8B. 45, 10
        lea     edx, [eax-3H]                           ; 09DE _ 8D. 50, FD
        mov     eax, dword [ebp+10H]                    ; 09E1 _ 8B. 45, 10
        sub     eax, 20                                 ; 09E4 _ 83. E8, 14
        sub     esp, 4                                  ; 09E7 _ 83. EC, 04
        push    edx                                     ; 09EA _ 52
        push    51                                      ; 09EB _ 6A, 33
        push    eax                                     ; 09ED _ 50
        push    51                                      ; 09EE _ 6A, 33
        push    0                                       ; 09F0 _ 6A, 00
        push    dword [ebp+0CH]                         ; 09F2 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 09F5 _ FF. 75, 08
        call    boxfill8                                ; 09F8 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 09FD _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 0A00 _ 8B. 45, 10
        lea     ebx, [eax-14H]                          ; 0A03 _ 8D. 58, EC
        mov     eax, dword [ebp+0CH]                    ; 0A06 _ 8B. 45, 0C
        lea     ecx, [eax-4H]                           ; 0A09 _ 8D. 48, FC
        mov     eax, dword [ebp+10H]                    ; 0A0C _ 8B. 45, 10
        lea     edx, [eax-14H]                          ; 0A0F _ 8D. 50, EC
        mov     eax, dword [ebp+0CH]                    ; 0A12 _ 8B. 45, 0C
        sub     eax, 47                                 ; 0A15 _ 83. E8, 2F
        sub     esp, 4                                  ; 0A18 _ 83. EC, 04
        push    ebx                                     ; 0A1B _ 53
        push    ecx                                     ; 0A1C _ 51
        push    edx                                     ; 0A1D _ 52
        push    eax                                     ; 0A1E _ 50
        push    15                                      ; 0A1F _ 6A, 0F
        push    dword [ebp+0CH]                         ; 0A21 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 0A24 _ FF. 75, 08
        call    boxfill8                                ; 0A27 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0A2C _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 0A2F _ 8B. 45, 10
        lea     ebx, [eax-3H]                           ; 0A32 _ 8D. 58, FD
        mov     eax, dword [ebp+0CH]                    ; 0A35 _ 8B. 45, 0C
        lea     ecx, [eax-2FH]                          ; 0A38 _ 8D. 48, D1
        mov     eax, dword [ebp+10H]                    ; 0A3B _ 8B. 45, 10
        lea     edx, [eax-14H]                          ; 0A3E _ 8D. 50, EC
        mov     eax, dword [ebp+0CH]                    ; 0A41 _ 8B. 45, 0C
        sub     eax, 47                                 ; 0A44 _ 83. E8, 2F
        sub     esp, 4                                  ; 0A47 _ 83. EC, 04
        push    ebx                                     ; 0A4A _ 53
        push    ecx                                     ; 0A4B _ 51
        push    edx                                     ; 0A4C _ 52
        push    eax                                     ; 0A4D _ 50
        push    15                                      ; 0A4E _ 6A, 0F
        push    dword [ebp+0CH]                         ; 0A50 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 0A53 _ FF. 75, 08
        call    boxfill8                                ; 0A56 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0A5B _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 0A5E _ 8B. 45, 10
        lea     ebx, [eax-3H]                           ; 0A61 _ 8D. 58, FD
        mov     eax, dword [ebp+0CH]                    ; 0A64 _ 8B. 45, 0C
        lea     ecx, [eax-4H]                           ; 0A67 _ 8D. 48, FC
        mov     eax, dword [ebp+10H]                    ; 0A6A _ 8B. 45, 10
        lea     edx, [eax-3H]                           ; 0A6D _ 8D. 50, FD
        mov     eax, dword [ebp+0CH]                    ; 0A70 _ 8B. 45, 0C
        sub     eax, 47                                 ; 0A73 _ 83. E8, 2F
        sub     esp, 4                                  ; 0A76 _ 83. EC, 04
        push    ebx                                     ; 0A79 _ 53
        push    ecx                                     ; 0A7A _ 51
        push    edx                                     ; 0A7B _ 52
        push    eax                                     ; 0A7C _ 50
        push    7                                       ; 0A7D _ 6A, 07
        push    dword [ebp+0CH]                         ; 0A7F _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 0A82 _ FF. 75, 08
        call    boxfill8                                ; 0A85 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0A8A _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 0A8D _ 8B. 45, 10
        lea     ebx, [eax-3H]                           ; 0A90 _ 8D. 58, FD
        mov     eax, dword [ebp+0CH]                    ; 0A93 _ 8B. 45, 0C
        lea     ecx, [eax-3H]                           ; 0A96 _ 8D. 48, FD
        mov     eax, dword [ebp+10H]                    ; 0A99 _ 8B. 45, 10
        lea     edx, [eax-14H]                          ; 0A9C _ 8D. 50, EC
        mov     eax, dword [ebp+0CH]                    ; 0A9F _ 8B. 45, 0C
        sub     eax, 3                                  ; 0AA2 _ 83. E8, 03
        sub     esp, 4                                  ; 0AA5 _ 83. EC, 04
        push    ebx                                     ; 0AA8 _ 53
        push    ecx                                     ; 0AA9 _ 51
        push    edx                                     ; 0AAA _ 52
        push    eax                                     ; 0AAB _ 50
        push    7                                       ; 0AAC _ 6A, 07
        push    dword [ebp+0CH]                         ; 0AAE _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 0AB1 _ FF. 75, 08
        call    boxfill8                                ; 0AB4 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0AB9 _ 83. C4, 20
        nop                                             ; 0ABC _ 90
        mov     ebx, dword [ebp-4H]                     ; 0ABD _ 8B. 5D, FC
        leave                                           ; 0AC0 _ C9
        ret                                             ; 0AC1 _ C3
; init_screen8 End of function

init_palette:; Function begin
        push    ebp                                     ; 0AC2 _ 55
        mov     ebp, esp                                ; 0AC3 _ 89. E5
        sub     esp, 24                                 ; 0AC5 _ 83. EC, 18
        mov     eax, dword [bootInfo]                   ; 0AC8 _ A1, 00000000(d)
        mov     dword [ebp-14H], eax                    ; 0ACD _ 89. 45, EC
        movzx   eax, word [?_170]                       ; 0AD0 _ 0F B7. 05, 00000004(d)
        cwde                                            ; 0AD7 _ 98
        mov     dword [ebp-10H], eax                    ; 0AD8 _ 89. 45, F0
        movzx   eax, word [?_171]                       ; 0ADB _ 0F B7. 05, 00000006(d)
        cwde                                            ; 0AE2 _ 98
        mov     dword [ebp-0CH], eax                    ; 0AE3 _ 89. 45, F4
        sub     esp, 4                                  ; 0AE6 _ 83. EC, 04
        push    table_rgb.1742                          ; 0AE9 _ 68, 00000080(d)
        push    15                                      ; 0AEE _ 6A, 0F
        push    0                                       ; 0AF0 _ 6A, 00
        call    set_palette                             ; 0AF2 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0AF7 _ 83. C4, 10
        nop                                             ; 0AFA _ 90
        leave                                           ; 0AFB _ C9
        ret                                             ; 0AFC _ C3
; init_palette End of function

set_palette:; Function begin
        push    ebp                                     ; 0AFD _ 55
        mov     ebp, esp                                ; 0AFE _ 89. E5
        sub     esp, 24                                 ; 0B00 _ 83. EC, 18
        call    io_load_eflags                          ; 0B03 _ E8, FFFFFFFC(rel)
        mov     dword [ebp-0CH], eax                    ; 0B08 _ 89. 45, F4
        call    io_cli                                  ; 0B0B _ E8, FFFFFFFC(rel)
        sub     esp, 8                                  ; 0B10 _ 83. EC, 08
        push    dword [ebp+8H]                          ; 0B13 _ FF. 75, 08
        push    968                                     ; 0B16 _ 68, 000003C8
        call    io_out8                                 ; 0B1B _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0B20 _ 83. C4, 10
        mov     eax, dword [ebp+8H]                     ; 0B23 _ 8B. 45, 08
        mov     dword [ebp-10H], eax                    ; 0B26 _ 89. 45, F0
        jmp     ?_013                                   ; 0B29 _ EB, 65

?_012:  mov     eax, dword [ebp+10H]                    ; 0B2B _ 8B. 45, 10
        movzx   eax, byte [eax]                         ; 0B2E _ 0F B6. 00
        shr     al, 2                                   ; 0B31 _ C0. E8, 02
        movzx   eax, al                                 ; 0B34 _ 0F B6. C0
        sub     esp, 8                                  ; 0B37 _ 83. EC, 08
        push    eax                                     ; 0B3A _ 50
        push    969                                     ; 0B3B _ 68, 000003C9
        call    io_out8                                 ; 0B40 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0B45 _ 83. C4, 10
        mov     eax, dword [ebp+10H]                    ; 0B48 _ 8B. 45, 10
        add     eax, 1                                  ; 0B4B _ 83. C0, 01
        movzx   eax, byte [eax]                         ; 0B4E _ 0F B6. 00
        shr     al, 2                                   ; 0B51 _ C0. E8, 02
        movzx   eax, al                                 ; 0B54 _ 0F B6. C0
        sub     esp, 8                                  ; 0B57 _ 83. EC, 08
        push    eax                                     ; 0B5A _ 50
        push    969                                     ; 0B5B _ 68, 000003C9
        call    io_out8                                 ; 0B60 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0B65 _ 83. C4, 10
        mov     eax, dword [ebp+10H]                    ; 0B68 _ 8B. 45, 10
        add     eax, 2                                  ; 0B6B _ 83. C0, 02
        movzx   eax, byte [eax]                         ; 0B6E _ 0F B6. 00
        shr     al, 2                                   ; 0B71 _ C0. E8, 02
        movzx   eax, al                                 ; 0B74 _ 0F B6. C0
        sub     esp, 8                                  ; 0B77 _ 83. EC, 08
        push    eax                                     ; 0B7A _ 50
        push    969                                     ; 0B7B _ 68, 000003C9
        call    io_out8                                 ; 0B80 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0B85 _ 83. C4, 10
        add     dword [ebp+10H], 3                      ; 0B88 _ 83. 45, 10, 03
        add     dword [ebp-10H], 1                      ; 0B8C _ 83. 45, F0, 01
?_013:  mov     eax, dword [ebp-10H]                    ; 0B90 _ 8B. 45, F0
        cmp     eax, dword [ebp+0CH]                    ; 0B93 _ 3B. 45, 0C
        jle     ?_012                                   ; 0B96 _ 7E, 93
        sub     esp, 12                                 ; 0B98 _ 83. EC, 0C
        push    dword [ebp-0CH]                         ; 0B9B _ FF. 75, F4
        call    io_store_eflags                         ; 0B9E _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0BA3 _ 83. C4, 10
        nop                                             ; 0BA6 _ 90
        leave                                           ; 0BA7 _ C9
        ret                                             ; 0BA8 _ C3
; set_palette End of function

boxfill8:; Function begin
        push    ebp                                     ; 0BA9 _ 55
        mov     ebp, esp                                ; 0BAA _ 89. E5
        sub     esp, 20                                 ; 0BAC _ 83. EC, 14
        mov     eax, dword [ebp+10H]                    ; 0BAF _ 8B. 45, 10
        mov     byte [ebp-14H], al                      ; 0BB2 _ 88. 45, EC
        mov     eax, dword [ebp+18H]                    ; 0BB5 _ 8B. 45, 18
        mov     dword [ebp-4H], eax                     ; 0BB8 _ 89. 45, FC
        jmp     ?_017                                   ; 0BBB _ EB, 33

?_014:  mov     eax, dword [ebp+14H]                    ; 0BBD _ 8B. 45, 14
        mov     dword [ebp-8H], eax                     ; 0BC0 _ 89. 45, F8
        jmp     ?_016                                   ; 0BC3 _ EB, 1F

?_015:  mov     eax, dword [ebp-4H]                     ; 0BC5 _ 8B. 45, FC
        imul    eax, dword [ebp+0CH]                    ; 0BC8 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 0BCC _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 0BCE _ 8B. 45, F8
        add     eax, edx                                ; 0BD1 _ 01. D0
        mov     edx, eax                                ; 0BD3 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 0BD5 _ 8B. 45, 08
        add     edx, eax                                ; 0BD8 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0BDA _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0BDE _ 88. 02
        add     dword [ebp-8H], 1                       ; 0BE0 _ 83. 45, F8, 01
?_016:  mov     eax, dword [ebp-8H]                     ; 0BE4 _ 8B. 45, F8
        cmp     eax, dword [ebp+1CH]                    ; 0BE7 _ 3B. 45, 1C
        jle     ?_015                                   ; 0BEA _ 7E, D9
        add     dword [ebp-4H], 1                       ; 0BEC _ 83. 45, FC, 01
?_017:  mov     eax, dword [ebp-4H]                     ; 0BF0 _ 8B. 45, FC
        cmp     eax, dword [ebp+20H]                    ; 0BF3 _ 3B. 45, 20
        jle     ?_014                                   ; 0BF6 _ 7E, C5
        nop                                             ; 0BF8 _ 90
        leave                                           ; 0BF9 _ C9
        ret                                             ; 0BFA _ C3
; boxfill8 End of function

make_textbox8:; Function begin
        push    ebp                                     ; 0BFB _ 55
        mov     ebp, esp                                ; 0BFC _ 89. E5
        push    edi                                     ; 0BFE _ 57
        push    esi                                     ; 0BFF _ 56
        push    ebx                                     ; 0C00 _ 53
        sub     esp, 16                                 ; 0C01 _ 83. EC, 10
        mov     edx, dword [ebp+0CH]                    ; 0C04 _ 8B. 55, 0C
        mov     eax, dword [ebp+14H]                    ; 0C07 _ 8B. 45, 14
        add     eax, edx                                ; 0C0A _ 01. D0
        mov     dword [ebp-14H], eax                    ; 0C0C _ 89. 45, EC
        mov     edx, dword [ebp+10H]                    ; 0C0F _ 8B. 55, 10
        mov     eax, dword [ebp+18H]                    ; 0C12 _ 8B. 45, 18
        add     eax, edx                                ; 0C15 _ 01. D0
        mov     dword [ebp-10H], eax                    ; 0C17 _ 89. 45, F0
        mov     eax, dword [ebp+10H]                    ; 0C1A _ 8B. 45, 10
        lea     edi, [eax-3H]                           ; 0C1D _ 8D. 78, FD
        mov     eax, dword [ebp-14H]                    ; 0C20 _ 8B. 45, EC
        lea     esi, [eax+1H]                           ; 0C23 _ 8D. 70, 01
        mov     eax, dword [ebp+10H]                    ; 0C26 _ 8B. 45, 10
        lea     ebx, [eax-3H]                           ; 0C29 _ 8D. 58, FD
        mov     eax, dword [ebp+0CH]                    ; 0C2C _ 8B. 45, 0C
        lea     ecx, [eax-2H]                           ; 0C2F _ 8D. 48, FE
        mov     eax, dword [ebp+8H]                     ; 0C32 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 0C35 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 0C38 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 0C3B _ 8B. 00
        push    edi                                     ; 0C3D _ 57
        push    esi                                     ; 0C3E _ 56
        push    ebx                                     ; 0C3F _ 53
        push    ecx                                     ; 0C40 _ 51
        push    15                                      ; 0C41 _ 6A, 0F
        push    edx                                     ; 0C43 _ 52
        push    eax                                     ; 0C44 _ 50
        call    boxfill8                                ; 0C45 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 0C4A _ 83. C4, 1C
        mov     eax, dword [ebp-10H]                    ; 0C4D _ 8B. 45, F0
        lea     edi, [eax+1H]                           ; 0C50 _ 8D. 78, 01
        mov     eax, dword [ebp+0CH]                    ; 0C53 _ 8B. 45, 0C
        lea     esi, [eax-3H]                           ; 0C56 _ 8D. 70, FD
        mov     eax, dword [ebp+10H]                    ; 0C59 _ 8B. 45, 10
        lea     ebx, [eax-3H]                           ; 0C5C _ 8D. 58, FD
        mov     eax, dword [ebp+0CH]                    ; 0C5F _ 8B. 45, 0C
        lea     ecx, [eax-3H]                           ; 0C62 _ 8D. 48, FD
        mov     eax, dword [ebp+8H]                     ; 0C65 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 0C68 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 0C6B _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 0C6E _ 8B. 00
        push    edi                                     ; 0C70 _ 57
        push    esi                                     ; 0C71 _ 56
        push    ebx                                     ; 0C72 _ 53
        push    ecx                                     ; 0C73 _ 51
        push    15                                      ; 0C74 _ 6A, 0F
        push    edx                                     ; 0C76 _ 52
        push    eax                                     ; 0C77 _ 50
        call    boxfill8                                ; 0C78 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 0C7D _ 83. C4, 1C
        mov     eax, dword [ebp-10H]                    ; 0C80 _ 8B. 45, F0
        lea     edi, [eax+2H]                           ; 0C83 _ 8D. 78, 02
        mov     eax, dword [ebp-14H]                    ; 0C86 _ 8B. 45, EC
        lea     esi, [eax+1H]                           ; 0C89 _ 8D. 70, 01
        mov     eax, dword [ebp-10H]                    ; 0C8C _ 8B. 45, F0
        lea     ebx, [eax+2H]                           ; 0C8F _ 8D. 58, 02
        mov     eax, dword [ebp+0CH]                    ; 0C92 _ 8B. 45, 0C
        lea     ecx, [eax-3H]                           ; 0C95 _ 8D. 48, FD
        mov     eax, dword [ebp+8H]                     ; 0C98 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 0C9B _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 0C9E _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 0CA1 _ 8B. 00
        push    edi                                     ; 0CA3 _ 57
        push    esi                                     ; 0CA4 _ 56
        push    ebx                                     ; 0CA5 _ 53
        push    ecx                                     ; 0CA6 _ 51
        push    7                                       ; 0CA7 _ 6A, 07
        push    edx                                     ; 0CA9 _ 52
        push    eax                                     ; 0CAA _ 50
        call    boxfill8                                ; 0CAB _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 0CB0 _ 83. C4, 1C
        mov     eax, dword [ebp-10H]                    ; 0CB3 _ 8B. 45, F0
        lea     edi, [eax+2H]                           ; 0CB6 _ 8D. 78, 02
        mov     eax, dword [ebp-14H]                    ; 0CB9 _ 8B. 45, EC
        lea     esi, [eax+2H]                           ; 0CBC _ 8D. 70, 02
        mov     eax, dword [ebp+10H]                    ; 0CBF _ 8B. 45, 10
        lea     ebx, [eax-3H]                           ; 0CC2 _ 8D. 58, FD
        mov     eax, dword [ebp-14H]                    ; 0CC5 _ 8B. 45, EC
        lea     ecx, [eax+2H]                           ; 0CC8 _ 8D. 48, 02
        mov     eax, dword [ebp+8H]                     ; 0CCB _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 0CCE _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 0CD1 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 0CD4 _ 8B. 00
        push    edi                                     ; 0CD6 _ 57
        push    esi                                     ; 0CD7 _ 56
        push    ebx                                     ; 0CD8 _ 53
        push    ecx                                     ; 0CD9 _ 51
        push    7                                       ; 0CDA _ 6A, 07
        push    edx                                     ; 0CDC _ 52
        push    eax                                     ; 0CDD _ 50
        call    boxfill8                                ; 0CDE _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 0CE3 _ 83. C4, 1C
        mov     eax, dword [ebp+10H]                    ; 0CE6 _ 8B. 45, 10
        lea     esi, [eax-2H]                           ; 0CE9 _ 8D. 70, FE
        mov     eax, dword [ebp+10H]                    ; 0CEC _ 8B. 45, 10
        lea     ebx, [eax-2H]                           ; 0CEF _ 8D. 58, FE
        mov     eax, dword [ebp+0CH]                    ; 0CF2 _ 8B. 45, 0C
        lea     ecx, [eax-1H]                           ; 0CF5 _ 8D. 48, FF
        mov     eax, dword [ebp+8H]                     ; 0CF8 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 0CFB _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 0CFE _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 0D01 _ 8B. 00
        push    esi                                     ; 0D03 _ 56
        push    dword [ebp-14H]                         ; 0D04 _ FF. 75, EC
        push    ebx                                     ; 0D07 _ 53
        push    ecx                                     ; 0D08 _ 51
        push    0                                       ; 0D09 _ 6A, 00
        push    edx                                     ; 0D0B _ 52
        push    eax                                     ; 0D0C _ 50
        call    boxfill8                                ; 0D0D _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 0D12 _ 83. C4, 1C
        mov     eax, dword [ebp+0CH]                    ; 0D15 _ 8B. 45, 0C
        lea     esi, [eax-2H]                           ; 0D18 _ 8D. 70, FE
        mov     eax, dword [ebp+10H]                    ; 0D1B _ 8B. 45, 10
        lea     ebx, [eax-2H]                           ; 0D1E _ 8D. 58, FE
        mov     eax, dword [ebp+0CH]                    ; 0D21 _ 8B. 45, 0C
        lea     ecx, [eax-2H]                           ; 0D24 _ 8D. 48, FE
        mov     eax, dword [ebp+8H]                     ; 0D27 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 0D2A _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 0D2D _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 0D30 _ 8B. 00
        push    dword [ebp-10H]                         ; 0D32 _ FF. 75, F0
        push    esi                                     ; 0D35 _ 56
        push    ebx                                     ; 0D36 _ 53
        push    ecx                                     ; 0D37 _ 51
        push    0                                       ; 0D38 _ 6A, 00
        push    edx                                     ; 0D3A _ 52
        push    eax                                     ; 0D3B _ 50
        call    boxfill8                                ; 0D3C _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 0D41 _ 83. C4, 1C
        mov     eax, dword [ebp-10H]                    ; 0D44 _ 8B. 45, F0
        lea     esi, [eax+1H]                           ; 0D47 _ 8D. 70, 01
        mov     eax, dword [ebp-10H]                    ; 0D4A _ 8B. 45, F0
        lea     ebx, [eax+1H]                           ; 0D4D _ 8D. 58, 01
        mov     eax, dword [ebp+0CH]                    ; 0D50 _ 8B. 45, 0C
        lea     ecx, [eax-2H]                           ; 0D53 _ 8D. 48, FE
        mov     eax, dword [ebp+8H]                     ; 0D56 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 0D59 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 0D5C _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 0D5F _ 8B. 00
        push    esi                                     ; 0D61 _ 56
        push    dword [ebp-14H]                         ; 0D62 _ FF. 75, EC
        push    ebx                                     ; 0D65 _ 53
        push    ecx                                     ; 0D66 _ 51
        push    8                                       ; 0D67 _ 6A, 08
        push    edx                                     ; 0D69 _ 52
        push    eax                                     ; 0D6A _ 50
        call    boxfill8                                ; 0D6B _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 0D70 _ 83. C4, 1C
        mov     eax, dword [ebp-10H]                    ; 0D73 _ 8B. 45, F0
        lea     edi, [eax+1H]                           ; 0D76 _ 8D. 78, 01
        mov     eax, dword [ebp-14H]                    ; 0D79 _ 8B. 45, EC
        lea     esi, [eax+1H]                           ; 0D7C _ 8D. 70, 01
        mov     eax, dword [ebp+10H]                    ; 0D7F _ 8B. 45, 10
        lea     ebx, [eax-2H]                           ; 0D82 _ 8D. 58, FE
        mov     eax, dword [ebp-14H]                    ; 0D85 _ 8B. 45, EC
        lea     ecx, [eax+1H]                           ; 0D88 _ 8D. 48, 01
        mov     eax, dword [ebp+8H]                     ; 0D8B _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 0D8E _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 0D91 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 0D94 _ 8B. 00
        push    edi                                     ; 0D96 _ 57
        push    esi                                     ; 0D97 _ 56
        push    ebx                                     ; 0D98 _ 53
        push    ecx                                     ; 0D99 _ 51
        push    8                                       ; 0D9A _ 6A, 08
        push    edx                                     ; 0D9C _ 52
        push    eax                                     ; 0D9D _ 50
        call    boxfill8                                ; 0D9E _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 0DA3 _ 83. C4, 1C
        mov     eax, dword [ebp+10H]                    ; 0DA6 _ 8B. 45, 10
        lea     esi, [eax-1H]                           ; 0DA9 _ 8D. 70, FF
        mov     eax, dword [ebp+0CH]                    ; 0DAC _ 8B. 45, 0C
        lea     ebx, [eax-1H]                           ; 0DAF _ 8D. 58, FF
        mov     eax, dword [ebp+1CH]                    ; 0DB2 _ 8B. 45, 1C
        movzx   ecx, al                                 ; 0DB5 _ 0F B6. C8
        mov     eax, dword [ebp+8H]                     ; 0DB8 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 0DBB _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 0DBE _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 0DC1 _ 8B. 00
        push    dword [ebp-10H]                         ; 0DC3 _ FF. 75, F0
        push    dword [ebp-14H]                         ; 0DC6 _ FF. 75, EC
        push    esi                                     ; 0DC9 _ 56
        push    ebx                                     ; 0DCA _ 53
        push    ecx                                     ; 0DCB _ 51
        push    edx                                     ; 0DCC _ 52
        push    eax                                     ; 0DCD _ 50
        call    boxfill8                                ; 0DCE _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 0DD3 _ 83. C4, 1C
        nop                                             ; 0DD6 _ 90
        lea     esp, [ebp-0CH]                          ; 0DD7 _ 8D. 65, F4
        pop     ebx                                     ; 0DDA _ 5B
        pop     esi                                     ; 0DDB _ 5E
        pop     edi                                     ; 0DDC _ 5F
        pop     ebp                                     ; 0DDD _ 5D
        ret                                             ; 0DDE _ C3
; make_textbox8 End of function

showFont8:; Function begin
        push    ebp                                     ; 0DDF _ 55
        mov     ebp, esp                                ; 0DE0 _ 89. E5
        sub     esp, 20                                 ; 0DE2 _ 83. EC, 14
        mov     eax, dword [ebp+18H]                    ; 0DE5 _ 8B. 45, 18
        mov     byte [ebp-14H], al                      ; 0DE8 _ 88. 45, EC
        mov     dword [ebp-4H], 0                       ; 0DEB _ C7. 45, FC, 00000000
        jmp     ?_027                                   ; 0DF2 _ E9, 0000016C

?_018:  mov     edx, dword [ebp-4H]                     ; 0DF7 _ 8B. 55, FC
        mov     eax, dword [ebp+1CH]                    ; 0DFA _ 8B. 45, 1C
        add     eax, edx                                ; 0DFD _ 01. D0
        movzx   eax, byte [eax]                         ; 0DFF _ 0F B6. 00
        mov     byte [ebp-5H], al                       ; 0E02 _ 88. 45, FB
        cmp     byte [ebp-5H], 0                        ; 0E05 _ 80. 7D, FB, 00
        jns     ?_019                                   ; 0E09 _ 79, 20
        mov     edx, dword [ebp+14H]                    ; 0E0B _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 0E0E _ 8B. 45, FC
        add     eax, edx                                ; 0E11 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 0E13 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 0E17 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 0E19 _ 8B. 45, 10
        add     eax, edx                                ; 0E1C _ 01. D0
        mov     edx, eax                                ; 0E1E _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 0E20 _ 8B. 45, 08
        add     edx, eax                                ; 0E23 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0E25 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0E29 _ 88. 02
?_019:  movsx   eax, byte [ebp-5H]                      ; 0E2B _ 0F BE. 45, FB
        and     eax, 40H                                ; 0E2F _ 83. E0, 40
        test    eax, eax                                ; 0E32 _ 85. C0
        jz      ?_020                                   ; 0E34 _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 0E36 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 0E39 _ 8B. 45, FC
        add     eax, edx                                ; 0E3C _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 0E3E _ 0F AF. 45, 0C
        mov     edx, eax                                ; 0E42 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 0E44 _ 8B. 45, 10
        add     eax, edx                                ; 0E47 _ 01. D0
        lea     edx, [eax+1H]                           ; 0E49 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 0E4C _ 8B. 45, 08
        add     edx, eax                                ; 0E4F _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0E51 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0E55 _ 88. 02
?_020:  movsx   eax, byte [ebp-5H]                      ; 0E57 _ 0F BE. 45, FB
        and     eax, 20H                                ; 0E5B _ 83. E0, 20
        test    eax, eax                                ; 0E5E _ 85. C0
        jz      ?_021                                   ; 0E60 _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 0E62 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 0E65 _ 8B. 45, FC
        add     eax, edx                                ; 0E68 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 0E6A _ 0F AF. 45, 0C
        mov     edx, eax                                ; 0E6E _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 0E70 _ 8B. 45, 10
        add     eax, edx                                ; 0E73 _ 01. D0
        lea     edx, [eax+2H]                           ; 0E75 _ 8D. 50, 02
        mov     eax, dword [ebp+8H]                     ; 0E78 _ 8B. 45, 08
        add     edx, eax                                ; 0E7B _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0E7D _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0E81 _ 88. 02
?_021:  movsx   eax, byte [ebp-5H]                      ; 0E83 _ 0F BE. 45, FB
        and     eax, 10H                                ; 0E87 _ 83. E0, 10
        test    eax, eax                                ; 0E8A _ 85. C0
        jz      ?_022                                   ; 0E8C _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 0E8E _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 0E91 _ 8B. 45, FC
        add     eax, edx                                ; 0E94 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 0E96 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 0E9A _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 0E9C _ 8B. 45, 10
        add     eax, edx                                ; 0E9F _ 01. D0
        lea     edx, [eax+3H]                           ; 0EA1 _ 8D. 50, 03
        mov     eax, dword [ebp+8H]                     ; 0EA4 _ 8B. 45, 08
        add     edx, eax                                ; 0EA7 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0EA9 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0EAD _ 88. 02
?_022:  movsx   eax, byte [ebp-5H]                      ; 0EAF _ 0F BE. 45, FB
        and     eax, 08H                                ; 0EB3 _ 83. E0, 08
        test    eax, eax                                ; 0EB6 _ 85. C0
        jz      ?_023                                   ; 0EB8 _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 0EBA _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 0EBD _ 8B. 45, FC
        add     eax, edx                                ; 0EC0 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 0EC2 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 0EC6 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 0EC8 _ 8B. 45, 10
        add     eax, edx                                ; 0ECB _ 01. D0
        lea     edx, [eax+4H]                           ; 0ECD _ 8D. 50, 04
        mov     eax, dword [ebp+8H]                     ; 0ED0 _ 8B. 45, 08
        add     edx, eax                                ; 0ED3 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0ED5 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0ED9 _ 88. 02
?_023:  movsx   eax, byte [ebp-5H]                      ; 0EDB _ 0F BE. 45, FB
        and     eax, 04H                                ; 0EDF _ 83. E0, 04
        test    eax, eax                                ; 0EE2 _ 85. C0
        jz      ?_024                                   ; 0EE4 _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 0EE6 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 0EE9 _ 8B. 45, FC
        add     eax, edx                                ; 0EEC _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 0EEE _ 0F AF. 45, 0C
        mov     edx, eax                                ; 0EF2 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 0EF4 _ 8B. 45, 10
        add     eax, edx                                ; 0EF7 _ 01. D0
        lea     edx, [eax+5H]                           ; 0EF9 _ 8D. 50, 05
        mov     eax, dword [ebp+8H]                     ; 0EFC _ 8B. 45, 08
        add     edx, eax                                ; 0EFF _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0F01 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0F05 _ 88. 02
?_024:  movsx   eax, byte [ebp-5H]                      ; 0F07 _ 0F BE. 45, FB
        and     eax, 02H                                ; 0F0B _ 83. E0, 02
        test    eax, eax                                ; 0F0E _ 85. C0
        jz      ?_025                                   ; 0F10 _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 0F12 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 0F15 _ 8B. 45, FC
        add     eax, edx                                ; 0F18 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 0F1A _ 0F AF. 45, 0C
        mov     edx, eax                                ; 0F1E _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 0F20 _ 8B. 45, 10
        add     eax, edx                                ; 0F23 _ 01. D0
        lea     edx, [eax+6H]                           ; 0F25 _ 8D. 50, 06
        mov     eax, dword [ebp+8H]                     ; 0F28 _ 8B. 45, 08
        add     edx, eax                                ; 0F2B _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0F2D _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0F31 _ 88. 02
?_025:  movsx   eax, byte [ebp-5H]                      ; 0F33 _ 0F BE. 45, FB
        and     eax, 01H                                ; 0F37 _ 83. E0, 01
        test    eax, eax                                ; 0F3A _ 85. C0
        jz      ?_026                                   ; 0F3C _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 0F3E _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 0F41 _ 8B. 45, FC
        add     eax, edx                                ; 0F44 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 0F46 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 0F4A _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 0F4C _ 8B. 45, 10
        add     eax, edx                                ; 0F4F _ 01. D0
        lea     edx, [eax+7H]                           ; 0F51 _ 8D. 50, 07
        mov     eax, dword [ebp+8H]                     ; 0F54 _ 8B. 45, 08
        add     edx, eax                                ; 0F57 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0F59 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0F5D _ 88. 02
?_026:  add     dword [ebp-4H], 1                       ; 0F5F _ 83. 45, FC, 01
?_027:  cmp     dword [ebp-4H], 15                      ; 0F63 _ 83. 7D, FC, 0F
        jle     ?_018                                   ; 0F67 _ 0F 8E, FFFFFE8A
        nop                                             ; 0F6D _ 90
        leave                                           ; 0F6E _ C9
        ret                                             ; 0F6F _ C3
; showFont8 End of function

init_mouse_cursor:; Function begin
        push    ebp                                     ; 0F70 _ 55
        mov     ebp, esp                                ; 0F71 _ 89. E5
        sub     esp, 20                                 ; 0F73 _ 83. EC, 14
        mov     eax, dword [ebp+0CH]                    ; 0F76 _ 8B. 45, 0C
        mov     byte [ebp-14H], al                      ; 0F79 _ 88. 45, EC
        mov     dword [ebp-4H], 0                       ; 0F7C _ C7. 45, FC, 00000000
        jmp     ?_034                                   ; 0F83 _ E9, 000000B1

?_028:  mov     dword [ebp-8H], 0                       ; 0F88 _ C7. 45, F8, 00000000
        jmp     ?_033                                   ; 0F8F _ E9, 00000097

?_029:  mov     eax, dword [ebp-4H]                     ; 0F94 _ 8B. 45, FC
        shl     eax, 4                                  ; 0F97 _ C1. E0, 04
        mov     edx, eax                                ; 0F9A _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 0F9C _ 8B. 45, F8
        add     eax, edx                                ; 0F9F _ 01. D0
        add     eax, cursor.1797                        ; 0FA1 _ 05, 000000C0(d)
        movzx   eax, byte [eax]                         ; 0FA6 _ 0F B6. 00
        cmp     al, 42                                  ; 0FA9 _ 3C, 2A
        jnz     ?_030                                   ; 0FAB _ 75, 17
        mov     eax, dword [ebp-4H]                     ; 0FAD _ 8B. 45, FC
        shl     eax, 4                                  ; 0FB0 _ C1. E0, 04
        mov     edx, eax                                ; 0FB3 _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 0FB5 _ 8B. 45, F8
        add     eax, edx                                ; 0FB8 _ 01. D0
        mov     edx, eax                                ; 0FBA _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 0FBC _ 8B. 45, 08
        add     eax, edx                                ; 0FBF _ 01. D0
        mov     byte [eax], 0                           ; 0FC1 _ C6. 00, 00
?_030:  mov     eax, dword [ebp-4H]                     ; 0FC4 _ 8B. 45, FC
        shl     eax, 4                                  ; 0FC7 _ C1. E0, 04
        mov     edx, eax                                ; 0FCA _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 0FCC _ 8B. 45, F8
        add     eax, edx                                ; 0FCF _ 01. D0
        add     eax, cursor.1797                        ; 0FD1 _ 05, 000000C0(d)
        movzx   eax, byte [eax]                         ; 0FD6 _ 0F B6. 00
        cmp     al, 79                                  ; 0FD9 _ 3C, 4F
        jnz     ?_031                                   ; 0FDB _ 75, 17
        mov     eax, dword [ebp-4H]                     ; 0FDD _ 8B. 45, FC
        shl     eax, 4                                  ; 0FE0 _ C1. E0, 04
        mov     edx, eax                                ; 0FE3 _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 0FE5 _ 8B. 45, F8
        add     eax, edx                                ; 0FE8 _ 01. D0
        mov     edx, eax                                ; 0FEA _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 0FEC _ 8B. 45, 08
        add     eax, edx                                ; 0FEF _ 01. D0
        mov     byte [eax], 7                           ; 0FF1 _ C6. 00, 07
?_031:  mov     eax, dword [ebp-4H]                     ; 0FF4 _ 8B. 45, FC
        shl     eax, 4                                  ; 0FF7 _ C1. E0, 04
        mov     edx, eax                                ; 0FFA _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 0FFC _ 8B. 45, F8
        add     eax, edx                                ; 0FFF _ 01. D0
        add     eax, cursor.1797                        ; 1001 _ 05, 000000C0(d)
        movzx   eax, byte [eax]                         ; 1006 _ 0F B6. 00
        cmp     al, 46                                  ; 1009 _ 3C, 2E
        jnz     ?_032                                   ; 100B _ 75, 1A
        mov     eax, dword [ebp-4H]                     ; 100D _ 8B. 45, FC
        shl     eax, 4                                  ; 1010 _ C1. E0, 04
        mov     edx, eax                                ; 1013 _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 1015 _ 8B. 45, F8
        add     eax, edx                                ; 1018 _ 01. D0
        mov     edx, eax                                ; 101A _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 101C _ 8B. 45, 08
        add     edx, eax                                ; 101F _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 1021 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 1025 _ 88. 02
?_032:  add     dword [ebp-8H], 1                       ; 1027 _ 83. 45, F8, 01
?_033:  cmp     dword [ebp-8H], 15                      ; 102B _ 83. 7D, F8, 0F
        jle     ?_029                                   ; 102F _ 0F 8E, FFFFFF5F
        add     dword [ebp-4H], 1                       ; 1035 _ 83. 45, FC, 01
?_034:  cmp     dword [ebp-4H], 15                      ; 1039 _ 83. 7D, FC, 0F
        jle     ?_028                                   ; 103D _ 0F 8E, FFFFFF45
        nop                                             ; 1043 _ 90
        leave                                           ; 1044 _ C9
        ret                                             ; 1045 _ C3
; init_mouse_cursor End of function

putblock:; Function begin
        push    ebp                                     ; 1046 _ 55
        mov     ebp, esp                                ; 1047 _ 89. E5
        push    ebx                                     ; 1049 _ 53
        sub     esp, 16                                 ; 104A _ 83. EC, 10
        mov     dword [ebp-8H], 0                       ; 104D _ C7. 45, F8, 00000000
        jmp     ?_038                                   ; 1054 _ EB, 50

?_035:  mov     dword [ebp-0CH], 0                      ; 1056 _ C7. 45, F4, 00000000
        jmp     ?_037                                   ; 105D _ EB, 3B

?_036:  mov     eax, dword [ebp-8H]                     ; 105F _ 8B. 45, F8
        imul    eax, dword [ebp+24H]                    ; 1062 _ 0F AF. 45, 24
        mov     edx, eax                                ; 1066 _ 89. C2
        mov     eax, dword [ebp-0CH]                    ; 1068 _ 8B. 45, F4
        add     eax, edx                                ; 106B _ 01. D0
        mov     edx, eax                                ; 106D _ 89. C2
        mov     eax, dword [ebp+20H]                    ; 106F _ 8B. 45, 20
        add     eax, edx                                ; 1072 _ 01. D0
        mov     ecx, dword [ebp+1CH]                    ; 1074 _ 8B. 4D, 1C
        mov     edx, dword [ebp-8H]                     ; 1077 _ 8B. 55, F8
        add     edx, ecx                                ; 107A _ 01. CA
        imul    edx, dword [ebp+0CH]                    ; 107C _ 0F AF. 55, 0C
        mov     ebx, dword [ebp+18H]                    ; 1080 _ 8B. 5D, 18
        mov     ecx, dword [ebp-0CH]                    ; 1083 _ 8B. 4D, F4
        add     ecx, ebx                                ; 1086 _ 01. D9
        add     edx, ecx                                ; 1088 _ 01. CA
        mov     ecx, edx                                ; 108A _ 89. D1
        mov     edx, dword [ebp+8H]                     ; 108C _ 8B. 55, 08
        add     edx, ecx                                ; 108F _ 01. CA
        movzx   eax, byte [eax]                         ; 1091 _ 0F B6. 00
        mov     byte [edx], al                          ; 1094 _ 88. 02
        add     dword [ebp-0CH], 1                      ; 1096 _ 83. 45, F4, 01
?_037:  mov     eax, dword [ebp-0CH]                    ; 109A _ 8B. 45, F4
        cmp     eax, dword [ebp+10H]                    ; 109D _ 3B. 45, 10
        jl      ?_036                                   ; 10A0 _ 7C, BD
        add     dword [ebp-8H], 1                       ; 10A2 _ 83. 45, F8, 01
?_038:  mov     eax, dword [ebp-8H]                     ; 10A6 _ 8B. 45, F8
        cmp     eax, dword [ebp+14H]                    ; 10A9 _ 3B. 45, 14
        jl      ?_035                                   ; 10AC _ 7C, A8
        nop                                             ; 10AE _ 90
        add     esp, 16                                 ; 10AF _ 83. C4, 10
        pop     ebx                                     ; 10B2 _ 5B
        pop     ebp                                     ; 10B3 _ 5D
        ret                                             ; 10B4 _ C3
; putblock End of function

intHandlerFromC:; Function begin
        push    ebp                                     ; 10B5 _ 55
        mov     ebp, esp                                ; 10B6 _ 89. E5
        sub     esp, 24                                 ; 10B8 _ 83. EC, 18
        mov     eax, dword [bootInfo]                   ; 10BB _ A1, 00000000(d)
        mov     dword [ebp-14H], eax                    ; 10C0 _ 89. 45, EC
        movzx   eax, word [?_170]                       ; 10C3 _ 0F B7. 05, 00000004(d)
        cwde                                            ; 10CA _ 98
        mov     dword [ebp-10H], eax                    ; 10CB _ 89. 45, F0
        movzx   eax, word [?_171]                       ; 10CE _ 0F B7. 05, 00000006(d)
        cwde                                            ; 10D5 _ 98
        mov     dword [ebp-0CH], eax                    ; 10D6 _ 89. 45, F4
        sub     esp, 8                                  ; 10D9 _ 83. EC, 08
        push    32                                      ; 10DC _ 6A, 20
        push    32                                      ; 10DE _ 6A, 20
        call    io_out8                                 ; 10E0 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 10E5 _ 83. C4, 10
        mov     byte [ebp-15H], 0                       ; 10E8 _ C6. 45, EB, 00
        sub     esp, 12                                 ; 10EC _ 83. EC, 0C
        push    96                                      ; 10EF _ 6A, 60
        call    io_in8                                  ; 10F1 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 10F6 _ 83. C4, 10
        mov     byte [ebp-15H], al                      ; 10F9 _ 88. 45, EB
        movzx   eax, byte [ebp-15H]                     ; 10FC _ 0F B6. 45, EB
        sub     esp, 8                                  ; 1100 _ 83. EC, 08
        push    eax                                     ; 1103 _ 50
        push    keyInfo                                 ; 1104 _ 68, 00000008(d)
        call    fifo8_put                               ; 1109 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 110E _ 83. C4, 10
        nop                                             ; 1111 _ 90
        leave                                           ; 1112 _ C9
        ret                                             ; 1113 _ C3
; intHandlerFromC End of function

charToHex:; Function begin
        push    ebp                                     ; 1114 _ 55
        mov     ebp, esp                                ; 1115 _ 89. E5
        sub     esp, 40                                 ; 1117 _ 83. EC, 28
        mov     eax, dword [ebp+8H]                     ; 111A _ 8B. 45, 08
        mov     byte [ebp-1CH], al                      ; 111D _ 88. 45, E4
        movzx   eax, byte [ebp-1CH]                     ; 1120 _ 0F B6. 45, E4
        and     eax, 0FH                                ; 1124 _ 83. E0, 0F
        mov     byte [ebp-9H], al                       ; 1127 _ 88. 45, F7
        movsx   eax, byte [ebp-9H]                      ; 112A _ 0F BE. 45, F7
        sub     esp, 12                                 ; 112E _ 83. EC, 0C
        push    eax                                     ; 1131 _ 50
        call    charToVal                               ; 1132 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1137 _ 83. C4, 10
        mov     byte [?_169], al                        ; 113A _ A2, 00000003(d)
        movzx   eax, byte [ebp-1CH]                     ; 113F _ 0F B6. 45, E4
        shr     al, 4                                   ; 1143 _ C0. E8, 04
        mov     byte [ebp-1CH], al                      ; 1146 _ 88. 45, E4
        movzx   eax, byte [ebp-1CH]                     ; 1149 _ 0F B6. 45, E4
        movsx   eax, al                                 ; 114D _ 0F BE. C0
        sub     esp, 12                                 ; 1150 _ 83. EC, 0C
        push    eax                                     ; 1153 _ 50
        call    charToVal                               ; 1154 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1159 _ 83. C4, 10
        mov     byte [?_168], al                        ; 115C _ A2, 00000002(d)
        mov     eax, keyVal                             ; 1161 _ B8, 00000000(d)
        leave                                           ; 1166 _ C9
        ret                                             ; 1167 _ C3
; charToHex End of function

charToVal:; Function begin
        push    ebp                                     ; 1168 _ 55
        mov     ebp, esp                                ; 1169 _ 89. E5
        sub     esp, 4                                  ; 116B _ 83. EC, 04
        mov     eax, dword [ebp+8H]                     ; 116E _ 8B. 45, 08
        mov     byte [ebp-4H], al                       ; 1171 _ 88. 45, FC
        cmp     byte [ebp-4H], 9                        ; 1174 _ 80. 7D, FC, 09
        jle     ?_039                                   ; 1178 _ 7E, 09
        movzx   eax, byte [ebp-4H]                      ; 117A _ 0F B6. 45, FC
        add     eax, 55                                 ; 117E _ 83. C0, 37
        jmp     ?_040                                   ; 1181 _ EB, 07

?_039:  movzx   eax, byte [ebp-4H]                      ; 1183 _ 0F B6. 45, FC
        add     eax, 48                                 ; 1187 _ 83. C0, 30
?_040:  leave                                           ; 118A _ C9
        ret                                             ; 118B _ C3
; charToVal End of function

intToHexStr:; Function begin
        push    ebp                                     ; 118C _ 55
        mov     ebp, esp                                ; 118D _ 89. E5
        sub     esp, 16                                 ; 118F _ 83. EC, 10
        mov     byte [str.1840], 48                     ; 1192 _ C6. 05, 00000268(d), 30
        mov     byte [?_173], 120                       ; 1199 _ C6. 05, 00000269(d), 78
        mov     byte [?_174], 0                         ; 11A0 _ C6. 05, 00000272(d), 00
        mov     dword [ebp-0CH], 2                      ; 11A7 _ C7. 45, F4, 00000002
        jmp     ?_042                                   ; 11AE _ EB, 0F

?_041:  mov     eax, dword [ebp-0CH]                    ; 11B0 _ 8B. 45, F4
        add     eax, str.1840                           ; 11B3 _ 05, 00000268(d)
        mov     byte [eax], 48                          ; 11B8 _ C6. 00, 30
        add     dword [ebp-0CH], 1                      ; 11BB _ 83. 45, F4, 01
?_042:  cmp     dword [ebp-0CH], 9                      ; 11BF _ 83. 7D, F4, 09
        jle     ?_041                                   ; 11C3 _ 7E, EB
        mov     dword [ebp-8H], 9                       ; 11C5 _ C7. 45, F8, 00000009
        jmp     ?_045                                   ; 11CC _ EB, 48

?_043:  mov     eax, dword [ebp+8H]                     ; 11CE _ 8B. 45, 08
        and     eax, 0FH                                ; 11D1 _ 83. E0, 0F
        mov     dword [ebp-4H], eax                     ; 11D4 _ 89. 45, FC
        mov     eax, dword [ebp+8H]                     ; 11D7 _ 8B. 45, 08
        shr     eax, 4                                  ; 11DA _ C1. E8, 04
        mov     dword [ebp+8H], eax                     ; 11DD _ 89. 45, 08
        cmp     dword [ebp-4H], 9                       ; 11E0 _ 83. 7D, FC, 09
        jle     ?_044                                   ; 11E4 _ 7E, 19
        mov     eax, dword [ebp-4H]                     ; 11E6 _ 8B. 45, FC
        lea     ecx, [eax+37H]                          ; 11E9 _ 8D. 48, 37
        mov     eax, dword [ebp-8H]                     ; 11EC _ 8B. 45, F8
        lea     edx, [eax-1H]                           ; 11EF _ 8D. 50, FF
        mov     dword [ebp-8H], edx                     ; 11F2 _ 89. 55, F8
        mov     edx, ecx                                ; 11F5 _ 89. CA
        mov     byte [str.1840+eax], dl                 ; 11F7 _ 88. 90, 00000268(d)
        jmp     ?_045                                   ; 11FD _ EB, 17

?_044:  mov     eax, dword [ebp-4H]                     ; 11FF _ 8B. 45, FC
        lea     ecx, [eax+30H]                          ; 1202 _ 8D. 48, 30
        mov     eax, dword [ebp-8H]                     ; 1205 _ 8B. 45, F8
        lea     edx, [eax-1H]                           ; 1208 _ 8D. 50, FF
        mov     dword [ebp-8H], edx                     ; 120B _ 89. 55, F8
        mov     edx, ecx                                ; 120E _ 89. CA
        mov     byte [str.1840+eax], dl                 ; 1210 _ 88. 90, 00000268(d)
?_045:  cmp     dword [ebp-8H], 1                       ; 1216 _ 83. 7D, F8, 01
        jle     ?_046                                   ; 121A _ 7E, 06
        cmp     dword [ebp+8H], 0                       ; 121C _ 83. 7D, 08, 00
        jnz     ?_043                                   ; 1220 _ 75, AC
?_046:  mov     eax, str.1840                           ; 1222 _ B8, 00000268(d)
        leave                                           ; 1227 _ C9
        ret                                             ; 1228 _ C3
; intToHexStr End of function

wait_KBC_sendReady:; Function begin
        push    ebp                                     ; 1229 _ 55
        mov     ebp, esp                                ; 122A _ 89. E5
        sub     esp, 8                                  ; 122C _ 83. EC, 08
?_047:  sub     esp, 12                                 ; 122F _ 83. EC, 0C
        push    100                                     ; 1232 _ 6A, 64
        call    io_in8                                  ; 1234 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1239 _ 83. C4, 10
        movsx   eax, al                                 ; 123C _ 0F BE. C0
        and     eax, 02H                                ; 123F _ 83. E0, 02
        test    eax, eax                                ; 1242 _ 85. C0
        jz      ?_048                                   ; 1244 _ 74, 02
        jmp     ?_047                                   ; 1246 _ EB, E7

?_048:  nop                                             ; 1248 _ 90
        nop                                             ; 1249 _ 90
        leave                                           ; 124A _ C9
        ret                                             ; 124B _ C3
; wait_KBC_sendReady End of function

init_keyboard:; Function begin
        push    ebp                                     ; 124C _ 55
        mov     ebp, esp                                ; 124D _ 89. E5
        sub     esp, 8                                  ; 124F _ 83. EC, 08
        call    wait_KBC_sendReady                      ; 1252 _ E8, FFFFFFFC(rel)
        sub     esp, 8                                  ; 1257 _ 83. EC, 08
        push    96                                      ; 125A _ 6A, 60
        push    100                                     ; 125C _ 6A, 64
        call    io_out8                                 ; 125E _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1263 _ 83. C4, 10
        call    wait_KBC_sendReady                      ; 1266 _ E8, FFFFFFFC(rel)
        sub     esp, 8                                  ; 126B _ 83. EC, 08
        push    71                                      ; 126E _ 6A, 47
        push    96                                      ; 1270 _ 6A, 60
        call    io_out8                                 ; 1272 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1277 _ 83. C4, 10
        nop                                             ; 127A _ 90
        leave                                           ; 127B _ C9
        ret                                             ; 127C _ C3
; init_keyboard End of function

enable_mouse:; Function begin
        push    ebp                                     ; 127D _ 55
        mov     ebp, esp                                ; 127E _ 89. E5
        sub     esp, 8                                  ; 1280 _ 83. EC, 08
        call    wait_KBC_sendReady                      ; 1283 _ E8, FFFFFFFC(rel)
        sub     esp, 8                                  ; 1288 _ 83. EC, 08
        push    212                                     ; 128B _ 68, 000000D4
        push    100                                     ; 1290 _ 6A, 64
        call    io_out8                                 ; 1292 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1297 _ 83. C4, 10
        call    wait_KBC_sendReady                      ; 129A _ E8, FFFFFFFC(rel)
        sub     esp, 8                                  ; 129F _ 83. EC, 08
        push    244                                     ; 12A2 _ 68, 000000F4
        push    96                                      ; 12A7 _ 6A, 60
        call    io_out8                                 ; 12A9 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 12AE _ 83. C4, 10
        mov     eax, dword [ebp+8H]                     ; 12B1 _ 8B. 45, 08
        mov     byte [eax+3H], 0                        ; 12B4 _ C6. 40, 03, 00
        nop                                             ; 12B8 _ 90
        leave                                           ; 12B9 _ C9
        ret                                             ; 12BA _ C3
; enable_mouse End of function

intHandlerForMouse:; Function begin
        push    ebp                                     ; 12BB _ 55
        mov     ebp, esp                                ; 12BC _ 89. E5
        sub     esp, 24                                 ; 12BE _ 83. EC, 18
        mov     byte [ebp-9H], 0                        ; 12C1 _ C6. 45, F7, 00
        sub     esp, 8                                  ; 12C5 _ 83. EC, 08
        push    32                                      ; 12C8 _ 6A, 20
        push    160                                     ; 12CA _ 68, 000000A0
        call    io_out8                                 ; 12CF _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 12D4 _ 83. C4, 10
        sub     esp, 8                                  ; 12D7 _ 83. EC, 08
        push    32                                      ; 12DA _ 6A, 20
        push    32                                      ; 12DC _ 6A, 20
        call    io_out8                                 ; 12DE _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 12E3 _ 83. C4, 10
        sub     esp, 12                                 ; 12E6 _ 83. EC, 0C
        push    96                                      ; 12E9 _ 6A, 60
        call    io_in8                                  ; 12EB _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 12F0 _ 83. C4, 10
        mov     byte [ebp-9H], al                       ; 12F3 _ 88. 45, F7
        movzx   eax, byte [ebp-9H]                      ; 12F6 _ 0F B6. 45, F7
        sub     esp, 8                                  ; 12FA _ 83. EC, 08
        push    eax                                     ; 12FD _ 50
        push    mouseInfo                               ; 12FE _ 68, 00000020(d)
        call    fifo8_put                               ; 1303 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1308 _ 83. C4, 10
        nop                                             ; 130B _ 90
        leave                                           ; 130C _ C9
        ret                                             ; 130D _ C3
; intHandlerForMouse End of function

showKeyboardInfo:; Function begin
        push    ebp                                     ; 130E _ 55
        mov     ebp, esp                                ; 130F _ 89. E5
        sub     esp, 40                                 ; 1311 _ 83. EC, 28
        call    io_sti                                  ; 1314 _ E8, FFFFFFFC(rel)
        mov     eax, dword [bootInfo]                   ; 1319 _ A1, 00000000(d)
        mov     dword [ebp-18H], eax                    ; 131E _ 89. 45, E8
        movzx   eax, word [?_170]                       ; 1321 _ 0F B7. 05, 00000004(d)
        cwde                                            ; 1328 _ 98
        mov     dword [ebp-14H], eax                    ; 1329 _ 89. 45, EC
        movzx   eax, word [?_171]                       ; 132C _ 0F B7. 05, 00000006(d)
        cwde                                            ; 1333 _ 98
        mov     dword [ebp-10H], eax                    ; 1334 _ 89. 45, F0
        mov     byte [ebp-19H], 0                       ; 1337 _ C6. 45, E7, 00
        sub     esp, 12                                 ; 133B _ 83. EC, 0C
        push    keyInfo                                 ; 133E _ 68, 00000008(d)
        call    fifo8_get                               ; 1343 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1348 _ 83. C4, 10
        mov     byte [ebp-19H], al                      ; 134B _ 88. 45, E7
        movzx   eax, byte [ebp-19H]                     ; 134E _ 0F B6. 45, E7
        sub     esp, 12                                 ; 1352 _ 83. EC, 0C
        push    eax                                     ; 1355 _ 50
        call    charToHex                               ; 1356 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 135B _ 83. C4, 10
        mov     dword [ebp-0CH], eax                    ; 135E _ 89. 45, F4
        mov     edx, dword [line.1873]                  ; 1361 _ 8B. 15, 00000274(d)
        mov     eax, dword [pos.1872]                   ; 1367 _ A1, 00000278(d)
        sub     esp, 8                                  ; 136C _ 83. EC, 08
        push    dword [ebp-0CH]                         ; 136F _ FF. 75, F4
        push    7                                       ; 1372 _ 6A, 07
        push    edx                                     ; 1374 _ 52
        push    eax                                     ; 1375 _ 50
        push    dword [ebp+0CH]                         ; 1376 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1379 _ FF. 75, 08
        call    showString                              ; 137C _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1381 _ 83. C4, 20
        mov     eax, dword [pos.1872]                   ; 1384 _ A1, 00000278(d)
        add     eax, 32                                 ; 1389 _ 83. C0, 20
        mov     dword [pos.1872], eax                   ; 138C _ A3, 00000278(d)
        mov     eax, dword [pos.1872]                   ; 1391 _ A1, 00000278(d)
        cmp     dword [ebp-14H], eax                    ; 1396 _ 39. 45, EC
        jnz     ?_051                                   ; 1399 _ 75, 28
        mov     eax, dword [line.1873]                  ; 139B _ A1, 00000274(d)
        cmp     dword [ebp-10H], eax                    ; 13A0 _ 39. 45, F0
        jz      ?_049                                   ; 13A3 _ 74, 0A
        mov     eax, dword [line.1873]                  ; 13A5 _ A1, 00000274(d)
        add     eax, 16                                 ; 13AA _ 83. C0, 10
        jmp     ?_050                                   ; 13AD _ EB, 05

?_049:  mov     eax, 0                                  ; 13AF _ B8, 00000000
?_050:  mov     dword [line.1873], eax                  ; 13B4 _ A3, 00000274(d)
        mov     dword [pos.1872], 0                     ; 13B9 _ C7. 05, 00000278(d), 00000000
?_051:  nop                                             ; 13C3 _ 90
        leave                                           ; 13C4 _ C9
        ret                                             ; 13C5 _ C3
; showKeyboardInfo End of function

showMouseInfo:; Function begin
        push    ebp                                     ; 13C6 _ 55
        mov     ebp, esp                                ; 13C7 _ 89. E5
        sub     esp, 24                                 ; 13C9 _ 83. EC, 18
        call    io_sti                                  ; 13CC _ E8, FFFFFFFC(rel)
        mov     byte [ebp-9H], 0                        ; 13D1 _ C6. 45, F7, 00
        sub     esp, 12                                 ; 13D5 _ 83. EC, 0C
        push    mouseInfo                               ; 13D8 _ 68, 00000020(d)
        call    fifo8_get                               ; 13DD _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 13E2 _ 83. C4, 10
        mov     byte [ebp-9H], al                       ; 13E5 _ 88. 45, F7
        movzx   eax, byte [ebp-9H]                      ; 13E8 _ 0F B6. 45, F7
        sub     esp, 8                                  ; 13EC _ 83. EC, 08
        push    eax                                     ; 13EF _ 50
        push    mouse_move                              ; 13F0 _ 68, 000000E0(d)
        call    mouse_decode                            ; 13F5 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 13FA _ 83. C4, 10
        test    eax, eax                                ; 13FD _ 85. C0
        jz      ?_052                                   ; 13FF _ 74, 60
        sub     esp, 4                                  ; 1401 _ 83. EC, 04
        push    mouse_move                              ; 1404 _ 68, 000000E0(d)
        push    dword [ebp+0CH]                         ; 1409 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 140C _ FF. 75, 08
        call    computeMousePos                         ; 140F _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1414 _ 83. C4, 10
        mov     edx, dword [my]                         ; 1417 _ 8B. 15, 000000F4(d)
        mov     eax, dword [mx]                         ; 141D _ A1, 000000F0(d)
        push    edx                                     ; 1422 _ 52
        push    eax                                     ; 1423 _ 50
        push    dword [ebp+10H]                         ; 1424 _ FF. 75, 10
        push    dword [ebp+8H]                          ; 1427 _ FF. 75, 08
        call    sheet_slide                             ; 142A _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 142F _ 83. C4, 10
        mov     eax, dword [?_172]                      ; 1432 _ A1, 000000EC(d)
        and     eax, 01H                                ; 1437 _ 83. E0, 01
        test    eax, eax                                ; 143A _ 85. C0
        jz      ?_052                                   ; 143C _ 74, 23
        mov     eax, dword [my]                         ; 143E _ A1, 000000F4(d)
        lea     ecx, [eax-8H]                           ; 1443 _ 8D. 48, F8
        mov     eax, dword [mx]                         ; 1446 _ A1, 000000F0(d)
        lea     edx, [eax-50H]                          ; 144B _ 8D. 50, B0
        mov     eax, dword [sheet_win]                  ; 144E _ A1, 00000220(d)
        push    ecx                                     ; 1453 _ 51
        push    edx                                     ; 1454 _ 52
        push    eax                                     ; 1455 _ 50
        push    dword [ebp+8H]                          ; 1456 _ FF. 75, 08
        call    sheet_slide                             ; 1459 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 145E _ 83. C4, 10
?_052:  nop                                             ; 1461 _ 90
        leave                                           ; 1462 _ C9
        ret                                             ; 1463 _ C3
; showMouseInfo End of function

mouse_decode:; Function begin
        push    ebp                                     ; 1464 _ 55
        mov     ebp, esp                                ; 1465 _ 89. E5
        sub     esp, 4                                  ; 1467 _ 83. EC, 04
        mov     eax, dword [ebp+0CH]                    ; 146A _ 8B. 45, 0C
        mov     byte [ebp-4H], al                       ; 146D _ 88. 45, FC
        mov     eax, dword [ebp+8H]                     ; 1470 _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 1473 _ 0F B6. 40, 03
        test    al, al                                  ; 1477 _ 84. C0
        jnz     ?_054                                   ; 1479 _ 75, 17
        cmp     byte [ebp-4H], -6                       ; 147B _ 80. 7D, FC, FA
        jnz     ?_053                                   ; 147F _ 75, 07
        mov     eax, dword [ebp+8H]                     ; 1481 _ 8B. 45, 08
        mov     byte [eax+3H], 1                        ; 1484 _ C6. 40, 03, 01
?_053:  mov     eax, 0                                  ; 1488 _ B8, 00000000
        jmp     ?_061                                   ; 148D _ E9, 0000010C

?_054:  mov     eax, dword [ebp+8H]                     ; 1492 _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 1495 _ 0F B6. 40, 03
        cmp     al, 1                                   ; 1499 _ 3C, 01
        jnz     ?_056                                   ; 149B _ 75, 25
        movzx   eax, byte [ebp-4H]                      ; 149D _ 0F B6. 45, FC
        or      eax, 37H                                ; 14A1 _ 83. C8, 37
        cmp     al, 63                                  ; 14A4 _ 3C, 3F
        jnz     ?_055                                   ; 14A6 _ 75, 10
        mov     eax, dword [ebp+8H]                     ; 14A8 _ 8B. 45, 08
        movzx   edx, byte [ebp-4H]                      ; 14AB _ 0F B6. 55, FC
        mov     byte [eax], dl                          ; 14AF _ 88. 10
        mov     eax, dword [ebp+8H]                     ; 14B1 _ 8B. 45, 08
        mov     byte [eax+3H], 2                        ; 14B4 _ C6. 40, 03, 02
?_055:  mov     eax, 0                                  ; 14B8 _ B8, 00000000
        jmp     ?_061                                   ; 14BD _ E9, 000000DC

?_056:  mov     eax, dword [ebp+8H]                     ; 14C2 _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 14C5 _ 0F B6. 40, 03
        cmp     al, 2                                   ; 14C9 _ 3C, 02
        jnz     ?_057                                   ; 14CB _ 75, 1B
        mov     eax, dword [ebp+8H]                     ; 14CD _ 8B. 45, 08
        movzx   edx, byte [ebp-4H]                      ; 14D0 _ 0F B6. 55, FC
        mov     byte [eax+1H], dl                       ; 14D4 _ 88. 50, 01
        mov     eax, dword [ebp+8H]                     ; 14D7 _ 8B. 45, 08
        mov     byte [eax+3H], 3                        ; 14DA _ C6. 40, 03, 03
        mov     eax, 0                                  ; 14DE _ B8, 00000000
        jmp     ?_061                                   ; 14E3 _ E9, 000000B6

?_057:  mov     eax, dword [ebp+8H]                     ; 14E8 _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 14EB _ 0F B6. 40, 03
        cmp     al, 3                                   ; 14EF _ 3C, 03
        jne     ?_060                                   ; 14F1 _ 0F 85, 000000A2
        mov     eax, dword [ebp+8H]                     ; 14F7 _ 8B. 45, 08
        movzx   edx, byte [ebp-4H]                      ; 14FA _ 0F B6. 55, FC
        mov     byte [eax+2H], dl                       ; 14FE _ 88. 50, 02
        mov     eax, dword [ebp+8H]                     ; 1501 _ 8B. 45, 08
        mov     byte [eax+3H], 1                        ; 1504 _ C6. 40, 03, 01
        mov     eax, dword [ebp+8H]                     ; 1508 _ 8B. 45, 08
        movzx   eax, byte [eax]                         ; 150B _ 0F B6. 00
        movzx   eax, al                                 ; 150E _ 0F B6. C0
        and     eax, 07H                                ; 1511 _ 83. E0, 07
        mov     edx, eax                                ; 1514 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 1516 _ 8B. 45, 08
        mov     dword [eax+0CH], edx                    ; 1519 _ 89. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 151C _ 8B. 45, 08
        movzx   eax, byte [eax+1H]                      ; 151F _ 0F B6. 40, 01
        movzx   edx, al                                 ; 1523 _ 0F B6. D0
        mov     eax, dword [ebp+8H]                     ; 1526 _ 8B. 45, 08
        mov     dword [eax+4H], edx                     ; 1529 _ 89. 50, 04
        mov     eax, dword [ebp+8H]                     ; 152C _ 8B. 45, 08
        movzx   eax, byte [eax+2H]                      ; 152F _ 0F B6. 40, 02
        movzx   edx, al                                 ; 1533 _ 0F B6. D0
        mov     eax, dword [ebp+8H]                     ; 1536 _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 1539 _ 89. 50, 08
        mov     eax, dword [ebp+8H]                     ; 153C _ 8B. 45, 08
        movzx   eax, byte [eax]                         ; 153F _ 0F B6. 00
        movzx   eax, al                                 ; 1542 _ 0F B6. C0
        and     eax, 10H                                ; 1545 _ 83. E0, 10
        test    eax, eax                                ; 1548 _ 85. C0
        jz      ?_058                                   ; 154A _ 74, 13
        mov     eax, dword [ebp+8H]                     ; 154C _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 154F _ 8B. 40, 04
        or      eax, 0FFFFFF00H                         ; 1552 _ 0D, FFFFFF00
        mov     edx, eax                                ; 1557 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 1559 _ 8B. 45, 08
        mov     dword [eax+4H], edx                     ; 155C _ 89. 50, 04
?_058:  mov     eax, dword [ebp+8H]                     ; 155F _ 8B. 45, 08
        movzx   eax, byte [eax]                         ; 1562 _ 0F B6. 00
        movzx   eax, al                                 ; 1565 _ 0F B6. C0
        and     eax, 20H                                ; 1568 _ 83. E0, 20
        test    eax, eax                                ; 156B _ 85. C0
        jz      ?_059                                   ; 156D _ 74, 13
        mov     eax, dword [ebp+8H]                     ; 156F _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 1572 _ 8B. 40, 08
        or      eax, 0FFFFFF00H                         ; 1575 _ 0D, FFFFFF00
        mov     edx, eax                                ; 157A _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 157C _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 157F _ 89. 50, 08
?_059:  mov     eax, dword [ebp+8H]                     ; 1582 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 1585 _ 8B. 40, 08
        neg     eax                                     ; 1588 _ F7. D8
        mov     edx, eax                                ; 158A _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 158C _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 158F _ 89. 50, 08
        mov     eax, 1                                  ; 1592 _ B8, 00000001
        jmp     ?_061                                   ; 1597 _ EB, 05

?_060:  mov     eax, 4294967295                         ; 1599 _ B8, FFFFFFFF
?_061:  leave                                           ; 159E _ C9
        ret                                             ; 159F _ C3
; mouse_decode End of function

computeMousePos:; Function begin
        push    ebp                                     ; 15A0 _ 55
        mov     ebp, esp                                ; 15A1 _ 89. E5
        sub     esp, 24                                 ; 15A3 _ 83. EC, 18
        movzx   eax, word [?_170]                       ; 15A6 _ 0F B7. 05, 00000004(d)
        cwde                                            ; 15AD _ 98
        mov     dword [ebp-10H], eax                    ; 15AE _ 89. 45, F0
        movzx   eax, word [?_171]                       ; 15B1 _ 0F B7. 05, 00000006(d)
        cwde                                            ; 15B8 _ 98
        mov     dword [ebp-0CH], eax                    ; 15B9 _ 89. 45, F4
        mov     eax, dword [ebp+10H]                    ; 15BC _ 8B. 45, 10
        mov     edx, dword [eax+4H]                     ; 15BF _ 8B. 50, 04
        mov     eax, dword [mx]                         ; 15C2 _ A1, 000000F0(d)
        add     eax, edx                                ; 15C7 _ 01. D0
        mov     dword [mx], eax                         ; 15C9 _ A3, 000000F0(d)
        mov     eax, dword [ebp+10H]                    ; 15CE _ 8B. 45, 10
        mov     edx, dword [eax+8H]                     ; 15D1 _ 8B. 50, 08
        mov     eax, dword [my]                         ; 15D4 _ A1, 000000F4(d)
        add     eax, edx                                ; 15D9 _ 01. D0
        mov     dword [my], eax                         ; 15DB _ A3, 000000F4(d)
        mov     eax, dword [mx]                         ; 15E0 _ A1, 000000F0(d)
        test    eax, eax                                ; 15E5 _ 85. C0
        jns     ?_062                                   ; 15E7 _ 79, 0A
        mov     dword [mx], 0                           ; 15E9 _ C7. 05, 000000F0(d), 00000000
?_062:  mov     eax, dword [my]                         ; 15F3 _ A1, 000000F4(d)
        test    eax, eax                                ; 15F8 _ 85. C0
        jns     ?_063                                   ; 15FA _ 79, 0A
        mov     dword [my], 0                           ; 15FC _ C7. 05, 000000F4(d), 00000000
?_063:  mov     eax, dword [ebp-10H]                    ; 1606 _ 8B. 45, F0
        lea     edx, [eax-9H]                           ; 1609 _ 8D. 50, F7
        mov     eax, dword [mx]                         ; 160C _ A1, 000000F0(d)
        cmp     edx, eax                                ; 1611 _ 39. C2
        jge     ?_064                                   ; 1613 _ 7D, 0B
        mov     eax, dword [ebp-10H]                    ; 1615 _ 8B. 45, F0
        sub     eax, 9                                  ; 1618 _ 83. E8, 09
        mov     dword [mx], eax                         ; 161B _ A3, 000000F0(d)
?_064:  mov     eax, dword [ebp-0CH]                    ; 1620 _ 8B. 45, F4
        lea     edx, [eax-1H]                           ; 1623 _ 8D. 50, FF
        mov     eax, dword [my]                         ; 1626 _ A1, 000000F4(d)
        cmp     edx, eax                                ; 162B _ 39. C2
        jge     ?_065                                   ; 162D _ 7D, 0B
        mov     eax, dword [ebp-0CH]                    ; 162F _ 8B. 45, F4
        sub     eax, 1                                  ; 1632 _ 83. E8, 01
        mov     dword [my], eax                         ; 1635 _ A3, 000000F4(d)
?_065:  mov     eax, dword [buf_back]                   ; 163A _ A1, 000000F8(d)
        push    15                                      ; 163F _ 6A, 0F
        push    79                                      ; 1641 _ 6A, 4F
        push    0                                       ; 1643 _ 6A, 00
        push    0                                       ; 1645 _ 6A, 00
        push    14                                      ; 1647 _ 6A, 0E
        push    dword [ebp-10H]                         ; 1649 _ FF. 75, F0
        push    eax                                     ; 164C _ 50
        call    boxfill8                                ; 164D _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 1652 _ 83. C4, 1C
        sub     esp, 8                                  ; 1655 _ 83. EC, 08
        push    ?_161                                   ; 1658 _ 68, 0000002F(d)
        push    3                                       ; 165D _ 6A, 03
        push    0                                       ; 165F _ 6A, 00
        push    0                                       ; 1661 _ 6A, 00
        push    dword [ebp+0CH]                         ; 1663 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1666 _ FF. 75, 08
        call    showString                              ; 1669 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 166E _ 83. C4, 20
        nop                                             ; 1671 _ 90
        leave                                           ; 1672 _ C9
        ret                                             ; 1673 _ C3
; computeMousePos End of function

showMemInfo:; Function begin
        push    ebp                                     ; 1674 _ 55
        mov     ebp, esp                                ; 1675 _ 89. E5
        sub     esp, 56                                 ; 1677 _ 83. EC, 38
        mov     dword [ebp-30H], 0                      ; 167A _ C7. 45, D0, 00000000
        mov     dword [ebp-2CH], 0                      ; 1681 _ C7. 45, D4, 00000000
        mov     dword [ebp-28H], 112                    ; 1688 _ C7. 45, D8, 00000070
        mov     dword [ebp-24H], 80                     ; 168F _ C7. 45, DC, 00000050
        push    100                                     ; 1696 _ 6A, 64
        push    dword [ebp+1CH]                         ; 1698 _ FF. 75, 1C
        push    0                                       ; 169B _ 6A, 00
        push    0                                       ; 169D _ 6A, 00
        push    14                                      ; 169F _ 6A, 0E
        push    dword [ebp+1CH]                         ; 16A1 _ FF. 75, 1C
        push    dword [ebp+14H]                         ; 16A4 _ FF. 75, 14
        call    boxfill8                                ; 16A7 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 16AC _ 83. C4, 1C
        mov     eax, dword [ebp+20H]                    ; 16AF _ 8B. 45, 20
        movsx   eax, al                                 ; 16B2 _ 0F BE. C0
        sub     esp, 8                                  ; 16B5 _ 83. EC, 08
        push    ?_162                                   ; 16B8 _ 68, 00000046(d)
        push    eax                                     ; 16BD _ 50
        push    dword [ebp-2CH]                         ; 16BE _ FF. 75, D4
        push    dword [ebp-30H]                         ; 16C1 _ FF. 75, D0
        push    dword [ebp+0CH]                         ; 16C4 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 16C7 _ FF. 75, 08
        call    showString                              ; 16CA _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 16CF _ 83. C4, 20
        mov     eax, dword [ebp+18H]                    ; 16D2 _ 8B. 45, 18
        sub     esp, 12                                 ; 16D5 _ 83. EC, 0C
        push    eax                                     ; 16D8 _ 50
        call    intToHexStr                             ; 16D9 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 16DE _ 83. C4, 10
        mov     dword [ebp-20H], eax                    ; 16E1 _ 89. 45, E0
        mov     eax, dword [ebp+20H]                    ; 16E4 _ 8B. 45, 20
        movsx   eax, al                                 ; 16E7 _ 0F BE. C0
        sub     esp, 8                                  ; 16EA _ 83. EC, 08
        push    dword [ebp-20H]                         ; 16ED _ FF. 75, E0
        push    eax                                     ; 16F0 _ 50
        push    dword [ebp-2CH]                         ; 16F1 _ FF. 75, D4
        push    dword [ebp-28H]                         ; 16F4 _ FF. 75, D8
        push    dword [ebp+0CH]                         ; 16F7 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 16FA _ FF. 75, 08
        call    showString                              ; 16FD _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1702 _ 83. C4, 20
        add     dword [ebp-2CH], 16                     ; 1705 _ 83. 45, D4, 10
        mov     eax, dword [ebp+20H]                    ; 1709 _ 8B. 45, 20
        movsx   eax, al                                 ; 170C _ 0F BE. C0
        sub     esp, 8                                  ; 170F _ 83. EC, 08
        push    ?_163                                   ; 1712 _ 68, 00000050(d)
        push    eax                                     ; 1717 _ 50
        push    dword [ebp-2CH]                         ; 1718 _ FF. 75, D4
        push    dword [ebp-30H]                         ; 171B _ FF. 75, D0
        push    dword [ebp+0CH]                         ; 171E _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1721 _ FF. 75, 08
        call    showString                              ; 1724 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1729 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 172C _ 8B. 45, 10
        mov     eax, dword [eax]                        ; 172F _ 8B. 00
        sub     esp, 12                                 ; 1731 _ 83. EC, 0C
        push    eax                                     ; 1734 _ 50
        call    intToHexStr                             ; 1735 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 173A _ 83. C4, 10
        mov     dword [ebp-1CH], eax                    ; 173D _ 89. 45, E4
        mov     eax, dword [ebp+20H]                    ; 1740 _ 8B. 45, 20
        movsx   eax, al                                 ; 1743 _ 0F BE. C0
        sub     esp, 8                                  ; 1746 _ 83. EC, 08
        push    dword [ebp-1CH]                         ; 1749 _ FF. 75, E4
        push    eax                                     ; 174C _ 50
        push    dword [ebp-2CH]                         ; 174D _ FF. 75, D4
        push    dword [ebp-28H]                         ; 1750 _ FF. 75, D8
        push    dword [ebp+0CH]                         ; 1753 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1756 _ FF. 75, 08
        call    showString                              ; 1759 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 175E _ 83. C4, 20
        add     dword [ebp-2CH], 16                     ; 1761 _ 83. 45, D4, 10
        mov     eax, dword [ebp+20H]                    ; 1765 _ 8B. 45, 20
        movsx   eax, al                                 ; 1768 _ 0F BE. C0
        sub     esp, 8                                  ; 176B _ 83. EC, 08
        push    ?_164                                   ; 176E _ 68, 0000005E(d)
        push    eax                                     ; 1773 _ 50
        push    dword [ebp-2CH]                         ; 1774 _ FF. 75, D4
        push    dword [ebp-30H]                         ; 1777 _ FF. 75, D0
        push    dword [ebp+0CH]                         ; 177A _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 177D _ FF. 75, 08
        call    showString                              ; 1780 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1785 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 1788 _ 8B. 45, 10
        mov     eax, dword [eax+4H]                     ; 178B _ 8B. 40, 04
        sub     esp, 12                                 ; 178E _ 83. EC, 0C
        push    eax                                     ; 1791 _ 50
        call    intToHexStr                             ; 1792 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1797 _ 83. C4, 10
        mov     dword [ebp-18H], eax                    ; 179A _ 89. 45, E8
        mov     eax, dword [ebp+20H]                    ; 179D _ 8B. 45, 20
        movsx   eax, al                                 ; 17A0 _ 0F BE. C0
        sub     esp, 8                                  ; 17A3 _ 83. EC, 08
        push    dword [ebp-18H]                         ; 17A6 _ FF. 75, E8
        push    eax                                     ; 17A9 _ 50
        push    dword [ebp-2CH]                         ; 17AA _ FF. 75, D4
        push    dword [ebp-28H]                         ; 17AD _ FF. 75, D8
        push    dword [ebp+0CH]                         ; 17B0 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 17B3 _ FF. 75, 08
        call    showString                              ; 17B6 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 17BB _ 83. C4, 20
        add     dword [ebp-2CH], 16                     ; 17BE _ 83. 45, D4, 10
        mov     eax, dword [ebp+20H]                    ; 17C2 _ 8B. 45, 20
        movsx   eax, al                                 ; 17C5 _ 0F BE. C0
        sub     esp, 8                                  ; 17C8 _ 83. EC, 08
        push    ?_165                                   ; 17CB _ 68, 0000006D(d)
        push    eax                                     ; 17D0 _ 50
        push    dword [ebp-2CH]                         ; 17D1 _ FF. 75, D4
        push    dword [ebp-30H]                         ; 17D4 _ FF. 75, D0
        push    dword [ebp+0CH]                         ; 17D7 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 17DA _ FF. 75, 08
        call    showString                              ; 17DD _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 17E2 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 17E5 _ 8B. 45, 10
        mov     eax, dword [eax+8H]                     ; 17E8 _ 8B. 40, 08
        sub     esp, 12                                 ; 17EB _ 83. EC, 0C
        push    eax                                     ; 17EE _ 50
        call    intToHexStr                             ; 17EF _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 17F4 _ 83. C4, 10
        mov     dword [ebp-14H], eax                    ; 17F7 _ 89. 45, EC
        mov     eax, dword [ebp+20H]                    ; 17FA _ 8B. 45, 20
        movsx   eax, al                                 ; 17FD _ 0F BE. C0
        sub     esp, 8                                  ; 1800 _ 83. EC, 08
        push    dword [ebp-14H]                         ; 1803 _ FF. 75, EC
        push    eax                                     ; 1806 _ 50
        push    dword [ebp-2CH]                         ; 1807 _ FF. 75, D4
        push    dword [ebp-28H]                         ; 180A _ FF. 75, D8
        push    dword [ebp+0CH]                         ; 180D _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1810 _ FF. 75, 08
        call    showString                              ; 1813 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1818 _ 83. C4, 20
        add     dword [ebp-2CH], 16                     ; 181B _ 83. 45, D4, 10
        mov     eax, dword [ebp+20H]                    ; 181F _ 8B. 45, 20
        movsx   eax, al                                 ; 1822 _ 0F BE. C0
        sub     esp, 8                                  ; 1825 _ 83. EC, 08
        push    ?_166                                   ; 1828 _ 68, 00000079(d)
        push    eax                                     ; 182D _ 50
        push    dword [ebp-2CH]                         ; 182E _ FF. 75, D4
        push    dword [ebp-30H]                         ; 1831 _ FF. 75, D0
        push    dword [ebp+0CH]                         ; 1834 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1837 _ FF. 75, 08
        call    showString                              ; 183A _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 183F _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 1842 _ 8B. 45, 10
        mov     eax, dword [eax+0CH]                    ; 1845 _ 8B. 40, 0C
        sub     esp, 12                                 ; 1848 _ 83. EC, 0C
        push    eax                                     ; 184B _ 50
        call    intToHexStr                             ; 184C _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1851 _ 83. C4, 10
        mov     dword [ebp-10H], eax                    ; 1854 _ 89. 45, F0
        mov     eax, dword [ebp+20H]                    ; 1857 _ 8B. 45, 20
        movsx   eax, al                                 ; 185A _ 0F BE. C0
        sub     esp, 8                                  ; 185D _ 83. EC, 08
        push    dword [ebp-10H]                         ; 1860 _ FF. 75, F0
        push    eax                                     ; 1863 _ 50
        push    dword [ebp-2CH]                         ; 1864 _ FF. 75, D4
        push    dword [ebp-28H]                         ; 1867 _ FF. 75, D8
        push    dword [ebp+0CH]                         ; 186A _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 186D _ FF. 75, 08
        call    showString                              ; 1870 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1875 _ 83. C4, 20
        add     dword [ebp-2CH], 16                     ; 1878 _ 83. 45, D4, 10
        mov     eax, dword [ebp+20H]                    ; 187C _ 8B. 45, 20
        movsx   eax, al                                 ; 187F _ 0F BE. C0
        sub     esp, 8                                  ; 1882 _ 83. EC, 08
        push    ?_167                                   ; 1885 _ 68, 00000086(d)
        push    eax                                     ; 188A _ 50
        push    dword [ebp-2CH]                         ; 188B _ FF. 75, D4
        push    dword [ebp-30H]                         ; 188E _ FF. 75, D0
        push    dword [ebp+0CH]                         ; 1891 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1894 _ FF. 75, 08
        call    showString                              ; 1897 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 189C _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 189F _ 8B. 45, 10
        mov     eax, dword [eax+10H]                    ; 18A2 _ 8B. 40, 10
        sub     esp, 12                                 ; 18A5 _ 83. EC, 0C
        push    eax                                     ; 18A8 _ 50
        call    intToHexStr                             ; 18A9 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 18AE _ 83. C4, 10
        mov     dword [ebp-0CH], eax                    ; 18B1 _ 89. 45, F4
        mov     eax, dword [ebp+20H]                    ; 18B4 _ 8B. 45, 20
        movsx   eax, al                                 ; 18B7 _ 0F BE. C0
        sub     esp, 8                                  ; 18BA _ 83. EC, 08
        push    dword [ebp-0CH]                         ; 18BD _ FF. 75, F4
        push    eax                                     ; 18C0 _ 50
        push    dword [ebp-2CH]                         ; 18C1 _ FF. 75, D4
        push    dword [ebp-28H]                         ; 18C4 _ FF. 75, D8
        push    dword [ebp+0CH]                         ; 18C7 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 18CA _ FF. 75, 08
        call    showString                              ; 18CD _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 18D2 _ 83. C4, 20
        add     dword [ebp-2CH], 16                     ; 18D5 _ 83. 45, D4, 10
        nop                                             ; 18D9 _ 90
        leave                                           ; 18DA _ C9
        ret                                             ; 18DB _ C3
; showMemInfo End of function

messageBox:; Function begin
        push    ebp                                     ; 18DC _ 55
        mov     ebp, esp                                ; 18DD _ 89. E5
        sub     esp, 24                                 ; 18DF _ 83. EC, 18
        mov     eax, dword [memman]                     ; 18E2 _ A1, 00000008(d)
        sub     esp, 8                                  ; 18E7 _ 83. EC, 08
        push    37500                                   ; 18EA _ 68, 0000927C
        push    eax                                     ; 18EF _ 50
        call    memman_alloc_4K                         ; 18F0 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 18F5 _ 83. C4, 10
        mov     dword [ebp-10H], eax                    ; 18F8 _ 89. 45, F0
        sub     esp, 12                                 ; 18FB _ 83. EC, 0C
        push    dword [ebp+8H]                          ; 18FE _ FF. 75, 08
        call    sheet_alloc                             ; 1901 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1906 _ 83. C4, 10
        mov     dword [ebp-0CH], eax                    ; 1909 _ 89. 45, F4
        sub     esp, 12                                 ; 190C _ 83. EC, 0C
        push    99                                      ; 190F _ 6A, 63
        push    125                                     ; 1911 _ 6A, 7D
        push    300                                     ; 1913 _ 68, 0000012C
        push    dword [ebp-10H]                         ; 1918 _ FF. 75, F0
        push    dword [ebp-0CH]                         ; 191B _ FF. 75, F4
        call    sheet_setbuf                            ; 191E _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1923 _ 83. C4, 20
        sub     esp, 4                                  ; 1926 _ 83. EC, 04
        push    dword [ebp+0CH]                         ; 1929 _ FF. 75, 0C
        push    dword [ebp-0CH]                         ; 192C _ FF. 75, F4
        push    dword [ebp+8H]                          ; 192F _ FF. 75, 08
        call    make_window8                            ; 1932 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1937 _ 83. C4, 10
        sub     esp, 8                                  ; 193A _ 83. EC, 08
        push    7                                       ; 193D _ 6A, 07
        push    16                                      ; 193F _ 6A, 10
        push    150                                     ; 1941 _ 68, 00000096
        push    41                                      ; 1946 _ 6A, 29
        push    8                                       ; 1948 _ 6A, 08
        push    dword [ebp-0CH]                         ; 194A _ FF. 75, F4
        call    make_textbox8                           ; 194D _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1952 _ 83. C4, 20
        push    120                                     ; 1955 _ 6A, 78
        push    200                                     ; 1957 _ 68, 000000C8
        push    dword [ebp-0CH]                         ; 195C _ FF. 75, F4
        push    dword [ebp+8H]                          ; 195F _ FF. 75, 08
        call    sheet_slide                             ; 1962 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1967 _ 83. C4, 10
        sub     esp, 4                                  ; 196A _ 83. EC, 04
        push    1                                       ; 196D _ 6A, 01
        push    dword [ebp-0CH]                         ; 196F _ FF. 75, F4
        push    dword [ebp+8H]                          ; 1972 _ FF. 75, 08
        call    sheet_level_updown                      ; 1975 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 197A _ 83. C4, 10
        mov     eax, dword [ebp-0CH]                    ; 197D _ 8B. 45, F4
        leave                                           ; 1980 _ C9
        ret                                             ; 1981 _ C3
; messageBox End of function

make_window8:; Function begin
        push    ebp                                     ; 1982 _ 55
        mov     ebp, esp                                ; 1983 _ 89. E5
        push    ebx                                     ; 1985 _ 53
        sub     esp, 36                                 ; 1986 _ 83. EC, 24
        mov     eax, dword [ebp+0CH]                    ; 1989 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 198C _ 8B. 40, 04
        mov     dword [ebp-10H], eax                    ; 198F _ 89. 45, F0
        mov     eax, dword [ebp+0CH]                    ; 1992 _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 1995 _ 8B. 40, 08
        mov     dword [ebp-0CH], eax                    ; 1998 _ 89. 45, F4
        mov     eax, dword [ebp-10H]                    ; 199B _ 8B. 45, F0
        lea     edx, [eax-1H]                           ; 199E _ 8D. 50, FF
        mov     eax, dword [ebp+0CH]                    ; 19A1 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 19A4 _ 8B. 00
        push    0                                       ; 19A6 _ 6A, 00
        push    edx                                     ; 19A8 _ 52
        push    0                                       ; 19A9 _ 6A, 00
        push    0                                       ; 19AB _ 6A, 00
        push    8                                       ; 19AD _ 6A, 08
        push    dword [ebp-10H]                         ; 19AF _ FF. 75, F0
        push    eax                                     ; 19B2 _ 50
        call    boxfill8                                ; 19B3 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 19B8 _ 83. C4, 1C
        mov     eax, dword [ebp-10H]                    ; 19BB _ 8B. 45, F0
        lea     edx, [eax-2H]                           ; 19BE _ 8D. 50, FE
        mov     eax, dword [ebp+0CH]                    ; 19C1 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 19C4 _ 8B. 00
        push    1                                       ; 19C6 _ 6A, 01
        push    edx                                     ; 19C8 _ 52
        push    1                                       ; 19C9 _ 6A, 01
        push    1                                       ; 19CB _ 6A, 01
        push    7                                       ; 19CD _ 6A, 07
        push    dword [ebp-10H]                         ; 19CF _ FF. 75, F0
        push    eax                                     ; 19D2 _ 50
        call    boxfill8                                ; 19D3 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 19D8 _ 83. C4, 1C
        mov     eax, dword [ebp-0CH]                    ; 19DB _ 8B. 45, F4
        lea     edx, [eax-1H]                           ; 19DE _ 8D. 50, FF
        mov     eax, dword [ebp+0CH]                    ; 19E1 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 19E4 _ 8B. 00
        push    edx                                     ; 19E6 _ 52
        push    0                                       ; 19E7 _ 6A, 00
        push    0                                       ; 19E9 _ 6A, 00
        push    0                                       ; 19EB _ 6A, 00
        push    8                                       ; 19ED _ 6A, 08
        push    dword [ebp-10H]                         ; 19EF _ FF. 75, F0
        push    eax                                     ; 19F2 _ 50
        call    boxfill8                                ; 19F3 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 19F8 _ 83. C4, 1C
        mov     eax, dword [ebp-0CH]                    ; 19FB _ 8B. 45, F4
        lea     edx, [eax-1H]                           ; 19FE _ 8D. 50, FF
        mov     eax, dword [ebp+0CH]                    ; 1A01 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 1A04 _ 8B. 00
        push    edx                                     ; 1A06 _ 52
        push    1                                       ; 1A07 _ 6A, 01
        push    1                                       ; 1A09 _ 6A, 01
        push    1                                       ; 1A0B _ 6A, 01
        push    7                                       ; 1A0D _ 6A, 07
        push    dword [ebp-10H]                         ; 1A0F _ FF. 75, F0
        push    eax                                     ; 1A12 _ 50
        call    boxfill8                                ; 1A13 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 1A18 _ 83. C4, 1C
        mov     eax, dword [ebp-0CH]                    ; 1A1B _ 8B. 45, F4
        lea     ebx, [eax-2H]                           ; 1A1E _ 8D. 58, FE
        mov     eax, dword [ebp-10H]                    ; 1A21 _ 8B. 45, F0
        lea     ecx, [eax-2H]                           ; 1A24 _ 8D. 48, FE
        mov     eax, dword [ebp-10H]                    ; 1A27 _ 8B. 45, F0
        lea     edx, [eax-2H]                           ; 1A2A _ 8D. 50, FE
        mov     eax, dword [ebp+0CH]                    ; 1A2D _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 1A30 _ 8B. 00
        push    ebx                                     ; 1A32 _ 53
        push    ecx                                     ; 1A33 _ 51
        push    1                                       ; 1A34 _ 6A, 01
        push    edx                                     ; 1A36 _ 52
        push    15                                      ; 1A37 _ 6A, 0F
        push    dword [ebp-10H]                         ; 1A39 _ FF. 75, F0
        push    eax                                     ; 1A3C _ 50
        call    boxfill8                                ; 1A3D _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 1A42 _ 83. C4, 1C
        mov     eax, dword [ebp-0CH]                    ; 1A45 _ 8B. 45, F4
        lea     ebx, [eax-1H]                           ; 1A48 _ 8D. 58, FF
        mov     eax, dword [ebp-10H]                    ; 1A4B _ 8B. 45, F0
        lea     ecx, [eax-1H]                           ; 1A4E _ 8D. 48, FF
        mov     eax, dword [ebp-10H]                    ; 1A51 _ 8B. 45, F0
        lea     edx, [eax-1H]                           ; 1A54 _ 8D. 50, FF
        mov     eax, dword [ebp+0CH]                    ; 1A57 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 1A5A _ 8B. 00
        push    ebx                                     ; 1A5C _ 53
        push    ecx                                     ; 1A5D _ 51
        push    0                                       ; 1A5E _ 6A, 00
        push    edx                                     ; 1A60 _ 52
        push    0                                       ; 1A61 _ 6A, 00
        push    dword [ebp-10H]                         ; 1A63 _ FF. 75, F0
        push    eax                                     ; 1A66 _ 50
        call    boxfill8                                ; 1A67 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 1A6C _ 83. C4, 1C
        mov     eax, dword [ebp-0CH]                    ; 1A6F _ 8B. 45, F4
        lea     ecx, [eax-3H]                           ; 1A72 _ 8D. 48, FD
        mov     eax, dword [ebp-10H]                    ; 1A75 _ 8B. 45, F0
        lea     edx, [eax-3H]                           ; 1A78 _ 8D. 50, FD
        mov     eax, dword [ebp+0CH]                    ; 1A7B _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 1A7E _ 8B. 00
        push    ecx                                     ; 1A80 _ 51
        push    edx                                     ; 1A81 _ 52
        push    2                                       ; 1A82 _ 6A, 02
        push    2                                       ; 1A84 _ 6A, 02
        push    8                                       ; 1A86 _ 6A, 08
        push    dword [ebp-10H]                         ; 1A88 _ FF. 75, F0
        push    eax                                     ; 1A8B _ 50
        call    boxfill8                                ; 1A8C _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 1A91 _ 83. C4, 1C
        mov     eax, dword [ebp-10H]                    ; 1A94 _ 8B. 45, F0
        lea     edx, [eax-4H]                           ; 1A97 _ 8D. 50, FC
        mov     eax, dword [ebp+0CH]                    ; 1A9A _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 1A9D _ 8B. 00
        push    20                                      ; 1A9F _ 6A, 14
        push    edx                                     ; 1AA1 _ 52
        push    3                                       ; 1AA2 _ 6A, 03
        push    3                                       ; 1AA4 _ 6A, 03
        push    12                                      ; 1AA6 _ 6A, 0C
        push    dword [ebp-10H]                         ; 1AA8 _ FF. 75, F0
        push    eax                                     ; 1AAB _ 50
        call    boxfill8                                ; 1AAC _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 1AB1 _ 83. C4, 1C
        mov     eax, dword [ebp-0CH]                    ; 1AB4 _ 8B. 45, F4
        lea     ebx, [eax-2H]                           ; 1AB7 _ 8D. 58, FE
        mov     eax, dword [ebp-10H]                    ; 1ABA _ 8B. 45, F0
        lea     ecx, [eax-2H]                           ; 1ABD _ 8D. 48, FE
        mov     eax, dword [ebp-0CH]                    ; 1AC0 _ 8B. 45, F4
        lea     edx, [eax-2H]                           ; 1AC3 _ 8D. 50, FE
        mov     eax, dword [ebp+0CH]                    ; 1AC6 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 1AC9 _ 8B. 00
        push    ebx                                     ; 1ACB _ 53
        push    ecx                                     ; 1ACC _ 51
        push    edx                                     ; 1ACD _ 52
        push    1                                       ; 1ACE _ 6A, 01
        push    15                                      ; 1AD0 _ 6A, 0F
        push    dword [ebp-10H]                         ; 1AD2 _ FF. 75, F0
        push    eax                                     ; 1AD5 _ 50
        call    boxfill8                                ; 1AD6 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 1ADB _ 83. C4, 1C
        mov     eax, dword [ebp-0CH]                    ; 1ADE _ 8B. 45, F4
        lea     ebx, [eax-1H]                           ; 1AE1 _ 8D. 58, FF
        mov     eax, dword [ebp-10H]                    ; 1AE4 _ 8B. 45, F0
        lea     ecx, [eax-1H]                           ; 1AE7 _ 8D. 48, FF
        mov     eax, dword [ebp-0CH]                    ; 1AEA _ 8B. 45, F4
        lea     edx, [eax-1H]                           ; 1AED _ 8D. 50, FF
        mov     eax, dword [ebp+0CH]                    ; 1AF0 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 1AF3 _ 8B. 00
        push    ebx                                     ; 1AF5 _ 53
        push    ecx                                     ; 1AF6 _ 51
        push    edx                                     ; 1AF7 _ 52
        push    0                                       ; 1AF8 _ 6A, 00
        push    0                                       ; 1AFA _ 6A, 00
        push    dword [ebp-10H]                         ; 1AFC _ FF. 75, F0
        push    eax                                     ; 1AFF _ 50
        call    boxfill8                                ; 1B00 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 1B05 _ 83. C4, 1C
        sub     esp, 8                                  ; 1B08 _ 83. EC, 08
        push    dword [ebp+10H]                         ; 1B0B _ FF. 75, 10
        push    7                                       ; 1B0E _ 6A, 07
        push    4                                       ; 1B10 _ 6A, 04
        push    8                                       ; 1B12 _ 6A, 08
        push    dword [ebp+0CH]                         ; 1B14 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1B17 _ FF. 75, 08
        call    showString                              ; 1B1A _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1B1F _ 83. C4, 20
        mov     dword [ebp-18H], 0                      ; 1B22 _ C7. 45, E8, 00000000
        jmp     ?_072                                   ; 1B29 _ EB, 7D

?_066:  mov     dword [ebp-14H], 0                      ; 1B2B _ C7. 45, EC, 00000000
        jmp     ?_071                                   ; 1B32 _ EB, 6A

?_067:  mov     eax, dword [ebp-18H]                    ; 1B34 _ 8B. 45, E8
        shl     eax, 4                                  ; 1B37 _ C1. E0, 04
        mov     edx, eax                                ; 1B3A _ 89. C2
        mov     eax, dword [ebp-14H]                    ; 1B3C _ 8B. 45, EC
        add     eax, edx                                ; 1B3F _ 01. D0
        add     eax, closebtn.1921                      ; 1B41 _ 05, 000001C0(d)
        movzx   eax, byte [eax]                         ; 1B46 _ 0F B6. 00
        mov     byte [ebp-19H], al                      ; 1B49 _ 88. 45, E7
        cmp     byte [ebp-19H], 64                      ; 1B4C _ 80. 7D, E7, 40
        jnz     ?_068                                   ; 1B50 _ 75, 06
        mov     byte [ebp-19H], 0                       ; 1B52 _ C6. 45, E7, 00
        jmp     ?_070                                   ; 1B56 _ EB, 16

?_068:  cmp     byte [ebp-19H], 36                      ; 1B58 _ 80. 7D, E7, 24
        jnz     ?_069                                   ; 1B5C _ 75, 06
        mov     byte [ebp-19H], 15                      ; 1B5E _ C6. 45, E7, 0F
        jmp     ?_070                                   ; 1B62 _ EB, 0A

?_069:  cmp     byte [ebp-19H], 81                      ; 1B64 _ 80. 7D, E7, 51
        jnz     ?_070                                   ; 1B68 _ 75, 04
        mov     byte [ebp-19H], 8                       ; 1B6A _ C6. 45, E7, 08
?_070:  mov     eax, dword [ebp+0CH]                    ; 1B6E _ 8B. 45, 0C
        mov     edx, dword [eax]                        ; 1B71 _ 8B. 10
        mov     eax, dword [ebp-18H]                    ; 1B73 _ 8B. 45, E8
        lea     ecx, [eax+5H]                           ; 1B76 _ 8D. 48, 05
        mov     eax, dword [ebp+0CH]                    ; 1B79 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 1B7C _ 8B. 40, 04
        imul    ecx, eax                                ; 1B7F _ 0F AF. C8
        mov     eax, dword [ebp+0CH]                    ; 1B82 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 1B85 _ 8B. 40, 04
        lea     ebx, [eax-15H]                          ; 1B88 _ 8D. 58, EB
        mov     eax, dword [ebp-14H]                    ; 1B8B _ 8B. 45, EC
        add     eax, ebx                                ; 1B8E _ 01. D8
        add     eax, ecx                                ; 1B90 _ 01. C8
        add     edx, eax                                ; 1B92 _ 01. C2
        movzx   eax, byte [ebp-19H]                     ; 1B94 _ 0F B6. 45, E7
        mov     byte [edx], al                          ; 1B98 _ 88. 02
        add     dword [ebp-14H], 1                      ; 1B9A _ 83. 45, EC, 01
?_071:  cmp     dword [ebp-14H], 15                     ; 1B9E _ 83. 7D, EC, 0F
        jle     ?_067                                   ; 1BA2 _ 7E, 90
        add     dword [ebp-18H], 1                      ; 1BA4 _ 83. 45, E8, 01
?_072:  cmp     dword [ebp-18H], 13                     ; 1BA8 _ 83. 7D, E8, 0D
        jle     ?_066                                   ; 1BAC _ 0F 8E, FFFFFF79
        nop                                             ; 1BB2 _ 90
        mov     ebx, dword [ebp-4H]                     ; 1BB3 _ 8B. 5D, FC
        leave                                           ; 1BB6 _ C9
        ret                                             ; 1BB7 _ C3
; make_window8 End of function

memman_init:; Function begin
        push    ebp                                     ; 1BB8 _ 55
        mov     ebp, esp                                ; 1BB9 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 1BBB _ 8B. 45, 08
        mov     dword [eax], 0                          ; 1BBE _ C7. 00, 00000000
        mov     eax, dword [ebp+8H]                     ; 1BC4 _ 8B. 45, 08
        mov     dword [eax+4H], 0                       ; 1BC7 _ C7. 40, 04, 00000000
        mov     eax, dword [ebp+8H]                     ; 1BCE _ 8B. 45, 08
        mov     dword [eax+8H], 0                       ; 1BD1 _ C7. 40, 08, 00000000
        mov     eax, dword [ebp+8H]                     ; 1BD8 _ 8B. 45, 08
        mov     dword [eax+0CH], 0                      ; 1BDB _ C7. 40, 0C, 00000000
        nop                                             ; 1BE2 _ 90
        pop     ebp                                     ; 1BE3 _ 5D
        ret                                             ; 1BE4 _ C3
; memman_init End of function

memman_total:; Function begin
        push    ebp                                     ; 1BE5 _ 55
        mov     ebp, esp                                ; 1BE6 _ 89. E5
        sub     esp, 16                                 ; 1BE8 _ 83. EC, 10
        mov     dword [ebp-8H], 0                       ; 1BEB _ C7. 45, F8, 00000000
        mov     dword [ebp-4H], 0                       ; 1BF2 _ C7. 45, FC, 00000000
        jmp     ?_074                                   ; 1BF9 _ EB, 14

?_073:  mov     eax, dword [ebp+8H]                     ; 1BFB _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 1BFE _ 8B. 55, FC
        add     edx, 2                                  ; 1C01 _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 1C04 _ 8B. 44 D0, 04
        add     dword [ebp-8H], eax                     ; 1C08 _ 01. 45, F8
        add     dword [ebp-4H], 1                       ; 1C0B _ 83. 45, FC, 01
?_074:  mov     eax, dword [ebp+8H]                     ; 1C0F _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 1C12 _ 8B. 00
        cmp     dword [ebp-4H], eax                     ; 1C14 _ 39. 45, FC
        jl      ?_073                                   ; 1C17 _ 7C, E2
        mov     eax, dword [ebp-8H]                     ; 1C19 _ 8B. 45, F8
        leave                                           ; 1C1C _ C9
        ret                                             ; 1C1D _ C3
; memman_total End of function

memman_alloc_FF:; Function begin
        push    ebp                                     ; 1C1E _ 55
        mov     ebp, esp                                ; 1C1F _ 89. E5
        sub     esp, 16                                 ; 1C21 _ 83. EC, 10
        mov     dword [ebp-8H], 0                       ; 1C24 _ C7. 45, F8, 00000000
        jmp     ?_078                                   ; 1C2B _ E9, 00000085

?_075:  mov     eax, dword [ebp+8H]                     ; 1C30 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 1C33 _ 8B. 55, F8
        add     edx, 2                                  ; 1C36 _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 1C39 _ 8B. 44 D0, 04
        cmp     dword [ebp+0CH], eax                    ; 1C3D _ 39. 45, 0C
        ja      ?_077                                   ; 1C40 _ 77, 6F
        mov     eax, dword [ebp+8H]                     ; 1C42 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 1C45 _ 8B. 55, F8
        add     edx, 2                                  ; 1C48 _ 83. C2, 02
        mov     eax, dword [eax+edx*8]                  ; 1C4B _ 8B. 04 D0
        mov     dword [ebp-4H], eax                     ; 1C4E _ 89. 45, FC
        mov     eax, dword [ebp+8H]                     ; 1C51 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 1C54 _ 8B. 55, F8
        add     edx, 2                                  ; 1C57 _ 83. C2, 02
        mov     edx, dword [eax+edx*8]                  ; 1C5A _ 8B. 14 D0
        mov     eax, dword [ebp+0CH]                    ; 1C5D _ 8B. 45, 0C
        lea     ecx, [edx+eax]                          ; 1C60 _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 1C63 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 1C66 _ 8B. 55, F8
        add     edx, 2                                  ; 1C69 _ 83. C2, 02
        mov     dword [eax+edx*8], ecx                  ; 1C6C _ 89. 0C D0
        mov     eax, dword [ebp+8H]                     ; 1C6F _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 1C72 _ 8B. 55, F8
        add     edx, 2                                  ; 1C75 _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 1C78 _ 8B. 44 D0, 04
        sub     eax, dword [ebp+0CH]                    ; 1C7C _ 2B. 45, 0C
        mov     edx, eax                                ; 1C7F _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 1C81 _ 8B. 45, 08
        mov     ecx, dword [ebp-8H]                     ; 1C84 _ 8B. 4D, F8
        add     ecx, 2                                  ; 1C87 _ 83. C1, 02
        mov     dword [eax+ecx*8+4H], edx               ; 1C8A _ 89. 54 C8, 04
        mov     eax, dword [ebp+8H]                     ; 1C8E _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 1C91 _ 8B. 55, F8
        add     edx, 2                                  ; 1C94 _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 1C97 _ 8B. 44 D0, 04
        test    eax, eax                                ; 1C9B _ 85. C0
        jnz     ?_076                                   ; 1C9D _ 75, 0D
        mov     eax, dword [ebp+8H]                     ; 1C9F _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 1CA2 _ 8B. 00
        lea     edx, [eax-1H]                           ; 1CA4 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 1CA7 _ 8B. 45, 08
        mov     dword [eax], edx                        ; 1CAA _ 89. 10
?_076:  mov     eax, dword [ebp-4H]                     ; 1CAC _ 8B. 45, FC
        jmp     ?_079                                   ; 1CAF _ EB, 17

?_077:  add     dword [ebp-8H], 1                       ; 1CB1 _ 83. 45, F8, 01
?_078:  mov     eax, dword [ebp+8H]                     ; 1CB5 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 1CB8 _ 8B. 00
        cmp     dword [ebp-8H], eax                     ; 1CBA _ 39. 45, F8
        jl      ?_075                                   ; 1CBD _ 0F 8C, FFFFFF6D
        mov     eax, 0                                  ; 1CC3 _ B8, 00000000
?_079:  leave                                           ; 1CC8 _ C9
        ret                                             ; 1CC9 _ C3
; memman_alloc_FF End of function

memman_alloc_4K:; Function begin
        push    ebp                                     ; 1CCA _ 55
        mov     ebp, esp                                ; 1CCB _ 89. E5
        sub     esp, 16                                 ; 1CCD _ 83. EC, 10
        mov     eax, dword [ebp+0CH]                    ; 1CD0 _ 8B. 45, 0C
        add     eax, 4095                               ; 1CD3 _ 05, 00000FFF
        and     eax, 0FFFFF000H                         ; 1CD8 _ 25, FFFFF000
        mov     dword [ebp+0CH], eax                    ; 1CDD _ 89. 45, 0C
        push    dword [ebp+0CH]                         ; 1CE0 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1CE3 _ FF. 75, 08
        call    memman_alloc_FF                         ; 1CE6 _ E8, FFFFFFFC(rel)
        add     esp, 8                                  ; 1CEB _ 83. C4, 08
        mov     dword [ebp-4H], eax                     ; 1CEE _ 89. 45, FC
        mov     eax, dword [ebp-4H]                     ; 1CF1 _ 8B. 45, FC
        leave                                           ; 1CF4 _ C9
        ret                                             ; 1CF5 _ C3
; memman_alloc_4K End of function

memman_free:; Function begin
        push    ebp                                     ; 1CF6 _ 55
        mov     ebp, esp                                ; 1CF7 _ 89. E5
        push    ebx                                     ; 1CF9 _ 53
        sub     esp, 16                                 ; 1CFA _ 83. EC, 10
        mov     dword [ebp-0CH], 0                      ; 1CFD _ C7. 45, F4, 00000000
        jmp     ?_081                                   ; 1D04 _ EB, 15

?_080:  mov     eax, dword [ebp+8H]                     ; 1D06 _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 1D09 _ 8B. 55, F4
        add     edx, 2                                  ; 1D0C _ 83. C2, 02
        mov     eax, dword [eax+edx*8]                  ; 1D0F _ 8B. 04 D0
        cmp     dword [ebp+0CH], eax                    ; 1D12 _ 39. 45, 0C
        jc      ?_082                                   ; 1D15 _ 72, 10
        add     dword [ebp-0CH], 1                      ; 1D17 _ 83. 45, F4, 01
?_081:  mov     eax, dword [ebp+8H]                     ; 1D1B _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 1D1E _ 8B. 00
        cmp     dword [ebp-0CH], eax                    ; 1D20 _ 39. 45, F4
        jl      ?_080                                   ; 1D23 _ 7C, E1
        jmp     ?_083                                   ; 1D25 _ EB, 01

?_082:  nop                                             ; 1D27 _ 90
?_083:  cmp     dword [ebp-0CH], 0                      ; 1D28 _ 83. 7D, F4, 00
        jle     ?_085                                   ; 1D2C _ 0F 8E, 000000BA
        mov     eax, dword [ebp-0CH]                    ; 1D32 _ 8B. 45, F4
        lea     edx, [eax-1H]                           ; 1D35 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 1D38 _ 8B. 45, 08
        add     edx, 2                                  ; 1D3B _ 83. C2, 02
        mov     edx, dword [eax+edx*8]                  ; 1D3E _ 8B. 14 D0
        mov     eax, dword [ebp-0CH]                    ; 1D41 _ 8B. 45, F4
        lea     ecx, [eax-1H]                           ; 1D44 _ 8D. 48, FF
        mov     eax, dword [ebp+8H]                     ; 1D47 _ 8B. 45, 08
        add     ecx, 2                                  ; 1D4A _ 83. C1, 02
        mov     eax, dword [eax+ecx*8+4H]               ; 1D4D _ 8B. 44 C8, 04
        add     eax, edx                                ; 1D51 _ 01. D0
        cmp     dword [ebp+0CH], eax                    ; 1D53 _ 39. 45, 0C
        jne     ?_085                                   ; 1D56 _ 0F 85, 00000090
        mov     eax, dword [ebp-0CH]                    ; 1D5C _ 8B. 45, F4
        lea     edx, [eax-1H]                           ; 1D5F _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 1D62 _ 8B. 45, 08
        add     edx, 2                                  ; 1D65 _ 83. C2, 02
        mov     edx, dword [eax+edx*8+4H]               ; 1D68 _ 8B. 54 D0, 04
        mov     eax, dword [ebp-0CH]                    ; 1D6C _ 8B. 45, F4
        lea     ebx, [eax-1H]                           ; 1D6F _ 8D. 58, FF
        mov     eax, dword [ebp+10H]                    ; 1D72 _ 8B. 45, 10
        lea     ecx, [edx+eax]                          ; 1D75 _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 1D78 _ 8B. 45, 08
        lea     edx, [ebx+2H]                           ; 1D7B _ 8D. 53, 02
        mov     dword [eax+edx*8+4H], ecx               ; 1D7E _ 89. 4C D0, 04
        mov     eax, dword [ebp+8H]                     ; 1D82 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 1D85 _ 8B. 00
        cmp     dword [ebp-0CH], eax                    ; 1D87 _ 39. 45, F4
        jge     ?_084                                   ; 1D8A _ 7D, 56
        mov     edx, dword [ebp+0CH]                    ; 1D8C _ 8B. 55, 0C
        mov     eax, dword [ebp+10H]                    ; 1D8F _ 8B. 45, 10
        lea     ecx, [edx+eax]                          ; 1D92 _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 1D95 _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 1D98 _ 8B. 55, F4
        add     edx, 2                                  ; 1D9B _ 83. C2, 02
        mov     eax, dword [eax+edx*8]                  ; 1D9E _ 8B. 04 D0
        cmp     ecx, eax                                ; 1DA1 _ 39. C1
        jnz     ?_084                                   ; 1DA3 _ 75, 3D
        mov     eax, dword [ebp-0CH]                    ; 1DA5 _ 8B. 45, F4
        lea     edx, [eax-1H]                           ; 1DA8 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 1DAB _ 8B. 45, 08
        add     edx, 2                                  ; 1DAE _ 83. C2, 02
        mov     edx, dword [eax+edx*8+4H]               ; 1DB1 _ 8B. 54 D0, 04
        mov     eax, dword [ebp+8H]                     ; 1DB5 _ 8B. 45, 08
        mov     ecx, dword [ebp-0CH]                    ; 1DB8 _ 8B. 4D, F4
        add     ecx, 2                                  ; 1DBB _ 83. C1, 02
        mov     eax, dword [eax+ecx*8+4H]               ; 1DBE _ 8B. 44 C8, 04
        mov     ecx, dword [ebp-0CH]                    ; 1DC2 _ 8B. 4D, F4
        lea     ebx, [ecx-1H]                           ; 1DC5 _ 8D. 59, FF
        lea     ecx, [edx+eax]                          ; 1DC8 _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 1DCB _ 8B. 45, 08
        lea     edx, [ebx+2H]                           ; 1DCE _ 8D. 53, 02
        mov     dword [eax+edx*8+4H], ecx               ; 1DD1 _ 89. 4C D0, 04
        mov     eax, dword [ebp+8H]                     ; 1DD5 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 1DD8 _ 8B. 00
        lea     edx, [eax-1H]                           ; 1DDA _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 1DDD _ 8B. 45, 08
        mov     dword [eax], edx                        ; 1DE0 _ 89. 10
?_084:  mov     eax, 0                                  ; 1DE2 _ B8, 00000000
        jmp     ?_091                                   ; 1DE7 _ E9, 0000011C

?_085:  mov     eax, dword [ebp+8H]                     ; 1DEC _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 1DEF _ 8B. 00
        cmp     dword [ebp-0CH], eax                    ; 1DF1 _ 39. 45, F4
        jge     ?_086                                   ; 1DF4 _ 7D, 52
        mov     edx, dword [ebp+0CH]                    ; 1DF6 _ 8B. 55, 0C
        mov     eax, dword [ebp+10H]                    ; 1DF9 _ 8B. 45, 10
        lea     ecx, [edx+eax]                          ; 1DFC _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 1DFF _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 1E02 _ 8B. 55, F4
        add     edx, 2                                  ; 1E05 _ 83. C2, 02
        mov     eax, dword [eax+edx*8]                  ; 1E08 _ 8B. 04 D0
        cmp     ecx, eax                                ; 1E0B _ 39. C1
        jnz     ?_086                                   ; 1E0D _ 75, 39
        mov     eax, dword [ebp+8H]                     ; 1E0F _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 1E12 _ 8B. 55, F4
        lea     ecx, [edx+2H]                           ; 1E15 _ 8D. 4A, 02
        mov     edx, dword [ebp+0CH]                    ; 1E18 _ 8B. 55, 0C
        mov     dword [eax+ecx*8], edx                  ; 1E1B _ 89. 14 C8
        mov     eax, dword [ebp+8H]                     ; 1E1E _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 1E21 _ 8B. 55, F4
        add     edx, 2                                  ; 1E24 _ 83. C2, 02
        mov     edx, dword [eax+edx*8+4H]               ; 1E27 _ 8B. 54 D0, 04
        mov     eax, dword [ebp+10H]                    ; 1E2B _ 8B. 45, 10
        lea     ecx, [edx+eax]                          ; 1E2E _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 1E31 _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 1E34 _ 8B. 55, F4
        add     edx, 2                                  ; 1E37 _ 83. C2, 02
        mov     dword [eax+edx*8+4H], ecx               ; 1E3A _ 89. 4C D0, 04
        mov     eax, 0                                  ; 1E3E _ B8, 00000000
        jmp     ?_091                                   ; 1E43 _ E9, 000000C0

?_086:  mov     eax, dword [ebp+8H]                     ; 1E48 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 1E4B _ 8B. 00
        cmp     eax, 4095                               ; 1E4D _ 3D, 00000FFF
        jg      ?_090                                   ; 1E52 _ 0F 8F, 00000087
        mov     eax, dword [ebp+8H]                     ; 1E58 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 1E5B _ 8B. 00
        mov     dword [ebp-8H], eax                     ; 1E5D _ 89. 45, F8
        jmp     ?_088                                   ; 1E60 _ EB, 28

?_087:  mov     eax, dword [ebp-8H]                     ; 1E62 _ 8B. 45, F8
        lea     edx, [eax-1H]                           ; 1E65 _ 8D. 50, FF
        mov     ecx, dword [ebp+8H]                     ; 1E68 _ 8B. 4D, 08
        mov     eax, dword [ebp-8H]                     ; 1E6B _ 8B. 45, F8
        lea     ebx, [eax+2H]                           ; 1E6E _ 8D. 58, 02
        mov     eax, dword [ebp+8H]                     ; 1E71 _ 8B. 45, 08
        add     edx, 2                                  ; 1E74 _ 83. C2, 02
        lea     edx, [eax+edx*8]                        ; 1E77 _ 8D. 14 D0
        mov     eax, dword [edx]                        ; 1E7A _ 8B. 02
        mov     edx, dword [edx+4H]                     ; 1E7C _ 8B. 52, 04
        mov     dword [ecx+ebx*8], eax                  ; 1E7F _ 89. 04 D9
        mov     dword [ecx+ebx*8+4H], edx               ; 1E82 _ 89. 54 D9, 04
        sub     dword [ebp-8H], 1                       ; 1E86 _ 83. 6D, F8, 01
?_088:  mov     eax, dword [ebp-8H]                     ; 1E8A _ 8B. 45, F8
        cmp     eax, dword [ebp-0CH]                    ; 1E8D _ 3B. 45, F4
        jg      ?_087                                   ; 1E90 _ 7F, D0
        mov     eax, dword [ebp+8H]                     ; 1E92 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 1E95 _ 8B. 00
        lea     edx, [eax+1H]                           ; 1E97 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 1E9A _ 8B. 45, 08
        mov     dword [eax], edx                        ; 1E9D _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 1E9F _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 1EA2 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 1EA5 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 1EA8 _ 8B. 00
        cmp     edx, eax                                ; 1EAA _ 39. C2
        jge     ?_089                                   ; 1EAC _ 7D, 0B
        mov     eax, dword [ebp+8H]                     ; 1EAE _ 8B. 45, 08
        mov     edx, dword [eax]                        ; 1EB1 _ 8B. 10
        mov     eax, dword [ebp+8H]                     ; 1EB3 _ 8B. 45, 08
        mov     dword [eax+4H], edx                     ; 1EB6 _ 89. 50, 04
?_089:  mov     eax, dword [ebp+8H]                     ; 1EB9 _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 1EBC _ 8B. 55, F4
        lea     ecx, [edx+2H]                           ; 1EBF _ 8D. 4A, 02
        mov     edx, dword [ebp+0CH]                    ; 1EC2 _ 8B. 55, 0C
        mov     dword [eax+ecx*8], edx                  ; 1EC5 _ 89. 14 C8
        mov     eax, dword [ebp+8H]                     ; 1EC8 _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 1ECB _ 8B. 55, F4
        lea     ecx, [edx+2H]                           ; 1ECE _ 8D. 4A, 02
        mov     edx, dword [ebp+10H]                    ; 1ED1 _ 8B. 55, 10
        mov     dword [eax+ecx*8+4H], edx               ; 1ED4 _ 89. 54 C8, 04
        mov     eax, 0                                  ; 1ED8 _ B8, 00000000
        jmp     ?_091                                   ; 1EDD _ EB, 29

?_090:  mov     eax, dword [ebp+8H]                     ; 1EDF _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 1EE2 _ 8B. 40, 0C
        lea     edx, [eax+1H]                           ; 1EE5 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 1EE8 _ 8B. 45, 08
        mov     dword [eax+0CH], edx                    ; 1EEB _ 89. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 1EEE _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 1EF1 _ 8B. 40, 08
        mov     edx, eax                                ; 1EF4 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 1EF6 _ 8B. 45, 10
        add     eax, edx                                ; 1EF9 _ 01. D0
        mov     edx, eax                                ; 1EFB _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 1EFD _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 1F00 _ 89. 50, 08
        mov     eax, 4294967295                         ; 1F03 _ B8, FFFFFFFF
?_091:  add     esp, 16                                 ; 1F08 _ 83. C4, 10
        pop     ebx                                     ; 1F0B _ 5B
        pop     ebp                                     ; 1F0C _ 5D
        ret                                             ; 1F0D _ C3
; memman_free End of function

memman_free_4K:; Function begin
        push    ebp                                     ; 1F0E _ 55
        mov     ebp, esp                                ; 1F0F _ 89. E5
        sub     esp, 16                                 ; 1F11 _ 83. EC, 10
        mov     eax, dword [ebp+10H]                    ; 1F14 _ 8B. 45, 10
        add     eax, 4095                               ; 1F17 _ 05, 00000FFF
        and     eax, 0FFFFF000H                         ; 1F1C _ 25, FFFFF000
        mov     dword [ebp+10H], eax                    ; 1F21 _ 89. 45, 10
        push    dword [ebp+10H]                         ; 1F24 _ FF. 75, 10
        push    dword [ebp+0CH]                         ; 1F27 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1F2A _ FF. 75, 08
        call    memman_free                             ; 1F2D _ E8, FFFFFFFC(rel)
        add     esp, 12                                 ; 1F32 _ 83. C4, 0C
        mov     dword [ebp-4H], eax                     ; 1F35 _ 89. 45, FC
        mov     eax, dword [ebp-4H]                     ; 1F38 _ 8B. 45, FC
        leave                                           ; 1F3B _ C9
        ret                                             ; 1F3C _ C3
; memman_free_4K End of function

shtctl_init:; Function begin
        push    ebp                                     ; 1F3D _ 55
        mov     ebp, esp                                ; 1F3E _ 89. E5
        sub     esp, 24                                 ; 1F40 _ 83. EC, 18
        sub     esp, 8                                  ; 1F43 _ 83. EC, 08
        push    9232                                    ; 1F46 _ 68, 00002410
        push    dword [ebp+8H]                          ; 1F4B _ FF. 75, 08
        call    memman_alloc_4K                         ; 1F4E _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1F53 _ 83. C4, 10
        mov     dword [ebp-0CH], eax                    ; 1F56 _ 89. 45, F4
        cmp     dword [ebp-0CH], 0                      ; 1F59 _ 83. 7D, F4, 00
        jnz     ?_092                                   ; 1F5D _ 75, 0A
        mov     eax, 0                                  ; 1F5F _ B8, 00000000
        jmp     ?_096                                   ; 1F64 _ E9, 0000009A

?_092:  mov     eax, dword [ebp+10H]                    ; 1F69 _ 8B. 45, 10
        imul    eax, dword [ebp+14H]                    ; 1F6C _ 0F AF. 45, 14
        sub     esp, 8                                  ; 1F70 _ 83. EC, 08
        push    eax                                     ; 1F73 _ 50
        push    dword [ebp+8H]                          ; 1F74 _ FF. 75, 08
        call    memman_alloc_4K                         ; 1F77 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1F7C _ 83. C4, 10
        mov     edx, eax                                ; 1F7F _ 89. C2
        mov     eax, dword [ebp-0CH]                    ; 1F81 _ 8B. 45, F4
        mov     dword [eax+4H], edx                     ; 1F84 _ 89. 50, 04
        mov     eax, dword [ebp-0CH]                    ; 1F87 _ 8B. 45, F4
        mov     eax, dword [eax+4H]                     ; 1F8A _ 8B. 40, 04
        test    eax, eax                                ; 1F8D _ 85. C0
        jnz     ?_093                                   ; 1F8F _ 75, 1E
        mov     eax, dword [ebp-0CH]                    ; 1F91 _ 8B. 45, F4
        sub     esp, 4                                  ; 1F94 _ 83. EC, 04
        push    9232                                    ; 1F97 _ 68, 00002410
        push    eax                                     ; 1F9C _ 50
        push    dword [ebp+8H]                          ; 1F9D _ FF. 75, 08
        call    memman_free_4K                          ; 1FA0 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1FA5 _ 83. C4, 10
        mov     eax, 0                                  ; 1FA8 _ B8, 00000000
        jmp     ?_096                                   ; 1FAD _ EB, 54

?_093:  mov     eax, dword [ebp-0CH]                    ; 1FAF _ 8B. 45, F4
        mov     edx, dword [ebp+0CH]                    ; 1FB2 _ 8B. 55, 0C
        mov     dword [eax], edx                        ; 1FB5 _ 89. 10
        mov     eax, dword [ebp-0CH]                    ; 1FB7 _ 8B. 45, F4
        mov     edx, dword [ebp+10H]                    ; 1FBA _ 8B. 55, 10
        mov     dword [eax+8H], edx                     ; 1FBD _ 89. 50, 08
        mov     eax, dword [ebp-0CH]                    ; 1FC0 _ 8B. 45, F4
        mov     edx, dword [ebp+14H]                    ; 1FC3 _ 8B. 55, 14
        mov     dword [eax+0CH], edx                    ; 1FC6 _ 89. 50, 0C
        mov     eax, dword [ebp-0CH]                    ; 1FC9 _ 8B. 45, F4
        mov     dword [eax+10H], -1                     ; 1FCC _ C7. 40, 10, FFFFFFFF
        mov     dword [ebp-10H], 0                      ; 1FD3 _ C7. 45, F0, 00000000
        jmp     ?_095                                   ; 1FDA _ EB, 1B

?_094:  mov     eax, dword [ebp-0CH]                    ; 1FDC _ 8B. 45, F4
        mov     edx, dword [ebp-10H]                    ; 1FDF _ 8B. 55, F0
        add     edx, 33                                 ; 1FE2 _ 83. C2, 21
        shl     edx, 5                                  ; 1FE5 _ C1. E2, 05
        add     eax, edx                                ; 1FE8 _ 01. D0
        add     eax, 16                                 ; 1FEA _ 83. C0, 10
        mov     dword [eax], 0                          ; 1FED _ C7. 00, 00000000
        add     dword [ebp-10H], 1                      ; 1FF3 _ 83. 45, F0, 01
?_095:  cmp     dword [ebp-10H], 255                    ; 1FF7 _ 81. 7D, F0, 000000FF
        jle     ?_094                                   ; 1FFE _ 7E, DC
        mov     eax, dword [ebp-0CH]                    ; 2000 _ 8B. 45, F4
?_096:  leave                                           ; 2003 _ C9
        ret                                             ; 2004 _ C3
; shtctl_init End of function

sheet_alloc:; Function begin
        push    ebp                                     ; 2005 _ 55
        mov     ebp, esp                                ; 2006 _ 89. E5
        sub     esp, 16                                 ; 2008 _ 83. EC, 10
        mov     dword [ebp-8H], 0                       ; 200B _ C7. 45, F8, 00000000
        jmp     ?_099                                   ; 2012 _ EB, 4B

?_097:  mov     eax, dword [ebp+8H]                     ; 2014 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 2017 _ 8B. 55, F8
        add     edx, 33                                 ; 201A _ 83. C2, 21
        shl     edx, 5                                  ; 201D _ C1. E2, 05
        add     eax, edx                                ; 2020 _ 01. D0
        add     eax, 16                                 ; 2022 _ 83. C0, 10
        mov     eax, dword [eax]                        ; 2025 _ 8B. 00
        test    eax, eax                                ; 2027 _ 85. C0
        jnz     ?_098                                   ; 2029 _ 75, 30
        mov     eax, dword [ebp-8H]                     ; 202B _ 8B. 45, F8
        shl     eax, 5                                  ; 202E _ C1. E0, 05
        lea     edx, [eax+410H]                         ; 2031 _ 8D. 90, 00000410
        mov     eax, dword [ebp+8H]                     ; 2037 _ 8B. 45, 08
        add     eax, edx                                ; 203A _ 01. D0
        add     eax, 4                                  ; 203C _ 83. C0, 04
        mov     dword [ebp-4H], eax                     ; 203F _ 89. 45, FC
        mov     eax, dword [ebp-4H]                     ; 2042 _ 8B. 45, FC
        mov     dword [eax+1CH], 1                      ; 2045 _ C7. 40, 1C, 00000001
        mov     eax, dword [ebp-4H]                     ; 204C _ 8B. 45, FC
        mov     dword [eax+18H], -1                     ; 204F _ C7. 40, 18, FFFFFFFF
        mov     eax, dword [ebp-4H]                     ; 2056 _ 8B. 45, FC
        jmp     ?_100                                   ; 2059 _ EB, 12

?_098:  add     dword [ebp-8H], 1                       ; 205B _ 83. 45, F8, 01
?_099:  cmp     dword [ebp-8H], 255                     ; 205F _ 81. 7D, F8, 000000FF
        jle     ?_097                                   ; 2066 _ 7E, AC
        mov     eax, 0                                  ; 2068 _ B8, 00000000
?_100:  leave                                           ; 206D _ C9
        ret                                             ; 206E _ C3
; sheet_alloc End of function

sheet_setbuf:; Function begin
        push    ebp                                     ; 206F _ 55
        mov     ebp, esp                                ; 2070 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 2072 _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 2075 _ 8B. 55, 0C
        mov     dword [eax], edx                        ; 2078 _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 207A _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 207D _ 8B. 55, 10
        mov     dword [eax+4H], edx                     ; 2080 _ 89. 50, 04
        mov     eax, dword [ebp+8H]                     ; 2083 _ 8B. 45, 08
        mov     edx, dword [ebp+14H]                    ; 2086 _ 8B. 55, 14
        mov     dword [eax+8H], edx                     ; 2089 _ 89. 50, 08
        mov     eax, dword [ebp+8H]                     ; 208C _ 8B. 45, 08
        mov     edx, dword [ebp+18H]                    ; 208F _ 8B. 55, 18
        mov     dword [eax+14H], edx                    ; 2092 _ 89. 50, 14
        nop                                             ; 2095 _ 90
        pop     ebp                                     ; 2096 _ 5D
        ret                                             ; 2097 _ C3
; sheet_setbuf End of function

sheet_level_updown:; Function begin
        push    ebp                                     ; 2098 _ 55
        mov     ebp, esp                                ; 2099 _ 89. E5
        push    esi                                     ; 209B _ 56
        push    ebx                                     ; 209C _ 53
        sub     esp, 32                                 ; 209D _ 83. EC, 20
        mov     eax, dword [ebp+0CH]                    ; 20A0 _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 20A3 _ 8B. 40, 18
        mov     dword [ebp-0CH], eax                    ; 20A6 _ 89. 45, F4
        mov     eax, dword [ebp+8H]                     ; 20A9 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 20AC _ 8B. 40, 10
        add     eax, 1                                  ; 20AF _ 83. C0, 01
        cmp     dword [ebp+10H], eax                    ; 20B2 _ 39. 45, 10
        jle     ?_101                                   ; 20B5 _ 7E, 0C
        mov     eax, dword [ebp+8H]                     ; 20B7 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 20BA _ 8B. 40, 10
        add     eax, 1                                  ; 20BD _ 83. C0, 01
        mov     dword [ebp+10H], eax                    ; 20C0 _ 89. 45, 10
?_101:  cmp     dword [ebp+10H], -1                     ; 20C3 _ 83. 7D, 10, FF
        jge     ?_102                                   ; 20C7 _ 7D, 07
        mov     dword [ebp+10H], -1                     ; 20C9 _ C7. 45, 10, FFFFFFFF
?_102:  mov     eax, dword [ebp+0CH]                    ; 20D0 _ 8B. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 20D3 _ 8B. 55, 10
        mov     dword [eax+18H], edx                    ; 20D6 _ 89. 50, 18
        mov     eax, dword [ebp-0CH]                    ; 20D9 _ 8B. 45, F4
        cmp     eax, dword [ebp+10H]                    ; 20DC _ 3B. 45, 10
        jle     ?_109                                   ; 20DF _ 0F 8E, 000001D5
        cmp     dword [ebp+10H], 0                      ; 20E5 _ 83. 7D, 10, 00
        js      ?_105                                   ; 20E9 _ 0F 88, 000000E2
        mov     eax, dword [ebp-0CH]                    ; 20EF _ 8B. 45, F4
        mov     dword [ebp-1CH], eax                    ; 20F2 _ 89. 45, E4
        jmp     ?_104                                   ; 20F5 _ EB, 34

?_103:  mov     eax, dword [ebp-1CH]                    ; 20F7 _ 8B. 45, E4
        lea     edx, [eax-1H]                           ; 20FA _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 20FD _ 8B. 45, 08
        add     edx, 4                                  ; 2100 _ 83. C2, 04
        mov     edx, dword [eax+edx*4+4H]               ; 2103 _ 8B. 54 90, 04
        mov     eax, dword [ebp+8H]                     ; 2107 _ 8B. 45, 08
        mov     ecx, dword [ebp-1CH]                    ; 210A _ 8B. 4D, E4
        add     ecx, 4                                  ; 210D _ 83. C1, 04
        mov     dword [eax+ecx*4+4H], edx               ; 2110 _ 89. 54 88, 04
        mov     eax, dword [ebp+8H]                     ; 2114 _ 8B. 45, 08
        mov     edx, dword [ebp-1CH]                    ; 2117 _ 8B. 55, E4
        add     edx, 4                                  ; 211A _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 211D _ 8B. 44 90, 04
        mov     edx, dword [ebp-1CH]                    ; 2121 _ 8B. 55, E4
        mov     dword [eax+18H], edx                    ; 2124 _ 89. 50, 18
        sub     dword [ebp-1CH], 1                      ; 2127 _ 83. 6D, E4, 01
?_104:  mov     eax, dword [ebp-1CH]                    ; 212B _ 8B. 45, E4
        cmp     eax, dword [ebp+10H]                    ; 212E _ 3B. 45, 10
        jg      ?_103                                   ; 2131 _ 7F, C4
        mov     eax, dword [ebp+8H]                     ; 2133 _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 2136 _ 8B. 55, 10
        lea     ecx, [edx+4H]                           ; 2139 _ 8D. 4A, 04
        mov     edx, dword [ebp+0CH]                    ; 213C _ 8B. 55, 0C
        mov     dword [eax+ecx*4+4H], edx               ; 213F _ 89. 54 88, 04
        mov     eax, dword [ebp+10H]                    ; 2143 _ 8B. 45, 10
        lea     esi, [eax+1H]                           ; 2146 _ 8D. 70, 01
        mov     eax, dword [ebp+0CH]                    ; 2149 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 214C _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 214F _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 2152 _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 2155 _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 2158 _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 215B _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 215E _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 2161 _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 2164 _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 2167 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 216A _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 216D _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 2170 _ 8B. 40, 0C
        sub     esp, 8                                  ; 2173 _ 83. EC, 08
        push    esi                                     ; 2176 _ 56
        push    ebx                                     ; 2177 _ 53
        push    ecx                                     ; 2178 _ 51
        push    edx                                     ; 2179 _ 52
        push    eax                                     ; 217A _ 50
        push    dword [ebp+8H]                          ; 217B _ FF. 75, 08
        call    sheet_refreshmap                        ; 217E _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 2183 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 2186 _ 8B. 45, 10
        lea     esi, [eax+1H]                           ; 2189 _ 8D. 70, 01
        mov     eax, dword [ebp+0CH]                    ; 218C _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 218F _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 2192 _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 2195 _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 2198 _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 219B _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 219E _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 21A1 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 21A4 _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 21A7 _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 21AA _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 21AD _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 21B0 _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 21B3 _ 8B. 40, 0C
        sub     esp, 4                                  ; 21B6 _ 83. EC, 04
        push    dword [ebp-0CH]                         ; 21B9 _ FF. 75, F4
        push    esi                                     ; 21BC _ 56
        push    ebx                                     ; 21BD _ 53
        push    ecx                                     ; 21BE _ 51
        push    edx                                     ; 21BF _ 52
        push    eax                                     ; 21C0 _ 50
        push    dword [ebp+8H]                          ; 21C1 _ FF. 75, 08
        call    sheet_refresh_new                       ; 21C4 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 21C9 _ 83. C4, 20
        jmp     ?_116                                   ; 21CC _ E9, 00000244

?_105:  mov     eax, dword [ebp+8H]                     ; 21D1 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 21D4 _ 8B. 40, 10
        cmp     dword [ebp-0CH], eax                    ; 21D7 _ 39. 45, F4
        jge     ?_108                                   ; 21DA _ 7D, 47
        mov     eax, dword [ebp-0CH]                    ; 21DC _ 8B. 45, F4
        mov     dword [ebp-18H], eax                    ; 21DF _ 89. 45, E8
        jmp     ?_107                                   ; 21E2 _ EB, 34

?_106:  mov     eax, dword [ebp-18H]                    ; 21E4 _ 8B. 45, E8
        lea     edx, [eax+1H]                           ; 21E7 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 21EA _ 8B. 45, 08
        add     edx, 4                                  ; 21ED _ 83. C2, 04
        mov     edx, dword [eax+edx*4+4H]               ; 21F0 _ 8B. 54 90, 04
        mov     eax, dword [ebp+8H]                     ; 21F4 _ 8B. 45, 08
        mov     ecx, dword [ebp-18H]                    ; 21F7 _ 8B. 4D, E8
        add     ecx, 4                                  ; 21FA _ 83. C1, 04
        mov     dword [eax+ecx*4+4H], edx               ; 21FD _ 89. 54 88, 04
        mov     eax, dword [ebp+8H]                     ; 2201 _ 8B. 45, 08
        mov     edx, dword [ebp-18H]                    ; 2204 _ 8B. 55, E8
        add     edx, 4                                  ; 2207 _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 220A _ 8B. 44 90, 04
        mov     edx, dword [ebp-18H]                    ; 220E _ 8B. 55, E8
        mov     dword [eax+18H], edx                    ; 2211 _ 89. 50, 18
        add     dword [ebp-18H], 1                      ; 2214 _ 83. 45, E8, 01
?_107:  mov     eax, dword [ebp+8H]                     ; 2218 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 221B _ 8B. 40, 10
        cmp     dword [ebp-18H], eax                    ; 221E _ 39. 45, E8
        jl      ?_106                                   ; 2221 _ 7C, C1
?_108:  mov     eax, dword [ebp+8H]                     ; 2223 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 2226 _ 8B. 40, 10
        lea     edx, [eax-1H]                           ; 2229 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 222C _ 8B. 45, 08
        mov     dword [eax+10H], edx                    ; 222F _ 89. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 2232 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 2235 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 2238 _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 223B _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 223E _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 2241 _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 2244 _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 2247 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 224A _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 224D _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 2250 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 2253 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 2256 _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 2259 _ 8B. 40, 0C
        sub     esp, 8                                  ; 225C _ 83. EC, 08
        push    0                                       ; 225F _ 6A, 00
        push    ebx                                     ; 2261 _ 53
        push    ecx                                     ; 2262 _ 51
        push    edx                                     ; 2263 _ 52
        push    eax                                     ; 2264 _ 50
        push    dword [ebp+8H]                          ; 2265 _ FF. 75, 08
        call    sheet_refreshmap                        ; 2268 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 226D _ 83. C4, 20
        mov     eax, dword [ebp-0CH]                    ; 2270 _ 8B. 45, F4
        lea     esi, [eax-1H]                           ; 2273 _ 8D. 70, FF
        mov     eax, dword [ebp+0CH]                    ; 2276 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 2279 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 227C _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 227F _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 2282 _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 2285 _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 2288 _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 228B _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 228E _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 2291 _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 2294 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 2297 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 229A _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 229D _ 8B. 40, 0C
        sub     esp, 4                                  ; 22A0 _ 83. EC, 04
        push    esi                                     ; 22A3 _ 56
        push    0                                       ; 22A4 _ 6A, 00
        push    ebx                                     ; 22A6 _ 53
        push    ecx                                     ; 22A7 _ 51
        push    edx                                     ; 22A8 _ 52
        push    eax                                     ; 22A9 _ 50
        push    dword [ebp+8H]                          ; 22AA _ FF. 75, 08
        call    sheet_refresh_new                       ; 22AD _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 22B2 _ 83. C4, 20
        jmp     ?_116                                   ; 22B5 _ E9, 0000015B

?_109:  mov     eax, dword [ebp-0CH]                    ; 22BA _ 8B. 45, F4
        cmp     eax, dword [ebp+10H]                    ; 22BD _ 3B. 45, 10
        jge     ?_116                                   ; 22C0 _ 0F 8D, 0000014F
        cmp     dword [ebp-0CH], 0                      ; 22C6 _ 83. 7D, F4, 00
        js      ?_112                                   ; 22CA _ 78, 56
        mov     eax, dword [ebp-0CH]                    ; 22CC _ 8B. 45, F4
        mov     dword [ebp-14H], eax                    ; 22CF _ 89. 45, EC
        jmp     ?_111                                   ; 22D2 _ EB, 34

?_110:  mov     eax, dword [ebp-14H]                    ; 22D4 _ 8B. 45, EC
        lea     edx, [eax+1H]                           ; 22D7 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 22DA _ 8B. 45, 08
        add     edx, 4                                  ; 22DD _ 83. C2, 04
        mov     edx, dword [eax+edx*4+4H]               ; 22E0 _ 8B. 54 90, 04
        mov     eax, dword [ebp+8H]                     ; 22E4 _ 8B. 45, 08
        mov     ecx, dword [ebp-14H]                    ; 22E7 _ 8B. 4D, EC
        add     ecx, 4                                  ; 22EA _ 83. C1, 04
        mov     dword [eax+ecx*4+4H], edx               ; 22ED _ 89. 54 88, 04
        mov     eax, dword [ebp+8H]                     ; 22F1 _ 8B. 45, 08
        mov     edx, dword [ebp-14H]                    ; 22F4 _ 8B. 55, EC
        add     edx, 4                                  ; 22F7 _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 22FA _ 8B. 44 90, 04
        mov     edx, dword [ebp-14H]                    ; 22FE _ 8B. 55, EC
        mov     dword [eax+18H], edx                    ; 2301 _ 89. 50, 18
        add     dword [ebp-14H], 1                      ; 2304 _ 83. 45, EC, 01
?_111:  mov     eax, dword [ebp-14H]                    ; 2308 _ 8B. 45, EC
        cmp     eax, dword [ebp+10H]                    ; 230B _ 3B. 45, 10
        jl      ?_110                                   ; 230E _ 7C, C4
        mov     eax, dword [ebp+8H]                     ; 2310 _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 2313 _ 8B. 55, 10
        lea     ecx, [edx+4H]                           ; 2316 _ 8D. 4A, 04
        mov     edx, dword [ebp+0CH]                    ; 2319 _ 8B. 55, 0C
        mov     dword [eax+ecx*4+4H], edx               ; 231C _ 89. 54 88, 04
        jmp     ?_115                                   ; 2320 _ EB, 72

?_112:  cmp     dword [ebp-0CH], 0                      ; 2322 _ 83. 7D, F4, 00
        jns     ?_115                                   ; 2326 _ 79, 6C
        mov     eax, dword [ebp+8H]                     ; 2328 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 232B _ 8B. 40, 10
        mov     dword [ebp-10H], eax                    ; 232E _ 89. 45, F0
        jmp     ?_114                                   ; 2331 _ EB, 3A

?_113:  mov     eax, dword [ebp-10H]                    ; 2333 _ 8B. 45, F0
        lea     ecx, [eax+1H]                           ; 2336 _ 8D. 48, 01
        mov     eax, dword [ebp+8H]                     ; 2339 _ 8B. 45, 08
        mov     edx, dword [ebp-10H]                    ; 233C _ 8B. 55, F0
        add     edx, 4                                  ; 233F _ 83. C2, 04
        mov     edx, dword [eax+edx*4+4H]               ; 2342 _ 8B. 54 90, 04
        mov     eax, dword [ebp+8H]                     ; 2346 _ 8B. 45, 08
        add     ecx, 4                                  ; 2349 _ 83. C1, 04
        mov     dword [eax+ecx*4+4H], edx               ; 234C _ 89. 54 88, 04
        mov     eax, dword [ebp-10H]                    ; 2350 _ 8B. 45, F0
        lea     edx, [eax+1H]                           ; 2353 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 2356 _ 8B. 45, 08
        add     edx, 4                                  ; 2359 _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 235C _ 8B. 44 90, 04
        mov     edx, dword [ebp-10H]                    ; 2360 _ 8B. 55, F0
        add     edx, 1                                  ; 2363 _ 83. C2, 01
        mov     dword [eax+18H], edx                    ; 2366 _ 89. 50, 18
        sub     dword [ebp-10H], 1                      ; 2369 _ 83. 6D, F0, 01
?_114:  mov     eax, dword [ebp-10H]                    ; 236D _ 8B. 45, F0
        cmp     eax, dword [ebp+10H]                    ; 2370 _ 3B. 45, 10
        jge     ?_113                                   ; 2373 _ 7D, BE
        mov     eax, dword [ebp+8H]                     ; 2375 _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 2378 _ 8B. 55, 10
        lea     ecx, [edx+4H]                           ; 237B _ 8D. 4A, 04
        mov     edx, dword [ebp+0CH]                    ; 237E _ 8B. 55, 0C
        mov     dword [eax+ecx*4+4H], edx               ; 2381 _ 89. 54 88, 04
        mov     eax, dword [ebp+8H]                     ; 2385 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 2388 _ 8B. 40, 10
        lea     edx, [eax+1H]                           ; 238B _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 238E _ 8B. 45, 08
        mov     dword [eax+10H], edx                    ; 2391 _ 89. 50, 10
?_115:  mov     eax, dword [ebp+0CH]                    ; 2394 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 2397 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 239A _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 239D _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 23A0 _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 23A3 _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 23A6 _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 23A9 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 23AC _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 23AF _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 23B2 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 23B5 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 23B8 _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 23BB _ 8B. 40, 0C
        sub     esp, 8                                  ; 23BE _ 83. EC, 08
        push    dword [ebp+10H]                         ; 23C1 _ FF. 75, 10
        push    ebx                                     ; 23C4 _ 53
        push    ecx                                     ; 23C5 _ 51
        push    edx                                     ; 23C6 _ 52
        push    eax                                     ; 23C7 _ 50
        push    dword [ebp+8H]                          ; 23C8 _ FF. 75, 08
        call    sheet_refreshmap                        ; 23CB _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 23D0 _ 83. C4, 20
        mov     eax, dword [ebp+0CH]                    ; 23D3 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 23D6 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 23D9 _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 23DC _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 23DF _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 23E2 _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 23E5 _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 23E8 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 23EB _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 23EE _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 23F1 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 23F4 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 23F7 _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 23FA _ 8B. 40, 0C
        sub     esp, 4                                  ; 23FD _ 83. EC, 04
        push    dword [ebp+10H]                         ; 2400 _ FF. 75, 10
        push    dword [ebp+10H]                         ; 2403 _ FF. 75, 10
        push    ebx                                     ; 2406 _ 53
        push    ecx                                     ; 2407 _ 51
        push    edx                                     ; 2408 _ 52
        push    eax                                     ; 2409 _ 50
        push    dword [ebp+8H]                          ; 240A _ FF. 75, 08
        call    sheet_refresh_new                       ; 240D _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 2412 _ 83. C4, 20
?_116:  nop                                             ; 2415 _ 90
        lea     esp, [ebp-8H]                           ; 2416 _ 8D. 65, F8
        pop     ebx                                     ; 2419 _ 5B
        pop     esi                                     ; 241A _ 5E
        pop     ebp                                     ; 241B _ 5D
        ret                                             ; 241C _ C3
; sheet_level_updown End of function

sheet_refresh:; Function begin
        push    ebp                                     ; 241D _ 55
        mov     ebp, esp                                ; 241E _ 89. E5
        push    edi                                     ; 2420 _ 57
        push    esi                                     ; 2421 _ 56
        push    ebx                                     ; 2422 _ 53
        sub     esp, 28                                 ; 2423 _ 83. EC, 1C
        mov     eax, dword [ebp+0CH]                    ; 2426 _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 2429 _ 8B. 40, 18
        test    eax, eax                                ; 242C _ 85. C0
        js      ?_117                                   ; 242E _ 78, 52
        mov     eax, dword [ebp+0CH]                    ; 2430 _ 8B. 45, 0C
        mov     ebx, dword [eax+18H]                    ; 2433 _ 8B. 58, 18
        mov     eax, dword [ebp+0CH]                    ; 2436 _ 8B. 45, 0C
        mov     ecx, dword [eax+18H]                    ; 2439 _ 8B. 48, 18
        mov     eax, dword [ebp+0CH]                    ; 243C _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 243F _ 8B. 50, 10
        mov     eax, dword [ebp+1CH]                    ; 2442 _ 8B. 45, 1C
        lea     edi, [edx+eax]                          ; 2445 _ 8D. 3C 02
        mov     eax, dword [ebp+0CH]                    ; 2448 _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 244B _ 8B. 50, 0C
        mov     eax, dword [ebp+18H]                    ; 244E _ 8B. 45, 18
        lea     esi, [edx+eax]                          ; 2451 _ 8D. 34 02
        mov     eax, dword [ebp+0CH]                    ; 2454 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 2457 _ 8B. 50, 10
        mov     eax, dword [ebp+14H]                    ; 245A _ 8B. 45, 14
        add     edx, eax                                ; 245D _ 01. C2
        mov     eax, dword [ebp+0CH]                    ; 245F _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 2462 _ 8B. 40, 0C
        mov     dword [ebp-1CH], eax                    ; 2465 _ 89. 45, E4
        mov     eax, dword [ebp+10H]                    ; 2468 _ 8B. 45, 10
        add     eax, dword [ebp-1CH]                    ; 246B _ 03. 45, E4
        sub     esp, 4                                  ; 246E _ 83. EC, 04
        push    ebx                                     ; 2471 _ 53
        push    ecx                                     ; 2472 _ 51
        push    edi                                     ; 2473 _ 57
        push    esi                                     ; 2474 _ 56
        push    edx                                     ; 2475 _ 52
        push    eax                                     ; 2476 _ 50
        push    dword [ebp+8H]                          ; 2477 _ FF. 75, 08
        call    sheet_refresh_new                       ; 247A _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 247F _ 83. C4, 20
?_117:  mov     eax, 0                                  ; 2482 _ B8, 00000000
        lea     esp, [ebp-0CH]                          ; 2487 _ 8D. 65, F4
        pop     ebx                                     ; 248A _ 5B
        pop     esi                                     ; 248B _ 5E
        pop     edi                                     ; 248C _ 5F
        pop     ebp                                     ; 248D _ 5D
        ret                                             ; 248E _ C3
; sheet_refresh End of function

sheet_slide:; Function begin
        push    ebp                                     ; 248F _ 55
        mov     ebp, esp                                ; 2490 _ 89. E5
        push    esi                                     ; 2492 _ 56
        push    ebx                                     ; 2493 _ 53
        sub     esp, 16                                 ; 2494 _ 83. EC, 10
        mov     eax, dword [ebp+0CH]                    ; 2497 _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 249A _ 8B. 40, 0C
        mov     dword [ebp-10H], eax                    ; 249D _ 89. 45, F0
        mov     eax, dword [ebp+0CH]                    ; 24A0 _ 8B. 45, 0C
        mov     eax, dword [eax+10H]                    ; 24A3 _ 8B. 40, 10
        mov     dword [ebp-0CH], eax                    ; 24A6 _ 89. 45, F4
        mov     eax, dword [ebp+0CH]                    ; 24A9 _ 8B. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 24AC _ 8B. 55, 10
        mov     dword [eax+0CH], edx                    ; 24AF _ 89. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 24B2 _ 8B. 45, 0C
        mov     edx, dword [ebp+14H]                    ; 24B5 _ 8B. 55, 14
        mov     dword [eax+10H], edx                    ; 24B8 _ 89. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 24BB _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 24BE _ 8B. 40, 18
        test    eax, eax                                ; 24C1 _ 85. C0
        js      ?_118                                   ; 24C3 _ 0F 88, 000000D3
        mov     eax, dword [ebp+0CH]                    ; 24C9 _ 8B. 45, 0C
        mov     edx, dword [eax+8H]                     ; 24CC _ 8B. 50, 08
        mov     eax, dword [ebp-0CH]                    ; 24CF _ 8B. 45, F4
        add     edx, eax                                ; 24D2 _ 01. C2
        mov     eax, dword [ebp+0CH]                    ; 24D4 _ 8B. 45, 0C
        mov     ecx, dword [eax+4H]                     ; 24D7 _ 8B. 48, 04
        mov     eax, dword [ebp-10H]                    ; 24DA _ 8B. 45, F0
        add     eax, ecx                                ; 24DD _ 01. C8
        sub     esp, 8                                  ; 24DF _ 83. EC, 08
        push    0                                       ; 24E2 _ 6A, 00
        push    edx                                     ; 24E4 _ 52
        push    eax                                     ; 24E5 _ 50
        push    dword [ebp-0CH]                         ; 24E6 _ FF. 75, F4
        push    dword [ebp-10H]                         ; 24E9 _ FF. 75, F0
        push    dword [ebp+8H]                          ; 24EC _ FF. 75, 08
        call    sheet_refreshmap                        ; 24EF _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 24F4 _ 83. C4, 20
        mov     eax, dword [ebp+0CH]                    ; 24F7 _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 24FA _ 8B. 40, 18
        mov     edx, dword [ebp+0CH]                    ; 24FD _ 8B. 55, 0C
        mov     ecx, dword [edx+8H]                     ; 2500 _ 8B. 4A, 08
        mov     edx, dword [ebp+14H]                    ; 2503 _ 8B. 55, 14
        add     ecx, edx                                ; 2506 _ 01. D1
        mov     edx, dword [ebp+0CH]                    ; 2508 _ 8B. 55, 0C
        mov     ebx, dword [edx+4H]                     ; 250B _ 8B. 5A, 04
        mov     edx, dword [ebp+10H]                    ; 250E _ 8B. 55, 10
        add     edx, ebx                                ; 2511 _ 01. DA
        sub     esp, 8                                  ; 2513 _ 83. EC, 08
        push    eax                                     ; 2516 _ 50
        push    ecx                                     ; 2517 _ 51
        push    edx                                     ; 2518 _ 52
        push    dword [ebp+14H]                         ; 2519 _ FF. 75, 14
        push    dword [ebp+10H]                         ; 251C _ FF. 75, 10
        push    dword [ebp+8H]                          ; 251F _ FF. 75, 08
        call    sheet_refreshmap                        ; 2522 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 2527 _ 83. C4, 20
        mov     eax, dword [ebp+0CH]                    ; 252A _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 252D _ 8B. 40, 18
        lea     ecx, [eax-1H]                           ; 2530 _ 8D. 48, FF
        mov     eax, dword [ebp+0CH]                    ; 2533 _ 8B. 45, 0C
        mov     edx, dword [eax+8H]                     ; 2536 _ 8B. 50, 08
        mov     eax, dword [ebp-0CH]                    ; 2539 _ 8B. 45, F4
        add     edx, eax                                ; 253C _ 01. C2
        mov     eax, dword [ebp+0CH]                    ; 253E _ 8B. 45, 0C
        mov     ebx, dword [eax+4H]                     ; 2541 _ 8B. 58, 04
        mov     eax, dword [ebp-10H]                    ; 2544 _ 8B. 45, F0
        add     eax, ebx                                ; 2547 _ 01. D8
        sub     esp, 4                                  ; 2549 _ 83. EC, 04
        push    ecx                                     ; 254C _ 51
        push    0                                       ; 254D _ 6A, 00
        push    edx                                     ; 254F _ 52
        push    eax                                     ; 2550 _ 50
        push    dword [ebp-0CH]                         ; 2551 _ FF. 75, F4
        push    dword [ebp-10H]                         ; 2554 _ FF. 75, F0
        push    dword [ebp+8H]                          ; 2557 _ FF. 75, 08
        call    sheet_refresh_new                       ; 255A _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 255F _ 83. C4, 20
        mov     eax, dword [ebp+0CH]                    ; 2562 _ 8B. 45, 0C
        mov     edx, dword [eax+18H]                    ; 2565 _ 8B. 50, 18
        mov     eax, dword [ebp+0CH]                    ; 2568 _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 256B _ 8B. 40, 18
        mov     ecx, dword [ebp+0CH]                    ; 256E _ 8B. 4D, 0C
        mov     ebx, dword [ecx+8H]                     ; 2571 _ 8B. 59, 08
        mov     ecx, dword [ebp+14H]                    ; 2574 _ 8B. 4D, 14
        add     ebx, ecx                                ; 2577 _ 01. CB
        mov     ecx, dword [ebp+0CH]                    ; 2579 _ 8B. 4D, 0C
        mov     esi, dword [ecx+4H]                     ; 257C _ 8B. 71, 04
        mov     ecx, dword [ebp+10H]                    ; 257F _ 8B. 4D, 10
        add     ecx, esi                                ; 2582 _ 01. F1
        sub     esp, 4                                  ; 2584 _ 83. EC, 04
        push    edx                                     ; 2587 _ 52
        push    eax                                     ; 2588 _ 50
        push    ebx                                     ; 2589 _ 53
        push    ecx                                     ; 258A _ 51
        push    dword [ebp+14H]                         ; 258B _ FF. 75, 14
        push    dword [ebp+10H]                         ; 258E _ FF. 75, 10
        push    dword [ebp+8H]                          ; 2591 _ FF. 75, 08
        call    sheet_refresh_new                       ; 2594 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 2599 _ 83. C4, 20
?_118:  nop                                             ; 259C _ 90
        lea     esp, [ebp-8H]                           ; 259D _ 8D. 65, F8
        pop     ebx                                     ; 25A0 _ 5B
        pop     esi                                     ; 25A1 _ 5E
        pop     ebp                                     ; 25A2 _ 5D
        ret                                             ; 25A3 _ C3
; sheet_slide End of function

sheet_refresh_new:; Function begin
        push    ebp                                     ; 25A4 _ 55
        mov     ebp, esp                                ; 25A5 _ 89. E5
        sub     esp, 48                                 ; 25A7 _ 83. EC, 30
        mov     eax, dword [ebp+8H]                     ; 25AA _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 25AD _ 8B. 00
        mov     dword [ebp-18H], eax                    ; 25AF _ 89. 45, E8
        mov     eax, dword [ebp+8H]                     ; 25B2 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 25B5 _ 8B. 40, 04
        mov     dword [ebp-14H], eax                    ; 25B8 _ 89. 45, EC
        mov     eax, dword [ebp+1CH]                    ; 25BB _ 8B. 45, 1C
        mov     dword [ebp-24H], eax                    ; 25BE _ 89. 45, DC
        jmp     ?_125                                   ; 25C1 _ E9, 00000118

?_119:  mov     eax, dword [ebp+8H]                     ; 25C6 _ 8B. 45, 08
        mov     edx, dword [ebp-24H]                    ; 25C9 _ 8B. 55, DC
        add     edx, 4                                  ; 25CC _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 25CF _ 8B. 44 90, 04
        mov     dword [ebp-10H], eax                    ; 25D3 _ 89. 45, F0
        mov     eax, dword [ebp-10H]                    ; 25D6 _ 8B. 45, F0
        mov     eax, dword [eax]                        ; 25D9 _ 8B. 00
        mov     dword [ebp-0CH], eax                    ; 25DB _ 89. 45, F4
        mov     eax, dword [ebp-10H]                    ; 25DE _ 8B. 45, F0
        mov     edx, dword [ebp+8H]                     ; 25E1 _ 8B. 55, 08
        add     edx, 1044                               ; 25E4 _ 81. C2, 00000414
        sub     eax, edx                                ; 25EA _ 29. D0
        sar     eax, 5                                  ; 25EC _ C1. F8, 05
        mov     byte [ebp-26H], al                      ; 25EF _ 88. 45, DA
        mov     dword [ebp-20H], 0                      ; 25F2 _ C7. 45, E0, 00000000
        jmp     ?_124                                   ; 25F9 _ E9, 000000CD

?_120:  mov     eax, dword [ebp-10H]                    ; 25FE _ 8B. 45, F0
        mov     edx, dword [eax+10H]                    ; 2601 _ 8B. 50, 10
        mov     eax, dword [ebp-20H]                    ; 2604 _ 8B. 45, E0
        add     eax, edx                                ; 2607 _ 01. D0
        mov     dword [ebp-8H], eax                     ; 2609 _ 89. 45, F8
        mov     dword [ebp-1CH], 0                      ; 260C _ C7. 45, E4, 00000000
        jmp     ?_123                                   ; 2613 _ E9, 000000A0

?_121:  mov     eax, dword [ebp-10H]                    ; 2618 _ 8B. 45, F0
        mov     edx, dword [eax+0CH]                    ; 261B _ 8B. 50, 0C
        mov     eax, dword [ebp-1CH]                    ; 261E _ 8B. 45, E4
        add     eax, edx                                ; 2621 _ 01. D0
        mov     dword [ebp-4H], eax                     ; 2623 _ 89. 45, FC
        mov     eax, dword [ebp+0CH]                    ; 2626 _ 8B. 45, 0C
        cmp     eax, dword [ebp-4H]                     ; 2629 _ 3B. 45, FC
        jg      ?_122                                   ; 262C _ 0F 8F, 00000082
        mov     eax, dword [ebp-4H]                     ; 2632 _ 8B. 45, FC
        cmp     eax, dword [ebp+14H]                    ; 2635 _ 3B. 45, 14
        jge     ?_122                                   ; 2638 _ 7D, 7A
        mov     eax, dword [ebp+10H]                    ; 263A _ 8B. 45, 10
        cmp     eax, dword [ebp-8H]                     ; 263D _ 3B. 45, F8
        jg      ?_122                                   ; 2640 _ 7F, 72
        mov     eax, dword [ebp-8H]                     ; 2642 _ 8B. 45, F8
        cmp     eax, dword [ebp+18H]                    ; 2645 _ 3B. 45, 18
        jge     ?_122                                   ; 2648 _ 7D, 6A
        mov     eax, dword [ebp-10H]                    ; 264A _ 8B. 45, F0
        mov     eax, dword [eax+4H]                     ; 264D _ 8B. 40, 04
        imul    eax, dword [ebp-20H]                    ; 2650 _ 0F AF. 45, E0
        mov     edx, eax                                ; 2654 _ 89. C2
        mov     eax, dword [ebp-1CH]                    ; 2656 _ 8B. 45, E4
        add     eax, edx                                ; 2659 _ 01. D0
        mov     edx, eax                                ; 265B _ 89. C2
        mov     eax, dword [ebp-0CH]                    ; 265D _ 8B. 45, F4
        add     eax, edx                                ; 2660 _ 01. D0
        movzx   eax, byte [eax]                         ; 2662 _ 0F B6. 00
        mov     byte [ebp-25H], al                      ; 2665 _ 88. 45, DB
        mov     eax, dword [ebp+8H]                     ; 2668 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 266B _ 8B. 40, 08
        imul    eax, dword [ebp-8H]                     ; 266E _ 0F AF. 45, F8
        mov     edx, eax                                ; 2672 _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 2674 _ 8B. 45, FC
        add     eax, edx                                ; 2677 _ 01. D0
        mov     edx, eax                                ; 2679 _ 89. C2
        mov     eax, dword [ebp-14H]                    ; 267B _ 8B. 45, EC
        add     eax, edx                                ; 267E _ 01. D0
        movzx   eax, byte [eax]                         ; 2680 _ 0F B6. 00
        cmp     byte [ebp-26H], al                      ; 2683 _ 38. 45, DA
        jnz     ?_122                                   ; 2686 _ 75, 2C
        movzx   edx, byte [ebp-25H]                     ; 2688 _ 0F B6. 55, DB
        mov     eax, dword [ebp-10H]                    ; 268C _ 8B. 45, F0
        mov     eax, dword [eax+14H]                    ; 268F _ 8B. 40, 14
        cmp     edx, eax                                ; 2692 _ 39. C2
        jz      ?_122                                   ; 2694 _ 74, 1E
        mov     eax, dword [ebp+8H]                     ; 2696 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 2699 _ 8B. 40, 08
        imul    eax, dword [ebp-8H]                     ; 269C _ 0F AF. 45, F8
        mov     edx, eax                                ; 26A0 _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 26A2 _ 8B. 45, FC
        add     eax, edx                                ; 26A5 _ 01. D0
        mov     edx, eax                                ; 26A7 _ 89. C2
        mov     eax, dword [ebp-18H]                    ; 26A9 _ 8B. 45, E8
        add     edx, eax                                ; 26AC _ 01. C2
        movzx   eax, byte [ebp-25H]                     ; 26AE _ 0F B6. 45, DB
        mov     byte [edx], al                          ; 26B2 _ 88. 02
?_122:  add     dword [ebp-1CH], 1                      ; 26B4 _ 83. 45, E4, 01
?_123:  mov     eax, dword [ebp-10H]                    ; 26B8 _ 8B. 45, F0
        mov     eax, dword [eax+4H]                     ; 26BB _ 8B. 40, 04
        cmp     dword [ebp-1CH], eax                    ; 26BE _ 39. 45, E4
        jl      ?_121                                   ; 26C1 _ 0F 8C, FFFFFF51
        add     dword [ebp-20H], 1                      ; 26C7 _ 83. 45, E0, 01
?_124:  mov     eax, dword [ebp-10H]                    ; 26CB _ 8B. 45, F0
        mov     eax, dword [eax+8H]                     ; 26CE _ 8B. 40, 08
        cmp     dword [ebp-20H], eax                    ; 26D1 _ 39. 45, E0
        jl      ?_120                                   ; 26D4 _ 0F 8C, FFFFFF24
        add     dword [ebp-24H], 1                      ; 26DA _ 83. 45, DC, 01
?_125:  mov     eax, dword [ebp-24H]                    ; 26DE _ 8B. 45, DC
        cmp     eax, dword [ebp+20H]                    ; 26E1 _ 3B. 45, 20
        jle     ?_119                                   ; 26E4 _ 0F 8E, FFFFFEDC
        nop                                             ; 26EA _ 90
        leave                                           ; 26EB _ C9
        ret                                             ; 26EC _ C3
; sheet_refresh_new End of function

sheet_refreshmap:; Function begin
        push    ebp                                     ; 26ED _ 55
        mov     ebp, esp                                ; 26EE _ 89. E5
        sub     esp, 64                                 ; 26F0 _ 83. EC, 40
        mov     eax, dword [ebp+8H]                     ; 26F3 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 26F6 _ 8B. 40, 04
        mov     dword [ebp-14H], eax                    ; 26F9 _ 89. 45, EC
        cmp     dword [ebp+0CH], 0                      ; 26FC _ 83. 7D, 0C, 00
        jns     ?_126                                   ; 2700 _ 79, 07
        mov     dword [ebp+0CH], 0                      ; 2702 _ C7. 45, 0C, 00000000
?_126:  mov     eax, dword [ebp+8H]                     ; 2709 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 270C _ 8B. 40, 08
        cmp     dword [ebp+0CH], eax                    ; 270F _ 39. 45, 0C
        jle     ?_127                                   ; 2712 _ 7E, 09
        mov     eax, dword [ebp+8H]                     ; 2714 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 2717 _ 8B. 40, 08
        mov     dword [ebp+0CH], eax                    ; 271A _ 89. 45, 0C
?_127:  cmp     dword [ebp+10H], 0                      ; 271D _ 83. 7D, 10, 00
        jns     ?_128                                   ; 2721 _ 79, 07
        mov     dword [ebp+10H], 0                      ; 2723 _ C7. 45, 10, 00000000
?_128:  mov     eax, dword [ebp+8H]                     ; 272A _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 272D _ 8B. 40, 0C
        cmp     dword [ebp+10H], eax                    ; 2730 _ 39. 45, 10
        jle     ?_129                                   ; 2733 _ 7E, 09
        mov     eax, dword [ebp+8H]                     ; 2735 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 2738 _ 8B. 40, 0C
        mov     dword [ebp+10H], eax                    ; 273B _ 89. 45, 10
?_129:  mov     eax, dword [ebp+1CH]                    ; 273E _ 8B. 45, 1C
        mov     dword [ebp-20H], eax                    ; 2741 _ 89. 45, E0
        jmp     ?_140                                   ; 2744 _ E9, 00000140

?_130:  mov     eax, dword [ebp+8H]                     ; 2749 _ 8B. 45, 08
        mov     edx, dword [ebp-20H]                    ; 274C _ 8B. 55, E0
        add     edx, 4                                  ; 274F _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 2752 _ 8B. 44 90, 04
        mov     dword [ebp-10H], eax                    ; 2756 _ 89. 45, F0
        mov     eax, dword [ebp-10H]                    ; 2759 _ 8B. 45, F0
        mov     edx, dword [ebp+8H]                     ; 275C _ 8B. 55, 08
        add     edx, 1044                               ; 275F _ 81. C2, 00000414
        sub     eax, edx                                ; 2765 _ 29. D0
        sar     eax, 5                                  ; 2767 _ C1. F8, 05
        mov     byte [ebp-31H], al                      ; 276A _ 88. 45, CF
        mov     eax, dword [ebp-10H]                    ; 276D _ 8B. 45, F0
        mov     eax, dword [eax]                        ; 2770 _ 8B. 00
        mov     dword [ebp-0CH], eax                    ; 2772 _ 89. 45, F4
        mov     eax, dword [ebp-10H]                    ; 2775 _ 8B. 45, F0
        mov     eax, dword [eax+0CH]                    ; 2778 _ 8B. 40, 0C
        mov     edx, dword [ebp+0CH]                    ; 277B _ 8B. 55, 0C
        sub     edx, eax                                ; 277E _ 29. C2
        mov     eax, edx                                ; 2780 _ 89. D0
        mov     dword [ebp-30H], eax                    ; 2782 _ 89. 45, D0
        mov     eax, dword [ebp-10H]                    ; 2785 _ 8B. 45, F0
        mov     eax, dword [eax+10H]                    ; 2788 _ 8B. 40, 10
        mov     edx, dword [ebp+10H]                    ; 278B _ 8B. 55, 10
        sub     edx, eax                                ; 278E _ 29. C2
        mov     eax, edx                                ; 2790 _ 89. D0
        mov     dword [ebp-2CH], eax                    ; 2792 _ 89. 45, D4
        mov     eax, dword [ebp-10H]                    ; 2795 _ 8B. 45, F0
        mov     eax, dword [eax+0CH]                    ; 2798 _ 8B. 40, 0C
        mov     edx, dword [ebp+14H]                    ; 279B _ 8B. 55, 14
        sub     edx, eax                                ; 279E _ 29. C2
        mov     eax, edx                                ; 27A0 _ 89. D0
        mov     dword [ebp-28H], eax                    ; 27A2 _ 89. 45, D8
        mov     eax, dword [ebp-10H]                    ; 27A5 _ 8B. 45, F0
        mov     eax, dword [eax+10H]                    ; 27A8 _ 8B. 40, 10
        mov     edx, dword [ebp+18H]                    ; 27AB _ 8B. 55, 18
        sub     edx, eax                                ; 27AE _ 29. C2
        mov     eax, edx                                ; 27B0 _ 89. D0
        mov     dword [ebp-24H], eax                    ; 27B2 _ 89. 45, DC
        cmp     dword [ebp-30H], 0                      ; 27B5 _ 83. 7D, D0, 00
        jns     ?_131                                   ; 27B9 _ 79, 07
        mov     dword [ebp-30H], 0                      ; 27BB _ C7. 45, D0, 00000000
?_131:  cmp     dword [ebp-2CH], 0                      ; 27C2 _ 83. 7D, D4, 00
        jns     ?_132                                   ; 27C6 _ 79, 07
        mov     dword [ebp-2CH], 0                      ; 27C8 _ C7. 45, D4, 00000000
?_132:  mov     eax, dword [ebp-10H]                    ; 27CF _ 8B. 45, F0
        mov     eax, dword [eax+4H]                     ; 27D2 _ 8B. 40, 04
        cmp     dword [ebp-28H], eax                    ; 27D5 _ 39. 45, D8
        jle     ?_133                                   ; 27D8 _ 7E, 09
        mov     eax, dword [ebp-10H]                    ; 27DA _ 8B. 45, F0
        mov     eax, dword [eax+4H]                     ; 27DD _ 8B. 40, 04
        mov     dword [ebp-28H], eax                    ; 27E0 _ 89. 45, D8
?_133:  mov     eax, dword [ebp-10H]                    ; 27E3 _ 8B. 45, F0
        mov     eax, dword [eax+8H]                     ; 27E6 _ 8B. 40, 08
        cmp     dword [ebp-24H], eax                    ; 27E9 _ 39. 45, DC
        jle     ?_134                                   ; 27EC _ 7E, 09
        mov     eax, dword [ebp-10H]                    ; 27EE _ 8B. 45, F0
        mov     eax, dword [eax+8H]                     ; 27F1 _ 8B. 40, 08
        mov     dword [ebp-24H], eax                    ; 27F4 _ 89. 45, DC
?_134:  mov     eax, dword [ebp-2CH]                    ; 27F7 _ 8B. 45, D4
        mov     dword [ebp-1CH], eax                    ; 27FA _ 89. 45, E4
        jmp     ?_139                                   ; 27FD _ EB, 7A

?_135:  mov     eax, dword [ebp-10H]                    ; 27FF _ 8B. 45, F0
        mov     edx, dword [eax+10H]                    ; 2802 _ 8B. 50, 10
        mov     eax, dword [ebp-1CH]                    ; 2805 _ 8B. 45, E4
        add     eax, edx                                ; 2808 _ 01. D0
        mov     dword [ebp-8H], eax                     ; 280A _ 89. 45, F8
        mov     eax, dword [ebp-30H]                    ; 280D _ 8B. 45, D0
        mov     dword [ebp-18H], eax                    ; 2810 _ 89. 45, E8
        jmp     ?_138                                   ; 2813 _ EB, 58

?_136:  mov     eax, dword [ebp-10H]                    ; 2815 _ 8B. 45, F0
        mov     edx, dword [eax+0CH]                    ; 2818 _ 8B. 50, 0C
        mov     eax, dword [ebp-18H]                    ; 281B _ 8B. 45, E8
        add     eax, edx                                ; 281E _ 01. D0
        mov     dword [ebp-4H], eax                     ; 2820 _ 89. 45, FC
        mov     eax, dword [ebp-10H]                    ; 2823 _ 8B. 45, F0
        mov     eax, dword [eax+4H]                     ; 2826 _ 8B. 40, 04
        imul    eax, dword [ebp-1CH]                    ; 2829 _ 0F AF. 45, E4
        mov     edx, eax                                ; 282D _ 89. C2
        mov     eax, dword [ebp-18H]                    ; 282F _ 8B. 45, E8
        add     eax, edx                                ; 2832 _ 01. D0
        mov     edx, eax                                ; 2834 _ 89. C2
        mov     eax, dword [ebp-0CH]                    ; 2836 _ 8B. 45, F4
        add     eax, edx                                ; 2839 _ 01. D0
        movzx   eax, byte [eax]                         ; 283B _ 0F B6. 00
        movzx   edx, al                                 ; 283E _ 0F B6. D0
        mov     eax, dword [ebp-10H]                    ; 2841 _ 8B. 45, F0
        mov     eax, dword [eax+14H]                    ; 2844 _ 8B. 40, 14
        cmp     edx, eax                                ; 2847 _ 39. C2
        jz      ?_137                                   ; 2849 _ 74, 1E
        mov     eax, dword [ebp+8H]                     ; 284B _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 284E _ 8B. 40, 08
        imul    eax, dword [ebp-8H]                     ; 2851 _ 0F AF. 45, F8
        mov     edx, eax                                ; 2855 _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 2857 _ 8B. 45, FC
        add     eax, edx                                ; 285A _ 01. D0
        mov     edx, eax                                ; 285C _ 89. C2
        mov     eax, dword [ebp-14H]                    ; 285E _ 8B. 45, EC
        add     edx, eax                                ; 2861 _ 01. C2
        movzx   eax, byte [ebp-31H]                     ; 2863 _ 0F B6. 45, CF
        mov     byte [edx], al                          ; 2867 _ 88. 02
?_137:  add     dword [ebp-18H], 1                      ; 2869 _ 83. 45, E8, 01
?_138:  mov     eax, dword [ebp-18H]                    ; 286D _ 8B. 45, E8
        cmp     eax, dword [ebp-28H]                    ; 2870 _ 3B. 45, D8
        jl      ?_136                                   ; 2873 _ 7C, A0
        add     dword [ebp-1CH], 1                      ; 2875 _ 83. 45, E4, 01
?_139:  mov     eax, dword [ebp-1CH]                    ; 2879 _ 8B. 45, E4
        cmp     eax, dword [ebp-24H]                    ; 287C _ 3B. 45, DC
        jl      ?_135                                   ; 287F _ 0F 8C, FFFFFF7A
        add     dword [ebp-20H], 1                      ; 2885 _ 83. 45, E0, 01
?_140:  mov     eax, dword [ebp+8H]                     ; 2889 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 288C _ 8B. 40, 10
        cmp     dword [ebp-20H], eax                    ; 288F _ 39. 45, E0
        jle     ?_130                                   ; 2892 _ 0F 8E, FFFFFEB1
        nop                                             ; 2898 _ 90
        leave                                           ; 2899 _ C9
        ret                                             ; 289A _ C3
; sheet_refreshmap End of function

init_pit:; Function begin
        push    ebp                                     ; 289B _ 55
        mov     ebp, esp                                ; 289C _ 89. E5
        sub     esp, 24                                 ; 289E _ 83. EC, 18
        sub     esp, 8                                  ; 28A1 _ 83. EC, 08
        push    52                                      ; 28A4 _ 6A, 34
        push    67                                      ; 28A6 _ 6A, 43
        call    io_out8                                 ; 28A8 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 28AD _ 83. C4, 10
        sub     esp, 8                                  ; 28B0 _ 83. EC, 08
        push    156                                     ; 28B3 _ 68, 0000009C
        push    64                                      ; 28B8 _ 6A, 40
        call    io_out8                                 ; 28BA _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 28BF _ 83. C4, 10
        sub     esp, 8                                  ; 28C2 _ 83. EC, 08
        push    46                                      ; 28C5 _ 6A, 2E
        push    64                                      ; 28C7 _ 6A, 40
        call    io_out8                                 ; 28C9 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 28CE _ 83. C4, 10
        mov     dword [timerctl], 0                     ; 28D1 _ C7. 05, 00000280(d), 00000000
        mov     dword [ebp-0CH], 0                      ; 28DB _ C7. 45, F4, 00000000
        jmp     ?_142                                   ; 28E2 _ EB, 15

?_141:  mov     eax, dword [ebp-0CH]                    ; 28E4 _ 8B. 45, F4
        shl     eax, 4                                  ; 28E7 _ C1. E0, 04
        add     eax, ?_176                              ; 28EA _ 05, 00000288(d)
        mov     dword [eax], 0                          ; 28EF _ C7. 00, 00000000
        add     dword [ebp-0CH], 1                      ; 28F5 _ 83. 45, F4, 01
?_142:  cmp     dword [ebp-0CH], 499                    ; 28F9 _ 81. 7D, F4, 000001F3
        jle     ?_141                                   ; 2900 _ 7E, E2
        nop                                             ; 2902 _ 90
        leave                                           ; 2903 _ C9
        ret                                             ; 2904 _ C3
; init_pit End of function

timer_alloc:; Function begin
        push    ebp                                     ; 2905 _ 55
        mov     ebp, esp                                ; 2906 _ 89. E5
        sub     esp, 16                                 ; 2908 _ 83. EC, 10
        mov     dword [ebp-4H], 0                       ; 290B _ C7. 45, FC, 00000000
        jmp     ?_145                                   ; 2912 _ EB, 36

?_143:  mov     eax, dword [ebp-4H]                     ; 2914 _ 8B. 45, FC
        shl     eax, 4                                  ; 2917 _ C1. E0, 04
        add     eax, ?_176                              ; 291A _ 05, 00000288(d)
        mov     eax, dword [eax]                        ; 291F _ 8B. 00
        test    eax, eax                                ; 2921 _ 85. C0
        jnz     ?_144                                   ; 2923 _ 75, 21
        mov     eax, dword [ebp-4H]                     ; 2925 _ 8B. 45, FC
        shl     eax, 4                                  ; 2928 _ C1. E0, 04
        add     eax, ?_176                              ; 292B _ 05, 00000288(d)
        mov     dword [eax], 1                          ; 2930 _ C7. 00, 00000001
        mov     eax, dword [ebp-4H]                     ; 2936 _ 8B. 45, FC
        shl     eax, 4                                  ; 2939 _ C1. E0, 04
        add     eax, timerctl                           ; 293C _ 05, 00000280(d)
        add     eax, 4                                  ; 2941 _ 83. C0, 04
        jmp     ?_146                                   ; 2944 _ EB, 12

?_144:  add     dword [ebp-4H], 1                       ; 2946 _ 83. 45, FC, 01
?_145:  cmp     dword [ebp-4H], 499                     ; 294A _ 81. 7D, FC, 000001F3
        jle     ?_143                                   ; 2951 _ 7E, C1
        mov     eax, 0                                  ; 2953 _ B8, 00000000
?_146:  leave                                           ; 2958 _ C9
        ret                                             ; 2959 _ C3
; timer_alloc End of function

timer_free:; Function begin
        push    ebp                                     ; 295A _ 55
        mov     ebp, esp                                ; 295B _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 295D _ 8B. 45, 08
        mov     dword [eax+4H], 0                       ; 2960 _ C7. 40, 04, 00000000
        nop                                             ; 2967 _ 90
        pop     ebp                                     ; 2968 _ 5D
        ret                                             ; 2969 _ C3
; timer_free End of function

timer_init:; Function begin
        push    ebp                                     ; 296A _ 55
        mov     ebp, esp                                ; 296B _ 89. E5
        sub     esp, 4                                  ; 296D _ 83. EC, 04
        mov     eax, dword [ebp+10H]                    ; 2970 _ 8B. 45, 10
        mov     byte [ebp-4H], al                       ; 2973 _ 88. 45, FC
        mov     eax, dword [ebp+8H]                     ; 2976 _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 2979 _ 8B. 55, 0C
        mov     dword [eax+8H], edx                     ; 297C _ 89. 50, 08
        mov     eax, dword [ebp+8H]                     ; 297F _ 8B. 45, 08
        movzx   edx, byte [ebp-4H]                      ; 2982 _ 0F B6. 55, FC
        mov     byte [eax+0CH], dl                      ; 2986 _ 88. 50, 0C
        nop                                             ; 2989 _ 90
        leave                                           ; 298A _ C9
        ret                                             ; 298B _ C3
; timer_init End of function

timer_setTime:; Function begin
        push    ebp                                     ; 298C _ 55
        mov     ebp, esp                                ; 298D _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 298F _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 2992 _ 8B. 55, 0C
        mov     dword [eax], edx                        ; 2995 _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 2997 _ 8B. 45, 08
        mov     dword [eax+4H], 2                       ; 299A _ C7. 40, 04, 00000002
        nop                                             ; 29A1 _ 90
        pop     ebp                                     ; 29A2 _ 5D
        ret                                             ; 29A3 _ C3
; timer_setTime End of function

getTimerController:; Function begin
        push    ebp                                     ; 29A4 _ 55
        mov     ebp, esp                                ; 29A5 _ 89. E5
        mov     eax, timerctl                           ; 29A7 _ B8, 00000280(d)
        pop     ebp                                     ; 29AC _ 5D
        ret                                             ; 29AD _ C3
; getTimerController End of function

intHandlerForTimer:; Function begin
        push    ebp                                     ; 29AE _ 55
        mov     ebp, esp                                ; 29AF _ 89. E5
        sub     esp, 24                                 ; 29B1 _ 83. EC, 18
        sub     esp, 8                                  ; 29B4 _ 83. EC, 08
        push    96                                      ; 29B7 _ 6A, 60
        push    32                                      ; 29B9 _ 6A, 20
        call    io_out8                                 ; 29BB _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 29C0 _ 83. C4, 10
        mov     eax, dword [timerctl]                   ; 29C3 _ A1, 00000280(d)
        add     eax, 1                                  ; 29C8 _ 83. C0, 01
        mov     dword [timerctl], eax                   ; 29CB _ A3, 00000280(d)
        mov     dword [ebp-0CH], 0                      ; 29D0 _ C7. 45, F4, 00000000
        jmp     ?_149                                   ; 29D7 _ E9, 00000080

?_147:  mov     eax, dword [ebp-0CH]                    ; 29DC _ 8B. 45, F4
        shl     eax, 4                                  ; 29DF _ C1. E0, 04
        add     eax, ?_176                              ; 29E2 _ 05, 00000288(d)
        mov     eax, dword [eax]                        ; 29E7 _ 8B. 00
        cmp     eax, 2                                  ; 29E9 _ 83. F8, 02
        jnz     ?_148                                   ; 29EC _ 75, 6A
        mov     eax, dword [ebp-0CH]                    ; 29EE _ 8B. 45, F4
        shl     eax, 4                                  ; 29F1 _ C1. E0, 04
        add     eax, ?_175                              ; 29F4 _ 05, 00000284(d)
        mov     eax, dword [eax]                        ; 29F9 _ 8B. 00
        lea     edx, [eax-1H]                           ; 29FB _ 8D. 50, FF
        mov     eax, dword [ebp-0CH]                    ; 29FE _ 8B. 45, F4
        shl     eax, 4                                  ; 2A01 _ C1. E0, 04
        add     eax, ?_175                              ; 2A04 _ 05, 00000284(d)
        mov     dword [eax], edx                        ; 2A09 _ 89. 10
        mov     eax, dword [ebp-0CH]                    ; 2A0B _ 8B. 45, F4
        shl     eax, 4                                  ; 2A0E _ C1. E0, 04
        add     eax, ?_175                              ; 2A11 _ 05, 00000284(d)
        mov     eax, dword [eax]                        ; 2A16 _ 8B. 00
        test    eax, eax                                ; 2A18 _ 85. C0
        jnz     ?_148                                   ; 2A1A _ 75, 3C
        mov     eax, dword [ebp-0CH]                    ; 2A1C _ 8B. 45, F4
        shl     eax, 4                                  ; 2A1F _ C1. E0, 04
        add     eax, ?_176                              ; 2A22 _ 05, 00000288(d)
        mov     dword [eax], 1                          ; 2A27 _ C7. 00, 00000001
        mov     eax, dword [ebp-0CH]                    ; 2A2D _ 8B. 45, F4
        shl     eax, 4                                  ; 2A30 _ C1. E0, 04
        add     eax, ?_178                              ; 2A33 _ 05, 00000290(d)
        movzx   eax, byte [eax]                         ; 2A38 _ 0F B6. 00
        movzx   edx, al                                 ; 2A3B _ 0F B6. D0
        mov     eax, dword [ebp-0CH]                    ; 2A3E _ 8B. 45, F4
        shl     eax, 4                                  ; 2A41 _ C1. E0, 04
        add     eax, ?_177                              ; 2A44 _ 05, 0000028C(d)
        mov     eax, dword [eax]                        ; 2A49 _ 8B. 00
        sub     esp, 8                                  ; 2A4B _ 83. EC, 08
        push    edx                                     ; 2A4E _ 52
        push    eax                                     ; 2A4F _ 50
        call    fifo8_put                               ; 2A50 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 2A55 _ 83. C4, 10
?_148:  add     dword [ebp-0CH], 1                      ; 2A58 _ 83. 45, F4, 01
?_149:  cmp     dword [ebp-0CH], 499                    ; 2A5C _ 81. 7D, F4, 000001F3
        jle     ?_147                                   ; 2A63 _ 0F 8E, FFFFFF73
        nop                                             ; 2A69 _ 90
        leave                                           ; 2A6A _ C9
        ret                                             ; 2A6B _ C3
; intHandlerForTimer End of function

fifo8_init:; Function begin
        push    ebp                                     ; 2A6C _ 55
        mov     ebp, esp                                ; 2A6D _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 2A6F _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 2A72 _ 8B. 55, 0C
        mov     dword [eax+0CH], edx                    ; 2A75 _ 89. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 2A78 _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 2A7B _ 8B. 55, 10
        mov     dword [eax], edx                        ; 2A7E _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 2A80 _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 2A83 _ 8B. 55, 0C
        mov     dword [eax+10H], edx                    ; 2A86 _ 89. 50, 10
        mov     eax, dword [ebp+8H]                     ; 2A89 _ 8B. 45, 08
        mov     dword [eax+4H], 0                       ; 2A8C _ C7. 40, 04, 00000000
        mov     eax, dword [ebp+8H]                     ; 2A93 _ 8B. 45, 08
        mov     dword [eax+8H], 0                       ; 2A96 _ C7. 40, 08, 00000000
        mov     eax, dword [ebp+8H]                     ; 2A9D _ 8B. 45, 08
        mov     dword [eax+14H], 0                      ; 2AA0 _ C7. 40, 14, 00000000
        nop                                             ; 2AA7 _ 90
        pop     ebp                                     ; 2AA8 _ 5D
        ret                                             ; 2AA9 _ C3
; fifo8_init End of function

fifo8_put:; Function begin
        push    ebp                                     ; 2AAA _ 55
        mov     ebp, esp                                ; 2AAB _ 89. E5
        sub     esp, 4                                  ; 2AAD _ 83. EC, 04
        mov     eax, dword [ebp+0CH]                    ; 2AB0 _ 8B. 45, 0C
        mov     byte [ebp-4H], al                       ; 2AB3 _ 88. 45, FC
        mov     eax, dword [ebp+8H]                     ; 2AB6 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 2AB9 _ 8B. 40, 10
        test    eax, eax                                ; 2ABC _ 85. C0
        jnz     ?_150                                   ; 2ABE _ 75, 18
        mov     eax, dword [ebp+8H]                     ; 2AC0 _ 8B. 45, 08
        mov     eax, dword [eax+14H]                    ; 2AC3 _ 8B. 40, 14
        or      eax, 01H                                ; 2AC6 _ 83. C8, 01
        mov     edx, eax                                ; 2AC9 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 2ACB _ 8B. 45, 08
        mov     dword [eax+14H], edx                    ; 2ACE _ 89. 50, 14
        mov     eax, 4294967295                         ; 2AD1 _ B8, FFFFFFFF
        jmp     ?_152                                   ; 2AD6 _ EB, 50

?_150:  mov     eax, dword [ebp+8H]                     ; 2AD8 _ 8B. 45, 08
        mov     edx, dword [eax]                        ; 2ADB _ 8B. 10
        mov     eax, dword [ebp+8H]                     ; 2ADD _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 2AE0 _ 8B. 40, 08
        add     edx, eax                                ; 2AE3 _ 01. C2
        movzx   eax, byte [ebp-4H]                      ; 2AE5 _ 0F B6. 45, FC
        mov     byte [edx], al                          ; 2AE9 _ 88. 02
        mov     eax, dword [ebp+8H]                     ; 2AEB _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 2AEE _ 8B. 40, 08
        lea     edx, [eax+1H]                           ; 2AF1 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 2AF4 _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 2AF7 _ 89. 50, 08
        mov     eax, dword [ebp+8H]                     ; 2AFA _ 8B. 45, 08
        mov     edx, dword [eax+8H]                     ; 2AFD _ 8B. 50, 08
        mov     eax, dword [ebp+8H]                     ; 2B00 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 2B03 _ 8B. 40, 0C
        cmp     edx, eax                                ; 2B06 _ 39. C2
        jl      ?_151                                   ; 2B08 _ 7C, 0A
        mov     eax, dword [ebp+8H]                     ; 2B0A _ 8B. 45, 08
        mov     dword [eax+8H], 0                       ; 2B0D _ C7. 40, 08, 00000000
?_151:  mov     eax, dword [ebp+8H]                     ; 2B14 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 2B17 _ 8B. 40, 10
        lea     edx, [eax-1H]                           ; 2B1A _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 2B1D _ 8B. 45, 08
        mov     dword [eax+10H], edx                    ; 2B20 _ 89. 50, 10
        mov     eax, 1                                  ; 2B23 _ B8, 00000001
?_152:  leave                                           ; 2B28 _ C9
        ret                                             ; 2B29 _ C3
; fifo8_put End of function

fifo8_get:; Function begin
        push    ebp                                     ; 2B2A _ 55
        mov     ebp, esp                                ; 2B2B _ 89. E5
        sub     esp, 16                                 ; 2B2D _ 83. EC, 10
        mov     eax, dword [ebp+8H]                     ; 2B30 _ 8B. 45, 08
        mov     edx, dword [eax+10H]                    ; 2B33 _ 8B. 50, 10
        mov     eax, dword [ebp+8H]                     ; 2B36 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 2B39 _ 8B. 40, 0C
        cmp     edx, eax                                ; 2B3C _ 39. C2
        jnz     ?_153                                   ; 2B3E _ 75, 07
        mov     eax, 4294967295                         ; 2B40 _ B8, FFFFFFFF
        jmp     ?_155                                   ; 2B45 _ EB, 51

?_153:  mov     eax, dword [ebp+8H]                     ; 2B47 _ 8B. 45, 08
        mov     edx, dword [eax]                        ; 2B4A _ 8B. 10
        mov     eax, dword [ebp+8H]                     ; 2B4C _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 2B4F _ 8B. 40, 04
        add     eax, edx                                ; 2B52 _ 01. D0
        movzx   eax, byte [eax]                         ; 2B54 _ 0F B6. 00
        movzx   eax, al                                 ; 2B57 _ 0F B6. C0
        mov     dword [ebp-4H], eax                     ; 2B5A _ 89. 45, FC
        mov     eax, dword [ebp+8H]                     ; 2B5D _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 2B60 _ 8B. 40, 04
        lea     edx, [eax+1H]                           ; 2B63 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 2B66 _ 8B. 45, 08
        mov     dword [eax+4H], edx                     ; 2B69 _ 89. 50, 04
        mov     eax, dword [ebp+8H]                     ; 2B6C _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 2B6F _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 2B72 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 2B75 _ 8B. 40, 0C
        cmp     edx, eax                                ; 2B78 _ 39. C2
        jl      ?_154                                   ; 2B7A _ 7C, 0A
        mov     eax, dword [ebp+8H]                     ; 2B7C _ 8B. 45, 08
        mov     dword [eax+4H], 0                       ; 2B7F _ C7. 40, 04, 00000000
?_154:  mov     eax, dword [ebp+8H]                     ; 2B86 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 2B89 _ 8B. 40, 10
        lea     edx, [eax+1H]                           ; 2B8C _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 2B8F _ 8B. 45, 08
        mov     dword [eax+10H], edx                    ; 2B92 _ 89. 50, 10
        mov     eax, dword [ebp-4H]                     ; 2B95 _ 8B. 45, FC
?_155:  leave                                           ; 2B98 _ C9
        ret                                             ; 2B99 _ C3
; fifo8_get End of function

fifo8_status:; Function begin
        push    ebp                                     ; 2B9A _ 55
        mov     ebp, esp                                ; 2B9B _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 2B9D _ 8B. 45, 08
        mov     edx, dword [eax+0CH]                    ; 2BA0 _ 8B. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 2BA3 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 2BA6 _ 8B. 40, 10
        sub     edx, eax                                ; 2BA9 _ 29. C2
        mov     eax, edx                                ; 2BAB _ 89. D0
        pop     ebp                                     ; 2BAD _ 5D
        ret                                             ; 2BAE _ C3
; fifo8_status End of function



?_156:                                                  ; byte
        db 54H, 6FH, 74H, 61H, 6CH, 20H, 4DH, 65H       ; 0000 _ Total Me
        db 6DH, 20H, 53H, 69H, 7AH, 65H, 20H, 69H       ; 0008 _ m Size i
        db 73H, 3AH, 20H, 00H                           ; 0010 _ s: .

?_157:                                                  ; byte
        db 4DH, 42H, 00H                                ; 0014 _ MB.

?_158:                                                  ; byte
        db 43H, 6FH, 75H, 6EH, 74H, 65H, 72H, 00H       ; 0017 _ Counter.

?_159:                                                  ; byte
        db 35H, 5BH, 73H, 65H, 63H, 73H, 5DH, 00H       ; 001F _ 5[secs].

?_160:                                                  ; byte
        db 33H, 5BH, 73H, 65H, 63H, 73H, 5DH, 00H       ; 0027 _ 3[secs].

?_161:                                                  ; byte
        db 54H, 68H, 65H, 20H, 6DH, 6FH, 75H, 73H       ; 002F _ The mous
        db 65H, 20H, 69H, 73H, 20H, 6DH, 6FH, 76H       ; 0037 _ e is mov
        db 69H, 6EH, 67H, 2EH, 2EH, 2EH, 00H            ; 003F _ ing....

?_162:                                                  ; byte
        db 50H, 61H, 67H, 65H, 20H, 69H, 73H, 3AH       ; 0046 _ Page is:
        db 20H, 00H                                     ; 004E _  .

?_163:                                                  ; byte
        db 42H, 61H, 73H, 65H, 41H, 64H, 64H, 72H       ; 0050 _ BaseAddr
        db 4CH, 6FH, 77H, 3AH, 20H, 00H                 ; 0058 _ Low: .

?_164:                                                  ; byte
        db 42H, 61H, 73H, 65H, 41H, 64H, 64H, 72H       ; 005E _ BaseAddr
        db 48H, 69H, 67H, 68H, 3AH, 20H, 00H            ; 0066 _ High: .

?_165:                                                  ; byte
        db 4CH, 65H, 6EH, 67H, 74H, 68H, 4CH, 6FH       ; 006D _ LengthLo
        db 77H, 3AH, 20H, 00H                           ; 0075 _ w: .

?_166:                                                  ; byte
        db 4CH, 65H, 6EH, 67H, 74H, 68H, 48H, 69H       ; 0079 _ LengthHi
        db 67H, 68H, 3AH, 20H, 00H                      ; 0081 _ gh: .

?_167:                                                  ; byte
        db 54H, 79H, 70H, 65H, 3AH, 20H, 00H            ; 0086 _ Type: .



keyVal:                                                 ; byte
        db 30H, 78H                                     ; 0000 _ 0x

?_168:  db 00H                                          ; 0002 _ .

?_169:  db 00H, 00H, 00H, 00H, 00H                      ; 0003 _ .....

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

pos.1711: dd 00000010H, 00000000H                       ; 0074 _ 16 0 
        dd 00000000H                                    ; 007C _ 0 

table_rgb.1742:                                         ; byte
        db 00H, 00H, 00H, 0FFH, 00H, 00H, 00H, 0FFH     ; 0080 _ ........
        db 00H, 0FFH, 0FFH, 00H, 00H, 00H, 0FFH, 0FFH   ; 0088 _ ........
        db 00H, 0FFH, 00H, 0FFH, 0FFH, 0FFH, 0FFH, 0FFH ; 0090 _ ........
        db 0C6H, 0C6H, 0C6H, 84H, 00H, 00H, 00H, 84H    ; 0098 _ ........
        db 00H, 84H, 84H, 00H, 00H, 00H, 84H, 84H       ; 00A0 _ ........
        db 00H, 84H, 00H, 78H, 0D7H, 84H, 84H, 84H      ; 00A8 _ ...x....
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 00B0 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 00B8 _ ........

cursor.1797:                                            ; byte
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

closebtn.1921:                                          ; byte
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

?_170:  resw    1                                       ; 0004

?_171:  resw    1                                       ; 0006

keyInfo:                                                ; byte
        resb    24                                      ; 0008

mouseInfo:                                              ; byte
        resb    32                                      ; 0020

keybuf:                                                 ; yword
        resb    32                                      ; 0040

mousebuf:                                               ; byte
        resb    128                                     ; 0060

mouse_move:                                             ; oword
        resb    12                                      ; 00E0

?_172:  resd    1                                       ; 00EC

mx:     resd    1                                       ; 00F0

my:     resd    1                                       ; 00F4

buf_back: resd  2                                       ; 00F8

buf_mouse:                                              ; byte
        resb    256                                     ; 0100

timerInfo:                                              ; byte
        resb    24                                      ; 0200

timerbuf: resq  1                                       ; 0218

sheet_win:                                              ; dword
        resd    1                                       ; 0220

timerInfo2.1698:                                        ; byte
        resb    24                                      ; 0224

timerbuf2.1700:                                         ; qword
        resq    1                                       ; 023C

timerInfo3.1699:                                        ; byte
        resb    24                                      ; 0244

timerbuf3.1701:                                         ; qword
        resq    1                                       ; 025C

line.1710:                                              ; dword
        resd    1                                       ; 0264

str.1840:                                               ; byte
        resb    1                                       ; 0268

?_173:  resb    9                                       ; 0269

?_174:  resb    2                                       ; 0272

line.1873:                                              ; dword
        resd    1                                       ; 0274

pos.1872: resd  2                                       ; 0278

timerctl:                                               ; byte
        resd    1                                       ; 0280

?_175:                                                  ; byte
        resb    4                                       ; 0284

?_176:                                                  ; byte
        resb    4                                       ; 0288

?_177:                                                  ; byte
        resb    4                                       ; 028C

?_178:                                                  ; byte
        resb    7988                                    ; 0290


