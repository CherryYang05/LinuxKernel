; Disassembly of file: ckernel.o
; Sat Mar 13 15:03:30 2021
; Mode: 32 bits
; Syntax: YASM/NASM
; Instruction set: 80386






CMain:  ; Function begin
        push    ebp                                     ; 0000 _ 55
        mov     ebp, esp                                ; 0001 _ 89. E5
        push    ebx                                     ; 0003 _ 53
        sub     esp, 36                                 ; 0004 _ 83. EC, 24
        sub     esp, 12                                 ; 0007 _ 83. EC, 0C
        push    bootInfo                                ; 000A _ 68, 00000000(d)
        call    initBootInfo                            ; 000F _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0014 _ 83. C4, 10
        mov     eax, dword [bootInfo]                   ; 0017 _ A1, 00000000(d)
        mov     dword [ebp-24H], eax                    ; 001C _ 89. 45, DC
        movzx   eax, word [?_126]                       ; 001F _ 0F B7. 05, 00000004(d)
        cwde                                            ; 0026 _ 98
        mov     dword [xsize], eax                      ; 0027 _ A3, 000000F8(d)
        movzx   eax, word [?_127]                       ; 002C _ 0F B7. 05, 00000006(d)
        cwde                                            ; 0033 _ 98
        mov     dword [ysize], eax                      ; 0034 _ A3, 000000FC(d)
        mov     dword [ebp-20H], 0                      ; 0039 _ C7. 45, E0, 00000000
        mov     dword [ebp-1CH], 0                      ; 0040 _ C7. 45, E4, 00000000
        sub     esp, 4                                  ; 0047 _ 83. EC, 04
        push    keybuf                                  ; 004A _ 68, 00000040(d)
        push    32                                      ; 004F _ 6A, 20
        push    keyinfo                                 ; 0051 _ 68, 00000008(d)
        call    fifo8_init                              ; 0056 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 005B _ 83. C4, 10
        sub     esp, 4                                  ; 005E _ 83. EC, 04
        push    mousebuf                                ; 0061 _ 68, 00000060(d)
        push    128                                     ; 0066 _ 68, 00000080
        push    mouseinfo                               ; 006B _ 68, 00000020(d)
        call    fifo8_init                              ; 0070 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0075 _ 83. C4, 10
        call    init_palette                            ; 0078 _ E8, FFFFFFFC(rel)
        call    init_keyboard                           ; 007D _ E8, FFFFFFFC(rel)
        call    get_memory_block_count                  ; 0082 _ E8, FFFFFFFC(rel)
        mov     dword [ebp-18H], eax                    ; 0087 _ 89. 45, E8
        call    get_addr_buffer                         ; 008A _ E8, FFFFFFFC(rel)
        mov     dword [ebp-14H], eax                    ; 008F _ 89. 45, EC
        mov     eax, dword [memman]                     ; 0092 _ A1, 00000000(d)
        sub     esp, 12                                 ; 0097 _ 83. EC, 0C
        push    eax                                     ; 009A _ 50
        call    memman_init                             ; 009B _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 00A0 _ 83. C4, 10
        mov     eax, dword [memman]                     ; 00A3 _ A1, 00000000(d)
        sub     esp, 4                                  ; 00A8 _ 83. EC, 04
        push    1072594944                              ; 00AB _ 68, 3FEE8000
        push    16809984                                ; 00B0 _ 68, 01008000
        push    eax                                     ; 00B5 _ 50
        call    memman_free                             ; 00B6 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 00BB _ 83. C4, 10
        mov     ecx, dword [ysize]                      ; 00BE _ 8B. 0D, 000000FC(d)
        mov     edx, dword [xsize]                      ; 00C4 _ 8B. 15, 000000F8(d)
        mov     eax, dword [memman]                     ; 00CA _ A1, 00000000(d)
        push    ecx                                     ; 00CF _ 51
        push    edx                                     ; 00D0 _ 52
        push    dword [ebp-24H]                         ; 00D1 _ FF. 75, DC
        push    eax                                     ; 00D4 _ 50
        call    shtctl_init                             ; 00D5 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 00DA _ 83. C4, 10
        mov     dword [ebp-10H], eax                    ; 00DD _ 89. 45, F0
        sub     esp, 12                                 ; 00E0 _ 83. EC, 0C
        push    dword [ebp-10H]                         ; 00E3 _ FF. 75, F0
        call    sheet_alloc                             ; 00E6 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 00EB _ 83. C4, 10
        mov     dword [ebp-20H], eax                    ; 00EE _ 89. 45, E0
        sub     esp, 12                                 ; 00F1 _ 83. EC, 0C
        push    dword [ebp-10H]                         ; 00F4 _ FF. 75, F0
        call    sheet_alloc                             ; 00F7 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 00FC _ 83. C4, 10
        mov     dword [ebp-1CH], eax                    ; 00FF _ 89. 45, E4
        mov     edx, dword [xsize]                      ; 0102 _ 8B. 15, 000000F8(d)
        mov     eax, dword [ysize]                      ; 0108 _ A1, 000000FC(d)
        imul    eax, edx                                ; 010D _ 0F AF. C2
        mov     edx, eax                                ; 0110 _ 89. C2
        mov     eax, dword [memman]                     ; 0112 _ A1, 00000000(d)
        sub     esp, 8                                  ; 0117 _ 83. EC, 08
        push    edx                                     ; 011A _ 52
        push    eax                                     ; 011B _ 50
        call    memman_alloc_4K                         ; 011C _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0121 _ 83. C4, 10
        mov     dword [buf_back], eax                   ; 0124 _ A3, 00000100(d)
        mov     ecx, dword [ysize]                      ; 0129 _ 8B. 0D, 000000FC(d)
        mov     edx, dword [xsize]                      ; 012F _ 8B. 15, 000000F8(d)
        mov     eax, dword [buf_back]                   ; 0135 _ A1, 00000100(d)
        sub     esp, 12                                 ; 013A _ 83. EC, 0C
        push    99                                      ; 013D _ 6A, 63
        push    ecx                                     ; 013F _ 51
        push    edx                                     ; 0140 _ 52
        push    eax                                     ; 0141 _ 50
        push    dword [ebp-20H]                         ; 0142 _ FF. 75, E0
        call    sheet_setbuf                            ; 0145 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 014A _ 83. C4, 20
        sub     esp, 12                                 ; 014D _ 83. EC, 0C
        push    99                                      ; 0150 _ 6A, 63
        push    16                                      ; 0152 _ 6A, 10
        push    16                                      ; 0154 _ 6A, 10
        push    buf_mouse                               ; 0156 _ 68, 00000120(d)
        push    dword [ebp-1CH]                         ; 015B _ FF. 75, E4
        call    sheet_setbuf                            ; 015E _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0163 _ 83. C4, 20
        mov     ecx, dword [ysize]                      ; 0166 _ 8B. 0D, 000000FC(d)
        mov     edx, dword [xsize]                      ; 016C _ 8B. 15, 000000F8(d)
        mov     eax, dword [buf_back]                   ; 0172 _ A1, 00000100(d)
        sub     esp, 4                                  ; 0177 _ 83. EC, 04
        push    ecx                                     ; 017A _ 51
        push    edx                                     ; 017B _ 52
        push    eax                                     ; 017C _ 50
        call    init_screen8                            ; 017D _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0182 _ 83. C4, 10
        sub     esp, 8                                  ; 0185 _ 83. EC, 08
        push    99                                      ; 0188 _ 6A, 63
        push    buf_mouse                               ; 018A _ 68, 00000120(d)
        call    init_mouse_cursor                       ; 018F _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0194 _ 83. C4, 10
        push    0                                       ; 0197 _ 6A, 00
        push    0                                       ; 0199 _ 6A, 00
        push    dword [ebp-20H]                         ; 019B _ FF. 75, E0
        push    dword [ebp-10H]                         ; 019E _ FF. 75, F0
        call    sheet_slide                             ; 01A1 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 01A6 _ 83. C4, 10
        mov     eax, dword [xsize]                      ; 01A9 _ A1, 000000F8(d)
        sub     eax, 16                                 ; 01AE _ 83. E8, 10
        mov     edx, eax                                ; 01B1 _ 89. C2
        shr     edx, 31                                 ; 01B3 _ C1. EA, 1F
        add     eax, edx                                ; 01B6 _ 01. D0
        sar     eax, 1                                  ; 01B8 _ D1. F8
        mov     dword [mx], eax                         ; 01BA _ A3, 000000F0(d)
        mov     eax, dword [ysize]                      ; 01BF _ A1, 000000FC(d)
        sub     eax, 44                                 ; 01C4 _ 83. E8, 2C
        mov     edx, eax                                ; 01C7 _ 89. C2
        shr     edx, 31                                 ; 01C9 _ C1. EA, 1F
        add     eax, edx                                ; 01CC _ 01. D0
        sar     eax, 1                                  ; 01CE _ D1. F8
        mov     dword [my], eax                         ; 01D0 _ A3, 000000F4(d)
        mov     edx, dword [my]                         ; 01D5 _ 8B. 15, 000000F4(d)
        mov     eax, dword [mx]                         ; 01DB _ A1, 000000F0(d)
        push    edx                                     ; 01E0 _ 52
        push    eax                                     ; 01E1 _ 50
        push    dword [ebp-1CH]                         ; 01E2 _ FF. 75, E4
        push    dword [ebp-10H]                         ; 01E5 _ FF. 75, F0
        call    sheet_slide                             ; 01E8 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 01ED _ 83. C4, 10
        sub     esp, 4                                  ; 01F0 _ 83. EC, 04
        push    0                                       ; 01F3 _ 6A, 00
        push    dword [ebp-20H]                         ; 01F5 _ FF. 75, E0
        push    dword [ebp-10H]                         ; 01F8 _ FF. 75, F0
        call    sheet_level_updown                      ; 01FB _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0200 _ 83. C4, 10
        sub     esp, 4                                  ; 0203 _ 83. EC, 04
        push    1                                       ; 0206 _ 6A, 01
        push    dword [ebp-1CH]                         ; 0208 _ FF. 75, E4
        push    dword [ebp-10H]                         ; 020B _ FF. 75, F0
        call    sheet_level_updown                      ; 020E _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0213 _ 83. C4, 10
        call    io_sti                                  ; 0216 _ E8, FFFFFFFC(rel)
        sub     esp, 12                                 ; 021B _ 83. EC, 0C
        push    mdec                                    ; 021E _ 68, 000000E0(d)
        call    enable_mouse                            ; 0223 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0228 _ 83. C4, 10
        mov     dword [ebp-0CH], 0                      ; 022B _ C7. 45, F4, 00000000
        mov     dword [ebp-28H], 0                      ; 0232 _ C7. 45, D8, 00000000
?_001:  call    io_cli                                  ; 0239 _ E8, FFFFFFFC(rel)
        sub     esp, 12                                 ; 023E _ 83. EC, 0C
        push    keyinfo                                 ; 0241 _ 68, 00000008(d)
        call    fifo8_status                            ; 0246 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 024B _ 83. C4, 10
        mov     ebx, eax                                ; 024E _ 89. C3
        sub     esp, 12                                 ; 0250 _ 83. EC, 0C
        push    mouseinfo                               ; 0253 _ 68, 00000020(d)
        call    fifo8_status                            ; 0258 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 025D _ 83. C4, 10
        add     eax, ebx                                ; 0260 _ 01. D8
        test    eax, eax                                ; 0262 _ 85. C0
        jnz     ?_002                                   ; 0264 _ 75, 07
        call    io_stihlt                               ; 0266 _ E8, FFFFFFFC(rel)
        jmp     ?_001                                   ; 026B _ EB, CC

?_002:  sub     esp, 12                                 ; 026D _ 83. EC, 0C
        push    keyinfo                                 ; 0270 _ 68, 00000008(d)
        call    fifo8_status                            ; 0275 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 027A _ 83. C4, 10
        test    eax, eax                                ; 027D _ 85. C0
        jz      ?_004                                   ; 027F _ 74, 77
        call    io_sti                                  ; 0281 _ E8, FFFFFFFC(rel)
        sub     esp, 12                                 ; 0286 _ 83. EC, 0C
        push    keyinfo                                 ; 0289 _ 68, 00000008(d)
        call    fifo8_get                               ; 028E _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0293 _ 83. C4, 10
        mov     dword [ebp-0CH], eax                    ; 0296 _ 89. 45, F4
        cmp     dword [ebp-0CH], 28                     ; 0299 _ 83. 7D, F4, 1C
        jnz     ?_001                                   ; 029D _ 75, 9A
        mov     ebx, dword [xsize]                      ; 029F _ 8B. 1D, 000000F8(d)
        mov     ecx, dword [buf_back]                   ; 02A5 _ 8B. 0D, 00000100(d)
        mov     edx, dword [ebp-28H]                    ; 02AB _ 8B. 55, D8
        mov     eax, edx                                ; 02AE _ 89. D0
        shl     eax, 2                                  ; 02B0 _ C1. E0, 02
        add     eax, edx                                ; 02B3 _ 01. D0
        shl     eax, 2                                  ; 02B5 _ C1. E0, 02
        mov     edx, eax                                ; 02B8 _ 89. C2
        mov     eax, dword [ebp-14H]                    ; 02BA _ 8B. 45, EC
        add     eax, edx                                ; 02BD _ 01. D0
        sub     esp, 12                                 ; 02BF _ 83. EC, 0C
        push    7                                       ; 02C2 _ 6A, 07
        push    ebx                                     ; 02C4 _ 53
        push    dword [ebp-28H]                         ; 02C5 _ FF. 75, D8
        push    ecx                                     ; 02C8 _ 51
        push    eax                                     ; 02C9 _ 50
        call    showMemoryInfo                          ; 02CA _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 02CF _ 83. C4, 20
        add     dword [ebp-28H], 1                      ; 02D2 _ 83. 45, D8, 01
        mov     eax, dword [ebp-28H]                    ; 02D6 _ 8B. 45, D8
        cmp     eax, dword [ebp-18H]                    ; 02D9 _ 3B. 45, E8
        jle     ?_003                                   ; 02DC _ 7E, 07
        mov     dword [ebp-28H], 0                      ; 02DE _ C7. 45, D8, 00000000
?_003:  sub     esp, 12                                 ; 02E5 _ 83. EC, 0C
        push    dword [ebp-10H]                         ; 02E8 _ FF. 75, F0
        call    sheet_refresh                           ; 02EB _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 02F0 _ 83. C4, 10
        jmp     ?_001                                   ; 02F3 _ E9, FFFFFF41

?_004:  sub     esp, 12                                 ; 02F8 _ 83. EC, 0C
        push    mouseinfo                               ; 02FB _ 68, 00000020(d)
        call    fifo8_status                            ; 0300 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0305 _ 83. C4, 10
        test    eax, eax                                ; 0308 _ 85. C0
        je      ?_001                                   ; 030A _ 0F 84, FFFFFF29
        sub     esp, 8                                  ; 0310 _ 83. EC, 08
        push    dword [ebp-1CH]                         ; 0313 _ FF. 75, E4
        push    dword [ebp-10H]                         ; 0316 _ FF. 75, F0
        call    show_mouse_info                         ; 0319 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 031E _ 83. C4, 10
        jmp     ?_001                                   ; 0321 _ E9, FFFFFF13
; CMain End of function

init_screen8:; Function begin
        push    ebp                                     ; 0326 _ 55
        mov     ebp, esp                                ; 0327 _ 89. E5
        push    ebx                                     ; 0329 _ 53
        sub     esp, 4                                  ; 032A _ 83. EC, 04
        mov     eax, dword [ebp+10H]                    ; 032D _ 8B. 45, 10
        lea     edx, [eax-1DH]                          ; 0330 _ 8D. 50, E3
        mov     eax, dword [ebp+0CH]                    ; 0333 _ 8B. 45, 0C
        sub     eax, 1                                  ; 0336 _ 83. E8, 01
        sub     esp, 4                                  ; 0339 _ 83. EC, 04
        push    edx                                     ; 033C _ 52
        push    eax                                     ; 033D _ 50
        push    0                                       ; 033E _ 6A, 00
        push    0                                       ; 0340 _ 6A, 00
        push    14                                      ; 0342 _ 6A, 0E
        push    dword [ebp+0CH]                         ; 0344 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 0347 _ FF. 75, 08
        call    boxfill8                                ; 034A _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 034F _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 0352 _ 8B. 45, 10
        lea     ecx, [eax-1CH]                          ; 0355 _ 8D. 48, E4
        mov     eax, dword [ebp+0CH]                    ; 0358 _ 8B. 45, 0C
        lea     edx, [eax-1H]                           ; 035B _ 8D. 50, FF
        mov     eax, dword [ebp+10H]                    ; 035E _ 8B. 45, 10
        sub     eax, 28                                 ; 0361 _ 83. E8, 1C
        sub     esp, 4                                  ; 0364 _ 83. EC, 04
        push    ecx                                     ; 0367 _ 51
        push    edx                                     ; 0368 _ 52
        push    eax                                     ; 0369 _ 50
        push    0                                       ; 036A _ 6A, 00
        push    8                                       ; 036C _ 6A, 08
        push    dword [ebp+0CH]                         ; 036E _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 0371 _ FF. 75, 08
        call    boxfill8                                ; 0374 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0379 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 037C _ 8B. 45, 10
        lea     ecx, [eax-1BH]                          ; 037F _ 8D. 48, E5
        mov     eax, dword [ebp+0CH]                    ; 0382 _ 8B. 45, 0C
        lea     edx, [eax-1H]                           ; 0385 _ 8D. 50, FF
        mov     eax, dword [ebp+10H]                    ; 0388 _ 8B. 45, 10
        sub     eax, 27                                 ; 038B _ 83. E8, 1B
        sub     esp, 4                                  ; 038E _ 83. EC, 04
        push    ecx                                     ; 0391 _ 51
        push    edx                                     ; 0392 _ 52
        push    eax                                     ; 0393 _ 50
        push    0                                       ; 0394 _ 6A, 00
        push    7                                       ; 0396 _ 6A, 07
        push    dword [ebp+0CH]                         ; 0398 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 039B _ FF. 75, 08
        call    boxfill8                                ; 039E _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 03A3 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 03A6 _ 8B. 45, 10
        lea     ecx, [eax-1H]                           ; 03A9 _ 8D. 48, FF
        mov     eax, dword [ebp+0CH]                    ; 03AC _ 8B. 45, 0C
        lea     edx, [eax-1H]                           ; 03AF _ 8D. 50, FF
        mov     eax, dword [ebp+10H]                    ; 03B2 _ 8B. 45, 10
        sub     eax, 26                                 ; 03B5 _ 83. E8, 1A
        sub     esp, 4                                  ; 03B8 _ 83. EC, 04
        push    ecx                                     ; 03BB _ 51
        push    edx                                     ; 03BC _ 52
        push    eax                                     ; 03BD _ 50
        push    0                                       ; 03BE _ 6A, 00
        push    8                                       ; 03C0 _ 6A, 08
        push    dword [ebp+0CH]                         ; 03C2 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 03C5 _ FF. 75, 08
        call    boxfill8                                ; 03C8 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 03CD _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 03D0 _ 8B. 45, 10
        lea     edx, [eax-18H]                          ; 03D3 _ 8D. 50, E8
        mov     eax, dword [ebp+10H]                    ; 03D6 _ 8B. 45, 10
        sub     eax, 24                                 ; 03D9 _ 83. E8, 18
        sub     esp, 4                                  ; 03DC _ 83. EC, 04
        push    edx                                     ; 03DF _ 52
        push    59                                      ; 03E0 _ 6A, 3B
        push    eax                                     ; 03E2 _ 50
        push    3                                       ; 03E3 _ 6A, 03
        push    7                                       ; 03E5 _ 6A, 07
        push    dword [ebp+0CH]                         ; 03E7 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 03EA _ FF. 75, 08
        call    boxfill8                                ; 03ED _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 03F2 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 03F5 _ 8B. 45, 10
        lea     edx, [eax-4H]                           ; 03F8 _ 8D. 50, FC
        mov     eax, dword [ebp+10H]                    ; 03FB _ 8B. 45, 10
        sub     eax, 24                                 ; 03FE _ 83. E8, 18
        sub     esp, 4                                  ; 0401 _ 83. EC, 04
        push    edx                                     ; 0404 _ 52
        push    2                                       ; 0405 _ 6A, 02
        push    eax                                     ; 0407 _ 50
        push    2                                       ; 0408 _ 6A, 02
        push    7                                       ; 040A _ 6A, 07
        push    dword [ebp+0CH]                         ; 040C _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 040F _ FF. 75, 08
        call    boxfill8                                ; 0412 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0417 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 041A _ 8B. 45, 10
        lea     edx, [eax-4H]                           ; 041D _ 8D. 50, FC
        mov     eax, dword [ebp+10H]                    ; 0420 _ 8B. 45, 10
        sub     eax, 4                                  ; 0423 _ 83. E8, 04
        sub     esp, 4                                  ; 0426 _ 83. EC, 04
        push    edx                                     ; 0429 _ 52
        push    59                                      ; 042A _ 6A, 3B
        push    eax                                     ; 042C _ 50
        push    3                                       ; 042D _ 6A, 03
        push    15                                      ; 042F _ 6A, 0F
        push    dword [ebp+0CH]                         ; 0431 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 0434 _ FF. 75, 08
        call    boxfill8                                ; 0437 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 043C _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 043F _ 8B. 45, 10
        lea     edx, [eax-5H]                           ; 0442 _ 8D. 50, FB
        mov     eax, dword [ebp+10H]                    ; 0445 _ 8B. 45, 10
        sub     eax, 23                                 ; 0448 _ 83. E8, 17
        sub     esp, 4                                  ; 044B _ 83. EC, 04
        push    edx                                     ; 044E _ 52
        push    59                                      ; 044F _ 6A, 3B
        push    eax                                     ; 0451 _ 50
        push    59                                      ; 0452 _ 6A, 3B
        push    15                                      ; 0454 _ 6A, 0F
        push    dword [ebp+0CH]                         ; 0456 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 0459 _ FF. 75, 08
        call    boxfill8                                ; 045C _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0461 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 0464 _ 8B. 45, 10
        lea     edx, [eax-3H]                           ; 0467 _ 8D. 50, FD
        mov     eax, dword [ebp+10H]                    ; 046A _ 8B. 45, 10
        sub     eax, 3                                  ; 046D _ 83. E8, 03
        sub     esp, 4                                  ; 0470 _ 83. EC, 04
        push    edx                                     ; 0473 _ 52
        push    59                                      ; 0474 _ 6A, 3B
        push    eax                                     ; 0476 _ 50
        push    2                                       ; 0477 _ 6A, 02
        push    0                                       ; 0479 _ 6A, 00
        push    dword [ebp+0CH]                         ; 047B _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 047E _ FF. 75, 08
        call    boxfill8                                ; 0481 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0486 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 0489 _ 8B. 45, 10
        lea     edx, [eax-3H]                           ; 048C _ 8D. 50, FD
        mov     eax, dword [ebp+10H]                    ; 048F _ 8B. 45, 10
        sub     eax, 24                                 ; 0492 _ 83. E8, 18
        sub     esp, 4                                  ; 0495 _ 83. EC, 04
        push    edx                                     ; 0498 _ 52
        push    60                                      ; 0499 _ 6A, 3C
        push    eax                                     ; 049B _ 50
        push    60                                      ; 049C _ 6A, 3C
        push    0                                       ; 049E _ 6A, 00
        push    dword [ebp+0CH]                         ; 04A0 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 04A3 _ FF. 75, 08
        call    boxfill8                                ; 04A6 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 04AB _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 04AE _ 8B. 45, 10
        lea     ebx, [eax-18H]                          ; 04B1 _ 8D. 58, E8
        mov     eax, dword [ebp+0CH]                    ; 04B4 _ 8B. 45, 0C
        lea     ecx, [eax-4H]                           ; 04B7 _ 8D. 48, FC
        mov     eax, dword [ebp+10H]                    ; 04BA _ 8B. 45, 10
        lea     edx, [eax-18H]                          ; 04BD _ 8D. 50, E8
        mov     eax, dword [ebp+0CH]                    ; 04C0 _ 8B. 45, 0C
        sub     eax, 47                                 ; 04C3 _ 83. E8, 2F
        sub     esp, 4                                  ; 04C6 _ 83. EC, 04
        push    ebx                                     ; 04C9 _ 53
        push    ecx                                     ; 04CA _ 51
        push    edx                                     ; 04CB _ 52
        push    eax                                     ; 04CC _ 50
        push    15                                      ; 04CD _ 6A, 0F
        push    dword [ebp+0CH]                         ; 04CF _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 04D2 _ FF. 75, 08
        call    boxfill8                                ; 04D5 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 04DA _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 04DD _ 8B. 45, 10
        lea     ebx, [eax-4H]                           ; 04E0 _ 8D. 58, FC
        mov     eax, dword [ebp+0CH]                    ; 04E3 _ 8B. 45, 0C
        lea     ecx, [eax-2FH]                          ; 04E6 _ 8D. 48, D1
        mov     eax, dword [ebp+10H]                    ; 04E9 _ 8B. 45, 10
        lea     edx, [eax-17H]                          ; 04EC _ 8D. 50, E9
        mov     eax, dword [ebp+0CH]                    ; 04EF _ 8B. 45, 0C
        sub     eax, 47                                 ; 04F2 _ 83. E8, 2F
        sub     esp, 4                                  ; 04F5 _ 83. EC, 04
        push    ebx                                     ; 04F8 _ 53
        push    ecx                                     ; 04F9 _ 51
        push    edx                                     ; 04FA _ 52
        push    eax                                     ; 04FB _ 50
        push    15                                      ; 04FC _ 6A, 0F
        push    dword [ebp+0CH]                         ; 04FE _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 0501 _ FF. 75, 08
        call    boxfill8                                ; 0504 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0509 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 050C _ 8B. 45, 10
        lea     ebx, [eax-3H]                           ; 050F _ 8D. 58, FD
        mov     eax, dword [ebp+0CH]                    ; 0512 _ 8B. 45, 0C
        lea     ecx, [eax-4H]                           ; 0515 _ 8D. 48, FC
        mov     eax, dword [ebp+10H]                    ; 0518 _ 8B. 45, 10
        lea     edx, [eax-3H]                           ; 051B _ 8D. 50, FD
        mov     eax, dword [ebp+0CH]                    ; 051E _ 8B. 45, 0C
        sub     eax, 47                                 ; 0521 _ 83. E8, 2F
        sub     esp, 4                                  ; 0524 _ 83. EC, 04
        push    ebx                                     ; 0527 _ 53
        push    ecx                                     ; 0528 _ 51
        push    edx                                     ; 0529 _ 52
        push    eax                                     ; 052A _ 50
        push    7                                       ; 052B _ 6A, 07
        push    dword [ebp+0CH]                         ; 052D _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 0530 _ FF. 75, 08
        call    boxfill8                                ; 0533 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0538 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 053B _ 8B. 45, 10
        lea     ebx, [eax-3H]                           ; 053E _ 8D. 58, FD
        mov     eax, dword [ebp+0CH]                    ; 0541 _ 8B. 45, 0C
        lea     ecx, [eax-3H]                           ; 0544 _ 8D. 48, FD
        mov     eax, dword [ebp+10H]                    ; 0547 _ 8B. 45, 10
        lea     edx, [eax-18H]                          ; 054A _ 8D. 50, E8
        mov     eax, dword [ebp+0CH]                    ; 054D _ 8B. 45, 0C
        sub     eax, 3                                  ; 0550 _ 83. E8, 03
        sub     esp, 4                                  ; 0553 _ 83. EC, 04
        push    ebx                                     ; 0556 _ 53
        push    ecx                                     ; 0557 _ 51
        push    edx                                     ; 0558 _ 52
        push    eax                                     ; 0559 _ 50
        push    7                                       ; 055A _ 6A, 07
        push    dword [ebp+0CH]                         ; 055C _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 055F _ FF. 75, 08
        call    boxfill8                                ; 0562 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0567 _ 83. C4, 20
        nop                                             ; 056A _ 90
        mov     ebx, dword [ebp-4H]                     ; 056B _ 8B. 5D, FC
        leave                                           ; 056E _ C9
        ret                                             ; 056F _ C3
; init_screen8 End of function

computeMousePosition:; Function begin
        push    ebp                                     ; 0570 _ 55
        mov     ebp, esp                                ; 0571 _ 89. E5
        sub     esp, 8                                  ; 0573 _ 83. EC, 08
        mov     eax, dword [ebp+8H]                     ; 0576 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 0579 _ 8B. 50, 04
        mov     eax, dword [mx]                         ; 057C _ A1, 000000F0(d)
        add     eax, edx                                ; 0581 _ 01. D0
        mov     dword [mx], eax                         ; 0583 _ A3, 000000F0(d)
        mov     eax, dword [ebp+8H]                     ; 0588 _ 8B. 45, 08
        mov     edx, dword [eax+8H]                     ; 058B _ 8B. 50, 08
        mov     eax, dword [my]                         ; 058E _ A1, 000000F4(d)
        add     eax, edx                                ; 0593 _ 01. D0
        mov     dword [my], eax                         ; 0595 _ A3, 000000F4(d)
        mov     eax, dword [mx]                         ; 059A _ A1, 000000F0(d)
        test    eax, eax                                ; 059F _ 85. C0
        jns     ?_005                                   ; 05A1 _ 79, 0A
        mov     dword [mx], 0                           ; 05A3 _ C7. 05, 000000F0(d), 00000000
?_005:  mov     eax, dword [my]                         ; 05AD _ A1, 000000F4(d)
        test    eax, eax                                ; 05B2 _ 85. C0
        jns     ?_006                                   ; 05B4 _ 79, 0A
        mov     dword [my], 0                           ; 05B6 _ C7. 05, 000000F4(d), 00000000
?_006:  mov     eax, dword [xsize]                      ; 05C0 _ A1, 000000F8(d)
        lea     edx, [eax-10H]                          ; 05C5 _ 8D. 50, F0
        mov     eax, dword [mx]                         ; 05C8 _ A1, 000000F0(d)
        cmp     edx, eax                                ; 05CD _ 39. C2
        jge     ?_007                                   ; 05CF _ 7D, 0D
        mov     eax, dword [xsize]                      ; 05D1 _ A1, 000000F8(d)
        sub     eax, 16                                 ; 05D6 _ 83. E8, 10
        mov     dword [mx], eax                         ; 05D9 _ A3, 000000F0(d)
?_007:  mov     eax, dword [ysize]                      ; 05DE _ A1, 000000FC(d)
        lea     edx, [eax-10H]                          ; 05E3 _ 8D. 50, F0
        mov     eax, dword [my]                         ; 05E6 _ A1, 000000F4(d)
        cmp     edx, eax                                ; 05EB _ 39. C2
        jge     ?_008                                   ; 05ED _ 7D, 0D
        mov     eax, dword [ysize]                      ; 05EF _ A1, 000000FC(d)
        sub     eax, 16                                 ; 05F4 _ 83. E8, 10
        mov     dword [my], eax                         ; 05F7 _ A3, 000000F4(d)
?_008:  mov     edx, dword [xsize]                      ; 05FC _ 8B. 15, 000000F8(d)
        mov     eax, dword [buf_back]                   ; 0602 _ A1, 00000100(d)
        sub     esp, 4                                  ; 0607 _ 83. EC, 04
        push    15                                      ; 060A _ 6A, 0F
        push    79                                      ; 060C _ 6A, 4F
        push    0                                       ; 060E _ 6A, 00
        push    0                                       ; 0610 _ 6A, 00
        push    14                                      ; 0612 _ 6A, 0E
        push    edx                                     ; 0614 _ 52
        push    eax                                     ; 0615 _ 50
        call    boxfill8                                ; 0616 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 061B _ 83. C4, 20
        mov     edx, dword [xsize]                      ; 061E _ 8B. 15, 000000F8(d)
        mov     eax, dword [buf_back]                   ; 0624 _ A1, 00000100(d)
        sub     esp, 8                                  ; 0629 _ 83. EC, 08
        push    ?_117                                   ; 062C _ 68, 00000000(d)
        push    7                                       ; 0631 _ 6A, 07
        push    0                                       ; 0633 _ 6A, 00
        push    0                                       ; 0635 _ 6A, 00
        push    edx                                     ; 0637 _ 52
        push    eax                                     ; 0638 _ 50
        call    showString                              ; 0639 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 063E _ 83. C4, 20
        nop                                             ; 0641 _ 90
        leave                                           ; 0642 _ C9
        ret                                             ; 0643 _ C3
; computeMousePosition End of function

show_mouse_info:; Function begin
        push    ebp                                     ; 0644 _ 55
        mov     ebp, esp                                ; 0645 _ 89. E5
        sub     esp, 24                                 ; 0647 _ 83. EC, 18
        mov     eax, dword [buf_back]                   ; 064A _ A1, 00000100(d)
        mov     dword [ebp-0CH], eax                    ; 064F _ 89. 45, F4
        mov     byte [ebp-0DH], 0                       ; 0652 _ C6. 45, F3, 00
        call    io_sti                                  ; 0656 _ E8, FFFFFFFC(rel)
        sub     esp, 12                                 ; 065B _ 83. EC, 0C
        push    mouseinfo                               ; 065E _ 68, 00000020(d)
        call    fifo8_get                               ; 0663 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0668 _ 83. C4, 10
        mov     byte [ebp-0DH], al                      ; 066B _ 88. 45, F3
        movzx   eax, byte [ebp-0DH]                     ; 066E _ 0F B6. 45, F3
        sub     esp, 8                                  ; 0672 _ 83. EC, 08
        push    eax                                     ; 0675 _ 50
        push    mdec                                    ; 0676 _ 68, 000000E0(d)
        call    mouse_decode                            ; 067B _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0680 _ 83. C4, 10
        test    eax, eax                                ; 0683 _ 85. C0
        jz      ?_009                                   ; 0685 _ 74, 2B
        sub     esp, 12                                 ; 0687 _ 83. EC, 0C
        push    mdec                                    ; 068A _ 68, 000000E0(d)
        call    computeMousePosition                    ; 068F _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0694 _ 83. C4, 10
        mov     edx, dword [my]                         ; 0697 _ 8B. 15, 000000F4(d)
        mov     eax, dword [mx]                         ; 069D _ A1, 000000F0(d)
        push    edx                                     ; 06A2 _ 52
        push    eax                                     ; 06A3 _ 50
        push    dword [ebp+0CH]                         ; 06A4 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 06A7 _ FF. 75, 08
        call    sheet_slide                             ; 06AA _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 06AF _ 83. C4, 10
?_009:  nop                                             ; 06B2 _ 90
        leave                                           ; 06B3 _ C9
        ret                                             ; 06B4 _ C3
; show_mouse_info End of function

initBootInfo:; Function begin
        push    ebp                                     ; 06B5 _ 55
        mov     ebp, esp                                ; 06B6 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 06B8 _ 8B. 45, 08
        mov     dword [eax], 655360                     ; 06BB _ C7. 00, 000A0000
        mov     eax, dword [ebp+8H]                     ; 06C1 _ 8B. 45, 08
; Note: Length-changing prefix causes delay on Intel processors
        mov     word [eax+4H], 320                      ; 06C4 _ 66: C7. 40, 04, 0140
        mov     eax, dword [ebp+8H]                     ; 06CA _ 8B. 45, 08
; Note: Length-changing prefix causes delay on Intel processors
        mov     word [eax+6H], 200                      ; 06CD _ 66: C7. 40, 06, 00C8
        nop                                             ; 06D3 _ 90
        pop     ebp                                     ; 06D4 _ 5D
        ret                                             ; 06D5 _ C3
; initBootInfo End of function

showString:; Function begin
        push    ebp                                     ; 06D6 _ 55
        mov     ebp, esp                                ; 06D7 _ 89. E5
        sub     esp, 24                                 ; 06D9 _ 83. EC, 18
        mov     eax, dword [ebp+18H]                    ; 06DC _ 8B. 45, 18
        mov     byte [ebp-0CH], al                      ; 06DF _ 88. 45, F4
        jmp     ?_011                                   ; 06E2 _ EB, 37

?_010:  mov     eax, dword [ebp+1CH]                    ; 06E4 _ 8B. 45, 1C
        movzx   eax, byte [eax]                         ; 06E7 _ 0F B6. 00
        movzx   eax, al                                 ; 06EA _ 0F B6. C0
        shl     eax, 4                                  ; 06ED _ C1. E0, 04
        lea     edx, [systemFont+eax]                   ; 06F0 _ 8D. 90, 00000000(d)
        movsx   eax, byte [ebp-0CH]                     ; 06F6 _ 0F BE. 45, F4
        sub     esp, 8                                  ; 06FA _ 83. EC, 08
        push    edx                                     ; 06FD _ 52
        push    eax                                     ; 06FE _ 50
        push    dword [ebp+14H]                         ; 06FF _ FF. 75, 14
        push    dword [ebp+10H]                         ; 0702 _ FF. 75, 10
        push    dword [ebp+0CH]                         ; 0705 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 0708 _ FF. 75, 08
        call    showFont8                               ; 070B _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0710 _ 83. C4, 20
        add     dword [ebp+10H], 8                      ; 0713 _ 83. 45, 10, 08
        add     dword [ebp+1CH], 1                      ; 0717 _ 83. 45, 1C, 01
?_011:  mov     eax, dword [ebp+1CH]                    ; 071B _ 8B. 45, 1C
        movzx   eax, byte [eax]                         ; 071E _ 0F B6. 00
        test    al, al                                  ; 0721 _ 84. C0
        jnz     ?_010                                   ; 0723 _ 75, BF
        nop                                             ; 0725 _ 90
        leave                                           ; 0726 _ C9
        ret                                             ; 0727 _ C3
; showString End of function

init_palette:; Function begin
        push    ebp                                     ; 0728 _ 55
        mov     ebp, esp                                ; 0729 _ 89. E5
        sub     esp, 8                                  ; 072B _ 83. EC, 08
        sub     esp, 4                                  ; 072E _ 83. EC, 04
        push    table_rgb.1664                          ; 0731 _ 68, 00000020(d)
        push    15                                      ; 0736 _ 6A, 0F
        push    0                                       ; 0738 _ 6A, 00
        call    set_palette                             ; 073A _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 073F _ 83. C4, 10
        nop                                             ; 0742 _ 90
        leave                                           ; 0743 _ C9
        ret                                             ; 0744 _ C3
; init_palette End of function

set_palette:; Function begin
        push    ebp                                     ; 0745 _ 55
        mov     ebp, esp                                ; 0746 _ 89. E5
        sub     esp, 24                                 ; 0748 _ 83. EC, 18
        call    io_load_eflags                          ; 074B _ E8, FFFFFFFC(rel)
        mov     dword [ebp-0CH], eax                    ; 0750 _ 89. 45, F4
        call    io_cli                                  ; 0753 _ E8, FFFFFFFC(rel)
        sub     esp, 8                                  ; 0758 _ 83. EC, 08
        push    dword [ebp+8H]                          ; 075B _ FF. 75, 08
        push    968                                     ; 075E _ 68, 000003C8
        call    io_out8                                 ; 0763 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0768 _ 83. C4, 10
        mov     eax, dword [ebp+8H]                     ; 076B _ 8B. 45, 08
        mov     dword [ebp-10H], eax                    ; 076E _ 89. 45, F0
        jmp     ?_013                                   ; 0771 _ EB, 65

?_012:  mov     eax, dword [ebp+10H]                    ; 0773 _ 8B. 45, 10
        movzx   eax, byte [eax]                         ; 0776 _ 0F B6. 00
        shr     al, 2                                   ; 0779 _ C0. E8, 02
        movzx   eax, al                                 ; 077C _ 0F B6. C0
        sub     esp, 8                                  ; 077F _ 83. EC, 08
        push    eax                                     ; 0782 _ 50
        push    969                                     ; 0783 _ 68, 000003C9
        call    io_out8                                 ; 0788 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 078D _ 83. C4, 10
        mov     eax, dword [ebp+10H]                    ; 0790 _ 8B. 45, 10
        add     eax, 1                                  ; 0793 _ 83. C0, 01
        movzx   eax, byte [eax]                         ; 0796 _ 0F B6. 00
        shr     al, 2                                   ; 0799 _ C0. E8, 02
        movzx   eax, al                                 ; 079C _ 0F B6. C0
        sub     esp, 8                                  ; 079F _ 83. EC, 08
        push    eax                                     ; 07A2 _ 50
        push    969                                     ; 07A3 _ 68, 000003C9
        call    io_out8                                 ; 07A8 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 07AD _ 83. C4, 10
        mov     eax, dword [ebp+10H]                    ; 07B0 _ 8B. 45, 10
        add     eax, 2                                  ; 07B3 _ 83. C0, 02
        movzx   eax, byte [eax]                         ; 07B6 _ 0F B6. 00
        shr     al, 2                                   ; 07B9 _ C0. E8, 02
        movzx   eax, al                                 ; 07BC _ 0F B6. C0
        sub     esp, 8                                  ; 07BF _ 83. EC, 08
        push    eax                                     ; 07C2 _ 50
        push    969                                     ; 07C3 _ 68, 000003C9
        call    io_out8                                 ; 07C8 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 07CD _ 83. C4, 10
        add     dword [ebp+10H], 3                      ; 07D0 _ 83. 45, 10, 03
        add     dword [ebp-10H], 1                      ; 07D4 _ 83. 45, F0, 01
?_013:  mov     eax, dword [ebp-10H]                    ; 07D8 _ 8B. 45, F0
        cmp     eax, dword [ebp+0CH]                    ; 07DB _ 3B. 45, 0C
        jle     ?_012                                   ; 07DE _ 7E, 93
        sub     esp, 12                                 ; 07E0 _ 83. EC, 0C
        push    dword [ebp-0CH]                         ; 07E3 _ FF. 75, F4
        call    io_store_eflags                         ; 07E6 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 07EB _ 83. C4, 10
        nop                                             ; 07EE _ 90
        leave                                           ; 07EF _ C9
        ret                                             ; 07F0 _ C3
; set_palette End of function

boxfill8:; Function begin
        push    ebp                                     ; 07F1 _ 55
        mov     ebp, esp                                ; 07F2 _ 89. E5
        sub     esp, 20                                 ; 07F4 _ 83. EC, 14
        mov     eax, dword [ebp+10H]                    ; 07F7 _ 8B. 45, 10
        mov     byte [ebp-14H], al                      ; 07FA _ 88. 45, EC
        mov     eax, dword [ebp+18H]                    ; 07FD _ 8B. 45, 18
        mov     dword [ebp-4H], eax                     ; 0800 _ 89. 45, FC
        jmp     ?_017                                   ; 0803 _ EB, 33

?_014:  mov     eax, dword [ebp+14H]                    ; 0805 _ 8B. 45, 14
        mov     dword [ebp-8H], eax                     ; 0808 _ 89. 45, F8
        jmp     ?_016                                   ; 080B _ EB, 1F

?_015:  mov     eax, dword [ebp-4H]                     ; 080D _ 8B. 45, FC
        imul    eax, dword [ebp+0CH]                    ; 0810 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 0814 _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 0816 _ 8B. 45, F8
        add     eax, edx                                ; 0819 _ 01. D0
        mov     edx, eax                                ; 081B _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 081D _ 8B. 45, 08
        add     edx, eax                                ; 0820 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0822 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0826 _ 88. 02
        add     dword [ebp-8H], 1                       ; 0828 _ 83. 45, F8, 01
?_016:  mov     eax, dword [ebp-8H]                     ; 082C _ 8B. 45, F8
        cmp     eax, dword [ebp+1CH]                    ; 082F _ 3B. 45, 1C
        jle     ?_015                                   ; 0832 _ 7E, D9
        add     dword [ebp-4H], 1                       ; 0834 _ 83. 45, FC, 01
?_017:  mov     eax, dword [ebp-4H]                     ; 0838 _ 8B. 45, FC
        cmp     eax, dword [ebp+20H]                    ; 083B _ 3B. 45, 20
        jle     ?_014                                   ; 083E _ 7E, C5
        nop                                             ; 0840 _ 90
        leave                                           ; 0841 _ C9
        ret                                             ; 0842 _ C3
; boxfill8 End of function

showFont8:; Function begin
        push    ebp                                     ; 0843 _ 55
        mov     ebp, esp                                ; 0844 _ 89. E5
        sub     esp, 20                                 ; 0846 _ 83. EC, 14
        mov     eax, dword [ebp+18H]                    ; 0849 _ 8B. 45, 18
        mov     byte [ebp-14H], al                      ; 084C _ 88. 45, EC
        mov     dword [ebp-4H], 0                       ; 084F _ C7. 45, FC, 00000000
        jmp     ?_027                                   ; 0856 _ E9, 0000016C

?_018:  mov     edx, dword [ebp-4H]                     ; 085B _ 8B. 55, FC
        mov     eax, dword [ebp+1CH]                    ; 085E _ 8B. 45, 1C
        add     eax, edx                                ; 0861 _ 01. D0
        movzx   eax, byte [eax]                         ; 0863 _ 0F B6. 00
        mov     byte [ebp-5H], al                       ; 0866 _ 88. 45, FB
        cmp     byte [ebp-5H], 0                        ; 0869 _ 80. 7D, FB, 00
        jns     ?_019                                   ; 086D _ 79, 20
        mov     edx, dword [ebp+14H]                    ; 086F _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 0872 _ 8B. 45, FC
        add     eax, edx                                ; 0875 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 0877 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 087B _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 087D _ 8B. 45, 10
        add     eax, edx                                ; 0880 _ 01. D0
        mov     edx, eax                                ; 0882 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 0884 _ 8B. 45, 08
        add     edx, eax                                ; 0887 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0889 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 088D _ 88. 02
?_019:  movsx   eax, byte [ebp-5H]                      ; 088F _ 0F BE. 45, FB
        and     eax, 40H                                ; 0893 _ 83. E0, 40
        test    eax, eax                                ; 0896 _ 85. C0
        jz      ?_020                                   ; 0898 _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 089A _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 089D _ 8B. 45, FC
        add     eax, edx                                ; 08A0 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 08A2 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 08A6 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 08A8 _ 8B. 45, 10
        add     eax, edx                                ; 08AB _ 01. D0
        lea     edx, [eax+1H]                           ; 08AD _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 08B0 _ 8B. 45, 08
        add     edx, eax                                ; 08B3 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 08B5 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 08B9 _ 88. 02
?_020:  movsx   eax, byte [ebp-5H]                      ; 08BB _ 0F BE. 45, FB
        and     eax, 20H                                ; 08BF _ 83. E0, 20
        test    eax, eax                                ; 08C2 _ 85. C0
        jz      ?_021                                   ; 08C4 _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 08C6 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 08C9 _ 8B. 45, FC
        add     eax, edx                                ; 08CC _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 08CE _ 0F AF. 45, 0C
        mov     edx, eax                                ; 08D2 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 08D4 _ 8B. 45, 10
        add     eax, edx                                ; 08D7 _ 01. D0
        lea     edx, [eax+2H]                           ; 08D9 _ 8D. 50, 02
        mov     eax, dword [ebp+8H]                     ; 08DC _ 8B. 45, 08
        add     edx, eax                                ; 08DF _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 08E1 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 08E5 _ 88. 02
?_021:  movsx   eax, byte [ebp-5H]                      ; 08E7 _ 0F BE. 45, FB
        and     eax, 10H                                ; 08EB _ 83. E0, 10
        test    eax, eax                                ; 08EE _ 85. C0
        jz      ?_022                                   ; 08F0 _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 08F2 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 08F5 _ 8B. 45, FC
        add     eax, edx                                ; 08F8 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 08FA _ 0F AF. 45, 0C
        mov     edx, eax                                ; 08FE _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 0900 _ 8B. 45, 10
        add     eax, edx                                ; 0903 _ 01. D0
        lea     edx, [eax+3H]                           ; 0905 _ 8D. 50, 03
        mov     eax, dword [ebp+8H]                     ; 0908 _ 8B. 45, 08
        add     edx, eax                                ; 090B _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 090D _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0911 _ 88. 02
?_022:  movsx   eax, byte [ebp-5H]                      ; 0913 _ 0F BE. 45, FB
        and     eax, 08H                                ; 0917 _ 83. E0, 08
        test    eax, eax                                ; 091A _ 85. C0
        jz      ?_023                                   ; 091C _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 091E _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 0921 _ 8B. 45, FC
        add     eax, edx                                ; 0924 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 0926 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 092A _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 092C _ 8B. 45, 10
        add     eax, edx                                ; 092F _ 01. D0
        lea     edx, [eax+4H]                           ; 0931 _ 8D. 50, 04
        mov     eax, dword [ebp+8H]                     ; 0934 _ 8B. 45, 08
        add     edx, eax                                ; 0937 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0939 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 093D _ 88. 02
?_023:  movsx   eax, byte [ebp-5H]                      ; 093F _ 0F BE. 45, FB
        and     eax, 04H                                ; 0943 _ 83. E0, 04
        test    eax, eax                                ; 0946 _ 85. C0
        jz      ?_024                                   ; 0948 _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 094A _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 094D _ 8B. 45, FC
        add     eax, edx                                ; 0950 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 0952 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 0956 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 0958 _ 8B. 45, 10
        add     eax, edx                                ; 095B _ 01. D0
        lea     edx, [eax+5H]                           ; 095D _ 8D. 50, 05
        mov     eax, dword [ebp+8H]                     ; 0960 _ 8B. 45, 08
        add     edx, eax                                ; 0963 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0965 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0969 _ 88. 02
?_024:  movsx   eax, byte [ebp-5H]                      ; 096B _ 0F BE. 45, FB
        and     eax, 02H                                ; 096F _ 83. E0, 02
        test    eax, eax                                ; 0972 _ 85. C0
        jz      ?_025                                   ; 0974 _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 0976 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 0979 _ 8B. 45, FC
        add     eax, edx                                ; 097C _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 097E _ 0F AF. 45, 0C
        mov     edx, eax                                ; 0982 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 0984 _ 8B. 45, 10
        add     eax, edx                                ; 0987 _ 01. D0
        lea     edx, [eax+6H]                           ; 0989 _ 8D. 50, 06
        mov     eax, dword [ebp+8H]                     ; 098C _ 8B. 45, 08
        add     edx, eax                                ; 098F _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0991 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0995 _ 88. 02
?_025:  movsx   eax, byte [ebp-5H]                      ; 0997 _ 0F BE. 45, FB
        and     eax, 01H                                ; 099B _ 83. E0, 01
        test    eax, eax                                ; 099E _ 85. C0
        jz      ?_026                                   ; 09A0 _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 09A2 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 09A5 _ 8B. 45, FC
        add     eax, edx                                ; 09A8 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 09AA _ 0F AF. 45, 0C
        mov     edx, eax                                ; 09AE _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 09B0 _ 8B. 45, 10
        add     eax, edx                                ; 09B3 _ 01. D0
        lea     edx, [eax+7H]                           ; 09B5 _ 8D. 50, 07
        mov     eax, dword [ebp+8H]                     ; 09B8 _ 8B. 45, 08
        add     edx, eax                                ; 09BB _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 09BD _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 09C1 _ 88. 02
?_026:  add     dword [ebp-4H], 1                       ; 09C3 _ 83. 45, FC, 01
?_027:  cmp     dword [ebp-4H], 15                      ; 09C7 _ 83. 7D, FC, 0F
        jle     ?_018                                   ; 09CB _ 0F 8E, FFFFFE8A
        nop                                             ; 09D1 _ 90
        leave                                           ; 09D2 _ C9
        ret                                             ; 09D3 _ C3
; showFont8 End of function

init_mouse_cursor:; Function begin
        push    ebp                                     ; 09D4 _ 55
        mov     ebp, esp                                ; 09D5 _ 89. E5
        sub     esp, 20                                 ; 09D7 _ 83. EC, 14
        mov     eax, dword [ebp+0CH]                    ; 09DA _ 8B. 45, 0C
        mov     byte [ebp-14H], al                      ; 09DD _ 88. 45, EC
        mov     dword [ebp-4H], 0                       ; 09E0 _ C7. 45, FC, 00000000
        jmp     ?_034                                   ; 09E7 _ E9, 000000B1

?_028:  mov     dword [ebp-8H], 0                       ; 09EC _ C7. 45, F8, 00000000
        jmp     ?_033                                   ; 09F3 _ E9, 00000097

?_029:  mov     eax, dword [ebp-4H]                     ; 09F8 _ 8B. 45, FC
        shl     eax, 4                                  ; 09FB _ C1. E0, 04
        mov     edx, eax                                ; 09FE _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 0A00 _ 8B. 45, F8
        add     eax, edx                                ; 0A03 _ 01. D0
        add     eax, cursor.1709                        ; 0A05 _ 05, 00000060(d)
        movzx   eax, byte [eax]                         ; 0A0A _ 0F B6. 00
        cmp     al, 42                                  ; 0A0D _ 3C, 2A
        jnz     ?_030                                   ; 0A0F _ 75, 17
        mov     eax, dword [ebp-4H]                     ; 0A11 _ 8B. 45, FC
        shl     eax, 4                                  ; 0A14 _ C1. E0, 04
        mov     edx, eax                                ; 0A17 _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 0A19 _ 8B. 45, F8
        add     eax, edx                                ; 0A1C _ 01. D0
        mov     edx, eax                                ; 0A1E _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 0A20 _ 8B. 45, 08
        add     eax, edx                                ; 0A23 _ 01. D0
        mov     byte [eax], 0                           ; 0A25 _ C6. 00, 00
?_030:  mov     eax, dword [ebp-4H]                     ; 0A28 _ 8B. 45, FC
        shl     eax, 4                                  ; 0A2B _ C1. E0, 04
        mov     edx, eax                                ; 0A2E _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 0A30 _ 8B. 45, F8
        add     eax, edx                                ; 0A33 _ 01. D0
        add     eax, cursor.1709                        ; 0A35 _ 05, 00000060(d)
        movzx   eax, byte [eax]                         ; 0A3A _ 0F B6. 00
        cmp     al, 79                                  ; 0A3D _ 3C, 4F
        jnz     ?_031                                   ; 0A3F _ 75, 17
        mov     eax, dword [ebp-4H]                     ; 0A41 _ 8B. 45, FC
        shl     eax, 4                                  ; 0A44 _ C1. E0, 04
        mov     edx, eax                                ; 0A47 _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 0A49 _ 8B. 45, F8
        add     eax, edx                                ; 0A4C _ 01. D0
        mov     edx, eax                                ; 0A4E _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 0A50 _ 8B. 45, 08
        add     eax, edx                                ; 0A53 _ 01. D0
        mov     byte [eax], 7                           ; 0A55 _ C6. 00, 07
?_031:  mov     eax, dword [ebp-4H]                     ; 0A58 _ 8B. 45, FC
        shl     eax, 4                                  ; 0A5B _ C1. E0, 04
        mov     edx, eax                                ; 0A5E _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 0A60 _ 8B. 45, F8
        add     eax, edx                                ; 0A63 _ 01. D0
        add     eax, cursor.1709                        ; 0A65 _ 05, 00000060(d)
        movzx   eax, byte [eax]                         ; 0A6A _ 0F B6. 00
        cmp     al, 46                                  ; 0A6D _ 3C, 2E
        jnz     ?_032                                   ; 0A6F _ 75, 1A
        mov     eax, dword [ebp-4H]                     ; 0A71 _ 8B. 45, FC
        shl     eax, 4                                  ; 0A74 _ C1. E0, 04
        mov     edx, eax                                ; 0A77 _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 0A79 _ 8B. 45, F8
        add     eax, edx                                ; 0A7C _ 01. D0
        mov     edx, eax                                ; 0A7E _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 0A80 _ 8B. 45, 08
        add     edx, eax                                ; 0A83 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0A85 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0A89 _ 88. 02
?_032:  add     dword [ebp-8H], 1                       ; 0A8B _ 83. 45, F8, 01
?_033:  cmp     dword [ebp-8H], 15                      ; 0A8F _ 83. 7D, F8, 0F
        jle     ?_029                                   ; 0A93 _ 0F 8E, FFFFFF5F
        add     dword [ebp-4H], 1                       ; 0A99 _ 83. 45, FC, 01
?_034:  cmp     dword [ebp-4H], 15                      ; 0A9D _ 83. 7D, FC, 0F
        jle     ?_028                                   ; 0AA1 _ 0F 8E, FFFFFF45
        nop                                             ; 0AA7 _ 90
        leave                                           ; 0AA8 _ C9
        ret                                             ; 0AA9 _ C3
; init_mouse_cursor End of function

putblock:; Function begin
        push    ebp                                     ; 0AAA _ 55
        mov     ebp, esp                                ; 0AAB _ 89. E5
        push    ebx                                     ; 0AAD _ 53
        sub     esp, 16                                 ; 0AAE _ 83. EC, 10
        mov     dword [ebp-8H], 0                       ; 0AB1 _ C7. 45, F8, 00000000
        jmp     ?_038                                   ; 0AB8 _ EB, 50

?_035:  mov     dword [ebp-0CH], 0                      ; 0ABA _ C7. 45, F4, 00000000
        jmp     ?_037                                   ; 0AC1 _ EB, 3B

?_036:  mov     eax, dword [ebp-8H]                     ; 0AC3 _ 8B. 45, F8
        imul    eax, dword [ebp+24H]                    ; 0AC6 _ 0F AF. 45, 24
        mov     edx, eax                                ; 0ACA _ 89. C2
        mov     eax, dword [ebp-0CH]                    ; 0ACC _ 8B. 45, F4
        add     eax, edx                                ; 0ACF _ 01. D0
        mov     edx, eax                                ; 0AD1 _ 89. C2
        mov     eax, dword [ebp+20H]                    ; 0AD3 _ 8B. 45, 20
        add     eax, edx                                ; 0AD6 _ 01. D0
        mov     ecx, dword [ebp+1CH]                    ; 0AD8 _ 8B. 4D, 1C
        mov     edx, dword [ebp-8H]                     ; 0ADB _ 8B. 55, F8
        add     edx, ecx                                ; 0ADE _ 01. CA
        imul    edx, dword [ebp+0CH]                    ; 0AE0 _ 0F AF. 55, 0C
        mov     ebx, dword [ebp+18H]                    ; 0AE4 _ 8B. 5D, 18
        mov     ecx, dword [ebp-0CH]                    ; 0AE7 _ 8B. 4D, F4
        add     ecx, ebx                                ; 0AEA _ 01. D9
        add     edx, ecx                                ; 0AEC _ 01. CA
        mov     ecx, edx                                ; 0AEE _ 89. D1
        mov     edx, dword [ebp+8H]                     ; 0AF0 _ 8B. 55, 08
        add     edx, ecx                                ; 0AF3 _ 01. CA
        movzx   eax, byte [eax]                         ; 0AF5 _ 0F B6. 00
        mov     byte [edx], al                          ; 0AF8 _ 88. 02
        add     dword [ebp-0CH], 1                      ; 0AFA _ 83. 45, F4, 01
?_037:  mov     eax, dword [ebp-0CH]                    ; 0AFE _ 8B. 45, F4
        cmp     eax, dword [ebp+10H]                    ; 0B01 _ 3B. 45, 10
        jl      ?_036                                   ; 0B04 _ 7C, BD
        add     dword [ebp-8H], 1                       ; 0B06 _ 83. 45, F8, 01
?_038:  mov     eax, dword [ebp-8H]                     ; 0B0A _ 8B. 45, F8
        cmp     eax, dword [ebp+14H]                    ; 0B0D _ 3B. 45, 14
        jl      ?_035                                   ; 0B10 _ 7C, A8
        nop                                             ; 0B12 _ 90
        add     esp, 16                                 ; 0B13 _ 83. C4, 10
        pop     ebx                                     ; 0B16 _ 5B
        pop     ebp                                     ; 0B17 _ 5D
        ret                                             ; 0B18 _ C3
; putblock End of function

intHandlerFromC:; Function begin
        push    ebp                                     ; 0B19 _ 55
        mov     ebp, esp                                ; 0B1A _ 89. E5
        sub     esp, 24                                 ; 0B1C _ 83. EC, 18
        mov     eax, dword [bootInfo]                   ; 0B1F _ A1, 00000000(d)
        mov     dword [ebp-14H], eax                    ; 0B24 _ 89. 45, EC
        movzx   eax, word [?_126]                       ; 0B27 _ 0F B7. 05, 00000004(d)
        cwde                                            ; 0B2E _ 98
        mov     dword [ebp-10H], eax                    ; 0B2F _ 89. 45, F0
        movzx   eax, word [?_127]                       ; 0B32 _ 0F B7. 05, 00000006(d)
        cwde                                            ; 0B39 _ 98
        mov     dword [ebp-0CH], eax                    ; 0B3A _ 89. 45, F4
        sub     esp, 8                                  ; 0B3D _ 83. EC, 08
        push    32                                      ; 0B40 _ 6A, 20
        push    32                                      ; 0B42 _ 6A, 20
        call    io_out8                                 ; 0B44 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0B49 _ 83. C4, 10
        mov     byte [ebp-15H], 0                       ; 0B4C _ C6. 45, EB, 00
        sub     esp, 12                                 ; 0B50 _ 83. EC, 0C
        push    96                                      ; 0B53 _ 6A, 60
        call    io_in8                                  ; 0B55 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0B5A _ 83. C4, 10
        mov     byte [ebp-15H], al                      ; 0B5D _ 88. 45, EB
        movzx   eax, byte [ebp-15H]                     ; 0B60 _ 0F B6. 45, EB
        sub     esp, 8                                  ; 0B64 _ 83. EC, 08
        push    eax                                     ; 0B67 _ 50
        push    keyinfo                                 ; 0B68 _ 68, 00000008(d)
        call    fifo8_put                               ; 0B6D _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0B72 _ 83. C4, 10
        nop                                             ; 0B75 _ 90
        leave                                           ; 0B76 _ C9
        ret                                             ; 0B77 _ C3
; intHandlerFromC End of function

charToHexVal:; Function begin
        push    ebp                                     ; 0B78 _ 55
        mov     ebp, esp                                ; 0B79 _ 89. E5
        sub     esp, 4                                  ; 0B7B _ 83. EC, 04
        mov     eax, dword [ebp+8H]                     ; 0B7E _ 8B. 45, 08
        mov     byte [ebp-4H], al                       ; 0B81 _ 88. 45, FC
        cmp     byte [ebp-4H], 9                        ; 0B84 _ 80. 7D, FC, 09
        jle     ?_039                                   ; 0B88 _ 7E, 09
        movzx   eax, byte [ebp-4H]                      ; 0B8A _ 0F B6. 45, FC
        add     eax, 55                                 ; 0B8E _ 83. C0, 37
        jmp     ?_040                                   ; 0B91 _ EB, 07

?_039:  movzx   eax, byte [ebp-4H]                      ; 0B93 _ 0F B6. 45, FC
        add     eax, 48                                 ; 0B97 _ 83. C0, 30
?_040:  leave                                           ; 0B9A _ C9
        ret                                             ; 0B9B _ C3
; charToHexVal End of function

charToHexStr:; Function begin
        push    ebp                                     ; 0B9C _ 55
        mov     ebp, esp                                ; 0B9D _ 89. E5
        sub     esp, 20                                 ; 0B9F _ 83. EC, 14
        mov     eax, dword [ebp+8H]                     ; 0BA2 _ 8B. 45, 08
        mov     byte [ebp-14H], al                      ; 0BA5 _ 88. 45, EC
        mov     dword [ebp-4H], 0                       ; 0BA8 _ C7. 45, FC, 00000000
        movzx   eax, byte [ebp-14H]                     ; 0BAF _ 0F B6. 45, EC
        and     eax, 0FH                                ; 0BB3 _ 83. E0, 0F
        mov     byte [ebp-5H], al                       ; 0BB6 _ 88. 45, FB
        movsx   eax, byte [ebp-5H]                      ; 0BB9 _ 0F BE. 45, FB
        push    eax                                     ; 0BBD _ 50
        call    charToHexVal                            ; 0BBE _ E8, FFFFFFFC(rel)
        add     esp, 4                                  ; 0BC3 _ 83. C4, 04
        mov     byte [?_125], al                        ; 0BC6 _ A2, 00000007(d)
        movzx   eax, byte [ebp-14H]                     ; 0BCB _ 0F B6. 45, EC
        shr     al, 4                                   ; 0BCF _ C0. E8, 04
        mov     byte [ebp-14H], al                      ; 0BD2 _ 88. 45, EC
        movzx   eax, byte [ebp-14H]                     ; 0BD5 _ 0F B6. 45, EC
        movsx   eax, al                                 ; 0BD9 _ 0F BE. C0
        push    eax                                     ; 0BDC _ 50
        call    charToHexVal                            ; 0BDD _ E8, FFFFFFFC(rel)
        add     esp, 4                                  ; 0BE2 _ 83. C4, 04
        mov     byte [?_124], al                        ; 0BE5 _ A2, 00000006(d)
        mov     eax, keyval                             ; 0BEA _ B8, 00000004(d)
        leave                                           ; 0BEF _ C9
        ret                                             ; 0BF0 _ C3
; charToHexStr End of function

intToHexStr:; Function begin
        push    ebp                                     ; 0BF1 _ 55
        mov     ebp, esp                                ; 0BF2 _ 89. E5
        sub     esp, 16                                 ; 0BF4 _ 83. EC, 10
        mov     byte [str.1754], 48                     ; 0BF7 _ C6. 05, 00000220(d), 30
        mov     byte [?_128], 88                        ; 0BFE _ C6. 05, 00000221(d), 58
        mov     byte [?_129], 0                         ; 0C05 _ C6. 05, 0000022A(d), 00
        mov     dword [ebp-0CH], 2                      ; 0C0C _ C7. 45, F4, 00000002
        jmp     ?_042                                   ; 0C13 _ EB, 0F

?_041:  mov     eax, dword [ebp-0CH]                    ; 0C15 _ 8B. 45, F4
        add     eax, str.1754                           ; 0C18 _ 05, 00000220(d)
        mov     byte [eax], 48                          ; 0C1D _ C6. 00, 30
        add     dword [ebp-0CH], 1                      ; 0C20 _ 83. 45, F4, 01
?_042:  cmp     dword [ebp-0CH], 9                      ; 0C24 _ 83. 7D, F4, 09
        jle     ?_041                                   ; 0C28 _ 7E, EB
        mov     dword [ebp-8H], 9                       ; 0C2A _ C7. 45, F8, 00000009
        jmp     ?_046                                   ; 0C31 _ EB, 42

?_043:  mov     eax, dword [ebp+8H]                     ; 0C33 _ 8B. 45, 08
        and     eax, 0FH                                ; 0C36 _ 83. E0, 0F
        mov     dword [ebp-4H], eax                     ; 0C39 _ 89. 45, FC
        mov     eax, dword [ebp+8H]                     ; 0C3C _ 8B. 45, 08
        shr     eax, 4                                  ; 0C3F _ C1. E8, 04
        mov     dword [ebp+8H], eax                     ; 0C42 _ 89. 45, 08
        cmp     dword [ebp-4H], 9                       ; 0C45 _ 83. 7D, FC, 09
        jle     ?_044                                   ; 0C49 _ 7E, 14
        mov     eax, dword [ebp-4H]                     ; 0C4B _ 8B. 45, FC
        add     eax, 55                                 ; 0C4E _ 83. C0, 37
        mov     edx, eax                                ; 0C51 _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 0C53 _ 8B. 45, F8
        add     eax, str.1754                           ; 0C56 _ 05, 00000220(d)
        mov     byte [eax], dl                          ; 0C5B _ 88. 10
        jmp     ?_045                                   ; 0C5D _ EB, 12

?_044:  mov     eax, dword [ebp-4H]                     ; 0C5F _ 8B. 45, FC
        add     eax, 48                                 ; 0C62 _ 83. C0, 30
        mov     edx, eax                                ; 0C65 _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 0C67 _ 8B. 45, F8
        add     eax, str.1754                           ; 0C6A _ 05, 00000220(d)
        mov     byte [eax], dl                          ; 0C6F _ 88. 10
?_045:  sub     dword [ebp-8H], 1                       ; 0C71 _ 83. 6D, F8, 01
?_046:  cmp     dword [ebp-8H], 1                       ; 0C75 _ 83. 7D, F8, 01
        jle     ?_047                                   ; 0C79 _ 7E, 06
        cmp     dword [ebp+8H], 0                       ; 0C7B _ 83. 7D, 08, 00
        jnz     ?_043                                   ; 0C7F _ 75, B2
?_047:  mov     eax, str.1754                           ; 0C81 _ B8, 00000220(d)
        leave                                           ; 0C86 _ C9
        ret                                             ; 0C87 _ C3
; intToHexStr End of function

wait_KBC_sendready:; Function begin
        push    ebp                                     ; 0C88 _ 55
        mov     ebp, esp                                ; 0C89 _ 89. E5
        sub     esp, 8                                  ; 0C8B _ 83. EC, 08
?_048:  sub     esp, 12                                 ; 0C8E _ 83. EC, 0C
        push    100                                     ; 0C91 _ 6A, 64
        call    io_in8                                  ; 0C93 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0C98 _ 83. C4, 10
        movsx   eax, al                                 ; 0C9B _ 0F BE. C0
        and     eax, 02H                                ; 0C9E _ 83. E0, 02
        test    eax, eax                                ; 0CA1 _ 85. C0
        jz      ?_049                                   ; 0CA3 _ 74, 02
        jmp     ?_048                                   ; 0CA5 _ EB, E7

?_049:  nop                                             ; 0CA7 _ 90
        nop                                             ; 0CA8 _ 90
        leave                                           ; 0CA9 _ C9
        ret                                             ; 0CAA _ C3
; wait_KBC_sendready End of function

init_keyboard:; Function begin
        push    ebp                                     ; 0CAB _ 55
        mov     ebp, esp                                ; 0CAC _ 89. E5
        sub     esp, 8                                  ; 0CAE _ 83. EC, 08
        call    wait_KBC_sendready                      ; 0CB1 _ E8, FFFFFFFC(rel)
        sub     esp, 8                                  ; 0CB6 _ 83. EC, 08
        push    96                                      ; 0CB9 _ 6A, 60
        push    100                                     ; 0CBB _ 6A, 64
        call    io_out8                                 ; 0CBD _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0CC2 _ 83. C4, 10
        call    wait_KBC_sendready                      ; 0CC5 _ E8, FFFFFFFC(rel)
        sub     esp, 8                                  ; 0CCA _ 83. EC, 08
        push    71                                      ; 0CCD _ 6A, 47
        push    96                                      ; 0CCF _ 6A, 60
        call    io_out8                                 ; 0CD1 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0CD6 _ 83. C4, 10
        nop                                             ; 0CD9 _ 90
        leave                                           ; 0CDA _ C9
        ret                                             ; 0CDB _ C3
; init_keyboard End of function

enable_mouse:; Function begin
        push    ebp                                     ; 0CDC _ 55
        mov     ebp, esp                                ; 0CDD _ 89. E5
        sub     esp, 8                                  ; 0CDF _ 83. EC, 08
        call    wait_KBC_sendready                      ; 0CE2 _ E8, FFFFFFFC(rel)
        sub     esp, 8                                  ; 0CE7 _ 83. EC, 08
        push    212                                     ; 0CEA _ 68, 000000D4
        push    100                                     ; 0CEF _ 6A, 64
        call    io_out8                                 ; 0CF1 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0CF6 _ 83. C4, 10
        call    wait_KBC_sendready                      ; 0CF9 _ E8, FFFFFFFC(rel)
        sub     esp, 8                                  ; 0CFE _ 83. EC, 08
        push    244                                     ; 0D01 _ 68, 000000F4
        push    96                                      ; 0D06 _ 6A, 60
        call    io_out8                                 ; 0D08 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0D0D _ 83. C4, 10
        mov     eax, dword [ebp+8H]                     ; 0D10 _ 8B. 45, 08
        mov     byte [eax+3H], 0                        ; 0D13 _ C6. 40, 03, 00
        nop                                             ; 0D17 _ 90
        leave                                           ; 0D18 _ C9
        ret                                             ; 0D19 _ C3
; enable_mouse End of function

intHandlerForMouse:; Function begin
        push    ebp                                     ; 0D1A _ 55
        mov     ebp, esp                                ; 0D1B _ 89. E5
        sub     esp, 24                                 ; 0D1D _ 83. EC, 18
        sub     esp, 8                                  ; 0D20 _ 83. EC, 08
        push    32                                      ; 0D23 _ 6A, 20
        push    160                                     ; 0D25 _ 68, 000000A0
        call    io_out8                                 ; 0D2A _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0D2F _ 83. C4, 10
        sub     esp, 8                                  ; 0D32 _ 83. EC, 08
        push    32                                      ; 0D35 _ 6A, 20
        push    32                                      ; 0D37 _ 6A, 20
        call    io_out8                                 ; 0D39 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0D3E _ 83. C4, 10
        sub     esp, 12                                 ; 0D41 _ 83. EC, 0C
        push    96                                      ; 0D44 _ 6A, 60
        call    io_in8                                  ; 0D46 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0D4B _ 83. C4, 10
        mov     byte [ebp-9H], al                       ; 0D4E _ 88. 45, F7
        movzx   eax, byte [ebp-9H]                      ; 0D51 _ 0F B6. 45, F7
        sub     esp, 8                                  ; 0D55 _ 83. EC, 08
        push    eax                                     ; 0D58 _ 50
        push    mouseinfo                               ; 0D59 _ 68, 00000020(d)
        call    fifo8_put                               ; 0D5E _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0D63 _ 83. C4, 10
        nop                                             ; 0D66 _ 90
        leave                                           ; 0D67 _ C9
        ret                                             ; 0D68 _ C3
; intHandlerForMouse End of function

fifo8_init:; Function begin
        push    ebp                                     ; 0D69 _ 55
        mov     ebp, esp                                ; 0D6A _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 0D6C _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 0D6F _ 8B. 55, 0C
        mov     dword [eax+0CH], edx                    ; 0D72 _ 89. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 0D75 _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 0D78 _ 8B. 55, 10
        mov     dword [eax], edx                        ; 0D7B _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 0D7D _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 0D80 _ 8B. 55, 0C
        mov     dword [eax+10H], edx                    ; 0D83 _ 89. 50, 10
        mov     eax, dword [ebp+8H]                     ; 0D86 _ 8B. 45, 08
        mov     dword [eax+14H], 0                      ; 0D89 _ C7. 40, 14, 00000000
        mov     eax, dword [ebp+8H]                     ; 0D90 _ 8B. 45, 08
        mov     dword [eax+4H], 0                       ; 0D93 _ C7. 40, 04, 00000000
        mov     eax, dword [ebp+8H]                     ; 0D9A _ 8B. 45, 08
        mov     dword [eax+8H], 0                       ; 0D9D _ C7. 40, 08, 00000000
        nop                                             ; 0DA4 _ 90
        pop     ebp                                     ; 0DA5 _ 5D
        ret                                             ; 0DA6 _ C3
; fifo8_init End of function

fifo8_put:; Function begin
        push    ebp                                     ; 0DA7 _ 55
        mov     ebp, esp                                ; 0DA8 _ 89. E5
        sub     esp, 4                                  ; 0DAA _ 83. EC, 04
        mov     eax, dword [ebp+0CH]                    ; 0DAD _ 8B. 45, 0C
        mov     byte [ebp-4H], al                       ; 0DB0 _ 88. 45, FC
        mov     eax, dword [ebp+8H]                     ; 0DB3 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 0DB6 _ 8B. 40, 10
        test    eax, eax                                ; 0DB9 _ 85. C0
        jnz     ?_050                                   ; 0DBB _ 75, 18
        mov     eax, dword [ebp+8H]                     ; 0DBD _ 8B. 45, 08
        mov     eax, dword [eax+14H]                    ; 0DC0 _ 8B. 40, 14
        or      eax, 01H                                ; 0DC3 _ 83. C8, 01
        mov     edx, eax                                ; 0DC6 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 0DC8 _ 8B. 45, 08
        mov     dword [eax+14H], edx                    ; 0DCB _ 89. 50, 14
        mov     eax, 4294967295                         ; 0DCE _ B8, FFFFFFFF
        jmp     ?_052                                   ; 0DD3 _ EB, 50

?_050:  mov     eax, dword [ebp+8H]                     ; 0DD5 _ 8B. 45, 08
        mov     edx, dword [eax]                        ; 0DD8 _ 8B. 10
        mov     eax, dword [ebp+8H]                     ; 0DDA _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 0DDD _ 8B. 40, 04
        add     edx, eax                                ; 0DE0 _ 01. C2
        movzx   eax, byte [ebp-4H]                      ; 0DE2 _ 0F B6. 45, FC
        mov     byte [edx], al                          ; 0DE6 _ 88. 02
        mov     eax, dword [ebp+8H]                     ; 0DE8 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 0DEB _ 8B. 40, 04
        lea     edx, [eax+1H]                           ; 0DEE _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 0DF1 _ 8B. 45, 08
        mov     dword [eax+4H], edx                     ; 0DF4 _ 89. 50, 04
        mov     eax, dword [ebp+8H]                     ; 0DF7 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 0DFA _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 0DFD _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 0E00 _ 8B. 40, 0C
        cmp     edx, eax                                ; 0E03 _ 39. C2
        jnz     ?_051                                   ; 0E05 _ 75, 0A
        mov     eax, dword [ebp+8H]                     ; 0E07 _ 8B. 45, 08
        mov     dword [eax+4H], 0                       ; 0E0A _ C7. 40, 04, 00000000
?_051:  mov     eax, dword [ebp+8H]                     ; 0E11 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 0E14 _ 8B. 40, 10
        lea     edx, [eax-1H]                           ; 0E17 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 0E1A _ 8B. 45, 08
        mov     dword [eax+10H], edx                    ; 0E1D _ 89. 50, 10
        mov     eax, 0                                  ; 0E20 _ B8, 00000000
?_052:  leave                                           ; 0E25 _ C9
        ret                                             ; 0E26 _ C3
; fifo8_put End of function

fifo8_get:; Function begin
        push    ebp                                     ; 0E27 _ 55
        mov     ebp, esp                                ; 0E28 _ 89. E5
        sub     esp, 16                                 ; 0E2A _ 83. EC, 10
        mov     eax, dword [ebp+8H]                     ; 0E2D _ 8B. 45, 08
        mov     edx, dword [eax+10H]                    ; 0E30 _ 8B. 50, 10
        mov     eax, dword [ebp+8H]                     ; 0E33 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 0E36 _ 8B. 40, 0C
        cmp     edx, eax                                ; 0E39 _ 39. C2
        jnz     ?_053                                   ; 0E3B _ 75, 07
        mov     eax, 4294967295                         ; 0E3D _ B8, FFFFFFFF
        jmp     ?_055                                   ; 0E42 _ EB, 51

?_053:  mov     eax, dword [ebp+8H]                     ; 0E44 _ 8B. 45, 08
        mov     edx, dword [eax]                        ; 0E47 _ 8B. 10
        mov     eax, dword [ebp+8H]                     ; 0E49 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 0E4C _ 8B. 40, 08
        add     eax, edx                                ; 0E4F _ 01. D0
        movzx   eax, byte [eax]                         ; 0E51 _ 0F B6. 00
        movzx   eax, al                                 ; 0E54 _ 0F B6. C0
        mov     dword [ebp-4H], eax                     ; 0E57 _ 89. 45, FC
        mov     eax, dword [ebp+8H]                     ; 0E5A _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 0E5D _ 8B. 40, 08
        lea     edx, [eax+1H]                           ; 0E60 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 0E63 _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 0E66 _ 89. 50, 08
        mov     eax, dword [ebp+8H]                     ; 0E69 _ 8B. 45, 08
        mov     edx, dword [eax+8H]                     ; 0E6C _ 8B. 50, 08
        mov     eax, dword [ebp+8H]                     ; 0E6F _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 0E72 _ 8B. 40, 0C
        cmp     edx, eax                                ; 0E75 _ 39. C2
        jnz     ?_054                                   ; 0E77 _ 75, 0A
        mov     eax, dword [ebp+8H]                     ; 0E79 _ 8B. 45, 08
        mov     dword [eax+8H], 0                       ; 0E7C _ C7. 40, 08, 00000000
?_054:  mov     eax, dword [ebp+8H]                     ; 0E83 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 0E86 _ 8B. 40, 10
        lea     edx, [eax+1H]                           ; 0E89 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 0E8C _ 8B. 45, 08
        mov     dword [eax+10H], edx                    ; 0E8F _ 89. 50, 10
        mov     eax, dword [ebp-4H]                     ; 0E92 _ 8B. 45, FC
?_055:  leave                                           ; 0E95 _ C9
        ret                                             ; 0E96 _ C3
; fifo8_get End of function

fifo8_status:; Function begin
        push    ebp                                     ; 0E97 _ 55
        mov     ebp, esp                                ; 0E98 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 0E9A _ 8B. 45, 08
        mov     edx, dword [eax+0CH]                    ; 0E9D _ 8B. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 0EA0 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 0EA3 _ 8B. 40, 10
        sub     edx, eax                                ; 0EA6 _ 29. C2
        mov     eax, edx                                ; 0EA8 _ 89. D0
        pop     ebp                                     ; 0EAA _ 5D
        ret                                             ; 0EAB _ C3
; fifo8_status End of function

mouse_decode:; Function begin
        push    ebp                                     ; 0EAC _ 55
        mov     ebp, esp                                ; 0EAD _ 89. E5
        sub     esp, 4                                  ; 0EAF _ 83. EC, 04
        mov     eax, dword [ebp+0CH]                    ; 0EB2 _ 8B. 45, 0C
        mov     byte [ebp-4H], al                       ; 0EB5 _ 88. 45, FC
        mov     eax, dword [ebp+8H]                     ; 0EB8 _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 0EBB _ 0F B6. 40, 03
        test    al, al                                  ; 0EBF _ 84. C0
        jnz     ?_057                                   ; 0EC1 _ 75, 17
        cmp     byte [ebp-4H], -6                       ; 0EC3 _ 80. 7D, FC, FA
        jnz     ?_056                                   ; 0EC7 _ 75, 07
        mov     eax, dword [ebp+8H]                     ; 0EC9 _ 8B. 45, 08
        mov     byte [eax+3H], 1                        ; 0ECC _ C6. 40, 03, 01
?_056:  mov     eax, 0                                  ; 0ED0 _ B8, 00000000
        jmp     ?_064                                   ; 0ED5 _ E9, 0000010F

?_057:  mov     eax, dword [ebp+8H]                     ; 0EDA _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 0EDD _ 0F B6. 40, 03
        cmp     al, 1                                   ; 0EE1 _ 3C, 01
        jnz     ?_059                                   ; 0EE3 _ 75, 28
        movzx   eax, byte [ebp-4H]                      ; 0EE5 _ 0F B6. 45, FC
        and     eax, 0C8H                               ; 0EE9 _ 25, 000000C8
        cmp     eax, 8                                  ; 0EEE _ 83. F8, 08
        jnz     ?_058                                   ; 0EF1 _ 75, 10
        mov     eax, dword [ebp+8H]                     ; 0EF3 _ 8B. 45, 08
        movzx   edx, byte [ebp-4H]                      ; 0EF6 _ 0F B6. 55, FC
        mov     byte [eax], dl                          ; 0EFA _ 88. 10
        mov     eax, dword [ebp+8H]                     ; 0EFC _ 8B. 45, 08
        mov     byte [eax+3H], 2                        ; 0EFF _ C6. 40, 03, 02
?_058:  mov     eax, 0                                  ; 0F03 _ B8, 00000000
        jmp     ?_064                                   ; 0F08 _ E9, 000000DC

?_059:  mov     eax, dword [ebp+8H]                     ; 0F0D _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 0F10 _ 0F B6. 40, 03
        cmp     al, 2                                   ; 0F14 _ 3C, 02
        jnz     ?_060                                   ; 0F16 _ 75, 1B
        mov     eax, dword [ebp+8H]                     ; 0F18 _ 8B. 45, 08
        movzx   edx, byte [ebp-4H]                      ; 0F1B _ 0F B6. 55, FC
        mov     byte [eax+1H], dl                       ; 0F1F _ 88. 50, 01
        mov     eax, dword [ebp+8H]                     ; 0F22 _ 8B. 45, 08
        mov     byte [eax+3H], 3                        ; 0F25 _ C6. 40, 03, 03
        mov     eax, 0                                  ; 0F29 _ B8, 00000000
        jmp     ?_064                                   ; 0F2E _ E9, 000000B6

?_060:  mov     eax, dword [ebp+8H]                     ; 0F33 _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 0F36 _ 0F B6. 40, 03
        cmp     al, 3                                   ; 0F3A _ 3C, 03
        jne     ?_063                                   ; 0F3C _ 0F 85, 000000A2
        mov     eax, dword [ebp+8H]                     ; 0F42 _ 8B. 45, 08
        movzx   edx, byte [ebp-4H]                      ; 0F45 _ 0F B6. 55, FC
        mov     byte [eax+2H], dl                       ; 0F49 _ 88. 50, 02
        mov     eax, dword [ebp+8H]                     ; 0F4C _ 8B. 45, 08
        mov     byte [eax+3H], 1                        ; 0F4F _ C6. 40, 03, 01
        mov     eax, dword [ebp+8H]                     ; 0F53 _ 8B. 45, 08
        movzx   eax, byte [eax]                         ; 0F56 _ 0F B6. 00
        movzx   eax, al                                 ; 0F59 _ 0F B6. C0
        and     eax, 07H                                ; 0F5C _ 83. E0, 07
        mov     edx, eax                                ; 0F5F _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 0F61 _ 8B. 45, 08
        mov     dword [eax+0CH], edx                    ; 0F64 _ 89. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 0F67 _ 8B. 45, 08
        movzx   eax, byte [eax+1H]                      ; 0F6A _ 0F B6. 40, 01
        movzx   edx, al                                 ; 0F6E _ 0F B6. D0
        mov     eax, dword [ebp+8H]                     ; 0F71 _ 8B. 45, 08
        mov     dword [eax+4H], edx                     ; 0F74 _ 89. 50, 04
        mov     eax, dword [ebp+8H]                     ; 0F77 _ 8B. 45, 08
        movzx   eax, byte [eax+2H]                      ; 0F7A _ 0F B6. 40, 02
        movzx   edx, al                                 ; 0F7E _ 0F B6. D0
        mov     eax, dword [ebp+8H]                     ; 0F81 _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 0F84 _ 89. 50, 08
        mov     eax, dword [ebp+8H]                     ; 0F87 _ 8B. 45, 08
        movzx   eax, byte [eax]                         ; 0F8A _ 0F B6. 00
        movzx   eax, al                                 ; 0F8D _ 0F B6. C0
        and     eax, 10H                                ; 0F90 _ 83. E0, 10
        test    eax, eax                                ; 0F93 _ 85. C0
        jz      ?_061                                   ; 0F95 _ 74, 13
        mov     eax, dword [ebp+8H]                     ; 0F97 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 0F9A _ 8B. 40, 04
        or      eax, 0FFFFFF00H                         ; 0F9D _ 0D, FFFFFF00
        mov     edx, eax                                ; 0FA2 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 0FA4 _ 8B. 45, 08
        mov     dword [eax+4H], edx                     ; 0FA7 _ 89. 50, 04
?_061:  mov     eax, dword [ebp+8H]                     ; 0FAA _ 8B. 45, 08
        movzx   eax, byte [eax]                         ; 0FAD _ 0F B6. 00
        movzx   eax, al                                 ; 0FB0 _ 0F B6. C0
        and     eax, 20H                                ; 0FB3 _ 83. E0, 20
        test    eax, eax                                ; 0FB6 _ 85. C0
        jz      ?_062                                   ; 0FB8 _ 74, 13
        mov     eax, dword [ebp+8H]                     ; 0FBA _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 0FBD _ 8B. 40, 08
        or      eax, 0FFFFFF00H                         ; 0FC0 _ 0D, FFFFFF00
        mov     edx, eax                                ; 0FC5 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 0FC7 _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 0FCA _ 89. 50, 08
?_062:  mov     eax, dword [ebp+8H]                     ; 0FCD _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 0FD0 _ 8B. 40, 08
        neg     eax                                     ; 0FD3 _ F7. D8
        mov     edx, eax                                ; 0FD5 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 0FD7 _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 0FDA _ 89. 50, 08
        mov     eax, 1                                  ; 0FDD _ B8, 00000001
        jmp     ?_064                                   ; 0FE2 _ EB, 05

?_063:  mov     eax, 4294967295                         ; 0FE4 _ B8, FFFFFFFF
?_064:  leave                                           ; 0FE9 _ C9
        ret                                             ; 0FEA _ C3
; mouse_decode End of function

showMemoryInfo:; Function begin
        push    ebp                                     ; 0FEB _ 55
        mov     ebp, esp                                ; 0FEC _ 89. E5
        sub     esp, 56                                 ; 0FEE _ 83. EC, 38
        mov     dword [ebp-30H], 0                      ; 0FF1 _ C7. 45, D0, 00000000
        mov     dword [ebp-2CH], 0                      ; 0FF8 _ C7. 45, D4, 00000000
        mov     dword [ebp-28H], 104                    ; 0FFF _ C7. 45, D8, 00000068
        mov     dword [ebp-24H], 80                     ; 1006 _ C7. 45, DC, 00000050
        push    100                                     ; 100D _ 6A, 64
        push    dword [ebp+14H]                         ; 100F _ FF. 75, 14
        push    0                                       ; 1012 _ 6A, 00
        push    0                                       ; 1014 _ 6A, 00
        push    14                                      ; 1016 _ 6A, 0E
        push    dword [ebp+14H]                         ; 1018 _ FF. 75, 14
        push    dword [ebp+0CH]                         ; 101B _ FF. 75, 0C
        call    boxfill8                                ; 101E _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 1023 _ 83. C4, 1C
        mov     eax, dword [ebp+18H]                    ; 1026 _ 8B. 45, 18
        movsx   eax, al                                 ; 1029 _ 0F BE. C0
        sub     esp, 8                                  ; 102C _ 83. EC, 08
        push    ?_118                                   ; 102F _ 68, 0000000B(d)
        push    eax                                     ; 1034 _ 50
        push    dword [ebp-2CH]                         ; 1035 _ FF. 75, D4
        push    dword [ebp-30H]                         ; 1038 _ FF. 75, D0
        push    dword [ebp+14H]                         ; 103B _ FF. 75, 14
        push    dword [ebp+0CH]                         ; 103E _ FF. 75, 0C
        call    showString                              ; 1041 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1046 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 1049 _ 8B. 45, 10
        sub     esp, 12                                 ; 104C _ 83. EC, 0C
        push    eax                                     ; 104F _ 50
        call    intToHexStr                             ; 1050 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1055 _ 83. C4, 10
        mov     dword [ebp-20H], eax                    ; 1058 _ 89. 45, E0
        mov     eax, dword [ebp+18H]                    ; 105B _ 8B. 45, 18
        movsx   eax, al                                 ; 105E _ 0F BE. C0
        sub     esp, 8                                  ; 1061 _ 83. EC, 08
        push    dword [ebp-20H]                         ; 1064 _ FF. 75, E0
        push    eax                                     ; 1067 _ 50
        push    dword [ebp-2CH]                         ; 1068 _ FF. 75, D4
        push    dword [ebp-28H]                         ; 106B _ FF. 75, D8
        push    dword [ebp+14H]                         ; 106E _ FF. 75, 14
        push    dword [ebp+0CH]                         ; 1071 _ FF. 75, 0C
        call    showString                              ; 1074 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1079 _ 83. C4, 20
        add     dword [ebp-2CH], 16                     ; 107C _ 83. 45, D4, 10
        mov     eax, dword [ebp+18H]                    ; 1080 _ 8B. 45, 18
        movsx   eax, al                                 ; 1083 _ 0F BE. C0
        sub     esp, 8                                  ; 1086 _ 83. EC, 08
        push    ?_119                                   ; 1089 _ 68, 00000015(d)
        push    eax                                     ; 108E _ 50
        push    dword [ebp-2CH]                         ; 108F _ FF. 75, D4
        push    dword [ebp-30H]                         ; 1092 _ FF. 75, D0
        push    dword [ebp+14H]                         ; 1095 _ FF. 75, 14
        push    dword [ebp+0CH]                         ; 1098 _ FF. 75, 0C
        call    showString                              ; 109B _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 10A0 _ 83. C4, 20
        mov     eax, dword [ebp+8H]                     ; 10A3 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 10A6 _ 8B. 00
        sub     esp, 12                                 ; 10A8 _ 83. EC, 0C
        push    eax                                     ; 10AB _ 50
        call    intToHexStr                             ; 10AC _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 10B1 _ 83. C4, 10
        mov     dword [ebp-1CH], eax                    ; 10B4 _ 89. 45, E4
        mov     eax, dword [ebp+18H]                    ; 10B7 _ 8B. 45, 18
        movsx   eax, al                                 ; 10BA _ 0F BE. C0
        sub     esp, 8                                  ; 10BD _ 83. EC, 08
        push    dword [ebp-1CH]                         ; 10C0 _ FF. 75, E4
        push    eax                                     ; 10C3 _ 50
        push    dword [ebp-2CH]                         ; 10C4 _ FF. 75, D4
        push    dword [ebp-28H]                         ; 10C7 _ FF. 75, D8
        push    dword [ebp+14H]                         ; 10CA _ FF. 75, 14
        push    dword [ebp+0CH]                         ; 10CD _ FF. 75, 0C
        call    showString                              ; 10D0 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 10D5 _ 83. C4, 20
        add     dword [ebp-2CH], 16                     ; 10D8 _ 83. 45, D4, 10
        mov     eax, dword [ebp+18H]                    ; 10DC _ 8B. 45, 18
        movsx   eax, al                                 ; 10DF _ 0F BE. C0
        sub     esp, 8                                  ; 10E2 _ 83. EC, 08
        push    ?_120                                   ; 10E5 _ 68, 00000021(d)
        push    eax                                     ; 10EA _ 50
        push    dword [ebp-2CH]                         ; 10EB _ FF. 75, D4
        push    dword [ebp-30H]                         ; 10EE _ FF. 75, D0
        push    dword [ebp+14H]                         ; 10F1 _ FF. 75, 14
        push    dword [ebp+0CH]                         ; 10F4 _ FF. 75, 0C
        call    showString                              ; 10F7 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 10FC _ 83. C4, 20
        mov     eax, dword [ebp+8H]                     ; 10FF _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 1102 _ 8B. 40, 04
        sub     esp, 12                                 ; 1105 _ 83. EC, 0C
        push    eax                                     ; 1108 _ 50
        call    intToHexStr                             ; 1109 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 110E _ 83. C4, 10
        mov     dword [ebp-18H], eax                    ; 1111 _ 89. 45, E8
        mov     eax, dword [ebp+18H]                    ; 1114 _ 8B. 45, 18
        movsx   eax, al                                 ; 1117 _ 0F BE. C0
        sub     esp, 8                                  ; 111A _ 83. EC, 08
        push    dword [ebp-18H]                         ; 111D _ FF. 75, E8
        push    eax                                     ; 1120 _ 50
        push    dword [ebp-2CH]                         ; 1121 _ FF. 75, D4
        push    dword [ebp-28H]                         ; 1124 _ FF. 75, D8
        push    dword [ebp+14H]                         ; 1127 _ FF. 75, 14
        push    dword [ebp+0CH]                         ; 112A _ FF. 75, 0C
        call    showString                              ; 112D _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1132 _ 83. C4, 20
        add     dword [ebp-2CH], 16                     ; 1135 _ 83. 45, D4, 10
        mov     eax, dword [ebp+18H]                    ; 1139 _ 8B. 45, 18
        movsx   eax, al                                 ; 113C _ 0F BE. C0
        sub     esp, 8                                  ; 113F _ 83. EC, 08
        push    ?_121                                   ; 1142 _ 68, 0000002D(d)
        push    eax                                     ; 1147 _ 50
        push    dword [ebp-2CH]                         ; 1148 _ FF. 75, D4
        push    dword [ebp-30H]                         ; 114B _ FF. 75, D0
        push    dword [ebp+14H]                         ; 114E _ FF. 75, 14
        push    dword [ebp+0CH]                         ; 1151 _ FF. 75, 0C
        call    showString                              ; 1154 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1159 _ 83. C4, 20
        mov     eax, dword [ebp+8H]                     ; 115C _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 115F _ 8B. 40, 08
        sub     esp, 12                                 ; 1162 _ 83. EC, 0C
        push    eax                                     ; 1165 _ 50
        call    intToHexStr                             ; 1166 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 116B _ 83. C4, 10
        mov     dword [ebp-14H], eax                    ; 116E _ 89. 45, EC
        mov     eax, dword [ebp+18H]                    ; 1171 _ 8B. 45, 18
        movsx   eax, al                                 ; 1174 _ 0F BE. C0
        sub     esp, 8                                  ; 1177 _ 83. EC, 08
        push    dword [ebp-14H]                         ; 117A _ FF. 75, EC
        push    eax                                     ; 117D _ 50
        push    dword [ebp-2CH]                         ; 117E _ FF. 75, D4
        push    dword [ebp-28H]                         ; 1181 _ FF. 75, D8
        push    dword [ebp+14H]                         ; 1184 _ FF. 75, 14
        push    dword [ebp+0CH]                         ; 1187 _ FF. 75, 0C
        call    showString                              ; 118A _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 118F _ 83. C4, 20
        add     dword [ebp-2CH], 16                     ; 1192 _ 83. 45, D4, 10
        mov     eax, dword [ebp+18H]                    ; 1196 _ 8B. 45, 18
        movsx   eax, al                                 ; 1199 _ 0F BE. C0
        sub     esp, 8                                  ; 119C _ 83. EC, 08
        push    ?_122                                   ; 119F _ 68, 00000039(d)
        push    eax                                     ; 11A4 _ 50
        push    dword [ebp-2CH]                         ; 11A5 _ FF. 75, D4
        push    dword [ebp-30H]                         ; 11A8 _ FF. 75, D0
        push    dword [ebp+14H]                         ; 11AB _ FF. 75, 14
        push    dword [ebp+0CH]                         ; 11AE _ FF. 75, 0C
        call    showString                              ; 11B1 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 11B6 _ 83. C4, 20
        mov     eax, dword [ebp+8H]                     ; 11B9 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 11BC _ 8B. 40, 0C
        sub     esp, 12                                 ; 11BF _ 83. EC, 0C
        push    eax                                     ; 11C2 _ 50
        call    intToHexStr                             ; 11C3 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 11C8 _ 83. C4, 10
        mov     dword [ebp-10H], eax                    ; 11CB _ 89. 45, F0
        mov     eax, dword [ebp+18H]                    ; 11CE _ 8B. 45, 18
        movsx   eax, al                                 ; 11D1 _ 0F BE. C0
        sub     esp, 8                                  ; 11D4 _ 83. EC, 08
        push    dword [ebp-10H]                         ; 11D7 _ FF. 75, F0
        push    eax                                     ; 11DA _ 50
        push    dword [ebp-2CH]                         ; 11DB _ FF. 75, D4
        push    dword [ebp-28H]                         ; 11DE _ FF. 75, D8
        push    dword [ebp+14H]                         ; 11E1 _ FF. 75, 14
        push    dword [ebp+0CH]                         ; 11E4 _ FF. 75, 0C
        call    showString                              ; 11E7 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 11EC _ 83. C4, 20
        add     dword [ebp-2CH], 16                     ; 11EF _ 83. 45, D4, 10
        mov     eax, dword [ebp+18H]                    ; 11F3 _ 8B. 45, 18
        movsx   eax, al                                 ; 11F6 _ 0F BE. C0
        sub     esp, 8                                  ; 11F9 _ 83. EC, 08
        push    ?_123                                   ; 11FC _ 68, 00000046(d)
        push    eax                                     ; 1201 _ 50
        push    dword [ebp-2CH]                         ; 1202 _ FF. 75, D4
        push    dword [ebp-30H]                         ; 1205 _ FF. 75, D0
        push    dword [ebp+14H]                         ; 1208 _ FF. 75, 14
        push    dword [ebp+0CH]                         ; 120B _ FF. 75, 0C
        call    showString                              ; 120E _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1213 _ 83. C4, 20
        mov     eax, dword [ebp+8H]                     ; 1216 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 1219 _ 8B. 40, 10
        sub     esp, 12                                 ; 121C _ 83. EC, 0C
        push    eax                                     ; 121F _ 50
        call    intToHexStr                             ; 1220 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1225 _ 83. C4, 10
        mov     dword [ebp-0CH], eax                    ; 1228 _ 89. 45, F4
        mov     eax, dword [ebp+18H]                    ; 122B _ 8B. 45, 18
        movsx   eax, al                                 ; 122E _ 0F BE. C0
        sub     esp, 8                                  ; 1231 _ 83. EC, 08
        push    dword [ebp-0CH]                         ; 1234 _ FF. 75, F4
        push    eax                                     ; 1237 _ 50
        push    dword [ebp-2CH]                         ; 1238 _ FF. 75, D4
        push    dword [ebp-28H]                         ; 123B _ FF. 75, D8
        push    dword [ebp+14H]                         ; 123E _ FF. 75, 14
        push    dword [ebp+0CH]                         ; 1241 _ FF. 75, 0C
        call    showString                              ; 1244 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1249 _ 83. C4, 20
        nop                                             ; 124C _ 90
        leave                                           ; 124D _ C9
        ret                                             ; 124E _ C3
; showMemoryInfo End of function

memman_init:; Function begin
        push    ebp                                     ; 124F _ 55
        mov     ebp, esp                                ; 1250 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 1252 _ 8B. 45, 08
        mov     dword [eax], 0                          ; 1255 _ C7. 00, 00000000
        mov     eax, dword [ebp+8H]                     ; 125B _ 8B. 45, 08
        mov     dword [eax+4H], 0                       ; 125E _ C7. 40, 04, 00000000
        mov     eax, dword [ebp+8H]                     ; 1265 _ 8B. 45, 08
        mov     dword [eax+8H], 0                       ; 1268 _ C7. 40, 08, 00000000
        mov     eax, dword [ebp+8H]                     ; 126F _ 8B. 45, 08
        mov     dword [eax+0CH], 0                      ; 1272 _ C7. 40, 0C, 00000000
        nop                                             ; 1279 _ 90
        pop     ebp                                     ; 127A _ 5D
        ret                                             ; 127B _ C3
; memman_init End of function

memman_total:; Function begin
        push    ebp                                     ; 127C _ 55
        mov     ebp, esp                                ; 127D _ 89. E5
        sub     esp, 16                                 ; 127F _ 83. EC, 10
        mov     dword [ebp-8H], 0                       ; 1282 _ C7. 45, F8, 00000000
        mov     dword [ebp-4H], 0                       ; 1289 _ C7. 45, FC, 00000000
        jmp     ?_066                                   ; 1290 _ EB, 14

?_065:  mov     eax, dword [ebp+8H]                     ; 1292 _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 1295 _ 8B. 55, FC
        add     edx, 2                                  ; 1298 _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 129B _ 8B. 44 D0, 04
        add     dword [ebp-8H], eax                     ; 129F _ 01. 45, F8
        add     dword [ebp-4H], 1                       ; 12A2 _ 83. 45, FC, 01
?_066:  mov     eax, dword [ebp+8H]                     ; 12A6 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 12A9 _ 8B. 00
        cmp     dword [ebp-4H], eax                     ; 12AB _ 39. 45, FC
        jl      ?_065                                   ; 12AE _ 7C, E2
        mov     eax, dword [ebp-8H]                     ; 12B0 _ 8B. 45, F8
        leave                                           ; 12B3 _ C9
        ret                                             ; 12B4 _ C3
; memman_total End of function

memman_alloc_FF:; Function begin
        push    ebp                                     ; 12B5 _ 55
        mov     ebp, esp                                ; 12B6 _ 89. E5
        sub     esp, 16                                 ; 12B8 _ 83. EC, 10
        mov     dword [ebp-4H], 0                       ; 12BB _ C7. 45, FC, 00000000
        mov     dword [ebp-8H], 0                       ; 12C2 _ C7. 45, F8, 00000000
        jmp     ?_070                                   ; 12C9 _ EB, 67

?_067:  mov     eax, dword [ebp+8H]                     ; 12CB _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 12CE _ 8B. 55, F8
        add     edx, 2                                  ; 12D1 _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 12D4 _ 8B. 44 D0, 04
        cmp     dword [ebp+0CH], eax                    ; 12D8 _ 39. 45, 0C
        ja      ?_069                                   ; 12DB _ 77, 51
        mov     eax, dword [ebp+8H]                     ; 12DD _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 12E0 _ 8B. 55, F8
        add     edx, 2                                  ; 12E3 _ 83. C2, 02
        mov     eax, dword [eax+edx*8]                  ; 12E6 _ 8B. 04 D0
        mov     dword [ebp-4H], eax                     ; 12E9 _ 89. 45, FC
        mov     eax, dword [ebp+8H]                     ; 12EC _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 12EF _ 8B. 55, F8
        add     edx, 2                                  ; 12F2 _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 12F5 _ 8B. 44 D0, 04
        sub     eax, dword [ebp+0CH]                    ; 12F9 _ 2B. 45, 0C
        mov     edx, eax                                ; 12FC _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 12FE _ 8B. 45, 08
        mov     ecx, dword [ebp-8H]                     ; 1301 _ 8B. 4D, F8
        add     ecx, 2                                  ; 1304 _ 83. C1, 02
        mov     dword [eax+ecx*8+4H], edx               ; 1307 _ 89. 54 C8, 04
        mov     eax, dword [ebp+8H]                     ; 130B _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 130E _ 8B. 55, F8
        add     edx, 2                                  ; 1311 _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 1314 _ 8B. 44 D0, 04
        test    eax, eax                                ; 1318 _ 85. C0
        jnz     ?_068                                   ; 131A _ 75, 0D
        mov     eax, dword [ebp+8H]                     ; 131C _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 131F _ 8B. 00
        lea     edx, [eax-1H]                           ; 1321 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 1324 _ 8B. 45, 08
        mov     dword [eax], edx                        ; 1327 _ 89. 10
?_068:  mov     eax, dword [ebp-4H]                     ; 1329 _ 8B. 45, FC
        jmp     ?_071                                   ; 132C _ EB, 13

?_069:  add     dword [ebp-8H], 1                       ; 132E _ 83. 45, F8, 01
?_070:  mov     eax, dword [ebp+8H]                     ; 1332 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 1335 _ 8B. 00
        cmp     dword [ebp-8H], eax                     ; 1337 _ 39. 45, F8
        jl      ?_067                                   ; 133A _ 7C, 8F
        mov     eax, 0                                  ; 133C _ B8, 00000000
?_071:  leave                                           ; 1341 _ C9
        ret                                             ; 1342 _ C3
; memman_alloc_FF End of function

memman_alloc_4K:; Function begin
        push    ebp                                     ; 1343 _ 55
        mov     ebp, esp                                ; 1344 _ 89. E5
        sub     esp, 16                                 ; 1346 _ 83. EC, 10
        mov     eax, dword [ebp+0CH]                    ; 1349 _ 8B. 45, 0C
        add     eax, 4095                               ; 134C _ 05, 00000FFF
        and     eax, 0FFFFF000H                         ; 1351 _ 25, FFFFF000
        mov     dword [ebp+0CH], eax                    ; 1356 _ 89. 45, 0C
        push    dword [ebp+0CH]                         ; 1359 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 135C _ FF. 75, 08
        call    memman_alloc_FF                         ; 135F _ E8, FFFFFFFC(rel)
        add     esp, 8                                  ; 1364 _ 83. C4, 08
        mov     dword [ebp-4H], eax                     ; 1367 _ 89. 45, FC
        mov     eax, dword [ebp-4H]                     ; 136A _ 8B. 45, FC
        leave                                           ; 136D _ C9
        ret                                             ; 136E _ C3
; memman_alloc_4K End of function

memman_free:; Function begin
        push    ebp                                     ; 136F _ 55
        mov     ebp, esp                                ; 1370 _ 89. E5
        push    ebx                                     ; 1372 _ 53
        sub     esp, 16                                 ; 1373 _ 83. EC, 10
        mov     dword [ebp-0CH], 0                      ; 1376 _ C7. 45, F4, 00000000
        jmp     ?_073                                   ; 137D _ EB, 15

?_072:  mov     eax, dword [ebp+8H]                     ; 137F _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 1382 _ 8B. 55, F4
        add     edx, 2                                  ; 1385 _ 83. C2, 02
        mov     eax, dword [eax+edx*8]                  ; 1388 _ 8B. 04 D0
        cmp     dword [ebp+0CH], eax                    ; 138B _ 39. 45, 0C
        jc      ?_074                                   ; 138E _ 72, 10
        add     dword [ebp-0CH], 1                      ; 1390 _ 83. 45, F4, 01
?_073:  mov     eax, dword [ebp+8H]                     ; 1394 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 1397 _ 8B. 00
        cmp     dword [ebp-0CH], eax                    ; 1399 _ 39. 45, F4
        jl      ?_072                                   ; 139C _ 7C, E1
        jmp     ?_075                                   ; 139E _ EB, 01

?_074:  nop                                             ; 13A0 _ 90
?_075:  cmp     dword [ebp-0CH], 0                      ; 13A1 _ 83. 7D, F4, 00
        jle     ?_077                                   ; 13A5 _ 0F 8E, 000000BA
        mov     eax, dword [ebp-0CH]                    ; 13AB _ 8B. 45, F4
        lea     edx, [eax-1H]                           ; 13AE _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 13B1 _ 8B. 45, 08
        add     edx, 2                                  ; 13B4 _ 83. C2, 02
        mov     edx, dword [eax+edx*8]                  ; 13B7 _ 8B. 14 D0
        mov     eax, dword [ebp-0CH]                    ; 13BA _ 8B. 45, F4
        lea     ecx, [eax-1H]                           ; 13BD _ 8D. 48, FF
        mov     eax, dword [ebp+8H]                     ; 13C0 _ 8B. 45, 08
        add     ecx, 2                                  ; 13C3 _ 83. C1, 02
        mov     eax, dword [eax+ecx*8+4H]               ; 13C6 _ 8B. 44 C8, 04
        add     eax, edx                                ; 13CA _ 01. D0
        cmp     dword [ebp+0CH], eax                    ; 13CC _ 39. 45, 0C
        jne     ?_077                                   ; 13CF _ 0F 85, 00000090
        mov     eax, dword [ebp-0CH]                    ; 13D5 _ 8B. 45, F4
        lea     edx, [eax-1H]                           ; 13D8 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 13DB _ 8B. 45, 08
        add     edx, 2                                  ; 13DE _ 83. C2, 02
        mov     edx, dword [eax+edx*8+4H]               ; 13E1 _ 8B. 54 D0, 04
        mov     eax, dword [ebp-0CH]                    ; 13E5 _ 8B. 45, F4
        lea     ebx, [eax-1H]                           ; 13E8 _ 8D. 58, FF
        mov     eax, dword [ebp+10H]                    ; 13EB _ 8B. 45, 10
        lea     ecx, [edx+eax]                          ; 13EE _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 13F1 _ 8B. 45, 08
        lea     edx, [ebx+2H]                           ; 13F4 _ 8D. 53, 02
        mov     dword [eax+edx*8+4H], ecx               ; 13F7 _ 89. 4C D0, 04
        mov     eax, dword [ebp+8H]                     ; 13FB _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 13FE _ 8B. 00
        cmp     dword [ebp-0CH], eax                    ; 1400 _ 39. 45, F4
        jge     ?_076                                   ; 1403 _ 7D, 56
        mov     edx, dword [ebp+0CH]                    ; 1405 _ 8B. 55, 0C
        mov     eax, dword [ebp+10H]                    ; 1408 _ 8B. 45, 10
        lea     ecx, [edx+eax]                          ; 140B _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 140E _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 1411 _ 8B. 55, F4
        add     edx, 2                                  ; 1414 _ 83. C2, 02
        mov     eax, dword [eax+edx*8]                  ; 1417 _ 8B. 04 D0
        cmp     ecx, eax                                ; 141A _ 39. C1
        jnz     ?_076                                   ; 141C _ 75, 3D
        mov     eax, dword [ebp-0CH]                    ; 141E _ 8B. 45, F4
        lea     edx, [eax-1H]                           ; 1421 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 1424 _ 8B. 45, 08
        add     edx, 2                                  ; 1427 _ 83. C2, 02
        mov     edx, dword [eax+edx*8+4H]               ; 142A _ 8B. 54 D0, 04
        mov     eax, dword [ebp+8H]                     ; 142E _ 8B. 45, 08
        mov     ecx, dword [ebp-0CH]                    ; 1431 _ 8B. 4D, F4
        add     ecx, 2                                  ; 1434 _ 83. C1, 02
        mov     eax, dword [eax+ecx*8+4H]               ; 1437 _ 8B. 44 C8, 04
        mov     ecx, dword [ebp-0CH]                    ; 143B _ 8B. 4D, F4
        lea     ebx, [ecx-1H]                           ; 143E _ 8D. 59, FF
        lea     ecx, [edx+eax]                          ; 1441 _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 1444 _ 8B. 45, 08
        lea     edx, [ebx+2H]                           ; 1447 _ 8D. 53, 02
        mov     dword [eax+edx*8+4H], ecx               ; 144A _ 89. 4C D0, 04
        mov     eax, dword [ebp+8H]                     ; 144E _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 1451 _ 8B. 00
        lea     edx, [eax-1H]                           ; 1453 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 1456 _ 8B. 45, 08
        mov     dword [eax], edx                        ; 1459 _ 89. 10
?_076:  mov     eax, 0                                  ; 145B _ B8, 00000000
        jmp     ?_083                                   ; 1460 _ E9, 0000011C

?_077:  mov     eax, dword [ebp+8H]                     ; 1465 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 1468 _ 8B. 00
        cmp     dword [ebp-0CH], eax                    ; 146A _ 39. 45, F4
        jge     ?_078                                   ; 146D _ 7D, 52
        mov     edx, dword [ebp+0CH]                    ; 146F _ 8B. 55, 0C
        mov     eax, dword [ebp+10H]                    ; 1472 _ 8B. 45, 10
        lea     ecx, [edx+eax]                          ; 1475 _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 1478 _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 147B _ 8B. 55, F4
        add     edx, 2                                  ; 147E _ 83. C2, 02
        mov     eax, dword [eax+edx*8]                  ; 1481 _ 8B. 04 D0
        cmp     ecx, eax                                ; 1484 _ 39. C1
        jnz     ?_078                                   ; 1486 _ 75, 39
        mov     eax, dword [ebp+8H]                     ; 1488 _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 148B _ 8B. 55, F4
        lea     ecx, [edx+2H]                           ; 148E _ 8D. 4A, 02
        mov     edx, dword [ebp+0CH]                    ; 1491 _ 8B. 55, 0C
        mov     dword [eax+ecx*8], edx                  ; 1494 _ 89. 14 C8
        mov     eax, dword [ebp+8H]                     ; 1497 _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 149A _ 8B. 55, F4
        add     edx, 2                                  ; 149D _ 83. C2, 02
        mov     edx, dword [eax+edx*8+4H]               ; 14A0 _ 8B. 54 D0, 04
        mov     eax, dword [ebp+10H]                    ; 14A4 _ 8B. 45, 10
        lea     ecx, [edx+eax]                          ; 14A7 _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 14AA _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 14AD _ 8B. 55, F4
        add     edx, 2                                  ; 14B0 _ 83. C2, 02
        mov     dword [eax+edx*8+4H], ecx               ; 14B3 _ 89. 4C D0, 04
        mov     eax, 0                                  ; 14B7 _ B8, 00000000
        jmp     ?_083                                   ; 14BC _ E9, 000000C0

?_078:  mov     eax, dword [ebp+8H]                     ; 14C1 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 14C4 _ 8B. 00
        cmp     eax, 4095                               ; 14C6 _ 3D, 00000FFF
        jg      ?_082                                   ; 14CB _ 0F 8F, 00000087
        mov     eax, dword [ebp+8H]                     ; 14D1 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 14D4 _ 8B. 00
        mov     dword [ebp-8H], eax                     ; 14D6 _ 89. 45, F8
        jmp     ?_080                                   ; 14D9 _ EB, 28

?_079:  mov     eax, dword [ebp-8H]                     ; 14DB _ 8B. 45, F8
        lea     edx, [eax-1H]                           ; 14DE _ 8D. 50, FF
        mov     ecx, dword [ebp+8H]                     ; 14E1 _ 8B. 4D, 08
        mov     eax, dword [ebp-8H]                     ; 14E4 _ 8B. 45, F8
        lea     ebx, [eax+2H]                           ; 14E7 _ 8D. 58, 02
        mov     eax, dword [ebp+8H]                     ; 14EA _ 8B. 45, 08
        add     edx, 2                                  ; 14ED _ 83. C2, 02
        lea     edx, [eax+edx*8]                        ; 14F0 _ 8D. 14 D0
        mov     eax, dword [edx]                        ; 14F3 _ 8B. 02
        mov     edx, dword [edx+4H]                     ; 14F5 _ 8B. 52, 04
        mov     dword [ecx+ebx*8], eax                  ; 14F8 _ 89. 04 D9
        mov     dword [ecx+ebx*8+4H], edx               ; 14FB _ 89. 54 D9, 04
        sub     dword [ebp-8H], 1                       ; 14FF _ 83. 6D, F8, 01
?_080:  mov     eax, dword [ebp-8H]                     ; 1503 _ 8B. 45, F8
        cmp     eax, dword [ebp-0CH]                    ; 1506 _ 3B. 45, F4
        jg      ?_079                                   ; 1509 _ 7F, D0
        mov     eax, dword [ebp+8H]                     ; 150B _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 150E _ 8B. 00
        lea     edx, [eax+1H]                           ; 1510 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 1513 _ 8B. 45, 08
        mov     dword [eax], edx                        ; 1516 _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 1518 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 151B _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 151E _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 1521 _ 8B. 00
        cmp     edx, eax                                ; 1523 _ 39. C2
        jge     ?_081                                   ; 1525 _ 7D, 0B
        mov     eax, dword [ebp+8H]                     ; 1527 _ 8B. 45, 08
        mov     edx, dword [eax]                        ; 152A _ 8B. 10
        mov     eax, dword [ebp+8H]                     ; 152C _ 8B. 45, 08
        mov     dword [eax+4H], edx                     ; 152F _ 89. 50, 04
?_081:  mov     eax, dword [ebp+8H]                     ; 1532 _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 1535 _ 8B. 55, F4
        lea     ecx, [edx+2H]                           ; 1538 _ 8D. 4A, 02
        mov     edx, dword [ebp+0CH]                    ; 153B _ 8B. 55, 0C
        mov     dword [eax+ecx*8], edx                  ; 153E _ 89. 14 C8
        mov     eax, dword [ebp+8H]                     ; 1541 _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 1544 _ 8B. 55, F4
        lea     ecx, [edx+2H]                           ; 1547 _ 8D. 4A, 02
        mov     edx, dword [ebp+10H]                    ; 154A _ 8B. 55, 10
        mov     dword [eax+ecx*8+4H], edx               ; 154D _ 89. 54 C8, 04
        mov     eax, 0                                  ; 1551 _ B8, 00000000
        jmp     ?_083                                   ; 1556 _ EB, 29

?_082:  mov     eax, dword [ebp+8H]                     ; 1558 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 155B _ 8B. 40, 0C
        lea     edx, [eax+1H]                           ; 155E _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 1561 _ 8B. 45, 08
        mov     dword [eax+0CH], edx                    ; 1564 _ 89. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 1567 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 156A _ 8B. 40, 08
        mov     edx, eax                                ; 156D _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 156F _ 8B. 45, 10
        add     eax, edx                                ; 1572 _ 01. D0
        mov     edx, eax                                ; 1574 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 1576 _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 1579 _ 89. 50, 08
        mov     eax, 4294967295                         ; 157C _ B8, FFFFFFFF
?_083:  add     esp, 16                                 ; 1581 _ 83. C4, 10
        pop     ebx                                     ; 1584 _ 5B
        pop     ebp                                     ; 1585 _ 5D
        ret                                             ; 1586 _ C3
; memman_free End of function

memman_free_4K:; Function begin
        push    ebp                                     ; 1587 _ 55
        mov     ebp, esp                                ; 1588 _ 89. E5
        sub     esp, 16                                 ; 158A _ 83. EC, 10
        mov     eax, dword [ebp+10H]                    ; 158D _ 8B. 45, 10
        add     eax, 4095                               ; 1590 _ 05, 00000FFF
        and     eax, 0FFFFF000H                         ; 1595 _ 25, FFFFF000
        mov     dword [ebp+10H], eax                    ; 159A _ 89. 45, 10
        push    dword [ebp+10H]                         ; 159D _ FF. 75, 10
        push    dword [ebp+0CH]                         ; 15A0 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 15A3 _ FF. 75, 08
        call    memman_free                             ; 15A6 _ E8, FFFFFFFC(rel)
        add     esp, 12                                 ; 15AB _ 83. C4, 0C
        mov     dword [ebp-4H], eax                     ; 15AE _ 89. 45, FC
        mov     eax, dword [ebp-4H]                     ; 15B1 _ 8B. 45, FC
        leave                                           ; 15B4 _ C9
        ret                                             ; 15B5 _ C3
; memman_free_4K End of function

shtctl_init:; Function begin
        push    ebp                                     ; 15B6 _ 55
        mov     ebp, esp                                ; 15B7 _ 89. E5
        sub     esp, 24                                 ; 15B9 _ 83. EC, 18
        sub     esp, 8                                  ; 15BC _ 83. EC, 08
        push    9232                                    ; 15BF _ 68, 00002410
        push    dword [ebp+8H]                          ; 15C4 _ FF. 75, 08
        call    memman_alloc_4K                         ; 15C7 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 15CC _ 83. C4, 10
        mov     dword [ebp-0CH], eax                    ; 15CF _ 89. 45, F4
        cmp     dword [ebp-0CH], 0                      ; 15D2 _ 83. 7D, F4, 00
        jnz     ?_084                                   ; 15D6 _ 75, 07
        mov     eax, 0                                  ; 15D8 _ B8, 00000000
        jmp     ?_087                                   ; 15DD _ EB, 54

?_084:  mov     eax, dword [ebp-0CH]                    ; 15DF _ 8B. 45, F4
        mov     edx, dword [ebp+0CH]                    ; 15E2 _ 8B. 55, 0C
        mov     dword [eax], edx                        ; 15E5 _ 89. 10
        mov     eax, dword [ebp-0CH]                    ; 15E7 _ 8B. 45, F4
        mov     edx, dword [ebp+10H]                    ; 15EA _ 8B. 55, 10
        mov     dword [eax+4H], edx                     ; 15ED _ 89. 50, 04
        mov     eax, dword [ebp-0CH]                    ; 15F0 _ 8B. 45, F4
        mov     edx, dword [ebp+14H]                    ; 15F3 _ 8B. 55, 14
        mov     dword [eax+8H], edx                     ; 15F6 _ 89. 50, 08
        mov     eax, dword [ebp-0CH]                    ; 15F9 _ 8B. 45, F4
        mov     dword [eax+0CH], -1                     ; 15FC _ C7. 40, 0C, FFFFFFFF
        mov     dword [ebp-10H], 0                      ; 1603 _ C7. 45, F0, 00000000
        jmp     ?_086                                   ; 160A _ EB, 1B

?_085:  mov     eax, dword [ebp-0CH]                    ; 160C _ 8B. 45, F4
        mov     edx, dword [ebp-10H]                    ; 160F _ 8B. 55, F0
        add     edx, 33                                 ; 1612 _ 83. C2, 21
        shl     edx, 5                                  ; 1615 _ C1. E2, 05
        add     eax, edx                                ; 1618 _ 01. D0
        add     eax, 12                                 ; 161A _ 83. C0, 0C
        mov     dword [eax], 0                          ; 161D _ C7. 00, 00000000
        add     dword [ebp-10H], 1                      ; 1623 _ 83. 45, F0, 01
?_086:  cmp     dword [ebp-10H], 255                    ; 1627 _ 81. 7D, F0, 000000FF
        jle     ?_085                                   ; 162E _ 7E, DC
        mov     eax, dword [ebp-0CH]                    ; 1630 _ 8B. 45, F4
?_087:  leave                                           ; 1633 _ C9
        ret                                             ; 1634 _ C3
; shtctl_init End of function

sheet_alloc:; Function begin
        push    ebp                                     ; 1635 _ 55
        mov     ebp, esp                                ; 1636 _ 89. E5
        sub     esp, 16                                 ; 1638 _ 83. EC, 10
        mov     dword [ebp-8H], 0                       ; 163B _ C7. 45, F8, 00000000
        jmp     ?_090                                   ; 1642 _ EB, 48

?_088:  mov     eax, dword [ebp+8H]                     ; 1644 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 1647 _ 8B. 55, F8
        add     edx, 33                                 ; 164A _ 83. C2, 21
        shl     edx, 5                                  ; 164D _ C1. E2, 05
        add     eax, edx                                ; 1650 _ 01. D0
        add     eax, 12                                 ; 1652 _ 83. C0, 0C
        mov     eax, dword [eax]                        ; 1655 _ 8B. 00
        test    eax, eax                                ; 1657 _ 85. C0
        jnz     ?_089                                   ; 1659 _ 75, 2D
        mov     eax, dword [ebp-8H]                     ; 165B _ 8B. 45, F8
        shl     eax, 5                                  ; 165E _ C1. E0, 05
        lea     edx, [eax+410H]                         ; 1661 _ 8D. 90, 00000410
        mov     eax, dword [ebp+8H]                     ; 1667 _ 8B. 45, 08
        add     eax, edx                                ; 166A _ 01. D0
        mov     dword [ebp-4H], eax                     ; 166C _ 89. 45, FC
        mov     eax, dword [ebp-4H]                     ; 166F _ 8B. 45, FC
        mov     dword [eax+1CH], 1                      ; 1672 _ C7. 40, 1C, 00000001
        mov     eax, dword [ebp-4H]                     ; 1679 _ 8B. 45, FC
        mov     dword [eax+18H], -1                     ; 167C _ C7. 40, 18, FFFFFFFF
        mov     eax, dword [ebp-4H]                     ; 1683 _ 8B. 45, FC
        jmp     ?_091                                   ; 1686 _ EB, 12

?_089:  add     dword [ebp-8H], 1                       ; 1688 _ 83. 45, F8, 01
?_090:  cmp     dword [ebp-8H], 255                     ; 168C _ 81. 7D, F8, 000000FF
        jle     ?_088                                   ; 1693 _ 7E, AF
        mov     eax, 0                                  ; 1695 _ B8, 00000000
?_091:  leave                                           ; 169A _ C9
        ret                                             ; 169B _ C3
; sheet_alloc End of function

sheet_setbuf:; Function begin
        push    ebp                                     ; 169C _ 55
        mov     ebp, esp                                ; 169D _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 169F _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 16A2 _ 8B. 55, 0C
        mov     dword [eax], edx                        ; 16A5 _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 16A7 _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 16AA _ 8B. 55, 10
        mov     dword [eax+4H], edx                     ; 16AD _ 89. 50, 04
        mov     eax, dword [ebp+8H]                     ; 16B0 _ 8B. 45, 08
        mov     edx, dword [ebp+14H]                    ; 16B3 _ 8B. 55, 14
        mov     dword [eax+8H], edx                     ; 16B6 _ 89. 50, 08
        mov     eax, dword [ebp+8H]                     ; 16B9 _ 8B. 45, 08
        mov     edx, dword [ebp+18H]                    ; 16BC _ 8B. 55, 18
        mov     dword [eax+14H], edx                    ; 16BF _ 89. 50, 14
        nop                                             ; 16C2 _ 90
        pop     ebp                                     ; 16C3 _ 5D
        ret                                             ; 16C4 _ C3
; sheet_setbuf End of function

sheet_level_updown:; Function begin
        push    ebp                                     ; 16C5 _ 55
        mov     ebp, esp                                ; 16C6 _ 89. E5
        sub     esp, 40                                 ; 16C8 _ 83. EC, 28
        mov     eax, dword [ebp+0CH]                    ; 16CB _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 16CE _ 8B. 40, 18
        mov     dword [ebp-0CH], eax                    ; 16D1 _ 89. 45, F4
        mov     eax, dword [ebp+8H]                     ; 16D4 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 16D7 _ 8B. 40, 0C
        add     eax, 1                                  ; 16DA _ 83. C0, 01
        cmp     dword [ebp+10H], eax                    ; 16DD _ 39. 45, 10
        jle     ?_092                                   ; 16E0 _ 7E, 0C
        mov     eax, dword [ebp+8H]                     ; 16E2 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 16E5 _ 8B. 40, 0C
        add     eax, 1                                  ; 16E8 _ 83. C0, 01
        mov     dword [ebp+10H], eax                    ; 16EB _ 89. 45, 10
?_092:  cmp     dword [ebp+10H], -1                     ; 16EE _ 83. 7D, 10, FF
        jge     ?_093                                   ; 16F2 _ 7D, 07
        mov     dword [ebp+10H], -1                     ; 16F4 _ C7. 45, 10, FFFFFFFF
?_093:  mov     eax, dword [ebp+0CH]                    ; 16FB _ 8B. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 16FE _ 8B. 55, 10
        mov     dword [eax+18H], edx                    ; 1701 _ 89. 50, 18
        mov     eax, dword [ebp-0CH]                    ; 1704 _ 8B. 45, F4
        cmp     eax, dword [ebp+10H]                    ; 1707 _ 3B. 45, 10
        jle     ?_101                                   ; 170A _ 0F 8E, 000000C9
        cmp     dword [ebp+10H], 0                      ; 1710 _ 83. 7D, 10, 00
        js      ?_096                                   ; 1714 _ 78, 52
        mov     eax, dword [ebp-0CH]                    ; 1716 _ 8B. 45, F4
        mov     dword [ebp-1CH], eax                    ; 1719 _ 89. 45, E4
        jmp     ?_095                                   ; 171C _ EB, 31

?_094:  mov     eax, dword [ebp-1CH]                    ; 171E _ 8B. 45, E4
        lea     edx, [eax-1H]                           ; 1721 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 1724 _ 8B. 45, 08
        add     edx, 4                                  ; 1727 _ 83. C2, 04
        mov     edx, dword [eax+edx*4]                  ; 172A _ 8B. 14 90
        mov     eax, dword [ebp+8H]                     ; 172D _ 8B. 45, 08
        mov     ecx, dword [ebp-1CH]                    ; 1730 _ 8B. 4D, E4
        add     ecx, 4                                  ; 1733 _ 83. C1, 04
        mov     dword [eax+ecx*4], edx                  ; 1736 _ 89. 14 88
        mov     eax, dword [ebp+8H]                     ; 1739 _ 8B. 45, 08
        mov     edx, dword [ebp-1CH]                    ; 173C _ 8B. 55, E4
        add     edx, 4                                  ; 173F _ 83. C2, 04
        mov     eax, dword [eax+edx*4]                  ; 1742 _ 8B. 04 90
        mov     edx, dword [ebp-1CH]                    ; 1745 _ 8B. 55, E4
        mov     dword [eax+18H], edx                    ; 1748 _ 89. 50, 18
        sub     dword [ebp-1CH], 1                      ; 174B _ 83. 6D, E4, 01
?_095:  mov     eax, dword [ebp-1CH]                    ; 174F _ 8B. 45, E4
        cmp     eax, dword [ebp+10H]                    ; 1752 _ 3B. 45, 10
        jg      ?_094                                   ; 1755 _ 7F, C7
        mov     eax, dword [ebp+8H]                     ; 1757 _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 175A _ 8B. 55, 10
        lea     ecx, [edx+4H]                           ; 175D _ 8D. 4A, 04
        mov     edx, dword [ebp+0CH]                    ; 1760 _ 8B. 55, 0C
        mov     dword [eax+ecx*4], edx                  ; 1763 _ 89. 14 88
        jmp     ?_100                                   ; 1766 _ EB, 5E

?_096:  mov     eax, dword [ebp+8H]                     ; 1768 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 176B _ 8B. 40, 0C
        cmp     dword [ebp-0CH], eax                    ; 176E _ 39. 45, F4
        jge     ?_099                                   ; 1771 _ 7D, 44
        mov     eax, dword [ebp-0CH]                    ; 1773 _ 8B. 45, F4
        mov     dword [ebp-18H], eax                    ; 1776 _ 89. 45, E8
        jmp     ?_098                                   ; 1779 _ EB, 31

?_097:  mov     eax, dword [ebp-18H]                    ; 177B _ 8B. 45, E8
        lea     edx, [eax+1H]                           ; 177E _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 1781 _ 8B. 45, 08
        add     edx, 4                                  ; 1784 _ 83. C2, 04
        mov     edx, dword [eax+edx*4]                  ; 1787 _ 8B. 14 90
        mov     eax, dword [ebp+8H]                     ; 178A _ 8B. 45, 08
        mov     ecx, dword [ebp-18H]                    ; 178D _ 8B. 4D, E8
        add     ecx, 4                                  ; 1790 _ 83. C1, 04
        mov     dword [eax+ecx*4], edx                  ; 1793 _ 89. 14 88
        mov     eax, dword [ebp+8H]                     ; 1796 _ 8B. 45, 08
        mov     edx, dword [ebp-18H]                    ; 1799 _ 8B. 55, E8
        add     edx, 4                                  ; 179C _ 83. C2, 04
        mov     eax, dword [eax+edx*4]                  ; 179F _ 8B. 04 90
        mov     edx, dword [ebp-18H]                    ; 17A2 _ 8B. 55, E8
        mov     dword [eax+18H], edx                    ; 17A5 _ 89. 50, 18
        add     dword [ebp-18H], 1                      ; 17A8 _ 83. 45, E8, 01
?_098:  mov     eax, dword [ebp+8H]                     ; 17AC _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 17AF _ 8B. 40, 0C
        cmp     dword [ebp-18H], eax                    ; 17B2 _ 39. 45, E8
        jl      ?_097                                   ; 17B5 _ 7C, C4
?_099:  mov     eax, dword [ebp+8H]                     ; 17B7 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 17BA _ 8B. 40, 0C
        lea     edx, [eax-1H]                           ; 17BD _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 17C0 _ 8B. 45, 08
        mov     dword [eax+0CH], edx                    ; 17C3 _ 89. 50, 0C
?_100:  sub     esp, 12                                 ; 17C6 _ 83. EC, 0C
        push    dword [ebp+8H]                          ; 17C9 _ FF. 75, 08
        call    sheet_refresh                           ; 17CC _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 17D1 _ 83. C4, 10
        jmp     ?_108                                   ; 17D4 _ E9, 000000E0

?_101:  mov     eax, dword [ebp-0CH]                    ; 17D9 _ 8B. 45, F4
        cmp     eax, dword [ebp+10H]                    ; 17DC _ 3B. 45, 10
        jge     ?_108                                   ; 17DF _ 0F 8D, 000000D4
        cmp     dword [ebp-0CH], 0                      ; 17E5 _ 83. 7D, F4, 00
        js      ?_104                                   ; 17E9 _ 78, 52
        mov     eax, dword [ebp-0CH]                    ; 17EB _ 8B. 45, F4
        mov     dword [ebp-14H], eax                    ; 17EE _ 89. 45, EC
        jmp     ?_103                                   ; 17F1 _ EB, 31

?_102:  mov     eax, dword [ebp-14H]                    ; 17F3 _ 8B. 45, EC
        lea     edx, [eax+1H]                           ; 17F6 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 17F9 _ 8B. 45, 08
        add     edx, 4                                  ; 17FC _ 83. C2, 04
        mov     edx, dword [eax+edx*4]                  ; 17FF _ 8B. 14 90
        mov     eax, dword [ebp+8H]                     ; 1802 _ 8B. 45, 08
        mov     ecx, dword [ebp-14H]                    ; 1805 _ 8B. 4D, EC
        add     ecx, 4                                  ; 1808 _ 83. C1, 04
        mov     dword [eax+ecx*4], edx                  ; 180B _ 89. 14 88
        mov     eax, dword [ebp+8H]                     ; 180E _ 8B. 45, 08
        mov     edx, dword [ebp-14H]                    ; 1811 _ 8B. 55, EC
        add     edx, 4                                  ; 1814 _ 83. C2, 04
        mov     eax, dword [eax+edx*4]                  ; 1817 _ 8B. 04 90
        mov     edx, dword [ebp-14H]                    ; 181A _ 8B. 55, EC
        mov     dword [eax+18H], edx                    ; 181D _ 89. 50, 18
        add     dword [ebp-14H], 1                      ; 1820 _ 83. 45, EC, 01
?_103:  mov     eax, dword [ebp-14H]                    ; 1824 _ 8B. 45, EC
        cmp     eax, dword [ebp+10H]                    ; 1827 _ 3B. 45, 10
        jl      ?_102                                   ; 182A _ 7C, C7
        mov     eax, dword [ebp+8H]                     ; 182C _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 182F _ 8B. 55, 10
        lea     ecx, [edx+4H]                           ; 1832 _ 8D. 4A, 04
        mov     edx, dword [ebp+0CH]                    ; 1835 _ 8B. 55, 0C
        mov     dword [eax+ecx*4], edx                  ; 1838 _ 89. 14 88
        jmp     ?_107                                   ; 183B _ EB, 6E

?_104:  cmp     dword [ebp-0CH], 0                      ; 183D _ 83. 7D, F4, 00
        jns     ?_107                                   ; 1841 _ 79, 68
        mov     eax, dword [ebp+8H]                     ; 1843 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 1846 _ 8B. 40, 0C
        mov     dword [ebp-10H], eax                    ; 1849 _ 89. 45, F0
        jmp     ?_106                                   ; 184C _ EB, 37

?_105:  mov     eax, dword [ebp-10H]                    ; 184E _ 8B. 45, F0
        lea     ecx, [eax+1H]                           ; 1851 _ 8D. 48, 01
        mov     eax, dword [ebp+8H]                     ; 1854 _ 8B. 45, 08
        mov     edx, dword [ebp-10H]                    ; 1857 _ 8B. 55, F0
        add     edx, 4                                  ; 185A _ 83. C2, 04
        mov     edx, dword [eax+edx*4]                  ; 185D _ 8B. 14 90
        mov     eax, dword [ebp+8H]                     ; 1860 _ 8B. 45, 08
        add     ecx, 4                                  ; 1863 _ 83. C1, 04
        mov     dword [eax+ecx*4], edx                  ; 1866 _ 89. 14 88
        mov     eax, dword [ebp-10H]                    ; 1869 _ 8B. 45, F0
        lea     edx, [eax+1H]                           ; 186C _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 186F _ 8B. 45, 08
        add     edx, 4                                  ; 1872 _ 83. C2, 04
        mov     eax, dword [eax+edx*4]                  ; 1875 _ 8B. 04 90
        mov     edx, dword [ebp-10H]                    ; 1878 _ 8B. 55, F0
        add     edx, 1                                  ; 187B _ 83. C2, 01
        mov     dword [eax+18H], edx                    ; 187E _ 89. 50, 18
        sub     dword [ebp-10H], 1                      ; 1881 _ 83. 6D, F0, 01
?_106:  mov     eax, dword [ebp-10H]                    ; 1885 _ 8B. 45, F0
        cmp     eax, dword [ebp+10H]                    ; 1888 _ 3B. 45, 10
        jge     ?_105                                   ; 188B _ 7D, C1
        mov     eax, dword [ebp+8H]                     ; 188D _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 1890 _ 8B. 55, 10
        lea     ecx, [edx+4H]                           ; 1893 _ 8D. 4A, 04
        mov     edx, dword [ebp+0CH]                    ; 1896 _ 8B. 55, 0C
        mov     dword [eax+ecx*4], edx                  ; 1899 _ 89. 14 88
        mov     eax, dword [ebp+8H]                     ; 189C _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 189F _ 8B. 40, 0C
        lea     edx, [eax+1H]                           ; 18A2 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 18A5 _ 8B. 45, 08
        mov     dword [eax+0CH], edx                    ; 18A8 _ 89. 50, 0C
?_107:  sub     esp, 12                                 ; 18AB _ 83. EC, 0C
        push    dword [ebp+8H]                          ; 18AE _ FF. 75, 08
        call    sheet_refresh                           ; 18B1 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 18B6 _ 83. C4, 10
?_108:  nop                                             ; 18B9 _ 90
        leave                                           ; 18BA _ C9
        ret                                             ; 18BB _ C3
; sheet_level_updown End of function

sheet_refresh:; Function begin
        push    ebp                                     ; 18BC _ 55
        mov     ebp, esp                                ; 18BD _ 89. E5
        sub     esp, 48                                 ; 18BF _ 83. EC, 30
        mov     eax, dword [ebp+8H]                     ; 18C2 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 18C5 _ 8B. 00
        mov     dword [ebp-14H], eax                    ; 18C7 _ 89. 45, EC
        mov     dword [ebp-20H], 0                      ; 18CA _ C7. 45, E0, 00000000
        jmp     ?_115                                   ; 18D1 _ E9, 000000B8

?_109:  mov     eax, dword [ebp+8H]                     ; 18D6 _ 8B. 45, 08
        mov     edx, dword [ebp-20H]                    ; 18D9 _ 8B. 55, E0
        add     edx, 4                                  ; 18DC _ 83. C2, 04
        mov     eax, dword [eax+edx*4]                  ; 18DF _ 8B. 04 90
        mov     dword [ebp-10H], eax                    ; 18E2 _ 89. 45, F0
        mov     eax, dword [ebp-10H]                    ; 18E5 _ 8B. 45, F0
        mov     eax, dword [eax]                        ; 18E8 _ 8B. 00
        mov     dword [ebp-0CH], eax                    ; 18EA _ 89. 45, F4
        mov     dword [ebp-1CH], 0                      ; 18ED _ C7. 45, E4, 00000000
        jmp     ?_114                                   ; 18F4 _ E9, 00000082

?_110:  mov     eax, dword [ebp-10H]                    ; 18F9 _ 8B. 45, F0
        mov     edx, dword [eax+10H]                    ; 18FC _ 8B. 50, 10
        mov     eax, dword [ebp-1CH]                    ; 18FF _ 8B. 45, E4
        add     eax, edx                                ; 1902 _ 01. D0
        mov     dword [ebp-8H], eax                     ; 1904 _ 89. 45, F8
        mov     dword [ebp-18H], 0                      ; 1907 _ C7. 45, E8, 00000000
        jmp     ?_113                                   ; 190E _ EB, 5C

?_111:  mov     eax, dword [ebp-10H]                    ; 1910 _ 8B. 45, F0
        mov     edx, dword [eax+0CH]                    ; 1913 _ 8B. 50, 0C
        mov     eax, dword [ebp-18H]                    ; 1916 _ 8B. 45, E8
        add     eax, edx                                ; 1919 _ 01. D0
        mov     dword [ebp-4H], eax                     ; 191B _ 89. 45, FC
        mov     eax, dword [ebp-10H]                    ; 191E _ 8B. 45, F0
        mov     eax, dword [eax+4H]                     ; 1921 _ 8B. 40, 04
        imul    eax, dword [ebp-1CH]                    ; 1924 _ 0F AF. 45, E4
        mov     edx, eax                                ; 1928 _ 89. C2
        mov     eax, dword [ebp-18H]                    ; 192A _ 8B. 45, E8
        add     eax, edx                                ; 192D _ 01. D0
        mov     edx, eax                                ; 192F _ 89. C2
        mov     eax, dword [ebp-0CH]                    ; 1931 _ 8B. 45, F4
        add     eax, edx                                ; 1934 _ 01. D0
        movzx   eax, byte [eax]                         ; 1936 _ 0F B6. 00
        mov     byte [ebp-21H], al                      ; 1939 _ 88. 45, DF
        movzx   edx, byte [ebp-21H]                     ; 193C _ 0F B6. 55, DF
        mov     eax, dword [ebp-10H]                    ; 1940 _ 8B. 45, F0
        mov     eax, dword [eax+14H]                    ; 1943 _ 8B. 40, 14
        cmp     edx, eax                                ; 1946 _ 39. C2
        jz      ?_112                                   ; 1948 _ 74, 1E
        mov     eax, dword [ebp+8H]                     ; 194A _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 194D _ 8B. 40, 04
        imul    eax, dword [ebp-8H]                     ; 1950 _ 0F AF. 45, F8
        mov     edx, eax                                ; 1954 _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 1956 _ 8B. 45, FC
        add     eax, edx                                ; 1959 _ 01. D0
        mov     edx, eax                                ; 195B _ 89. C2
        mov     eax, dword [ebp-14H]                    ; 195D _ 8B. 45, EC
        add     edx, eax                                ; 1960 _ 01. C2
        movzx   eax, byte [ebp-21H]                     ; 1962 _ 0F B6. 45, DF
        mov     byte [edx], al                          ; 1966 _ 88. 02
?_112:  add     dword [ebp-18H], 1                      ; 1968 _ 83. 45, E8, 01
?_113:  mov     eax, dword [ebp-10H]                    ; 196C _ 8B. 45, F0
        mov     eax, dword [eax+4H]                     ; 196F _ 8B. 40, 04
        cmp     dword [ebp-18H], eax                    ; 1972 _ 39. 45, E8
        jl      ?_111                                   ; 1975 _ 7C, 99
        add     dword [ebp-1CH], 1                      ; 1977 _ 83. 45, E4, 01
?_114:  mov     eax, dword [ebp-10H]                    ; 197B _ 8B. 45, F0
        mov     eax, dword [eax+8H]                     ; 197E _ 8B. 40, 08
        cmp     dword [ebp-1CH], eax                    ; 1981 _ 39. 45, E4
        jl      ?_110                                   ; 1984 _ 0F 8C, FFFFFF6F
        add     dword [ebp-20H], 1                      ; 198A _ 83. 45, E0, 01
?_115:  mov     eax, dword [ebp+8H]                     ; 198E _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 1991 _ 8B. 40, 0C
        cmp     dword [ebp-20H], eax                    ; 1994 _ 39. 45, E0
        jle     ?_109                                   ; 1997 _ 0F 8E, FFFFFF39
        mov     eax, 0                                  ; 199D _ B8, 00000000
        leave                                           ; 19A2 _ C9
        ret                                             ; 19A3 _ C3
; sheet_refresh End of function

sheet_slide:; Function begin
        push    ebp                                     ; 19A4 _ 55
        mov     ebp, esp                                ; 19A5 _ 89. E5
        mov     eax, dword [ebp+0CH]                    ; 19A7 _ 8B. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 19AA _ 8B. 55, 10
        mov     dword [eax+0CH], edx                    ; 19AD _ 89. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 19B0 _ 8B. 45, 0C
        mov     edx, dword [ebp+14H]                    ; 19B3 _ 8B. 55, 14
        mov     dword [eax+10H], edx                    ; 19B6 _ 89. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 19B9 _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 19BC _ 8B. 40, 18
        test    eax, eax                                ; 19BF _ 85. C0
        js      ?_116                                   ; 19C1 _ 78, 0B
        push    dword [ebp+8H]                          ; 19C3 _ FF. 75, 08
        call    sheet_refresh                           ; 19C6 _ E8, FFFFFFFC(rel)
        add     esp, 4                                  ; 19CB _ 83. C4, 04
?_116:  nop                                             ; 19CE _ 90
        leave                                           ; 19CF _ C9
        ret                                             ; 19D0 _ C3
; sheet_slide End of function



?_117:                                                  ; byte
        db 6DH, 6FH, 75H, 73H, 65H, 20H, 6DH, 6FH       ; 0000 _ mouse mo
        db 76H, 65H, 00H                                ; 0008 _ ve.

?_118:                                                  ; byte
        db 70H, 61H, 67H, 65H, 20H, 69H, 73H, 3AH       ; 000B _ page is:
        db 20H, 00H                                     ; 0013 _  .

?_119:                                                  ; byte
        db 42H, 61H, 73H, 65H, 41H, 64H, 64H, 72H       ; 0015 _ BaseAddr
        db 4CH, 3AH, 20H, 00H                           ; 001D _ L: .

?_120:                                                  ; byte
        db 42H, 61H, 73H, 65H, 41H, 64H, 64H, 72H       ; 0021 _ BaseAddr
        db 48H, 3AH, 20H, 00H                           ; 0029 _ H: .

?_121:                                                  ; byte
        db 6CH, 65H, 6EH, 67H, 74H, 68H, 4CH, 6FH       ; 002D _ lengthLo
        db 77H, 3AH, 20H, 00H                           ; 0035 _ w: .

?_122:                                                  ; byte
        db 6CH, 65H, 6EH, 67H, 74H, 68H, 48H, 69H       ; 0039 _ lengthHi
        db 67H, 68H, 3AH, 20H, 00H                      ; 0041 _ gh: .

?_123:                                                  ; byte
        db 74H, 79H, 70H, 65H, 3AH, 20H, 00H            ; 0046 _ type: .



memman:                                                 ; dword
        dd 00100000H                                    ; 0000 _ 1048576 

keyval:                                                 ; byte
        db 30H, 58H                                     ; 0004 _ 0X

?_124:  db 00H                                          ; 0006 _ .

?_125:  db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0007 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 000F _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0017 _ ........
        db 00H                                          ; 001F _ .

table_rgb.1664:                                         ; byte
        db 00H, 00H, 00H, 0FFH, 00H, 00H, 00H, 0FFH     ; 0020 _ ........
        db 00H, 0FFH, 0FFH, 00H, 00H, 00H, 0FFH, 0FFH   ; 0028 _ ........
        db 00H, 0FFH, 00H, 0FFH, 0FFH, 0FFH, 0FFH, 0FFH ; 0030 _ ........
        db 0C6H, 0C6H, 0C6H, 84H, 00H, 00H, 00H, 84H    ; 0038 _ ........
        db 00H, 84H, 84H, 00H, 00H, 00H, 84H, 84H       ; 0040 _ ........
        db 00H, 84H, 00H, 84H, 84H, 84H, 84H, 84H       ; 0048 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0050 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0058 _ ........

cursor.1709:                                            ; byte
        db 2AH, 2AH, 2AH, 2AH, 2AH, 2AH, 2AH, 2AH       ; 0060 _ ********
        db 2AH, 2AH, 2AH, 2AH, 2AH, 2AH, 2EH, 2EH       ; 0068 _ ******..
        db 2AH, 4FH, 4FH, 4FH, 4FH, 4FH, 4FH, 4FH       ; 0070 _ *OOOOOOO
        db 4FH, 4FH, 4FH, 4FH, 2AH, 2EH, 2EH, 2EH       ; 0078 _ OOOO*...
        db 2AH, 4FH, 4FH, 4FH, 4FH, 4FH, 4FH, 4FH       ; 0080 _ *OOOOOOO
        db 4FH, 4FH, 4FH, 2AH, 2EH, 2EH, 2EH, 2EH       ; 0088 _ OOO*....
        db 2AH, 4FH, 4FH, 4FH, 4FH, 4FH, 4FH, 4FH       ; 0090 _ *OOOOOOO
        db 4FH, 4FH, 2AH, 2EH, 2EH, 2EH, 2EH, 2EH       ; 0098 _ OO*.....
        db 2AH, 4FH, 4FH, 4FH, 4FH, 4FH, 4FH, 4FH       ; 00A0 _ *OOOOOOO
        db 4FH, 2AH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH       ; 00A8 _ O*......
        db 2AH, 4FH, 4FH, 4FH, 4FH, 4FH, 4FH, 4FH       ; 00B0 _ *OOOOOOO
        db 2AH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH       ; 00B8 _ *.......
        db 2AH, 4FH, 4FH, 4FH, 4FH, 4FH, 4FH, 4FH       ; 00C0 _ *OOOOOOO
        db 2AH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH       ; 00C8 _ *.......
        db 2AH, 4FH, 4FH, 4FH, 4FH, 4FH, 4FH, 4FH       ; 00D0 _ *OOOOOOO
        db 4FH, 2AH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH       ; 00D8 _ O*......
        db 2AH, 4FH, 4FH, 4FH, 4FH, 2AH, 2AH, 4FH       ; 00E0 _ *OOOO**O
        db 4FH, 4FH, 2AH, 2EH, 2EH, 2EH, 2EH, 2EH       ; 00E8 _ OO*.....
        db 2AH, 4FH, 4FH, 4FH, 2AH, 2EH, 2EH, 2AH       ; 00F0 _ *OOO*..*
        db 4FH, 4FH, 4FH, 2AH, 2EH, 2EH, 2EH, 2EH       ; 00F8 _ OOO*....
        db 2AH, 4FH, 4FH, 2AH, 2EH, 2EH, 2EH, 2EH       ; 0100 _ *OO*....
        db 2AH, 4FH, 4FH, 4FH, 2AH, 2EH, 2EH, 2EH       ; 0108 _ *OOO*...
        db 2AH, 4FH, 2AH, 2EH, 2EH, 2EH, 2EH, 2EH       ; 0110 _ *O*.....
        db 2EH, 2AH, 4FH, 4FH, 4FH, 2AH, 2EH, 2EH       ; 0118 _ .*OOO*..
        db 2AH, 2AH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH       ; 0120 _ **......
        db 2EH, 2EH, 2AH, 4FH, 4FH, 4FH, 2AH, 2EH       ; 0128 _ ..*OOO*.
        db 2AH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH       ; 0130 _ *.......
        db 2EH, 2EH, 2EH, 2AH, 4FH, 4FH, 4FH, 2AH       ; 0138 _ ...*OOO*
        db 2EH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH       ; 0140 _ ........
        db 2EH, 2EH, 2EH, 2EH, 2AH, 4FH, 4FH, 2AH       ; 0148 _ ....*OO*
        db 2EH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH       ; 0150 _ ........
        db 2EH, 2EH, 2EH, 2EH, 2EH, 2AH, 2AH, 2AH       ; 0158 _ .....***



bootInfo:                                               ; qword
        resb    4                                       ; 0000

?_126:  resw    1                                       ; 0004

?_127:  resw    1                                       ; 0006

keyinfo:                                                ; byte
        resb    24                                      ; 0008

mouseinfo:                                              ; byte
        resb    32                                      ; 0020

keybuf:                                                 ; yword
        resb    32                                      ; 0040

mousebuf:                                               ; byte
        resb    128                                     ; 0060

mdec:                                                   ; oword
        resb    16                                      ; 00E0

mx:     resd    1                                       ; 00F0

my:     resd    1                                       ; 00F4

xsize:  resd    1                                       ; 00F8

ysize:  resd    1                                       ; 00FC

buf_back: resd  8                                       ; 0100

buf_mouse:                                              ; byte
        resb    256                                     ; 0120

str.1754:                                               ; byte
        resb    1                                       ; 0220

?_128:  resb    9                                       ; 0221

?_129:  resb    1                                       ; 022A


