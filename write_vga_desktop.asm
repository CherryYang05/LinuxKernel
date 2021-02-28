; Disassembly of file: write_vga_desktop.o
; Wed Oct 26 17:24:43 2016
; Mode: 32 bits
; Syntax: YASM/NASM
; Instruction set: 80386


CMain:  ; Function begin
        push    ebp                                     ; 0000 _ 55
        mov     ebp, esp                                ; 0001 _ 89. E5
        push    esi                                     ; 0003 _ 56
        push    ebx                                     ; 0004 _ 53
        sub     esp, 32                                 ; 0005 _ 83. EC, 20
        sub     esp, 12                                 ; 0008 _ 83. EC, 0C
        push    bootInfo                                ; 000B _ 68, 00000100(d)
        call    initBootInfo                            ; 0010 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0015 _ 83. C4, 10
        mov     eax, dword [bootInfo]                   ; 0018 _ A1, 00000100(d)
        mov     dword [ebp-1CH], eax                    ; 001D _ 89. 45, E4
        movzx   eax, word [?_068]                       ; 0020 _ 0F B7. 05, 00000104(d)
        cwde                                            ; 0027 _ 98
        mov     dword [xsize], eax                      ; 0028 _ A3, 00000218(d)
        movzx   eax, word [?_069]                       ; 002D _ 0F B7. 05, 00000106(d)
        cwde                                            ; 0034 _ 98
        mov     dword [ysize], eax                      ; 0035 _ A3, 0000021C(d)
        sub     esp, 4                                  ; 003A _ 83. EC, 04
        push    keybuf                                  ; 003D _ 68, 00000140(d)
        push    32                                      ; 0042 _ 6A, 20
        push    keyinfo                                 ; 0044 _ 68, 00000108(d)
        call    fifo8_init                              ; 0049 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 004E _ 83. C4, 10
        sub     esp, 4                                  ; 0051 _ 83. EC, 04
        push    mousebuf                                ; 0054 _ 68, 00000180(d)
        push    128                                     ; 0059 _ 68, 00000080
        push    mouseinfo                               ; 005E _ 68, 00000120(d)
        call    fifo8_init                              ; 0063 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0068 _ 83. C4, 10
        call    init_palette                            ; 006B _ E8, FFFFFFFC(rel)
        call    init_keyboard                           ; 0070 _ E8, FFFFFFFC(rel)
        mov     eax, dword [ysize]                      ; 0075 _ A1, 0000021C(d)
        lea     ecx, [eax-1DH]                          ; 007A _ 8D. 48, E3
        mov     eax, dword [xsize]                      ; 007D _ A1, 00000218(d)
        lea     edx, [eax-1H]                           ; 0082 _ 8D. 50, FF
        mov     eax, dword [xsize]                      ; 0085 _ A1, 00000218(d)
        sub     esp, 4                                  ; 008A _ 83. EC, 04
        push    ecx                                     ; 008D _ 51
        push    edx                                     ; 008E _ 52
        push    0                                       ; 008F _ 6A, 00
        push    0                                       ; 0091 _ 6A, 00
        push    14                                      ; 0093 _ 6A, 0E
        push    eax                                     ; 0095 _ 50
        push    dword [ebp-1CH]                         ; 0096 _ FF. 75, E4
        call    boxfill8                                ; 0099 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 009E _ 83. C4, 20
        mov     eax, dword [ysize]                      ; 00A1 _ A1, 0000021C(d)
        lea     ebx, [eax-1CH]                          ; 00A6 _ 8D. 58, E4
        mov     eax, dword [xsize]                      ; 00A9 _ A1, 00000218(d)
        lea     ecx, [eax-1H]                           ; 00AE _ 8D. 48, FF
        mov     eax, dword [ysize]                      ; 00B1 _ A1, 0000021C(d)
        lea     edx, [eax-1CH]                          ; 00B6 _ 8D. 50, E4
        mov     eax, dword [xsize]                      ; 00B9 _ A1, 00000218(d)
        sub     esp, 4                                  ; 00BE _ 83. EC, 04
        push    ebx                                     ; 00C1 _ 53
        push    ecx                                     ; 00C2 _ 51
        push    edx                                     ; 00C3 _ 52
        push    0                                       ; 00C4 _ 6A, 00
        push    8                                       ; 00C6 _ 6A, 08
        push    eax                                     ; 00C8 _ 50
        push    dword [ebp-1CH]                         ; 00C9 _ FF. 75, E4
        call    boxfill8                                ; 00CC _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 00D1 _ 83. C4, 20
        mov     eax, dword [ysize]                      ; 00D4 _ A1, 0000021C(d)
        lea     ebx, [eax-1BH]                          ; 00D9 _ 8D. 58, E5
        mov     eax, dword [xsize]                      ; 00DC _ A1, 00000218(d)
        lea     ecx, [eax-1H]                           ; 00E1 _ 8D. 48, FF
        mov     eax, dword [ysize]                      ; 00E4 _ A1, 0000021C(d)
        lea     edx, [eax-1BH]                          ; 00E9 _ 8D. 50, E5
        mov     eax, dword [xsize]                      ; 00EC _ A1, 00000218(d)
        sub     esp, 4                                  ; 00F1 _ 83. EC, 04
        push    ebx                                     ; 00F4 _ 53
        push    ecx                                     ; 00F5 _ 51
        push    edx                                     ; 00F6 _ 52
        push    0                                       ; 00F7 _ 6A, 00
        push    7                                       ; 00F9 _ 6A, 07
        push    eax                                     ; 00FB _ 50
        push    dword [ebp-1CH]                         ; 00FC _ FF. 75, E4
        call    boxfill8                                ; 00FF _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0104 _ 83. C4, 20
        mov     eax, dword [ysize]                      ; 0107 _ A1, 0000021C(d)
        lea     ebx, [eax-1H]                           ; 010C _ 8D. 58, FF
        mov     eax, dword [xsize]                      ; 010F _ A1, 00000218(d)
        lea     ecx, [eax-1H]                           ; 0114 _ 8D. 48, FF
        mov     eax, dword [ysize]                      ; 0117 _ A1, 0000021C(d)
        lea     edx, [eax-1AH]                          ; 011C _ 8D. 50, E6
        mov     eax, dword [xsize]                      ; 011F _ A1, 00000218(d)
        sub     esp, 4                                  ; 0124 _ 83. EC, 04
        push    ebx                                     ; 0127 _ 53
        push    ecx                                     ; 0128 _ 51
        push    edx                                     ; 0129 _ 52
        push    0                                       ; 012A _ 6A, 00
        push    8                                       ; 012C _ 6A, 08
        push    eax                                     ; 012E _ 50
        push    dword [ebp-1CH]                         ; 012F _ FF. 75, E4
        call    boxfill8                                ; 0132 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0137 _ 83. C4, 20
        mov     eax, dword [ysize]                      ; 013A _ A1, 0000021C(d)
        lea     ecx, [eax-18H]                          ; 013F _ 8D. 48, E8
        mov     eax, dword [ysize]                      ; 0142 _ A1, 0000021C(d)
        lea     edx, [eax-18H]                          ; 0147 _ 8D. 50, E8
        mov     eax, dword [xsize]                      ; 014A _ A1, 00000218(d)
        sub     esp, 4                                  ; 014F _ 83. EC, 04
        push    ecx                                     ; 0152 _ 51
        push    59                                      ; 0153 _ 6A, 3B
        push    edx                                     ; 0155 _ 52
        push    3                                       ; 0156 _ 6A, 03
        push    7                                       ; 0158 _ 6A, 07
        push    eax                                     ; 015A _ 50
        push    dword [ebp-1CH]                         ; 015B _ FF. 75, E4
        call    boxfill8                                ; 015E _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0163 _ 83. C4, 20
        mov     eax, dword [ysize]                      ; 0166 _ A1, 0000021C(d)
        lea     ecx, [eax-4H]                           ; 016B _ 8D. 48, FC
        mov     eax, dword [ysize]                      ; 016E _ A1, 0000021C(d)
        lea     edx, [eax-18H]                          ; 0173 _ 8D. 50, E8
        mov     eax, dword [xsize]                      ; 0176 _ A1, 00000218(d)
        sub     esp, 4                                  ; 017B _ 83. EC, 04
        push    ecx                                     ; 017E _ 51
        push    2                                       ; 017F _ 6A, 02
        push    edx                                     ; 0181 _ 52
        push    2                                       ; 0182 _ 6A, 02
        push    7                                       ; 0184 _ 6A, 07
        push    eax                                     ; 0186 _ 50
        push    dword [ebp-1CH]                         ; 0187 _ FF. 75, E4
        call    boxfill8                                ; 018A _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 018F _ 83. C4, 20
        mov     eax, dword [ysize]                      ; 0192 _ A1, 0000021C(d)
        lea     ecx, [eax-4H]                           ; 0197 _ 8D. 48, FC
        mov     eax, dword [ysize]                      ; 019A _ A1, 0000021C(d)
        lea     edx, [eax-4H]                           ; 019F _ 8D. 50, FC
        mov     eax, dword [xsize]                      ; 01A2 _ A1, 00000218(d)
        sub     esp, 4                                  ; 01A7 _ 83. EC, 04
        push    ecx                                     ; 01AA _ 51
        push    59                                      ; 01AB _ 6A, 3B
        push    edx                                     ; 01AD _ 52
        push    3                                       ; 01AE _ 6A, 03
        push    15                                      ; 01B0 _ 6A, 0F
        push    eax                                     ; 01B2 _ 50
        push    dword [ebp-1CH]                         ; 01B3 _ FF. 75, E4
        call    boxfill8                                ; 01B6 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 01BB _ 83. C4, 20
        mov     eax, dword [ysize]                      ; 01BE _ A1, 0000021C(d)
        lea     ecx, [eax-5H]                           ; 01C3 _ 8D. 48, FB
        mov     eax, dword [ysize]                      ; 01C6 _ A1, 0000021C(d)
        lea     edx, [eax-17H]                          ; 01CB _ 8D. 50, E9
        mov     eax, dword [xsize]                      ; 01CE _ A1, 00000218(d)
        sub     esp, 4                                  ; 01D3 _ 83. EC, 04
        push    ecx                                     ; 01D6 _ 51
        push    59                                      ; 01D7 _ 6A, 3B
        push    edx                                     ; 01D9 _ 52
        push    59                                      ; 01DA _ 6A, 3B
        push    15                                      ; 01DC _ 6A, 0F
        push    eax                                     ; 01DE _ 50
        push    dword [ebp-1CH]                         ; 01DF _ FF. 75, E4
        call    boxfill8                                ; 01E2 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 01E7 _ 83. C4, 20
        mov     eax, dword [ysize]                      ; 01EA _ A1, 0000021C(d)
        lea     ecx, [eax-3H]                           ; 01EF _ 8D. 48, FD
        mov     eax, dword [ysize]                      ; 01F2 _ A1, 0000021C(d)
        lea     edx, [eax-3H]                           ; 01F7 _ 8D. 50, FD
        mov     eax, dword [xsize]                      ; 01FA _ A1, 00000218(d)
        sub     esp, 4                                  ; 01FF _ 83. EC, 04
        push    ecx                                     ; 0202 _ 51
        push    59                                      ; 0203 _ 6A, 3B
        push    edx                                     ; 0205 _ 52
        push    2                                       ; 0206 _ 6A, 02
        push    0                                       ; 0208 _ 6A, 00
        push    eax                                     ; 020A _ 50
        push    dword [ebp-1CH]                         ; 020B _ FF. 75, E4
        call    boxfill8                                ; 020E _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0213 _ 83. C4, 20
        mov     eax, dword [ysize]                      ; 0216 _ A1, 0000021C(d)
        lea     ecx, [eax-3H]                           ; 021B _ 8D. 48, FD
        mov     eax, dword [ysize]                      ; 021E _ A1, 0000021C(d)
        lea     edx, [eax-18H]                          ; 0223 _ 8D. 50, E8
        mov     eax, dword [xsize]                      ; 0226 _ A1, 00000218(d)
        sub     esp, 4                                  ; 022B _ 83. EC, 04
        push    ecx                                     ; 022E _ 51
        push    60                                      ; 022F _ 6A, 3C
        push    edx                                     ; 0231 _ 52
        push    60                                      ; 0232 _ 6A, 3C
        push    0                                       ; 0234 _ 6A, 00
        push    eax                                     ; 0236 _ 50
        push    dword [ebp-1CH]                         ; 0237 _ FF. 75, E4
        call    boxfill8                                ; 023A _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 023F _ 83. C4, 20
        mov     eax, dword [ysize]                      ; 0242 _ A1, 0000021C(d)
        lea     esi, [eax-18H]                          ; 0247 _ 8D. 70, E8
        mov     eax, dword [xsize]                      ; 024A _ A1, 00000218(d)
        lea     ebx, [eax-4H]                           ; 024F _ 8D. 58, FC
        mov     eax, dword [ysize]                      ; 0252 _ A1, 0000021C(d)
        lea     ecx, [eax-18H]                          ; 0257 _ 8D. 48, E8
        mov     eax, dword [xsize]                      ; 025A _ A1, 00000218(d)
        lea     edx, [eax-2FH]                          ; 025F _ 8D. 50, D1
        mov     eax, dword [xsize]                      ; 0262 _ A1, 00000218(d)
        sub     esp, 4                                  ; 0267 _ 83. EC, 04
        push    esi                                     ; 026A _ 56
        push    ebx                                     ; 026B _ 53
        push    ecx                                     ; 026C _ 51
        push    edx                                     ; 026D _ 52
        push    15                                      ; 026E _ 6A, 0F
        push    eax                                     ; 0270 _ 50
        push    dword [ebp-1CH]                         ; 0271 _ FF. 75, E4
        call    boxfill8                                ; 0274 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0279 _ 83. C4, 20
        mov     eax, dword [ysize]                      ; 027C _ A1, 0000021C(d)
        lea     esi, [eax-4H]                           ; 0281 _ 8D. 70, FC
        mov     eax, dword [xsize]                      ; 0284 _ A1, 00000218(d)
        lea     ebx, [eax-2FH]                          ; 0289 _ 8D. 58, D1
        mov     eax, dword [ysize]                      ; 028C _ A1, 0000021C(d)
        lea     ecx, [eax-17H]                          ; 0291 _ 8D. 48, E9
        mov     eax, dword [xsize]                      ; 0294 _ A1, 00000218(d)
        lea     edx, [eax-2FH]                          ; 0299 _ 8D. 50, D1
        mov     eax, dword [xsize]                      ; 029C _ A1, 00000218(d)
        sub     esp, 4                                  ; 02A1 _ 83. EC, 04
        push    esi                                     ; 02A4 _ 56
        push    ebx                                     ; 02A5 _ 53
        push    ecx                                     ; 02A6 _ 51
        push    edx                                     ; 02A7 _ 52
        push    15                                      ; 02A8 _ 6A, 0F
        push    eax                                     ; 02AA _ 50
        push    dword [ebp-1CH]                         ; 02AB _ FF. 75, E4
        call    boxfill8                                ; 02AE _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 02B3 _ 83. C4, 20
        mov     eax, dword [ysize]                      ; 02B6 _ A1, 0000021C(d)
        lea     esi, [eax-3H]                           ; 02BB _ 8D. 70, FD
        mov     eax, dword [xsize]                      ; 02BE _ A1, 00000218(d)
        lea     ebx, [eax-4H]                           ; 02C3 _ 8D. 58, FC
        mov     eax, dword [ysize]                      ; 02C6 _ A1, 0000021C(d)
        lea     ecx, [eax-3H]                           ; 02CB _ 8D. 48, FD
        mov     eax, dword [xsize]                      ; 02CE _ A1, 00000218(d)
        lea     edx, [eax-2FH]                          ; 02D3 _ 8D. 50, D1
        mov     eax, dword [xsize]                      ; 02D6 _ A1, 00000218(d)
        sub     esp, 4                                  ; 02DB _ 83. EC, 04
        push    esi                                     ; 02DE _ 56
        push    ebx                                     ; 02DF _ 53
        push    ecx                                     ; 02E0 _ 51
        push    edx                                     ; 02E1 _ 52
        push    7                                       ; 02E2 _ 6A, 07
        push    eax                                     ; 02E4 _ 50
        push    dword [ebp-1CH]                         ; 02E5 _ FF. 75, E4
        call    boxfill8                                ; 02E8 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 02ED _ 83. C4, 20
        mov     eax, dword [ysize]                      ; 02F0 _ A1, 0000021C(d)
        lea     esi, [eax-3H]                           ; 02F5 _ 8D. 70, FD
        mov     eax, dword [xsize]                      ; 02F8 _ A1, 00000218(d)
        lea     ebx, [eax-3H]                           ; 02FD _ 8D. 58, FD
        mov     eax, dword [ysize]                      ; 0300 _ A1, 0000021C(d)
        lea     ecx, [eax-18H]                          ; 0305 _ 8D. 48, E8
        mov     eax, dword [xsize]                      ; 0308 _ A1, 00000218(d)
        lea     edx, [eax-3H]                           ; 030D _ 8D. 50, FD
        mov     eax, dword [xsize]                      ; 0310 _ A1, 00000218(d)
        sub     esp, 4                                  ; 0315 _ 83. EC, 04
        push    esi                                     ; 0318 _ 56
        push    ebx                                     ; 0319 _ 53
        push    ecx                                     ; 031A _ 51
        push    edx                                     ; 031B _ 52
        push    7                                       ; 031C _ 6A, 07
        push    eax                                     ; 031E _ 50
        push    dword [ebp-1CH]                         ; 031F _ FF. 75, E4
        call    boxfill8                                ; 0322 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0327 _ 83. C4, 20
        mov     eax, dword [xsize]                      ; 032A _ A1, 00000218(d)
        sub     eax, 16                                 ; 032F _ 83. E8, 10
        mov     edx, eax                                ; 0332 _ 89. C2
        shr     edx, 31                                 ; 0334 _ C1. EA, 1F
        add     eax, edx                                ; 0337 _ 01. D0
        sar     eax, 1                                  ; 0339 _ D1. F8
        mov     dword [mx], eax                         ; 033B _ A3, 00000210(d)
        mov     eax, dword [ysize]                      ; 0340 _ A1, 0000021C(d)
        sub     eax, 44                                 ; 0345 _ 83. E8, 2C
        mov     edx, eax                                ; 0348 _ 89. C2
        shr     edx, 31                                 ; 034A _ C1. EA, 1F
        add     eax, edx                                ; 034D _ 01. D0
        sar     eax, 1                                  ; 034F _ D1. F8
        mov     dword [my], eax                         ; 0351 _ A3, 00000214(d)
        sub     esp, 8                                  ; 0356 _ 83. EC, 08
        push    14                                      ; 0359 _ 6A, 0E
        push    mcursor                                 ; 035B _ 68, 00000000(d)
        call    init_mouse_cursor                       ; 0360 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0365 _ 83. C4, 10
        mov     ecx, dword [my]                         ; 0368 _ 8B. 0D, 00000214(d)
        mov     edx, dword [mx]                         ; 036E _ 8B. 15, 00000210(d)
        mov     eax, dword [xsize]                      ; 0374 _ A1, 00000218(d)
        push    16                                      ; 0379 _ 6A, 10
        push    mcursor                                 ; 037B _ 68, 00000000(d)
        push    ecx                                     ; 0380 _ 51
        push    edx                                     ; 0381 _ 52
        push    16                                      ; 0382 _ 6A, 10
        push    16                                      ; 0384 _ 6A, 10
        push    eax                                     ; 0386 _ 50
        push    dword [ebp-1CH]                         ; 0387 _ FF. 75, E4
        call    putblock                                ; 038A _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 038F _ 83. C4, 20
        call    get_memory_block_count                  ; 0392 _ E8, FFFFFFFC(rel)
        mov     dword [ebp-18H], eax                    ; 0397 _ 89. 45, E8
        mov     eax, dword [ebp-18H]                    ; 039A _ 8B. 45, E8
        sub     esp, 12                                 ; 039D _ 83. EC, 0C
        push    eax                                     ; 03A0 _ 50
        call    intToHexStr                             ; 03A1 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 03A6 _ 83. C4, 10
        mov     dword [ebp-14H], eax                    ; 03A9 _ 89. 45, EC
        call    get_adr_buffer                          ; 03AC _ E8, FFFFFFFC(rel)
        mov     dword [ebp-10H], eax                    ; 03B1 _ 89. 45, F0
        call    io_sti                                  ; 03B4 _ E8, FFFFFFFC(rel)
        sub     esp, 12                                 ; 03B9 _ 83. EC, 0C
        push    mdec                                    ; 03BC _ 68, 00000200(d)
        call    enable_mouse                            ; 03C1 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 03C6 _ 83. C4, 10
        mov     dword [ebp-0CH], 0                      ; 03C9 _ C7. 45, F4, 00000000
        mov     dword [ebp-20H], 0                      ; 03D0 _ C7. 45, E0, 00000000
?_001:  call    io_cli                                  ; 03D7 _ E8, FFFFFFFC(rel)
        sub     esp, 12                                 ; 03DC _ 83. EC, 0C
        push    keyinfo                                 ; 03DF _ 68, 00000108(d)
        call    fifo8_status                            ; 03E4 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 03E9 _ 83. C4, 10
        mov     ebx, eax                                ; 03EC _ 89. C3
        sub     esp, 12                                 ; 03EE _ 83. EC, 0C
        push    mouseinfo                               ; 03F1 _ 68, 00000120(d)
        call    fifo8_status                            ; 03F6 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 03FB _ 83. C4, 10
        add     eax, ebx                                ; 03FE _ 01. D8
        test    eax, eax                                ; 0400 _ 85. C0
        jnz     ?_002                                   ; 0402 _ 75, 0A
        call    io_stihlt                               ; 0404 _ E8, FFFFFFFC(rel)
        jmp     ?_004                                   ; 0409 _ E9, 00000092

?_002:  sub     esp, 12                                 ; 040E _ 83. EC, 0C
        push    keyinfo                                 ; 0411 _ 68, 00000108(d)
        call    fifo8_status                            ; 0416 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 041B _ 83. C4, 10
        test    eax, eax                                ; 041E _ 85. C0
        jz      ?_003                                   ; 0420 _ 74, 65
        call    io_sti                                  ; 0422 _ E8, FFFFFFFC(rel)
        sub     esp, 12                                 ; 0427 _ 83. EC, 0C
        push    keyinfo                                 ; 042A _ 68, 00000108(d)
        call    fifo8_get                               ; 042F _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0434 _ 83. C4, 10
        mov     dword [ebp-0CH], eax                    ; 0437 _ 89. 45, F4
        cmp     dword [ebp-0CH], 28                     ; 043A _ 83. 7D, F4, 1C
        jnz     ?_004                                   ; 043E _ 75, 60
        mov     ecx, dword [xsize]                      ; 0440 _ 8B. 0D, 00000218(d)
        mov     edx, dword [ebp-20H]                    ; 0446 _ 8B. 55, E0
        mov     eax, edx                                ; 0449 _ 89. D0
        shl     eax, 2                                  ; 044B _ C1. E0, 02
        add     eax, edx                                ; 044E _ 01. D0
        shl     eax, 2                                  ; 0450 _ C1. E0, 02
        mov     edx, eax                                ; 0453 _ 89. C2
        mov     eax, dword [ebp-10H]                    ; 0455 _ 8B. 45, F0
        add     eax, edx                                ; 0458 _ 01. D0
        sub     esp, 12                                 ; 045A _ 83. EC, 0C
        push    7                                       ; 045D _ 6A, 07
        push    ecx                                     ; 045F _ 51
        push    dword [ebp-20H]                         ; 0460 _ FF. 75, E0
        push    dword [ebp-1CH]                         ; 0463 _ FF. 75, E4
        push    eax                                     ; 0466 _ 50
        call    showMemoryInfo                          ; 0467 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 046C _ 83. C4, 20
        add     dword [ebp-20H], 1                      ; 046F _ 83. 45, E0, 01
        mov     eax, dword [ebp-20H]                    ; 0473 _ 8B. 45, E0
        cmp     eax, dword [ebp-18H]                    ; 0476 _ 3B. 45, E8
        jle     ?_004                                   ; 0479 _ 7E, 25
        mov     dword [ebp-20H], 0                      ; 047B _ C7. 45, E0, 00000000
        jmp     ?_001                                   ; 0482 _ E9, FFFFFF50

?_003:  sub     esp, 12                                 ; 0487 _ 83. EC, 0C
        push    mouseinfo                               ; 048A _ 68, 00000120(d)
        call    fifo8_status                            ; 048F _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0494 _ 83. C4, 10
        test    eax, eax                                ; 0497 _ 85. C0
        jz      ?_004                                   ; 0499 _ 74, 05
        call    show_mouse_info                         ; 049B _ E8, FFFFFFFC(rel)
?_004:  jmp     ?_001                                   ; 04A0 _ E9, FFFFFF32
; CMain End of function

computeMousePosition:; Function begin
        push    ebp                                     ; 04A5 _ 55
        mov     ebp, esp                                ; 04A6 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 04A8 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 04AB _ 8B. 50, 04
        mov     eax, dword [mx]                         ; 04AE _ A1, 00000210(d)
        add     eax, edx                                ; 04B3 _ 01. D0
        mov     dword [mx], eax                         ; 04B5 _ A3, 00000210(d)
        mov     eax, dword [ebp+8H]                     ; 04BA _ 8B. 45, 08
        mov     edx, dword [eax+8H]                     ; 04BD _ 8B. 50, 08
        mov     eax, dword [my]                         ; 04C0 _ A1, 00000214(d)
        add     eax, edx                                ; 04C5 _ 01. D0
        mov     dword [my], eax                         ; 04C7 _ A3, 00000214(d)
        mov     eax, dword [mx]                         ; 04CC _ A1, 00000210(d)
        test    eax, eax                                ; 04D1 _ 85. C0
        jns     ?_005                                   ; 04D3 _ 79, 0A
        mov     dword [mx], 0                           ; 04D5 _ C7. 05, 00000210(d), 00000000
?_005:  mov     eax, dword [my]                         ; 04DF _ A1, 00000214(d)
        test    eax, eax                                ; 04E4 _ 85. C0
        jns     ?_006                                   ; 04E6 _ 79, 0A
        mov     dword [my], 0                           ; 04E8 _ C7. 05, 00000214(d), 00000000
?_006:  mov     eax, dword [xsize]                      ; 04F2 _ A1, 00000218(d)
        lea     edx, [eax-10H]                          ; 04F7 _ 8D. 50, F0
        mov     eax, dword [mx]                         ; 04FA _ A1, 00000210(d)
        cmp     edx, eax                                ; 04FF _ 39. C2
        jge     ?_007                                   ; 0501 _ 7D, 0D
        mov     eax, dword [xsize]                      ; 0503 _ A1, 00000218(d)
        sub     eax, 16                                 ; 0508 _ 83. E8, 10
        mov     dword [mx], eax                         ; 050B _ A3, 00000210(d)
?_007:  mov     eax, dword [ysize]                      ; 0510 _ A1, 0000021C(d)
        lea     edx, [eax-10H]                          ; 0515 _ 8D. 50, F0
        mov     eax, dword [my]                         ; 0518 _ A1, 00000214(d)
        cmp     edx, eax                                ; 051D _ 39. C2
        jge     ?_008                                   ; 051F _ 7D, 0D
        mov     eax, dword [ysize]                      ; 0521 _ A1, 0000021C(d)
        sub     eax, 16                                 ; 0526 _ 83. E8, 10
        mov     dword [my], eax                         ; 0529 _ A3, 00000214(d)
?_008:  pop     ebp                                     ; 052E _ 5D
        ret                                             ; 052F _ C3
; computeMousePosition End of function

eraseMouse:; Function begin
        push    ebp                                     ; 0530 _ 55
        mov     ebp, esp                                ; 0531 _ 89. E5
        push    esi                                     ; 0533 _ 56
        push    ebx                                     ; 0534 _ 53
        mov     eax, dword [my]                         ; 0535 _ A1, 00000214(d)
        lea     esi, [eax+0FH]                          ; 053A _ 8D. 70, 0F
        mov     eax, dword [mx]                         ; 053D _ A1, 00000210(d)
        lea     ebx, [eax+0FH]                          ; 0542 _ 8D. 58, 0F
        mov     ecx, dword [my]                         ; 0545 _ 8B. 0D, 00000214(d)
        mov     edx, dword [mx]                         ; 054B _ 8B. 15, 00000210(d)
        mov     eax, dword [xsize]                      ; 0551 _ A1, 00000218(d)
        sub     esp, 4                                  ; 0556 _ 83. EC, 04
        push    esi                                     ; 0559 _ 56
        push    ebx                                     ; 055A _ 53
        push    ecx                                     ; 055B _ 51
        push    edx                                     ; 055C _ 52
        push    14                                      ; 055D _ 6A, 0E
        push    eax                                     ; 055F _ 50
        push    dword [ebp+8H]                          ; 0560 _ FF. 75, 08
        call    boxfill8                                ; 0563 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0568 _ 83. C4, 20
        lea     esp, [ebp-8H]                           ; 056B _ 8D. 65, F8
        pop     ebx                                     ; 056E _ 5B
        pop     esi                                     ; 056F _ 5E
        pop     ebp                                     ; 0570 _ 5D
        ret                                             ; 0571 _ C3
; eraseMouse End of function

drawMouse:; Function begin
        push    ebp                                     ; 0572 _ 55
        mov     ebp, esp                                ; 0573 _ 89. E5
        sub     esp, 8                                  ; 0575 _ 83. EC, 08
        mov     ecx, dword [my]                         ; 0578 _ 8B. 0D, 00000214(d)
        mov     edx, dword [mx]                         ; 057E _ 8B. 15, 00000210(d)
        mov     eax, dword [xsize]                      ; 0584 _ A1, 00000218(d)
        push    16                                      ; 0589 _ 6A, 10
        push    mcursor                                 ; 058B _ 68, 00000000(d)
        push    ecx                                     ; 0590 _ 51
        push    edx                                     ; 0591 _ 52
        push    16                                      ; 0592 _ 6A, 10
        push    16                                      ; 0594 _ 6A, 10
        push    eax                                     ; 0596 _ 50
        push    dword [ebp+8H]                          ; 0597 _ FF. 75, 08
        call    putblock                                ; 059A _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 059F _ 83. C4, 20
        leave                                           ; 05A2 _ C9
        ret                                             ; 05A3 _ C3
; drawMouse End of function

show_mouse_info:; Function begin
        push    ebp                                     ; 05A4 _ 55
        mov     ebp, esp                                ; 05A5 _ 89. E5
        sub     esp, 24                                 ; 05A7 _ 83. EC, 18
        mov     eax, dword [bootInfo]                   ; 05AA _ A1, 00000100(d)
        mov     dword [ebp-0CH], eax                    ; 05AF _ 89. 45, F4
        mov     byte [ebp-0DH], 0                       ; 05B2 _ C6. 45, F3, 00
        call    io_sti                                  ; 05B6 _ E8, FFFFFFFC(rel)
        sub     esp, 12                                 ; 05BB _ 83. EC, 0C
        push    mouseinfo                               ; 05BE _ 68, 00000120(d)
        call    fifo8_get                               ; 05C3 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 05C8 _ 83. C4, 10
        mov     byte [ebp-0DH], al                      ; 05CB _ 88. 45, F3
        movzx   eax, byte [ebp-0DH]                     ; 05CE _ 0F B6. 45, F3
        sub     esp, 8                                  ; 05D2 _ 83. EC, 08
        push    eax                                     ; 05D5 _ 50
        push    mdec                                    ; 05D6 _ 68, 00000200(d)
        call    mouse_decode                            ; 05DB _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 05E0 _ 83. C4, 10
        test    eax, eax                                ; 05E3 _ 85. C0
        jz      ?_009                                   ; 05E5 _ 74, 2C
        sub     esp, 12                                 ; 05E7 _ 83. EC, 0C
        push    dword [ebp-0CH]                         ; 05EA _ FF. 75, F4
        call    eraseMouse                              ; 05ED _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 05F2 _ 83. C4, 10
        sub     esp, 12                                 ; 05F5 _ 83. EC, 0C
        push    mdec                                    ; 05F8 _ 68, 00000200(d)
        call    computeMousePosition                    ; 05FD _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0602 _ 83. C4, 10
        sub     esp, 12                                 ; 0605 _ 83. EC, 0C
        push    dword [ebp-0CH]                         ; 0608 _ FF. 75, F4
        call    drawMouse                               ; 060B _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0610 _ 83. C4, 10
?_009:  leave                                           ; 0613 _ C9
        ret                                             ; 0614 _ C3
; show_mouse_info End of function

initBootInfo:; Function begin
        push    ebp                                     ; 0615 _ 55
        mov     ebp, esp                                ; 0616 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 0618 _ 8B. 45, 08
        mov     dword [eax], 655360                     ; 061B _ C7. 00, 000A0000
        mov     eax, dword [ebp+8H]                     ; 0621 _ 8B. 45, 08
; Note: Length-changing prefix causes delay on Intel processors
        mov     word [eax+4H], 320                      ; 0624 _ 66: C7. 40, 04, 0140
        mov     eax, dword [ebp+8H]                     ; 062A _ 8B. 45, 08
; Note: Length-changing prefix causes delay on Intel processors
        mov     word [eax+6H], 200                      ; 062D _ 66: C7. 40, 06, 00C8
        pop     ebp                                     ; 0633 _ 5D
        ret                                             ; 0634 _ C3
; initBootInfo End of function

showString:; Function begin
        push    ebp                                     ; 0635 _ 55
        mov     ebp, esp                                ; 0636 _ 89. E5
        sub     esp, 24                                 ; 0638 _ 83. EC, 18
        mov     eax, dword [ebp+18H]                    ; 063B _ 8B. 45, 18
        mov     byte [ebp-0CH], al                      ; 063E _ 88. 45, F4
        jmp     ?_011                                   ; 0641 _ EB, 37

?_010:  mov     eax, dword [ebp+1CH]                    ; 0643 _ 8B. 45, 1C
        movzx   eax, byte [eax]                         ; 0646 _ 0F B6. 00
        movzx   eax, al                                 ; 0649 _ 0F B6. C0
        shl     eax, 4                                  ; 064C _ C1. E0, 04
        lea     edx, [systemFont+eax]                   ; 064F _ 8D. 90, 00000000(d)
        movsx   eax, byte [ebp-0CH]                     ; 0655 _ 0F BE. 45, F4
        sub     esp, 8                                  ; 0659 _ 83. EC, 08
        push    edx                                     ; 065C _ 52
        push    eax                                     ; 065D _ 50
        push    dword [ebp+14H]                         ; 065E _ FF. 75, 14
        push    dword [ebp+10H]                         ; 0661 _ FF. 75, 10
        push    dword [ebp+0CH]                         ; 0664 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 0667 _ FF. 75, 08
        call    showFont8                               ; 066A _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 066F _ 83. C4, 20
        add     dword [ebp+10H], 8                      ; 0672 _ 83. 45, 10, 08
        add     dword [ebp+1CH], 1                      ; 0676 _ 83. 45, 1C, 01
?_011:  mov     eax, dword [ebp+1CH]                    ; 067A _ 8B. 45, 1C
        movzx   eax, byte [eax]                         ; 067D _ 0F B6. 00
        test    al, al                                  ; 0680 _ 84. C0
        jnz     ?_010                                   ; 0682 _ 75, BF
        leave                                           ; 0684 _ C9
        ret                                             ; 0685 _ C3
; showString End of function

init_palette:; Function begin
        push    ebp                                     ; 0686 _ 55
        mov     ebp, esp                                ; 0687 _ 89. E5
        sub     esp, 8                                  ; 0689 _ 83. EC, 08
        sub     esp, 4                                  ; 068C _ 83. EC, 04
        push    table_rgb.1562                          ; 068F _ 68, 00000020(d)
        push    15                                      ; 0694 _ 6A, 0F
        push    0                                       ; 0696 _ 6A, 00
        call    set_palette                             ; 0698 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 069D _ 83. C4, 10
        nop                                             ; 06A0 _ 90
        leave                                           ; 06A1 _ C9
        ret                                             ; 06A2 _ C3
; init_palette End of function

set_palette:; Function begin
        push    ebp                                     ; 06A3 _ 55
        mov     ebp, esp                                ; 06A4 _ 89. E5
        sub     esp, 24                                 ; 06A6 _ 83. EC, 18
        call    io_load_eflags                          ; 06A9 _ E8, FFFFFFFC(rel)
        mov     dword [ebp-0CH], eax                    ; 06AE _ 89. 45, F4
        call    io_cli                                  ; 06B1 _ E8, FFFFFFFC(rel)
        sub     esp, 8                                  ; 06B6 _ 83. EC, 08
        push    dword [ebp+8H]                          ; 06B9 _ FF. 75, 08
        push    968                                     ; 06BC _ 68, 000003C8
        call    io_out8                                 ; 06C1 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 06C6 _ 83. C4, 10
        mov     eax, dword [ebp+8H]                     ; 06C9 _ 8B. 45, 08
        mov     dword [ebp-10H], eax                    ; 06CC _ 89. 45, F0
        jmp     ?_013                                   ; 06CF _ EB, 65

?_012:  mov     eax, dword [ebp+10H]                    ; 06D1 _ 8B. 45, 10
        movzx   eax, byte [eax]                         ; 06D4 _ 0F B6. 00
        shr     al, 2                                   ; 06D7 _ C0. E8, 02
        movzx   eax, al                                 ; 06DA _ 0F B6. C0
        sub     esp, 8                                  ; 06DD _ 83. EC, 08
        push    eax                                     ; 06E0 _ 50
        push    969                                     ; 06E1 _ 68, 000003C9
        call    io_out8                                 ; 06E6 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 06EB _ 83. C4, 10
        mov     eax, dword [ebp+10H]                    ; 06EE _ 8B. 45, 10
        add     eax, 1                                  ; 06F1 _ 83. C0, 01
        movzx   eax, byte [eax]                         ; 06F4 _ 0F B6. 00
        shr     al, 2                                   ; 06F7 _ C0. E8, 02
        movzx   eax, al                                 ; 06FA _ 0F B6. C0
        sub     esp, 8                                  ; 06FD _ 83. EC, 08
        push    eax                                     ; 0700 _ 50
        push    969                                     ; 0701 _ 68, 000003C9
        call    io_out8                                 ; 0706 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 070B _ 83. C4, 10
        mov     eax, dword [ebp+10H]                    ; 070E _ 8B. 45, 10
        add     eax, 2                                  ; 0711 _ 83. C0, 02
        movzx   eax, byte [eax]                         ; 0714 _ 0F B6. 00
        shr     al, 2                                   ; 0717 _ C0. E8, 02
        movzx   eax, al                                 ; 071A _ 0F B6. C0
        sub     esp, 8                                  ; 071D _ 83. EC, 08
        push    eax                                     ; 0720 _ 50
        push    969                                     ; 0721 _ 68, 000003C9
        call    io_out8                                 ; 0726 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 072B _ 83. C4, 10
        add     dword [ebp+10H], 3                      ; 072E _ 83. 45, 10, 03
        add     dword [ebp-10H], 1                      ; 0732 _ 83. 45, F0, 01
?_013:  mov     eax, dword [ebp-10H]                    ; 0736 _ 8B. 45, F0
        cmp     eax, dword [ebp+0CH]                    ; 0739 _ 3B. 45, 0C
        jle     ?_012                                   ; 073C _ 7E, 93
        sub     esp, 12                                 ; 073E _ 83. EC, 0C
        push    dword [ebp-0CH]                         ; 0741 _ FF. 75, F4
        call    io_store_eflags                         ; 0744 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0749 _ 83. C4, 10
        nop                                             ; 074C _ 90
        leave                                           ; 074D _ C9
        ret                                             ; 074E _ C3
; set_palette End of function

boxfill8:; Function begin
        push    ebp                                     ; 074F _ 55
        mov     ebp, esp                                ; 0750 _ 89. E5
        sub     esp, 20                                 ; 0752 _ 83. EC, 14
        mov     eax, dword [ebp+10H]                    ; 0755 _ 8B. 45, 10
        mov     byte [ebp-14H], al                      ; 0758 _ 88. 45, EC
        mov     eax, dword [ebp+18H]                    ; 075B _ 8B. 45, 18
        mov     dword [ebp-4H], eax                     ; 075E _ 89. 45, FC
        jmp     ?_017                                   ; 0761 _ EB, 33

?_014:  mov     eax, dword [ebp+14H]                    ; 0763 _ 8B. 45, 14
        mov     dword [ebp-8H], eax                     ; 0766 _ 89. 45, F8
        jmp     ?_016                                   ; 0769 _ EB, 1F

?_015:  mov     eax, dword [ebp-4H]                     ; 076B _ 8B. 45, FC
        imul    eax, dword [ebp+0CH]                    ; 076E _ 0F AF. 45, 0C
        mov     edx, eax                                ; 0772 _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 0774 _ 8B. 45, F8
        add     eax, edx                                ; 0777 _ 01. D0
        mov     edx, eax                                ; 0779 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 077B _ 8B. 45, 08
        add     edx, eax                                ; 077E _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0780 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0784 _ 88. 02
        add     dword [ebp-8H], 1                       ; 0786 _ 83. 45, F8, 01
?_016:  mov     eax, dword [ebp-8H]                     ; 078A _ 8B. 45, F8
        cmp     eax, dword [ebp+1CH]                    ; 078D _ 3B. 45, 1C
        jle     ?_015                                   ; 0790 _ 7E, D9
        add     dword [ebp-4H], 1                       ; 0792 _ 83. 45, FC, 01
?_017:  mov     eax, dword [ebp-4H]                     ; 0796 _ 8B. 45, FC
        cmp     eax, dword [ebp+20H]                    ; 0799 _ 3B. 45, 20
        jle     ?_014                                   ; 079C _ 7E, C5
        leave                                           ; 079E _ C9
        ret                                             ; 079F _ C3
; boxfill8 End of function

showFont8:; Function begin
        push    ebp                                     ; 07A0 _ 55
        mov     ebp, esp                                ; 07A1 _ 89. E5
        sub     esp, 20                                 ; 07A3 _ 83. EC, 14
        mov     eax, dword [ebp+18H]                    ; 07A6 _ 8B. 45, 18
        mov     byte [ebp-14H], al                      ; 07A9 _ 88. 45, EC
        mov     dword [ebp-4H], 0                       ; 07AC _ C7. 45, FC, 00000000
        jmp     ?_027                                   ; 07B3 _ E9, 0000016C

?_018:  mov     edx, dword [ebp-4H]                     ; 07B8 _ 8B. 55, FC
        mov     eax, dword [ebp+1CH]                    ; 07BB _ 8B. 45, 1C
        add     eax, edx                                ; 07BE _ 01. D0
        movzx   eax, byte [eax]                         ; 07C0 _ 0F B6. 00
        mov     byte [ebp-5H], al                       ; 07C3 _ 88. 45, FB
        cmp     byte [ebp-5H], 0                        ; 07C6 _ 80. 7D, FB, 00
        jns     ?_019                                   ; 07CA _ 79, 20
        mov     edx, dword [ebp+14H]                    ; 07CC _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 07CF _ 8B. 45, FC
        add     eax, edx                                ; 07D2 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 07D4 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 07D8 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 07DA _ 8B. 45, 10
        add     eax, edx                                ; 07DD _ 01. D0
        mov     edx, eax                                ; 07DF _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 07E1 _ 8B. 45, 08
        add     edx, eax                                ; 07E4 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 07E6 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 07EA _ 88. 02
?_019:  movsx   eax, byte [ebp-5H]                      ; 07EC _ 0F BE. 45, FB
        and     eax, 40H                                ; 07F0 _ 83. E0, 40
        test    eax, eax                                ; 07F3 _ 85. C0
        jz      ?_020                                   ; 07F5 _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 07F7 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 07FA _ 8B. 45, FC
        add     eax, edx                                ; 07FD _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 07FF _ 0F AF. 45, 0C
        mov     edx, eax                                ; 0803 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 0805 _ 8B. 45, 10
        add     eax, edx                                ; 0808 _ 01. D0
        lea     edx, [eax+1H]                           ; 080A _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 080D _ 8B. 45, 08
        add     edx, eax                                ; 0810 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0812 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0816 _ 88. 02
?_020:  movsx   eax, byte [ebp-5H]                      ; 0818 _ 0F BE. 45, FB
        and     eax, 20H                                ; 081C _ 83. E0, 20
        test    eax, eax                                ; 081F _ 85. C0
        jz      ?_021                                   ; 0821 _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 0823 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 0826 _ 8B. 45, FC
        add     eax, edx                                ; 0829 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 082B _ 0F AF. 45, 0C
        mov     edx, eax                                ; 082F _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 0831 _ 8B. 45, 10
        add     eax, edx                                ; 0834 _ 01. D0
        lea     edx, [eax+2H]                           ; 0836 _ 8D. 50, 02
        mov     eax, dword [ebp+8H]                     ; 0839 _ 8B. 45, 08
        add     edx, eax                                ; 083C _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 083E _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0842 _ 88. 02
?_021:  movsx   eax, byte [ebp-5H]                      ; 0844 _ 0F BE. 45, FB
        and     eax, 10H                                ; 0848 _ 83. E0, 10
        test    eax, eax                                ; 084B _ 85. C0
        jz      ?_022                                   ; 084D _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 084F _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 0852 _ 8B. 45, FC
        add     eax, edx                                ; 0855 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 0857 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 085B _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 085D _ 8B. 45, 10
        add     eax, edx                                ; 0860 _ 01. D0
        lea     edx, [eax+3H]                           ; 0862 _ 8D. 50, 03
        mov     eax, dword [ebp+8H]                     ; 0865 _ 8B. 45, 08
        add     edx, eax                                ; 0868 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 086A _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 086E _ 88. 02
?_022:  movsx   eax, byte [ebp-5H]                      ; 0870 _ 0F BE. 45, FB
        and     eax, 08H                                ; 0874 _ 83. E0, 08
        test    eax, eax                                ; 0877 _ 85. C0
        jz      ?_023                                   ; 0879 _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 087B _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 087E _ 8B. 45, FC
        add     eax, edx                                ; 0881 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 0883 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 0887 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 0889 _ 8B. 45, 10
        add     eax, edx                                ; 088C _ 01. D0
        lea     edx, [eax+4H]                           ; 088E _ 8D. 50, 04
        mov     eax, dword [ebp+8H]                     ; 0891 _ 8B. 45, 08
        add     edx, eax                                ; 0894 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0896 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 089A _ 88. 02
?_023:  movsx   eax, byte [ebp-5H]                      ; 089C _ 0F BE. 45, FB
        and     eax, 04H                                ; 08A0 _ 83. E0, 04
        test    eax, eax                                ; 08A3 _ 85. C0
        jz      ?_024                                   ; 08A5 _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 08A7 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 08AA _ 8B. 45, FC
        add     eax, edx                                ; 08AD _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 08AF _ 0F AF. 45, 0C
        mov     edx, eax                                ; 08B3 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 08B5 _ 8B. 45, 10
        add     eax, edx                                ; 08B8 _ 01. D0
        lea     edx, [eax+5H]                           ; 08BA _ 8D. 50, 05
        mov     eax, dword [ebp+8H]                     ; 08BD _ 8B. 45, 08
        add     edx, eax                                ; 08C0 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 08C2 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 08C6 _ 88. 02
?_024:  movsx   eax, byte [ebp-5H]                      ; 08C8 _ 0F BE. 45, FB
        and     eax, 02H                                ; 08CC _ 83. E0, 02
        test    eax, eax                                ; 08CF _ 85. C0
        jz      ?_025                                   ; 08D1 _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 08D3 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 08D6 _ 8B. 45, FC
        add     eax, edx                                ; 08D9 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 08DB _ 0F AF. 45, 0C
        mov     edx, eax                                ; 08DF _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 08E1 _ 8B. 45, 10
        add     eax, edx                                ; 08E4 _ 01. D0
        lea     edx, [eax+6H]                           ; 08E6 _ 8D. 50, 06
        mov     eax, dword [ebp+8H]                     ; 08E9 _ 8B. 45, 08
        add     edx, eax                                ; 08EC _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 08EE _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 08F2 _ 88. 02
?_025:  movsx   eax, byte [ebp-5H]                      ; 08F4 _ 0F BE. 45, FB
        and     eax, 01H                                ; 08F8 _ 83. E0, 01
        test    eax, eax                                ; 08FB _ 85. C0
        jz      ?_026                                   ; 08FD _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 08FF _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 0902 _ 8B. 45, FC
        add     eax, edx                                ; 0905 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 0907 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 090B _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 090D _ 8B. 45, 10
        add     eax, edx                                ; 0910 _ 01. D0
        lea     edx, [eax+7H]                           ; 0912 _ 8D. 50, 07
        mov     eax, dword [ebp+8H]                     ; 0915 _ 8B. 45, 08
        add     edx, eax                                ; 0918 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 091A _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 091E _ 88. 02
?_026:  add     dword [ebp-4H], 1                       ; 0920 _ 83. 45, FC, 01
?_027:  cmp     dword [ebp-4H], 15                      ; 0924 _ 83. 7D, FC, 0F
        jle     ?_018                                   ; 0928 _ 0F 8E, FFFFFE8A
        leave                                           ; 092E _ C9
        ret                                             ; 092F _ C3
; showFont8 End of function

init_mouse_cursor:; Function begin
        push    ebp                                     ; 0930 _ 55
        mov     ebp, esp                                ; 0931 _ 89. E5
        sub     esp, 20                                 ; 0933 _ 83. EC, 14
        mov     eax, dword [ebp+0CH]                    ; 0936 _ 8B. 45, 0C
        mov     byte [ebp-14H], al                      ; 0939 _ 88. 45, EC
        mov     dword [ebp-4H], 0                       ; 093C _ C7. 45, FC, 00000000
        jmp     ?_034                                   ; 0943 _ E9, 000000B1

?_028:  mov     dword [ebp-8H], 0                       ; 0948 _ C7. 45, F8, 00000000
        jmp     ?_033                                   ; 094F _ E9, 00000097

?_029:  mov     eax, dword [ebp-4H]                     ; 0954 _ 8B. 45, FC
        shl     eax, 4                                  ; 0957 _ C1. E0, 04
        mov     edx, eax                                ; 095A _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 095C _ 8B. 45, F8
        add     eax, edx                                ; 095F _ 01. D0
        add     eax, cursor.1609                        ; 0961 _ 05, 00000080(d)
        movzx   eax, byte [eax]                         ; 0966 _ 0F B6. 00
        cmp     al, 42                                  ; 0969 _ 3C, 2A
        jnz     ?_030                                   ; 096B _ 75, 17
        mov     eax, dword [ebp-4H]                     ; 096D _ 8B. 45, FC
        shl     eax, 4                                  ; 0970 _ C1. E0, 04
        mov     edx, eax                                ; 0973 _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 0975 _ 8B. 45, F8
        add     eax, edx                                ; 0978 _ 01. D0
        mov     edx, eax                                ; 097A _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 097C _ 8B. 45, 08
        add     eax, edx                                ; 097F _ 01. D0
        mov     byte [eax], 0                           ; 0981 _ C6. 00, 00
?_030:  mov     eax, dword [ebp-4H]                     ; 0984 _ 8B. 45, FC
        shl     eax, 4                                  ; 0987 _ C1. E0, 04
        mov     edx, eax                                ; 098A _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 098C _ 8B. 45, F8
        add     eax, edx                                ; 098F _ 01. D0
        add     eax, cursor.1609                        ; 0991 _ 05, 00000080(d)
        movzx   eax, byte [eax]                         ; 0996 _ 0F B6. 00
        cmp     al, 79                                  ; 0999 _ 3C, 4F
        jnz     ?_031                                   ; 099B _ 75, 17
        mov     eax, dword [ebp-4H]                     ; 099D _ 8B. 45, FC
        shl     eax, 4                                  ; 09A0 _ C1. E0, 04
        mov     edx, eax                                ; 09A3 _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 09A5 _ 8B. 45, F8
        add     eax, edx                                ; 09A8 _ 01. D0
        mov     edx, eax                                ; 09AA _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 09AC _ 8B. 45, 08
        add     eax, edx                                ; 09AF _ 01. D0
        mov     byte [eax], 7                           ; 09B1 _ C6. 00, 07
?_031:  mov     eax, dword [ebp-4H]                     ; 09B4 _ 8B. 45, FC
        shl     eax, 4                                  ; 09B7 _ C1. E0, 04
        mov     edx, eax                                ; 09BA _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 09BC _ 8B. 45, F8
        add     eax, edx                                ; 09BF _ 01. D0
        add     eax, cursor.1609                        ; 09C1 _ 05, 00000080(d)
        movzx   eax, byte [eax]                         ; 09C6 _ 0F B6. 00
        cmp     al, 46                                  ; 09C9 _ 3C, 2E
        jnz     ?_032                                   ; 09CB _ 75, 1A
        mov     eax, dword [ebp-4H]                     ; 09CD _ 8B. 45, FC
        shl     eax, 4                                  ; 09D0 _ C1. E0, 04
        mov     edx, eax                                ; 09D3 _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 09D5 _ 8B. 45, F8
        add     eax, edx                                ; 09D8 _ 01. D0
        mov     edx, eax                                ; 09DA _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 09DC _ 8B. 45, 08
        add     edx, eax                                ; 09DF _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 09E1 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 09E5 _ 88. 02
?_032:  add     dword [ebp-8H], 1                       ; 09E7 _ 83. 45, F8, 01
?_033:  cmp     dword [ebp-8H], 15                      ; 09EB _ 83. 7D, F8, 0F
        jle     ?_029                                   ; 09EF _ 0F 8E, FFFFFF5F
        add     dword [ebp-4H], 1                       ; 09F5 _ 83. 45, FC, 01
?_034:  cmp     dword [ebp-4H], 15                      ; 09F9 _ 83. 7D, FC, 0F
        jle     ?_028                                   ; 09FD _ 0F 8E, FFFFFF45
        leave                                           ; 0A03 _ C9
        ret                                             ; 0A04 _ C3
; init_mouse_cursor End of function

putblock:; Function begin
        push    ebp                                     ; 0A05 _ 55
        mov     ebp, esp                                ; 0A06 _ 89. E5
        sub     esp, 16                                 ; 0A08 _ 83. EC, 10
        mov     dword [ebp-4H], 0                       ; 0A0B _ C7. 45, FC, 00000000
        jmp     ?_038                                   ; 0A12 _ EB, 50

?_035:  mov     dword [ebp-8H], 0                       ; 0A14 _ C7. 45, F8, 00000000
        jmp     ?_037                                   ; 0A1B _ EB, 3B

?_036:  mov     edx, dword [ebp+1CH]                    ; 0A1D _ 8B. 55, 1C
        mov     eax, dword [ebp-4H]                     ; 0A20 _ 8B. 45, FC
        add     eax, edx                                ; 0A23 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 0A25 _ 0F AF. 45, 0C
        mov     ecx, dword [ebp+18H]                    ; 0A29 _ 8B. 4D, 18
        mov     edx, dword [ebp-8H]                     ; 0A2C _ 8B. 55, F8
        add     edx, ecx                                ; 0A2F _ 01. CA
        add     eax, edx                                ; 0A31 _ 01. D0
        mov     edx, eax                                ; 0A33 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 0A35 _ 8B. 45, 08
        add     edx, eax                                ; 0A38 _ 01. C2
        mov     eax, dword [ebp-4H]                     ; 0A3A _ 8B. 45, FC
        imul    eax, dword [ebp+24H]                    ; 0A3D _ 0F AF. 45, 24
        mov     ecx, eax                                ; 0A41 _ 89. C1
        mov     eax, dword [ebp-8H]                     ; 0A43 _ 8B. 45, F8
        add     eax, ecx                                ; 0A46 _ 01. C8
        mov     ecx, eax                                ; 0A48 _ 89. C1
        mov     eax, dword [ebp+20H]                    ; 0A4A _ 8B. 45, 20
        add     eax, ecx                                ; 0A4D _ 01. C8
        movzx   eax, byte [eax]                         ; 0A4F _ 0F B6. 00
        mov     byte [edx], al                          ; 0A52 _ 88. 02
        add     dword [ebp-8H], 1                       ; 0A54 _ 83. 45, F8, 01
?_037:  mov     eax, dword [ebp-8H]                     ; 0A58 _ 8B. 45, F8
        cmp     eax, dword [ebp+10H]                    ; 0A5B _ 3B. 45, 10
        jl      ?_036                                   ; 0A5E _ 7C, BD
        add     dword [ebp-4H], 1                       ; 0A60 _ 83. 45, FC, 01
?_038:  mov     eax, dword [ebp-4H]                     ; 0A64 _ 8B. 45, FC
        cmp     eax, dword [ebp+14H]                    ; 0A67 _ 3B. 45, 14
        jl      ?_035                                   ; 0A6A _ 7C, A8
        leave                                           ; 0A6C _ C9
        ret                                             ; 0A6D _ C3
; putblock End of function

intHandlerFromC:; Function begin
        push    ebp                                     ; 0A6E _ 55
        mov     ebp, esp                                ; 0A6F _ 89. E5
        sub     esp, 24                                 ; 0A71 _ 83. EC, 18
        mov     eax, dword [bootInfo]                   ; 0A74 _ A1, 00000100(d)
        mov     dword [ebp-14H], eax                    ; 0A79 _ 89. 45, EC
        movzx   eax, word [?_068]                       ; 0A7C _ 0F B7. 05, 00000104(d)
        cwde                                            ; 0A83 _ 98
        mov     dword [ebp-10H], eax                    ; 0A84 _ 89. 45, F0
        movzx   eax, word [?_069]                       ; 0A87 _ 0F B7. 05, 00000106(d)
        cwde                                            ; 0A8E _ 98
        mov     dword [ebp-0CH], eax                    ; 0A8F _ 89. 45, F4
        sub     esp, 8                                  ; 0A92 _ 83. EC, 08
        push    32                                      ; 0A95 _ 6A, 20
        push    32                                      ; 0A97 _ 6A, 20
        call    io_out8                                 ; 0A99 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0A9E _ 83. C4, 10
        mov     byte [ebp-15H], 0                       ; 0AA1 _ C6. 45, EB, 00
        sub     esp, 12                                 ; 0AA5 _ 83. EC, 0C
        push    96                                      ; 0AA8 _ 6A, 60
        call    io_in8                                  ; 0AAA _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0AAF _ 83. C4, 10
        mov     byte [ebp-15H], al                      ; 0AB2 _ 88. 45, EB
        movzx   eax, byte [ebp-15H]                     ; 0AB5 _ 0F B6. 45, EB
        sub     esp, 8                                  ; 0AB9 _ 83. EC, 08
        push    eax                                     ; 0ABC _ 50
        push    keyinfo                                 ; 0ABD _ 68, 00000108(d)
        call    fifo8_put                               ; 0AC2 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0AC7 _ 83. C4, 10
        nop                                             ; 0ACA _ 90
        leave                                           ; 0ACB _ C9
        ret                                             ; 0ACC _ C3
; intHandlerFromC End of function

charToHexVal:; Function begin
        push    ebp                                     ; 0ACD _ 55
        mov     ebp, esp                                ; 0ACE _ 89. E5
        sub     esp, 4                                  ; 0AD0 _ 83. EC, 04
        mov     eax, dword [ebp+8H]                     ; 0AD3 _ 8B. 45, 08
        mov     byte [ebp-4H], al                       ; 0AD6 _ 88. 45, FC
        cmp     byte [ebp-4H], 9                        ; 0AD9 _ 80. 7D, FC, 09
        jle     ?_039                                   ; 0ADD _ 7E, 09
        movzx   eax, byte [ebp-4H]                      ; 0ADF _ 0F B6. 45, FC
        add     eax, 55                                 ; 0AE3 _ 83. C0, 37
        jmp     ?_040                                   ; 0AE6 _ EB, 07

?_039:  movzx   eax, byte [ebp-4H]                      ; 0AE8 _ 0F B6. 45, FC
        add     eax, 48                                 ; 0AEC _ 83. C0, 30
?_040:  leave                                           ; 0AEF _ C9
        ret                                             ; 0AF0 _ C3
; charToHexVal End of function

charToHexStr:; Function begin
        push    ebp                                     ; 0AF1 _ 55
        mov     ebp, esp                                ; 0AF2 _ 89. E5
        sub     esp, 20                                 ; 0AF4 _ 83. EC, 14
        mov     eax, dword [ebp+8H]                     ; 0AF7 _ 8B. 45, 08
        mov     byte [ebp-14H], al                      ; 0AFA _ 88. 45, EC
        mov     dword [ebp-4H], 0                       ; 0AFD _ C7. 45, FC, 00000000
        movzx   eax, byte [ebp-14H]                     ; 0B04 _ 0F B6. 45, EC
        and     eax, 0FH                                ; 0B08 _ 83. E0, 0F
        mov     byte [ebp-5H], al                       ; 0B0B _ 88. 45, FB
        movsx   eax, byte [ebp-5H]                      ; 0B0E _ 0F BE. 45, FB
        push    eax                                     ; 0B12 _ 50
        call    charToHexVal                            ; 0B13 _ E8, FFFFFFFC(rel)
        add     esp, 4                                  ; 0B18 _ 83. C4, 04
        mov     byte [?_067], al                        ; 0B1B _ A2, 00000003(d)
        movzx   eax, byte [ebp-14H]                     ; 0B20 _ 0F B6. 45, EC
        shr     al, 4                                   ; 0B24 _ C0. E8, 04
        mov     byte [ebp-14H], al                      ; 0B27 _ 88. 45, EC
        movzx   eax, byte [ebp-14H]                     ; 0B2A _ 0F B6. 45, EC
        movsx   eax, al                                 ; 0B2E _ 0F BE. C0
        push    eax                                     ; 0B31 _ 50
        call    charToHexVal                            ; 0B32 _ E8, FFFFFFFC(rel)
        add     esp, 4                                  ; 0B37 _ 83. C4, 04
        mov     byte [?_066], al                        ; 0B3A _ A2, 00000002(d)
        mov     eax, keyval                             ; 0B3F _ B8, 00000000(d)
        leave                                           ; 0B44 _ C9
        ret                                             ; 0B45 _ C3
; charToHexStr End of function

intToHexStr:; Function begin
        push    ebp                                     ; 0B46 _ 55
        mov     ebp, esp                                ; 0B47 _ 89. E5
        sub     esp, 16                                 ; 0B49 _ 83. EC, 10
        mov     byte [str.1657], 48                     ; 0B4C _ C6. 05, 00000220(d), 30
        mov     byte [?_070], 88                        ; 0B53 _ C6. 05, 00000221(d), 58
        mov     byte [?_071], 0                         ; 0B5A _ C6. 05, 0000022A(d), 00
        mov     dword [ebp-0CH], 2                      ; 0B61 _ C7. 45, F4, 00000002
        jmp     ?_042                                   ; 0B68 _ EB, 0F

?_041:  mov     eax, dword [ebp-0CH]                    ; 0B6A _ 8B. 45, F4
        add     eax, str.1657                           ; 0B6D _ 05, 00000220(d)
        mov     byte [eax], 48                          ; 0B72 _ C6. 00, 30
        add     dword [ebp-0CH], 1                      ; 0B75 _ 83. 45, F4, 01
?_042:  cmp     dword [ebp-0CH], 9                      ; 0B79 _ 83. 7D, F4, 09
        jle     ?_041                                   ; 0B7D _ 7E, EB
        mov     dword [ebp-8H], 9                       ; 0B7F _ C7. 45, F8, 00000009
        jmp     ?_046                                   ; 0B86 _ EB, 42

?_043:  mov     eax, dword [ebp+8H]                     ; 0B88 _ 8B. 45, 08
        and     eax, 0FH                                ; 0B8B _ 83. E0, 0F
        mov     dword [ebp-4H], eax                     ; 0B8E _ 89. 45, FC
        mov     eax, dword [ebp+8H]                     ; 0B91 _ 8B. 45, 08
        shr     eax, 4                                  ; 0B94 _ C1. E8, 04
        mov     dword [ebp+8H], eax                     ; 0B97 _ 89. 45, 08
        cmp     dword [ebp-4H], 9                       ; 0B9A _ 83. 7D, FC, 09
        jle     ?_044                                   ; 0B9E _ 7E, 14
        mov     eax, dword [ebp-4H]                     ; 0BA0 _ 8B. 45, FC
        add     eax, 55                                 ; 0BA3 _ 83. C0, 37
        mov     edx, eax                                ; 0BA6 _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 0BA8 _ 8B. 45, F8
        add     eax, str.1657                           ; 0BAB _ 05, 00000220(d)
        mov     byte [eax], dl                          ; 0BB0 _ 88. 10
        jmp     ?_045                                   ; 0BB2 _ EB, 12

?_044:  mov     eax, dword [ebp-4H]                     ; 0BB4 _ 8B. 45, FC
        add     eax, 48                                 ; 0BB7 _ 83. C0, 30
        mov     edx, eax                                ; 0BBA _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 0BBC _ 8B. 45, F8
        add     eax, str.1657                           ; 0BBF _ 05, 00000220(d)
        mov     byte [eax], dl                          ; 0BC4 _ 88. 10
?_045:  sub     dword [ebp-8H], 1                       ; 0BC6 _ 83. 6D, F8, 01
?_046:  cmp     dword [ebp-8H], 1                       ; 0BCA _ 83. 7D, F8, 01
        jle     ?_047                                   ; 0BCE _ 7E, 06
        cmp     dword [ebp+8H], 0                       ; 0BD0 _ 83. 7D, 08, 00
        jnz     ?_043                                   ; 0BD4 _ 75, B2
?_047:  mov     eax, str.1657                           ; 0BD6 _ B8, 00000220(d)
        leave                                           ; 0BDB _ C9
        ret                                             ; 0BDC _ C3
; intToHexStr End of function

wait_KBC_sendready:; Function begin
        push    ebp                                     ; 0BDD _ 55
        mov     ebp, esp                                ; 0BDE _ 89. E5
        sub     esp, 8                                  ; 0BE0 _ 83. EC, 08
?_048:  sub     esp, 12                                 ; 0BE3 _ 83. EC, 0C
        push    100                                     ; 0BE6 _ 6A, 64
        call    io_in8                                  ; 0BE8 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0BED _ 83. C4, 10
        and     eax, 02H                                ; 0BF0 _ 83. E0, 02
        test    eax, eax                                ; 0BF3 _ 85. C0
        jnz     ?_049                                   ; 0BF5 _ 75, 02
        jmp     ?_050                                   ; 0BF7 _ EB, 02

?_049:  jmp     ?_048                                   ; 0BF9 _ EB, E8

?_050:  leave                                           ; 0BFB _ C9
        ret                                             ; 0BFC _ C3
; wait_KBC_sendready End of function

init_keyboard:; Function begin
        push    ebp                                     ; 0BFD _ 55
        mov     ebp, esp                                ; 0BFE _ 89. E5
        sub     esp, 8                                  ; 0C00 _ 83. EC, 08
        call    wait_KBC_sendready                      ; 0C03 _ E8, FFFFFFFC(rel)
        sub     esp, 8                                  ; 0C08 _ 83. EC, 08
        push    96                                      ; 0C0B _ 6A, 60
        push    100                                     ; 0C0D _ 6A, 64
        call    io_out8                                 ; 0C0F _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0C14 _ 83. C4, 10
        call    wait_KBC_sendready                      ; 0C17 _ E8, FFFFFFFC(rel)
        sub     esp, 8                                  ; 0C1C _ 83. EC, 08
        push    71                                      ; 0C1F _ 6A, 47
        push    96                                      ; 0C21 _ 6A, 60
        call    io_out8                                 ; 0C23 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0C28 _ 83. C4, 10
        nop                                             ; 0C2B _ 90
        leave                                           ; 0C2C _ C9
        ret                                             ; 0C2D _ C3
; init_keyboard End of function

enable_mouse:; Function begin
        push    ebp                                     ; 0C2E _ 55
        mov     ebp, esp                                ; 0C2F _ 89. E5
        sub     esp, 8                                  ; 0C31 _ 83. EC, 08
        call    wait_KBC_sendready                      ; 0C34 _ E8, FFFFFFFC(rel)
        sub     esp, 8                                  ; 0C39 _ 83. EC, 08
        push    212                                     ; 0C3C _ 68, 000000D4
        push    100                                     ; 0C41 _ 6A, 64
        call    io_out8                                 ; 0C43 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0C48 _ 83. C4, 10
        call    wait_KBC_sendready                      ; 0C4B _ E8, FFFFFFFC(rel)
        sub     esp, 8                                  ; 0C50 _ 83. EC, 08
        push    244                                     ; 0C53 _ 68, 000000F4
        push    96                                      ; 0C58 _ 6A, 60
        call    io_out8                                 ; 0C5A _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0C5F _ 83. C4, 10
        mov     eax, dword [ebp+8H]                     ; 0C62 _ 8B. 45, 08
        mov     byte [eax+3H], 0                        ; 0C65 _ C6. 40, 03, 00
        nop                                             ; 0C69 _ 90
        leave                                           ; 0C6A _ C9
        ret                                             ; 0C6B _ C3
; enable_mouse End of function

intHandlerForMouse:; Function begin
        push    ebp                                     ; 0C6C _ 55
        mov     ebp, esp                                ; 0C6D _ 89. E5
        sub     esp, 24                                 ; 0C6F _ 83. EC, 18
        sub     esp, 8                                  ; 0C72 _ 83. EC, 08
        push    32                                      ; 0C75 _ 6A, 20
        push    160                                     ; 0C77 _ 68, 000000A0
        call    io_out8                                 ; 0C7C _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0C81 _ 83. C4, 10
        sub     esp, 8                                  ; 0C84 _ 83. EC, 08
        push    32                                      ; 0C87 _ 6A, 20
        push    32                                      ; 0C89 _ 6A, 20
        call    io_out8                                 ; 0C8B _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0C90 _ 83. C4, 10
        sub     esp, 12                                 ; 0C93 _ 83. EC, 0C
        push    96                                      ; 0C96 _ 6A, 60
        call    io_in8                                  ; 0C98 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0C9D _ 83. C4, 10
        mov     byte [ebp-9H], al                       ; 0CA0 _ 88. 45, F7
        movzx   eax, byte [ebp-9H]                      ; 0CA3 _ 0F B6. 45, F7
        sub     esp, 8                                  ; 0CA7 _ 83. EC, 08
        push    eax                                     ; 0CAA _ 50
        push    mouseinfo                               ; 0CAB _ 68, 00000120(d)
        call    fifo8_put                               ; 0CB0 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0CB5 _ 83. C4, 10
        leave                                           ; 0CB8 _ C9
        ret                                             ; 0CB9 _ C3
; intHandlerForMouse End of function

fifo8_init:; Function begin
        push    ebp                                     ; 0CBA _ 55
        mov     ebp, esp                                ; 0CBB _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 0CBD _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 0CC0 _ 8B. 55, 0C
        mov     dword [eax+0CH], edx                    ; 0CC3 _ 89. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 0CC6 _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 0CC9 _ 8B. 55, 10
        mov     dword [eax], edx                        ; 0CCC _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 0CCE _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 0CD1 _ 8B. 55, 0C
        mov     dword [eax+10H], edx                    ; 0CD4 _ 89. 50, 10
        mov     eax, dword [ebp+8H]                     ; 0CD7 _ 8B. 45, 08
        mov     dword [eax+14H], 0                      ; 0CDA _ C7. 40, 14, 00000000
        mov     eax, dword [ebp+8H]                     ; 0CE1 _ 8B. 45, 08
        mov     dword [eax+4H], 0                       ; 0CE4 _ C7. 40, 04, 00000000
        mov     eax, dword [ebp+8H]                     ; 0CEB _ 8B. 45, 08
        mov     dword [eax+8H], 0                       ; 0CEE _ C7. 40, 08, 00000000
        nop                                             ; 0CF5 _ 90
        pop     ebp                                     ; 0CF6 _ 5D
        ret                                             ; 0CF7 _ C3
; fifo8_init End of function

fifo8_put:; Function begin
        push    ebp                                     ; 0CF8 _ 55
        mov     ebp, esp                                ; 0CF9 _ 89. E5
        sub     esp, 4                                  ; 0CFB _ 83. EC, 04
        mov     eax, dword [ebp+0CH]                    ; 0CFE _ 8B. 45, 0C
        mov     byte [ebp-4H], al                       ; 0D01 _ 88. 45, FC
        mov     eax, dword [ebp+8H]                     ; 0D04 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 0D07 _ 8B. 40, 10
        test    eax, eax                                ; 0D0A _ 85. C0
        jnz     ?_051                                   ; 0D0C _ 75, 18
        mov     eax, dword [ebp+8H]                     ; 0D0E _ 8B. 45, 08
        mov     eax, dword [eax+14H]                    ; 0D11 _ 8B. 40, 14
        or      eax, 01H                                ; 0D14 _ 83. C8, 01
        mov     edx, eax                                ; 0D17 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 0D19 _ 8B. 45, 08
        mov     dword [eax+14H], edx                    ; 0D1C _ 89. 50, 14
        mov     eax, 4294967295                         ; 0D1F _ B8, FFFFFFFF
        jmp     ?_053                                   ; 0D24 _ EB, 50

?_051:  mov     eax, dword [ebp+8H]                     ; 0D26 _ 8B. 45, 08
        mov     edx, dword [eax]                        ; 0D29 _ 8B. 10
        mov     eax, dword [ebp+8H]                     ; 0D2B _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 0D2E _ 8B. 40, 04
        add     edx, eax                                ; 0D31 _ 01. C2
        movzx   eax, byte [ebp-4H]                      ; 0D33 _ 0F B6. 45, FC
        mov     byte [edx], al                          ; 0D37 _ 88. 02
        mov     eax, dword [ebp+8H]                     ; 0D39 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 0D3C _ 8B. 40, 04
        lea     edx, [eax+1H]                           ; 0D3F _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 0D42 _ 8B. 45, 08
        mov     dword [eax+4H], edx                     ; 0D45 _ 89. 50, 04
        mov     eax, dword [ebp+8H]                     ; 0D48 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 0D4B _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 0D4E _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 0D51 _ 8B. 40, 0C
        cmp     edx, eax                                ; 0D54 _ 39. C2
        jnz     ?_052                                   ; 0D56 _ 75, 0A
        mov     eax, dword [ebp+8H]                     ; 0D58 _ 8B. 45, 08
        mov     dword [eax+4H], 0                       ; 0D5B _ C7. 40, 04, 00000000
?_052:  mov     eax, dword [ebp+8H]                     ; 0D62 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 0D65 _ 8B. 40, 10
        lea     edx, [eax-1H]                           ; 0D68 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 0D6B _ 8B. 45, 08
        mov     dword [eax+10H], edx                    ; 0D6E _ 89. 50, 10
        mov     eax, 0                                  ; 0D71 _ B8, 00000000
?_053:  leave                                           ; 0D76 _ C9
        ret                                             ; 0D77 _ C3
; fifo8_put End of function

fifo8_get:; Function begin
        push    ebp                                     ; 0D78 _ 55
        mov     ebp, esp                                ; 0D79 _ 89. E5
        sub     esp, 16                                 ; 0D7B _ 83. EC, 10
        mov     eax, dword [ebp+8H]                     ; 0D7E _ 8B. 45, 08
        mov     edx, dword [eax+10H]                    ; 0D81 _ 8B. 50, 10
        mov     eax, dword [ebp+8H]                     ; 0D84 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 0D87 _ 8B. 40, 0C
        cmp     edx, eax                                ; 0D8A _ 39. C2
        jnz     ?_054                                   ; 0D8C _ 75, 07
        mov     eax, 4294967295                         ; 0D8E _ B8, FFFFFFFF
        jmp     ?_056                                   ; 0D93 _ EB, 51

?_054:  mov     eax, dword [ebp+8H]                     ; 0D95 _ 8B. 45, 08
        mov     edx, dword [eax]                        ; 0D98 _ 8B. 10
        mov     eax, dword [ebp+8H]                     ; 0D9A _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 0D9D _ 8B. 40, 08
        add     eax, edx                                ; 0DA0 _ 01. D0
        movzx   eax, byte [eax]                         ; 0DA2 _ 0F B6. 00
        movzx   eax, al                                 ; 0DA5 _ 0F B6. C0
        mov     dword [ebp-4H], eax                     ; 0DA8 _ 89. 45, FC
        mov     eax, dword [ebp+8H]                     ; 0DAB _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 0DAE _ 8B. 40, 08
        lea     edx, [eax+1H]                           ; 0DB1 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 0DB4 _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 0DB7 _ 89. 50, 08
        mov     eax, dword [ebp+8H]                     ; 0DBA _ 8B. 45, 08
        mov     edx, dword [eax+8H]                     ; 0DBD _ 8B. 50, 08
        mov     eax, dword [ebp+8H]                     ; 0DC0 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 0DC3 _ 8B. 40, 0C
        cmp     edx, eax                                ; 0DC6 _ 39. C2
        jnz     ?_055                                   ; 0DC8 _ 75, 0A
        mov     eax, dword [ebp+8H]                     ; 0DCA _ 8B. 45, 08
        mov     dword [eax+8H], 0                       ; 0DCD _ C7. 40, 08, 00000000
?_055:  mov     eax, dword [ebp+8H]                     ; 0DD4 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 0DD7 _ 8B. 40, 10
        lea     edx, [eax+1H]                           ; 0DDA _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 0DDD _ 8B. 45, 08
        mov     dword [eax+10H], edx                    ; 0DE0 _ 89. 50, 10
        mov     eax, dword [ebp-4H]                     ; 0DE3 _ 8B. 45, FC
?_056:  leave                                           ; 0DE6 _ C9
        ret                                             ; 0DE7 _ C3
; fifo8_get End of function

fifo8_status:; Function begin
        push    ebp                                     ; 0DE8 _ 55
        mov     ebp, esp                                ; 0DE9 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 0DEB _ 8B. 45, 08
        mov     edx, dword [eax+0CH]                    ; 0DEE _ 8B. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 0DF1 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 0DF4 _ 8B. 40, 10
        sub     edx, eax                                ; 0DF7 _ 29. C2
        mov     eax, edx                                ; 0DF9 _ 89. D0
        pop     ebp                                     ; 0DFB _ 5D
        ret                                             ; 0DFC _ C3
; fifo8_status End of function

mouse_decode:; Function begin
        push    ebp                                     ; 0DFD _ 55
        mov     ebp, esp                                ; 0DFE _ 89. E5
        sub     esp, 4                                  ; 0E00 _ 83. EC, 04
        mov     eax, dword [ebp+0CH]                    ; 0E03 _ 8B. 45, 0C
        mov     byte [ebp-4H], al                       ; 0E06 _ 88. 45, FC
        mov     eax, dword [ebp+8H]                     ; 0E09 _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 0E0C _ 0F B6. 40, 03
        test    al, al                                  ; 0E10 _ 84. C0
        jnz     ?_058                                   ; 0E12 _ 75, 17
        cmp     byte [ebp-4H], -6                       ; 0E14 _ 80. 7D, FC, FA
        jnz     ?_057                                   ; 0E18 _ 75, 07
        mov     eax, dword [ebp+8H]                     ; 0E1A _ 8B. 45, 08
        mov     byte [eax+3H], 1                        ; 0E1D _ C6. 40, 03, 01
?_057:  mov     eax, 0                                  ; 0E21 _ B8, 00000000
        jmp     ?_065                                   ; 0E26 _ E9, 0000010F

?_058:  mov     eax, dword [ebp+8H]                     ; 0E2B _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 0E2E _ 0F B6. 40, 03
        cmp     al, 1                                   ; 0E32 _ 3C, 01
        jnz     ?_060                                   ; 0E34 _ 75, 28
        movzx   eax, byte [ebp-4H]                      ; 0E36 _ 0F B6. 45, FC
        and     eax, 0C8H                               ; 0E3A _ 25, 000000C8
        cmp     eax, 8                                  ; 0E3F _ 83. F8, 08
        jnz     ?_059                                   ; 0E42 _ 75, 10
        mov     eax, dword [ebp+8H]                     ; 0E44 _ 8B. 45, 08
        movzx   edx, byte [ebp-4H]                      ; 0E47 _ 0F B6. 55, FC
        mov     byte [eax], dl                          ; 0E4B _ 88. 10
        mov     eax, dword [ebp+8H]                     ; 0E4D _ 8B. 45, 08
        mov     byte [eax+3H], 2                        ; 0E50 _ C6. 40, 03, 02
?_059:  mov     eax, 0                                  ; 0E54 _ B8, 00000000
        jmp     ?_065                                   ; 0E59 _ E9, 000000DC

?_060:  mov     eax, dword [ebp+8H]                     ; 0E5E _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 0E61 _ 0F B6. 40, 03
        cmp     al, 2                                   ; 0E65 _ 3C, 02
        jnz     ?_061                                   ; 0E67 _ 75, 1B
        mov     eax, dword [ebp+8H]                     ; 0E69 _ 8B. 45, 08
        movzx   edx, byte [ebp-4H]                      ; 0E6C _ 0F B6. 55, FC
        mov     byte [eax+1H], dl                       ; 0E70 _ 88. 50, 01
        mov     eax, dword [ebp+8H]                     ; 0E73 _ 8B. 45, 08
        mov     byte [eax+3H], 3                        ; 0E76 _ C6. 40, 03, 03
        mov     eax, 0                                  ; 0E7A _ B8, 00000000
        jmp     ?_065                                   ; 0E7F _ E9, 000000B6

?_061:  mov     eax, dword [ebp+8H]                     ; 0E84 _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 0E87 _ 0F B6. 40, 03
        cmp     al, 3                                   ; 0E8B _ 3C, 03
        jne near     ?_064                                   ; 0E8D _ 0F 85, 000000A2
        mov     eax, dword [ebp+8H]                     ; 0E93 _ 8B. 45, 08
        movzx   edx, byte [ebp-4H]                      ; 0E96 _ 0F B6. 55, FC
        mov     byte [eax+2H], dl                       ; 0E9A _ 88. 50, 02
        mov     eax, dword [ebp+8H]                     ; 0E9D _ 8B. 45, 08
        mov     byte [eax+3H], 1                        ; 0EA0 _ C6. 40, 03, 01
        mov     eax, dword [ebp+8H]                     ; 0EA4 _ 8B. 45, 08
        movzx   eax, byte [eax]                         ; 0EA7 _ 0F B6. 00
        movzx   eax, al                                 ; 0EAA _ 0F B6. C0
        and     eax, 07H                                ; 0EAD _ 83. E0, 07
        mov     edx, eax                                ; 0EB0 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 0EB2 _ 8B. 45, 08
        mov     dword [eax+0CH], edx                    ; 0EB5 _ 89. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 0EB8 _ 8B. 45, 08
        movzx   eax, byte [eax+1H]                      ; 0EBB _ 0F B6. 40, 01
        movzx   edx, al                                 ; 0EBF _ 0F B6. D0
        mov     eax, dword [ebp+8H]                     ; 0EC2 _ 8B. 45, 08
        mov     dword [eax+4H], edx                     ; 0EC5 _ 89. 50, 04
        mov     eax, dword [ebp+8H]                     ; 0EC8 _ 8B. 45, 08
        movzx   eax, byte [eax+2H]                      ; 0ECB _ 0F B6. 40, 02
        movzx   edx, al                                 ; 0ECF _ 0F B6. D0
        mov     eax, dword [ebp+8H]                     ; 0ED2 _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 0ED5 _ 89. 50, 08
        mov     eax, dword [ebp+8H]                     ; 0ED8 _ 8B. 45, 08
        movzx   eax, byte [eax]                         ; 0EDB _ 0F B6. 00
        movzx   eax, al                                 ; 0EDE _ 0F B6. C0
        and     eax, 10H                                ; 0EE1 _ 83. E0, 10
        test    eax, eax                                ; 0EE4 _ 85. C0
        jz      ?_062                                   ; 0EE6 _ 74, 13
        mov     eax, dword [ebp+8H]                     ; 0EE8 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 0EEB _ 8B. 40, 04
        or      eax, 0FFFFFF00H                         ; 0EEE _ 0D, FFFFFF00
        mov     edx, eax                                ; 0EF3 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 0EF5 _ 8B. 45, 08
        mov     dword [eax+4H], edx                     ; 0EF8 _ 89. 50, 04
?_062:  mov     eax, dword [ebp+8H]                     ; 0EFB _ 8B. 45, 08
        movzx   eax, byte [eax]                         ; 0EFE _ 0F B6. 00
        movzx   eax, al                                 ; 0F01 _ 0F B6. C0
        and     eax, 20H                                ; 0F04 _ 83. E0, 20
        test    eax, eax                                ; 0F07 _ 85. C0
        jz      ?_063                                   ; 0F09 _ 74, 13
        mov     eax, dword [ebp+8H]                     ; 0F0B _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 0F0E _ 8B. 40, 08
        or      eax, 0FFFFFF00H                         ; 0F11 _ 0D, FFFFFF00
        mov     edx, eax                                ; 0F16 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 0F18 _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 0F1B _ 89. 50, 08
?_063:  mov     eax, dword [ebp+8H]                     ; 0F1E _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 0F21 _ 8B. 40, 08
        neg     eax                                     ; 0F24 _ F7. D8
        mov     edx, eax                                ; 0F26 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 0F28 _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 0F2B _ 89. 50, 08
        mov     eax, 1                                  ; 0F2E _ B8, 00000001
        jmp     ?_065                                   ; 0F33 _ EB, 05

?_064:  mov     eax, 4294967295                         ; 0F35 _ B8, FFFFFFFF
?_065:  leave                                           ; 0F3A _ C9
        ret                                             ; 0F3B _ C3
; mouse_decode End of function

showMemoryInfo:; Function begin
        push    ebp                                     ; 0F3C _ 55
        mov     ebp, esp                                ; 0F3D _ 89. E5
        sub     esp, 56                                 ; 0F3F _ 83. EC, 38
        mov     dword [ebp-30H], 0                      ; 0F42 _ C7. 45, D0, 00000000
        mov     dword [ebp-2CH], 0                      ; 0F49 _ C7. 45, D4, 00000000
        mov     dword [ebp-28H], 104                    ; 0F50 _ C7. 45, D8, 00000068
        mov     dword [ebp-24H], 80                     ; 0F57 _ C7. 45, DC, 00000050
        push    100                                     ; 0F5E _ 6A, 64
        push    dword [ebp+14H]                         ; 0F60 _ FF. 75, 14
        push    0                                       ; 0F63 _ 6A, 00
        push    0                                       ; 0F65 _ 6A, 00
        push    14                                      ; 0F67 _ 6A, 0E
        push    dword [ebp+14H]                         ; 0F69 _ FF. 75, 14
        push    dword [ebp+0CH]                         ; 0F6C _ FF. 75, 0C
        call    boxfill8                                ; 0F6F _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 0F74 _ 83. C4, 1C
        mov     eax, dword [ebp+18H]                    ; 0F77 _ 8B. 45, 18
        movsx   eax, al                                 ; 0F7A _ 0F BE. C0
        sub     esp, 8                                  ; 0F7D _ 83. EC, 08
        push    ?_072                                   ; 0F80 _ 68, 00000000(d)
        push    eax                                     ; 0F85 _ 50
        push    dword [ebp-2CH]                         ; 0F86 _ FF. 75, D4
        push    dword [ebp-30H]                         ; 0F89 _ FF. 75, D0
        push    dword [ebp+14H]                         ; 0F8C _ FF. 75, 14
        push    dword [ebp+0CH]                         ; 0F8F _ FF. 75, 0C
        call    showString                              ; 0F92 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0F97 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 0F9A _ 8B. 45, 10
        sub     esp, 12                                 ; 0F9D _ 83. EC, 0C
        push    eax                                     ; 0FA0 _ 50
        call    intToHexStr                             ; 0FA1 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0FA6 _ 83. C4, 10
        mov     dword [ebp-20H], eax                    ; 0FA9 _ 89. 45, E0
        mov     eax, dword [ebp+18H]                    ; 0FAC _ 8B. 45, 18
        movsx   eax, al                                 ; 0FAF _ 0F BE. C0
        sub     esp, 8                                  ; 0FB2 _ 83. EC, 08
        push    dword [ebp-20H]                         ; 0FB5 _ FF. 75, E0
        push    eax                                     ; 0FB8 _ 50
        push    dword [ebp-2CH]                         ; 0FB9 _ FF. 75, D4
        push    dword [ebp-28H]                         ; 0FBC _ FF. 75, D8
        push    dword [ebp+14H]                         ; 0FBF _ FF. 75, 14
        push    dword [ebp+0CH]                         ; 0FC2 _ FF. 75, 0C
        call    showString                              ; 0FC5 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0FCA _ 83. C4, 20
        add     dword [ebp-2CH], 16                     ; 0FCD _ 83. 45, D4, 10
        mov     eax, dword [ebp+18H]                    ; 0FD1 _ 8B. 45, 18
        movsx   eax, al                                 ; 0FD4 _ 0F BE. C0
        sub     esp, 8                                  ; 0FD7 _ 83. EC, 08
        push    ?_073                                   ; 0FDA _ 68, 0000000A(d)
        push    eax                                     ; 0FDF _ 50
        push    dword [ebp-2CH]                         ; 0FE0 _ FF. 75, D4
        push    dword [ebp-30H]                         ; 0FE3 _ FF. 75, D0
        push    dword [ebp+14H]                         ; 0FE6 _ FF. 75, 14
        push    dword [ebp+0CH]                         ; 0FE9 _ FF. 75, 0C
        call    showString                              ; 0FEC _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0FF1 _ 83. C4, 20
        mov     eax, dword [ebp+8H]                     ; 0FF4 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 0FF7 _ 8B. 00
        sub     esp, 12                                 ; 0FF9 _ 83. EC, 0C
        push    eax                                     ; 0FFC _ 50
        call    intToHexStr                             ; 0FFD _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1002 _ 83. C4, 10
        mov     dword [ebp-1CH], eax                    ; 1005 _ 89. 45, E4
        mov     eax, dword [ebp+18H]                    ; 1008 _ 8B. 45, 18
        movsx   eax, al                                 ; 100B _ 0F BE. C0
        sub     esp, 8                                  ; 100E _ 83. EC, 08
        push    dword [ebp-1CH]                         ; 1011 _ FF. 75, E4
        push    eax                                     ; 1014 _ 50
        push    dword [ebp-2CH]                         ; 1015 _ FF. 75, D4
        push    dword [ebp-28H]                         ; 1018 _ FF. 75, D8
        push    dword [ebp+14H]                         ; 101B _ FF. 75, 14
        push    dword [ebp+0CH]                         ; 101E _ FF. 75, 0C
        call    showString                              ; 1021 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1026 _ 83. C4, 20
        add     dword [ebp-2CH], 16                     ; 1029 _ 83. 45, D4, 10
        mov     eax, dword [ebp+18H]                    ; 102D _ 8B. 45, 18
        movsx   eax, al                                 ; 1030 _ 0F BE. C0
        sub     esp, 8                                  ; 1033 _ 83. EC, 08
        push    ?_074                                   ; 1036 _ 68, 00000016(d)
        push    eax                                     ; 103B _ 50
        push    dword [ebp-2CH]                         ; 103C _ FF. 75, D4
        push    dword [ebp-30H]                         ; 103F _ FF. 75, D0
        push    dword [ebp+14H]                         ; 1042 _ FF. 75, 14
        push    dword [ebp+0CH]                         ; 1045 _ FF. 75, 0C
        call    showString                              ; 1048 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 104D _ 83. C4, 20
        mov     eax, dword [ebp+8H]                     ; 1050 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 1053 _ 8B. 40, 04
        sub     esp, 12                                 ; 1056 _ 83. EC, 0C
        push    eax                                     ; 1059 _ 50
        call    intToHexStr                             ; 105A _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 105F _ 83. C4, 10
        mov     dword [ebp-18H], eax                    ; 1062 _ 89. 45, E8
        mov     eax, dword [ebp+18H]                    ; 1065 _ 8B. 45, 18
        movsx   eax, al                                 ; 1068 _ 0F BE. C0
        sub     esp, 8                                  ; 106B _ 83. EC, 08
        push    dword [ebp-18H]                         ; 106E _ FF. 75, E8
        push    eax                                     ; 1071 _ 50
        push    dword [ebp-2CH]                         ; 1072 _ FF. 75, D4
        push    dword [ebp-28H]                         ; 1075 _ FF. 75, D8
        push    dword [ebp+14H]                         ; 1078 _ FF. 75, 14
        push    dword [ebp+0CH]                         ; 107B _ FF. 75, 0C
        call    showString                              ; 107E _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1083 _ 83. C4, 20
        add     dword [ebp-2CH], 16                     ; 1086 _ 83. 45, D4, 10
        mov     eax, dword [ebp+18H]                    ; 108A _ 8B. 45, 18
        movsx   eax, al                                 ; 108D _ 0F BE. C0
        sub     esp, 8                                  ; 1090 _ 83. EC, 08
        push    ?_075                                   ; 1093 _ 68, 00000022(d)
        push    eax                                     ; 1098 _ 50
        push    dword [ebp-2CH]                         ; 1099 _ FF. 75, D4
        push    dword [ebp-30H]                         ; 109C _ FF. 75, D0
        push    dword [ebp+14H]                         ; 109F _ FF. 75, 14
        push    dword [ebp+0CH]                         ; 10A2 _ FF. 75, 0C
        call    showString                              ; 10A5 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 10AA _ 83. C4, 20
        mov     eax, dword [ebp+8H]                     ; 10AD _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 10B0 _ 8B. 40, 08
        sub     esp, 12                                 ; 10B3 _ 83. EC, 0C
        push    eax                                     ; 10B6 _ 50
        call    intToHexStr                             ; 10B7 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 10BC _ 83. C4, 10
        mov     dword [ebp-14H], eax                    ; 10BF _ 89. 45, EC
        mov     eax, dword [ebp+18H]                    ; 10C2 _ 8B. 45, 18
        movsx   eax, al                                 ; 10C5 _ 0F BE. C0
        sub     esp, 8                                  ; 10C8 _ 83. EC, 08
        push    dword [ebp-14H]                         ; 10CB _ FF. 75, EC
        push    eax                                     ; 10CE _ 50
        push    dword [ebp-2CH]                         ; 10CF _ FF. 75, D4
        push    dword [ebp-28H]                         ; 10D2 _ FF. 75, D8
        push    dword [ebp+14H]                         ; 10D5 _ FF. 75, 14
        push    dword [ebp+0CH]                         ; 10D8 _ FF. 75, 0C
        call    showString                              ; 10DB _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 10E0 _ 83. C4, 20
        add     dword [ebp-2CH], 16                     ; 10E3 _ 83. 45, D4, 10
        mov     eax, dword [ebp+18H]                    ; 10E7 _ 8B. 45, 18
        movsx   eax, al                                 ; 10EA _ 0F BE. C0
        sub     esp, 8                                  ; 10ED _ 83. EC, 08
        push    ?_076                                   ; 10F0 _ 68, 0000002E(d)
        push    eax                                     ; 10F5 _ 50
        push    dword [ebp-2CH]                         ; 10F6 _ FF. 75, D4
        push    dword [ebp-30H]                         ; 10F9 _ FF. 75, D0
        push    dword [ebp+14H]                         ; 10FC _ FF. 75, 14
        push    dword [ebp+0CH]                         ; 10FF _ FF. 75, 0C
        call    showString                              ; 1102 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1107 _ 83. C4, 20
        mov     eax, dword [ebp+8H]                     ; 110A _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 110D _ 8B. 40, 0C
        sub     esp, 12                                 ; 1110 _ 83. EC, 0C
        push    eax                                     ; 1113 _ 50
        call    intToHexStr                             ; 1114 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1119 _ 83. C4, 10
        mov     dword [ebp-10H], eax                    ; 111C _ 89. 45, F0
        mov     eax, dword [ebp+18H]                    ; 111F _ 8B. 45, 18
        movsx   eax, al                                 ; 1122 _ 0F BE. C0
        sub     esp, 8                                  ; 1125 _ 83. EC, 08
        push    dword [ebp-10H]                         ; 1128 _ FF. 75, F0
        push    eax                                     ; 112B _ 50
        push    dword [ebp-2CH]                         ; 112C _ FF. 75, D4
        push    dword [ebp-28H]                         ; 112F _ FF. 75, D8
        push    dword [ebp+14H]                         ; 1132 _ FF. 75, 14
        push    dword [ebp+0CH]                         ; 1135 _ FF. 75, 0C
        call    showString                              ; 1138 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 113D _ 83. C4, 20
        add     dword [ebp-2CH], 16                     ; 1140 _ 83. 45, D4, 10
        mov     eax, dword [ebp+18H]                    ; 1144 _ 8B. 45, 18
        movsx   eax, al                                 ; 1147 _ 0F BE. C0
        sub     esp, 8                                  ; 114A _ 83. EC, 08
        push    ?_077                                   ; 114D _ 68, 0000003B(d)
        push    eax                                     ; 1152 _ 50
        push    dword [ebp-2CH]                         ; 1153 _ FF. 75, D4
        push    dword [ebp-30H]                         ; 1156 _ FF. 75, D0
        push    dword [ebp+14H]                         ; 1159 _ FF. 75, 14
        push    dword [ebp+0CH]                         ; 115C _ FF. 75, 0C
        call    showString                              ; 115F _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1164 _ 83. C4, 20
        mov     eax, dword [ebp+8H]                     ; 1167 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 116A _ 8B. 40, 10
        sub     esp, 12                                 ; 116D _ 83. EC, 0C
        push    eax                                     ; 1170 _ 50
        call    intToHexStr                             ; 1171 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1176 _ 83. C4, 10
        mov     dword [ebp-0CH], eax                    ; 1179 _ 89. 45, F4
        mov     eax, dword [ebp+18H]                    ; 117C _ 8B. 45, 18
        movsx   eax, al                                 ; 117F _ 0F BE. C0
        sub     esp, 8                                  ; 1182 _ 83. EC, 08
        push    dword [ebp-0CH]                         ; 1185 _ FF. 75, F4
        push    eax                                     ; 1188 _ 50
        push    dword [ebp-2CH]                         ; 1189 _ FF. 75, D4
        push    dword [ebp-28H]                         ; 118C _ FF. 75, D8
        push    dword [ebp+14H]                         ; 118F _ FF. 75, 14
        push    dword [ebp+0CH]                         ; 1192 _ FF. 75, 0C
        call    showString                              ; 1195 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 119A _ 83. C4, 20
        leave                                           ; 119D _ C9
        ret                                             ; 119E _ C3
; showMemoryInfo End of function


keyval:                                                 ; byte
        db 30H, 58H                                     ; 0000 _ 0X

?_066:  db 00H                                          ; 0002 _ .

?_067:  db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0003 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 000B _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0013 _ ........
        db 00H, 00H, 00H, 00H, 00H                      ; 001B _ .....

table_rgb.1562:                                         ; byte
        db 00H, 00H, 00H, 0FFH, 00H, 00H, 00H, 0FFH     ; 0020 _ ........
        db 00H, 0FFH, 0FFH, 00H, 00H, 00H, 0FFH, 0FFH   ; 0028 _ ........
        db 00H, 0FFH, 00H, 0FFH, 0FFH, 0FFH, 0FFH, 0FFH ; 0030 _ ........
        db 0C6H, 0C6H, 0C6H, 84H, 00H, 00H, 00H, 84H    ; 0038 _ ........
        db 00H, 84H, 84H, 00H, 00H, 00H, 84H, 84H       ; 0040 _ ........
        db 00H, 84H, 00H, 84H, 84H, 84H, 84H, 84H       ; 0048 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0050 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0058 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0060 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0068 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0070 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0078 _ ........

cursor.1609:                                            ; byte
        db 2AH, 2AH, 2AH, 2AH, 2AH, 2AH, 2AH, 2AH       ; 0080 _ ********
        db 2AH, 2AH, 2AH, 2AH, 2AH, 2AH, 2EH, 2EH       ; 0088 _ ******..
        db 2AH, 4FH, 4FH, 4FH, 4FH, 4FH, 4FH, 4FH       ; 0090 _ *OOOOOOO
        db 4FH, 4FH, 4FH, 4FH, 2AH, 2EH, 2EH, 2EH       ; 0098 _ OOOO*...
        db 2AH, 4FH, 4FH, 4FH, 4FH, 4FH, 4FH, 4FH       ; 00A0 _ *OOOOOOO
        db 4FH, 4FH, 4FH, 2AH, 2EH, 2EH, 2EH, 2EH       ; 00A8 _ OOO*....
        db 2AH, 4FH, 4FH, 4FH, 4FH, 4FH, 4FH, 4FH       ; 00B0 _ *OOOOOOO
        db 4FH, 4FH, 2AH, 2EH, 2EH, 2EH, 2EH, 2EH       ; 00B8 _ OO*.....
        db 2AH, 4FH, 4FH, 4FH, 4FH, 4FH, 4FH, 4FH       ; 00C0 _ *OOOOOOO
        db 4FH, 2AH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH       ; 00C8 _ O*......
        db 2AH, 4FH, 4FH, 4FH, 4FH, 4FH, 4FH, 4FH       ; 00D0 _ *OOOOOOO
        db 2AH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH       ; 00D8 _ *.......
        db 2AH, 4FH, 4FH, 4FH, 4FH, 4FH, 4FH, 4FH       ; 00E0 _ *OOOOOOO
        db 2AH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH       ; 00E8 _ *.......
        db 2AH, 4FH, 4FH, 4FH, 4FH, 4FH, 4FH, 4FH       ; 00F0 _ *OOOOOOO
        db 4FH, 2AH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH       ; 00F8 _ O*......
        db 2AH, 4FH, 4FH, 4FH, 4FH, 2AH, 2AH, 4FH       ; 0100 _ *OOOO**O
        db 4FH, 4FH, 2AH, 2EH, 2EH, 2EH, 2EH, 2EH       ; 0108 _ OO*.....
        db 2AH, 4FH, 4FH, 4FH, 2AH, 2EH, 2EH, 2AH       ; 0110 _ *OOO*..*
        db 4FH, 4FH, 4FH, 2AH, 2EH, 2EH, 2EH, 2EH       ; 0118 _ OOO*....
        db 2AH, 4FH, 4FH, 2AH, 2EH, 2EH, 2EH, 2EH       ; 0120 _ *OO*....
        db 2AH, 4FH, 4FH, 4FH, 2AH, 2EH, 2EH, 2EH       ; 0128 _ *OOO*...
        db 2AH, 4FH, 2AH, 2EH, 2EH, 2EH, 2EH, 2EH       ; 0130 _ *O*.....
        db 2EH, 2AH, 4FH, 4FH, 4FH, 2AH, 2EH, 2EH       ; 0138 _ .*OOO*..
        db 2AH, 2AH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH       ; 0140 _ **......
        db 2EH, 2EH, 2AH, 4FH, 4FH, 4FH, 2AH, 2EH       ; 0148 _ ..*OOO*.
        db 2AH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH       ; 0150 _ *.......
        db 2EH, 2EH, 2EH, 2AH, 4FH, 4FH, 4FH, 2AH       ; 0158 _ ...*OOO*
        db 2EH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH       ; 0160 _ ........
        db 2EH, 2EH, 2EH, 2EH, 2AH, 4FH, 4FH, 2AH       ; 0168 _ ....*OO*
        db 2EH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH       ; 0170 _ ........
        db 2EH, 2EH, 2EH, 2EH, 2EH, 2AH, 2AH, 2AH       ; 0178 _ .....***


mcursor:                                                ; byte
        resb    256                                     ; 0000

bootInfo:                                               ; qword
        resb    4                                       ; 0100

?_068:  resw    1                                       ; 0104

?_069:  resw    1                                       ; 0106

keyinfo:                                                ; byte
        resb    24                                      ; 0108

mouseinfo:                                              ; byte
        resb    32                                      ; 0120

keybuf:                                                 ; yword
        resb    64                                      ; 0140

mousebuf:                                               ; byte
        resb    128                                     ; 0180

mdec:                                                   ; oword
        resb    16                                      ; 0200

mx:     resd    1                                       ; 0210

my:     resd    1                                       ; 0214

xsize:  resd    1                                       ; 0218

ysize:  resd    1                                       ; 021C

str.1657:                                               ; byte
        resb    1                                       ; 0220

?_070:  resb    9                                       ; 0221

?_071:  resb    1                                       ; 022A


?_072:                                                  ; byte
        db 70H, 61H, 67H, 65H, 20H, 69H, 73H, 3AH       ; 0000 _ page is:
        db 20H, 00H                                     ; 0008 _  .

?_073:                                                  ; byte
        db 42H, 61H, 73H, 65H, 41H, 64H, 64H, 72H       ; 000A _ BaseAddr
        db 4CH, 3AH, 20H, 00H                           ; 0012 _ L: .

?_074:                                                  ; byte
        db 42H, 61H, 73H, 65H, 41H, 64H, 64H, 72H       ; 0016 _ BaseAddr
        db 48H, 3AH, 20H, 00H                           ; 001E _ H: .

?_075:                                                  ; byte
        db 6CH, 65H, 6EH, 67H, 74H, 68H, 4CH, 6FH       ; 0022 _ lengthLo
        db 77H, 3AH, 20H, 00H                           ; 002A _ w: .

?_076:                                                  ; byte
        db 6CH, 65H, 6EH, 67H, 74H, 68H, 48H, 69H       ; 002E _ lengthHi
        db 67H, 68H, 3AH, 20H, 00H                      ; 0036 _ gh: .

?_077:                                                  ; byte
        db 74H, 79H, 70H, 65H, 3AH, 20H, 00H            ; 003B _ type: .


