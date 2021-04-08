; Disassembly of file: ckernel.o
; Thu Apr  8 21:45:01 2021
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
        mov     dword [ebp-68H], eax                    ; 0029 _ 89. 45, 98
        movzx   eax, word [?_173]                       ; 002C _ 0F B7. 05, 00000004(d)
        cwde                                            ; 0033 _ 98
        mov     dword [ebp-64H], eax                    ; 0034 _ 89. 45, 9C
        movzx   eax, word [?_174]                       ; 0037 _ 0F B7. 05, 00000006(d)
        cwde                                            ; 003E _ 98
        mov     dword [ebp-60H], eax                    ; 003F _ 89. 45, A0
        mov     dword [ebp-5CH], 0                      ; 0042 _ C7. 45, A4, 00000000
        mov     dword [ebp-58H], 0                      ; 0049 _ C7. 45, A8, 00000000
        call    init_pit                                ; 0050 _ E8, FFFFFFFC(rel)
        sub     esp, 4                                  ; 0055 _ 83. EC, 04
        push    timerbuf                                ; 0058 _ 68, 00000218(d)
        push    8                                       ; 005D _ 6A, 08
        push    timerInfo                               ; 005F _ 68, 00000200(d)
        call    fifo8_init                              ; 0064 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0069 _ 83. C4, 10
        call    timer_alloc                             ; 006C _ E8, FFFFFFFC(rel)
        mov     dword [ebp-54H], eax                    ; 0071 _ 89. 45, AC
        sub     esp, 4                                  ; 0074 _ 83. EC, 04
        push    1                                       ; 0077 _ 6A, 01
        push    timerInfo                               ; 0079 _ 68, 00000200(d)
        push    dword [ebp-54H]                         ; 007E _ FF. 75, AC
        call    timer_init                              ; 0081 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0086 _ 83. C4, 10
        sub     esp, 8                                  ; 0089 _ 83. EC, 08
        push    500                                     ; 008C _ 68, 000001F4
        push    dword [ebp-54H]                         ; 0091 _ FF. 75, AC
        call    timer_setTime                           ; 0094 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0099 _ 83. C4, 10
        sub     esp, 4                                  ; 009C _ 83. EC, 04
        push    timerbuf2.1700                          ; 009F _ 68, 0000023C(d)
        push    8                                       ; 00A4 _ 6A, 08
        push    timerInfo2.1698                         ; 00A6 _ 68, 00000224(d)
        call    fifo8_init                              ; 00AB _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 00B0 _ 83. C4, 10
        call    timer_alloc                             ; 00B3 _ E8, FFFFFFFC(rel)
        mov     dword [ebp-50H], eax                    ; 00B8 _ 89. 45, B0
        sub     esp, 4                                  ; 00BB _ 83. EC, 04
        push    1                                       ; 00BE _ 6A, 01
        push    timerInfo2.1698                         ; 00C0 _ 68, 00000224(d)
        push    dword [ebp-50H]                         ; 00C5 _ FF. 75, B0
        call    timer_init                              ; 00C8 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 00CD _ 83. C4, 10
        sub     esp, 8                                  ; 00D0 _ 83. EC, 08
        push    300                                     ; 00D3 _ 68, 0000012C
        push    dword [ebp-50H]                         ; 00D8 _ FF. 75, B0
        call    timer_setTime                           ; 00DB _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 00E0 _ 83. C4, 10
        sub     esp, 4                                  ; 00E3 _ 83. EC, 04
        push    timerbuf3.1701                          ; 00E6 _ 68, 0000025C(d)
        push    8                                       ; 00EB _ 6A, 08
        push    timerInfo3.1699                         ; 00ED _ 68, 00000244(d)
        call    fifo8_init                              ; 00F2 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 00F7 _ 83. C4, 10
        call    timer_alloc                             ; 00FA _ E8, FFFFFFFC(rel)
        mov     dword [ebp-4CH], eax                    ; 00FF _ 89. 45, B4
        sub     esp, 4                                  ; 0102 _ 83. EC, 04
        push    1                                       ; 0105 _ 6A, 01
        push    timerInfo3.1699                         ; 0107 _ 68, 00000244(d)
        push    dword [ebp-4CH]                         ; 010C _ FF. 75, B4
        call    timer_init                              ; 010F _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0114 _ 83. C4, 10
        sub     esp, 8                                  ; 0117 _ 83. EC, 08
        push    100                                     ; 011A _ 6A, 64
        push    dword [ebp-4CH]                         ; 011C _ FF. 75, B4
        call    timer_setTime                           ; 011F _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0124 _ 83. C4, 10
        sub     esp, 4                                  ; 0127 _ 83. EC, 04
        push    keybuf                                  ; 012A _ 68, 00000040(d)
        push    32                                      ; 012F _ 6A, 20
        push    keyInfo                                 ; 0131 _ 68, 00000008(d)
        call    fifo8_init                              ; 0136 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 013B _ 83. C4, 10
        sub     esp, 4                                  ; 013E _ 83. EC, 04
        push    mousebuf                                ; 0141 _ 68, 00000060(d)
        push    128                                     ; 0146 _ 68, 00000080
        push    mouseInfo                               ; 014B _ 68, 00000020(d)
        call    fifo8_init                              ; 0150 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0155 _ 83. C4, 10
        call    init_palette                            ; 0158 _ E8, FFFFFFFC(rel)
        call    init_keyboard                           ; 015D _ E8, FFFFFFFC(rel)
        call    get_addr_buffer                         ; 0162 _ E8, FFFFFFFC(rel)
        mov     dword [ebp-48H], eax                    ; 0167 _ 89. 45, B8
        call    get_memory_block_count                  ; 016A _ E8, FFFFFFFC(rel)
        mov     dword [ebp-44H], eax                    ; 016F _ 89. 45, BC
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
        mov     dword [ebp-40H], eax                    ; 01B2 _ 89. 45, C0
        mov     eax, dword [ebp-40H]                    ; 01B5 _ 8B. 45, C0
        sub     esp, 12                                 ; 01B8 _ 83. EC, 0C
        push    eax                                     ; 01BB _ 50
        call    intToHexStr                             ; 01BC _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 01C1 _ 83. C4, 10
        mov     dword [ebp-3CH], eax                    ; 01C4 _ 89. 45, C4
        sub     esp, 8                                  ; 01C7 _ 83. EC, 08
        push    ?_160                                   ; 01CA _ 68, 00000000(d)
        push    3                                       ; 01CF _ 6A, 03
        push    0                                       ; 01D1 _ 6A, 00
        push    0                                       ; 01D3 _ 6A, 00
        push    dword [ebp-5CH]                         ; 01D5 _ FF. 75, A4
        push    dword [ebp-38H]                         ; 01D8 _ FF. 75, C8
        call    showString                              ; 01DB _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 01E0 _ 83. C4, 20
        sub     esp, 8                                  ; 01E3 _ 83. EC, 08
        push    dword [ebp-3CH]                         ; 01E6 _ FF. 75, C4
        push    3                                       ; 01E9 _ 6A, 03
        push    0                                       ; 01EB _ 6A, 00
        push    152                                     ; 01ED _ 68, 00000098
        push    dword [ebp-5CH]                         ; 01F2 _ FF. 75, A4
        push    dword [ebp-38H]                         ; 01F5 _ FF. 75, C8
        call    showString                              ; 01F8 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 01FD _ 83. C4, 20
        sub     esp, 8                                  ; 0200 _ 83. EC, 08
        push    ?_161                                   ; 0203 _ 68, 00000014(d)
        push    3                                       ; 0208 _ 6A, 03
        push    0                                       ; 020A _ 6A, 00
        push    240                                     ; 020C _ 68, 000000F0
        push    dword [ebp-5CH]                         ; 0211 _ FF. 75, A4
        push    dword [ebp-38H]                         ; 0214 _ FF. 75, C8
        call    showString                              ; 0217 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 021C _ 83. C4, 20
        mov     eax, dword [memman]                     ; 021F _ A1, 00000008(d)
        push    dword [ebp-60H]                         ; 0224 _ FF. 75, A0
        push    dword [ebp-64H]                         ; 0227 _ FF. 75, 9C
        push    dword [ebp-68H]                         ; 022A _ FF. 75, 98
        push    eax                                     ; 022D _ 50
        call    shtctl_init                             ; 022E _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0233 _ 83. C4, 10
        mov     dword [ebp-38H], eax                    ; 0236 _ 89. 45, C8
        sub     esp, 12                                 ; 0239 _ 83. EC, 0C
        push    dword [ebp-38H]                         ; 023C _ FF. 75, C8
        call    sheet_alloc                             ; 023F _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0244 _ 83. C4, 10
        mov     dword [ebp-5CH], eax                    ; 0247 _ 89. 45, A4
        sub     esp, 12                                 ; 024A _ 83. EC, 0C
        push    dword [ebp-38H]                         ; 024D _ FF. 75, C8
        call    sheet_alloc                             ; 0250 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0255 _ 83. C4, 10
        mov     dword [ebp-58H], eax                    ; 0258 _ 89. 45, A8
        mov     eax, dword [ebp-64H]                    ; 025B _ 8B. 45, 9C
        imul    eax, dword [ebp-60H]                    ; 025E _ 0F AF. 45, A0
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
        push    dword [ebp-60H]                         ; 0283 _ FF. 75, A0
        push    dword [ebp-64H]                         ; 0286 _ FF. 75, 9C
        push    eax                                     ; 0289 _ 50
        call    init_screen8                            ; 028A _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 028F _ 83. C4, 10
        mov     eax, dword [buf_back]                   ; 0292 _ A1, 000000F8(d)
        sub     esp, 12                                 ; 0297 _ 83. EC, 0C
        push    99                                      ; 029A _ 6A, 63
        push    dword [ebp-60H]                         ; 029C _ FF. 75, A0
        push    dword [ebp-64H]                         ; 029F _ FF. 75, 9C
        push    eax                                     ; 02A2 _ 50
        push    dword [ebp-5CH]                         ; 02A3 _ FF. 75, A4
        call    sheet_setbuf                            ; 02A6 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 02AB _ 83. C4, 20
        sub     esp, 12                                 ; 02AE _ 83. EC, 0C
        push    99                                      ; 02B1 _ 6A, 63
        push    16                                      ; 02B3 _ 6A, 10
        push    16                                      ; 02B5 _ 6A, 10
        push    buf_mouse                               ; 02B7 _ 68, 00000100(d)
        push    dword [ebp-58H]                         ; 02BC _ FF. 75, A8
        call    sheet_setbuf                            ; 02BF _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 02C4 _ 83. C4, 20
        sub     esp, 8                                  ; 02C7 _ 83. EC, 08
        push    99                                      ; 02CA _ 6A, 63
        push    buf_mouse                               ; 02CC _ 68, 00000100(d)
        call    init_mouse_cursor                       ; 02D1 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 02D6 _ 83. C4, 10
        push    0                                       ; 02D9 _ 6A, 00
        push    0                                       ; 02DB _ 6A, 00
        push    dword [ebp-5CH]                         ; 02DD _ FF. 75, A4
        push    dword [ebp-38H]                         ; 02E0 _ FF. 75, C8
        call    sheet_slide                             ; 02E3 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 02E8 _ 83. C4, 10
        mov     eax, dword [ebp-64H]                    ; 02EB _ 8B. 45, 9C
        sub     eax, 16                                 ; 02EE _ 83. E8, 10
        mov     edx, eax                                ; 02F1 _ 89. C2
        shr     edx, 31                                 ; 02F3 _ C1. EA, 1F
        add     eax, edx                                ; 02F6 _ 01. D0
        sar     eax, 1                                  ; 02F8 _ D1. F8
        mov     dword [mx], eax                         ; 02FA _ A3, 000000F0(d)
        mov     eax, dword [ebp-60H]                    ; 02FF _ 8B. 45, A0
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
        push    dword [ebp-58H]                         ; 0320 _ FF. 75, A8
        push    dword [ebp-38H]                         ; 0323 _ FF. 75, C8
        call    sheet_slide                             ; 0326 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 032B _ 83. C4, 10
        sub     esp, 8                                  ; 032E _ 83. EC, 08
        push    ?_162                                   ; 0331 _ 68, 00000017(d)
        push    dword [ebp-38H]                         ; 0336 _ FF. 75, C8
        call    messageBox                              ; 0339 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 033E _ 83. C4, 10
        mov     dword [sheet_win], eax                  ; 0341 _ A3, 00000220(d)
        sub     esp, 4                                  ; 0346 _ 83. EC, 04
        push    0                                       ; 0349 _ 6A, 00
        push    dword [ebp-5CH]                         ; 034B _ FF. 75, A4
        push    dword [ebp-38H]                         ; 034E _ FF. 75, C8
        call    sheet_level_updown                      ; 0351 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0356 _ 83. C4, 10
        sub     esp, 4                                  ; 0359 _ 83. EC, 04
        push    50                                      ; 035C _ 6A, 32
        push    dword [ebp-58H]                         ; 035E _ FF. 75, A8
        push    dword [ebp-38H]                         ; 0361 _ FF. 75, C8
        call    sheet_level_updown                      ; 0364 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0369 _ 83. C4, 10
        call    io_sti                                  ; 036C _ E8, FFFFFFFC(rel)
        sub     esp, 12                                 ; 0371 _ 83. EC, 0C
        push    mouse_move                              ; 0374 _ 68, 000000E0(d)
        call    enable_mouse                            ; 0379 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 037E _ 83. C4, 10
        mov     byte [ebp-6DH], 0                       ; 0381 _ C6. 45, 93, 00
        call    getTimerController                      ; 0385 _ E8, FFFFFFFC(rel)
        mov     dword [ebp-34H], eax                    ; 038A _ 89. 45, CC
        mov     dword [ebp-6CH], 7                      ; 038D _ C7. 45, 94, 00000007
?_001:  mov     eax, dword [ebp-54H]                    ; 0394 _ 8B. 45, AC
        mov     eax, dword [eax]                        ; 0397 _ 8B. 00
        sub     esp, 12                                 ; 0399 _ 83. EC, 0C
        push    eax                                     ; 039C _ 50
        call    intToHexStr                             ; 039D _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 03A2 _ 83. C4, 10
        mov     dword [ebp-30H], eax                    ; 03A5 _ 89. 45, D0
        mov     eax, dword [sheet_win]                  ; 03A8 _ A1, 00000220(d)
        mov     edx, dword [eax+4H]                     ; 03AD _ 8B. 50, 04
        mov     eax, dword [sheet_win]                  ; 03B0 _ A1, 00000220(d)
        mov     eax, dword [eax]                        ; 03B5 _ 8B. 00
        sub     esp, 4                                  ; 03B7 _ 83. EC, 04
        push    38                                      ; 03BA _ 6A, 26
        push    150                                     ; 03BC _ 68, 00000096
        push    23                                      ; 03C1 _ 6A, 17
        push    8                                       ; 03C3 _ 6A, 08
        push    8                                       ; 03C5 _ 6A, 08
        push    edx                                     ; 03C7 _ 52
        push    eax                                     ; 03C8 _ 50
        call    boxfill8                                ; 03C9 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 03CE _ 83. C4, 20
        mov     eax, dword [sheet_win]                  ; 03D1 _ A1, 00000220(d)
        sub     esp, 8                                  ; 03D6 _ 83. EC, 08
        push    dword [ebp-30H]                         ; 03D9 _ FF. 75, D0
        push    10                                      ; 03DC _ 6A, 0A
        push    23                                      ; 03DE _ 6A, 17
        push    8                                       ; 03E0 _ 6A, 08
        push    eax                                     ; 03E2 _ 50
        push    dword [ebp-38H]                         ; 03E3 _ FF. 75, C8
        call    showString                              ; 03E6 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 03EB _ 83. C4, 20
        sub     esp, 12                                 ; 03EE _ 83. EC, 0C
        push    keyInfo                                 ; 03F1 _ 68, 00000008(d)
        call    fifo8_status                            ; 03F6 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 03FB _ 83. C4, 10
        sub     esp, 12                                 ; 03FE _ 83. EC, 0C
        push    eax                                     ; 0401 _ 50
        call    intToHexStr                             ; 0402 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0407 _ 83. C4, 10
        mov     dword [ebp-2CH], eax                    ; 040A _ 89. 45, D4
        mov     eax, dword [sheet_win]                  ; 040D _ A1, 00000220(d)
        mov     edx, dword [eax+4H]                     ; 0412 _ 8B. 50, 04
        mov     eax, dword [sheet_win]                  ; 0415 _ A1, 00000220(d)
        mov     eax, dword [eax]                        ; 041A _ 8B. 00
        sub     esp, 4                                  ; 041C _ 83. EC, 04
        push    76                                      ; 041F _ 6A, 4C
        push    100                                     ; 0421 _ 6A, 64
        push    61                                      ; 0423 _ 6A, 3D
        push    8                                       ; 0425 _ 6A, 08
        push    8                                       ; 0427 _ 6A, 08
        push    edx                                     ; 0429 _ 52
        push    eax                                     ; 042A _ 50
        call    boxfill8                                ; 042B _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0430 _ 83. C4, 20
        mov     eax, dword [sheet_win]                  ; 0433 _ A1, 00000220(d)
        sub     esp, 8                                  ; 0438 _ 83. EC, 08
        push    dword [ebp-2CH]                         ; 043B _ FF. 75, D4
        push    10                                      ; 043E _ 6A, 0A
        push    61                                      ; 0440 _ 6A, 3D
        push    8                                       ; 0442 _ 6A, 08
        push    eax                                     ; 0444 _ 50
        push    dword [ebp-38H]                         ; 0445 _ FF. 75, C8
        call    showString                              ; 0448 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 044D _ 83. C4, 20
        sub     esp, 12                                 ; 0450 _ 83. EC, 0C
        push    mouseInfo                               ; 0453 _ 68, 00000020(d)
        call    fifo8_status                            ; 0458 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 045D _ 83. C4, 10
        sub     esp, 12                                 ; 0460 _ 83. EC, 0C
        push    eax                                     ; 0463 _ 50
        call    intToHexStr                             ; 0464 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0469 _ 83. C4, 10
        mov     dword [ebp-28H], eax                    ; 046C _ 89. 45, D8
        mov     eax, dword [sheet_win]                  ; 046F _ A1, 00000220(d)
        mov     edx, dword [eax+4H]                     ; 0474 _ 8B. 50, 04
        mov     eax, dword [sheet_win]                  ; 0477 _ A1, 00000220(d)
        mov     eax, dword [eax]                        ; 047C _ 8B. 00
        sub     esp, 4                                  ; 047E _ 83. EC, 04
        push    92                                      ; 0481 _ 6A, 5C
        push    100                                     ; 0483 _ 6A, 64
        push    77                                      ; 0485 _ 6A, 4D
        push    8                                       ; 0487 _ 6A, 08
        push    8                                       ; 0489 _ 6A, 08
        push    edx                                     ; 048B _ 52
        push    eax                                     ; 048C _ 50
        call    boxfill8                                ; 048D _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0492 _ 83. C4, 20
        mov     eax, dword [sheet_win]                  ; 0495 _ A1, 00000220(d)
        sub     esp, 8                                  ; 049A _ 83. EC, 08
        push    dword [ebp-28H]                         ; 049D _ FF. 75, D8
        push    10                                      ; 04A0 _ 6A, 0A
        push    77                                      ; 04A2 _ 6A, 4D
        push    8                                       ; 04A4 _ 6A, 08
        push    eax                                     ; 04A6 _ 50
        push    dword [ebp-38H]                         ; 04A7 _ FF. 75, C8
        call    showString                              ; 04AA _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 04AF _ 83. C4, 20
        call    io_cli                                  ; 04B2 _ E8, FFFFFFFC(rel)
        sub     esp, 12                                 ; 04B7 _ 83. EC, 0C
        push    keyInfo                                 ; 04BA _ 68, 00000008(d)
        call    fifo8_status                            ; 04BF _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 04C4 _ 83. C4, 10
        mov     ebx, eax                                ; 04C7 _ 89. C3
        sub     esp, 12                                 ; 04C9 _ 83. EC, 0C
        push    mouseInfo                               ; 04CC _ 68, 00000020(d)
        call    fifo8_status                            ; 04D1 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 04D6 _ 83. C4, 10
        add     ebx, eax                                ; 04D9 _ 01. C3
        sub     esp, 12                                 ; 04DB _ 83. EC, 0C
        push    timerInfo                               ; 04DE _ 68, 00000200(d)
        call    fifo8_status                            ; 04E3 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 04E8 _ 83. C4, 10
        add     ebx, eax                                ; 04EB _ 01. C3
        sub     esp, 12                                 ; 04ED _ 83. EC, 0C
        push    timerInfo2.1698                         ; 04F0 _ 68, 00000224(d)
        call    fifo8_status                            ; 04F5 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 04FA _ 83. C4, 10
        add     ebx, eax                                ; 04FD _ 01. C3
        sub     esp, 12                                 ; 04FF _ 83. EC, 0C
        push    timerInfo3.1699                         ; 0502 _ 68, 00000244(d)
        call    fifo8_status                            ; 0507 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 050C _ 83. C4, 10
        add     eax, ebx                                ; 050F _ 01. D8
        test    eax, eax                                ; 0511 _ 85. C0
        jnz     ?_002                                   ; 0513 _ 75, 0A
        call    io_sti                                  ; 0515 _ E8, FFFFFFFC(rel)
        jmp     ?_001                                   ; 051A _ E9, FFFFFE75

?_002:  sub     esp, 12                                 ; 051F _ 83. EC, 0C
        push    keyInfo                                 ; 0522 _ 68, 00000008(d)
        call    fifo8_status                            ; 0527 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 052C _ 83. C4, 10
        test    eax, eax                                ; 052F _ 85. C0
        je      ?_004                                   ; 0531 _ 0F 84, 0000019E
        call    io_sti                                  ; 0537 _ E8, FFFFFFFC(rel)
        sub     esp, 12                                 ; 053C _ 83. EC, 0C
        push    keyInfo                                 ; 053F _ 68, 00000008(d)
        call    fifo8_get                               ; 0544 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0549 _ 83. C4, 10
        mov     byte [ebp-6DH], al                      ; 054C _ 88. 45, 93
        cmp     byte [ebp-6DH], 28                      ; 054F _ 80. 7D, 93, 1C
        jnz     ?_003                                   ; 0553 _ 75, 50
        mov     edx, dword [cnt.1706]                   ; 0555 _ 8B. 15, 00000264(d)
        mov     eax, dword [ebp-5CH]                    ; 055B _ 8B. 45, A4
        mov     eax, dword [eax]                        ; 055E _ 8B. 00
        sub     esp, 4                                  ; 0560 _ 83. EC, 04
        push    7                                       ; 0563 _ 6A, 07
        push    dword [ebp-64H]                         ; 0565 _ FF. 75, 9C
        push    edx                                     ; 0568 _ 52
        push    eax                                     ; 0569 _ 50
        push    dword [ebp-48H]                         ; 056A _ FF. 75, B8
        push    dword [ebp-5CH]                         ; 056D _ FF. 75, A4
        push    dword [ebp-38H]                         ; 0570 _ FF. 75, C8
        call    showMemInfo                             ; 0573 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0578 _ 83. C4, 20
        mov     eax, dword [cnt.1706]                   ; 057B _ A1, 00000264(d)
        add     eax, 1                                  ; 0580 _ 83. C0, 01
        mov     dword [cnt.1706], eax                   ; 0583 _ A3, 00000264(d)
        mov     eax, dword [cnt.1706]                   ; 0588 _ A1, 00000264(d)
        cmp     dword [ebp-44H], eax                    ; 058D _ 39. 45, BC
        jg      ?_001                                   ; 0590 _ 0F 8F, FFFFFDFE
        mov     dword [cnt.1706], 0                     ; 0596 _ C7. 05, 00000264(d), 00000000
        jmp     ?_001                                   ; 05A0 _ E9, FFFFFDEF

?_003:  movzx   eax, byte [ebp-6DH]                     ; 05A5 _ 0F B6. 45, 93
        movzx   eax, byte [keytable+eax]                ; 05A9 _ 0F B6. 80, 00000020(d)
        test    al, al                                  ; 05B0 _ 84. C0
        je      ?_001                                   ; 05B2 _ 0F 84, FFFFFDDC
        cmp     byte [ebp-6DH], 15                      ; 05B8 _ 80. 7D, 93, 0F
        jbe     ?_001                                   ; 05BC _ 0F 86, FFFFFDD2
        cmp     byte [ebp-6DH], 83                      ; 05C2 _ 80. 7D, 93, 53
        ja      ?_001                                   ; 05C6 _ 0F 87, FFFFFDC8
        mov     eax, dword [line.1710]                  ; 05CC _ A1, 00000268(d)
        cmp     eax, 142                                ; 05D1 _ 3D, 0000008E
        jg      ?_001                                   ; 05D6 _ 0F 8F, FFFFFDB8
        mov     eax, dword [pos.1711]                   ; 05DC _ A1, 00000074(d)
        lea     edi, [eax+28H]                          ; 05E1 _ 8D. 78, 28
        mov     eax, dword [line.1710]                  ; 05E4 _ A1, 00000268(d)
        lea     esi, [eax+0EH]                          ; 05E9 _ 8D. 70, 0E
        mov     eax, dword [pos.1711]                   ; 05EC _ A1, 00000074(d)
        lea     ebx, [eax+1AH]                          ; 05F1 _ 8D. 58, 1A
        mov     eax, dword [line.1710]                  ; 05F4 _ A1, 00000268(d)
        lea     ecx, [eax+8H]                           ; 05F9 _ 8D. 48, 08
        mov     eax, dword [sheet_win]                  ; 05FC _ A1, 00000220(d)
        mov     edx, dword [eax+4H]                     ; 0601 _ 8B. 50, 04
        mov     eax, dword [sheet_win]                  ; 0604 _ A1, 00000220(d)
        mov     eax, dword [eax]                        ; 0609 _ 8B. 00
        sub     esp, 4                                  ; 060B _ 83. EC, 04
        push    edi                                     ; 060E _ 57
        push    esi                                     ; 060F _ 56
        push    ebx                                     ; 0610 _ 53
        push    ecx                                     ; 0611 _ 51
        push    7                                       ; 0612 _ 6A, 07
        push    edx                                     ; 0614 _ 52
        push    eax                                     ; 0615 _ 50
        call    boxfill8                                ; 0616 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 061B _ 83. C4, 20
        mov     eax, dword [pos.1711]                   ; 061E _ A1, 00000074(d)
        lea     esi, [eax+2AH]                          ; 0623 _ 8D. 70, 2A
        mov     eax, dword [line.1710]                  ; 0626 _ A1, 00000268(d)
        lea     ebx, [eax+10H]                          ; 062B _ 8D. 58, 10
        mov     eax, dword [pos.1711]                   ; 062E _ A1, 00000074(d)
        lea     ecx, [eax+1AH]                          ; 0633 _ 8D. 48, 1A
        mov     eax, dword [line.1710]                  ; 0636 _ A1, 00000268(d)
        lea     edx, [eax+8H]                           ; 063B _ 8D. 50, 08
        mov     eax, dword [sheet_win]                  ; 063E _ A1, 00000220(d)
        sub     esp, 8                                  ; 0643 _ 83. EC, 08
        push    esi                                     ; 0646 _ 56
        push    ebx                                     ; 0647 _ 53
        push    ecx                                     ; 0648 _ 51
        push    edx                                     ; 0649 _ 52
        push    eax                                     ; 064A _ 50
        push    dword [ebp-38H]                         ; 064B _ FF. 75, C8
        call    sheet_refresh                           ; 064E _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0653 _ 83. C4, 20
        movzx   eax, byte [ebp-6DH]                     ; 0656 _ 0F B6. 45, 93
        movzx   eax, byte [keytable+eax]                ; 065A _ 0F B6. 80, 00000020(d)
        mov     byte [ebp-1EH], al                      ; 0661 _ 88. 45, E2
        mov     byte [ebp-1DH], 0                       ; 0664 _ C6. 45, E3, 00
        mov     eax, dword [pos.1711]                   ; 0668 _ A1, 00000074(d)
        lea     ebx, [eax+1AH]                          ; 066D _ 8D. 58, 1A
        mov     eax, dword [line.1710]                  ; 0670 _ A1, 00000268(d)
        lea     ecx, [eax+8H]                           ; 0675 _ 8D. 48, 08
        mov     eax, dword [sheet_win]                  ; 0678 _ A1, 00000220(d)
        sub     esp, 8                                  ; 067D _ 83. EC, 08
        lea     edx, [ebp-1EH]                          ; 0680 _ 8D. 55, E2
        push    edx                                     ; 0683 _ 52
        push    0                                       ; 0684 _ 6A, 00
        push    ebx                                     ; 0686 _ 53
        push    ecx                                     ; 0687 _ 51
        push    eax                                     ; 0688 _ 50
        push    dword [ebp-38H]                         ; 0689 _ FF. 75, C8
        call    showString                              ; 068C _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0691 _ 83. C4, 20
        mov     eax, dword [line.1710]                  ; 0694 _ A1, 00000268(d)
        add     eax, 8                                  ; 0699 _ 83. C0, 08
        mov     dword [line.1710], eax                  ; 069C _ A3, 00000268(d)
        mov     eax, dword [sheet_win]                  ; 06A1 _ A1, 00000220(d)
        mov     eax, dword [eax+4H]                     ; 06A6 _ 8B. 40, 04
        lea     edx, [eax-10H]                          ; 06A9 _ 8D. 50, F0
        mov     eax, dword [line.1710]                  ; 06AC _ A1, 00000268(d)
        cmp     edx, eax                                ; 06B1 _ 39. C2
        jg      ?_001                                   ; 06B3 _ 0F 8F, FFFFFCDB
        mov     eax, dword [pos.1711]                   ; 06B9 _ A1, 00000074(d)
        add     eax, 16                                 ; 06BE _ 83. C0, 10
        mov     dword [pos.1711], eax                   ; 06C1 _ A3, 00000074(d)
        mov     dword [line.1710], 0                    ; 06C6 _ C7. 05, 00000268(d), 00000000
        jmp     ?_001                                   ; 06D0 _ E9, FFFFFCBF

?_004:  sub     esp, 12                                 ; 06D5 _ 83. EC, 0C
        push    mouseInfo                               ; 06D8 _ 68, 00000020(d)
        call    fifo8_status                            ; 06DD _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 06E2 _ 83. C4, 10
        test    eax, eax                                ; 06E5 _ 85. C0
        jz      ?_005                                   ; 06E7 _ 74, 19
        sub     esp, 4                                  ; 06E9 _ 83. EC, 04
        push    dword [ebp-58H]                         ; 06EC _ FF. 75, A8
        push    dword [ebp-5CH]                         ; 06EF _ FF. 75, A4
        push    dword [ebp-38H]                         ; 06F2 _ FF. 75, C8
        call    showMouseInfo                           ; 06F5 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 06FA _ 83. C4, 10
        jmp     ?_001                                   ; 06FD _ E9, FFFFFC92

?_005:  sub     esp, 12                                 ; 0702 _ 83. EC, 0C
        push    timerInfo                               ; 0705 _ 68, 00000200(d)
        call    fifo8_status                            ; 070A _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 070F _ 83. C4, 10
        test    eax, eax                                ; 0712 _ 85. C0
        jz      ?_006                                   ; 0714 _ 74, 36
        call    io_sti                                  ; 0716 _ E8, FFFFFFFC(rel)
        sub     esp, 12                                 ; 071B _ 83. EC, 0C
        push    timerInfo                               ; 071E _ 68, 00000200(d)
        call    fifo8_get                               ; 0723 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0728 _ 83. C4, 10
        sub     esp, 8                                  ; 072B _ 83. EC, 08
        push    ?_163                                   ; 072E _ 68, 0000001F(d)
        push    5                                       ; 0733 _ 6A, 05
        push    0                                       ; 0735 _ 6A, 00
        push    0                                       ; 0737 _ 6A, 00
        push    dword [ebp-5CH]                         ; 0739 _ FF. 75, A4
        push    dword [ebp-38H]                         ; 073C _ FF. 75, C8
        call    showString                              ; 073F _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0744 _ 83. C4, 20
        jmp     ?_001                                   ; 0747 _ E9, FFFFFC48

?_006:  sub     esp, 12                                 ; 074C _ 83. EC, 0C
        push    timerInfo2.1698                         ; 074F _ 68, 00000224(d)
        call    fifo8_status                            ; 0754 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0759 _ 83. C4, 10
        test    eax, eax                                ; 075C _ 85. C0
        jz      ?_007                                   ; 075E _ 74, 36
        call    io_sti                                  ; 0760 _ E8, FFFFFFFC(rel)
        sub     esp, 12                                 ; 0765 _ 83. EC, 0C
        push    timerInfo2.1698                         ; 0768 _ 68, 00000224(d)
        call    fifo8_get                               ; 076D _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0772 _ 83. C4, 10
        sub     esp, 8                                  ; 0775 _ 83. EC, 08
        push    ?_164                                   ; 0778 _ 68, 00000027(d)
        push    5                                       ; 077D _ 6A, 05
        push    16                                      ; 077F _ 6A, 10
        push    0                                       ; 0781 _ 6A, 00
        push    dword [ebp-5CH]                         ; 0783 _ FF. 75, A4
        push    dword [ebp-38H]                         ; 0786 _ FF. 75, C8
        call    showString                              ; 0789 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 078E _ 83. C4, 20
        jmp     ?_001                                   ; 0791 _ E9, FFFFFBFE

?_007:  sub     esp, 12                                 ; 0796 _ 83. EC, 0C
        push    timerInfo3.1699                         ; 0799 _ 68, 00000244(d)
        call    fifo8_status                            ; 079E _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 07A3 _ 83. C4, 10
        test    eax, eax                                ; 07A6 _ 85. C0
        je      ?_001                                   ; 07A8 _ 0F 84, FFFFFBE6
        call    io_sti                                  ; 07AE _ E8, FFFFFFFC(rel)
        sub     esp, 12                                 ; 07B3 _ 83. EC, 0C
        push    timerInfo3.1699                         ; 07B6 _ 68, 00000244(d)
        call    fifo8_get                               ; 07BB _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 07C0 _ 83. C4, 10
        mov     dword [ebp-24H], eax                    ; 07C3 _ 89. 45, DC
        cmp     dword [ebp-24H], 0                      ; 07C6 _ 83. 7D, DC, 00
        jz      ?_008                                   ; 07CA _ 74, 1E
        sub     esp, 4                                  ; 07CC _ 83. EC, 04
        push    0                                       ; 07CF _ 6A, 00
        push    timerInfo3.1699                         ; 07D1 _ 68, 00000244(d)
        push    dword [ebp-4CH]                         ; 07D6 _ FF. 75, B4
        call    timer_init                              ; 07D9 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 07DE _ 83. C4, 10
        mov     dword [ebp-6CH], 0                      ; 07E1 _ C7. 45, 94, 00000000
        jmp     ?_009                                   ; 07E8 _ EB, 1C

?_008:  sub     esp, 4                                  ; 07EA _ 83. EC, 04
        push    1                                       ; 07ED _ 6A, 01
        push    timerInfo3.1699                         ; 07EF _ 68, 00000244(d)
        push    dword [ebp-4CH]                         ; 07F4 _ FF. 75, B4
        call    timer_init                              ; 07F7 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 07FC _ 83. C4, 10
        mov     dword [ebp-6CH], 7                      ; 07FF _ C7. 45, 94, 00000007
?_009:  sub     esp, 8                                  ; 0806 _ 83. EC, 08
        push    50                                      ; 0809 _ 6A, 32
        push    dword [ebp-4CH]                         ; 080B _ FF. 75, B4
        call    timer_setTime                           ; 080E _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0813 _ 83. C4, 10
        mov     eax, dword [pos.1711]                   ; 0816 _ A1, 00000074(d)
        add     eax, 40                                 ; 081B _ 83. C0, 28
        mov     dword [ebp-7CH], eax                    ; 081E _ 89. 45, 84
        mov     eax, dword [line.1710]                  ; 0821 _ A1, 00000268(d)
        lea     edi, [eax+0EH]                          ; 0826 _ 8D. 78, 0E
        mov     eax, dword [pos.1711]                   ; 0829 _ A1, 00000074(d)
        lea     esi, [eax+1AH]                          ; 082E _ 8D. 70, 1A
        mov     eax, dword [line.1710]                  ; 0831 _ A1, 00000268(d)
        lea     ebx, [eax+8H]                           ; 0836 _ 8D. 58, 08
        mov     eax, dword [ebp-6CH]                    ; 0839 _ 8B. 45, 94
        movzx   ecx, al                                 ; 083C _ 0F B6. C8
        mov     eax, dword [sheet_win]                  ; 083F _ A1, 00000220(d)
        mov     edx, dword [eax+4H]                     ; 0844 _ 8B. 50, 04
        mov     eax, dword [sheet_win]                  ; 0847 _ A1, 00000220(d)
        mov     eax, dword [eax]                        ; 084C _ 8B. 00
        sub     esp, 4                                  ; 084E _ 83. EC, 04
        push    dword [ebp-7CH]                         ; 0851 _ FF. 75, 84
        push    edi                                     ; 0854 _ 57
        push    esi                                     ; 0855 _ 56
        push    ebx                                     ; 0856 _ 53
        push    ecx                                     ; 0857 _ 51
        push    edx                                     ; 0858 _ 52
        push    eax                                     ; 0859 _ 50
        call    boxfill8                                ; 085A _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 085F _ 83. C4, 20
        mov     eax, dword [pos.1711]                   ; 0862 _ A1, 00000074(d)
        lea     esi, [eax+2AH]                          ; 0867 _ 8D. 70, 2A
        mov     eax, dword [line.1710]                  ; 086A _ A1, 00000268(d)
        lea     ebx, [eax+10H]                          ; 086F _ 8D. 58, 10
        mov     eax, dword [pos.1711]                   ; 0872 _ A1, 00000074(d)
        lea     ecx, [eax+1AH]                          ; 0877 _ 8D. 48, 1A
        mov     eax, dword [line.1710]                  ; 087A _ A1, 00000268(d)
        lea     edx, [eax+8H]                           ; 087F _ 8D. 50, 08
        mov     eax, dword [sheet_win]                  ; 0882 _ A1, 00000220(d)
        sub     esp, 8                                  ; 0887 _ 83. EC, 08
        push    esi                                     ; 088A _ 56
        push    ebx                                     ; 088B _ 53
        push    ecx                                     ; 088C _ 51
        push    edx                                     ; 088D _ 52
        push    eax                                     ; 088E _ 50
        push    dword [ebp-38H]                         ; 088F _ FF. 75, C8
        call    sheet_refresh                           ; 0892 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0897 _ 83. C4, 20
        jmp     ?_001                                   ; 089A _ E9, FFFFFAF5
; CMain End of function

initBootInfo:; Function begin
        push    ebp                                     ; 089F _ 55
        mov     ebp, esp                                ; 08A0 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 08A2 _ 8B. 45, 08
        mov     dword [eax], -536870912                 ; 08A5 _ C7. 00, E0000000
        mov     eax, dword [ebp+8H]                     ; 08AB _ 8B. 45, 08
; Note: Length-changing prefix causes delay on Intel processors
        mov     word [eax+4H], 640                      ; 08AE _ 66: C7. 40, 04, 0280
        mov     eax, dword [ebp+8H]                     ; 08B4 _ 8B. 45, 08
; Note: Length-changing prefix causes delay on Intel processors
        mov     word [eax+6H], 480                      ; 08B7 _ 66: C7. 40, 06, 01E0
        nop                                             ; 08BD _ 90
        pop     ebp                                     ; 08BE _ 5D
        ret                                             ; 08BF _ C3
; initBootInfo End of function

showString:; Function begin
        push    ebp                                     ; 08C0 _ 55
        mov     ebp, esp                                ; 08C1 _ 89. E5
        push    ebx                                     ; 08C3 _ 53
        sub     esp, 36                                 ; 08C4 _ 83. EC, 24
        mov     eax, dword [ebp+18H]                    ; 08C7 _ 8B. 45, 18
        mov     byte [ebp-1CH], al                      ; 08CA _ 88. 45, E4
        mov     eax, dword [ebp+10H]                    ; 08CD _ 8B. 45, 10
        mov     dword [ebp-0CH], eax                    ; 08D0 _ 89. 45, F4
        jmp     ?_011                                   ; 08D3 _ EB, 3E

?_010:  mov     eax, dword [ebp+1CH]                    ; 08D5 _ 8B. 45, 1C
        movzx   eax, byte [eax]                         ; 08D8 _ 0F B6. 00
        movzx   eax, al                                 ; 08DB _ 0F B6. C0
        shl     eax, 4                                  ; 08DE _ C1. E0, 04
        lea     ebx, [systemFont+eax]                   ; 08E1 _ 8D. 98, 00000000(d)
        movsx   ecx, byte [ebp-1CH]                     ; 08E7 _ 0F BE. 4D, E4
        mov     eax, dword [ebp+0CH]                    ; 08EB _ 8B. 45, 0C
        mov     edx, dword [eax+4H]                     ; 08EE _ 8B. 50, 04
        mov     eax, dword [ebp+0CH]                    ; 08F1 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 08F4 _ 8B. 00
        sub     esp, 8                                  ; 08F6 _ 83. EC, 08
        push    ebx                                     ; 08F9 _ 53
        push    ecx                                     ; 08FA _ 51
        push    dword [ebp+14H]                         ; 08FB _ FF. 75, 14
        push    dword [ebp+10H]                         ; 08FE _ FF. 75, 10
        push    edx                                     ; 0901 _ 52
        push    eax                                     ; 0902 _ 50
        call    showFont8                               ; 0903 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0908 _ 83. C4, 20
        add     dword [ebp+10H], 8                      ; 090B _ 83. 45, 10, 08
        add     dword [ebp+1CH], 1                      ; 090F _ 83. 45, 1C, 01
?_011:  mov     eax, dword [ebp+1CH]                    ; 0913 _ 8B. 45, 1C
        movzx   eax, byte [eax]                         ; 0916 _ 0F B6. 00
        test    al, al                                  ; 0919 _ 84. C0
        jnz     ?_010                                   ; 091B _ 75, B8
        mov     eax, dword [ebp+14H]                    ; 091D _ 8B. 45, 14
        add     eax, 16                                 ; 0920 _ 83. C0, 10
        sub     esp, 8                                  ; 0923 _ 83. EC, 08
        push    eax                                     ; 0926 _ 50
        push    dword [ebp+10H]                         ; 0927 _ FF. 75, 10
        push    dword [ebp+14H]                         ; 092A _ FF. 75, 14
        push    dword [ebp-0CH]                         ; 092D _ FF. 75, F4
        push    dword [ebp+0CH]                         ; 0930 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 0933 _ FF. 75, 08
        call    sheet_refresh                           ; 0936 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 093B _ 83. C4, 20
        nop                                             ; 093E _ 90
        mov     ebx, dword [ebp-4H]                     ; 093F _ 8B. 5D, FC
        leave                                           ; 0942 _ C9
        ret                                             ; 0943 _ C3
; showString End of function

init_screen8:; Function begin
        push    ebp                                     ; 0944 _ 55
        mov     ebp, esp                                ; 0945 _ 89. E5
        push    ebx                                     ; 0947 _ 53
        sub     esp, 4                                  ; 0948 _ 83. EC, 04
        mov     eax, dword [ebp+10H]                    ; 094B _ 8B. 45, 10
        lea     edx, [eax-19H]                          ; 094E _ 8D. 50, E7
        mov     eax, dword [ebp+0CH]                    ; 0951 _ 8B. 45, 0C
        sub     eax, 1                                  ; 0954 _ 83. E8, 01
        sub     esp, 4                                  ; 0957 _ 83. EC, 04
        push    edx                                     ; 095A _ 52
        push    eax                                     ; 095B _ 50
        push    0                                       ; 095C _ 6A, 00
        push    0                                       ; 095E _ 6A, 00
        push    14                                      ; 0960 _ 6A, 0E
        push    dword [ebp+0CH]                         ; 0962 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 0965 _ FF. 75, 08
        call    boxfill8                                ; 0968 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 096D _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 0970 _ 8B. 45, 10
        lea     ecx, [eax-18H]                          ; 0973 _ 8D. 48, E8
        mov     eax, dword [ebp+0CH]                    ; 0976 _ 8B. 45, 0C
        lea     edx, [eax-1H]                           ; 0979 _ 8D. 50, FF
        mov     eax, dword [ebp+10H]                    ; 097C _ 8B. 45, 10
        sub     eax, 24                                 ; 097F _ 83. E8, 18
        sub     esp, 4                                  ; 0982 _ 83. EC, 04
        push    ecx                                     ; 0985 _ 51
        push    edx                                     ; 0986 _ 52
        push    eax                                     ; 0987 _ 50
        push    0                                       ; 0988 _ 6A, 00
        push    8                                       ; 098A _ 6A, 08
        push    dword [ebp+0CH]                         ; 098C _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 098F _ FF. 75, 08
        call    boxfill8                                ; 0992 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0997 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 099A _ 8B. 45, 10
        lea     ecx, [eax-17H]                          ; 099D _ 8D. 48, E9
        mov     eax, dword [ebp+0CH]                    ; 09A0 _ 8B. 45, 0C
        lea     edx, [eax-1H]                           ; 09A3 _ 8D. 50, FF
        mov     eax, dword [ebp+10H]                    ; 09A6 _ 8B. 45, 10
        sub     eax, 23                                 ; 09A9 _ 83. E8, 17
        sub     esp, 4                                  ; 09AC _ 83. EC, 04
        push    ecx                                     ; 09AF _ 51
        push    edx                                     ; 09B0 _ 52
        push    eax                                     ; 09B1 _ 50
        push    0                                       ; 09B2 _ 6A, 00
        push    7                                       ; 09B4 _ 6A, 07
        push    dword [ebp+0CH]                         ; 09B6 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 09B9 _ FF. 75, 08
        call    boxfill8                                ; 09BC _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 09C1 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 09C4 _ 8B. 45, 10
        lea     ecx, [eax-1H]                           ; 09C7 _ 8D. 48, FF
        mov     eax, dword [ebp+0CH]                    ; 09CA _ 8B. 45, 0C
        lea     edx, [eax-1H]                           ; 09CD _ 8D. 50, FF
        mov     eax, dword [ebp+10H]                    ; 09D0 _ 8B. 45, 10
        sub     eax, 22                                 ; 09D3 _ 83. E8, 16
        sub     esp, 4                                  ; 09D6 _ 83. EC, 04
        push    ecx                                     ; 09D9 _ 51
        push    edx                                     ; 09DA _ 52
        push    eax                                     ; 09DB _ 50
        push    0                                       ; 09DC _ 6A, 00
        push    8                                       ; 09DE _ 6A, 08
        push    dword [ebp+0CH]                         ; 09E0 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 09E3 _ FF. 75, 08
        call    boxfill8                                ; 09E6 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 09EB _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 09EE _ 8B. 45, 10
        lea     edx, [eax-14H]                          ; 09F1 _ 8D. 50, EC
        mov     eax, dword [ebp+10H]                    ; 09F4 _ 8B. 45, 10
        sub     eax, 20                                 ; 09F7 _ 83. E8, 14
        sub     esp, 4                                  ; 09FA _ 83. EC, 04
        push    edx                                     ; 09FD _ 52
        push    51                                      ; 09FE _ 6A, 33
        push    eax                                     ; 0A00 _ 50
        push    10                                      ; 0A01 _ 6A, 0A
        push    7                                       ; 0A03 _ 6A, 07
        push    dword [ebp+0CH]                         ; 0A05 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 0A08 _ FF. 75, 08
        call    boxfill8                                ; 0A0B _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0A10 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 0A13 _ 8B. 45, 10
        lea     edx, [eax-4H]                           ; 0A16 _ 8D. 50, FC
        mov     eax, dword [ebp+10H]                    ; 0A19 _ 8B. 45, 10
        sub     eax, 20                                 ; 0A1C _ 83. E8, 14
        sub     esp, 4                                  ; 0A1F _ 83. EC, 04
        push    edx                                     ; 0A22 _ 52
        push    9                                       ; 0A23 _ 6A, 09
        push    eax                                     ; 0A25 _ 50
        push    9                                       ; 0A26 _ 6A, 09
        push    7                                       ; 0A28 _ 6A, 07
        push    dword [ebp+0CH]                         ; 0A2A _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 0A2D _ FF. 75, 08
        call    boxfill8                                ; 0A30 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0A35 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 0A38 _ 8B. 45, 10
        lea     edx, [eax-4H]                           ; 0A3B _ 8D. 50, FC
        mov     eax, dword [ebp+10H]                    ; 0A3E _ 8B. 45, 10
        sub     eax, 4                                  ; 0A41 _ 83. E8, 04
        sub     esp, 4                                  ; 0A44 _ 83. EC, 04
        push    edx                                     ; 0A47 _ 52
        push    50                                      ; 0A48 _ 6A, 32
        push    eax                                     ; 0A4A _ 50
        push    10                                      ; 0A4B _ 6A, 0A
        push    15                                      ; 0A4D _ 6A, 0F
        push    dword [ebp+0CH]                         ; 0A4F _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 0A52 _ FF. 75, 08
        call    boxfill8                                ; 0A55 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0A5A _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 0A5D _ 8B. 45, 10
        lea     edx, [eax-5H]                           ; 0A60 _ 8D. 50, FB
        mov     eax, dword [ebp+10H]                    ; 0A63 _ 8B. 45, 10
        sub     eax, 19                                 ; 0A66 _ 83. E8, 13
        sub     esp, 4                                  ; 0A69 _ 83. EC, 04
        push    edx                                     ; 0A6C _ 52
        push    50                                      ; 0A6D _ 6A, 32
        push    eax                                     ; 0A6F _ 50
        push    50                                      ; 0A70 _ 6A, 32
        push    15                                      ; 0A72 _ 6A, 0F
        push    dword [ebp+0CH]                         ; 0A74 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 0A77 _ FF. 75, 08
        call    boxfill8                                ; 0A7A _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0A7F _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 0A82 _ 8B. 45, 10
        lea     edx, [eax-3H]                           ; 0A85 _ 8D. 50, FD
        mov     eax, dword [ebp+10H]                    ; 0A88 _ 8B. 45, 10
        sub     eax, 3                                  ; 0A8B _ 83. E8, 03
        sub     esp, 4                                  ; 0A8E _ 83. EC, 04
        push    edx                                     ; 0A91 _ 52
        push    50                                      ; 0A92 _ 6A, 32
        push    eax                                     ; 0A94 _ 50
        push    10                                      ; 0A95 _ 6A, 0A
        push    0                                       ; 0A97 _ 6A, 00
        push    dword [ebp+0CH]                         ; 0A99 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 0A9C _ FF. 75, 08
        call    boxfill8                                ; 0A9F _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0AA4 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 0AA7 _ 8B. 45, 10
        lea     edx, [eax-3H]                           ; 0AAA _ 8D. 50, FD
        mov     eax, dword [ebp+10H]                    ; 0AAD _ 8B. 45, 10
        sub     eax, 20                                 ; 0AB0 _ 83. E8, 14
        sub     esp, 4                                  ; 0AB3 _ 83. EC, 04
        push    edx                                     ; 0AB6 _ 52
        push    51                                      ; 0AB7 _ 6A, 33
        push    eax                                     ; 0AB9 _ 50
        push    51                                      ; 0ABA _ 6A, 33
        push    0                                       ; 0ABC _ 6A, 00
        push    dword [ebp+0CH]                         ; 0ABE _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 0AC1 _ FF. 75, 08
        call    boxfill8                                ; 0AC4 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0AC9 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 0ACC _ 8B. 45, 10
        lea     ebx, [eax-14H]                          ; 0ACF _ 8D. 58, EC
        mov     eax, dword [ebp+0CH]                    ; 0AD2 _ 8B. 45, 0C
        lea     ecx, [eax-4H]                           ; 0AD5 _ 8D. 48, FC
        mov     eax, dword [ebp+10H]                    ; 0AD8 _ 8B. 45, 10
        lea     edx, [eax-14H]                          ; 0ADB _ 8D. 50, EC
        mov     eax, dword [ebp+0CH]                    ; 0ADE _ 8B. 45, 0C
        sub     eax, 47                                 ; 0AE1 _ 83. E8, 2F
        sub     esp, 4                                  ; 0AE4 _ 83. EC, 04
        push    ebx                                     ; 0AE7 _ 53
        push    ecx                                     ; 0AE8 _ 51
        push    edx                                     ; 0AE9 _ 52
        push    eax                                     ; 0AEA _ 50
        push    15                                      ; 0AEB _ 6A, 0F
        push    dword [ebp+0CH]                         ; 0AED _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 0AF0 _ FF. 75, 08
        call    boxfill8                                ; 0AF3 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0AF8 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 0AFB _ 8B. 45, 10
        lea     ebx, [eax-3H]                           ; 0AFE _ 8D. 58, FD
        mov     eax, dword [ebp+0CH]                    ; 0B01 _ 8B. 45, 0C
        lea     ecx, [eax-2FH]                          ; 0B04 _ 8D. 48, D1
        mov     eax, dword [ebp+10H]                    ; 0B07 _ 8B. 45, 10
        lea     edx, [eax-14H]                          ; 0B0A _ 8D. 50, EC
        mov     eax, dword [ebp+0CH]                    ; 0B0D _ 8B. 45, 0C
        sub     eax, 47                                 ; 0B10 _ 83. E8, 2F
        sub     esp, 4                                  ; 0B13 _ 83. EC, 04
        push    ebx                                     ; 0B16 _ 53
        push    ecx                                     ; 0B17 _ 51
        push    edx                                     ; 0B18 _ 52
        push    eax                                     ; 0B19 _ 50
        push    15                                      ; 0B1A _ 6A, 0F
        push    dword [ebp+0CH]                         ; 0B1C _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 0B1F _ FF. 75, 08
        call    boxfill8                                ; 0B22 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0B27 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 0B2A _ 8B. 45, 10
        lea     ebx, [eax-3H]                           ; 0B2D _ 8D. 58, FD
        mov     eax, dword [ebp+0CH]                    ; 0B30 _ 8B. 45, 0C
        lea     ecx, [eax-4H]                           ; 0B33 _ 8D. 48, FC
        mov     eax, dword [ebp+10H]                    ; 0B36 _ 8B. 45, 10
        lea     edx, [eax-3H]                           ; 0B39 _ 8D. 50, FD
        mov     eax, dword [ebp+0CH]                    ; 0B3C _ 8B. 45, 0C
        sub     eax, 47                                 ; 0B3F _ 83. E8, 2F
        sub     esp, 4                                  ; 0B42 _ 83. EC, 04
        push    ebx                                     ; 0B45 _ 53
        push    ecx                                     ; 0B46 _ 51
        push    edx                                     ; 0B47 _ 52
        push    eax                                     ; 0B48 _ 50
        push    7                                       ; 0B49 _ 6A, 07
        push    dword [ebp+0CH]                         ; 0B4B _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 0B4E _ FF. 75, 08
        call    boxfill8                                ; 0B51 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0B56 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 0B59 _ 8B. 45, 10
        lea     ebx, [eax-3H]                           ; 0B5C _ 8D. 58, FD
        mov     eax, dword [ebp+0CH]                    ; 0B5F _ 8B. 45, 0C
        lea     ecx, [eax-3H]                           ; 0B62 _ 8D. 48, FD
        mov     eax, dword [ebp+10H]                    ; 0B65 _ 8B. 45, 10
        lea     edx, [eax-14H]                          ; 0B68 _ 8D. 50, EC
        mov     eax, dword [ebp+0CH]                    ; 0B6B _ 8B. 45, 0C
        sub     eax, 3                                  ; 0B6E _ 83. E8, 03
        sub     esp, 4                                  ; 0B71 _ 83. EC, 04
        push    ebx                                     ; 0B74 _ 53
        push    ecx                                     ; 0B75 _ 51
        push    edx                                     ; 0B76 _ 52
        push    eax                                     ; 0B77 _ 50
        push    7                                       ; 0B78 _ 6A, 07
        push    dword [ebp+0CH]                         ; 0B7A _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 0B7D _ FF. 75, 08
        call    boxfill8                                ; 0B80 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0B85 _ 83. C4, 20
        nop                                             ; 0B88 _ 90
        mov     ebx, dword [ebp-4H]                     ; 0B89 _ 8B. 5D, FC
        leave                                           ; 0B8C _ C9
        ret                                             ; 0B8D _ C3
; init_screen8 End of function

init_palette:; Function begin
        push    ebp                                     ; 0B8E _ 55
        mov     ebp, esp                                ; 0B8F _ 89. E5
        sub     esp, 24                                 ; 0B91 _ 83. EC, 18
        mov     eax, dword [bootInfo]                   ; 0B94 _ A1, 00000000(d)
        mov     dword [ebp-14H], eax                    ; 0B99 _ 89. 45, EC
        movzx   eax, word [?_173]                       ; 0B9C _ 0F B7. 05, 00000004(d)
        cwde                                            ; 0BA3 _ 98
        mov     dword [ebp-10H], eax                    ; 0BA4 _ 89. 45, F0
        movzx   eax, word [?_174]                       ; 0BA7 _ 0F B7. 05, 00000006(d)
        cwde                                            ; 0BAE _ 98
        mov     dword [ebp-0CH], eax                    ; 0BAF _ 89. 45, F4
        sub     esp, 4                                  ; 0BB2 _ 83. EC, 04
        push    table_rgb.1744                          ; 0BB5 _ 68, 00000080(d)
        push    15                                      ; 0BBA _ 6A, 0F
        push    0                                       ; 0BBC _ 6A, 00
        call    set_palette                             ; 0BBE _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0BC3 _ 83. C4, 10
        nop                                             ; 0BC6 _ 90
        leave                                           ; 0BC7 _ C9
        ret                                             ; 0BC8 _ C3
; init_palette End of function

set_palette:; Function begin
        push    ebp                                     ; 0BC9 _ 55
        mov     ebp, esp                                ; 0BCA _ 89. E5
        sub     esp, 24                                 ; 0BCC _ 83. EC, 18
        call    io_load_eflags                          ; 0BCF _ E8, FFFFFFFC(rel)
        mov     dword [ebp-0CH], eax                    ; 0BD4 _ 89. 45, F4
        call    io_cli                                  ; 0BD7 _ E8, FFFFFFFC(rel)
        sub     esp, 8                                  ; 0BDC _ 83. EC, 08
        push    dword [ebp+8H]                          ; 0BDF _ FF. 75, 08
        push    968                                     ; 0BE2 _ 68, 000003C8
        call    io_out8                                 ; 0BE7 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0BEC _ 83. C4, 10
        mov     eax, dword [ebp+8H]                     ; 0BEF _ 8B. 45, 08
        mov     dword [ebp-10H], eax                    ; 0BF2 _ 89. 45, F0
        jmp     ?_013                                   ; 0BF5 _ EB, 65

?_012:  mov     eax, dword [ebp+10H]                    ; 0BF7 _ 8B. 45, 10
        movzx   eax, byte [eax]                         ; 0BFA _ 0F B6. 00
        shr     al, 2                                   ; 0BFD _ C0. E8, 02
        movzx   eax, al                                 ; 0C00 _ 0F B6. C0
        sub     esp, 8                                  ; 0C03 _ 83. EC, 08
        push    eax                                     ; 0C06 _ 50
        push    969                                     ; 0C07 _ 68, 000003C9
        call    io_out8                                 ; 0C0C _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0C11 _ 83. C4, 10
        mov     eax, dword [ebp+10H]                    ; 0C14 _ 8B. 45, 10
        add     eax, 1                                  ; 0C17 _ 83. C0, 01
        movzx   eax, byte [eax]                         ; 0C1A _ 0F B6. 00
        shr     al, 2                                   ; 0C1D _ C0. E8, 02
        movzx   eax, al                                 ; 0C20 _ 0F B6. C0
        sub     esp, 8                                  ; 0C23 _ 83. EC, 08
        push    eax                                     ; 0C26 _ 50
        push    969                                     ; 0C27 _ 68, 000003C9
        call    io_out8                                 ; 0C2C _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0C31 _ 83. C4, 10
        mov     eax, dword [ebp+10H]                    ; 0C34 _ 8B. 45, 10
        add     eax, 2                                  ; 0C37 _ 83. C0, 02
        movzx   eax, byte [eax]                         ; 0C3A _ 0F B6. 00
        shr     al, 2                                   ; 0C3D _ C0. E8, 02
        movzx   eax, al                                 ; 0C40 _ 0F B6. C0
        sub     esp, 8                                  ; 0C43 _ 83. EC, 08
        push    eax                                     ; 0C46 _ 50
        push    969                                     ; 0C47 _ 68, 000003C9
        call    io_out8                                 ; 0C4C _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0C51 _ 83. C4, 10
        add     dword [ebp+10H], 3                      ; 0C54 _ 83. 45, 10, 03
        add     dword [ebp-10H], 1                      ; 0C58 _ 83. 45, F0, 01
?_013:  mov     eax, dword [ebp-10H]                    ; 0C5C _ 8B. 45, F0
        cmp     eax, dword [ebp+0CH]                    ; 0C5F _ 3B. 45, 0C
        jle     ?_012                                   ; 0C62 _ 7E, 93
        sub     esp, 12                                 ; 0C64 _ 83. EC, 0C
        push    dword [ebp-0CH]                         ; 0C67 _ FF. 75, F4
        call    io_store_eflags                         ; 0C6A _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0C6F _ 83. C4, 10
        nop                                             ; 0C72 _ 90
        leave                                           ; 0C73 _ C9
        ret                                             ; 0C74 _ C3
; set_palette End of function

boxfill8:; Function begin
        push    ebp                                     ; 0C75 _ 55
        mov     ebp, esp                                ; 0C76 _ 89. E5
        sub     esp, 20                                 ; 0C78 _ 83. EC, 14
        mov     eax, dword [ebp+10H]                    ; 0C7B _ 8B. 45, 10
        mov     byte [ebp-14H], al                      ; 0C7E _ 88. 45, EC
        mov     eax, dword [ebp+18H]                    ; 0C81 _ 8B. 45, 18
        mov     dword [ebp-4H], eax                     ; 0C84 _ 89. 45, FC
        jmp     ?_017                                   ; 0C87 _ EB, 33

?_014:  mov     eax, dword [ebp+14H]                    ; 0C89 _ 8B. 45, 14
        mov     dword [ebp-8H], eax                     ; 0C8C _ 89. 45, F8
        jmp     ?_016                                   ; 0C8F _ EB, 1F

?_015:  mov     eax, dword [ebp-4H]                     ; 0C91 _ 8B. 45, FC
        imul    eax, dword [ebp+0CH]                    ; 0C94 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 0C98 _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 0C9A _ 8B. 45, F8
        add     eax, edx                                ; 0C9D _ 01. D0
        mov     edx, eax                                ; 0C9F _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 0CA1 _ 8B. 45, 08
        add     edx, eax                                ; 0CA4 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0CA6 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0CAA _ 88. 02
        add     dword [ebp-8H], 1                       ; 0CAC _ 83. 45, F8, 01
?_016:  mov     eax, dword [ebp-8H]                     ; 0CB0 _ 8B. 45, F8
        cmp     eax, dword [ebp+1CH]                    ; 0CB3 _ 3B. 45, 1C
        jle     ?_015                                   ; 0CB6 _ 7E, D9
        add     dword [ebp-4H], 1                       ; 0CB8 _ 83. 45, FC, 01
?_017:  mov     eax, dword [ebp-4H]                     ; 0CBC _ 8B. 45, FC
        cmp     eax, dword [ebp+20H]                    ; 0CBF _ 3B. 45, 20
        jle     ?_014                                   ; 0CC2 _ 7E, C5
        nop                                             ; 0CC4 _ 90
        leave                                           ; 0CC5 _ C9
        ret                                             ; 0CC6 _ C3
; boxfill8 End of function

make_textbox8:; Function begin
        push    ebp                                     ; 0CC7 _ 55
        mov     ebp, esp                                ; 0CC8 _ 89. E5
        push    edi                                     ; 0CCA _ 57
        push    esi                                     ; 0CCB _ 56
        push    ebx                                     ; 0CCC _ 53
        sub     esp, 16                                 ; 0CCD _ 83. EC, 10
        mov     edx, dword [ebp+0CH]                    ; 0CD0 _ 8B. 55, 0C
        mov     eax, dword [ebp+14H]                    ; 0CD3 _ 8B. 45, 14
        add     eax, edx                                ; 0CD6 _ 01. D0
        mov     dword [ebp-14H], eax                    ; 0CD8 _ 89. 45, EC
        mov     edx, dword [ebp+10H]                    ; 0CDB _ 8B. 55, 10
        mov     eax, dword [ebp+18H]                    ; 0CDE _ 8B. 45, 18
        add     eax, edx                                ; 0CE1 _ 01. D0
        mov     dword [ebp-10H], eax                    ; 0CE3 _ 89. 45, F0
        mov     eax, dword [ebp+10H]                    ; 0CE6 _ 8B. 45, 10
        lea     edi, [eax-3H]                           ; 0CE9 _ 8D. 78, FD
        mov     eax, dword [ebp-14H]                    ; 0CEC _ 8B. 45, EC
        lea     esi, [eax+1H]                           ; 0CEF _ 8D. 70, 01
        mov     eax, dword [ebp+10H]                    ; 0CF2 _ 8B. 45, 10
        lea     ebx, [eax-3H]                           ; 0CF5 _ 8D. 58, FD
        mov     eax, dword [ebp+0CH]                    ; 0CF8 _ 8B. 45, 0C
        lea     ecx, [eax-2H]                           ; 0CFB _ 8D. 48, FE
        mov     eax, dword [ebp+8H]                     ; 0CFE _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 0D01 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 0D04 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 0D07 _ 8B. 00
        push    edi                                     ; 0D09 _ 57
        push    esi                                     ; 0D0A _ 56
        push    ebx                                     ; 0D0B _ 53
        push    ecx                                     ; 0D0C _ 51
        push    15                                      ; 0D0D _ 6A, 0F
        push    edx                                     ; 0D0F _ 52
        push    eax                                     ; 0D10 _ 50
        call    boxfill8                                ; 0D11 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 0D16 _ 83. C4, 1C
        mov     eax, dword [ebp-10H]                    ; 0D19 _ 8B. 45, F0
        lea     edi, [eax+1H]                           ; 0D1C _ 8D. 78, 01
        mov     eax, dword [ebp+0CH]                    ; 0D1F _ 8B. 45, 0C
        lea     esi, [eax-3H]                           ; 0D22 _ 8D. 70, FD
        mov     eax, dword [ebp+10H]                    ; 0D25 _ 8B. 45, 10
        lea     ebx, [eax-3H]                           ; 0D28 _ 8D. 58, FD
        mov     eax, dword [ebp+0CH]                    ; 0D2B _ 8B. 45, 0C
        lea     ecx, [eax-3H]                           ; 0D2E _ 8D. 48, FD
        mov     eax, dword [ebp+8H]                     ; 0D31 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 0D34 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 0D37 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 0D3A _ 8B. 00
        push    edi                                     ; 0D3C _ 57
        push    esi                                     ; 0D3D _ 56
        push    ebx                                     ; 0D3E _ 53
        push    ecx                                     ; 0D3F _ 51
        push    15                                      ; 0D40 _ 6A, 0F
        push    edx                                     ; 0D42 _ 52
        push    eax                                     ; 0D43 _ 50
        call    boxfill8                                ; 0D44 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 0D49 _ 83. C4, 1C
        mov     eax, dword [ebp-10H]                    ; 0D4C _ 8B. 45, F0
        lea     edi, [eax+2H]                           ; 0D4F _ 8D. 78, 02
        mov     eax, dword [ebp-14H]                    ; 0D52 _ 8B. 45, EC
        lea     esi, [eax+1H]                           ; 0D55 _ 8D. 70, 01
        mov     eax, dword [ebp-10H]                    ; 0D58 _ 8B. 45, F0
        lea     ebx, [eax+2H]                           ; 0D5B _ 8D. 58, 02
        mov     eax, dword [ebp+0CH]                    ; 0D5E _ 8B. 45, 0C
        lea     ecx, [eax-3H]                           ; 0D61 _ 8D. 48, FD
        mov     eax, dword [ebp+8H]                     ; 0D64 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 0D67 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 0D6A _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 0D6D _ 8B. 00
        push    edi                                     ; 0D6F _ 57
        push    esi                                     ; 0D70 _ 56
        push    ebx                                     ; 0D71 _ 53
        push    ecx                                     ; 0D72 _ 51
        push    7                                       ; 0D73 _ 6A, 07
        push    edx                                     ; 0D75 _ 52
        push    eax                                     ; 0D76 _ 50
        call    boxfill8                                ; 0D77 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 0D7C _ 83. C4, 1C
        mov     eax, dword [ebp-10H]                    ; 0D7F _ 8B. 45, F0
        lea     edi, [eax+2H]                           ; 0D82 _ 8D. 78, 02
        mov     eax, dword [ebp-14H]                    ; 0D85 _ 8B. 45, EC
        lea     esi, [eax+2H]                           ; 0D88 _ 8D. 70, 02
        mov     eax, dword [ebp+10H]                    ; 0D8B _ 8B. 45, 10
        lea     ebx, [eax-3H]                           ; 0D8E _ 8D. 58, FD
        mov     eax, dword [ebp-14H]                    ; 0D91 _ 8B. 45, EC
        lea     ecx, [eax+2H]                           ; 0D94 _ 8D. 48, 02
        mov     eax, dword [ebp+8H]                     ; 0D97 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 0D9A _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 0D9D _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 0DA0 _ 8B. 00
        push    edi                                     ; 0DA2 _ 57
        push    esi                                     ; 0DA3 _ 56
        push    ebx                                     ; 0DA4 _ 53
        push    ecx                                     ; 0DA5 _ 51
        push    7                                       ; 0DA6 _ 6A, 07
        push    edx                                     ; 0DA8 _ 52
        push    eax                                     ; 0DA9 _ 50
        call    boxfill8                                ; 0DAA _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 0DAF _ 83. C4, 1C
        mov     eax, dword [ebp+10H]                    ; 0DB2 _ 8B. 45, 10
        lea     esi, [eax-2H]                           ; 0DB5 _ 8D. 70, FE
        mov     eax, dword [ebp+10H]                    ; 0DB8 _ 8B. 45, 10
        lea     ebx, [eax-2H]                           ; 0DBB _ 8D. 58, FE
        mov     eax, dword [ebp+0CH]                    ; 0DBE _ 8B. 45, 0C
        lea     ecx, [eax-1H]                           ; 0DC1 _ 8D. 48, FF
        mov     eax, dword [ebp+8H]                     ; 0DC4 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 0DC7 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 0DCA _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 0DCD _ 8B. 00
        push    esi                                     ; 0DCF _ 56
        push    dword [ebp-14H]                         ; 0DD0 _ FF. 75, EC
        push    ebx                                     ; 0DD3 _ 53
        push    ecx                                     ; 0DD4 _ 51
        push    0                                       ; 0DD5 _ 6A, 00
        push    edx                                     ; 0DD7 _ 52
        push    eax                                     ; 0DD8 _ 50
        call    boxfill8                                ; 0DD9 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 0DDE _ 83. C4, 1C
        mov     eax, dword [ebp+0CH]                    ; 0DE1 _ 8B. 45, 0C
        lea     esi, [eax-2H]                           ; 0DE4 _ 8D. 70, FE
        mov     eax, dword [ebp+10H]                    ; 0DE7 _ 8B. 45, 10
        lea     ebx, [eax-2H]                           ; 0DEA _ 8D. 58, FE
        mov     eax, dword [ebp+0CH]                    ; 0DED _ 8B. 45, 0C
        lea     ecx, [eax-2H]                           ; 0DF0 _ 8D. 48, FE
        mov     eax, dword [ebp+8H]                     ; 0DF3 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 0DF6 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 0DF9 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 0DFC _ 8B. 00
        push    dword [ebp-10H]                         ; 0DFE _ FF. 75, F0
        push    esi                                     ; 0E01 _ 56
        push    ebx                                     ; 0E02 _ 53
        push    ecx                                     ; 0E03 _ 51
        push    0                                       ; 0E04 _ 6A, 00
        push    edx                                     ; 0E06 _ 52
        push    eax                                     ; 0E07 _ 50
        call    boxfill8                                ; 0E08 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 0E0D _ 83. C4, 1C
        mov     eax, dword [ebp-10H]                    ; 0E10 _ 8B. 45, F0
        lea     esi, [eax+1H]                           ; 0E13 _ 8D. 70, 01
        mov     eax, dword [ebp-10H]                    ; 0E16 _ 8B. 45, F0
        lea     ebx, [eax+1H]                           ; 0E19 _ 8D. 58, 01
        mov     eax, dword [ebp+0CH]                    ; 0E1C _ 8B. 45, 0C
        lea     ecx, [eax-2H]                           ; 0E1F _ 8D. 48, FE
        mov     eax, dword [ebp+8H]                     ; 0E22 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 0E25 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 0E28 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 0E2B _ 8B. 00
        push    esi                                     ; 0E2D _ 56
        push    dword [ebp-14H]                         ; 0E2E _ FF. 75, EC
        push    ebx                                     ; 0E31 _ 53
        push    ecx                                     ; 0E32 _ 51
        push    8                                       ; 0E33 _ 6A, 08
        push    edx                                     ; 0E35 _ 52
        push    eax                                     ; 0E36 _ 50
        call    boxfill8                                ; 0E37 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 0E3C _ 83. C4, 1C
        mov     eax, dword [ebp-10H]                    ; 0E3F _ 8B. 45, F0
        lea     edi, [eax+1H]                           ; 0E42 _ 8D. 78, 01
        mov     eax, dword [ebp-14H]                    ; 0E45 _ 8B. 45, EC
        lea     esi, [eax+1H]                           ; 0E48 _ 8D. 70, 01
        mov     eax, dword [ebp+10H]                    ; 0E4B _ 8B. 45, 10
        lea     ebx, [eax-2H]                           ; 0E4E _ 8D. 58, FE
        mov     eax, dword [ebp-14H]                    ; 0E51 _ 8B. 45, EC
        lea     ecx, [eax+1H]                           ; 0E54 _ 8D. 48, 01
        mov     eax, dword [ebp+8H]                     ; 0E57 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 0E5A _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 0E5D _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 0E60 _ 8B. 00
        push    edi                                     ; 0E62 _ 57
        push    esi                                     ; 0E63 _ 56
        push    ebx                                     ; 0E64 _ 53
        push    ecx                                     ; 0E65 _ 51
        push    8                                       ; 0E66 _ 6A, 08
        push    edx                                     ; 0E68 _ 52
        push    eax                                     ; 0E69 _ 50
        call    boxfill8                                ; 0E6A _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 0E6F _ 83. C4, 1C
        mov     eax, dword [ebp+10H]                    ; 0E72 _ 8B. 45, 10
        lea     esi, [eax-1H]                           ; 0E75 _ 8D. 70, FF
        mov     eax, dword [ebp+0CH]                    ; 0E78 _ 8B. 45, 0C
        lea     ebx, [eax-1H]                           ; 0E7B _ 8D. 58, FF
        mov     eax, dword [ebp+1CH]                    ; 0E7E _ 8B. 45, 1C
        movzx   ecx, al                                 ; 0E81 _ 0F B6. C8
        mov     eax, dword [ebp+8H]                     ; 0E84 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 0E87 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 0E8A _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 0E8D _ 8B. 00
        push    dword [ebp-10H]                         ; 0E8F _ FF. 75, F0
        push    dword [ebp-14H]                         ; 0E92 _ FF. 75, EC
        push    esi                                     ; 0E95 _ 56
        push    ebx                                     ; 0E96 _ 53
        push    ecx                                     ; 0E97 _ 51
        push    edx                                     ; 0E98 _ 52
        push    eax                                     ; 0E99 _ 50
        call    boxfill8                                ; 0E9A _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 0E9F _ 83. C4, 1C
        nop                                             ; 0EA2 _ 90
        lea     esp, [ebp-0CH]                          ; 0EA3 _ 8D. 65, F4
        pop     ebx                                     ; 0EA6 _ 5B
        pop     esi                                     ; 0EA7 _ 5E
        pop     edi                                     ; 0EA8 _ 5F
        pop     ebp                                     ; 0EA9 _ 5D
        ret                                             ; 0EAA _ C3
; make_textbox8 End of function

showFont8:; Function begin
        push    ebp                                     ; 0EAB _ 55
        mov     ebp, esp                                ; 0EAC _ 89. E5
        sub     esp, 20                                 ; 0EAE _ 83. EC, 14
        mov     eax, dword [ebp+18H]                    ; 0EB1 _ 8B. 45, 18
        mov     byte [ebp-14H], al                      ; 0EB4 _ 88. 45, EC
        mov     dword [ebp-4H], 0                       ; 0EB7 _ C7. 45, FC, 00000000
        jmp     ?_027                                   ; 0EBE _ E9, 0000016C

?_018:  mov     edx, dword [ebp-4H]                     ; 0EC3 _ 8B. 55, FC
        mov     eax, dword [ebp+1CH]                    ; 0EC6 _ 8B. 45, 1C
        add     eax, edx                                ; 0EC9 _ 01. D0
        movzx   eax, byte [eax]                         ; 0ECB _ 0F B6. 00
        mov     byte [ebp-5H], al                       ; 0ECE _ 88. 45, FB
        cmp     byte [ebp-5H], 0                        ; 0ED1 _ 80. 7D, FB, 00
        jns     ?_019                                   ; 0ED5 _ 79, 20
        mov     edx, dword [ebp+14H]                    ; 0ED7 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 0EDA _ 8B. 45, FC
        add     eax, edx                                ; 0EDD _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 0EDF _ 0F AF. 45, 0C
        mov     edx, eax                                ; 0EE3 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 0EE5 _ 8B. 45, 10
        add     eax, edx                                ; 0EE8 _ 01. D0
        mov     edx, eax                                ; 0EEA _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 0EEC _ 8B. 45, 08
        add     edx, eax                                ; 0EEF _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0EF1 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0EF5 _ 88. 02
?_019:  movsx   eax, byte [ebp-5H]                      ; 0EF7 _ 0F BE. 45, FB
        and     eax, 40H                                ; 0EFB _ 83. E0, 40
        test    eax, eax                                ; 0EFE _ 85. C0
        jz      ?_020                                   ; 0F00 _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 0F02 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 0F05 _ 8B. 45, FC
        add     eax, edx                                ; 0F08 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 0F0A _ 0F AF. 45, 0C
        mov     edx, eax                                ; 0F0E _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 0F10 _ 8B. 45, 10
        add     eax, edx                                ; 0F13 _ 01. D0
        lea     edx, [eax+1H]                           ; 0F15 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 0F18 _ 8B. 45, 08
        add     edx, eax                                ; 0F1B _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0F1D _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0F21 _ 88. 02
?_020:  movsx   eax, byte [ebp-5H]                      ; 0F23 _ 0F BE. 45, FB
        and     eax, 20H                                ; 0F27 _ 83. E0, 20
        test    eax, eax                                ; 0F2A _ 85. C0
        jz      ?_021                                   ; 0F2C _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 0F2E _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 0F31 _ 8B. 45, FC
        add     eax, edx                                ; 0F34 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 0F36 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 0F3A _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 0F3C _ 8B. 45, 10
        add     eax, edx                                ; 0F3F _ 01. D0
        lea     edx, [eax+2H]                           ; 0F41 _ 8D. 50, 02
        mov     eax, dword [ebp+8H]                     ; 0F44 _ 8B. 45, 08
        add     edx, eax                                ; 0F47 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0F49 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0F4D _ 88. 02
?_021:  movsx   eax, byte [ebp-5H]                      ; 0F4F _ 0F BE. 45, FB
        and     eax, 10H                                ; 0F53 _ 83. E0, 10
        test    eax, eax                                ; 0F56 _ 85. C0
        jz      ?_022                                   ; 0F58 _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 0F5A _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 0F5D _ 8B. 45, FC
        add     eax, edx                                ; 0F60 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 0F62 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 0F66 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 0F68 _ 8B. 45, 10
        add     eax, edx                                ; 0F6B _ 01. D0
        lea     edx, [eax+3H]                           ; 0F6D _ 8D. 50, 03
        mov     eax, dword [ebp+8H]                     ; 0F70 _ 8B. 45, 08
        add     edx, eax                                ; 0F73 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0F75 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0F79 _ 88. 02
?_022:  movsx   eax, byte [ebp-5H]                      ; 0F7B _ 0F BE. 45, FB
        and     eax, 08H                                ; 0F7F _ 83. E0, 08
        test    eax, eax                                ; 0F82 _ 85. C0
        jz      ?_023                                   ; 0F84 _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 0F86 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 0F89 _ 8B. 45, FC
        add     eax, edx                                ; 0F8C _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 0F8E _ 0F AF. 45, 0C
        mov     edx, eax                                ; 0F92 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 0F94 _ 8B. 45, 10
        add     eax, edx                                ; 0F97 _ 01. D0
        lea     edx, [eax+4H]                           ; 0F99 _ 8D. 50, 04
        mov     eax, dword [ebp+8H]                     ; 0F9C _ 8B. 45, 08
        add     edx, eax                                ; 0F9F _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0FA1 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0FA5 _ 88. 02
?_023:  movsx   eax, byte [ebp-5H]                      ; 0FA7 _ 0F BE. 45, FB
        and     eax, 04H                                ; 0FAB _ 83. E0, 04
        test    eax, eax                                ; 0FAE _ 85. C0
        jz      ?_024                                   ; 0FB0 _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 0FB2 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 0FB5 _ 8B. 45, FC
        add     eax, edx                                ; 0FB8 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 0FBA _ 0F AF. 45, 0C
        mov     edx, eax                                ; 0FBE _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 0FC0 _ 8B. 45, 10
        add     eax, edx                                ; 0FC3 _ 01. D0
        lea     edx, [eax+5H]                           ; 0FC5 _ 8D. 50, 05
        mov     eax, dword [ebp+8H]                     ; 0FC8 _ 8B. 45, 08
        add     edx, eax                                ; 0FCB _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0FCD _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0FD1 _ 88. 02
?_024:  movsx   eax, byte [ebp-5H]                      ; 0FD3 _ 0F BE. 45, FB
        and     eax, 02H                                ; 0FD7 _ 83. E0, 02
        test    eax, eax                                ; 0FDA _ 85. C0
        jz      ?_025                                   ; 0FDC _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 0FDE _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 0FE1 _ 8B. 45, FC
        add     eax, edx                                ; 0FE4 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 0FE6 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 0FEA _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 0FEC _ 8B. 45, 10
        add     eax, edx                                ; 0FEF _ 01. D0
        lea     edx, [eax+6H]                           ; 0FF1 _ 8D. 50, 06
        mov     eax, dword [ebp+8H]                     ; 0FF4 _ 8B. 45, 08
        add     edx, eax                                ; 0FF7 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0FF9 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0FFD _ 88. 02
?_025:  movsx   eax, byte [ebp-5H]                      ; 0FFF _ 0F BE. 45, FB
        and     eax, 01H                                ; 1003 _ 83. E0, 01
        test    eax, eax                                ; 1006 _ 85. C0
        jz      ?_026                                   ; 1008 _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 100A _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 100D _ 8B. 45, FC
        add     eax, edx                                ; 1010 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 1012 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 1016 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 1018 _ 8B. 45, 10
        add     eax, edx                                ; 101B _ 01. D0
        lea     edx, [eax+7H]                           ; 101D _ 8D. 50, 07
        mov     eax, dword [ebp+8H]                     ; 1020 _ 8B. 45, 08
        add     edx, eax                                ; 1023 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 1025 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 1029 _ 88. 02
?_026:  add     dword [ebp-4H], 1                       ; 102B _ 83. 45, FC, 01
?_027:  cmp     dword [ebp-4H], 15                      ; 102F _ 83. 7D, FC, 0F
        jle     ?_018                                   ; 1033 _ 0F 8E, FFFFFE8A
        nop                                             ; 1039 _ 90
        leave                                           ; 103A _ C9
        ret                                             ; 103B _ C3
; showFont8 End of function

init_mouse_cursor:; Function begin
        push    ebp                                     ; 103C _ 55
        mov     ebp, esp                                ; 103D _ 89. E5
        sub     esp, 20                                 ; 103F _ 83. EC, 14
        mov     eax, dword [ebp+0CH]                    ; 1042 _ 8B. 45, 0C
        mov     byte [ebp-14H], al                      ; 1045 _ 88. 45, EC
        mov     dword [ebp-4H], 0                       ; 1048 _ C7. 45, FC, 00000000
        jmp     ?_034                                   ; 104F _ E9, 000000B1

?_028:  mov     dword [ebp-8H], 0                       ; 1054 _ C7. 45, F8, 00000000
        jmp     ?_033                                   ; 105B _ E9, 00000097

?_029:  mov     eax, dword [ebp-4H]                     ; 1060 _ 8B. 45, FC
        shl     eax, 4                                  ; 1063 _ C1. E0, 04
        mov     edx, eax                                ; 1066 _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 1068 _ 8B. 45, F8
        add     eax, edx                                ; 106B _ 01. D0
        add     eax, cursor.1799                        ; 106D _ 05, 000000C0(d)
        movzx   eax, byte [eax]                         ; 1072 _ 0F B6. 00
        cmp     al, 42                                  ; 1075 _ 3C, 2A
        jnz     ?_030                                   ; 1077 _ 75, 17
        mov     eax, dword [ebp-4H]                     ; 1079 _ 8B. 45, FC
        shl     eax, 4                                  ; 107C _ C1. E0, 04
        mov     edx, eax                                ; 107F _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 1081 _ 8B. 45, F8
        add     eax, edx                                ; 1084 _ 01. D0
        mov     edx, eax                                ; 1086 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 1088 _ 8B. 45, 08
        add     eax, edx                                ; 108B _ 01. D0
        mov     byte [eax], 0                           ; 108D _ C6. 00, 00
?_030:  mov     eax, dword [ebp-4H]                     ; 1090 _ 8B. 45, FC
        shl     eax, 4                                  ; 1093 _ C1. E0, 04
        mov     edx, eax                                ; 1096 _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 1098 _ 8B. 45, F8
        add     eax, edx                                ; 109B _ 01. D0
        add     eax, cursor.1799                        ; 109D _ 05, 000000C0(d)
        movzx   eax, byte [eax]                         ; 10A2 _ 0F B6. 00
        cmp     al, 79                                  ; 10A5 _ 3C, 4F
        jnz     ?_031                                   ; 10A7 _ 75, 17
        mov     eax, dword [ebp-4H]                     ; 10A9 _ 8B. 45, FC
        shl     eax, 4                                  ; 10AC _ C1. E0, 04
        mov     edx, eax                                ; 10AF _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 10B1 _ 8B. 45, F8
        add     eax, edx                                ; 10B4 _ 01. D0
        mov     edx, eax                                ; 10B6 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 10B8 _ 8B. 45, 08
        add     eax, edx                                ; 10BB _ 01. D0
        mov     byte [eax], 7                           ; 10BD _ C6. 00, 07
?_031:  mov     eax, dword [ebp-4H]                     ; 10C0 _ 8B. 45, FC
        shl     eax, 4                                  ; 10C3 _ C1. E0, 04
        mov     edx, eax                                ; 10C6 _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 10C8 _ 8B. 45, F8
        add     eax, edx                                ; 10CB _ 01. D0
        add     eax, cursor.1799                        ; 10CD _ 05, 000000C0(d)
        movzx   eax, byte [eax]                         ; 10D2 _ 0F B6. 00
        cmp     al, 46                                  ; 10D5 _ 3C, 2E
        jnz     ?_032                                   ; 10D7 _ 75, 1A
        mov     eax, dword [ebp-4H]                     ; 10D9 _ 8B. 45, FC
        shl     eax, 4                                  ; 10DC _ C1. E0, 04
        mov     edx, eax                                ; 10DF _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 10E1 _ 8B. 45, F8
        add     eax, edx                                ; 10E4 _ 01. D0
        mov     edx, eax                                ; 10E6 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 10E8 _ 8B. 45, 08
        add     edx, eax                                ; 10EB _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 10ED _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 10F1 _ 88. 02
?_032:  add     dword [ebp-8H], 1                       ; 10F3 _ 83. 45, F8, 01
?_033:  cmp     dword [ebp-8H], 15                      ; 10F7 _ 83. 7D, F8, 0F
        jle     ?_029                                   ; 10FB _ 0F 8E, FFFFFF5F
        add     dword [ebp-4H], 1                       ; 1101 _ 83. 45, FC, 01
?_034:  cmp     dword [ebp-4H], 15                      ; 1105 _ 83. 7D, FC, 0F
        jle     ?_028                                   ; 1109 _ 0F 8E, FFFFFF45
        nop                                             ; 110F _ 90
        leave                                           ; 1110 _ C9
        ret                                             ; 1111 _ C3
; init_mouse_cursor End of function

putblock:; Function begin
        push    ebp                                     ; 1112 _ 55
        mov     ebp, esp                                ; 1113 _ 89. E5
        push    ebx                                     ; 1115 _ 53
        sub     esp, 16                                 ; 1116 _ 83. EC, 10
        mov     dword [ebp-8H], 0                       ; 1119 _ C7. 45, F8, 00000000
        jmp     ?_038                                   ; 1120 _ EB, 50

?_035:  mov     dword [ebp-0CH], 0                      ; 1122 _ C7. 45, F4, 00000000
        jmp     ?_037                                   ; 1129 _ EB, 3B

?_036:  mov     eax, dword [ebp-8H]                     ; 112B _ 8B. 45, F8
        imul    eax, dword [ebp+24H]                    ; 112E _ 0F AF. 45, 24
        mov     edx, eax                                ; 1132 _ 89. C2
        mov     eax, dword [ebp-0CH]                    ; 1134 _ 8B. 45, F4
        add     eax, edx                                ; 1137 _ 01. D0
        mov     edx, eax                                ; 1139 _ 89. C2
        mov     eax, dword [ebp+20H]                    ; 113B _ 8B. 45, 20
        add     eax, edx                                ; 113E _ 01. D0
        mov     ecx, dword [ebp+1CH]                    ; 1140 _ 8B. 4D, 1C
        mov     edx, dword [ebp-8H]                     ; 1143 _ 8B. 55, F8
        add     edx, ecx                                ; 1146 _ 01. CA
        imul    edx, dword [ebp+0CH]                    ; 1148 _ 0F AF. 55, 0C
        mov     ebx, dword [ebp+18H]                    ; 114C _ 8B. 5D, 18
        mov     ecx, dword [ebp-0CH]                    ; 114F _ 8B. 4D, F4
        add     ecx, ebx                                ; 1152 _ 01. D9
        add     edx, ecx                                ; 1154 _ 01. CA
        mov     ecx, edx                                ; 1156 _ 89. D1
        mov     edx, dword [ebp+8H]                     ; 1158 _ 8B. 55, 08
        add     edx, ecx                                ; 115B _ 01. CA
        movzx   eax, byte [eax]                         ; 115D _ 0F B6. 00
        mov     byte [edx], al                          ; 1160 _ 88. 02
        add     dword [ebp-0CH], 1                      ; 1162 _ 83. 45, F4, 01
?_037:  mov     eax, dword [ebp-0CH]                    ; 1166 _ 8B. 45, F4
        cmp     eax, dword [ebp+10H]                    ; 1169 _ 3B. 45, 10
        jl      ?_036                                   ; 116C _ 7C, BD
        add     dword [ebp-8H], 1                       ; 116E _ 83. 45, F8, 01
?_038:  mov     eax, dword [ebp-8H]                     ; 1172 _ 8B. 45, F8
        cmp     eax, dword [ebp+14H]                    ; 1175 _ 3B. 45, 14
        jl      ?_035                                   ; 1178 _ 7C, A8
        nop                                             ; 117A _ 90
        add     esp, 16                                 ; 117B _ 83. C4, 10
        pop     ebx                                     ; 117E _ 5B
        pop     ebp                                     ; 117F _ 5D
        ret                                             ; 1180 _ C3
; putblock End of function

intHandlerFromC:; Function begin
        push    ebp                                     ; 1181 _ 55
        mov     ebp, esp                                ; 1182 _ 89. E5
        sub     esp, 24                                 ; 1184 _ 83. EC, 18
        mov     eax, dword [bootInfo]                   ; 1187 _ A1, 00000000(d)
        mov     dword [ebp-14H], eax                    ; 118C _ 89. 45, EC
        movzx   eax, word [?_173]                       ; 118F _ 0F B7. 05, 00000004(d)
        cwde                                            ; 1196 _ 98
        mov     dword [ebp-10H], eax                    ; 1197 _ 89. 45, F0
        movzx   eax, word [?_174]                       ; 119A _ 0F B7. 05, 00000006(d)
        cwde                                            ; 11A1 _ 98
        mov     dword [ebp-0CH], eax                    ; 11A2 _ 89. 45, F4
        sub     esp, 8                                  ; 11A5 _ 83. EC, 08
        push    32                                      ; 11A8 _ 6A, 20
        push    32                                      ; 11AA _ 6A, 20
        call    io_out8                                 ; 11AC _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 11B1 _ 83. C4, 10
        mov     byte [ebp-15H], 0                       ; 11B4 _ C6. 45, EB, 00
        sub     esp, 12                                 ; 11B8 _ 83. EC, 0C
        push    96                                      ; 11BB _ 6A, 60
        call    io_in8                                  ; 11BD _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 11C2 _ 83. C4, 10
        mov     byte [ebp-15H], al                      ; 11C5 _ 88. 45, EB
        movzx   eax, byte [ebp-15H]                     ; 11C8 _ 0F B6. 45, EB
        sub     esp, 8                                  ; 11CC _ 83. EC, 08
        push    eax                                     ; 11CF _ 50
        push    keyInfo                                 ; 11D0 _ 68, 00000008(d)
        call    fifo8_put                               ; 11D5 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 11DA _ 83. C4, 10
        nop                                             ; 11DD _ 90
        leave                                           ; 11DE _ C9
        ret                                             ; 11DF _ C3
; intHandlerFromC End of function

charToHex:; Function begin
        push    ebp                                     ; 11E0 _ 55
        mov     ebp, esp                                ; 11E1 _ 89. E5
        sub     esp, 40                                 ; 11E3 _ 83. EC, 28
        mov     eax, dword [ebp+8H]                     ; 11E6 _ 8B. 45, 08
        mov     byte [ebp-1CH], al                      ; 11E9 _ 88. 45, E4
        movzx   eax, byte [ebp-1CH]                     ; 11EC _ 0F B6. 45, E4
        and     eax, 0FH                                ; 11F0 _ 83. E0, 0F
        mov     byte [ebp-9H], al                       ; 11F3 _ 88. 45, F7
        movsx   eax, byte [ebp-9H]                      ; 11F6 _ 0F BE. 45, F7
        sub     esp, 12                                 ; 11FA _ 83. EC, 0C
        push    eax                                     ; 11FD _ 50
        call    charToVal                               ; 11FE _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1203 _ 83. C4, 10
        mov     byte [?_172], al                        ; 1206 _ A2, 00000003(d)
        movzx   eax, byte [ebp-1CH]                     ; 120B _ 0F B6. 45, E4
        shr     al, 4                                   ; 120F _ C0. E8, 04
        mov     byte [ebp-1CH], al                      ; 1212 _ 88. 45, E4
        movzx   eax, byte [ebp-1CH]                     ; 1215 _ 0F B6. 45, E4
        movsx   eax, al                                 ; 1219 _ 0F BE. C0
        sub     esp, 12                                 ; 121C _ 83. EC, 0C
        push    eax                                     ; 121F _ 50
        call    charToVal                               ; 1220 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1225 _ 83. C4, 10
        mov     byte [?_171], al                        ; 1228 _ A2, 00000002(d)
        mov     eax, keyVal                             ; 122D _ B8, 00000000(d)
        leave                                           ; 1232 _ C9
        ret                                             ; 1233 _ C3
; charToHex End of function

charToVal:; Function begin
        push    ebp                                     ; 1234 _ 55
        mov     ebp, esp                                ; 1235 _ 89. E5
        sub     esp, 4                                  ; 1237 _ 83. EC, 04
        mov     eax, dword [ebp+8H]                     ; 123A _ 8B. 45, 08
        mov     byte [ebp-4H], al                       ; 123D _ 88. 45, FC
        cmp     byte [ebp-4H], 9                        ; 1240 _ 80. 7D, FC, 09
        jle     ?_039                                   ; 1244 _ 7E, 09
        movzx   eax, byte [ebp-4H]                      ; 1246 _ 0F B6. 45, FC
        add     eax, 55                                 ; 124A _ 83. C0, 37
        jmp     ?_040                                   ; 124D _ EB, 07

?_039:  movzx   eax, byte [ebp-4H]                      ; 124F _ 0F B6. 45, FC
        add     eax, 48                                 ; 1253 _ 83. C0, 30
?_040:  leave                                           ; 1256 _ C9
        ret                                             ; 1257 _ C3
; charToVal End of function

intToHexStr:; Function begin
        push    ebp                                     ; 1258 _ 55
        mov     ebp, esp                                ; 1259 _ 89. E5
        sub     esp, 16                                 ; 125B _ 83. EC, 10
        mov     byte [str.1842], 48                     ; 125E _ C6. 05, 0000026C(d), 30
        mov     byte [?_176], 120                       ; 1265 _ C6. 05, 0000026D(d), 78
        mov     byte [?_177], 0                         ; 126C _ C6. 05, 00000276(d), 00
        mov     dword [ebp-0CH], 2                      ; 1273 _ C7. 45, F4, 00000002
        jmp     ?_042                                   ; 127A _ EB, 0F

?_041:  mov     eax, dword [ebp-0CH]                    ; 127C _ 8B. 45, F4
        add     eax, str.1842                           ; 127F _ 05, 0000026C(d)
        mov     byte [eax], 48                          ; 1284 _ C6. 00, 30
        add     dword [ebp-0CH], 1                      ; 1287 _ 83. 45, F4, 01
?_042:  cmp     dword [ebp-0CH], 9                      ; 128B _ 83. 7D, F4, 09
        jle     ?_041                                   ; 128F _ 7E, EB
        mov     dword [ebp-8H], 9                       ; 1291 _ C7. 45, F8, 00000009
        jmp     ?_045                                   ; 1298 _ EB, 48

?_043:  mov     eax, dword [ebp+8H]                     ; 129A _ 8B. 45, 08
        and     eax, 0FH                                ; 129D _ 83. E0, 0F
        mov     dword [ebp-4H], eax                     ; 12A0 _ 89. 45, FC
        mov     eax, dword [ebp+8H]                     ; 12A3 _ 8B. 45, 08
        shr     eax, 4                                  ; 12A6 _ C1. E8, 04
        mov     dword [ebp+8H], eax                     ; 12A9 _ 89. 45, 08
        cmp     dword [ebp-4H], 9                       ; 12AC _ 83. 7D, FC, 09
        jle     ?_044                                   ; 12B0 _ 7E, 19
        mov     eax, dword [ebp-4H]                     ; 12B2 _ 8B. 45, FC
        lea     ecx, [eax+37H]                          ; 12B5 _ 8D. 48, 37
        mov     eax, dword [ebp-8H]                     ; 12B8 _ 8B. 45, F8
        lea     edx, [eax-1H]                           ; 12BB _ 8D. 50, FF
        mov     dword [ebp-8H], edx                     ; 12BE _ 89. 55, F8
        mov     edx, ecx                                ; 12C1 _ 89. CA
        mov     byte [str.1842+eax], dl                 ; 12C3 _ 88. 90, 0000026C(d)
        jmp     ?_045                                   ; 12C9 _ EB, 17

?_044:  mov     eax, dword [ebp-4H]                     ; 12CB _ 8B. 45, FC
        lea     ecx, [eax+30H]                          ; 12CE _ 8D. 48, 30
        mov     eax, dword [ebp-8H]                     ; 12D1 _ 8B. 45, F8
        lea     edx, [eax-1H]                           ; 12D4 _ 8D. 50, FF
        mov     dword [ebp-8H], edx                     ; 12D7 _ 89. 55, F8
        mov     edx, ecx                                ; 12DA _ 89. CA
        mov     byte [str.1842+eax], dl                 ; 12DC _ 88. 90, 0000026C(d)
?_045:  cmp     dword [ebp-8H], 1                       ; 12E2 _ 83. 7D, F8, 01
        jle     ?_046                                   ; 12E6 _ 7E, 06
        cmp     dword [ebp+8H], 0                       ; 12E8 _ 83. 7D, 08, 00
        jnz     ?_043                                   ; 12EC _ 75, AC
?_046:  mov     eax, str.1842                           ; 12EE _ B8, 0000026C(d)
        leave                                           ; 12F3 _ C9
        ret                                             ; 12F4 _ C3
; intToHexStr End of function

wait_KBC_sendReady:; Function begin
        push    ebp                                     ; 12F5 _ 55
        mov     ebp, esp                                ; 12F6 _ 89. E5
        sub     esp, 8                                  ; 12F8 _ 83. EC, 08
?_047:  sub     esp, 12                                 ; 12FB _ 83. EC, 0C
        push    100                                     ; 12FE _ 6A, 64
        call    io_in8                                  ; 1300 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1305 _ 83. C4, 10
        movsx   eax, al                                 ; 1308 _ 0F BE. C0
        and     eax, 02H                                ; 130B _ 83. E0, 02
        test    eax, eax                                ; 130E _ 85. C0
        jz      ?_048                                   ; 1310 _ 74, 02
        jmp     ?_047                                   ; 1312 _ EB, E7

?_048:  nop                                             ; 1314 _ 90
        nop                                             ; 1315 _ 90
        leave                                           ; 1316 _ C9
        ret                                             ; 1317 _ C3
; wait_KBC_sendReady End of function

init_keyboard:; Function begin
        push    ebp                                     ; 1318 _ 55
        mov     ebp, esp                                ; 1319 _ 89. E5
        sub     esp, 8                                  ; 131B _ 83. EC, 08
        call    wait_KBC_sendReady                      ; 131E _ E8, FFFFFFFC(rel)
        sub     esp, 8                                  ; 1323 _ 83. EC, 08
        push    96                                      ; 1326 _ 6A, 60
        push    100                                     ; 1328 _ 6A, 64
        call    io_out8                                 ; 132A _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 132F _ 83. C4, 10
        call    wait_KBC_sendReady                      ; 1332 _ E8, FFFFFFFC(rel)
        sub     esp, 8                                  ; 1337 _ 83. EC, 08
        push    71                                      ; 133A _ 6A, 47
        push    96                                      ; 133C _ 6A, 60
        call    io_out8                                 ; 133E _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1343 _ 83. C4, 10
        nop                                             ; 1346 _ 90
        leave                                           ; 1347 _ C9
        ret                                             ; 1348 _ C3
; init_keyboard End of function

enable_mouse:; Function begin
        push    ebp                                     ; 1349 _ 55
        mov     ebp, esp                                ; 134A _ 89. E5
        sub     esp, 8                                  ; 134C _ 83. EC, 08
        call    wait_KBC_sendReady                      ; 134F _ E8, FFFFFFFC(rel)
        sub     esp, 8                                  ; 1354 _ 83. EC, 08
        push    212                                     ; 1357 _ 68, 000000D4
        push    100                                     ; 135C _ 6A, 64
        call    io_out8                                 ; 135E _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1363 _ 83. C4, 10
        call    wait_KBC_sendReady                      ; 1366 _ E8, FFFFFFFC(rel)
        sub     esp, 8                                  ; 136B _ 83. EC, 08
        push    244                                     ; 136E _ 68, 000000F4
        push    96                                      ; 1373 _ 6A, 60
        call    io_out8                                 ; 1375 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 137A _ 83. C4, 10
        mov     eax, dword [ebp+8H]                     ; 137D _ 8B. 45, 08
        mov     byte [eax+3H], 0                        ; 1380 _ C6. 40, 03, 00
        nop                                             ; 1384 _ 90
        leave                                           ; 1385 _ C9
        ret                                             ; 1386 _ C3
; enable_mouse End of function

intHandlerForMouse:; Function begin
        push    ebp                                     ; 1387 _ 55
        mov     ebp, esp                                ; 1388 _ 89. E5
        sub     esp, 24                                 ; 138A _ 83. EC, 18
        mov     byte [ebp-9H], 0                        ; 138D _ C6. 45, F7, 00
        sub     esp, 8                                  ; 1391 _ 83. EC, 08
        push    32                                      ; 1394 _ 6A, 20
        push    160                                     ; 1396 _ 68, 000000A0
        call    io_out8                                 ; 139B _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 13A0 _ 83. C4, 10
        sub     esp, 8                                  ; 13A3 _ 83. EC, 08
        push    32                                      ; 13A6 _ 6A, 20
        push    32                                      ; 13A8 _ 6A, 20
        call    io_out8                                 ; 13AA _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 13AF _ 83. C4, 10
        sub     esp, 12                                 ; 13B2 _ 83. EC, 0C
        push    96                                      ; 13B5 _ 6A, 60
        call    io_in8                                  ; 13B7 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 13BC _ 83. C4, 10
        mov     byte [ebp-9H], al                       ; 13BF _ 88. 45, F7
        movzx   eax, byte [ebp-9H]                      ; 13C2 _ 0F B6. 45, F7
        sub     esp, 8                                  ; 13C6 _ 83. EC, 08
        push    eax                                     ; 13C9 _ 50
        push    mouseInfo                               ; 13CA _ 68, 00000020(d)
        call    fifo8_put                               ; 13CF _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 13D4 _ 83. C4, 10
        nop                                             ; 13D7 _ 90
        leave                                           ; 13D8 _ C9
        ret                                             ; 13D9 _ C3
; intHandlerForMouse End of function

showKeyboardInfo:; Function begin
        push    ebp                                     ; 13DA _ 55
        mov     ebp, esp                                ; 13DB _ 89. E5
        sub     esp, 40                                 ; 13DD _ 83. EC, 28
        call    io_sti                                  ; 13E0 _ E8, FFFFFFFC(rel)
        mov     eax, dword [bootInfo]                   ; 13E5 _ A1, 00000000(d)
        mov     dword [ebp-18H], eax                    ; 13EA _ 89. 45, E8
        movzx   eax, word [?_173]                       ; 13ED _ 0F B7. 05, 00000004(d)
        cwde                                            ; 13F4 _ 98
        mov     dword [ebp-14H], eax                    ; 13F5 _ 89. 45, EC
        movzx   eax, word [?_174]                       ; 13F8 _ 0F B7. 05, 00000006(d)
        cwde                                            ; 13FF _ 98
        mov     dword [ebp-10H], eax                    ; 1400 _ 89. 45, F0
        mov     byte [ebp-19H], 0                       ; 1403 _ C6. 45, E7, 00
        sub     esp, 12                                 ; 1407 _ 83. EC, 0C
        push    keyInfo                                 ; 140A _ 68, 00000008(d)
        call    fifo8_get                               ; 140F _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1414 _ 83. C4, 10
        mov     byte [ebp-19H], al                      ; 1417 _ 88. 45, E7
        movzx   eax, byte [ebp-19H]                     ; 141A _ 0F B6. 45, E7
        sub     esp, 12                                 ; 141E _ 83. EC, 0C
        push    eax                                     ; 1421 _ 50
        call    charToHex                               ; 1422 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1427 _ 83. C4, 10
        mov     dword [ebp-0CH], eax                    ; 142A _ 89. 45, F4
        mov     edx, dword [line.1875]                  ; 142D _ 8B. 15, 00000278(d)
        mov     eax, dword [pos.1874]                   ; 1433 _ A1, 0000027C(d)
        sub     esp, 8                                  ; 1438 _ 83. EC, 08
        push    dword [ebp-0CH]                         ; 143B _ FF. 75, F4
        push    7                                       ; 143E _ 6A, 07
        push    edx                                     ; 1440 _ 52
        push    eax                                     ; 1441 _ 50
        push    dword [ebp+0CH]                         ; 1442 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1445 _ FF. 75, 08
        call    showString                              ; 1448 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 144D _ 83. C4, 20
        mov     eax, dword [pos.1874]                   ; 1450 _ A1, 0000027C(d)
        add     eax, 32                                 ; 1455 _ 83. C0, 20
        mov     dword [pos.1874], eax                   ; 1458 _ A3, 0000027C(d)
        mov     eax, dword [pos.1874]                   ; 145D _ A1, 0000027C(d)
        cmp     dword [ebp-14H], eax                    ; 1462 _ 39. 45, EC
        jnz     ?_051                                   ; 1465 _ 75, 28
        mov     eax, dword [line.1875]                  ; 1467 _ A1, 00000278(d)
        cmp     dword [ebp-10H], eax                    ; 146C _ 39. 45, F0
        jz      ?_049                                   ; 146F _ 74, 0A
        mov     eax, dword [line.1875]                  ; 1471 _ A1, 00000278(d)
        add     eax, 16                                 ; 1476 _ 83. C0, 10
        jmp     ?_050                                   ; 1479 _ EB, 05

?_049:  mov     eax, 0                                  ; 147B _ B8, 00000000
?_050:  mov     dword [line.1875], eax                  ; 1480 _ A3, 00000278(d)
        mov     dword [pos.1874], 0                     ; 1485 _ C7. 05, 0000027C(d), 00000000
?_051:  nop                                             ; 148F _ 90
        leave                                           ; 1490 _ C9
        ret                                             ; 1491 _ C3
; showKeyboardInfo End of function

showMouseInfo:; Function begin
        push    ebp                                     ; 1492 _ 55
        mov     ebp, esp                                ; 1493 _ 89. E5
        sub     esp, 24                                 ; 1495 _ 83. EC, 18
        call    io_sti                                  ; 1498 _ E8, FFFFFFFC(rel)
        mov     byte [ebp-9H], 0                        ; 149D _ C6. 45, F7, 00
        sub     esp, 12                                 ; 14A1 _ 83. EC, 0C
        push    mouseInfo                               ; 14A4 _ 68, 00000020(d)
        call    fifo8_get                               ; 14A9 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 14AE _ 83. C4, 10
        mov     byte [ebp-9H], al                       ; 14B1 _ 88. 45, F7
        movzx   eax, byte [ebp-9H]                      ; 14B4 _ 0F B6. 45, F7
        sub     esp, 8                                  ; 14B8 _ 83. EC, 08
        push    eax                                     ; 14BB _ 50
        push    mouse_move                              ; 14BC _ 68, 000000E0(d)
        call    mouse_decode                            ; 14C1 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 14C6 _ 83. C4, 10
        test    eax, eax                                ; 14C9 _ 85. C0
        jz      ?_052                                   ; 14CB _ 74, 60
        sub     esp, 4                                  ; 14CD _ 83. EC, 04
        push    mouse_move                              ; 14D0 _ 68, 000000E0(d)
        push    dword [ebp+0CH]                         ; 14D5 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 14D8 _ FF. 75, 08
        call    computeMousePos                         ; 14DB _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 14E0 _ 83. C4, 10
        mov     edx, dword [my]                         ; 14E3 _ 8B. 15, 000000F4(d)
        mov     eax, dword [mx]                         ; 14E9 _ A1, 000000F0(d)
        push    edx                                     ; 14EE _ 52
        push    eax                                     ; 14EF _ 50
        push    dword [ebp+10H]                         ; 14F0 _ FF. 75, 10
        push    dword [ebp+8H]                          ; 14F3 _ FF. 75, 08
        call    sheet_slide                             ; 14F6 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 14FB _ 83. C4, 10
        mov     eax, dword [?_175]                      ; 14FE _ A1, 000000EC(d)
        and     eax, 01H                                ; 1503 _ 83. E0, 01
        test    eax, eax                                ; 1506 _ 85. C0
        jz      ?_052                                   ; 1508 _ 74, 23
        mov     eax, dword [my]                         ; 150A _ A1, 000000F4(d)
        lea     ecx, [eax-8H]                           ; 150F _ 8D. 48, F8
        mov     eax, dword [mx]                         ; 1512 _ A1, 000000F0(d)
        lea     edx, [eax-50H]                          ; 1517 _ 8D. 50, B0
        mov     eax, dword [sheet_win]                  ; 151A _ A1, 00000220(d)
        push    ecx                                     ; 151F _ 51
        push    edx                                     ; 1520 _ 52
        push    eax                                     ; 1521 _ 50
        push    dword [ebp+8H]                          ; 1522 _ FF. 75, 08
        call    sheet_slide                             ; 1525 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 152A _ 83. C4, 10
?_052:  nop                                             ; 152D _ 90
        leave                                           ; 152E _ C9
        ret                                             ; 152F _ C3
; showMouseInfo End of function

mouse_decode:; Function begin
        push    ebp                                     ; 1530 _ 55
        mov     ebp, esp                                ; 1531 _ 89. E5
        sub     esp, 4                                  ; 1533 _ 83. EC, 04
        mov     eax, dword [ebp+0CH]                    ; 1536 _ 8B. 45, 0C
        mov     byte [ebp-4H], al                       ; 1539 _ 88. 45, FC
        mov     eax, dword [ebp+8H]                     ; 153C _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 153F _ 0F B6. 40, 03
        test    al, al                                  ; 1543 _ 84. C0
        jnz     ?_054                                   ; 1545 _ 75, 17
        cmp     byte [ebp-4H], -6                       ; 1547 _ 80. 7D, FC, FA
        jnz     ?_053                                   ; 154B _ 75, 07
        mov     eax, dword [ebp+8H]                     ; 154D _ 8B. 45, 08
        mov     byte [eax+3H], 1                        ; 1550 _ C6. 40, 03, 01
?_053:  mov     eax, 0                                  ; 1554 _ B8, 00000000
        jmp     ?_061                                   ; 1559 _ E9, 0000010C

?_054:  mov     eax, dword [ebp+8H]                     ; 155E _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 1561 _ 0F B6. 40, 03
        cmp     al, 1                                   ; 1565 _ 3C, 01
        jnz     ?_056                                   ; 1567 _ 75, 25
        movzx   eax, byte [ebp-4H]                      ; 1569 _ 0F B6. 45, FC
        or      eax, 37H                                ; 156D _ 83. C8, 37
        cmp     al, 63                                  ; 1570 _ 3C, 3F
        jnz     ?_055                                   ; 1572 _ 75, 10
        mov     eax, dword [ebp+8H]                     ; 1574 _ 8B. 45, 08
        movzx   edx, byte [ebp-4H]                      ; 1577 _ 0F B6. 55, FC
        mov     byte [eax], dl                          ; 157B _ 88. 10
        mov     eax, dword [ebp+8H]                     ; 157D _ 8B. 45, 08
        mov     byte [eax+3H], 2                        ; 1580 _ C6. 40, 03, 02
?_055:  mov     eax, 0                                  ; 1584 _ B8, 00000000
        jmp     ?_061                                   ; 1589 _ E9, 000000DC

?_056:  mov     eax, dword [ebp+8H]                     ; 158E _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 1591 _ 0F B6. 40, 03
        cmp     al, 2                                   ; 1595 _ 3C, 02
        jnz     ?_057                                   ; 1597 _ 75, 1B
        mov     eax, dword [ebp+8H]                     ; 1599 _ 8B. 45, 08
        movzx   edx, byte [ebp-4H]                      ; 159C _ 0F B6. 55, FC
        mov     byte [eax+1H], dl                       ; 15A0 _ 88. 50, 01
        mov     eax, dword [ebp+8H]                     ; 15A3 _ 8B. 45, 08
        mov     byte [eax+3H], 3                        ; 15A6 _ C6. 40, 03, 03
        mov     eax, 0                                  ; 15AA _ B8, 00000000
        jmp     ?_061                                   ; 15AF _ E9, 000000B6

?_057:  mov     eax, dword [ebp+8H]                     ; 15B4 _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 15B7 _ 0F B6. 40, 03
        cmp     al, 3                                   ; 15BB _ 3C, 03
        jne     ?_060                                   ; 15BD _ 0F 85, 000000A2
        mov     eax, dword [ebp+8H]                     ; 15C3 _ 8B. 45, 08
        movzx   edx, byte [ebp-4H]                      ; 15C6 _ 0F B6. 55, FC
        mov     byte [eax+2H], dl                       ; 15CA _ 88. 50, 02
        mov     eax, dword [ebp+8H]                     ; 15CD _ 8B. 45, 08
        mov     byte [eax+3H], 1                        ; 15D0 _ C6. 40, 03, 01
        mov     eax, dword [ebp+8H]                     ; 15D4 _ 8B. 45, 08
        movzx   eax, byte [eax]                         ; 15D7 _ 0F B6. 00
        movzx   eax, al                                 ; 15DA _ 0F B6. C0
        and     eax, 07H                                ; 15DD _ 83. E0, 07
        mov     edx, eax                                ; 15E0 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 15E2 _ 8B. 45, 08
        mov     dword [eax+0CH], edx                    ; 15E5 _ 89. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 15E8 _ 8B. 45, 08
        movzx   eax, byte [eax+1H]                      ; 15EB _ 0F B6. 40, 01
        movzx   edx, al                                 ; 15EF _ 0F B6. D0
        mov     eax, dword [ebp+8H]                     ; 15F2 _ 8B. 45, 08
        mov     dword [eax+4H], edx                     ; 15F5 _ 89. 50, 04
        mov     eax, dword [ebp+8H]                     ; 15F8 _ 8B. 45, 08
        movzx   eax, byte [eax+2H]                      ; 15FB _ 0F B6. 40, 02
        movzx   edx, al                                 ; 15FF _ 0F B6. D0
        mov     eax, dword [ebp+8H]                     ; 1602 _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 1605 _ 89. 50, 08
        mov     eax, dword [ebp+8H]                     ; 1608 _ 8B. 45, 08
        movzx   eax, byte [eax]                         ; 160B _ 0F B6. 00
        movzx   eax, al                                 ; 160E _ 0F B6. C0
        and     eax, 10H                                ; 1611 _ 83. E0, 10
        test    eax, eax                                ; 1614 _ 85. C0
        jz      ?_058                                   ; 1616 _ 74, 13
        mov     eax, dword [ebp+8H]                     ; 1618 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 161B _ 8B. 40, 04
        or      eax, 0FFFFFF00H                         ; 161E _ 0D, FFFFFF00
        mov     edx, eax                                ; 1623 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 1625 _ 8B. 45, 08
        mov     dword [eax+4H], edx                     ; 1628 _ 89. 50, 04
?_058:  mov     eax, dword [ebp+8H]                     ; 162B _ 8B. 45, 08
        movzx   eax, byte [eax]                         ; 162E _ 0F B6. 00
        movzx   eax, al                                 ; 1631 _ 0F B6. C0
        and     eax, 20H                                ; 1634 _ 83. E0, 20
        test    eax, eax                                ; 1637 _ 85. C0
        jz      ?_059                                   ; 1639 _ 74, 13
        mov     eax, dword [ebp+8H]                     ; 163B _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 163E _ 8B. 40, 08
        or      eax, 0FFFFFF00H                         ; 1641 _ 0D, FFFFFF00
        mov     edx, eax                                ; 1646 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 1648 _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 164B _ 89. 50, 08
?_059:  mov     eax, dword [ebp+8H]                     ; 164E _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 1651 _ 8B. 40, 08
        neg     eax                                     ; 1654 _ F7. D8
        mov     edx, eax                                ; 1656 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 1658 _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 165B _ 89. 50, 08
        mov     eax, 1                                  ; 165E _ B8, 00000001
        jmp     ?_061                                   ; 1663 _ EB, 05

?_060:  mov     eax, 4294967295                         ; 1665 _ B8, FFFFFFFF
?_061:  leave                                           ; 166A _ C9
        ret                                             ; 166B _ C3
; mouse_decode End of function

computeMousePos:; Function begin
        push    ebp                                     ; 166C _ 55
        mov     ebp, esp                                ; 166D _ 89. E5
        sub     esp, 16                                 ; 166F _ 83. EC, 10
        movzx   eax, word [?_173]                       ; 1672 _ 0F B7. 05, 00000004(d)
        cwde                                            ; 1679 _ 98
        mov     dword [ebp-8H], eax                     ; 167A _ 89. 45, F8
        movzx   eax, word [?_174]                       ; 167D _ 0F B7. 05, 00000006(d)
        cwde                                            ; 1684 _ 98
        mov     dword [ebp-4H], eax                     ; 1685 _ 89. 45, FC
        mov     eax, dword [ebp+10H]                    ; 1688 _ 8B. 45, 10
        mov     edx, dword [eax+4H]                     ; 168B _ 8B. 50, 04
        mov     eax, dword [mx]                         ; 168E _ A1, 000000F0(d)
        add     eax, edx                                ; 1693 _ 01. D0
        mov     dword [mx], eax                         ; 1695 _ A3, 000000F0(d)
        mov     eax, dword [ebp+10H]                    ; 169A _ 8B. 45, 10
        mov     edx, dword [eax+8H]                     ; 169D _ 8B. 50, 08
        mov     eax, dword [my]                         ; 16A0 _ A1, 000000F4(d)
        add     eax, edx                                ; 16A5 _ 01. D0
        mov     dword [my], eax                         ; 16A7 _ A3, 000000F4(d)
        mov     eax, dword [mx]                         ; 16AC _ A1, 000000F0(d)
        test    eax, eax                                ; 16B1 _ 85. C0
        jns     ?_062                                   ; 16B3 _ 79, 0A
        mov     dword [mx], 0                           ; 16B5 _ C7. 05, 000000F0(d), 00000000
?_062:  mov     eax, dword [my]                         ; 16BF _ A1, 000000F4(d)
        test    eax, eax                                ; 16C4 _ 85. C0
        jns     ?_063                                   ; 16C6 _ 79, 0A
        mov     dword [my], 0                           ; 16C8 _ C7. 05, 000000F4(d), 00000000
?_063:  mov     eax, dword [ebp-8H]                     ; 16D2 _ 8B. 45, F8
        lea     edx, [eax-9H]                           ; 16D5 _ 8D. 50, F7
        mov     eax, dword [mx]                         ; 16D8 _ A1, 000000F0(d)
        cmp     edx, eax                                ; 16DD _ 39. C2
        jge     ?_064                                   ; 16DF _ 7D, 0B
        mov     eax, dword [ebp-8H]                     ; 16E1 _ 8B. 45, F8
        sub     eax, 9                                  ; 16E4 _ 83. E8, 09
        mov     dword [mx], eax                         ; 16E7 _ A3, 000000F0(d)
?_064:  mov     eax, dword [ebp-4H]                     ; 16EC _ 8B. 45, FC
        lea     edx, [eax-1H]                           ; 16EF _ 8D. 50, FF
        mov     eax, dword [my]                         ; 16F2 _ A1, 000000F4(d)
        cmp     edx, eax                                ; 16F7 _ 39. C2
        jge     ?_065                                   ; 16F9 _ 7D, 0B
        mov     eax, dword [ebp-4H]                     ; 16FB _ 8B. 45, FC
        sub     eax, 1                                  ; 16FE _ 83. E8, 01
        mov     dword [my], eax                         ; 1701 _ A3, 000000F4(d)
?_065:  nop                                             ; 1706 _ 90
        leave                                           ; 1707 _ C9
        ret                                             ; 1708 _ C3
; computeMousePos End of function

showMemInfo:; Function begin
        push    ebp                                     ; 1709 _ 55
        mov     ebp, esp                                ; 170A _ 89. E5
        sub     esp, 56                                 ; 170C _ 83. EC, 38
        mov     dword [ebp-30H], 0                      ; 170F _ C7. 45, D0, 00000000
        mov     dword [ebp-2CH], 0                      ; 1716 _ C7. 45, D4, 00000000
        mov     dword [ebp-28H], 112                    ; 171D _ C7. 45, D8, 00000070
        mov     dword [ebp-24H], 80                     ; 1724 _ C7. 45, DC, 00000050
        push    100                                     ; 172B _ 6A, 64
        push    dword [ebp+1CH]                         ; 172D _ FF. 75, 1C
        push    0                                       ; 1730 _ 6A, 00
        push    0                                       ; 1732 _ 6A, 00
        push    14                                      ; 1734 _ 6A, 0E
        push    dword [ebp+1CH]                         ; 1736 _ FF. 75, 1C
        push    dword [ebp+14H]                         ; 1739 _ FF. 75, 14
        call    boxfill8                                ; 173C _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 1741 _ 83. C4, 1C
        mov     eax, dword [ebp+20H]                    ; 1744 _ 8B. 45, 20
        movsx   eax, al                                 ; 1747 _ 0F BE. C0
        sub     esp, 8                                  ; 174A _ 83. EC, 08
        push    ?_165                                   ; 174D _ 68, 0000002F(d)
        push    eax                                     ; 1752 _ 50
        push    dword [ebp-2CH]                         ; 1753 _ FF. 75, D4
        push    dword [ebp-30H]                         ; 1756 _ FF. 75, D0
        push    dword [ebp+0CH]                         ; 1759 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 175C _ FF. 75, 08
        call    showString                              ; 175F _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1764 _ 83. C4, 20
        mov     eax, dword [ebp+18H]                    ; 1767 _ 8B. 45, 18
        sub     esp, 12                                 ; 176A _ 83. EC, 0C
        push    eax                                     ; 176D _ 50
        call    intToHexStr                             ; 176E _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1773 _ 83. C4, 10
        mov     dword [ebp-20H], eax                    ; 1776 _ 89. 45, E0
        mov     eax, dword [ebp+20H]                    ; 1779 _ 8B. 45, 20
        movsx   eax, al                                 ; 177C _ 0F BE. C0
        sub     esp, 8                                  ; 177F _ 83. EC, 08
        push    dword [ebp-20H]                         ; 1782 _ FF. 75, E0
        push    eax                                     ; 1785 _ 50
        push    dword [ebp-2CH]                         ; 1786 _ FF. 75, D4
        push    dword [ebp-28H]                         ; 1789 _ FF. 75, D8
        push    dword [ebp+0CH]                         ; 178C _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 178F _ FF. 75, 08
        call    showString                              ; 1792 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1797 _ 83. C4, 20
        add     dword [ebp-2CH], 16                     ; 179A _ 83. 45, D4, 10
        mov     eax, dword [ebp+20H]                    ; 179E _ 8B. 45, 20
        movsx   eax, al                                 ; 17A1 _ 0F BE. C0
        sub     esp, 8                                  ; 17A4 _ 83. EC, 08
        push    ?_166                                   ; 17A7 _ 68, 00000039(d)
        push    eax                                     ; 17AC _ 50
        push    dword [ebp-2CH]                         ; 17AD _ FF. 75, D4
        push    dword [ebp-30H]                         ; 17B0 _ FF. 75, D0
        push    dword [ebp+0CH]                         ; 17B3 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 17B6 _ FF. 75, 08
        call    showString                              ; 17B9 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 17BE _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 17C1 _ 8B. 45, 10
        mov     eax, dword [eax]                        ; 17C4 _ 8B. 00
        sub     esp, 12                                 ; 17C6 _ 83. EC, 0C
        push    eax                                     ; 17C9 _ 50
        call    intToHexStr                             ; 17CA _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 17CF _ 83. C4, 10
        mov     dword [ebp-1CH], eax                    ; 17D2 _ 89. 45, E4
        mov     eax, dword [ebp+20H]                    ; 17D5 _ 8B. 45, 20
        movsx   eax, al                                 ; 17D8 _ 0F BE. C0
        sub     esp, 8                                  ; 17DB _ 83. EC, 08
        push    dword [ebp-1CH]                         ; 17DE _ FF. 75, E4
        push    eax                                     ; 17E1 _ 50
        push    dword [ebp-2CH]                         ; 17E2 _ FF. 75, D4
        push    dword [ebp-28H]                         ; 17E5 _ FF. 75, D8
        push    dword [ebp+0CH]                         ; 17E8 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 17EB _ FF. 75, 08
        call    showString                              ; 17EE _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 17F3 _ 83. C4, 20
        add     dword [ebp-2CH], 16                     ; 17F6 _ 83. 45, D4, 10
        mov     eax, dword [ebp+20H]                    ; 17FA _ 8B. 45, 20
        movsx   eax, al                                 ; 17FD _ 0F BE. C0
        sub     esp, 8                                  ; 1800 _ 83. EC, 08
        push    ?_167                                   ; 1803 _ 68, 00000047(d)
        push    eax                                     ; 1808 _ 50
        push    dword [ebp-2CH]                         ; 1809 _ FF. 75, D4
        push    dword [ebp-30H]                         ; 180C _ FF. 75, D0
        push    dword [ebp+0CH]                         ; 180F _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1812 _ FF. 75, 08
        call    showString                              ; 1815 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 181A _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 181D _ 8B. 45, 10
        mov     eax, dword [eax+4H]                     ; 1820 _ 8B. 40, 04
        sub     esp, 12                                 ; 1823 _ 83. EC, 0C
        push    eax                                     ; 1826 _ 50
        call    intToHexStr                             ; 1827 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 182C _ 83. C4, 10
        mov     dword [ebp-18H], eax                    ; 182F _ 89. 45, E8
        mov     eax, dword [ebp+20H]                    ; 1832 _ 8B. 45, 20
        movsx   eax, al                                 ; 1835 _ 0F BE. C0
        sub     esp, 8                                  ; 1838 _ 83. EC, 08
        push    dword [ebp-18H]                         ; 183B _ FF. 75, E8
        push    eax                                     ; 183E _ 50
        push    dword [ebp-2CH]                         ; 183F _ FF. 75, D4
        push    dword [ebp-28H]                         ; 1842 _ FF. 75, D8
        push    dword [ebp+0CH]                         ; 1845 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1848 _ FF. 75, 08
        call    showString                              ; 184B _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1850 _ 83. C4, 20
        add     dword [ebp-2CH], 16                     ; 1853 _ 83. 45, D4, 10
        mov     eax, dword [ebp+20H]                    ; 1857 _ 8B. 45, 20
        movsx   eax, al                                 ; 185A _ 0F BE. C0
        sub     esp, 8                                  ; 185D _ 83. EC, 08
        push    ?_168                                   ; 1860 _ 68, 00000056(d)
        push    eax                                     ; 1865 _ 50
        push    dword [ebp-2CH]                         ; 1866 _ FF. 75, D4
        push    dword [ebp-30H]                         ; 1869 _ FF. 75, D0
        push    dword [ebp+0CH]                         ; 186C _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 186F _ FF. 75, 08
        call    showString                              ; 1872 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1877 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 187A _ 8B. 45, 10
        mov     eax, dword [eax+8H]                     ; 187D _ 8B. 40, 08
        sub     esp, 12                                 ; 1880 _ 83. EC, 0C
        push    eax                                     ; 1883 _ 50
        call    intToHexStr                             ; 1884 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1889 _ 83. C4, 10
        mov     dword [ebp-14H], eax                    ; 188C _ 89. 45, EC
        mov     eax, dword [ebp+20H]                    ; 188F _ 8B. 45, 20
        movsx   eax, al                                 ; 1892 _ 0F BE. C0
        sub     esp, 8                                  ; 1895 _ 83. EC, 08
        push    dword [ebp-14H]                         ; 1898 _ FF. 75, EC
        push    eax                                     ; 189B _ 50
        push    dword [ebp-2CH]                         ; 189C _ FF. 75, D4
        push    dword [ebp-28H]                         ; 189F _ FF. 75, D8
        push    dword [ebp+0CH]                         ; 18A2 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 18A5 _ FF. 75, 08
        call    showString                              ; 18A8 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 18AD _ 83. C4, 20
        add     dword [ebp-2CH], 16                     ; 18B0 _ 83. 45, D4, 10
        mov     eax, dword [ebp+20H]                    ; 18B4 _ 8B. 45, 20
        movsx   eax, al                                 ; 18B7 _ 0F BE. C0
        sub     esp, 8                                  ; 18BA _ 83. EC, 08
        push    ?_169                                   ; 18BD _ 68, 00000062(d)
        push    eax                                     ; 18C2 _ 50
        push    dword [ebp-2CH]                         ; 18C3 _ FF. 75, D4
        push    dword [ebp-30H]                         ; 18C6 _ FF. 75, D0
        push    dword [ebp+0CH]                         ; 18C9 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 18CC _ FF. 75, 08
        call    showString                              ; 18CF _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 18D4 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 18D7 _ 8B. 45, 10
        mov     eax, dword [eax+0CH]                    ; 18DA _ 8B. 40, 0C
        sub     esp, 12                                 ; 18DD _ 83. EC, 0C
        push    eax                                     ; 18E0 _ 50
        call    intToHexStr                             ; 18E1 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 18E6 _ 83. C4, 10
        mov     dword [ebp-10H], eax                    ; 18E9 _ 89. 45, F0
        mov     eax, dword [ebp+20H]                    ; 18EC _ 8B. 45, 20
        movsx   eax, al                                 ; 18EF _ 0F BE. C0
        sub     esp, 8                                  ; 18F2 _ 83. EC, 08
        push    dword [ebp-10H]                         ; 18F5 _ FF. 75, F0
        push    eax                                     ; 18F8 _ 50
        push    dword [ebp-2CH]                         ; 18F9 _ FF. 75, D4
        push    dword [ebp-28H]                         ; 18FC _ FF. 75, D8
        push    dword [ebp+0CH]                         ; 18FF _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1902 _ FF. 75, 08
        call    showString                              ; 1905 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 190A _ 83. C4, 20
        add     dword [ebp-2CH], 16                     ; 190D _ 83. 45, D4, 10
        mov     eax, dword [ebp+20H]                    ; 1911 _ 8B. 45, 20
        movsx   eax, al                                 ; 1914 _ 0F BE. C0
        sub     esp, 8                                  ; 1917 _ 83. EC, 08
        push    ?_170                                   ; 191A _ 68, 0000006F(d)
        push    eax                                     ; 191F _ 50
        push    dword [ebp-2CH]                         ; 1920 _ FF. 75, D4
        push    dword [ebp-30H]                         ; 1923 _ FF. 75, D0
        push    dword [ebp+0CH]                         ; 1926 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1929 _ FF. 75, 08
        call    showString                              ; 192C _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1931 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 1934 _ 8B. 45, 10
        mov     eax, dword [eax+10H]                    ; 1937 _ 8B. 40, 10
        sub     esp, 12                                 ; 193A _ 83. EC, 0C
        push    eax                                     ; 193D _ 50
        call    intToHexStr                             ; 193E _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1943 _ 83. C4, 10
        mov     dword [ebp-0CH], eax                    ; 1946 _ 89. 45, F4
        mov     eax, dword [ebp+20H]                    ; 1949 _ 8B. 45, 20
        movsx   eax, al                                 ; 194C _ 0F BE. C0
        sub     esp, 8                                  ; 194F _ 83. EC, 08
        push    dword [ebp-0CH]                         ; 1952 _ FF. 75, F4
        push    eax                                     ; 1955 _ 50
        push    dword [ebp-2CH]                         ; 1956 _ FF. 75, D4
        push    dword [ebp-28H]                         ; 1959 _ FF. 75, D8
        push    dword [ebp+0CH]                         ; 195C _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 195F _ FF. 75, 08
        call    showString                              ; 1962 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1967 _ 83. C4, 20
        add     dword [ebp-2CH], 16                     ; 196A _ 83. 45, D4, 10
        nop                                             ; 196E _ 90
        leave                                           ; 196F _ C9
        ret                                             ; 1970 _ C3
; showMemInfo End of function

messageBox:; Function begin
        push    ebp                                     ; 1971 _ 55
        mov     ebp, esp                                ; 1972 _ 89. E5
        sub     esp, 24                                 ; 1974 _ 83. EC, 18
        mov     eax, dword [memman]                     ; 1977 _ A1, 00000008(d)
        sub     esp, 8                                  ; 197C _ 83. EC, 08
        push    37500                                   ; 197F _ 68, 0000927C
        push    eax                                     ; 1984 _ 50
        call    memman_alloc_4K                         ; 1985 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 198A _ 83. C4, 10
        mov     dword [ebp-10H], eax                    ; 198D _ 89. 45, F0
        sub     esp, 12                                 ; 1990 _ 83. EC, 0C
        push    dword [ebp+8H]                          ; 1993 _ FF. 75, 08
        call    sheet_alloc                             ; 1996 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 199B _ 83. C4, 10
        mov     dword [ebp-0CH], eax                    ; 199E _ 89. 45, F4
        sub     esp, 12                                 ; 19A1 _ 83. EC, 0C
        push    99                                      ; 19A4 _ 6A, 63
        push    125                                     ; 19A6 _ 6A, 7D
        push    300                                     ; 19A8 _ 68, 0000012C
        push    dword [ebp-10H]                         ; 19AD _ FF. 75, F0
        push    dword [ebp-0CH]                         ; 19B0 _ FF. 75, F4
        call    sheet_setbuf                            ; 19B3 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 19B8 _ 83. C4, 20
        sub     esp, 4                                  ; 19BB _ 83. EC, 04
        push    dword [ebp+0CH]                         ; 19BE _ FF. 75, 0C
        push    dword [ebp-0CH]                         ; 19C1 _ FF. 75, F4
        push    dword [ebp+8H]                          ; 19C4 _ FF. 75, 08
        call    make_window8                            ; 19C7 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 19CC _ 83. C4, 10
        sub     esp, 8                                  ; 19CF _ 83. EC, 08
        push    7                                       ; 19D2 _ 6A, 07
        push    16                                      ; 19D4 _ 6A, 10
        push    150                                     ; 19D6 _ 68, 00000096
        push    42                                      ; 19DB _ 6A, 2A
        push    8                                       ; 19DD _ 6A, 08
        push    dword [ebp-0CH]                         ; 19DF _ FF. 75, F4
        call    make_textbox8                           ; 19E2 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 19E7 _ 83. C4, 20
        push    120                                     ; 19EA _ 6A, 78
        push    200                                     ; 19EC _ 68, 000000C8
        push    dword [ebp-0CH]                         ; 19F1 _ FF. 75, F4
        push    dword [ebp+8H]                          ; 19F4 _ FF. 75, 08
        call    sheet_slide                             ; 19F7 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 19FC _ 83. C4, 10
        sub     esp, 4                                  ; 19FF _ 83. EC, 04
        push    1                                       ; 1A02 _ 6A, 01
        push    dword [ebp-0CH]                         ; 1A04 _ FF. 75, F4
        push    dword [ebp+8H]                          ; 1A07 _ FF. 75, 08
        call    sheet_level_updown                      ; 1A0A _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1A0F _ 83. C4, 10
        mov     eax, dword [ebp-0CH]                    ; 1A12 _ 8B. 45, F4
        leave                                           ; 1A15 _ C9
        ret                                             ; 1A16 _ C3
; messageBox End of function

make_window8:; Function begin
        push    ebp                                     ; 1A17 _ 55
        mov     ebp, esp                                ; 1A18 _ 89. E5
        push    ebx                                     ; 1A1A _ 53
        sub     esp, 36                                 ; 1A1B _ 83. EC, 24
        mov     eax, dword [ebp+0CH]                    ; 1A1E _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 1A21 _ 8B. 40, 04
        mov     dword [ebp-10H], eax                    ; 1A24 _ 89. 45, F0
        mov     eax, dword [ebp+0CH]                    ; 1A27 _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 1A2A _ 8B. 40, 08
        mov     dword [ebp-0CH], eax                    ; 1A2D _ 89. 45, F4
        mov     eax, dword [ebp-10H]                    ; 1A30 _ 8B. 45, F0
        lea     edx, [eax-1H]                           ; 1A33 _ 8D. 50, FF
        mov     eax, dword [ebp+0CH]                    ; 1A36 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 1A39 _ 8B. 00
        push    0                                       ; 1A3B _ 6A, 00
        push    edx                                     ; 1A3D _ 52
        push    0                                       ; 1A3E _ 6A, 00
        push    0                                       ; 1A40 _ 6A, 00
        push    8                                       ; 1A42 _ 6A, 08
        push    dword [ebp-10H]                         ; 1A44 _ FF. 75, F0
        push    eax                                     ; 1A47 _ 50
        call    boxfill8                                ; 1A48 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 1A4D _ 83. C4, 1C
        mov     eax, dword [ebp-10H]                    ; 1A50 _ 8B. 45, F0
        lea     edx, [eax-2H]                           ; 1A53 _ 8D. 50, FE
        mov     eax, dword [ebp+0CH]                    ; 1A56 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 1A59 _ 8B. 00
        push    1                                       ; 1A5B _ 6A, 01
        push    edx                                     ; 1A5D _ 52
        push    1                                       ; 1A5E _ 6A, 01
        push    1                                       ; 1A60 _ 6A, 01
        push    7                                       ; 1A62 _ 6A, 07
        push    dword [ebp-10H]                         ; 1A64 _ FF. 75, F0
        push    eax                                     ; 1A67 _ 50
        call    boxfill8                                ; 1A68 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 1A6D _ 83. C4, 1C
        mov     eax, dword [ebp-0CH]                    ; 1A70 _ 8B. 45, F4
        lea     edx, [eax-1H]                           ; 1A73 _ 8D. 50, FF
        mov     eax, dword [ebp+0CH]                    ; 1A76 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 1A79 _ 8B. 00
        push    edx                                     ; 1A7B _ 52
        push    0                                       ; 1A7C _ 6A, 00
        push    0                                       ; 1A7E _ 6A, 00
        push    0                                       ; 1A80 _ 6A, 00
        push    8                                       ; 1A82 _ 6A, 08
        push    dword [ebp-10H]                         ; 1A84 _ FF. 75, F0
        push    eax                                     ; 1A87 _ 50
        call    boxfill8                                ; 1A88 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 1A8D _ 83. C4, 1C
        mov     eax, dword [ebp-0CH]                    ; 1A90 _ 8B. 45, F4
        lea     edx, [eax-1H]                           ; 1A93 _ 8D. 50, FF
        mov     eax, dword [ebp+0CH]                    ; 1A96 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 1A99 _ 8B. 00
        push    edx                                     ; 1A9B _ 52
        push    1                                       ; 1A9C _ 6A, 01
        push    1                                       ; 1A9E _ 6A, 01
        push    1                                       ; 1AA0 _ 6A, 01
        push    7                                       ; 1AA2 _ 6A, 07
        push    dword [ebp-10H]                         ; 1AA4 _ FF. 75, F0
        push    eax                                     ; 1AA7 _ 50
        call    boxfill8                                ; 1AA8 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 1AAD _ 83. C4, 1C
        mov     eax, dword [ebp-0CH]                    ; 1AB0 _ 8B. 45, F4
        lea     ebx, [eax-2H]                           ; 1AB3 _ 8D. 58, FE
        mov     eax, dword [ebp-10H]                    ; 1AB6 _ 8B. 45, F0
        lea     ecx, [eax-2H]                           ; 1AB9 _ 8D. 48, FE
        mov     eax, dword [ebp-10H]                    ; 1ABC _ 8B. 45, F0
        lea     edx, [eax-2H]                           ; 1ABF _ 8D. 50, FE
        mov     eax, dword [ebp+0CH]                    ; 1AC2 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 1AC5 _ 8B. 00
        push    ebx                                     ; 1AC7 _ 53
        push    ecx                                     ; 1AC8 _ 51
        push    1                                       ; 1AC9 _ 6A, 01
        push    edx                                     ; 1ACB _ 52
        push    15                                      ; 1ACC _ 6A, 0F
        push    dword [ebp-10H]                         ; 1ACE _ FF. 75, F0
        push    eax                                     ; 1AD1 _ 50
        call    boxfill8                                ; 1AD2 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 1AD7 _ 83. C4, 1C
        mov     eax, dword [ebp-0CH]                    ; 1ADA _ 8B. 45, F4
        lea     ebx, [eax-1H]                           ; 1ADD _ 8D. 58, FF
        mov     eax, dword [ebp-10H]                    ; 1AE0 _ 8B. 45, F0
        lea     ecx, [eax-1H]                           ; 1AE3 _ 8D. 48, FF
        mov     eax, dword [ebp-10H]                    ; 1AE6 _ 8B. 45, F0
        lea     edx, [eax-1H]                           ; 1AE9 _ 8D. 50, FF
        mov     eax, dword [ebp+0CH]                    ; 1AEC _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 1AEF _ 8B. 00
        push    ebx                                     ; 1AF1 _ 53
        push    ecx                                     ; 1AF2 _ 51
        push    0                                       ; 1AF3 _ 6A, 00
        push    edx                                     ; 1AF5 _ 52
        push    0                                       ; 1AF6 _ 6A, 00
        push    dword [ebp-10H]                         ; 1AF8 _ FF. 75, F0
        push    eax                                     ; 1AFB _ 50
        call    boxfill8                                ; 1AFC _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 1B01 _ 83. C4, 1C
        mov     eax, dword [ebp-0CH]                    ; 1B04 _ 8B. 45, F4
        lea     ecx, [eax-3H]                           ; 1B07 _ 8D. 48, FD
        mov     eax, dword [ebp-10H]                    ; 1B0A _ 8B. 45, F0
        lea     edx, [eax-3H]                           ; 1B0D _ 8D. 50, FD
        mov     eax, dword [ebp+0CH]                    ; 1B10 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 1B13 _ 8B. 00
        push    ecx                                     ; 1B15 _ 51
        push    edx                                     ; 1B16 _ 52
        push    2                                       ; 1B17 _ 6A, 02
        push    2                                       ; 1B19 _ 6A, 02
        push    8                                       ; 1B1B _ 6A, 08
        push    dword [ebp-10H]                         ; 1B1D _ FF. 75, F0
        push    eax                                     ; 1B20 _ 50
        call    boxfill8                                ; 1B21 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 1B26 _ 83. C4, 1C
        mov     eax, dword [ebp-10H]                    ; 1B29 _ 8B. 45, F0
        lea     edx, [eax-4H]                           ; 1B2C _ 8D. 50, FC
        mov     eax, dword [ebp+0CH]                    ; 1B2F _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 1B32 _ 8B. 00
        push    20                                      ; 1B34 _ 6A, 14
        push    edx                                     ; 1B36 _ 52
        push    3                                       ; 1B37 _ 6A, 03
        push    3                                       ; 1B39 _ 6A, 03
        push    12                                      ; 1B3B _ 6A, 0C
        push    dword [ebp-10H]                         ; 1B3D _ FF. 75, F0
        push    eax                                     ; 1B40 _ 50
        call    boxfill8                                ; 1B41 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 1B46 _ 83. C4, 1C
        mov     eax, dword [ebp-0CH]                    ; 1B49 _ 8B. 45, F4
        lea     ebx, [eax-2H]                           ; 1B4C _ 8D. 58, FE
        mov     eax, dword [ebp-10H]                    ; 1B4F _ 8B. 45, F0
        lea     ecx, [eax-2H]                           ; 1B52 _ 8D. 48, FE
        mov     eax, dword [ebp-0CH]                    ; 1B55 _ 8B. 45, F4
        lea     edx, [eax-2H]                           ; 1B58 _ 8D. 50, FE
        mov     eax, dword [ebp+0CH]                    ; 1B5B _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 1B5E _ 8B. 00
        push    ebx                                     ; 1B60 _ 53
        push    ecx                                     ; 1B61 _ 51
        push    edx                                     ; 1B62 _ 52
        push    1                                       ; 1B63 _ 6A, 01
        push    15                                      ; 1B65 _ 6A, 0F
        push    dword [ebp-10H]                         ; 1B67 _ FF. 75, F0
        push    eax                                     ; 1B6A _ 50
        call    boxfill8                                ; 1B6B _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 1B70 _ 83. C4, 1C
        mov     eax, dword [ebp-0CH]                    ; 1B73 _ 8B. 45, F4
        lea     ebx, [eax-1H]                           ; 1B76 _ 8D. 58, FF
        mov     eax, dword [ebp-10H]                    ; 1B79 _ 8B. 45, F0
        lea     ecx, [eax-1H]                           ; 1B7C _ 8D. 48, FF
        mov     eax, dword [ebp-0CH]                    ; 1B7F _ 8B. 45, F4
        lea     edx, [eax-1H]                           ; 1B82 _ 8D. 50, FF
        mov     eax, dword [ebp+0CH]                    ; 1B85 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 1B88 _ 8B. 00
        push    ebx                                     ; 1B8A _ 53
        push    ecx                                     ; 1B8B _ 51
        push    edx                                     ; 1B8C _ 52
        push    0                                       ; 1B8D _ 6A, 00
        push    0                                       ; 1B8F _ 6A, 00
        push    dword [ebp-10H]                         ; 1B91 _ FF. 75, F0
        push    eax                                     ; 1B94 _ 50
        call    boxfill8                                ; 1B95 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 1B9A _ 83. C4, 1C
        sub     esp, 8                                  ; 1B9D _ 83. EC, 08
        push    dword [ebp+10H]                         ; 1BA0 _ FF. 75, 10
        push    7                                       ; 1BA3 _ 6A, 07
        push    4                                       ; 1BA5 _ 6A, 04
        push    8                                       ; 1BA7 _ 6A, 08
        push    dword [ebp+0CH]                         ; 1BA9 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1BAC _ FF. 75, 08
        call    showString                              ; 1BAF _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1BB4 _ 83. C4, 20
        mov     dword [ebp-18H], 0                      ; 1BB7 _ C7. 45, E8, 00000000
        jmp     ?_072                                   ; 1BBE _ EB, 7D

?_066:  mov     dword [ebp-14H], 0                      ; 1BC0 _ C7. 45, EC, 00000000
        jmp     ?_071                                   ; 1BC7 _ EB, 6A

?_067:  mov     eax, dword [ebp-18H]                    ; 1BC9 _ 8B. 45, E8
        shl     eax, 4                                  ; 1BCC _ C1. E0, 04
        mov     edx, eax                                ; 1BCF _ 89. C2
        mov     eax, dword [ebp-14H]                    ; 1BD1 _ 8B. 45, EC
        add     eax, edx                                ; 1BD4 _ 01. D0
        add     eax, closebtn.1923                      ; 1BD6 _ 05, 000001C0(d)
        movzx   eax, byte [eax]                         ; 1BDB _ 0F B6. 00
        mov     byte [ebp-19H], al                      ; 1BDE _ 88. 45, E7
        cmp     byte [ebp-19H], 64                      ; 1BE1 _ 80. 7D, E7, 40
        jnz     ?_068                                   ; 1BE5 _ 75, 06
        mov     byte [ebp-19H], 0                       ; 1BE7 _ C6. 45, E7, 00
        jmp     ?_070                                   ; 1BEB _ EB, 16

?_068:  cmp     byte [ebp-19H], 36                      ; 1BED _ 80. 7D, E7, 24
        jnz     ?_069                                   ; 1BF1 _ 75, 06
        mov     byte [ebp-19H], 15                      ; 1BF3 _ C6. 45, E7, 0F
        jmp     ?_070                                   ; 1BF7 _ EB, 0A

?_069:  cmp     byte [ebp-19H], 81                      ; 1BF9 _ 80. 7D, E7, 51
        jnz     ?_070                                   ; 1BFD _ 75, 04
        mov     byte [ebp-19H], 8                       ; 1BFF _ C6. 45, E7, 08
?_070:  mov     eax, dword [ebp+0CH]                    ; 1C03 _ 8B. 45, 0C
        mov     edx, dword [eax]                        ; 1C06 _ 8B. 10
        mov     eax, dword [ebp-18H]                    ; 1C08 _ 8B. 45, E8
        lea     ecx, [eax+5H]                           ; 1C0B _ 8D. 48, 05
        mov     eax, dword [ebp+0CH]                    ; 1C0E _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 1C11 _ 8B. 40, 04
        imul    ecx, eax                                ; 1C14 _ 0F AF. C8
        mov     eax, dword [ebp+0CH]                    ; 1C17 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 1C1A _ 8B. 40, 04
        lea     ebx, [eax-15H]                          ; 1C1D _ 8D. 58, EB
        mov     eax, dword [ebp-14H]                    ; 1C20 _ 8B. 45, EC
        add     eax, ebx                                ; 1C23 _ 01. D8
        add     eax, ecx                                ; 1C25 _ 01. C8
        add     edx, eax                                ; 1C27 _ 01. C2
        movzx   eax, byte [ebp-19H]                     ; 1C29 _ 0F B6. 45, E7
        mov     byte [edx], al                          ; 1C2D _ 88. 02
        add     dword [ebp-14H], 1                      ; 1C2F _ 83. 45, EC, 01
?_071:  cmp     dword [ebp-14H], 15                     ; 1C33 _ 83. 7D, EC, 0F
        jle     ?_067                                   ; 1C37 _ 7E, 90
        add     dword [ebp-18H], 1                      ; 1C39 _ 83. 45, E8, 01
?_072:  cmp     dword [ebp-18H], 13                     ; 1C3D _ 83. 7D, E8, 0D
        jle     ?_066                                   ; 1C41 _ 0F 8E, FFFFFF79
        nop                                             ; 1C47 _ 90
        mov     ebx, dword [ebp-4H]                     ; 1C48 _ 8B. 5D, FC
        leave                                           ; 1C4B _ C9
        ret                                             ; 1C4C _ C3
; make_window8 End of function

memman_init:; Function begin
        push    ebp                                     ; 1C4D _ 55
        mov     ebp, esp                                ; 1C4E _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 1C50 _ 8B. 45, 08
        mov     dword [eax], 0                          ; 1C53 _ C7. 00, 00000000
        mov     eax, dword [ebp+8H]                     ; 1C59 _ 8B. 45, 08
        mov     dword [eax+4H], 0                       ; 1C5C _ C7. 40, 04, 00000000
        mov     eax, dword [ebp+8H]                     ; 1C63 _ 8B. 45, 08
        mov     dword [eax+8H], 0                       ; 1C66 _ C7. 40, 08, 00000000
        mov     eax, dword [ebp+8H]                     ; 1C6D _ 8B. 45, 08
        mov     dword [eax+0CH], 0                      ; 1C70 _ C7. 40, 0C, 00000000
        nop                                             ; 1C77 _ 90
        pop     ebp                                     ; 1C78 _ 5D
        ret                                             ; 1C79 _ C3
; memman_init End of function

memman_total:; Function begin
        push    ebp                                     ; 1C7A _ 55
        mov     ebp, esp                                ; 1C7B _ 89. E5
        sub     esp, 16                                 ; 1C7D _ 83. EC, 10
        mov     dword [ebp-8H], 0                       ; 1C80 _ C7. 45, F8, 00000000
        mov     dword [ebp-4H], 0                       ; 1C87 _ C7. 45, FC, 00000000
        jmp     ?_074                                   ; 1C8E _ EB, 14

?_073:  mov     eax, dword [ebp+8H]                     ; 1C90 _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 1C93 _ 8B. 55, FC
        add     edx, 2                                  ; 1C96 _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 1C99 _ 8B. 44 D0, 04
        add     dword [ebp-8H], eax                     ; 1C9D _ 01. 45, F8
        add     dword [ebp-4H], 1                       ; 1CA0 _ 83. 45, FC, 01
?_074:  mov     eax, dword [ebp+8H]                     ; 1CA4 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 1CA7 _ 8B. 00
        cmp     dword [ebp-4H], eax                     ; 1CA9 _ 39. 45, FC
        jl      ?_073                                   ; 1CAC _ 7C, E2
        mov     eax, dword [ebp-8H]                     ; 1CAE _ 8B. 45, F8
        leave                                           ; 1CB1 _ C9
        ret                                             ; 1CB2 _ C3
; memman_total End of function

memman_alloc_FF:; Function begin
        push    ebp                                     ; 1CB3 _ 55
        mov     ebp, esp                                ; 1CB4 _ 89. E5
        sub     esp, 16                                 ; 1CB6 _ 83. EC, 10
        mov     dword [ebp-8H], 0                       ; 1CB9 _ C7. 45, F8, 00000000
        jmp     ?_078                                   ; 1CC0 _ E9, 00000085

?_075:  mov     eax, dword [ebp+8H]                     ; 1CC5 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 1CC8 _ 8B. 55, F8
        add     edx, 2                                  ; 1CCB _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 1CCE _ 8B. 44 D0, 04
        cmp     dword [ebp+0CH], eax                    ; 1CD2 _ 39. 45, 0C
        ja      ?_077                                   ; 1CD5 _ 77, 6F
        mov     eax, dword [ebp+8H]                     ; 1CD7 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 1CDA _ 8B. 55, F8
        add     edx, 2                                  ; 1CDD _ 83. C2, 02
        mov     eax, dword [eax+edx*8]                  ; 1CE0 _ 8B. 04 D0
        mov     dword [ebp-4H], eax                     ; 1CE3 _ 89. 45, FC
        mov     eax, dword [ebp+8H]                     ; 1CE6 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 1CE9 _ 8B. 55, F8
        add     edx, 2                                  ; 1CEC _ 83. C2, 02
        mov     edx, dword [eax+edx*8]                  ; 1CEF _ 8B. 14 D0
        mov     eax, dword [ebp+0CH]                    ; 1CF2 _ 8B. 45, 0C
        lea     ecx, [edx+eax]                          ; 1CF5 _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 1CF8 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 1CFB _ 8B. 55, F8
        add     edx, 2                                  ; 1CFE _ 83. C2, 02
        mov     dword [eax+edx*8], ecx                  ; 1D01 _ 89. 0C D0
        mov     eax, dword [ebp+8H]                     ; 1D04 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 1D07 _ 8B. 55, F8
        add     edx, 2                                  ; 1D0A _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 1D0D _ 8B. 44 D0, 04
        sub     eax, dword [ebp+0CH]                    ; 1D11 _ 2B. 45, 0C
        mov     edx, eax                                ; 1D14 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 1D16 _ 8B. 45, 08
        mov     ecx, dword [ebp-8H]                     ; 1D19 _ 8B. 4D, F8
        add     ecx, 2                                  ; 1D1C _ 83. C1, 02
        mov     dword [eax+ecx*8+4H], edx               ; 1D1F _ 89. 54 C8, 04
        mov     eax, dword [ebp+8H]                     ; 1D23 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 1D26 _ 8B. 55, F8
        add     edx, 2                                  ; 1D29 _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 1D2C _ 8B. 44 D0, 04
        test    eax, eax                                ; 1D30 _ 85. C0
        jnz     ?_076                                   ; 1D32 _ 75, 0D
        mov     eax, dword [ebp+8H]                     ; 1D34 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 1D37 _ 8B. 00
        lea     edx, [eax-1H]                           ; 1D39 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 1D3C _ 8B. 45, 08
        mov     dword [eax], edx                        ; 1D3F _ 89. 10
?_076:  mov     eax, dword [ebp-4H]                     ; 1D41 _ 8B. 45, FC
        jmp     ?_079                                   ; 1D44 _ EB, 17

?_077:  add     dword [ebp-8H], 1                       ; 1D46 _ 83. 45, F8, 01
?_078:  mov     eax, dword [ebp+8H]                     ; 1D4A _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 1D4D _ 8B. 00
        cmp     dword [ebp-8H], eax                     ; 1D4F _ 39. 45, F8
        jl      ?_075                                   ; 1D52 _ 0F 8C, FFFFFF6D
        mov     eax, 0                                  ; 1D58 _ B8, 00000000
?_079:  leave                                           ; 1D5D _ C9
        ret                                             ; 1D5E _ C3
; memman_alloc_FF End of function

memman_alloc_4K:; Function begin
        push    ebp                                     ; 1D5F _ 55
        mov     ebp, esp                                ; 1D60 _ 89. E5
        sub     esp, 16                                 ; 1D62 _ 83. EC, 10
        mov     eax, dword [ebp+0CH]                    ; 1D65 _ 8B. 45, 0C
        add     eax, 4095                               ; 1D68 _ 05, 00000FFF
        and     eax, 0FFFFF000H                         ; 1D6D _ 25, FFFFF000
        mov     dword [ebp+0CH], eax                    ; 1D72 _ 89. 45, 0C
        push    dword [ebp+0CH]                         ; 1D75 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1D78 _ FF. 75, 08
        call    memman_alloc_FF                         ; 1D7B _ E8, FFFFFFFC(rel)
        add     esp, 8                                  ; 1D80 _ 83. C4, 08
        mov     dword [ebp-4H], eax                     ; 1D83 _ 89. 45, FC
        mov     eax, dword [ebp-4H]                     ; 1D86 _ 8B. 45, FC
        leave                                           ; 1D89 _ C9
        ret                                             ; 1D8A _ C3
; memman_alloc_4K End of function

memman_free:; Function begin
        push    ebp                                     ; 1D8B _ 55
        mov     ebp, esp                                ; 1D8C _ 89. E5
        push    ebx                                     ; 1D8E _ 53
        sub     esp, 16                                 ; 1D8F _ 83. EC, 10
        mov     dword [ebp-0CH], 0                      ; 1D92 _ C7. 45, F4, 00000000
        jmp     ?_081                                   ; 1D99 _ EB, 15

?_080:  mov     eax, dword [ebp+8H]                     ; 1D9B _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 1D9E _ 8B. 55, F4
        add     edx, 2                                  ; 1DA1 _ 83. C2, 02
        mov     eax, dword [eax+edx*8]                  ; 1DA4 _ 8B. 04 D0
        cmp     dword [ebp+0CH], eax                    ; 1DA7 _ 39. 45, 0C
        jc      ?_082                                   ; 1DAA _ 72, 10
        add     dword [ebp-0CH], 1                      ; 1DAC _ 83. 45, F4, 01
?_081:  mov     eax, dword [ebp+8H]                     ; 1DB0 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 1DB3 _ 8B. 00
        cmp     dword [ebp-0CH], eax                    ; 1DB5 _ 39. 45, F4
        jl      ?_080                                   ; 1DB8 _ 7C, E1
        jmp     ?_083                                   ; 1DBA _ EB, 01

?_082:  nop                                             ; 1DBC _ 90
?_083:  cmp     dword [ebp-0CH], 0                      ; 1DBD _ 83. 7D, F4, 00
        jle     ?_085                                   ; 1DC1 _ 0F 8E, 000000BA
        mov     eax, dword [ebp-0CH]                    ; 1DC7 _ 8B. 45, F4
        lea     edx, [eax-1H]                           ; 1DCA _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 1DCD _ 8B. 45, 08
        add     edx, 2                                  ; 1DD0 _ 83. C2, 02
        mov     edx, dword [eax+edx*8]                  ; 1DD3 _ 8B. 14 D0
        mov     eax, dword [ebp-0CH]                    ; 1DD6 _ 8B. 45, F4
        lea     ecx, [eax-1H]                           ; 1DD9 _ 8D. 48, FF
        mov     eax, dword [ebp+8H]                     ; 1DDC _ 8B. 45, 08
        add     ecx, 2                                  ; 1DDF _ 83. C1, 02
        mov     eax, dword [eax+ecx*8+4H]               ; 1DE2 _ 8B. 44 C8, 04
        add     eax, edx                                ; 1DE6 _ 01. D0
        cmp     dword [ebp+0CH], eax                    ; 1DE8 _ 39. 45, 0C
        jne     ?_085                                   ; 1DEB _ 0F 85, 00000090
        mov     eax, dword [ebp-0CH]                    ; 1DF1 _ 8B. 45, F4
        lea     edx, [eax-1H]                           ; 1DF4 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 1DF7 _ 8B. 45, 08
        add     edx, 2                                  ; 1DFA _ 83. C2, 02
        mov     edx, dword [eax+edx*8+4H]               ; 1DFD _ 8B. 54 D0, 04
        mov     eax, dword [ebp-0CH]                    ; 1E01 _ 8B. 45, F4
        lea     ebx, [eax-1H]                           ; 1E04 _ 8D. 58, FF
        mov     eax, dword [ebp+10H]                    ; 1E07 _ 8B. 45, 10
        lea     ecx, [edx+eax]                          ; 1E0A _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 1E0D _ 8B. 45, 08
        lea     edx, [ebx+2H]                           ; 1E10 _ 8D. 53, 02
        mov     dword [eax+edx*8+4H], ecx               ; 1E13 _ 89. 4C D0, 04
        mov     eax, dword [ebp+8H]                     ; 1E17 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 1E1A _ 8B. 00
        cmp     dword [ebp-0CH], eax                    ; 1E1C _ 39. 45, F4
        jge     ?_084                                   ; 1E1F _ 7D, 56
        mov     edx, dword [ebp+0CH]                    ; 1E21 _ 8B. 55, 0C
        mov     eax, dword [ebp+10H]                    ; 1E24 _ 8B. 45, 10
        lea     ecx, [edx+eax]                          ; 1E27 _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 1E2A _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 1E2D _ 8B. 55, F4
        add     edx, 2                                  ; 1E30 _ 83. C2, 02
        mov     eax, dword [eax+edx*8]                  ; 1E33 _ 8B. 04 D0
        cmp     ecx, eax                                ; 1E36 _ 39. C1
        jnz     ?_084                                   ; 1E38 _ 75, 3D
        mov     eax, dword [ebp-0CH]                    ; 1E3A _ 8B. 45, F4
        lea     edx, [eax-1H]                           ; 1E3D _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 1E40 _ 8B. 45, 08
        add     edx, 2                                  ; 1E43 _ 83. C2, 02
        mov     edx, dword [eax+edx*8+4H]               ; 1E46 _ 8B. 54 D0, 04
        mov     eax, dword [ebp+8H]                     ; 1E4A _ 8B. 45, 08
        mov     ecx, dword [ebp-0CH]                    ; 1E4D _ 8B. 4D, F4
        add     ecx, 2                                  ; 1E50 _ 83. C1, 02
        mov     eax, dword [eax+ecx*8+4H]               ; 1E53 _ 8B. 44 C8, 04
        mov     ecx, dword [ebp-0CH]                    ; 1E57 _ 8B. 4D, F4
        lea     ebx, [ecx-1H]                           ; 1E5A _ 8D. 59, FF
        lea     ecx, [edx+eax]                          ; 1E5D _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 1E60 _ 8B. 45, 08
        lea     edx, [ebx+2H]                           ; 1E63 _ 8D. 53, 02
        mov     dword [eax+edx*8+4H], ecx               ; 1E66 _ 89. 4C D0, 04
        mov     eax, dword [ebp+8H]                     ; 1E6A _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 1E6D _ 8B. 00
        lea     edx, [eax-1H]                           ; 1E6F _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 1E72 _ 8B. 45, 08
        mov     dword [eax], edx                        ; 1E75 _ 89. 10
?_084:  mov     eax, 0                                  ; 1E77 _ B8, 00000000
        jmp     ?_091                                   ; 1E7C _ E9, 0000011C

?_085:  mov     eax, dword [ebp+8H]                     ; 1E81 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 1E84 _ 8B. 00
        cmp     dword [ebp-0CH], eax                    ; 1E86 _ 39. 45, F4
        jge     ?_086                                   ; 1E89 _ 7D, 52
        mov     edx, dword [ebp+0CH]                    ; 1E8B _ 8B. 55, 0C
        mov     eax, dword [ebp+10H]                    ; 1E8E _ 8B. 45, 10
        lea     ecx, [edx+eax]                          ; 1E91 _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 1E94 _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 1E97 _ 8B. 55, F4
        add     edx, 2                                  ; 1E9A _ 83. C2, 02
        mov     eax, dword [eax+edx*8]                  ; 1E9D _ 8B. 04 D0
        cmp     ecx, eax                                ; 1EA0 _ 39. C1
        jnz     ?_086                                   ; 1EA2 _ 75, 39
        mov     eax, dword [ebp+8H]                     ; 1EA4 _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 1EA7 _ 8B. 55, F4
        lea     ecx, [edx+2H]                           ; 1EAA _ 8D. 4A, 02
        mov     edx, dword [ebp+0CH]                    ; 1EAD _ 8B. 55, 0C
        mov     dword [eax+ecx*8], edx                  ; 1EB0 _ 89. 14 C8
        mov     eax, dword [ebp+8H]                     ; 1EB3 _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 1EB6 _ 8B. 55, F4
        add     edx, 2                                  ; 1EB9 _ 83. C2, 02
        mov     edx, dword [eax+edx*8+4H]               ; 1EBC _ 8B. 54 D0, 04
        mov     eax, dword [ebp+10H]                    ; 1EC0 _ 8B. 45, 10
        lea     ecx, [edx+eax]                          ; 1EC3 _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 1EC6 _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 1EC9 _ 8B. 55, F4
        add     edx, 2                                  ; 1ECC _ 83. C2, 02
        mov     dword [eax+edx*8+4H], ecx               ; 1ECF _ 89. 4C D0, 04
        mov     eax, 0                                  ; 1ED3 _ B8, 00000000
        jmp     ?_091                                   ; 1ED8 _ E9, 000000C0

?_086:  mov     eax, dword [ebp+8H]                     ; 1EDD _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 1EE0 _ 8B. 00
        cmp     eax, 4095                               ; 1EE2 _ 3D, 00000FFF
        jg      ?_090                                   ; 1EE7 _ 0F 8F, 00000087
        mov     eax, dword [ebp+8H]                     ; 1EED _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 1EF0 _ 8B. 00
        mov     dword [ebp-8H], eax                     ; 1EF2 _ 89. 45, F8
        jmp     ?_088                                   ; 1EF5 _ EB, 28

?_087:  mov     eax, dword [ebp-8H]                     ; 1EF7 _ 8B. 45, F8
        lea     edx, [eax-1H]                           ; 1EFA _ 8D. 50, FF
        mov     ecx, dword [ebp+8H]                     ; 1EFD _ 8B. 4D, 08
        mov     eax, dword [ebp-8H]                     ; 1F00 _ 8B. 45, F8
        lea     ebx, [eax+2H]                           ; 1F03 _ 8D. 58, 02
        mov     eax, dword [ebp+8H]                     ; 1F06 _ 8B. 45, 08
        add     edx, 2                                  ; 1F09 _ 83. C2, 02
        lea     edx, [eax+edx*8]                        ; 1F0C _ 8D. 14 D0
        mov     eax, dword [edx]                        ; 1F0F _ 8B. 02
        mov     edx, dword [edx+4H]                     ; 1F11 _ 8B. 52, 04
        mov     dword [ecx+ebx*8], eax                  ; 1F14 _ 89. 04 D9
        mov     dword [ecx+ebx*8+4H], edx               ; 1F17 _ 89. 54 D9, 04
        sub     dword [ebp-8H], 1                       ; 1F1B _ 83. 6D, F8, 01
?_088:  mov     eax, dword [ebp-8H]                     ; 1F1F _ 8B. 45, F8
        cmp     eax, dword [ebp-0CH]                    ; 1F22 _ 3B. 45, F4
        jg      ?_087                                   ; 1F25 _ 7F, D0
        mov     eax, dword [ebp+8H]                     ; 1F27 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 1F2A _ 8B. 00
        lea     edx, [eax+1H]                           ; 1F2C _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 1F2F _ 8B. 45, 08
        mov     dword [eax], edx                        ; 1F32 _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 1F34 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 1F37 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 1F3A _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 1F3D _ 8B. 00
        cmp     edx, eax                                ; 1F3F _ 39. C2
        jge     ?_089                                   ; 1F41 _ 7D, 0B
        mov     eax, dword [ebp+8H]                     ; 1F43 _ 8B. 45, 08
        mov     edx, dword [eax]                        ; 1F46 _ 8B. 10
        mov     eax, dword [ebp+8H]                     ; 1F48 _ 8B. 45, 08
        mov     dword [eax+4H], edx                     ; 1F4B _ 89. 50, 04
?_089:  mov     eax, dword [ebp+8H]                     ; 1F4E _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 1F51 _ 8B. 55, F4
        lea     ecx, [edx+2H]                           ; 1F54 _ 8D. 4A, 02
        mov     edx, dword [ebp+0CH]                    ; 1F57 _ 8B. 55, 0C
        mov     dword [eax+ecx*8], edx                  ; 1F5A _ 89. 14 C8
        mov     eax, dword [ebp+8H]                     ; 1F5D _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 1F60 _ 8B. 55, F4
        lea     ecx, [edx+2H]                           ; 1F63 _ 8D. 4A, 02
        mov     edx, dword [ebp+10H]                    ; 1F66 _ 8B. 55, 10
        mov     dword [eax+ecx*8+4H], edx               ; 1F69 _ 89. 54 C8, 04
        mov     eax, 0                                  ; 1F6D _ B8, 00000000
        jmp     ?_091                                   ; 1F72 _ EB, 29

?_090:  mov     eax, dword [ebp+8H]                     ; 1F74 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 1F77 _ 8B. 40, 0C
        lea     edx, [eax+1H]                           ; 1F7A _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 1F7D _ 8B. 45, 08
        mov     dword [eax+0CH], edx                    ; 1F80 _ 89. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 1F83 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 1F86 _ 8B. 40, 08
        mov     edx, eax                                ; 1F89 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 1F8B _ 8B. 45, 10
        add     eax, edx                                ; 1F8E _ 01. D0
        mov     edx, eax                                ; 1F90 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 1F92 _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 1F95 _ 89. 50, 08
        mov     eax, 4294967295                         ; 1F98 _ B8, FFFFFFFF
?_091:  add     esp, 16                                 ; 1F9D _ 83. C4, 10
        pop     ebx                                     ; 1FA0 _ 5B
        pop     ebp                                     ; 1FA1 _ 5D
        ret                                             ; 1FA2 _ C3
; memman_free End of function

memman_free_4K:; Function begin
        push    ebp                                     ; 1FA3 _ 55
        mov     ebp, esp                                ; 1FA4 _ 89. E5
        sub     esp, 16                                 ; 1FA6 _ 83. EC, 10
        mov     eax, dword [ebp+10H]                    ; 1FA9 _ 8B. 45, 10
        add     eax, 4095                               ; 1FAC _ 05, 00000FFF
        and     eax, 0FFFFF000H                         ; 1FB1 _ 25, FFFFF000
        mov     dword [ebp+10H], eax                    ; 1FB6 _ 89. 45, 10
        push    dword [ebp+10H]                         ; 1FB9 _ FF. 75, 10
        push    dword [ebp+0CH]                         ; 1FBC _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1FBF _ FF. 75, 08
        call    memman_free                             ; 1FC2 _ E8, FFFFFFFC(rel)
        add     esp, 12                                 ; 1FC7 _ 83. C4, 0C
        mov     dword [ebp-4H], eax                     ; 1FCA _ 89. 45, FC
        mov     eax, dword [ebp-4H]                     ; 1FCD _ 8B. 45, FC
        leave                                           ; 1FD0 _ C9
        ret                                             ; 1FD1 _ C3
; memman_free_4K End of function

shtctl_init:; Function begin
        push    ebp                                     ; 1FD2 _ 55
        mov     ebp, esp                                ; 1FD3 _ 89. E5
        sub     esp, 24                                 ; 1FD5 _ 83. EC, 18
        sub     esp, 8                                  ; 1FD8 _ 83. EC, 08
        push    9232                                    ; 1FDB _ 68, 00002410
        push    dword [ebp+8H]                          ; 1FE0 _ FF. 75, 08
        call    memman_alloc_4K                         ; 1FE3 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1FE8 _ 83. C4, 10
        mov     dword [ebp-0CH], eax                    ; 1FEB _ 89. 45, F4
        cmp     dword [ebp-0CH], 0                      ; 1FEE _ 83. 7D, F4, 00
        jnz     ?_092                                   ; 1FF2 _ 75, 0A
        mov     eax, 0                                  ; 1FF4 _ B8, 00000000
        jmp     ?_096                                   ; 1FF9 _ E9, 0000009A

?_092:  mov     eax, dword [ebp+10H]                    ; 1FFE _ 8B. 45, 10
        imul    eax, dword [ebp+14H]                    ; 2001 _ 0F AF. 45, 14
        sub     esp, 8                                  ; 2005 _ 83. EC, 08
        push    eax                                     ; 2008 _ 50
        push    dword [ebp+8H]                          ; 2009 _ FF. 75, 08
        call    memman_alloc_4K                         ; 200C _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 2011 _ 83. C4, 10
        mov     edx, eax                                ; 2014 _ 89. C2
        mov     eax, dword [ebp-0CH]                    ; 2016 _ 8B. 45, F4
        mov     dword [eax+4H], edx                     ; 2019 _ 89. 50, 04
        mov     eax, dword [ebp-0CH]                    ; 201C _ 8B. 45, F4
        mov     eax, dword [eax+4H]                     ; 201F _ 8B. 40, 04
        test    eax, eax                                ; 2022 _ 85. C0
        jnz     ?_093                                   ; 2024 _ 75, 1E
        mov     eax, dword [ebp-0CH]                    ; 2026 _ 8B. 45, F4
        sub     esp, 4                                  ; 2029 _ 83. EC, 04
        push    9232                                    ; 202C _ 68, 00002410
        push    eax                                     ; 2031 _ 50
        push    dword [ebp+8H]                          ; 2032 _ FF. 75, 08
        call    memman_free_4K                          ; 2035 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 203A _ 83. C4, 10
        mov     eax, 0                                  ; 203D _ B8, 00000000
        jmp     ?_096                                   ; 2042 _ EB, 54

?_093:  mov     eax, dword [ebp-0CH]                    ; 2044 _ 8B. 45, F4
        mov     edx, dword [ebp+0CH]                    ; 2047 _ 8B. 55, 0C
        mov     dword [eax], edx                        ; 204A _ 89. 10
        mov     eax, dword [ebp-0CH]                    ; 204C _ 8B. 45, F4
        mov     edx, dword [ebp+10H]                    ; 204F _ 8B. 55, 10
        mov     dword [eax+8H], edx                     ; 2052 _ 89. 50, 08
        mov     eax, dword [ebp-0CH]                    ; 2055 _ 8B. 45, F4
        mov     edx, dword [ebp+14H]                    ; 2058 _ 8B. 55, 14
        mov     dword [eax+0CH], edx                    ; 205B _ 89. 50, 0C
        mov     eax, dword [ebp-0CH]                    ; 205E _ 8B. 45, F4
        mov     dword [eax+10H], -1                     ; 2061 _ C7. 40, 10, FFFFFFFF
        mov     dword [ebp-10H], 0                      ; 2068 _ C7. 45, F0, 00000000
        jmp     ?_095                                   ; 206F _ EB, 1B

?_094:  mov     eax, dword [ebp-0CH]                    ; 2071 _ 8B. 45, F4
        mov     edx, dword [ebp-10H]                    ; 2074 _ 8B. 55, F0
        add     edx, 33                                 ; 2077 _ 83. C2, 21
        shl     edx, 5                                  ; 207A _ C1. E2, 05
        add     eax, edx                                ; 207D _ 01. D0
        add     eax, 16                                 ; 207F _ 83. C0, 10
        mov     dword [eax], 0                          ; 2082 _ C7. 00, 00000000
        add     dword [ebp-10H], 1                      ; 2088 _ 83. 45, F0, 01
?_095:  cmp     dword [ebp-10H], 255                    ; 208C _ 81. 7D, F0, 000000FF
        jle     ?_094                                   ; 2093 _ 7E, DC
        mov     eax, dword [ebp-0CH]                    ; 2095 _ 8B. 45, F4
?_096:  leave                                           ; 2098 _ C9
        ret                                             ; 2099 _ C3
; shtctl_init End of function

sheet_alloc:; Function begin
        push    ebp                                     ; 209A _ 55
        mov     ebp, esp                                ; 209B _ 89. E5
        sub     esp, 16                                 ; 209D _ 83. EC, 10
        mov     dword [ebp-8H], 0                       ; 20A0 _ C7. 45, F8, 00000000
        jmp     ?_099                                   ; 20A7 _ EB, 4B

?_097:  mov     eax, dword [ebp+8H]                     ; 20A9 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 20AC _ 8B. 55, F8
        add     edx, 33                                 ; 20AF _ 83. C2, 21
        shl     edx, 5                                  ; 20B2 _ C1. E2, 05
        add     eax, edx                                ; 20B5 _ 01. D0
        add     eax, 16                                 ; 20B7 _ 83. C0, 10
        mov     eax, dword [eax]                        ; 20BA _ 8B. 00
        test    eax, eax                                ; 20BC _ 85. C0
        jnz     ?_098                                   ; 20BE _ 75, 30
        mov     eax, dword [ebp-8H]                     ; 20C0 _ 8B. 45, F8
        shl     eax, 5                                  ; 20C3 _ C1. E0, 05
        lea     edx, [eax+410H]                         ; 20C6 _ 8D. 90, 00000410
        mov     eax, dword [ebp+8H]                     ; 20CC _ 8B. 45, 08
        add     eax, edx                                ; 20CF _ 01. D0
        add     eax, 4                                  ; 20D1 _ 83. C0, 04
        mov     dword [ebp-4H], eax                     ; 20D4 _ 89. 45, FC
        mov     eax, dword [ebp-4H]                     ; 20D7 _ 8B. 45, FC
        mov     dword [eax+1CH], 1                      ; 20DA _ C7. 40, 1C, 00000001
        mov     eax, dword [ebp-4H]                     ; 20E1 _ 8B. 45, FC
        mov     dword [eax+18H], -1                     ; 20E4 _ C7. 40, 18, FFFFFFFF
        mov     eax, dword [ebp-4H]                     ; 20EB _ 8B. 45, FC
        jmp     ?_100                                   ; 20EE _ EB, 12

?_098:  add     dword [ebp-8H], 1                       ; 20F0 _ 83. 45, F8, 01
?_099:  cmp     dword [ebp-8H], 255                     ; 20F4 _ 81. 7D, F8, 000000FF
        jle     ?_097                                   ; 20FB _ 7E, AC
        mov     eax, 0                                  ; 20FD _ B8, 00000000
?_100:  leave                                           ; 2102 _ C9
        ret                                             ; 2103 _ C3
; sheet_alloc End of function

sheet_setbuf:; Function begin
        push    ebp                                     ; 2104 _ 55
        mov     ebp, esp                                ; 2105 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 2107 _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 210A _ 8B. 55, 0C
        mov     dword [eax], edx                        ; 210D _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 210F _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 2112 _ 8B. 55, 10
        mov     dword [eax+4H], edx                     ; 2115 _ 89. 50, 04
        mov     eax, dword [ebp+8H]                     ; 2118 _ 8B. 45, 08
        mov     edx, dword [ebp+14H]                    ; 211B _ 8B. 55, 14
        mov     dword [eax+8H], edx                     ; 211E _ 89. 50, 08
        mov     eax, dword [ebp+8H]                     ; 2121 _ 8B. 45, 08
        mov     edx, dword [ebp+18H]                    ; 2124 _ 8B. 55, 18
        mov     dword [eax+14H], edx                    ; 2127 _ 89. 50, 14
        nop                                             ; 212A _ 90
        pop     ebp                                     ; 212B _ 5D
        ret                                             ; 212C _ C3
; sheet_setbuf End of function

sheet_level_updown:; Function begin
        push    ebp                                     ; 212D _ 55
        mov     ebp, esp                                ; 212E _ 89. E5
        push    esi                                     ; 2130 _ 56
        push    ebx                                     ; 2131 _ 53
        sub     esp, 32                                 ; 2132 _ 83. EC, 20
        mov     eax, dword [ebp+0CH]                    ; 2135 _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 2138 _ 8B. 40, 18
        mov     dword [ebp-0CH], eax                    ; 213B _ 89. 45, F4
        mov     eax, dword [ebp+8H]                     ; 213E _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 2141 _ 8B. 40, 10
        add     eax, 1                                  ; 2144 _ 83. C0, 01
        cmp     dword [ebp+10H], eax                    ; 2147 _ 39. 45, 10
        jle     ?_101                                   ; 214A _ 7E, 0C
        mov     eax, dword [ebp+8H]                     ; 214C _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 214F _ 8B. 40, 10
        add     eax, 1                                  ; 2152 _ 83. C0, 01
        mov     dword [ebp+10H], eax                    ; 2155 _ 89. 45, 10
?_101:  cmp     dword [ebp+10H], -1                     ; 2158 _ 83. 7D, 10, FF
        jge     ?_102                                   ; 215C _ 7D, 07
        mov     dword [ebp+10H], -1                     ; 215E _ C7. 45, 10, FFFFFFFF
?_102:  mov     eax, dword [ebp+0CH]                    ; 2165 _ 8B. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 2168 _ 8B. 55, 10
        mov     dword [eax+18H], edx                    ; 216B _ 89. 50, 18
        mov     eax, dword [ebp-0CH]                    ; 216E _ 8B. 45, F4
        cmp     eax, dword [ebp+10H]                    ; 2171 _ 3B. 45, 10
        jle     ?_109                                   ; 2174 _ 0F 8E, 000001D5
        cmp     dword [ebp+10H], 0                      ; 217A _ 83. 7D, 10, 00
        js      ?_105                                   ; 217E _ 0F 88, 000000E2
        mov     eax, dword [ebp-0CH]                    ; 2184 _ 8B. 45, F4
        mov     dword [ebp-1CH], eax                    ; 2187 _ 89. 45, E4
        jmp     ?_104                                   ; 218A _ EB, 34

?_103:  mov     eax, dword [ebp-1CH]                    ; 218C _ 8B. 45, E4
        lea     edx, [eax-1H]                           ; 218F _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 2192 _ 8B. 45, 08
        add     edx, 4                                  ; 2195 _ 83. C2, 04
        mov     edx, dword [eax+edx*4+4H]               ; 2198 _ 8B. 54 90, 04
        mov     eax, dword [ebp+8H]                     ; 219C _ 8B. 45, 08
        mov     ecx, dword [ebp-1CH]                    ; 219F _ 8B. 4D, E4
        add     ecx, 4                                  ; 21A2 _ 83. C1, 04
        mov     dword [eax+ecx*4+4H], edx               ; 21A5 _ 89. 54 88, 04
        mov     eax, dword [ebp+8H]                     ; 21A9 _ 8B. 45, 08
        mov     edx, dword [ebp-1CH]                    ; 21AC _ 8B. 55, E4
        add     edx, 4                                  ; 21AF _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 21B2 _ 8B. 44 90, 04
        mov     edx, dword [ebp-1CH]                    ; 21B6 _ 8B. 55, E4
        mov     dword [eax+18H], edx                    ; 21B9 _ 89. 50, 18
        sub     dword [ebp-1CH], 1                      ; 21BC _ 83. 6D, E4, 01
?_104:  mov     eax, dword [ebp-1CH]                    ; 21C0 _ 8B. 45, E4
        cmp     eax, dword [ebp+10H]                    ; 21C3 _ 3B. 45, 10
        jg      ?_103                                   ; 21C6 _ 7F, C4
        mov     eax, dword [ebp+8H]                     ; 21C8 _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 21CB _ 8B. 55, 10
        lea     ecx, [edx+4H]                           ; 21CE _ 8D. 4A, 04
        mov     edx, dword [ebp+0CH]                    ; 21D1 _ 8B. 55, 0C
        mov     dword [eax+ecx*4+4H], edx               ; 21D4 _ 89. 54 88, 04
        mov     eax, dword [ebp+10H]                    ; 21D8 _ 8B. 45, 10
        lea     esi, [eax+1H]                           ; 21DB _ 8D. 70, 01
        mov     eax, dword [ebp+0CH]                    ; 21DE _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 21E1 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 21E4 _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 21E7 _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 21EA _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 21ED _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 21F0 _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 21F3 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 21F6 _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 21F9 _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 21FC _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 21FF _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 2202 _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 2205 _ 8B. 40, 0C
        sub     esp, 8                                  ; 2208 _ 83. EC, 08
        push    esi                                     ; 220B _ 56
        push    ebx                                     ; 220C _ 53
        push    ecx                                     ; 220D _ 51
        push    edx                                     ; 220E _ 52
        push    eax                                     ; 220F _ 50
        push    dword [ebp+8H]                          ; 2210 _ FF. 75, 08
        call    sheet_refreshmap                        ; 2213 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 2218 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 221B _ 8B. 45, 10
        lea     esi, [eax+1H]                           ; 221E _ 8D. 70, 01
        mov     eax, dword [ebp+0CH]                    ; 2221 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 2224 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 2227 _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 222A _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 222D _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 2230 _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 2233 _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 2236 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 2239 _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 223C _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 223F _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 2242 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 2245 _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 2248 _ 8B. 40, 0C
        sub     esp, 4                                  ; 224B _ 83. EC, 04
        push    dword [ebp-0CH]                         ; 224E _ FF. 75, F4
        push    esi                                     ; 2251 _ 56
        push    ebx                                     ; 2252 _ 53
        push    ecx                                     ; 2253 _ 51
        push    edx                                     ; 2254 _ 52
        push    eax                                     ; 2255 _ 50
        push    dword [ebp+8H]                          ; 2256 _ FF. 75, 08
        call    sheet_refresh_new                       ; 2259 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 225E _ 83. C4, 20
        jmp     ?_116                                   ; 2261 _ E9, 00000244

?_105:  mov     eax, dword [ebp+8H]                     ; 2266 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 2269 _ 8B. 40, 10
        cmp     dword [ebp-0CH], eax                    ; 226C _ 39. 45, F4
        jge     ?_108                                   ; 226F _ 7D, 47
        mov     eax, dword [ebp-0CH]                    ; 2271 _ 8B. 45, F4
        mov     dword [ebp-18H], eax                    ; 2274 _ 89. 45, E8
        jmp     ?_107                                   ; 2277 _ EB, 34

?_106:  mov     eax, dword [ebp-18H]                    ; 2279 _ 8B. 45, E8
        lea     edx, [eax+1H]                           ; 227C _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 227F _ 8B. 45, 08
        add     edx, 4                                  ; 2282 _ 83. C2, 04
        mov     edx, dword [eax+edx*4+4H]               ; 2285 _ 8B. 54 90, 04
        mov     eax, dword [ebp+8H]                     ; 2289 _ 8B. 45, 08
        mov     ecx, dword [ebp-18H]                    ; 228C _ 8B. 4D, E8
        add     ecx, 4                                  ; 228F _ 83. C1, 04
        mov     dword [eax+ecx*4+4H], edx               ; 2292 _ 89. 54 88, 04
        mov     eax, dword [ebp+8H]                     ; 2296 _ 8B. 45, 08
        mov     edx, dword [ebp-18H]                    ; 2299 _ 8B. 55, E8
        add     edx, 4                                  ; 229C _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 229F _ 8B. 44 90, 04
        mov     edx, dword [ebp-18H]                    ; 22A3 _ 8B. 55, E8
        mov     dword [eax+18H], edx                    ; 22A6 _ 89. 50, 18
        add     dword [ebp-18H], 1                      ; 22A9 _ 83. 45, E8, 01
?_107:  mov     eax, dword [ebp+8H]                     ; 22AD _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 22B0 _ 8B. 40, 10
        cmp     dword [ebp-18H], eax                    ; 22B3 _ 39. 45, E8
        jl      ?_106                                   ; 22B6 _ 7C, C1
?_108:  mov     eax, dword [ebp+8H]                     ; 22B8 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 22BB _ 8B. 40, 10
        lea     edx, [eax-1H]                           ; 22BE _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 22C1 _ 8B. 45, 08
        mov     dword [eax+10H], edx                    ; 22C4 _ 89. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 22C7 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 22CA _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 22CD _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 22D0 _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 22D3 _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 22D6 _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 22D9 _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 22DC _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 22DF _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 22E2 _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 22E5 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 22E8 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 22EB _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 22EE _ 8B. 40, 0C
        sub     esp, 8                                  ; 22F1 _ 83. EC, 08
        push    0                                       ; 22F4 _ 6A, 00
        push    ebx                                     ; 22F6 _ 53
        push    ecx                                     ; 22F7 _ 51
        push    edx                                     ; 22F8 _ 52
        push    eax                                     ; 22F9 _ 50
        push    dword [ebp+8H]                          ; 22FA _ FF. 75, 08
        call    sheet_refreshmap                        ; 22FD _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 2302 _ 83. C4, 20
        mov     eax, dword [ebp-0CH]                    ; 2305 _ 8B. 45, F4
        lea     esi, [eax-1H]                           ; 2308 _ 8D. 70, FF
        mov     eax, dword [ebp+0CH]                    ; 230B _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 230E _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 2311 _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 2314 _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 2317 _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 231A _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 231D _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 2320 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 2323 _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 2326 _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 2329 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 232C _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 232F _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 2332 _ 8B. 40, 0C
        sub     esp, 4                                  ; 2335 _ 83. EC, 04
        push    esi                                     ; 2338 _ 56
        push    0                                       ; 2339 _ 6A, 00
        push    ebx                                     ; 233B _ 53
        push    ecx                                     ; 233C _ 51
        push    edx                                     ; 233D _ 52
        push    eax                                     ; 233E _ 50
        push    dword [ebp+8H]                          ; 233F _ FF. 75, 08
        call    sheet_refresh_new                       ; 2342 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 2347 _ 83. C4, 20
        jmp     ?_116                                   ; 234A _ E9, 0000015B

?_109:  mov     eax, dword [ebp-0CH]                    ; 234F _ 8B. 45, F4
        cmp     eax, dword [ebp+10H]                    ; 2352 _ 3B. 45, 10
        jge     ?_116                                   ; 2355 _ 0F 8D, 0000014F
        cmp     dword [ebp-0CH], 0                      ; 235B _ 83. 7D, F4, 00
        js      ?_112                                   ; 235F _ 78, 56
        mov     eax, dword [ebp-0CH]                    ; 2361 _ 8B. 45, F4
        mov     dword [ebp-14H], eax                    ; 2364 _ 89. 45, EC
        jmp     ?_111                                   ; 2367 _ EB, 34

?_110:  mov     eax, dword [ebp-14H]                    ; 2369 _ 8B. 45, EC
        lea     edx, [eax+1H]                           ; 236C _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 236F _ 8B. 45, 08
        add     edx, 4                                  ; 2372 _ 83. C2, 04
        mov     edx, dword [eax+edx*4+4H]               ; 2375 _ 8B. 54 90, 04
        mov     eax, dword [ebp+8H]                     ; 2379 _ 8B. 45, 08
        mov     ecx, dword [ebp-14H]                    ; 237C _ 8B. 4D, EC
        add     ecx, 4                                  ; 237F _ 83. C1, 04
        mov     dword [eax+ecx*4+4H], edx               ; 2382 _ 89. 54 88, 04
        mov     eax, dword [ebp+8H]                     ; 2386 _ 8B. 45, 08
        mov     edx, dword [ebp-14H]                    ; 2389 _ 8B. 55, EC
        add     edx, 4                                  ; 238C _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 238F _ 8B. 44 90, 04
        mov     edx, dword [ebp-14H]                    ; 2393 _ 8B. 55, EC
        mov     dword [eax+18H], edx                    ; 2396 _ 89. 50, 18
        add     dword [ebp-14H], 1                      ; 2399 _ 83. 45, EC, 01
?_111:  mov     eax, dword [ebp-14H]                    ; 239D _ 8B. 45, EC
        cmp     eax, dword [ebp+10H]                    ; 23A0 _ 3B. 45, 10
        jl      ?_110                                   ; 23A3 _ 7C, C4
        mov     eax, dword [ebp+8H]                     ; 23A5 _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 23A8 _ 8B. 55, 10
        lea     ecx, [edx+4H]                           ; 23AB _ 8D. 4A, 04
        mov     edx, dword [ebp+0CH]                    ; 23AE _ 8B. 55, 0C
        mov     dword [eax+ecx*4+4H], edx               ; 23B1 _ 89. 54 88, 04
        jmp     ?_115                                   ; 23B5 _ EB, 72

?_112:  cmp     dword [ebp-0CH], 0                      ; 23B7 _ 83. 7D, F4, 00
        jns     ?_115                                   ; 23BB _ 79, 6C
        mov     eax, dword [ebp+8H]                     ; 23BD _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 23C0 _ 8B. 40, 10
        mov     dword [ebp-10H], eax                    ; 23C3 _ 89. 45, F0
        jmp     ?_114                                   ; 23C6 _ EB, 3A

?_113:  mov     eax, dword [ebp-10H]                    ; 23C8 _ 8B. 45, F0
        lea     ecx, [eax+1H]                           ; 23CB _ 8D. 48, 01
        mov     eax, dword [ebp+8H]                     ; 23CE _ 8B. 45, 08
        mov     edx, dword [ebp-10H]                    ; 23D1 _ 8B. 55, F0
        add     edx, 4                                  ; 23D4 _ 83. C2, 04
        mov     edx, dword [eax+edx*4+4H]               ; 23D7 _ 8B. 54 90, 04
        mov     eax, dword [ebp+8H]                     ; 23DB _ 8B. 45, 08
        add     ecx, 4                                  ; 23DE _ 83. C1, 04
        mov     dword [eax+ecx*4+4H], edx               ; 23E1 _ 89. 54 88, 04
        mov     eax, dword [ebp-10H]                    ; 23E5 _ 8B. 45, F0
        lea     edx, [eax+1H]                           ; 23E8 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 23EB _ 8B. 45, 08
        add     edx, 4                                  ; 23EE _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 23F1 _ 8B. 44 90, 04
        mov     edx, dword [ebp-10H]                    ; 23F5 _ 8B. 55, F0
        add     edx, 1                                  ; 23F8 _ 83. C2, 01
        mov     dword [eax+18H], edx                    ; 23FB _ 89. 50, 18
        sub     dword [ebp-10H], 1                      ; 23FE _ 83. 6D, F0, 01
?_114:  mov     eax, dword [ebp-10H]                    ; 2402 _ 8B. 45, F0
        cmp     eax, dword [ebp+10H]                    ; 2405 _ 3B. 45, 10
        jge     ?_113                                   ; 2408 _ 7D, BE
        mov     eax, dword [ebp+8H]                     ; 240A _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 240D _ 8B. 55, 10
        lea     ecx, [edx+4H]                           ; 2410 _ 8D. 4A, 04
        mov     edx, dword [ebp+0CH]                    ; 2413 _ 8B. 55, 0C
        mov     dword [eax+ecx*4+4H], edx               ; 2416 _ 89. 54 88, 04
        mov     eax, dword [ebp+8H]                     ; 241A _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 241D _ 8B. 40, 10
        lea     edx, [eax+1H]                           ; 2420 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 2423 _ 8B. 45, 08
        mov     dword [eax+10H], edx                    ; 2426 _ 89. 50, 10
?_115:  mov     eax, dword [ebp+0CH]                    ; 2429 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 242C _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 242F _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 2432 _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 2435 _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 2438 _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 243B _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 243E _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 2441 _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 2444 _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 2447 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 244A _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 244D _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 2450 _ 8B. 40, 0C
        sub     esp, 8                                  ; 2453 _ 83. EC, 08
        push    dword [ebp+10H]                         ; 2456 _ FF. 75, 10
        push    ebx                                     ; 2459 _ 53
        push    ecx                                     ; 245A _ 51
        push    edx                                     ; 245B _ 52
        push    eax                                     ; 245C _ 50
        push    dword [ebp+8H]                          ; 245D _ FF. 75, 08
        call    sheet_refreshmap                        ; 2460 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 2465 _ 83. C4, 20
        mov     eax, dword [ebp+0CH]                    ; 2468 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 246B _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 246E _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 2471 _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 2474 _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 2477 _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 247A _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 247D _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 2480 _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 2483 _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 2486 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 2489 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 248C _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 248F _ 8B. 40, 0C
        sub     esp, 4                                  ; 2492 _ 83. EC, 04
        push    dword [ebp+10H]                         ; 2495 _ FF. 75, 10
        push    dword [ebp+10H]                         ; 2498 _ FF. 75, 10
        push    ebx                                     ; 249B _ 53
        push    ecx                                     ; 249C _ 51
        push    edx                                     ; 249D _ 52
        push    eax                                     ; 249E _ 50
        push    dword [ebp+8H]                          ; 249F _ FF. 75, 08
        call    sheet_refresh_new                       ; 24A2 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 24A7 _ 83. C4, 20
?_116:  nop                                             ; 24AA _ 90
        lea     esp, [ebp-8H]                           ; 24AB _ 8D. 65, F8
        pop     ebx                                     ; 24AE _ 5B
        pop     esi                                     ; 24AF _ 5E
        pop     ebp                                     ; 24B0 _ 5D
        ret                                             ; 24B1 _ C3
; sheet_level_updown End of function

sheet_refresh:; Function begin
        push    ebp                                     ; 24B2 _ 55
        mov     ebp, esp                                ; 24B3 _ 89. E5
        push    edi                                     ; 24B5 _ 57
        push    esi                                     ; 24B6 _ 56
        push    ebx                                     ; 24B7 _ 53
        sub     esp, 28                                 ; 24B8 _ 83. EC, 1C
        mov     eax, dword [ebp+0CH]                    ; 24BB _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 24BE _ 8B. 40, 18
        test    eax, eax                                ; 24C1 _ 85. C0
        js      ?_117                                   ; 24C3 _ 78, 52
        mov     eax, dword [ebp+0CH]                    ; 24C5 _ 8B. 45, 0C
        mov     ebx, dword [eax+18H]                    ; 24C8 _ 8B. 58, 18
        mov     eax, dword [ebp+0CH]                    ; 24CB _ 8B. 45, 0C
        mov     ecx, dword [eax+18H]                    ; 24CE _ 8B. 48, 18
        mov     eax, dword [ebp+0CH]                    ; 24D1 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 24D4 _ 8B. 50, 10
        mov     eax, dword [ebp+1CH]                    ; 24D7 _ 8B. 45, 1C
        lea     edi, [edx+eax]                          ; 24DA _ 8D. 3C 02
        mov     eax, dword [ebp+0CH]                    ; 24DD _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 24E0 _ 8B. 50, 0C
        mov     eax, dword [ebp+18H]                    ; 24E3 _ 8B. 45, 18
        lea     esi, [edx+eax]                          ; 24E6 _ 8D. 34 02
        mov     eax, dword [ebp+0CH]                    ; 24E9 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 24EC _ 8B. 50, 10
        mov     eax, dword [ebp+14H]                    ; 24EF _ 8B. 45, 14
        add     edx, eax                                ; 24F2 _ 01. C2
        mov     eax, dword [ebp+0CH]                    ; 24F4 _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 24F7 _ 8B. 40, 0C
        mov     dword [ebp-1CH], eax                    ; 24FA _ 89. 45, E4
        mov     eax, dword [ebp+10H]                    ; 24FD _ 8B. 45, 10
        add     eax, dword [ebp-1CH]                    ; 2500 _ 03. 45, E4
        sub     esp, 4                                  ; 2503 _ 83. EC, 04
        push    ebx                                     ; 2506 _ 53
        push    ecx                                     ; 2507 _ 51
        push    edi                                     ; 2508 _ 57
        push    esi                                     ; 2509 _ 56
        push    edx                                     ; 250A _ 52
        push    eax                                     ; 250B _ 50
        push    dword [ebp+8H]                          ; 250C _ FF. 75, 08
        call    sheet_refresh_new                       ; 250F _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 2514 _ 83. C4, 20
?_117:  mov     eax, 0                                  ; 2517 _ B8, 00000000
        lea     esp, [ebp-0CH]                          ; 251C _ 8D. 65, F4
        pop     ebx                                     ; 251F _ 5B
        pop     esi                                     ; 2520 _ 5E
        pop     edi                                     ; 2521 _ 5F
        pop     ebp                                     ; 2522 _ 5D
        ret                                             ; 2523 _ C3
; sheet_refresh End of function

sheet_slide:; Function begin
        push    ebp                                     ; 2524 _ 55
        mov     ebp, esp                                ; 2525 _ 89. E5
        push    esi                                     ; 2527 _ 56
        push    ebx                                     ; 2528 _ 53
        sub     esp, 16                                 ; 2529 _ 83. EC, 10
        mov     eax, dword [ebp+0CH]                    ; 252C _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 252F _ 8B. 40, 0C
        mov     dword [ebp-10H], eax                    ; 2532 _ 89. 45, F0
        mov     eax, dword [ebp+0CH]                    ; 2535 _ 8B. 45, 0C
        mov     eax, dword [eax+10H]                    ; 2538 _ 8B. 40, 10
        mov     dword [ebp-0CH], eax                    ; 253B _ 89. 45, F4
        mov     eax, dword [ebp+0CH]                    ; 253E _ 8B. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 2541 _ 8B. 55, 10
        mov     dword [eax+0CH], edx                    ; 2544 _ 89. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 2547 _ 8B. 45, 0C
        mov     edx, dword [ebp+14H]                    ; 254A _ 8B. 55, 14
        mov     dword [eax+10H], edx                    ; 254D _ 89. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 2550 _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 2553 _ 8B. 40, 18
        test    eax, eax                                ; 2556 _ 85. C0
        js      ?_118                                   ; 2558 _ 0F 88, 000000D3
        mov     eax, dword [ebp+0CH]                    ; 255E _ 8B. 45, 0C
        mov     edx, dword [eax+8H]                     ; 2561 _ 8B. 50, 08
        mov     eax, dword [ebp-0CH]                    ; 2564 _ 8B. 45, F4
        add     edx, eax                                ; 2567 _ 01. C2
        mov     eax, dword [ebp+0CH]                    ; 2569 _ 8B. 45, 0C
        mov     ecx, dword [eax+4H]                     ; 256C _ 8B. 48, 04
        mov     eax, dword [ebp-10H]                    ; 256F _ 8B. 45, F0
        add     eax, ecx                                ; 2572 _ 01. C8
        sub     esp, 8                                  ; 2574 _ 83. EC, 08
        push    0                                       ; 2577 _ 6A, 00
        push    edx                                     ; 2579 _ 52
        push    eax                                     ; 257A _ 50
        push    dword [ebp-0CH]                         ; 257B _ FF. 75, F4
        push    dword [ebp-10H]                         ; 257E _ FF. 75, F0
        push    dword [ebp+8H]                          ; 2581 _ FF. 75, 08
        call    sheet_refreshmap                        ; 2584 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 2589 _ 83. C4, 20
        mov     eax, dword [ebp+0CH]                    ; 258C _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 258F _ 8B. 40, 18
        mov     edx, dword [ebp+0CH]                    ; 2592 _ 8B. 55, 0C
        mov     ecx, dword [edx+8H]                     ; 2595 _ 8B. 4A, 08
        mov     edx, dword [ebp+14H]                    ; 2598 _ 8B. 55, 14
        add     ecx, edx                                ; 259B _ 01. D1
        mov     edx, dword [ebp+0CH]                    ; 259D _ 8B. 55, 0C
        mov     ebx, dword [edx+4H]                     ; 25A0 _ 8B. 5A, 04
        mov     edx, dword [ebp+10H]                    ; 25A3 _ 8B. 55, 10
        add     edx, ebx                                ; 25A6 _ 01. DA
        sub     esp, 8                                  ; 25A8 _ 83. EC, 08
        push    eax                                     ; 25AB _ 50
        push    ecx                                     ; 25AC _ 51
        push    edx                                     ; 25AD _ 52
        push    dword [ebp+14H]                         ; 25AE _ FF. 75, 14
        push    dword [ebp+10H]                         ; 25B1 _ FF. 75, 10
        push    dword [ebp+8H]                          ; 25B4 _ FF. 75, 08
        call    sheet_refreshmap                        ; 25B7 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 25BC _ 83. C4, 20
        mov     eax, dword [ebp+0CH]                    ; 25BF _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 25C2 _ 8B. 40, 18
        lea     ecx, [eax-1H]                           ; 25C5 _ 8D. 48, FF
        mov     eax, dword [ebp+0CH]                    ; 25C8 _ 8B. 45, 0C
        mov     edx, dword [eax+8H]                     ; 25CB _ 8B. 50, 08
        mov     eax, dword [ebp-0CH]                    ; 25CE _ 8B. 45, F4
        add     edx, eax                                ; 25D1 _ 01. C2
        mov     eax, dword [ebp+0CH]                    ; 25D3 _ 8B. 45, 0C
        mov     ebx, dword [eax+4H]                     ; 25D6 _ 8B. 58, 04
        mov     eax, dword [ebp-10H]                    ; 25D9 _ 8B. 45, F0
        add     eax, ebx                                ; 25DC _ 01. D8
        sub     esp, 4                                  ; 25DE _ 83. EC, 04
        push    ecx                                     ; 25E1 _ 51
        push    0                                       ; 25E2 _ 6A, 00
        push    edx                                     ; 25E4 _ 52
        push    eax                                     ; 25E5 _ 50
        push    dword [ebp-0CH]                         ; 25E6 _ FF. 75, F4
        push    dword [ebp-10H]                         ; 25E9 _ FF. 75, F0
        push    dword [ebp+8H]                          ; 25EC _ FF. 75, 08
        call    sheet_refresh_new                       ; 25EF _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 25F4 _ 83. C4, 20
        mov     eax, dword [ebp+0CH]                    ; 25F7 _ 8B. 45, 0C
        mov     edx, dword [eax+18H]                    ; 25FA _ 8B. 50, 18
        mov     eax, dword [ebp+0CH]                    ; 25FD _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 2600 _ 8B. 40, 18
        mov     ecx, dword [ebp+0CH]                    ; 2603 _ 8B. 4D, 0C
        mov     ebx, dword [ecx+8H]                     ; 2606 _ 8B. 59, 08
        mov     ecx, dword [ebp+14H]                    ; 2609 _ 8B. 4D, 14
        add     ebx, ecx                                ; 260C _ 01. CB
        mov     ecx, dword [ebp+0CH]                    ; 260E _ 8B. 4D, 0C
        mov     esi, dword [ecx+4H]                     ; 2611 _ 8B. 71, 04
        mov     ecx, dword [ebp+10H]                    ; 2614 _ 8B. 4D, 10
        add     ecx, esi                                ; 2617 _ 01. F1
        sub     esp, 4                                  ; 2619 _ 83. EC, 04
        push    edx                                     ; 261C _ 52
        push    eax                                     ; 261D _ 50
        push    ebx                                     ; 261E _ 53
        push    ecx                                     ; 261F _ 51
        push    dword [ebp+14H]                         ; 2620 _ FF. 75, 14
        push    dword [ebp+10H]                         ; 2623 _ FF. 75, 10
        push    dword [ebp+8H]                          ; 2626 _ FF. 75, 08
        call    sheet_refresh_new                       ; 2629 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 262E _ 83. C4, 20
?_118:  nop                                             ; 2631 _ 90
        lea     esp, [ebp-8H]                           ; 2632 _ 8D. 65, F8
        pop     ebx                                     ; 2635 _ 5B
        pop     esi                                     ; 2636 _ 5E
        pop     ebp                                     ; 2637 _ 5D
        ret                                             ; 2638 _ C3
; sheet_slide End of function

sheet_refresh_new:; Function begin
        push    ebp                                     ; 2639 _ 55
        mov     ebp, esp                                ; 263A _ 89. E5
        sub     esp, 48                                 ; 263C _ 83. EC, 30
        mov     eax, dword [ebp+8H]                     ; 263F _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 2642 _ 8B. 00
        mov     dword [ebp-18H], eax                    ; 2644 _ 89. 45, E8
        mov     eax, dword [ebp+8H]                     ; 2647 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 264A _ 8B. 40, 04
        mov     dword [ebp-14H], eax                    ; 264D _ 89. 45, EC
        cmp     dword [ebp+0CH], 0                      ; 2650 _ 83. 7D, 0C, 00
        jns     ?_119                                   ; 2654 _ 79, 07
        mov     dword [ebp+0CH], 0                      ; 2656 _ C7. 45, 0C, 00000000
?_119:  cmp     dword [ebp+10H], 8                      ; 265D _ 83. 7D, 10, 08
        jg      ?_120                                   ; 2661 _ 7F, 07
        mov     dword [ebp+10H], 0                      ; 2663 _ C7. 45, 10, 00000000
?_120:  mov     eax, dword [ebp+8H]                     ; 266A _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 266D _ 8B. 40, 08
        cmp     dword [ebp+14H], eax                    ; 2670 _ 39. 45, 14
        jle     ?_121                                   ; 2673 _ 7E, 09
        mov     eax, dword [ebp+8H]                     ; 2675 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 2678 _ 8B. 40, 08
        mov     dword [ebp+14H], eax                    ; 267B _ 89. 45, 14
?_121:  mov     eax, dword [ebp+8H]                     ; 267E _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 2681 _ 8B. 40, 0C
        cmp     dword [ebp+18H], eax                    ; 2684 _ 39. 45, 18
        jle     ?_122                                   ; 2687 _ 7E, 09
        mov     eax, dword [ebp+8H]                     ; 2689 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 268C _ 8B. 40, 0C
        mov     dword [ebp+18H], eax                    ; 268F _ 89. 45, 18
?_122:  mov     eax, dword [ebp+1CH]                    ; 2692 _ 8B. 45, 1C
        mov     dword [ebp-24H], eax                    ; 2695 _ 89. 45, DC
        jmp     ?_129                                   ; 2698 _ E9, 00000118

?_123:  mov     eax, dword [ebp+8H]                     ; 269D _ 8B. 45, 08
        mov     edx, dword [ebp-24H]                    ; 26A0 _ 8B. 55, DC
        add     edx, 4                                  ; 26A3 _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 26A6 _ 8B. 44 90, 04
        mov     dword [ebp-10H], eax                    ; 26AA _ 89. 45, F0
        mov     eax, dword [ebp-10H]                    ; 26AD _ 8B. 45, F0
        mov     eax, dword [eax]                        ; 26B0 _ 8B. 00
        mov     dword [ebp-0CH], eax                    ; 26B2 _ 89. 45, F4
        mov     eax, dword [ebp-10H]                    ; 26B5 _ 8B. 45, F0
        mov     edx, dword [ebp+8H]                     ; 26B8 _ 8B. 55, 08
        add     edx, 1044                               ; 26BB _ 81. C2, 00000414
        sub     eax, edx                                ; 26C1 _ 29. D0
        sar     eax, 5                                  ; 26C3 _ C1. F8, 05
        mov     byte [ebp-26H], al                      ; 26C6 _ 88. 45, DA
        mov     dword [ebp-20H], 0                      ; 26C9 _ C7. 45, E0, 00000000
        jmp     ?_128                                   ; 26D0 _ E9, 000000CD

?_124:  mov     eax, dword [ebp-10H]                    ; 26D5 _ 8B. 45, F0
        mov     edx, dword [eax+10H]                    ; 26D8 _ 8B. 50, 10
        mov     eax, dword [ebp-20H]                    ; 26DB _ 8B. 45, E0
        add     eax, edx                                ; 26DE _ 01. D0
        mov     dword [ebp-8H], eax                     ; 26E0 _ 89. 45, F8
        mov     dword [ebp-1CH], 0                      ; 26E3 _ C7. 45, E4, 00000000
        jmp     ?_127                                   ; 26EA _ E9, 000000A0

?_125:  mov     eax, dword [ebp-10H]                    ; 26EF _ 8B. 45, F0
        mov     edx, dword [eax+0CH]                    ; 26F2 _ 8B. 50, 0C
        mov     eax, dword [ebp-1CH]                    ; 26F5 _ 8B. 45, E4
        add     eax, edx                                ; 26F8 _ 01. D0
        mov     dword [ebp-4H], eax                     ; 26FA _ 89. 45, FC
        mov     eax, dword [ebp+0CH]                    ; 26FD _ 8B. 45, 0C
        cmp     eax, dword [ebp-4H]                     ; 2700 _ 3B. 45, FC
        jg      ?_126                                   ; 2703 _ 0F 8F, 00000082
        mov     eax, dword [ebp-4H]                     ; 2709 _ 8B. 45, FC
        cmp     eax, dword [ebp+14H]                    ; 270C _ 3B. 45, 14
        jge     ?_126                                   ; 270F _ 7D, 7A
        mov     eax, dword [ebp+10H]                    ; 2711 _ 8B. 45, 10
        cmp     eax, dword [ebp-8H]                     ; 2714 _ 3B. 45, F8
        jg      ?_126                                   ; 2717 _ 7F, 72
        mov     eax, dword [ebp-8H]                     ; 2719 _ 8B. 45, F8
        cmp     eax, dword [ebp+18H]                    ; 271C _ 3B. 45, 18
        jge     ?_126                                   ; 271F _ 7D, 6A
        mov     eax, dword [ebp-10H]                    ; 2721 _ 8B. 45, F0
        mov     eax, dword [eax+4H]                     ; 2724 _ 8B. 40, 04
        imul    eax, dword [ebp-20H]                    ; 2727 _ 0F AF. 45, E0
        mov     edx, eax                                ; 272B _ 89. C2
        mov     eax, dword [ebp-1CH]                    ; 272D _ 8B. 45, E4
        add     eax, edx                                ; 2730 _ 01. D0
        mov     edx, eax                                ; 2732 _ 89. C2
        mov     eax, dword [ebp-0CH]                    ; 2734 _ 8B. 45, F4
        add     eax, edx                                ; 2737 _ 01. D0
        movzx   eax, byte [eax]                         ; 2739 _ 0F B6. 00
        mov     byte [ebp-25H], al                      ; 273C _ 88. 45, DB
        mov     eax, dword [ebp+8H]                     ; 273F _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 2742 _ 8B. 40, 08
        imul    eax, dword [ebp-8H]                     ; 2745 _ 0F AF. 45, F8
        mov     edx, eax                                ; 2749 _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 274B _ 8B. 45, FC
        add     eax, edx                                ; 274E _ 01. D0
        mov     edx, eax                                ; 2750 _ 89. C2
        mov     eax, dword [ebp-14H]                    ; 2752 _ 8B. 45, EC
        add     eax, edx                                ; 2755 _ 01. D0
        movzx   eax, byte [eax]                         ; 2757 _ 0F B6. 00
        cmp     byte [ebp-26H], al                      ; 275A _ 38. 45, DA
        jnz     ?_126                                   ; 275D _ 75, 2C
        movzx   edx, byte [ebp-25H]                     ; 275F _ 0F B6. 55, DB
        mov     eax, dword [ebp-10H]                    ; 2763 _ 8B. 45, F0
        mov     eax, dword [eax+14H]                    ; 2766 _ 8B. 40, 14
        cmp     edx, eax                                ; 2769 _ 39. C2
        jz      ?_126                                   ; 276B _ 74, 1E
        mov     eax, dword [ebp+8H]                     ; 276D _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 2770 _ 8B. 40, 08
        imul    eax, dword [ebp-8H]                     ; 2773 _ 0F AF. 45, F8
        mov     edx, eax                                ; 2777 _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 2779 _ 8B. 45, FC
        add     eax, edx                                ; 277C _ 01. D0
        mov     edx, eax                                ; 277E _ 89. C2
        mov     eax, dword [ebp-18H]                    ; 2780 _ 8B. 45, E8
        add     edx, eax                                ; 2783 _ 01. C2
        movzx   eax, byte [ebp-25H]                     ; 2785 _ 0F B6. 45, DB
        mov     byte [edx], al                          ; 2789 _ 88. 02
?_126:  add     dword [ebp-1CH], 1                      ; 278B _ 83. 45, E4, 01
?_127:  mov     eax, dword [ebp-10H]                    ; 278F _ 8B. 45, F0
        mov     eax, dword [eax+4H]                     ; 2792 _ 8B. 40, 04
        cmp     dword [ebp-1CH], eax                    ; 2795 _ 39. 45, E4
        jl      ?_125                                   ; 2798 _ 0F 8C, FFFFFF51
        add     dword [ebp-20H], 1                      ; 279E _ 83. 45, E0, 01
?_128:  mov     eax, dword [ebp-10H]                    ; 27A2 _ 8B. 45, F0
        mov     eax, dword [eax+8H]                     ; 27A5 _ 8B. 40, 08
        cmp     dword [ebp-20H], eax                    ; 27A8 _ 39. 45, E0
        jl      ?_124                                   ; 27AB _ 0F 8C, FFFFFF24
        add     dword [ebp-24H], 1                      ; 27B1 _ 83. 45, DC, 01
?_129:  mov     eax, dword [ebp-24H]                    ; 27B5 _ 8B. 45, DC
        cmp     eax, dword [ebp+20H]                    ; 27B8 _ 3B. 45, 20
        jle     ?_123                                   ; 27BB _ 0F 8E, FFFFFEDC
        nop                                             ; 27C1 _ 90
        leave                                           ; 27C2 _ C9
        ret                                             ; 27C3 _ C3
; sheet_refresh_new End of function

sheet_refreshmap:; Function begin
        push    ebp                                     ; 27C4 _ 55
        mov     ebp, esp                                ; 27C5 _ 89. E5
        sub     esp, 64                                 ; 27C7 _ 83. EC, 40
        mov     eax, dword [ebp+8H]                     ; 27CA _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 27CD _ 8B. 40, 04
        mov     dword [ebp-14H], eax                    ; 27D0 _ 89. 45, EC
        cmp     dword [ebp+0CH], 0                      ; 27D3 _ 83. 7D, 0C, 00
        jns     ?_130                                   ; 27D7 _ 79, 07
        mov     dword [ebp+0CH], 0                      ; 27D9 _ C7. 45, 0C, 00000000
?_130:  mov     eax, dword [ebp+8H]                     ; 27E0 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 27E3 _ 8B. 40, 08
        cmp     dword [ebp+0CH], eax                    ; 27E6 _ 39. 45, 0C
        jle     ?_131                                   ; 27E9 _ 7E, 09
        mov     eax, dword [ebp+8H]                     ; 27EB _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 27EE _ 8B. 40, 08
        mov     dword [ebp+0CH], eax                    ; 27F1 _ 89. 45, 0C
?_131:  cmp     dword [ebp+10H], 0                      ; 27F4 _ 83. 7D, 10, 00
        jns     ?_132                                   ; 27F8 _ 79, 07
        mov     dword [ebp+10H], 0                      ; 27FA _ C7. 45, 10, 00000000
?_132:  mov     eax, dword [ebp+8H]                     ; 2801 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 2804 _ 8B. 40, 0C
        cmp     dword [ebp+10H], eax                    ; 2807 _ 39. 45, 10
        jle     ?_133                                   ; 280A _ 7E, 09
        mov     eax, dword [ebp+8H]                     ; 280C _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 280F _ 8B. 40, 0C
        mov     dword [ebp+10H], eax                    ; 2812 _ 89. 45, 10
?_133:  mov     eax, dword [ebp+1CH]                    ; 2815 _ 8B. 45, 1C
        mov     dword [ebp-20H], eax                    ; 2818 _ 89. 45, E0
        jmp     ?_144                                   ; 281B _ E9, 00000140

?_134:  mov     eax, dword [ebp+8H]                     ; 2820 _ 8B. 45, 08
        mov     edx, dword [ebp-20H]                    ; 2823 _ 8B. 55, E0
        add     edx, 4                                  ; 2826 _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 2829 _ 8B. 44 90, 04
        mov     dword [ebp-10H], eax                    ; 282D _ 89. 45, F0
        mov     eax, dword [ebp-10H]                    ; 2830 _ 8B. 45, F0
        mov     edx, dword [ebp+8H]                     ; 2833 _ 8B. 55, 08
        add     edx, 1044                               ; 2836 _ 81. C2, 00000414
        sub     eax, edx                                ; 283C _ 29. D0
        sar     eax, 5                                  ; 283E _ C1. F8, 05
        mov     byte [ebp-31H], al                      ; 2841 _ 88. 45, CF
        mov     eax, dword [ebp-10H]                    ; 2844 _ 8B. 45, F0
        mov     eax, dword [eax]                        ; 2847 _ 8B. 00
        mov     dword [ebp-0CH], eax                    ; 2849 _ 89. 45, F4
        mov     eax, dword [ebp-10H]                    ; 284C _ 8B. 45, F0
        mov     eax, dword [eax+0CH]                    ; 284F _ 8B. 40, 0C
        mov     edx, dword [ebp+0CH]                    ; 2852 _ 8B. 55, 0C
        sub     edx, eax                                ; 2855 _ 29. C2
        mov     eax, edx                                ; 2857 _ 89. D0
        mov     dword [ebp-30H], eax                    ; 2859 _ 89. 45, D0
        mov     eax, dword [ebp-10H]                    ; 285C _ 8B. 45, F0
        mov     eax, dword [eax+10H]                    ; 285F _ 8B. 40, 10
        mov     edx, dword [ebp+10H]                    ; 2862 _ 8B. 55, 10
        sub     edx, eax                                ; 2865 _ 29. C2
        mov     eax, edx                                ; 2867 _ 89. D0
        mov     dword [ebp-2CH], eax                    ; 2869 _ 89. 45, D4
        mov     eax, dword [ebp-10H]                    ; 286C _ 8B. 45, F0
        mov     eax, dword [eax+0CH]                    ; 286F _ 8B. 40, 0C
        mov     edx, dword [ebp+14H]                    ; 2872 _ 8B. 55, 14
        sub     edx, eax                                ; 2875 _ 29. C2
        mov     eax, edx                                ; 2877 _ 89. D0
        mov     dword [ebp-28H], eax                    ; 2879 _ 89. 45, D8
        mov     eax, dword [ebp-10H]                    ; 287C _ 8B. 45, F0
        mov     eax, dword [eax+10H]                    ; 287F _ 8B. 40, 10
        mov     edx, dword [ebp+18H]                    ; 2882 _ 8B. 55, 18
        sub     edx, eax                                ; 2885 _ 29. C2
        mov     eax, edx                                ; 2887 _ 89. D0
        mov     dword [ebp-24H], eax                    ; 2889 _ 89. 45, DC
        cmp     dword [ebp-30H], 0                      ; 288C _ 83. 7D, D0, 00
        jns     ?_135                                   ; 2890 _ 79, 07
        mov     dword [ebp-30H], 0                      ; 2892 _ C7. 45, D0, 00000000
?_135:  cmp     dword [ebp-2CH], 0                      ; 2899 _ 83. 7D, D4, 00
        jns     ?_136                                   ; 289D _ 79, 07
        mov     dword [ebp-2CH], 0                      ; 289F _ C7. 45, D4, 00000000
?_136:  mov     eax, dword [ebp-10H]                    ; 28A6 _ 8B. 45, F0
        mov     eax, dword [eax+4H]                     ; 28A9 _ 8B. 40, 04
        cmp     dword [ebp-28H], eax                    ; 28AC _ 39. 45, D8
        jle     ?_137                                   ; 28AF _ 7E, 09
        mov     eax, dword [ebp-10H]                    ; 28B1 _ 8B. 45, F0
        mov     eax, dword [eax+4H]                     ; 28B4 _ 8B. 40, 04
        mov     dword [ebp-28H], eax                    ; 28B7 _ 89. 45, D8
?_137:  mov     eax, dword [ebp-10H]                    ; 28BA _ 8B. 45, F0
        mov     eax, dword [eax+8H]                     ; 28BD _ 8B. 40, 08
        cmp     dword [ebp-24H], eax                    ; 28C0 _ 39. 45, DC
        jle     ?_138                                   ; 28C3 _ 7E, 09
        mov     eax, dword [ebp-10H]                    ; 28C5 _ 8B. 45, F0
        mov     eax, dword [eax+8H]                     ; 28C8 _ 8B. 40, 08
        mov     dword [ebp-24H], eax                    ; 28CB _ 89. 45, DC
?_138:  mov     eax, dword [ebp-2CH]                    ; 28CE _ 8B. 45, D4
        mov     dword [ebp-1CH], eax                    ; 28D1 _ 89. 45, E4
        jmp     ?_143                                   ; 28D4 _ EB, 7A

?_139:  mov     eax, dword [ebp-10H]                    ; 28D6 _ 8B. 45, F0
        mov     edx, dword [eax+10H]                    ; 28D9 _ 8B. 50, 10
        mov     eax, dword [ebp-1CH]                    ; 28DC _ 8B. 45, E4
        add     eax, edx                                ; 28DF _ 01. D0
        mov     dword [ebp-8H], eax                     ; 28E1 _ 89. 45, F8
        mov     eax, dword [ebp-30H]                    ; 28E4 _ 8B. 45, D0
        mov     dword [ebp-18H], eax                    ; 28E7 _ 89. 45, E8
        jmp     ?_142                                   ; 28EA _ EB, 58

?_140:  mov     eax, dword [ebp-10H]                    ; 28EC _ 8B. 45, F0
        mov     edx, dword [eax+0CH]                    ; 28EF _ 8B. 50, 0C
        mov     eax, dword [ebp-18H]                    ; 28F2 _ 8B. 45, E8
        add     eax, edx                                ; 28F5 _ 01. D0
        mov     dword [ebp-4H], eax                     ; 28F7 _ 89. 45, FC
        mov     eax, dword [ebp-10H]                    ; 28FA _ 8B. 45, F0
        mov     eax, dword [eax+4H]                     ; 28FD _ 8B. 40, 04
        imul    eax, dword [ebp-1CH]                    ; 2900 _ 0F AF. 45, E4
        mov     edx, eax                                ; 2904 _ 89. C2
        mov     eax, dword [ebp-18H]                    ; 2906 _ 8B. 45, E8
        add     eax, edx                                ; 2909 _ 01. D0
        mov     edx, eax                                ; 290B _ 89. C2
        mov     eax, dword [ebp-0CH]                    ; 290D _ 8B. 45, F4
        add     eax, edx                                ; 2910 _ 01. D0
        movzx   eax, byte [eax]                         ; 2912 _ 0F B6. 00
        movzx   edx, al                                 ; 2915 _ 0F B6. D0
        mov     eax, dword [ebp-10H]                    ; 2918 _ 8B. 45, F0
        mov     eax, dword [eax+14H]                    ; 291B _ 8B. 40, 14
        cmp     edx, eax                                ; 291E _ 39. C2
        jz      ?_141                                   ; 2920 _ 74, 1E
        mov     eax, dword [ebp+8H]                     ; 2922 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 2925 _ 8B. 40, 08
        imul    eax, dword [ebp-8H]                     ; 2928 _ 0F AF. 45, F8
        mov     edx, eax                                ; 292C _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 292E _ 8B. 45, FC
        add     eax, edx                                ; 2931 _ 01. D0
        mov     edx, eax                                ; 2933 _ 89. C2
        mov     eax, dword [ebp-14H]                    ; 2935 _ 8B. 45, EC
        add     edx, eax                                ; 2938 _ 01. C2
        movzx   eax, byte [ebp-31H]                     ; 293A _ 0F B6. 45, CF
        mov     byte [edx], al                          ; 293E _ 88. 02
?_141:  add     dword [ebp-18H], 1                      ; 2940 _ 83. 45, E8, 01
?_142:  mov     eax, dword [ebp-18H]                    ; 2944 _ 8B. 45, E8
        cmp     eax, dword [ebp-28H]                    ; 2947 _ 3B. 45, D8
        jl      ?_140                                   ; 294A _ 7C, A0
        add     dword [ebp-1CH], 1                      ; 294C _ 83. 45, E4, 01
?_143:  mov     eax, dword [ebp-1CH]                    ; 2950 _ 8B. 45, E4
        cmp     eax, dword [ebp-24H]                    ; 2953 _ 3B. 45, DC
        jl      ?_139                                   ; 2956 _ 0F 8C, FFFFFF7A
        add     dword [ebp-20H], 1                      ; 295C _ 83. 45, E0, 01
?_144:  mov     eax, dword [ebp+8H]                     ; 2960 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 2963 _ 8B. 40, 10
        cmp     dword [ebp-20H], eax                    ; 2966 _ 39. 45, E0
        jle     ?_134                                   ; 2969 _ 0F 8E, FFFFFEB1
        nop                                             ; 296F _ 90
        leave                                           ; 2970 _ C9
        ret                                             ; 2971 _ C3
; sheet_refreshmap End of function

init_pit:; Function begin
        push    ebp                                     ; 2972 _ 55
        mov     ebp, esp                                ; 2973 _ 89. E5
        sub     esp, 24                                 ; 2975 _ 83. EC, 18
        sub     esp, 8                                  ; 2978 _ 83. EC, 08
        push    52                                      ; 297B _ 6A, 34
        push    67                                      ; 297D _ 6A, 43
        call    io_out8                                 ; 297F _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 2984 _ 83. C4, 10
        sub     esp, 8                                  ; 2987 _ 83. EC, 08
        push    156                                     ; 298A _ 68, 0000009C
        push    64                                      ; 298F _ 6A, 40
        call    io_out8                                 ; 2991 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 2996 _ 83. C4, 10
        sub     esp, 8                                  ; 2999 _ 83. EC, 08
        push    46                                      ; 299C _ 6A, 2E
        push    64                                      ; 299E _ 6A, 40
        call    io_out8                                 ; 29A0 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 29A5 _ 83. C4, 10
        mov     dword [timerctl], 0                     ; 29A8 _ C7. 05, 00000280(d), 00000000
        mov     dword [ebp-0CH], 0                      ; 29B2 _ C7. 45, F4, 00000000
        jmp     ?_146                                   ; 29B9 _ EB, 15

?_145:  mov     eax, dword [ebp-0CH]                    ; 29BB _ 8B. 45, F4
        shl     eax, 4                                  ; 29BE _ C1. E0, 04
        add     eax, ?_179                              ; 29C1 _ 05, 00000288(d)
        mov     dword [eax], 0                          ; 29C6 _ C7. 00, 00000000
        add     dword [ebp-0CH], 1                      ; 29CC _ 83. 45, F4, 01
?_146:  cmp     dword [ebp-0CH], 499                    ; 29D0 _ 81. 7D, F4, 000001F3
        jle     ?_145                                   ; 29D7 _ 7E, E2
        nop                                             ; 29D9 _ 90
        leave                                           ; 29DA _ C9
        ret                                             ; 29DB _ C3
; init_pit End of function

timer_alloc:; Function begin
        push    ebp                                     ; 29DC _ 55
        mov     ebp, esp                                ; 29DD _ 89. E5
        sub     esp, 16                                 ; 29DF _ 83. EC, 10
        mov     dword [ebp-4H], 0                       ; 29E2 _ C7. 45, FC, 00000000
        jmp     ?_149                                   ; 29E9 _ EB, 36

?_147:  mov     eax, dword [ebp-4H]                     ; 29EB _ 8B. 45, FC
        shl     eax, 4                                  ; 29EE _ C1. E0, 04
        add     eax, ?_179                              ; 29F1 _ 05, 00000288(d)
        mov     eax, dword [eax]                        ; 29F6 _ 8B. 00
        test    eax, eax                                ; 29F8 _ 85. C0
        jnz     ?_148                                   ; 29FA _ 75, 21
        mov     eax, dword [ebp-4H]                     ; 29FC _ 8B. 45, FC
        shl     eax, 4                                  ; 29FF _ C1. E0, 04
        add     eax, ?_179                              ; 2A02 _ 05, 00000288(d)
        mov     dword [eax], 1                          ; 2A07 _ C7. 00, 00000001
        mov     eax, dword [ebp-4H]                     ; 2A0D _ 8B. 45, FC
        shl     eax, 4                                  ; 2A10 _ C1. E0, 04
        add     eax, timerctl                           ; 2A13 _ 05, 00000280(d)
        add     eax, 4                                  ; 2A18 _ 83. C0, 04
        jmp     ?_150                                   ; 2A1B _ EB, 12

?_148:  add     dword [ebp-4H], 1                       ; 2A1D _ 83. 45, FC, 01
?_149:  cmp     dword [ebp-4H], 499                     ; 2A21 _ 81. 7D, FC, 000001F3
        jle     ?_147                                   ; 2A28 _ 7E, C1
        mov     eax, 0                                  ; 2A2A _ B8, 00000000
?_150:  leave                                           ; 2A2F _ C9
        ret                                             ; 2A30 _ C3
; timer_alloc End of function

timer_free:; Function begin
        push    ebp                                     ; 2A31 _ 55
        mov     ebp, esp                                ; 2A32 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 2A34 _ 8B. 45, 08
        mov     dword [eax+4H], 0                       ; 2A37 _ C7. 40, 04, 00000000
        nop                                             ; 2A3E _ 90
        pop     ebp                                     ; 2A3F _ 5D
        ret                                             ; 2A40 _ C3
; timer_free End of function

timer_init:; Function begin
        push    ebp                                     ; 2A41 _ 55
        mov     ebp, esp                                ; 2A42 _ 89. E5
        sub     esp, 4                                  ; 2A44 _ 83. EC, 04
        mov     eax, dword [ebp+10H]                    ; 2A47 _ 8B. 45, 10
        mov     byte [ebp-4H], al                       ; 2A4A _ 88. 45, FC
        mov     eax, dword [ebp+8H]                     ; 2A4D _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 2A50 _ 8B. 55, 0C
        mov     dword [eax+8H], edx                     ; 2A53 _ 89. 50, 08
        mov     eax, dword [ebp+8H]                     ; 2A56 _ 8B. 45, 08
        movzx   edx, byte [ebp-4H]                      ; 2A59 _ 0F B6. 55, FC
        mov     byte [eax+0CH], dl                      ; 2A5D _ 88. 50, 0C
        nop                                             ; 2A60 _ 90
        leave                                           ; 2A61 _ C9
        ret                                             ; 2A62 _ C3
; timer_init End of function

timer_setTime:; Function begin
        push    ebp                                     ; 2A63 _ 55
        mov     ebp, esp                                ; 2A64 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 2A66 _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 2A69 _ 8B. 55, 0C
        mov     dword [eax], edx                        ; 2A6C _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 2A6E _ 8B. 45, 08
        mov     dword [eax+4H], 2                       ; 2A71 _ C7. 40, 04, 00000002
        nop                                             ; 2A78 _ 90
        pop     ebp                                     ; 2A79 _ 5D
        ret                                             ; 2A7A _ C3
; timer_setTime End of function

getTimerController:; Function begin
        push    ebp                                     ; 2A7B _ 55
        mov     ebp, esp                                ; 2A7C _ 89. E5
        mov     eax, timerctl                           ; 2A7E _ B8, 00000280(d)
        pop     ebp                                     ; 2A83 _ 5D
        ret                                             ; 2A84 _ C3
; getTimerController End of function

intHandlerForTimer:; Function begin
        push    ebp                                     ; 2A85 _ 55
        mov     ebp, esp                                ; 2A86 _ 89. E5
        sub     esp, 24                                 ; 2A88 _ 83. EC, 18
        sub     esp, 8                                  ; 2A8B _ 83. EC, 08
        push    96                                      ; 2A8E _ 6A, 60
        push    32                                      ; 2A90 _ 6A, 20
        call    io_out8                                 ; 2A92 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 2A97 _ 83. C4, 10
        mov     eax, dword [timerctl]                   ; 2A9A _ A1, 00000280(d)
        add     eax, 1                                  ; 2A9F _ 83. C0, 01
        mov     dword [timerctl], eax                   ; 2AA2 _ A3, 00000280(d)
        mov     dword [ebp-0CH], 0                      ; 2AA7 _ C7. 45, F4, 00000000
        jmp     ?_153                                   ; 2AAE _ E9, 00000080

?_151:  mov     eax, dword [ebp-0CH]                    ; 2AB3 _ 8B. 45, F4
        shl     eax, 4                                  ; 2AB6 _ C1. E0, 04
        add     eax, ?_179                              ; 2AB9 _ 05, 00000288(d)
        mov     eax, dword [eax]                        ; 2ABE _ 8B. 00
        cmp     eax, 2                                  ; 2AC0 _ 83. F8, 02
        jnz     ?_152                                   ; 2AC3 _ 75, 6A
        mov     eax, dword [ebp-0CH]                    ; 2AC5 _ 8B. 45, F4
        shl     eax, 4                                  ; 2AC8 _ C1. E0, 04
        add     eax, ?_178                              ; 2ACB _ 05, 00000284(d)
        mov     eax, dword [eax]                        ; 2AD0 _ 8B. 00
        lea     edx, [eax-1H]                           ; 2AD2 _ 8D. 50, FF
        mov     eax, dword [ebp-0CH]                    ; 2AD5 _ 8B. 45, F4
        shl     eax, 4                                  ; 2AD8 _ C1. E0, 04
        add     eax, ?_178                              ; 2ADB _ 05, 00000284(d)
        mov     dword [eax], edx                        ; 2AE0 _ 89. 10
        mov     eax, dword [ebp-0CH]                    ; 2AE2 _ 8B. 45, F4
        shl     eax, 4                                  ; 2AE5 _ C1. E0, 04
        add     eax, ?_178                              ; 2AE8 _ 05, 00000284(d)
        mov     eax, dword [eax]                        ; 2AED _ 8B. 00
        test    eax, eax                                ; 2AEF _ 85. C0
        jnz     ?_152                                   ; 2AF1 _ 75, 3C
        mov     eax, dword [ebp-0CH]                    ; 2AF3 _ 8B. 45, F4
        shl     eax, 4                                  ; 2AF6 _ C1. E0, 04
        add     eax, ?_179                              ; 2AF9 _ 05, 00000288(d)
        mov     dword [eax], 1                          ; 2AFE _ C7. 00, 00000001
        mov     eax, dword [ebp-0CH]                    ; 2B04 _ 8B. 45, F4
        shl     eax, 4                                  ; 2B07 _ C1. E0, 04
        add     eax, ?_181                              ; 2B0A _ 05, 00000290(d)
        movzx   eax, byte [eax]                         ; 2B0F _ 0F B6. 00
        movzx   edx, al                                 ; 2B12 _ 0F B6. D0
        mov     eax, dword [ebp-0CH]                    ; 2B15 _ 8B. 45, F4
        shl     eax, 4                                  ; 2B18 _ C1. E0, 04
        add     eax, ?_180                              ; 2B1B _ 05, 0000028C(d)
        mov     eax, dword [eax]                        ; 2B20 _ 8B. 00
        sub     esp, 8                                  ; 2B22 _ 83. EC, 08
        push    edx                                     ; 2B25 _ 52
        push    eax                                     ; 2B26 _ 50
        call    fifo8_put                               ; 2B27 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 2B2C _ 83. C4, 10
?_152:  add     dword [ebp-0CH], 1                      ; 2B2F _ 83. 45, F4, 01
?_153:  cmp     dword [ebp-0CH], 499                    ; 2B33 _ 81. 7D, F4, 000001F3
        jle     ?_151                                   ; 2B3A _ 0F 8E, FFFFFF73
        nop                                             ; 2B40 _ 90
        leave                                           ; 2B41 _ C9
        ret                                             ; 2B42 _ C3
; intHandlerForTimer End of function

fifo8_init:; Function begin
        push    ebp                                     ; 2B43 _ 55
        mov     ebp, esp                                ; 2B44 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 2B46 _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 2B49 _ 8B. 55, 0C
        mov     dword [eax+0CH], edx                    ; 2B4C _ 89. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 2B4F _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 2B52 _ 8B. 55, 10
        mov     dword [eax], edx                        ; 2B55 _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 2B57 _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 2B5A _ 8B. 55, 0C
        mov     dword [eax+10H], edx                    ; 2B5D _ 89. 50, 10
        mov     eax, dword [ebp+8H]                     ; 2B60 _ 8B. 45, 08
        mov     dword [eax+4H], 0                       ; 2B63 _ C7. 40, 04, 00000000
        mov     eax, dword [ebp+8H]                     ; 2B6A _ 8B. 45, 08
        mov     dword [eax+8H], 0                       ; 2B6D _ C7. 40, 08, 00000000
        mov     eax, dword [ebp+8H]                     ; 2B74 _ 8B. 45, 08
        mov     dword [eax+14H], 0                      ; 2B77 _ C7. 40, 14, 00000000
        nop                                             ; 2B7E _ 90
        pop     ebp                                     ; 2B7F _ 5D
        ret                                             ; 2B80 _ C3
; fifo8_init End of function

fifo8_put:; Function begin
        push    ebp                                     ; 2B81 _ 55
        mov     ebp, esp                                ; 2B82 _ 89. E5
        sub     esp, 4                                  ; 2B84 _ 83. EC, 04
        mov     eax, dword [ebp+0CH]                    ; 2B87 _ 8B. 45, 0C
        mov     byte [ebp-4H], al                       ; 2B8A _ 88. 45, FC
        mov     eax, dword [ebp+8H]                     ; 2B8D _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 2B90 _ 8B. 40, 10
        test    eax, eax                                ; 2B93 _ 85. C0
        jnz     ?_154                                   ; 2B95 _ 75, 18
        mov     eax, dword [ebp+8H]                     ; 2B97 _ 8B. 45, 08
        mov     eax, dword [eax+14H]                    ; 2B9A _ 8B. 40, 14
        or      eax, 01H                                ; 2B9D _ 83. C8, 01
        mov     edx, eax                                ; 2BA0 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 2BA2 _ 8B. 45, 08
        mov     dword [eax+14H], edx                    ; 2BA5 _ 89. 50, 14
        mov     eax, 4294967295                         ; 2BA8 _ B8, FFFFFFFF
        jmp     ?_156                                   ; 2BAD _ EB, 50

?_154:  mov     eax, dword [ebp+8H]                     ; 2BAF _ 8B. 45, 08
        mov     edx, dword [eax]                        ; 2BB2 _ 8B. 10
        mov     eax, dword [ebp+8H]                     ; 2BB4 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 2BB7 _ 8B. 40, 08
        add     edx, eax                                ; 2BBA _ 01. C2
        movzx   eax, byte [ebp-4H]                      ; 2BBC _ 0F B6. 45, FC
        mov     byte [edx], al                          ; 2BC0 _ 88. 02
        mov     eax, dword [ebp+8H]                     ; 2BC2 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 2BC5 _ 8B. 40, 08
        lea     edx, [eax+1H]                           ; 2BC8 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 2BCB _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 2BCE _ 89. 50, 08
        mov     eax, dword [ebp+8H]                     ; 2BD1 _ 8B. 45, 08
        mov     edx, dword [eax+8H]                     ; 2BD4 _ 8B. 50, 08
        mov     eax, dword [ebp+8H]                     ; 2BD7 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 2BDA _ 8B. 40, 0C
        cmp     edx, eax                                ; 2BDD _ 39. C2
        jl      ?_155                                   ; 2BDF _ 7C, 0A
        mov     eax, dword [ebp+8H]                     ; 2BE1 _ 8B. 45, 08
        mov     dword [eax+8H], 0                       ; 2BE4 _ C7. 40, 08, 00000000
?_155:  mov     eax, dword [ebp+8H]                     ; 2BEB _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 2BEE _ 8B. 40, 10
        lea     edx, [eax-1H]                           ; 2BF1 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 2BF4 _ 8B. 45, 08
        mov     dword [eax+10H], edx                    ; 2BF7 _ 89. 50, 10
        mov     eax, 1                                  ; 2BFA _ B8, 00000001
?_156:  leave                                           ; 2BFF _ C9
        ret                                             ; 2C00 _ C3
; fifo8_put End of function

fifo8_get:; Function begin
        push    ebp                                     ; 2C01 _ 55
        mov     ebp, esp                                ; 2C02 _ 89. E5
        sub     esp, 16                                 ; 2C04 _ 83. EC, 10
        mov     eax, dword [ebp+8H]                     ; 2C07 _ 8B. 45, 08
        mov     edx, dword [eax+10H]                    ; 2C0A _ 8B. 50, 10
        mov     eax, dword [ebp+8H]                     ; 2C0D _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 2C10 _ 8B. 40, 0C
        cmp     edx, eax                                ; 2C13 _ 39. C2
        jnz     ?_157                                   ; 2C15 _ 75, 07
        mov     eax, 4294967295                         ; 2C17 _ B8, FFFFFFFF
        jmp     ?_159                                   ; 2C1C _ EB, 51

?_157:  mov     eax, dword [ebp+8H]                     ; 2C1E _ 8B. 45, 08
        mov     edx, dword [eax]                        ; 2C21 _ 8B. 10
        mov     eax, dword [ebp+8H]                     ; 2C23 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 2C26 _ 8B. 40, 04
        add     eax, edx                                ; 2C29 _ 01. D0
        movzx   eax, byte [eax]                         ; 2C2B _ 0F B6. 00
        movzx   eax, al                                 ; 2C2E _ 0F B6. C0
        mov     dword [ebp-4H], eax                     ; 2C31 _ 89. 45, FC
        mov     eax, dword [ebp+8H]                     ; 2C34 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 2C37 _ 8B. 40, 04
        lea     edx, [eax+1H]                           ; 2C3A _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 2C3D _ 8B. 45, 08
        mov     dword [eax+4H], edx                     ; 2C40 _ 89. 50, 04
        mov     eax, dword [ebp+8H]                     ; 2C43 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 2C46 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 2C49 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 2C4C _ 8B. 40, 0C
        cmp     edx, eax                                ; 2C4F _ 39. C2
        jl      ?_158                                   ; 2C51 _ 7C, 0A
        mov     eax, dword [ebp+8H]                     ; 2C53 _ 8B. 45, 08
        mov     dword [eax+4H], 0                       ; 2C56 _ C7. 40, 04, 00000000
?_158:  mov     eax, dword [ebp+8H]                     ; 2C5D _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 2C60 _ 8B. 40, 10
        lea     edx, [eax+1H]                           ; 2C63 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 2C66 _ 8B. 45, 08
        mov     dword [eax+10H], edx                    ; 2C69 _ 89. 50, 10
        mov     eax, dword [ebp-4H]                     ; 2C6C _ 8B. 45, FC
?_159:  leave                                           ; 2C6F _ C9
        ret                                             ; 2C70 _ C3
; fifo8_get End of function

fifo8_status:; Function begin
        push    ebp                                     ; 2C71 _ 55
        mov     ebp, esp                                ; 2C72 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 2C74 _ 8B. 45, 08
        mov     edx, dword [eax+0CH]                    ; 2C77 _ 8B. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 2C7A _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 2C7D _ 8B. 40, 10
        sub     edx, eax                                ; 2C80 _ 29. C2
        mov     eax, edx                                ; 2C82 _ 89. D0
        pop     ebp                                     ; 2C84 _ 5D
        ret                                             ; 2C85 _ C3
; fifo8_status End of function



?_160:                                                  ; byte
        db 54H, 6FH, 74H, 61H, 6CH, 20H, 4DH, 65H       ; 0000 _ Total Me
        db 6DH, 20H, 53H, 69H, 7AH, 65H, 20H, 69H       ; 0008 _ m Size i
        db 73H, 3AH, 20H, 00H                           ; 0010 _ s: .

?_161:                                                  ; byte
        db 4DH, 42H, 00H                                ; 0014 _ MB.

?_162:                                                  ; byte
        db 43H, 6FH, 75H, 6EH, 74H, 65H, 72H, 00H       ; 0017 _ Counter.

?_163:                                                  ; byte
        db 35H, 5BH, 73H, 65H, 63H, 73H, 5DH, 00H       ; 001F _ 5[secs].

?_164:                                                  ; byte
        db 33H, 5BH, 73H, 65H, 63H, 73H, 5DH, 00H       ; 0027 _ 3[secs].

?_165:                                                  ; byte
        db 50H, 61H, 67H, 65H, 20H, 69H, 73H, 3AH       ; 002F _ Page is:
        db 20H, 00H                                     ; 0037 _  .

?_166:                                                  ; byte
        db 42H, 61H, 73H, 65H, 41H, 64H, 64H, 72H       ; 0039 _ BaseAddr
        db 4CH, 6FH, 77H, 3AH, 20H, 00H                 ; 0041 _ Low: .

?_167:                                                  ; byte
        db 42H, 61H, 73H, 65H, 41H, 64H, 64H, 72H       ; 0047 _ BaseAddr
        db 48H, 69H, 67H, 68H, 3AH, 20H, 00H            ; 004F _ High: .

?_168:                                                  ; byte
        db 4CH, 65H, 6EH, 67H, 74H, 68H, 4CH, 6FH       ; 0056 _ LengthLo
        db 77H, 3AH, 20H, 00H                           ; 005E _ w: .

?_169:                                                  ; byte
        db 4CH, 65H, 6EH, 67H, 74H, 68H, 48H, 69H       ; 0062 _ LengthHi
        db 67H, 68H, 3AH, 20H, 00H                      ; 006A _ gh: .

?_170:                                                  ; byte
        db 54H, 79H, 70H, 65H, 3AH, 20H, 00H            ; 006F _ Type: .



keyVal:                                                 ; byte
        db 30H, 78H                                     ; 0000 _ 0x

?_171:  db 00H                                          ; 0002 _ .

?_172:  db 00H, 00H, 00H, 00H, 00H                      ; 0003 _ .....

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

table_rgb.1744:                                         ; byte
        db 00H, 00H, 00H, 0FFH, 00H, 00H, 00H, 0FFH     ; 0080 _ ........
        db 00H, 0FFH, 0FFH, 00H, 00H, 00H, 0FFH, 0FFH   ; 0088 _ ........
        db 00H, 0FFH, 00H, 0FFH, 0FFH, 0FFH, 0FFH, 0FFH ; 0090 _ ........
        db 0C6H, 0C6H, 0C6H, 84H, 00H, 00H, 00H, 84H    ; 0098 _ ........
        db 00H, 84H, 84H, 00H, 00H, 00H, 84H, 84H       ; 00A0 _ ........
        db 00H, 84H, 00H, 78H, 0D7H, 84H, 84H, 84H      ; 00A8 _ ...x....
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 00B0 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 00B8 _ ........

cursor.1799:                                            ; byte
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

closebtn.1923:                                          ; byte
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

?_173:  resw    1                                       ; 0004

?_174:  resw    1                                       ; 0006

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

?_175:  resd    1                                       ; 00EC

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

cnt.1706: resd  1                                       ; 0264

line.1710:                                              ; dword
        resd    1                                       ; 0268

str.1842:                                               ; byte
        resb    1                                       ; 026C

?_176:  resb    9                                       ; 026D

?_177:  resb    2                                       ; 0276

line.1875:                                              ; dword
        resd    1                                       ; 0278

pos.1874: resd  1                                       ; 027C

timerctl:                                               ; byte
        resd    1                                       ; 0280

?_178:                                                  ; byte
        resb    4                                       ; 0284

?_179:                                                  ; byte
        resb    4                                       ; 0288

?_180:                                                  ; byte
        resb    4                                       ; 028C

?_181:                                                  ; byte
        resb    7988                                    ; 0290


