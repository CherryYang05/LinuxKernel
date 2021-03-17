; Disassembly of file: ckernel.o
; Mon Mar 15 17:20:04 2021
; Mode: 32 bits
; Syntax: YASM/NASM
; Instruction set: 80386






CMain:  ; Function begin
        push    ebp                                     ; 0000 _ 55
        mov     ebp, esp                                ; 0001 _ 89. E5
        push    ebx                                     ; 0003 _ 53
        sub     esp, 52                                 ; 0004 _ 83. EC, 34
        sub     esp, 12                                 ; 0007 _ 83. EC, 0C
        push    bootInfo                                ; 000A _ 68, 00000000(d)
        call    initBootInfo                            ; 000F _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0014 _ 83. C4, 10
        mov     eax, dword [bootInfo]                   ; 0017 _ A1, 00000000(d)
        mov     dword [ebp-30H], eax                    ; 001C _ 89. 45, D0
        movzx   eax, word [?_140]                       ; 001F _ 0F B7. 05, 00000004(d)
        cwde                                            ; 0026 _ 98
        mov     dword [ebp-2CH], eax                    ; 0027 _ 89. 45, D4
        movzx   eax, word [?_141]                       ; 002A _ 0F B7. 05, 00000006(d)
        cwde                                            ; 0031 _ 98
        mov     dword [ebp-28H], eax                    ; 0032 _ 89. 45, D8
        mov     dword [ebp-24H], 0                      ; 0035 _ C7. 45, DC, 00000000
        mov     dword [ebp-20H], 0                      ; 003C _ C7. 45, E0, 00000000
        sub     esp, 4                                  ; 0043 _ 83. EC, 04
        push    mousebuf                                ; 0046 _ 68, 00000060(d)
        push    128                                     ; 004B _ 68, 00000080
        push    mouseInfo                               ; 0050 _ 68, 00000020(d)
        call    fifo8_init                              ; 0055 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 005A _ 83. C4, 10
        sub     esp, 4                                  ; 005D _ 83. EC, 04
        push    keybuf                                  ; 0060 _ 68, 00000040(d)
        push    32                                      ; 0065 _ 6A, 20
        push    keyInfo                                 ; 0067 _ 68, 00000008(d)
        call    fifo8_init                              ; 006C _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0071 _ 83. C4, 10
        call    init_palette                            ; 0074 _ E8, FFFFFFFC(rel)
        call    init_keyboard                           ; 0079 _ E8, FFFFFFFC(rel)
        call    get_addr_buffer                         ; 007E _ E8, FFFFFFFC(rel)
        mov     dword [ebp-1CH], eax                    ; 0083 _ 89. 45, E4
        call    get_memory_block_count                  ; 0086 _ E8, FFFFFFFC(rel)
        mov     dword [ebp-18H], eax                    ; 008B _ 89. 45, E8
        mov     eax, dword [memman]                     ; 008E _ A1, 00000008(d)
        sub     esp, 12                                 ; 0093 _ 83. EC, 0C
        push    eax                                     ; 0096 _ 50
        call    memman_init                             ; 0097 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 009C _ 83. C4, 10
        mov     eax, dword [memman]                     ; 009F _ A1, 00000008(d)
        sub     esp, 4                                  ; 00A4 _ 83. EC, 04
        push    1072594944                              ; 00A7 _ 68, 3FEE8000
        push    1081344                                 ; 00AC _ 68, 00108000
        push    eax                                     ; 00B1 _ 50
        call    memman_free                             ; 00B2 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 00B7 _ 83. C4, 10
        mov     eax, dword [memman]                     ; 00BA _ A1, 00000008(d)
        sub     esp, 12                                 ; 00BF _ 83. EC, 0C
        push    eax                                     ; 00C2 _ 50
        call    memman_total                            ; 00C3 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 00C8 _ 83. C4, 10
        shr     eax, 20                                 ; 00CB _ C1. E8, 14
        mov     dword [ebp-14H], eax                    ; 00CE _ 89. 45, EC
        mov     eax, dword [ebp-14H]                    ; 00D1 _ 8B. 45, EC
        sub     esp, 12                                 ; 00D4 _ 83. EC, 0C
        push    eax                                     ; 00D7 _ 50
        call    intToHexStr                             ; 00D8 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 00DD _ 83. C4, 10
        mov     dword [ebp-10H], eax                    ; 00E0 _ 89. 45, F0
        sub     esp, 8                                  ; 00E3 _ 83. EC, 08
        push    ?_126                                   ; 00E6 _ 68, 00000000(d)
        push    3                                       ; 00EB _ 6A, 03
        push    0                                       ; 00ED _ 6A, 00
        push    0                                       ; 00EF _ 6A, 00
        push    dword [ebp-24H]                         ; 00F1 _ FF. 75, DC
        push    dword [ebp-0CH]                         ; 00F4 _ FF. 75, F4
        call    showString                              ; 00F7 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 00FC _ 83. C4, 20
        sub     esp, 8                                  ; 00FF _ 83. EC, 08
        push    dword [ebp-10H]                         ; 0102 _ FF. 75, F0
        push    3                                       ; 0105 _ 6A, 03
        push    0                                       ; 0107 _ 6A, 00
        push    152                                     ; 0109 _ 68, 00000098
        push    dword [ebp-24H]                         ; 010E _ FF. 75, DC
        push    dword [ebp-0CH]                         ; 0111 _ FF. 75, F4
        call    showString                              ; 0114 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0119 _ 83. C4, 20
        sub     esp, 8                                  ; 011C _ 83. EC, 08
        push    ?_127                                   ; 011F _ 68, 00000014(d)
        push    3                                       ; 0124 _ 6A, 03
        push    0                                       ; 0126 _ 6A, 00
        push    240                                     ; 0128 _ 68, 000000F0
        push    dword [ebp-24H]                         ; 012D _ FF. 75, DC
        push    dword [ebp-0CH]                         ; 0130 _ FF. 75, F4
        call    showString                              ; 0133 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0138 _ 83. C4, 20
        mov     eax, dword [memman]                     ; 013B _ A1, 00000008(d)
        push    dword [ebp-28H]                         ; 0140 _ FF. 75, D8
        push    dword [ebp-2CH]                         ; 0143 _ FF. 75, D4
        push    dword [ebp-30H]                         ; 0146 _ FF. 75, D0
        push    eax                                     ; 0149 _ 50
        call    shtctl_init                             ; 014A _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 014F _ 83. C4, 10
        mov     dword [ebp-0CH], eax                    ; 0152 _ 89. 45, F4
        sub     esp, 12                                 ; 0155 _ 83. EC, 0C
        push    dword [ebp-0CH]                         ; 0158 _ FF. 75, F4
        call    sheet_alloc                             ; 015B _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0160 _ 83. C4, 10
        mov     dword [ebp-24H], eax                    ; 0163 _ 89. 45, DC
        sub     esp, 12                                 ; 0166 _ 83. EC, 0C
        push    dword [ebp-0CH]                         ; 0169 _ FF. 75, F4
        call    sheet_alloc                             ; 016C _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0171 _ 83. C4, 10
        mov     dword [ebp-20H], eax                    ; 0174 _ 89. 45, E0
        mov     eax, dword [ebp-2CH]                    ; 0177 _ 8B. 45, D4
        imul    eax, dword [ebp-28H]                    ; 017A _ 0F AF. 45, D8
        mov     edx, eax                                ; 017E _ 89. C2
        mov     eax, dword [memman]                     ; 0180 _ A1, 00000008(d)
        sub     esp, 8                                  ; 0185 _ 83. EC, 08
        push    edx                                     ; 0188 _ 52
        push    eax                                     ; 0189 _ 50
        call    memman_alloc_4K                         ; 018A _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 018F _ 83. C4, 10
        mov     dword [buf_back], eax                   ; 0192 _ A3, 000000F8(d)
        mov     eax, dword [buf_back]                   ; 0197 _ A1, 000000F8(d)
        sub     esp, 4                                  ; 019C _ 83. EC, 04
        push    dword [ebp-28H]                         ; 019F _ FF. 75, D8
        push    dword [ebp-2CH]                         ; 01A2 _ FF. 75, D4
        push    eax                                     ; 01A5 _ 50
        call    init_screen8                            ; 01A6 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 01AB _ 83. C4, 10
        mov     eax, dword [buf_back]                   ; 01AE _ A1, 000000F8(d)
        sub     esp, 12                                 ; 01B3 _ 83. EC, 0C
        push    99                                      ; 01B6 _ 6A, 63
        push    dword [ebp-28H]                         ; 01B8 _ FF. 75, D8
        push    dword [ebp-2CH]                         ; 01BB _ FF. 75, D4
        push    eax                                     ; 01BE _ 50
        push    dword [ebp-24H]                         ; 01BF _ FF. 75, DC
        call    sheet_setbuf                            ; 01C2 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 01C7 _ 83. C4, 20
        sub     esp, 12                                 ; 01CA _ 83. EC, 0C
        push    99                                      ; 01CD _ 6A, 63
        push    16                                      ; 01CF _ 6A, 10
        push    16                                      ; 01D1 _ 6A, 10
        push    buf_mouse                               ; 01D3 _ 68, 00000100(d)
        push    dword [ebp-20H]                         ; 01D8 _ FF. 75, E0
        call    sheet_setbuf                            ; 01DB _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 01E0 _ 83. C4, 20
        sub     esp, 8                                  ; 01E3 _ 83. EC, 08
        push    99                                      ; 01E6 _ 6A, 63
        push    buf_mouse                               ; 01E8 _ 68, 00000100(d)
        call    init_mouse_cursor                       ; 01ED _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 01F2 _ 83. C4, 10
        push    0                                       ; 01F5 _ 6A, 00
        push    0                                       ; 01F7 _ 6A, 00
        push    dword [ebp-24H]                         ; 01F9 _ FF. 75, DC
        push    dword [ebp-0CH]                         ; 01FC _ FF. 75, F4
        call    sheet_slide                             ; 01FF _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0204 _ 83. C4, 10
        mov     eax, dword [ebp-2CH]                    ; 0207 _ 8B. 45, D4
        sub     eax, 16                                 ; 020A _ 83. E8, 10
        mov     edx, eax                                ; 020D _ 89. C2
        shr     edx, 31                                 ; 020F _ C1. EA, 1F
        add     eax, edx                                ; 0212 _ 01. D0
        sar     eax, 1                                  ; 0214 _ D1. F8
        mov     dword [mx], eax                         ; 0216 _ A3, 000000F0(d)
        mov     eax, dword [ebp-28H]                    ; 021B _ 8B. 45, D8
        sub     eax, 44                                 ; 021E _ 83. E8, 2C
        mov     edx, eax                                ; 0221 _ 89. C2
        shr     edx, 31                                 ; 0223 _ C1. EA, 1F
        add     eax, edx                                ; 0226 _ 01. D0
        sar     eax, 1                                  ; 0228 _ D1. F8
        mov     dword [my], eax                         ; 022A _ A3, 000000F4(d)
        mov     edx, dword [my]                         ; 022F _ 8B. 15, 000000F4(d)
        mov     eax, dword [mx]                         ; 0235 _ A1, 000000F0(d)
        push    edx                                     ; 023A _ 52
        push    eax                                     ; 023B _ 50
        push    dword [ebp-20H]                         ; 023C _ FF. 75, E0
        push    dword [ebp-0CH]                         ; 023F _ FF. 75, F4
        call    sheet_slide                             ; 0242 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0247 _ 83. C4, 10
        sub     esp, 8                                  ; 024A _ 83. EC, 08
        push    ?_128                                   ; 024D _ 68, 00000017(d)
        push    dword [ebp-0CH]                         ; 0252 _ FF. 75, F4
        call    messageBox                              ; 0255 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 025A _ 83. C4, 10
        sub     esp, 4                                  ; 025D _ 83. EC, 04
        push    0                                       ; 0260 _ 6A, 00
        push    dword [ebp-24H]                         ; 0262 _ FF. 75, DC
        push    dword [ebp-0CH]                         ; 0265 _ FF. 75, F4
        call    sheet_level_updown                      ; 0268 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 026D _ 83. C4, 10
        sub     esp, 4                                  ; 0270 _ 83. EC, 04
        push    100                                     ; 0273 _ 6A, 64
        push    dword [ebp-20H]                         ; 0275 _ FF. 75, E0
        push    dword [ebp-0CH]                         ; 0278 _ FF. 75, F4
        call    sheet_level_updown                      ; 027B _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0280 _ 83. C4, 10
        mov     eax, dword [ebp-0CH]                    ; 0283 _ 8B. 45, F4
        mov     eax, dword [eax+0CH]                    ; 0286 _ 8B. 40, 0C
        sub     esp, 12                                 ; 0289 _ 83. EC, 0C
        push    eax                                     ; 028C _ 50
        call    intToHexStr                             ; 028D _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0292 _ 83. C4, 10
        sub     esp, 8                                  ; 0295 _ 83. EC, 08
        push    eax                                     ; 0298 _ 50
        push    2                                       ; 0299 _ 6A, 02
        push    16                                      ; 029B _ 6A, 10
        push    0                                       ; 029D _ 6A, 00
        push    dword [ebp-24H]                         ; 029F _ FF. 75, DC
        push    dword [ebp-0CH]                         ; 02A2 _ FF. 75, F4
        call    showString                              ; 02A5 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 02AA _ 83. C4, 20
        mov     eax, dword [buf_back]                   ; 02AD _ A1, 000000F8(d)
        sub     esp, 12                                 ; 02B2 _ 83. EC, 0C
        push    eax                                     ; 02B5 _ 50
        call    intToHexStr                             ; 02B6 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 02BB _ 83. C4, 10
        sub     esp, 8                                  ; 02BE _ 83. EC, 08
        push    eax                                     ; 02C1 _ 50
        push    2                                       ; 02C2 _ 6A, 02
        push    32                                      ; 02C4 _ 6A, 20
        push    0                                       ; 02C6 _ 6A, 00
        push    dword [ebp-24H]                         ; 02C8 _ FF. 75, DC
        push    dword [ebp-0CH]                         ; 02CB _ FF. 75, F4
        call    showString                              ; 02CE _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 02D3 _ 83. C4, 20
        mov     eax, dword [ebp-0CH]                    ; 02D6 _ 8B. 45, F4
        mov     eax, dword [eax]                        ; 02D9 _ 8B. 00
        sub     esp, 12                                 ; 02DB _ 83. EC, 0C
        push    eax                                     ; 02DE _ 50
        call    intToHexStr                             ; 02DF _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 02E4 _ 83. C4, 10
        sub     esp, 8                                  ; 02E7 _ 83. EC, 08
        push    eax                                     ; 02EA _ 50
        push    2                                       ; 02EB _ 6A, 02
        push    48                                      ; 02ED _ 6A, 30
        push    0                                       ; 02EF _ 6A, 00
        push    dword [ebp-24H]                         ; 02F1 _ FF. 75, DC
        push    dword [ebp-0CH]                         ; 02F4 _ FF. 75, F4
        call    showString                              ; 02F7 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 02FC _ 83. C4, 20
        call    io_sti                                  ; 02FF _ E8, FFFFFFFC(rel)
        sub     esp, 12                                 ; 0304 _ 83. EC, 0C
        push    mouse_move                              ; 0307 _ 68, 000000E0(d)
        call    enable_mouse                            ; 030C _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0311 _ 83. C4, 10
        mov     dword [ebp-34H], 0                      ; 0314 _ C7. 45, CC, 00000000
        mov     byte [ebp-35H], 0                       ; 031B _ C6. 45, CB, 00
?_001:  call    io_cli                                  ; 031F _ E8, FFFFFFFC(rel)
        sub     esp, 12                                 ; 0324 _ 83. EC, 0C
        push    keyInfo                                 ; 0327 _ 68, 00000008(d)
        call    fifo8_status                            ; 032C _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0331 _ 83. C4, 10
        mov     ebx, eax                                ; 0334 _ 89. C3
        sub     esp, 12                                 ; 0336 _ 83. EC, 0C
        push    mouseInfo                               ; 0339 _ 68, 00000020(d)
        call    fifo8_status                            ; 033E _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0343 _ 83. C4, 10
        add     eax, ebx                                ; 0346 _ 01. D8
        test    eax, eax                                ; 0348 _ 85. C0
        jnz     ?_002                                   ; 034A _ 75, 07
        call    io_stihlt                               ; 034C _ E8, FFFFFFFC(rel)
        jmp     ?_001                                   ; 0351 _ EB, CC

?_002:  sub     esp, 12                                 ; 0353 _ 83. EC, 0C
        push    keyInfo                                 ; 0356 _ 68, 00000008(d)
        call    fifo8_status                            ; 035B _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0360 _ 83. C4, 10
        test    eax, eax                                ; 0363 _ 85. C0
        jz      ?_003                                   ; 0365 _ 74, 6F
        call    io_sti                                  ; 0367 _ E8, FFFFFFFC(rel)
        sub     esp, 12                                 ; 036C _ 83. EC, 0C
        push    keyInfo                                 ; 036F _ 68, 00000008(d)
        call    fifo8_get                               ; 0374 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0379 _ 83. C4, 10
        mov     byte [ebp-35H], al                      ; 037C _ 88. 45, CB
        cmp     byte [ebp-35H], 28                      ; 037F _ 80. 7D, CB, 1C
        jnz     ?_001                                   ; 0383 _ 75, 9A
        mov     ecx, dword [buf_back]                   ; 0385 _ 8B. 0D, 000000F8(d)
        mov     edx, dword [ebp-34H]                    ; 038B _ 8B. 55, CC
        mov     eax, edx                                ; 038E _ 89. D0
        shl     eax, 2                                  ; 0390 _ C1. E0, 02
        add     eax, edx                                ; 0393 _ 01. D0
        shl     eax, 2                                  ; 0395 _ C1. E0, 02
        mov     edx, eax                                ; 0398 _ 89. C2
        mov     eax, dword [ebp-1CH]                    ; 039A _ 8B. 45, E4
        add     eax, edx                                ; 039D _ 01. D0
        sub     esp, 4                                  ; 039F _ 83. EC, 04
        push    7                                       ; 03A2 _ 6A, 07
        push    dword [ebp-2CH]                         ; 03A4 _ FF. 75, D4
        push    dword [ebp-34H]                         ; 03A7 _ FF. 75, CC
        push    ecx                                     ; 03AA _ 51
        push    eax                                     ; 03AB _ 50
        push    dword [ebp-24H]                         ; 03AC _ FF. 75, DC
        push    dword [ebp-0CH]                         ; 03AF _ FF. 75, F4
        call    showMemInfo                             ; 03B2 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 03B7 _ 83. C4, 20
        add     dword [ebp-34H], 1                      ; 03BA _ 83. 45, CC, 01
        mov     eax, dword [ebp-34H]                    ; 03BE _ 8B. 45, CC
        cmp     eax, dword [ebp-18H]                    ; 03C1 _ 3B. 45, E8
        jl      ?_001                                   ; 03C4 _ 0F 8C, FFFFFF55
        mov     dword [ebp-34H], 0                      ; 03CA _ C7. 45, CC, 00000000
        jmp     ?_001                                   ; 03D1 _ E9, FFFFFF49

?_003:  sub     esp, 12                                 ; 03D6 _ 83. EC, 0C
        push    mouseInfo                               ; 03D9 _ 68, 00000020(d)
        call    fifo8_status                            ; 03DE _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 03E3 _ 83. C4, 10
        test    eax, eax                                ; 03E6 _ 85. C0
        je      ?_001                                   ; 03E8 _ 0F 84, FFFFFF31
        sub     esp, 4                                  ; 03EE _ 83. EC, 04
        push    dword [ebp-20H]                         ; 03F1 _ FF. 75, E0
        push    dword [ebp-24H]                         ; 03F4 _ FF. 75, DC
        push    dword [ebp-0CH]                         ; 03F7 _ FF. 75, F4
        call    showMouseInfo                           ; 03FA _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 03FF _ 83. C4, 10
        jmp     ?_001                                   ; 0402 _ E9, FFFFFF18
; CMain End of function

initBootInfo:; Function begin
        push    ebp                                     ; 0407 _ 55
        mov     ebp, esp                                ; 0408 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 040A _ 8B. 45, 08
        mov     dword [eax], 655360                     ; 040D _ C7. 00, 000A0000
        mov     eax, dword [ebp+8H]                     ; 0413 _ 8B. 45, 08
; Note: Length-changing prefix causes delay on Intel processors
        mov     word [eax+4H], 320                      ; 0416 _ 66: C7. 40, 04, 0140
        mov     eax, dword [ebp+8H]                     ; 041C _ 8B. 45, 08
; Note: Length-changing prefix causes delay on Intel processors
        mov     word [eax+6H], 200                      ; 041F _ 66: C7. 40, 06, 00C8
        nop                                             ; 0425 _ 90
        pop     ebp                                     ; 0426 _ 5D
        ret                                             ; 0427 _ C3
; initBootInfo End of function

showString:; Function begin
        push    ebp                                     ; 0428 _ 55
        mov     ebp, esp                                ; 0429 _ 89. E5
        push    ebx                                     ; 042B _ 53
        sub     esp, 36                                 ; 042C _ 83. EC, 24
        mov     eax, dword [ebp+18H]                    ; 042F _ 8B. 45, 18
        mov     byte [ebp-1CH], al                      ; 0432 _ 88. 45, E4
        mov     eax, dword [ebp+10H]                    ; 0435 _ 8B. 45, 10
        mov     dword [ebp-0CH], eax                    ; 0438 _ 89. 45, F4
        jmp     ?_005                                   ; 043B _ EB, 3E

?_004:  mov     eax, dword [ebp+1CH]                    ; 043D _ 8B. 45, 1C
        movzx   eax, byte [eax]                         ; 0440 _ 0F B6. 00
        movzx   eax, al                                 ; 0443 _ 0F B6. C0
        shl     eax, 4                                  ; 0446 _ C1. E0, 04
        lea     ebx, [systemFont+eax]                   ; 0449 _ 8D. 98, 00000000(d)
        movsx   ecx, byte [ebp-1CH]                     ; 044F _ 0F BE. 4D, E4
        mov     eax, dword [ebp+0CH]                    ; 0453 _ 8B. 45, 0C
        mov     edx, dword [eax+4H]                     ; 0456 _ 8B. 50, 04
        mov     eax, dword [ebp+0CH]                    ; 0459 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 045C _ 8B. 00
        sub     esp, 8                                  ; 045E _ 83. EC, 08
        push    ebx                                     ; 0461 _ 53
        push    ecx                                     ; 0462 _ 51
        push    dword [ebp+14H]                         ; 0463 _ FF. 75, 14
        push    dword [ebp+10H]                         ; 0466 _ FF. 75, 10
        push    edx                                     ; 0469 _ 52
        push    eax                                     ; 046A _ 50
        call    showFont8                               ; 046B _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0470 _ 83. C4, 20
        add     dword [ebp+10H], 8                      ; 0473 _ 83. 45, 10, 08
        add     dword [ebp+1CH], 1                      ; 0477 _ 83. 45, 1C, 01
?_005:  mov     eax, dword [ebp+1CH]                    ; 047B _ 8B. 45, 1C
        movzx   eax, byte [eax]                         ; 047E _ 0F B6. 00
        test    al, al                                  ; 0481 _ 84. C0
        jnz     ?_004                                   ; 0483 _ 75, B8
        mov     eax, dword [ebp+14H]                    ; 0485 _ 8B. 45, 14
        add     eax, 16                                 ; 0488 _ 83. C0, 10
        sub     esp, 8                                  ; 048B _ 83. EC, 08
        push    eax                                     ; 048E _ 50
        push    dword [ebp+10H]                         ; 048F _ FF. 75, 10
        push    dword [ebp+14H]                         ; 0492 _ FF. 75, 14
        push    dword [ebp-0CH]                         ; 0495 _ FF. 75, F4
        push    dword [ebp+0CH]                         ; 0498 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 049B _ FF. 75, 08
        call    sheet_refresh                           ; 049E _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 04A3 _ 83. C4, 20
        nop                                             ; 04A6 _ 90
        mov     ebx, dword [ebp-4H]                     ; 04A7 _ 8B. 5D, FC
        leave                                           ; 04AA _ C9
        ret                                             ; 04AB _ C3
; showString End of function

init_screen8:; Function begin
        push    ebp                                     ; 04AC _ 55
        mov     ebp, esp                                ; 04AD _ 89. E5
        push    ebx                                     ; 04AF _ 53
        sub     esp, 4                                  ; 04B0 _ 83. EC, 04
        mov     eax, dword [ebp+10H]                    ; 04B3 _ 8B. 45, 10
        lea     edx, [eax-19H]                          ; 04B6 _ 8D. 50, E7
        mov     eax, dword [ebp+0CH]                    ; 04B9 _ 8B. 45, 0C
        sub     eax, 1                                  ; 04BC _ 83. E8, 01
        sub     esp, 4                                  ; 04BF _ 83. EC, 04
        push    edx                                     ; 04C2 _ 52
        push    eax                                     ; 04C3 _ 50
        push    0                                       ; 04C4 _ 6A, 00
        push    0                                       ; 04C6 _ 6A, 00
        push    14                                      ; 04C8 _ 6A, 0E
        push    dword [ebp+0CH]                         ; 04CA _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 04CD _ FF. 75, 08
        call    boxfill8                                ; 04D0 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 04D5 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 04D8 _ 8B. 45, 10
        lea     ecx, [eax-18H]                          ; 04DB _ 8D. 48, E8
        mov     eax, dword [ebp+0CH]                    ; 04DE _ 8B. 45, 0C
        lea     edx, [eax-1H]                           ; 04E1 _ 8D. 50, FF
        mov     eax, dword [ebp+10H]                    ; 04E4 _ 8B. 45, 10
        sub     eax, 24                                 ; 04E7 _ 83. E8, 18
        sub     esp, 4                                  ; 04EA _ 83. EC, 04
        push    ecx                                     ; 04ED _ 51
        push    edx                                     ; 04EE _ 52
        push    eax                                     ; 04EF _ 50
        push    0                                       ; 04F0 _ 6A, 00
        push    8                                       ; 04F2 _ 6A, 08
        push    dword [ebp+0CH]                         ; 04F4 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 04F7 _ FF. 75, 08
        call    boxfill8                                ; 04FA _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 04FF _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 0502 _ 8B. 45, 10
        lea     ecx, [eax-17H]                          ; 0505 _ 8D. 48, E9
        mov     eax, dword [ebp+0CH]                    ; 0508 _ 8B. 45, 0C
        lea     edx, [eax-1H]                           ; 050B _ 8D. 50, FF
        mov     eax, dword [ebp+10H]                    ; 050E _ 8B. 45, 10
        sub     eax, 23                                 ; 0511 _ 83. E8, 17
        sub     esp, 4                                  ; 0514 _ 83. EC, 04
        push    ecx                                     ; 0517 _ 51
        push    edx                                     ; 0518 _ 52
        push    eax                                     ; 0519 _ 50
        push    0                                       ; 051A _ 6A, 00
        push    7                                       ; 051C _ 6A, 07
        push    dword [ebp+0CH]                         ; 051E _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 0521 _ FF. 75, 08
        call    boxfill8                                ; 0524 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0529 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 052C _ 8B. 45, 10
        lea     ecx, [eax-1H]                           ; 052F _ 8D. 48, FF
        mov     eax, dword [ebp+0CH]                    ; 0532 _ 8B. 45, 0C
        lea     edx, [eax-1H]                           ; 0535 _ 8D. 50, FF
        mov     eax, dword [ebp+10H]                    ; 0538 _ 8B. 45, 10
        sub     eax, 22                                 ; 053B _ 83. E8, 16
        sub     esp, 4                                  ; 053E _ 83. EC, 04
        push    ecx                                     ; 0541 _ 51
        push    edx                                     ; 0542 _ 52
        push    eax                                     ; 0543 _ 50
        push    0                                       ; 0544 _ 6A, 00
        push    8                                       ; 0546 _ 6A, 08
        push    dword [ebp+0CH]                         ; 0548 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 054B _ FF. 75, 08
        call    boxfill8                                ; 054E _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0553 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 0556 _ 8B. 45, 10
        lea     edx, [eax-14H]                          ; 0559 _ 8D. 50, EC
        mov     eax, dword [ebp+10H]                    ; 055C _ 8B. 45, 10
        sub     eax, 20                                 ; 055F _ 83. E8, 14
        sub     esp, 4                                  ; 0562 _ 83. EC, 04
        push    edx                                     ; 0565 _ 52
        push    51                                      ; 0566 _ 6A, 33
        push    eax                                     ; 0568 _ 50
        push    10                                      ; 0569 _ 6A, 0A
        push    7                                       ; 056B _ 6A, 07
        push    dword [ebp+0CH]                         ; 056D _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 0570 _ FF. 75, 08
        call    boxfill8                                ; 0573 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0578 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 057B _ 8B. 45, 10
        lea     edx, [eax-4H]                           ; 057E _ 8D. 50, FC
        mov     eax, dword [ebp+10H]                    ; 0581 _ 8B. 45, 10
        sub     eax, 20                                 ; 0584 _ 83. E8, 14
        sub     esp, 4                                  ; 0587 _ 83. EC, 04
        push    edx                                     ; 058A _ 52
        push    9                                       ; 058B _ 6A, 09
        push    eax                                     ; 058D _ 50
        push    9                                       ; 058E _ 6A, 09
        push    7                                       ; 0590 _ 6A, 07
        push    dword [ebp+0CH]                         ; 0592 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 0595 _ FF. 75, 08
        call    boxfill8                                ; 0598 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 059D _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 05A0 _ 8B. 45, 10
        lea     edx, [eax-4H]                           ; 05A3 _ 8D. 50, FC
        mov     eax, dword [ebp+10H]                    ; 05A6 _ 8B. 45, 10
        sub     eax, 4                                  ; 05A9 _ 83. E8, 04
        sub     esp, 4                                  ; 05AC _ 83. EC, 04
        push    edx                                     ; 05AF _ 52
        push    50                                      ; 05B0 _ 6A, 32
        push    eax                                     ; 05B2 _ 50
        push    10                                      ; 05B3 _ 6A, 0A
        push    15                                      ; 05B5 _ 6A, 0F
        push    dword [ebp+0CH]                         ; 05B7 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 05BA _ FF. 75, 08
        call    boxfill8                                ; 05BD _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 05C2 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 05C5 _ 8B. 45, 10
        lea     edx, [eax-5H]                           ; 05C8 _ 8D. 50, FB
        mov     eax, dword [ebp+10H]                    ; 05CB _ 8B. 45, 10
        sub     eax, 19                                 ; 05CE _ 83. E8, 13
        sub     esp, 4                                  ; 05D1 _ 83. EC, 04
        push    edx                                     ; 05D4 _ 52
        push    50                                      ; 05D5 _ 6A, 32
        push    eax                                     ; 05D7 _ 50
        push    50                                      ; 05D8 _ 6A, 32
        push    15                                      ; 05DA _ 6A, 0F
        push    dword [ebp+0CH]                         ; 05DC _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 05DF _ FF. 75, 08
        call    boxfill8                                ; 05E2 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 05E7 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 05EA _ 8B. 45, 10
        lea     edx, [eax-3H]                           ; 05ED _ 8D. 50, FD
        mov     eax, dword [ebp+10H]                    ; 05F0 _ 8B. 45, 10
        sub     eax, 3                                  ; 05F3 _ 83. E8, 03
        sub     esp, 4                                  ; 05F6 _ 83. EC, 04
        push    edx                                     ; 05F9 _ 52
        push    50                                      ; 05FA _ 6A, 32
        push    eax                                     ; 05FC _ 50
        push    10                                      ; 05FD _ 6A, 0A
        push    0                                       ; 05FF _ 6A, 00
        push    dword [ebp+0CH]                         ; 0601 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 0604 _ FF. 75, 08
        call    boxfill8                                ; 0607 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 060C _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 060F _ 8B. 45, 10
        lea     edx, [eax-3H]                           ; 0612 _ 8D. 50, FD
        mov     eax, dword [ebp+10H]                    ; 0615 _ 8B. 45, 10
        sub     eax, 20                                 ; 0618 _ 83. E8, 14
        sub     esp, 4                                  ; 061B _ 83. EC, 04
        push    edx                                     ; 061E _ 52
        push    51                                      ; 061F _ 6A, 33
        push    eax                                     ; 0621 _ 50
        push    51                                      ; 0622 _ 6A, 33
        push    0                                       ; 0624 _ 6A, 00
        push    dword [ebp+0CH]                         ; 0626 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 0629 _ FF. 75, 08
        call    boxfill8                                ; 062C _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0631 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 0634 _ 8B. 45, 10
        lea     ebx, [eax-14H]                          ; 0637 _ 8D. 58, EC
        mov     eax, dword [ebp+0CH]                    ; 063A _ 8B. 45, 0C
        lea     ecx, [eax-4H]                           ; 063D _ 8D. 48, FC
        mov     eax, dword [ebp+10H]                    ; 0640 _ 8B. 45, 10
        lea     edx, [eax-14H]                          ; 0643 _ 8D. 50, EC
        mov     eax, dword [ebp+0CH]                    ; 0646 _ 8B. 45, 0C
        sub     eax, 47                                 ; 0649 _ 83. E8, 2F
        sub     esp, 4                                  ; 064C _ 83. EC, 04
        push    ebx                                     ; 064F _ 53
        push    ecx                                     ; 0650 _ 51
        push    edx                                     ; 0651 _ 52
        push    eax                                     ; 0652 _ 50
        push    15                                      ; 0653 _ 6A, 0F
        push    dword [ebp+0CH]                         ; 0655 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 0658 _ FF. 75, 08
        call    boxfill8                                ; 065B _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0660 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 0663 _ 8B. 45, 10
        lea     ebx, [eax-3H]                           ; 0666 _ 8D. 58, FD
        mov     eax, dword [ebp+0CH]                    ; 0669 _ 8B. 45, 0C
        lea     ecx, [eax-2FH]                          ; 066C _ 8D. 48, D1
        mov     eax, dword [ebp+10H]                    ; 066F _ 8B. 45, 10
        lea     edx, [eax-14H]                          ; 0672 _ 8D. 50, EC
        mov     eax, dword [ebp+0CH]                    ; 0675 _ 8B. 45, 0C
        sub     eax, 47                                 ; 0678 _ 83. E8, 2F
        sub     esp, 4                                  ; 067B _ 83. EC, 04
        push    ebx                                     ; 067E _ 53
        push    ecx                                     ; 067F _ 51
        push    edx                                     ; 0680 _ 52
        push    eax                                     ; 0681 _ 50
        push    15                                      ; 0682 _ 6A, 0F
        push    dword [ebp+0CH]                         ; 0684 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 0687 _ FF. 75, 08
        call    boxfill8                                ; 068A _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 068F _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 0692 _ 8B. 45, 10
        lea     ebx, [eax-3H]                           ; 0695 _ 8D. 58, FD
        mov     eax, dword [ebp+0CH]                    ; 0698 _ 8B. 45, 0C
        lea     ecx, [eax-4H]                           ; 069B _ 8D. 48, FC
        mov     eax, dword [ebp+10H]                    ; 069E _ 8B. 45, 10
        lea     edx, [eax-3H]                           ; 06A1 _ 8D. 50, FD
        mov     eax, dword [ebp+0CH]                    ; 06A4 _ 8B. 45, 0C
        sub     eax, 47                                 ; 06A7 _ 83. E8, 2F
        sub     esp, 4                                  ; 06AA _ 83. EC, 04
        push    ebx                                     ; 06AD _ 53
        push    ecx                                     ; 06AE _ 51
        push    edx                                     ; 06AF _ 52
        push    eax                                     ; 06B0 _ 50
        push    7                                       ; 06B1 _ 6A, 07
        push    dword [ebp+0CH]                         ; 06B3 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 06B6 _ FF. 75, 08
        call    boxfill8                                ; 06B9 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 06BE _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 06C1 _ 8B. 45, 10
        lea     ebx, [eax-3H]                           ; 06C4 _ 8D. 58, FD
        mov     eax, dword [ebp+0CH]                    ; 06C7 _ 8B. 45, 0C
        lea     ecx, [eax-3H]                           ; 06CA _ 8D. 48, FD
        mov     eax, dword [ebp+10H]                    ; 06CD _ 8B. 45, 10
        lea     edx, [eax-14H]                          ; 06D0 _ 8D. 50, EC
        mov     eax, dword [ebp+0CH]                    ; 06D3 _ 8B. 45, 0C
        sub     eax, 3                                  ; 06D6 _ 83. E8, 03
        sub     esp, 4                                  ; 06D9 _ 83. EC, 04
        push    ebx                                     ; 06DC _ 53
        push    ecx                                     ; 06DD _ 51
        push    edx                                     ; 06DE _ 52
        push    eax                                     ; 06DF _ 50
        push    7                                       ; 06E0 _ 6A, 07
        push    dword [ebp+0CH]                         ; 06E2 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 06E5 _ FF. 75, 08
        call    boxfill8                                ; 06E8 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 06ED _ 83. C4, 20
        nop                                             ; 06F0 _ 90
        mov     ebx, dword [ebp-4H]                     ; 06F1 _ 8B. 5D, FC
        leave                                           ; 06F4 _ C9
        ret                                             ; 06F5 _ C3
; init_screen8 End of function

init_palette:; Function begin
        push    ebp                                     ; 06F6 _ 55
        mov     ebp, esp                                ; 06F7 _ 89. E5
        sub     esp, 24                                 ; 06F9 _ 83. EC, 18
        mov     eax, dword [bootInfo]                   ; 06FC _ A1, 00000000(d)
        mov     dword [ebp-14H], eax                    ; 0701 _ 89. 45, EC
        movzx   eax, word [?_140]                       ; 0704 _ 0F B7. 05, 00000004(d)
        cwde                                            ; 070B _ 98
        mov     dword [ebp-10H], eax                    ; 070C _ 89. 45, F0
        movzx   eax, word [?_141]                       ; 070F _ 0F B7. 05, 00000006(d)
        cwde                                            ; 0716 _ 98
        mov     dword [ebp-0CH], eax                    ; 0717 _ 89. 45, F4
        sub     esp, 4                                  ; 071A _ 83. EC, 04
        push    table_rgb.1684                          ; 071D _ 68, 00000020(d)
        push    15                                      ; 0722 _ 6A, 0F
        push    0                                       ; 0724 _ 6A, 00
        call    set_palette                             ; 0726 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 072B _ 83. C4, 10
        nop                                             ; 072E _ 90
        leave                                           ; 072F _ C9
        ret                                             ; 0730 _ C3
; init_palette End of function

set_palette:; Function begin
        push    ebp                                     ; 0731 _ 55
        mov     ebp, esp                                ; 0732 _ 89. E5
        sub     esp, 24                                 ; 0734 _ 83. EC, 18
        call    io_load_eflags                          ; 0737 _ E8, FFFFFFFC(rel)
        mov     dword [ebp-0CH], eax                    ; 073C _ 89. 45, F4
        call    io_cli                                  ; 073F _ E8, FFFFFFFC(rel)
        sub     esp, 8                                  ; 0744 _ 83. EC, 08
        push    dword [ebp+8H]                          ; 0747 _ FF. 75, 08
        push    968                                     ; 074A _ 68, 000003C8
        call    io_out8                                 ; 074F _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0754 _ 83. C4, 10
        mov     eax, dword [ebp+8H]                     ; 0757 _ 8B. 45, 08
        mov     dword [ebp-10H], eax                    ; 075A _ 89. 45, F0
        jmp     ?_007                                   ; 075D _ EB, 65

?_006:  mov     eax, dword [ebp+10H]                    ; 075F _ 8B. 45, 10
        movzx   eax, byte [eax]                         ; 0762 _ 0F B6. 00
        shr     al, 2                                   ; 0765 _ C0. E8, 02
        movzx   eax, al                                 ; 0768 _ 0F B6. C0
        sub     esp, 8                                  ; 076B _ 83. EC, 08
        push    eax                                     ; 076E _ 50
        push    969                                     ; 076F _ 68, 000003C9
        call    io_out8                                 ; 0774 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0779 _ 83. C4, 10
        mov     eax, dword [ebp+10H]                    ; 077C _ 8B. 45, 10
        add     eax, 1                                  ; 077F _ 83. C0, 01
        movzx   eax, byte [eax]                         ; 0782 _ 0F B6. 00
        shr     al, 2                                   ; 0785 _ C0. E8, 02
        movzx   eax, al                                 ; 0788 _ 0F B6. C0
        sub     esp, 8                                  ; 078B _ 83. EC, 08
        push    eax                                     ; 078E _ 50
        push    969                                     ; 078F _ 68, 000003C9
        call    io_out8                                 ; 0794 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0799 _ 83. C4, 10
        mov     eax, dword [ebp+10H]                    ; 079C _ 8B. 45, 10
        add     eax, 2                                  ; 079F _ 83. C0, 02
        movzx   eax, byte [eax]                         ; 07A2 _ 0F B6. 00
        shr     al, 2                                   ; 07A5 _ C0. E8, 02
        movzx   eax, al                                 ; 07A8 _ 0F B6. C0
        sub     esp, 8                                  ; 07AB _ 83. EC, 08
        push    eax                                     ; 07AE _ 50
        push    969                                     ; 07AF _ 68, 000003C9
        call    io_out8                                 ; 07B4 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 07B9 _ 83. C4, 10
        add     dword [ebp+10H], 3                      ; 07BC _ 83. 45, 10, 03
        add     dword [ebp-10H], 1                      ; 07C0 _ 83. 45, F0, 01
?_007:  mov     eax, dword [ebp-10H]                    ; 07C4 _ 8B. 45, F0
        cmp     eax, dword [ebp+0CH]                    ; 07C7 _ 3B. 45, 0C
        jle     ?_006                                   ; 07CA _ 7E, 93
        sub     esp, 12                                 ; 07CC _ 83. EC, 0C
        push    dword [ebp-0CH]                         ; 07CF _ FF. 75, F4
        call    io_store_eflags                         ; 07D2 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 07D7 _ 83. C4, 10
        nop                                             ; 07DA _ 90
        leave                                           ; 07DB _ C9
        ret                                             ; 07DC _ C3
; set_palette End of function

boxfill8:; Function begin
        push    ebp                                     ; 07DD _ 55
        mov     ebp, esp                                ; 07DE _ 89. E5
        sub     esp, 20                                 ; 07E0 _ 83. EC, 14
        mov     eax, dword [ebp+10H]                    ; 07E3 _ 8B. 45, 10
        mov     byte [ebp-14H], al                      ; 07E6 _ 88. 45, EC
        mov     eax, dword [ebp+18H]                    ; 07E9 _ 8B. 45, 18
        mov     dword [ebp-4H], eax                     ; 07EC _ 89. 45, FC
        jmp     ?_011                                   ; 07EF _ EB, 33

?_008:  mov     eax, dword [ebp+14H]                    ; 07F1 _ 8B. 45, 14
        mov     dword [ebp-8H], eax                     ; 07F4 _ 89. 45, F8
        jmp     ?_010                                   ; 07F7 _ EB, 1F

?_009:  mov     eax, dword [ebp-4H]                     ; 07F9 _ 8B. 45, FC
        imul    eax, dword [ebp+0CH]                    ; 07FC _ 0F AF. 45, 0C
        mov     edx, eax                                ; 0800 _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 0802 _ 8B. 45, F8
        add     eax, edx                                ; 0805 _ 01. D0
        mov     edx, eax                                ; 0807 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 0809 _ 8B. 45, 08
        add     edx, eax                                ; 080C _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 080E _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0812 _ 88. 02
        add     dword [ebp-8H], 1                       ; 0814 _ 83. 45, F8, 01
?_010:  mov     eax, dword [ebp-8H]                     ; 0818 _ 8B. 45, F8
        cmp     eax, dword [ebp+1CH]                    ; 081B _ 3B. 45, 1C
        jle     ?_009                                   ; 081E _ 7E, D9
        add     dword [ebp-4H], 1                       ; 0820 _ 83. 45, FC, 01
?_011:  mov     eax, dword [ebp-4H]                     ; 0824 _ 8B. 45, FC
        cmp     eax, dword [ebp+20H]                    ; 0827 _ 3B. 45, 20
        jle     ?_008                                   ; 082A _ 7E, C5
        nop                                             ; 082C _ 90
        leave                                           ; 082D _ C9
        ret                                             ; 082E _ C3
; boxfill8 End of function

showFont8:; Function begin
        push    ebp                                     ; 082F _ 55
        mov     ebp, esp                                ; 0830 _ 89. E5
        sub     esp, 20                                 ; 0832 _ 83. EC, 14
        mov     eax, dword [ebp+18H]                    ; 0835 _ 8B. 45, 18
        mov     byte [ebp-14H], al                      ; 0838 _ 88. 45, EC
        mov     dword [ebp-4H], 0                       ; 083B _ C7. 45, FC, 00000000
        jmp     ?_021                                   ; 0842 _ E9, 0000016C

?_012:  mov     edx, dword [ebp-4H]                     ; 0847 _ 8B. 55, FC
        mov     eax, dword [ebp+1CH]                    ; 084A _ 8B. 45, 1C
        add     eax, edx                                ; 084D _ 01. D0
        movzx   eax, byte [eax]                         ; 084F _ 0F B6. 00
        mov     byte [ebp-5H], al                       ; 0852 _ 88. 45, FB
        cmp     byte [ebp-5H], 0                        ; 0855 _ 80. 7D, FB, 00
        jns     ?_013                                   ; 0859 _ 79, 20
        mov     edx, dword [ebp+14H]                    ; 085B _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 085E _ 8B. 45, FC
        add     eax, edx                                ; 0861 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 0863 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 0867 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 0869 _ 8B. 45, 10
        add     eax, edx                                ; 086C _ 01. D0
        mov     edx, eax                                ; 086E _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 0870 _ 8B. 45, 08
        add     edx, eax                                ; 0873 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0875 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0879 _ 88. 02
?_013:  movsx   eax, byte [ebp-5H]                      ; 087B _ 0F BE. 45, FB
        and     eax, 40H                                ; 087F _ 83. E0, 40
        test    eax, eax                                ; 0882 _ 85. C0
        jz      ?_014                                   ; 0884 _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 0886 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 0889 _ 8B. 45, FC
        add     eax, edx                                ; 088C _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 088E _ 0F AF. 45, 0C
        mov     edx, eax                                ; 0892 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 0894 _ 8B. 45, 10
        add     eax, edx                                ; 0897 _ 01. D0
        lea     edx, [eax+1H]                           ; 0899 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 089C _ 8B. 45, 08
        add     edx, eax                                ; 089F _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 08A1 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 08A5 _ 88. 02
?_014:  movsx   eax, byte [ebp-5H]                      ; 08A7 _ 0F BE. 45, FB
        and     eax, 20H                                ; 08AB _ 83. E0, 20
        test    eax, eax                                ; 08AE _ 85. C0
        jz      ?_015                                   ; 08B0 _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 08B2 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 08B5 _ 8B. 45, FC
        add     eax, edx                                ; 08B8 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 08BA _ 0F AF. 45, 0C
        mov     edx, eax                                ; 08BE _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 08C0 _ 8B. 45, 10
        add     eax, edx                                ; 08C3 _ 01. D0
        lea     edx, [eax+2H]                           ; 08C5 _ 8D. 50, 02
        mov     eax, dword [ebp+8H]                     ; 08C8 _ 8B. 45, 08
        add     edx, eax                                ; 08CB _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 08CD _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 08D1 _ 88. 02
?_015:  movsx   eax, byte [ebp-5H]                      ; 08D3 _ 0F BE. 45, FB
        and     eax, 10H                                ; 08D7 _ 83. E0, 10
        test    eax, eax                                ; 08DA _ 85. C0
        jz      ?_016                                   ; 08DC _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 08DE _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 08E1 _ 8B. 45, FC
        add     eax, edx                                ; 08E4 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 08E6 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 08EA _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 08EC _ 8B. 45, 10
        add     eax, edx                                ; 08EF _ 01. D0
        lea     edx, [eax+3H]                           ; 08F1 _ 8D. 50, 03
        mov     eax, dword [ebp+8H]                     ; 08F4 _ 8B. 45, 08
        add     edx, eax                                ; 08F7 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 08F9 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 08FD _ 88. 02
?_016:  movsx   eax, byte [ebp-5H]                      ; 08FF _ 0F BE. 45, FB
        and     eax, 08H                                ; 0903 _ 83. E0, 08
        test    eax, eax                                ; 0906 _ 85. C0
        jz      ?_017                                   ; 0908 _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 090A _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 090D _ 8B. 45, FC
        add     eax, edx                                ; 0910 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 0912 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 0916 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 0918 _ 8B. 45, 10
        add     eax, edx                                ; 091B _ 01. D0
        lea     edx, [eax+4H]                           ; 091D _ 8D. 50, 04
        mov     eax, dword [ebp+8H]                     ; 0920 _ 8B. 45, 08
        add     edx, eax                                ; 0923 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0925 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0929 _ 88. 02
?_017:  movsx   eax, byte [ebp-5H]                      ; 092B _ 0F BE. 45, FB
        and     eax, 04H                                ; 092F _ 83. E0, 04
        test    eax, eax                                ; 0932 _ 85. C0
        jz      ?_018                                   ; 0934 _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 0936 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 0939 _ 8B. 45, FC
        add     eax, edx                                ; 093C _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 093E _ 0F AF. 45, 0C
        mov     edx, eax                                ; 0942 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 0944 _ 8B. 45, 10
        add     eax, edx                                ; 0947 _ 01. D0
        lea     edx, [eax+5H]                           ; 0949 _ 8D. 50, 05
        mov     eax, dword [ebp+8H]                     ; 094C _ 8B. 45, 08
        add     edx, eax                                ; 094F _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0951 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0955 _ 88. 02
?_018:  movsx   eax, byte [ebp-5H]                      ; 0957 _ 0F BE. 45, FB
        and     eax, 02H                                ; 095B _ 83. E0, 02
        test    eax, eax                                ; 095E _ 85. C0
        jz      ?_019                                   ; 0960 _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 0962 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 0965 _ 8B. 45, FC
        add     eax, edx                                ; 0968 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 096A _ 0F AF. 45, 0C
        mov     edx, eax                                ; 096E _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 0970 _ 8B. 45, 10
        add     eax, edx                                ; 0973 _ 01. D0
        lea     edx, [eax+6H]                           ; 0975 _ 8D. 50, 06
        mov     eax, dword [ebp+8H]                     ; 0978 _ 8B. 45, 08
        add     edx, eax                                ; 097B _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 097D _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0981 _ 88. 02
?_019:  movsx   eax, byte [ebp-5H]                      ; 0983 _ 0F BE. 45, FB
        and     eax, 01H                                ; 0987 _ 83. E0, 01
        test    eax, eax                                ; 098A _ 85. C0
        jz      ?_020                                   ; 098C _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 098E _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 0991 _ 8B. 45, FC
        add     eax, edx                                ; 0994 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 0996 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 099A _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 099C _ 8B. 45, 10
        add     eax, edx                                ; 099F _ 01. D0
        lea     edx, [eax+7H]                           ; 09A1 _ 8D. 50, 07
        mov     eax, dword [ebp+8H]                     ; 09A4 _ 8B. 45, 08
        add     edx, eax                                ; 09A7 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 09A9 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 09AD _ 88. 02
?_020:  add     dword [ebp-4H], 1                       ; 09AF _ 83. 45, FC, 01
?_021:  cmp     dword [ebp-4H], 15                      ; 09B3 _ 83. 7D, FC, 0F
        jle     ?_012                                   ; 09B7 _ 0F 8E, FFFFFE8A
        nop                                             ; 09BD _ 90
        leave                                           ; 09BE _ C9
        ret                                             ; 09BF _ C3
; showFont8 End of function

init_mouse_cursor:; Function begin
        push    ebp                                     ; 09C0 _ 55
        mov     ebp, esp                                ; 09C1 _ 89. E5
        sub     esp, 20                                 ; 09C3 _ 83. EC, 14
        mov     eax, dword [ebp+0CH]                    ; 09C6 _ 8B. 45, 0C
        mov     byte [ebp-14H], al                      ; 09C9 _ 88. 45, EC
        mov     dword [ebp-4H], 0                       ; 09CC _ C7. 45, FC, 00000000
        jmp     ?_028                                   ; 09D3 _ E9, 000000B1

?_022:  mov     dword [ebp-8H], 0                       ; 09D8 _ C7. 45, F8, 00000000
        jmp     ?_027                                   ; 09DF _ E9, 00000097

?_023:  mov     eax, dword [ebp-4H]                     ; 09E4 _ 8B. 45, FC
        shl     eax, 4                                  ; 09E7 _ C1. E0, 04
        mov     edx, eax                                ; 09EA _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 09EC _ 8B. 45, F8
        add     eax, edx                                ; 09EF _ 01. D0
        add     eax, cursor.1729                        ; 09F1 _ 05, 00000060(d)
        movzx   eax, byte [eax]                         ; 09F6 _ 0F B6. 00
        cmp     al, 42                                  ; 09F9 _ 3C, 2A
        jnz     ?_024                                   ; 09FB _ 75, 17
        mov     eax, dword [ebp-4H]                     ; 09FD _ 8B. 45, FC
        shl     eax, 4                                  ; 0A00 _ C1. E0, 04
        mov     edx, eax                                ; 0A03 _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 0A05 _ 8B. 45, F8
        add     eax, edx                                ; 0A08 _ 01. D0
        mov     edx, eax                                ; 0A0A _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 0A0C _ 8B. 45, 08
        add     eax, edx                                ; 0A0F _ 01. D0
        mov     byte [eax], 0                           ; 0A11 _ C6. 00, 00
?_024:  mov     eax, dword [ebp-4H]                     ; 0A14 _ 8B. 45, FC
        shl     eax, 4                                  ; 0A17 _ C1. E0, 04
        mov     edx, eax                                ; 0A1A _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 0A1C _ 8B. 45, F8
        add     eax, edx                                ; 0A1F _ 01. D0
        add     eax, cursor.1729                        ; 0A21 _ 05, 00000060(d)
        movzx   eax, byte [eax]                         ; 0A26 _ 0F B6. 00
        cmp     al, 79                                  ; 0A29 _ 3C, 4F
        jnz     ?_025                                   ; 0A2B _ 75, 17
        mov     eax, dword [ebp-4H]                     ; 0A2D _ 8B. 45, FC
        shl     eax, 4                                  ; 0A30 _ C1. E0, 04
        mov     edx, eax                                ; 0A33 _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 0A35 _ 8B. 45, F8
        add     eax, edx                                ; 0A38 _ 01. D0
        mov     edx, eax                                ; 0A3A _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 0A3C _ 8B. 45, 08
        add     eax, edx                                ; 0A3F _ 01. D0
        mov     byte [eax], 7                           ; 0A41 _ C6. 00, 07
?_025:  mov     eax, dword [ebp-4H]                     ; 0A44 _ 8B. 45, FC
        shl     eax, 4                                  ; 0A47 _ C1. E0, 04
        mov     edx, eax                                ; 0A4A _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 0A4C _ 8B. 45, F8
        add     eax, edx                                ; 0A4F _ 01. D0
        add     eax, cursor.1729                        ; 0A51 _ 05, 00000060(d)
        movzx   eax, byte [eax]                         ; 0A56 _ 0F B6. 00
        cmp     al, 46                                  ; 0A59 _ 3C, 2E
        jnz     ?_026                                   ; 0A5B _ 75, 1A
        mov     eax, dword [ebp-4H]                     ; 0A5D _ 8B. 45, FC
        shl     eax, 4                                  ; 0A60 _ C1. E0, 04
        mov     edx, eax                                ; 0A63 _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 0A65 _ 8B. 45, F8
        add     eax, edx                                ; 0A68 _ 01. D0
        mov     edx, eax                                ; 0A6A _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 0A6C _ 8B. 45, 08
        add     edx, eax                                ; 0A6F _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0A71 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0A75 _ 88. 02
?_026:  add     dword [ebp-8H], 1                       ; 0A77 _ 83. 45, F8, 01
?_027:  cmp     dword [ebp-8H], 15                      ; 0A7B _ 83. 7D, F8, 0F
        jle     ?_023                                   ; 0A7F _ 0F 8E, FFFFFF5F
        add     dword [ebp-4H], 1                       ; 0A85 _ 83. 45, FC, 01
?_028:  cmp     dword [ebp-4H], 15                      ; 0A89 _ 83. 7D, FC, 0F
        jle     ?_022                                   ; 0A8D _ 0F 8E, FFFFFF45
        nop                                             ; 0A93 _ 90
        leave                                           ; 0A94 _ C9
        ret                                             ; 0A95 _ C3
; init_mouse_cursor End of function

putblock:; Function begin
        push    ebp                                     ; 0A96 _ 55
        mov     ebp, esp                                ; 0A97 _ 89. E5
        push    ebx                                     ; 0A99 _ 53
        sub     esp, 16                                 ; 0A9A _ 83. EC, 10
        mov     dword [ebp-8H], 0                       ; 0A9D _ C7. 45, F8, 00000000
        jmp     ?_032                                   ; 0AA4 _ EB, 50

?_029:  mov     dword [ebp-0CH], 0                      ; 0AA6 _ C7. 45, F4, 00000000
        jmp     ?_031                                   ; 0AAD _ EB, 3B

?_030:  mov     eax, dword [ebp-8H]                     ; 0AAF _ 8B. 45, F8
        imul    eax, dword [ebp+24H]                    ; 0AB2 _ 0F AF. 45, 24
        mov     edx, eax                                ; 0AB6 _ 89. C2
        mov     eax, dword [ebp-0CH]                    ; 0AB8 _ 8B. 45, F4
        add     eax, edx                                ; 0ABB _ 01. D0
        mov     edx, eax                                ; 0ABD _ 89. C2
        mov     eax, dword [ebp+20H]                    ; 0ABF _ 8B. 45, 20
        add     eax, edx                                ; 0AC2 _ 01. D0
        mov     ecx, dword [ebp+1CH]                    ; 0AC4 _ 8B. 4D, 1C
        mov     edx, dword [ebp-8H]                     ; 0AC7 _ 8B. 55, F8
        add     edx, ecx                                ; 0ACA _ 01. CA
        imul    edx, dword [ebp+0CH]                    ; 0ACC _ 0F AF. 55, 0C
        mov     ebx, dword [ebp+18H]                    ; 0AD0 _ 8B. 5D, 18
        mov     ecx, dword [ebp-0CH]                    ; 0AD3 _ 8B. 4D, F4
        add     ecx, ebx                                ; 0AD6 _ 01. D9
        add     edx, ecx                                ; 0AD8 _ 01. CA
        mov     ecx, edx                                ; 0ADA _ 89. D1
        mov     edx, dword [ebp+8H]                     ; 0ADC _ 8B. 55, 08
        add     edx, ecx                                ; 0ADF _ 01. CA
        movzx   eax, byte [eax]                         ; 0AE1 _ 0F B6. 00
        mov     byte [edx], al                          ; 0AE4 _ 88. 02
        add     dword [ebp-0CH], 1                      ; 0AE6 _ 83. 45, F4, 01
?_031:  mov     eax, dword [ebp-0CH]                    ; 0AEA _ 8B. 45, F4
        cmp     eax, dword [ebp+10H]                    ; 0AED _ 3B. 45, 10
        jl      ?_030                                   ; 0AF0 _ 7C, BD
        add     dword [ebp-8H], 1                       ; 0AF2 _ 83. 45, F8, 01
?_032:  mov     eax, dword [ebp-8H]                     ; 0AF6 _ 8B. 45, F8
        cmp     eax, dword [ebp+14H]                    ; 0AF9 _ 3B. 45, 14
        jl      ?_029                                   ; 0AFC _ 7C, A8
        nop                                             ; 0AFE _ 90
        add     esp, 16                                 ; 0AFF _ 83. C4, 10
        pop     ebx                                     ; 0B02 _ 5B
        pop     ebp                                     ; 0B03 _ 5D
        ret                                             ; 0B04 _ C3
; putblock End of function

intHandlerFromC:; Function begin
        push    ebp                                     ; 0B05 _ 55
        mov     ebp, esp                                ; 0B06 _ 89. E5
        sub     esp, 24                                 ; 0B08 _ 83. EC, 18
        mov     eax, dword [bootInfo]                   ; 0B0B _ A1, 00000000(d)
        mov     dword [ebp-14H], eax                    ; 0B10 _ 89. 45, EC
        movzx   eax, word [?_140]                       ; 0B13 _ 0F B7. 05, 00000004(d)
        cwde                                            ; 0B1A _ 98
        mov     dword [ebp-10H], eax                    ; 0B1B _ 89. 45, F0
        movzx   eax, word [?_141]                       ; 0B1E _ 0F B7. 05, 00000006(d)
        cwde                                            ; 0B25 _ 98
        mov     dword [ebp-0CH], eax                    ; 0B26 _ 89. 45, F4
        sub     esp, 8                                  ; 0B29 _ 83. EC, 08
        push    32                                      ; 0B2C _ 6A, 20
        push    32                                      ; 0B2E _ 6A, 20
        call    io_out8                                 ; 0B30 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0B35 _ 83. C4, 10
        mov     byte [ebp-15H], 0                       ; 0B38 _ C6. 45, EB, 00
        sub     esp, 12                                 ; 0B3C _ 83. EC, 0C
        push    96                                      ; 0B3F _ 6A, 60
        call    io_in8                                  ; 0B41 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0B46 _ 83. C4, 10
        mov     byte [ebp-15H], al                      ; 0B49 _ 88. 45, EB
        movzx   eax, byte [ebp-15H]                     ; 0B4C _ 0F B6. 45, EB
        sub     esp, 8                                  ; 0B50 _ 83. EC, 08
        push    eax                                     ; 0B53 _ 50
        push    keyInfo                                 ; 0B54 _ 68, 00000008(d)
        call    fifo8_put                               ; 0B59 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0B5E _ 83. C4, 10
        nop                                             ; 0B61 _ 90
        leave                                           ; 0B62 _ C9
        ret                                             ; 0B63 _ C3
; intHandlerFromC End of function

charToHex:; Function begin
        push    ebp                                     ; 0B64 _ 55
        mov     ebp, esp                                ; 0B65 _ 89. E5
        sub     esp, 40                                 ; 0B67 _ 83. EC, 28
        mov     eax, dword [ebp+8H]                     ; 0B6A _ 8B. 45, 08
        mov     byte [ebp-1CH], al                      ; 0B6D _ 88. 45, E4
        movzx   eax, byte [ebp-1CH]                     ; 0B70 _ 0F B6. 45, E4
        and     eax, 0FH                                ; 0B74 _ 83. E0, 0F
        mov     byte [ebp-9H], al                       ; 0B77 _ 88. 45, F7
        movsx   eax, byte [ebp-9H]                      ; 0B7A _ 0F BE. 45, F7
        sub     esp, 12                                 ; 0B7E _ 83. EC, 0C
        push    eax                                     ; 0B81 _ 50
        call    charToVal                               ; 0B82 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0B87 _ 83. C4, 10
        mov     byte [?_139], al                        ; 0B8A _ A2, 00000003(d)
        movzx   eax, byte [ebp-1CH]                     ; 0B8F _ 0F B6. 45, E4
        shr     al, 4                                   ; 0B93 _ C0. E8, 04
        mov     byte [ebp-1CH], al                      ; 0B96 _ 88. 45, E4
        movzx   eax, byte [ebp-1CH]                     ; 0B99 _ 0F B6. 45, E4
        movsx   eax, al                                 ; 0B9D _ 0F BE. C0
        sub     esp, 12                                 ; 0BA0 _ 83. EC, 0C
        push    eax                                     ; 0BA3 _ 50
        call    charToVal                               ; 0BA4 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0BA9 _ 83. C4, 10
        mov     byte [?_138], al                        ; 0BAC _ A2, 00000002(d)
        mov     eax, keyVal                             ; 0BB1 _ B8, 00000000(d)
        leave                                           ; 0BB6 _ C9
        ret                                             ; 0BB7 _ C3
; charToHex End of function

charToVal:; Function begin
        push    ebp                                     ; 0BB8 _ 55
        mov     ebp, esp                                ; 0BB9 _ 89. E5
        sub     esp, 4                                  ; 0BBB _ 83. EC, 04
        mov     eax, dword [ebp+8H]                     ; 0BBE _ 8B. 45, 08
        mov     byte [ebp-4H], al                       ; 0BC1 _ 88. 45, FC
        cmp     byte [ebp-4H], 9                        ; 0BC4 _ 80. 7D, FC, 09
        jle     ?_033                                   ; 0BC8 _ 7E, 09
        movzx   eax, byte [ebp-4H]                      ; 0BCA _ 0F B6. 45, FC
        add     eax, 55                                 ; 0BCE _ 83. C0, 37
        jmp     ?_034                                   ; 0BD1 _ EB, 07

?_033:  movzx   eax, byte [ebp-4H]                      ; 0BD3 _ 0F B6. 45, FC
        add     eax, 48                                 ; 0BD7 _ 83. C0, 30
?_034:  leave                                           ; 0BDA _ C9
        ret                                             ; 0BDB _ C3
; charToVal End of function

intToHexStr:; Function begin
        push    ebp                                     ; 0BDC _ 55
        mov     ebp, esp                                ; 0BDD _ 89. E5
        sub     esp, 16                                 ; 0BDF _ 83. EC, 10
        mov     byte [str.1772], 48                     ; 0BE2 _ C6. 05, 00000200(d), 30
        mov     byte [?_142], 120                       ; 0BE9 _ C6. 05, 00000201(d), 78
        mov     byte [?_143], 0                         ; 0BF0 _ C6. 05, 0000020A(d), 00
        mov     dword [ebp-0CH], 2                      ; 0BF7 _ C7. 45, F4, 00000002
        jmp     ?_036                                   ; 0BFE _ EB, 0F

?_035:  mov     eax, dword [ebp-0CH]                    ; 0C00 _ 8B. 45, F4
        add     eax, str.1772                           ; 0C03 _ 05, 00000200(d)
        mov     byte [eax], 48                          ; 0C08 _ C6. 00, 30
        add     dword [ebp-0CH], 1                      ; 0C0B _ 83. 45, F4, 01
?_036:  cmp     dword [ebp-0CH], 9                      ; 0C0F _ 83. 7D, F4, 09
        jle     ?_035                                   ; 0C13 _ 7E, EB
        mov     dword [ebp-8H], 9                       ; 0C15 _ C7. 45, F8, 00000009
        jmp     ?_039                                   ; 0C1C _ EB, 48

?_037:  mov     eax, dword [ebp+8H]                     ; 0C1E _ 8B. 45, 08
        and     eax, 0FH                                ; 0C21 _ 83. E0, 0F
        mov     dword [ebp-4H], eax                     ; 0C24 _ 89. 45, FC
        mov     eax, dword [ebp+8H]                     ; 0C27 _ 8B. 45, 08
        shr     eax, 4                                  ; 0C2A _ C1. E8, 04
        mov     dword [ebp+8H], eax                     ; 0C2D _ 89. 45, 08
        cmp     dword [ebp-4H], 9                       ; 0C30 _ 83. 7D, FC, 09
        jle     ?_038                                   ; 0C34 _ 7E, 19
        mov     eax, dword [ebp-4H]                     ; 0C36 _ 8B. 45, FC
        lea     ecx, [eax+37H]                          ; 0C39 _ 8D. 48, 37
        mov     eax, dword [ebp-8H]                     ; 0C3C _ 8B. 45, F8
        lea     edx, [eax-1H]                           ; 0C3F _ 8D. 50, FF
        mov     dword [ebp-8H], edx                     ; 0C42 _ 89. 55, F8
        mov     edx, ecx                                ; 0C45 _ 89. CA
        mov     byte [str.1772+eax], dl                 ; 0C47 _ 88. 90, 00000200(d)
        jmp     ?_039                                   ; 0C4D _ EB, 17

?_038:  mov     eax, dword [ebp-4H]                     ; 0C4F _ 8B. 45, FC
        lea     ecx, [eax+30H]                          ; 0C52 _ 8D. 48, 30
        mov     eax, dword [ebp-8H]                     ; 0C55 _ 8B. 45, F8
        lea     edx, [eax-1H]                           ; 0C58 _ 8D. 50, FF
        mov     dword [ebp-8H], edx                     ; 0C5B _ 89. 55, F8
        mov     edx, ecx                                ; 0C5E _ 89. CA
        mov     byte [str.1772+eax], dl                 ; 0C60 _ 88. 90, 00000200(d)
?_039:  cmp     dword [ebp-8H], 1                       ; 0C66 _ 83. 7D, F8, 01
        jle     ?_040                                   ; 0C6A _ 7E, 06
        cmp     dword [ebp+8H], 0                       ; 0C6C _ 83. 7D, 08, 00
        jnz     ?_037                                   ; 0C70 _ 75, AC
?_040:  mov     eax, str.1772                           ; 0C72 _ B8, 00000200(d)
        leave                                           ; 0C77 _ C9
        ret                                             ; 0C78 _ C3
; intToHexStr End of function

wait_KBC_sendReady:; Function begin
        push    ebp                                     ; 0C79 _ 55
        mov     ebp, esp                                ; 0C7A _ 89. E5
        sub     esp, 8                                  ; 0C7C _ 83. EC, 08
?_041:  sub     esp, 12                                 ; 0C7F _ 83. EC, 0C
        push    100                                     ; 0C82 _ 6A, 64
        call    io_in8                                  ; 0C84 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0C89 _ 83. C4, 10
        movsx   eax, al                                 ; 0C8C _ 0F BE. C0
        and     eax, 02H                                ; 0C8F _ 83. E0, 02
        test    eax, eax                                ; 0C92 _ 85. C0
        jz      ?_042                                   ; 0C94 _ 74, 02
        jmp     ?_041                                   ; 0C96 _ EB, E7

?_042:  nop                                             ; 0C98 _ 90
        nop                                             ; 0C99 _ 90
        leave                                           ; 0C9A _ C9
        ret                                             ; 0C9B _ C3
; wait_KBC_sendReady End of function

init_keyboard:; Function begin
        push    ebp                                     ; 0C9C _ 55
        mov     ebp, esp                                ; 0C9D _ 89. E5
        sub     esp, 8                                  ; 0C9F _ 83. EC, 08
        call    wait_KBC_sendReady                      ; 0CA2 _ E8, FFFFFFFC(rel)
        sub     esp, 8                                  ; 0CA7 _ 83. EC, 08
        push    96                                      ; 0CAA _ 6A, 60
        push    100                                     ; 0CAC _ 6A, 64
        call    io_out8                                 ; 0CAE _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0CB3 _ 83. C4, 10
        call    wait_KBC_sendReady                      ; 0CB6 _ E8, FFFFFFFC(rel)
        sub     esp, 8                                  ; 0CBB _ 83. EC, 08
        push    71                                      ; 0CBE _ 6A, 47
        push    96                                      ; 0CC0 _ 6A, 60
        call    io_out8                                 ; 0CC2 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0CC7 _ 83. C4, 10
        nop                                             ; 0CCA _ 90
        leave                                           ; 0CCB _ C9
        ret                                             ; 0CCC _ C3
; init_keyboard End of function

enable_mouse:; Function begin
        push    ebp                                     ; 0CCD _ 55
        mov     ebp, esp                                ; 0CCE _ 89. E5
        sub     esp, 8                                  ; 0CD0 _ 83. EC, 08
        call    wait_KBC_sendReady                      ; 0CD3 _ E8, FFFFFFFC(rel)
        sub     esp, 8                                  ; 0CD8 _ 83. EC, 08
        push    212                                     ; 0CDB _ 68, 000000D4
        push    100                                     ; 0CE0 _ 6A, 64
        call    io_out8                                 ; 0CE2 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0CE7 _ 83. C4, 10
        call    wait_KBC_sendReady                      ; 0CEA _ E8, FFFFFFFC(rel)
        sub     esp, 8                                  ; 0CEF _ 83. EC, 08
        push    244                                     ; 0CF2 _ 68, 000000F4
        push    96                                      ; 0CF7 _ 6A, 60
        call    io_out8                                 ; 0CF9 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0CFE _ 83. C4, 10
        mov     eax, dword [ebp+8H]                     ; 0D01 _ 8B. 45, 08
        mov     byte [eax+3H], 0                        ; 0D04 _ C6. 40, 03, 00
        nop                                             ; 0D08 _ 90
        leave                                           ; 0D09 _ C9
        ret                                             ; 0D0A _ C3
; enable_mouse End of function

intHandlerForMouse:; Function begin
        push    ebp                                     ; 0D0B _ 55
        mov     ebp, esp                                ; 0D0C _ 89. E5
        sub     esp, 24                                 ; 0D0E _ 83. EC, 18
        mov     byte [ebp-9H], 0                        ; 0D11 _ C6. 45, F7, 00
        sub     esp, 8                                  ; 0D15 _ 83. EC, 08
        push    32                                      ; 0D18 _ 6A, 20
        push    160                                     ; 0D1A _ 68, 000000A0
        call    io_out8                                 ; 0D1F _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0D24 _ 83. C4, 10
        sub     esp, 8                                  ; 0D27 _ 83. EC, 08
        push    32                                      ; 0D2A _ 6A, 20
        push    32                                      ; 0D2C _ 6A, 20
        call    io_out8                                 ; 0D2E _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0D33 _ 83. C4, 10
        sub     esp, 12                                 ; 0D36 _ 83. EC, 0C
        push    96                                      ; 0D39 _ 6A, 60
        call    io_in8                                  ; 0D3B _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0D40 _ 83. C4, 10
        mov     byte [ebp-9H], al                       ; 0D43 _ 88. 45, F7
        movzx   eax, byte [ebp-9H]                      ; 0D46 _ 0F B6. 45, F7
        sub     esp, 8                                  ; 0D4A _ 83. EC, 08
        push    eax                                     ; 0D4D _ 50
        push    mouseInfo                               ; 0D4E _ 68, 00000020(d)
        call    fifo8_put                               ; 0D53 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0D58 _ 83. C4, 10
        nop                                             ; 0D5B _ 90
        leave                                           ; 0D5C _ C9
        ret                                             ; 0D5D _ C3
; intHandlerForMouse End of function

fifo8_init:; Function begin
        push    ebp                                     ; 0D5E _ 55
        mov     ebp, esp                                ; 0D5F _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 0D61 _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 0D64 _ 8B. 55, 0C
        mov     dword [eax+0CH], edx                    ; 0D67 _ 89. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 0D6A _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 0D6D _ 8B. 55, 10
        mov     dword [eax], edx                        ; 0D70 _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 0D72 _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 0D75 _ 8B. 55, 0C
        mov     dword [eax+10H], edx                    ; 0D78 _ 89. 50, 10
        mov     eax, dword [ebp+8H]                     ; 0D7B _ 8B. 45, 08
        mov     dword [eax+4H], 0                       ; 0D7E _ C7. 40, 04, 00000000
        mov     eax, dword [ebp+8H]                     ; 0D85 _ 8B. 45, 08
        mov     dword [eax+8H], 0                       ; 0D88 _ C7. 40, 08, 00000000
        mov     eax, dword [ebp+8H]                     ; 0D8F _ 8B. 45, 08
        mov     dword [eax+14H], 0                      ; 0D92 _ C7. 40, 14, 00000000
        nop                                             ; 0D99 _ 90
        pop     ebp                                     ; 0D9A _ 5D
        ret                                             ; 0D9B _ C3
; fifo8_init End of function

fifo8_put:; Function begin
        push    ebp                                     ; 0D9C _ 55
        mov     ebp, esp                                ; 0D9D _ 89. E5
        sub     esp, 4                                  ; 0D9F _ 83. EC, 04
        mov     eax, dword [ebp+0CH]                    ; 0DA2 _ 8B. 45, 0C
        mov     byte [ebp-4H], al                       ; 0DA5 _ 88. 45, FC
        mov     eax, dword [ebp+8H]                     ; 0DA8 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 0DAB _ 8B. 40, 10
        test    eax, eax                                ; 0DAE _ 85. C0
        jnz     ?_043                                   ; 0DB0 _ 75, 18
        mov     eax, dword [ebp+8H]                     ; 0DB2 _ 8B. 45, 08
        mov     eax, dword [eax+14H]                    ; 0DB5 _ 8B. 40, 14
        or      eax, 01H                                ; 0DB8 _ 83. C8, 01
        mov     edx, eax                                ; 0DBB _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 0DBD _ 8B. 45, 08
        mov     dword [eax+14H], edx                    ; 0DC0 _ 89. 50, 14
        mov     eax, 4294967295                         ; 0DC3 _ B8, FFFFFFFF
        jmp     ?_045                                   ; 0DC8 _ EB, 50

?_043:  mov     eax, dword [ebp+8H]                     ; 0DCA _ 8B. 45, 08
        mov     edx, dword [eax]                        ; 0DCD _ 8B. 10
        mov     eax, dword [ebp+8H]                     ; 0DCF _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 0DD2 _ 8B. 40, 08
        add     edx, eax                                ; 0DD5 _ 01. C2
        movzx   eax, byte [ebp-4H]                      ; 0DD7 _ 0F B6. 45, FC
        mov     byte [edx], al                          ; 0DDB _ 88. 02
        mov     eax, dword [ebp+8H]                     ; 0DDD _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 0DE0 _ 8B. 40, 08
        lea     edx, [eax+1H]                           ; 0DE3 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 0DE6 _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 0DE9 _ 89. 50, 08
        mov     eax, dword [ebp+8H]                     ; 0DEC _ 8B. 45, 08
        mov     edx, dword [eax+8H]                     ; 0DEF _ 8B. 50, 08
        mov     eax, dword [ebp+8H]                     ; 0DF2 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 0DF5 _ 8B. 40, 0C
        cmp     edx, eax                                ; 0DF8 _ 39. C2
        jnz     ?_044                                   ; 0DFA _ 75, 0A
        mov     eax, dword [ebp+8H]                     ; 0DFC _ 8B. 45, 08
        mov     dword [eax+8H], 0                       ; 0DFF _ C7. 40, 08, 00000000
?_044:  mov     eax, dword [ebp+8H]                     ; 0E06 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 0E09 _ 8B. 40, 10
        lea     edx, [eax-1H]                           ; 0E0C _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 0E0F _ 8B. 45, 08
        mov     dword [eax+10H], edx                    ; 0E12 _ 89. 50, 10
        mov     eax, 1                                  ; 0E15 _ B8, 00000001
?_045:  leave                                           ; 0E1A _ C9
        ret                                             ; 0E1B _ C3
; fifo8_put End of function

fifo8_get:; Function begin
        push    ebp                                     ; 0E1C _ 55
        mov     ebp, esp                                ; 0E1D _ 89. E5
        sub     esp, 16                                 ; 0E1F _ 83. EC, 10
        mov     eax, dword [ebp+8H]                     ; 0E22 _ 8B. 45, 08
        mov     edx, dword [eax+10H]                    ; 0E25 _ 8B. 50, 10
        mov     eax, dword [ebp+8H]                     ; 0E28 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 0E2B _ 8B. 40, 0C
        cmp     edx, eax                                ; 0E2E _ 39. C2
        jnz     ?_046                                   ; 0E30 _ 75, 07
        mov     eax, 4294967295                         ; 0E32 _ B8, FFFFFFFF
        jmp     ?_048                                   ; 0E37 _ EB, 51

?_046:  mov     eax, dword [ebp+8H]                     ; 0E39 _ 8B. 45, 08
        mov     edx, dword [eax]                        ; 0E3C _ 8B. 10
        mov     eax, dword [ebp+8H]                     ; 0E3E _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 0E41 _ 8B. 40, 04
        add     eax, edx                                ; 0E44 _ 01. D0
        movzx   eax, byte [eax]                         ; 0E46 _ 0F B6. 00
        movzx   eax, al                                 ; 0E49 _ 0F B6. C0
        mov     dword [ebp-4H], eax                     ; 0E4C _ 89. 45, FC
        mov     eax, dword [ebp+8H]                     ; 0E4F _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 0E52 _ 8B. 40, 04
        lea     edx, [eax+1H]                           ; 0E55 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 0E58 _ 8B. 45, 08
        mov     dword [eax+4H], edx                     ; 0E5B _ 89. 50, 04
        mov     eax, dword [ebp+8H]                     ; 0E5E _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 0E61 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 0E64 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 0E67 _ 8B. 40, 0C
        cmp     edx, eax                                ; 0E6A _ 39. C2
        jnz     ?_047                                   ; 0E6C _ 75, 0A
        mov     eax, dword [ebp+8H]                     ; 0E6E _ 8B. 45, 08
        mov     dword [eax+4H], 0                       ; 0E71 _ C7. 40, 04, 00000000
?_047:  mov     eax, dword [ebp+8H]                     ; 0E78 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 0E7B _ 8B. 40, 10
        lea     edx, [eax+1H]                           ; 0E7E _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 0E81 _ 8B. 45, 08
        mov     dword [eax+10H], edx                    ; 0E84 _ 89. 50, 10
        mov     eax, dword [ebp-4H]                     ; 0E87 _ 8B. 45, FC
?_048:  leave                                           ; 0E8A _ C9
        ret                                             ; 0E8B _ C3
; fifo8_get End of function

fifo8_status:; Function begin
        push    ebp                                     ; 0E8C _ 55
        mov     ebp, esp                                ; 0E8D _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 0E8F _ 8B. 45, 08
        mov     edx, dword [eax+0CH]                    ; 0E92 _ 8B. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 0E95 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 0E98 _ 8B. 40, 10
        sub     edx, eax                                ; 0E9B _ 29. C2
        mov     eax, edx                                ; 0E9D _ 89. D0
        pop     ebp                                     ; 0E9F _ 5D
        ret                                             ; 0EA0 _ C3
; fifo8_status End of function

showKeyboardInfo:; Function begin
        push    ebp                                     ; 0EA1 _ 55
        mov     ebp, esp                                ; 0EA2 _ 89. E5
        sub     esp, 40                                 ; 0EA4 _ 83. EC, 28
        call    io_sti                                  ; 0EA7 _ E8, FFFFFFFC(rel)
        mov     eax, dword [bootInfo]                   ; 0EAC _ A1, 00000000(d)
        mov     dword [ebp-18H], eax                    ; 0EB1 _ 89. 45, E8
        movzx   eax, word [?_140]                       ; 0EB4 _ 0F B7. 05, 00000004(d)
        cwde                                            ; 0EBB _ 98
        mov     dword [ebp-14H], eax                    ; 0EBC _ 89. 45, EC
        movzx   eax, word [?_141]                       ; 0EBF _ 0F B7. 05, 00000006(d)
        cwde                                            ; 0EC6 _ 98
        mov     dword [ebp-10H], eax                    ; 0EC7 _ 89. 45, F0
        mov     byte [ebp-19H], 0                       ; 0ECA _ C6. 45, E7, 00
        sub     esp, 12                                 ; 0ECE _ 83. EC, 0C
        push    keyInfo                                 ; 0ED1 _ 68, 00000008(d)
        call    fifo8_get                               ; 0ED6 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0EDB _ 83. C4, 10
        mov     byte [ebp-19H], al                      ; 0EDE _ 88. 45, E7
        movzx   eax, byte [ebp-19H]                     ; 0EE1 _ 0F B6. 45, E7
        sub     esp, 12                                 ; 0EE5 _ 83. EC, 0C
        push    eax                                     ; 0EE8 _ 50
        call    charToHex                               ; 0EE9 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0EEE _ 83. C4, 10
        mov     dword [ebp-0CH], eax                    ; 0EF1 _ 89. 45, F4
        mov     edx, dword [line.1821]                  ; 0EF4 _ 8B. 15, 0000020C(d)
        mov     eax, dword [pos.1820]                   ; 0EFA _ A1, 00000210(d)
        sub     esp, 8                                  ; 0EFF _ 83. EC, 08
        push    dword [ebp-0CH]                         ; 0F02 _ FF. 75, F4
        push    7                                       ; 0F05 _ 6A, 07
        push    edx                                     ; 0F07 _ 52
        push    eax                                     ; 0F08 _ 50
        push    dword [ebp+0CH]                         ; 0F09 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 0F0C _ FF. 75, 08
        call    showString                              ; 0F0F _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0F14 _ 83. C4, 20
        mov     eax, dword [pos.1820]                   ; 0F17 _ A1, 00000210(d)
        add     eax, 32                                 ; 0F1C _ 83. C0, 20
        mov     dword [pos.1820], eax                   ; 0F1F _ A3, 00000210(d)
        mov     eax, dword [pos.1820]                   ; 0F24 _ A1, 00000210(d)
        cmp     dword [ebp-14H], eax                    ; 0F29 _ 39. 45, EC
        jnz     ?_051                                   ; 0F2C _ 75, 28
        mov     eax, dword [line.1821]                  ; 0F2E _ A1, 0000020C(d)
        cmp     dword [ebp-10H], eax                    ; 0F33 _ 39. 45, F0
        jz      ?_049                                   ; 0F36 _ 74, 0A
        mov     eax, dword [line.1821]                  ; 0F38 _ A1, 0000020C(d)
        add     eax, 16                                 ; 0F3D _ 83. C0, 10
        jmp     ?_050                                   ; 0F40 _ EB, 05

?_049:  mov     eax, 0                                  ; 0F42 _ B8, 00000000
?_050:  mov     dword [line.1821], eax                  ; 0F47 _ A3, 0000020C(d)
        mov     dword [pos.1820], 0                     ; 0F4C _ C7. 05, 00000210(d), 00000000
?_051:  nop                                             ; 0F56 _ 90
        leave                                           ; 0F57 _ C9
        ret                                             ; 0F58 _ C3
; showKeyboardInfo End of function

showMouseInfo:; Function begin
        push    ebp                                     ; 0F59 _ 55
        mov     ebp, esp                                ; 0F5A _ 89. E5
        sub     esp, 24                                 ; 0F5C _ 83. EC, 18
        call    io_sti                                  ; 0F5F _ E8, FFFFFFFC(rel)
        mov     byte [ebp-9H], 0                        ; 0F64 _ C6. 45, F7, 00
        sub     esp, 12                                 ; 0F68 _ 83. EC, 0C
        push    mouseInfo                               ; 0F6B _ 68, 00000020(d)
        call    fifo8_get                               ; 0F70 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0F75 _ 83. C4, 10
        mov     byte [ebp-9H], al                       ; 0F78 _ 88. 45, F7
        movzx   eax, byte [ebp-9H]                      ; 0F7B _ 0F B6. 45, F7
        sub     esp, 8                                  ; 0F7F _ 83. EC, 08
        push    eax                                     ; 0F82 _ 50
        push    mouse_move                              ; 0F83 _ 68, 000000E0(d)
        call    mouse_decode                            ; 0F88 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0F8D _ 83. C4, 10
        test    eax, eax                                ; 0F90 _ 85. C0
        jz      ?_052                                   ; 0F92 _ 74, 31
        sub     esp, 4                                  ; 0F94 _ 83. EC, 04
        push    mouse_move                              ; 0F97 _ 68, 000000E0(d)
        push    dword [ebp+0CH]                         ; 0F9C _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 0F9F _ FF. 75, 08
        call    computeMousePos                         ; 0FA2 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0FA7 _ 83. C4, 10
        mov     edx, dword [my]                         ; 0FAA _ 8B. 15, 000000F4(d)
        mov     eax, dword [mx]                         ; 0FB0 _ A1, 000000F0(d)
        push    edx                                     ; 0FB5 _ 52
        push    eax                                     ; 0FB6 _ 50
        push    dword [ebp+10H]                         ; 0FB7 _ FF. 75, 10
        push    dword [ebp+8H]                          ; 0FBA _ FF. 75, 08
        call    sheet_slide                             ; 0FBD _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0FC2 _ 83. C4, 10
?_052:  nop                                             ; 0FC5 _ 90
        leave                                           ; 0FC6 _ C9
        ret                                             ; 0FC7 _ C3
; showMouseInfo End of function

mouse_decode:; Function begin
        push    ebp                                     ; 0FC8 _ 55
        mov     ebp, esp                                ; 0FC9 _ 89. E5
        sub     esp, 4                                  ; 0FCB _ 83. EC, 04
        mov     eax, dword [ebp+0CH]                    ; 0FCE _ 8B. 45, 0C
        mov     byte [ebp-4H], al                       ; 0FD1 _ 88. 45, FC
        mov     eax, dword [ebp+8H]                     ; 0FD4 _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 0FD7 _ 0F B6. 40, 03
        test    al, al                                  ; 0FDB _ 84. C0
        jnz     ?_054                                   ; 0FDD _ 75, 17
        cmp     byte [ebp-4H], -6                       ; 0FDF _ 80. 7D, FC, FA
        jnz     ?_053                                   ; 0FE3 _ 75, 07
        mov     eax, dword [ebp+8H]                     ; 0FE5 _ 8B. 45, 08
        mov     byte [eax+3H], 1                        ; 0FE8 _ C6. 40, 03, 01
?_053:  mov     eax, 0                                  ; 0FEC _ B8, 00000000
        jmp     ?_061                                   ; 0FF1 _ E9, 0000010C

?_054:  mov     eax, dword [ebp+8H]                     ; 0FF6 _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 0FF9 _ 0F B6. 40, 03
        cmp     al, 1                                   ; 0FFD _ 3C, 01
        jnz     ?_056                                   ; 0FFF _ 75, 25
        movzx   eax, byte [ebp-4H]                      ; 1001 _ 0F B6. 45, FC
        or      eax, 37H                                ; 1005 _ 83. C8, 37
        cmp     al, 63                                  ; 1008 _ 3C, 3F
        jnz     ?_055                                   ; 100A _ 75, 10
        mov     eax, dword [ebp+8H]                     ; 100C _ 8B. 45, 08
        movzx   edx, byte [ebp-4H]                      ; 100F _ 0F B6. 55, FC
        mov     byte [eax], dl                          ; 1013 _ 88. 10
        mov     eax, dword [ebp+8H]                     ; 1015 _ 8B. 45, 08
        mov     byte [eax+3H], 2                        ; 1018 _ C6. 40, 03, 02
?_055:  mov     eax, 0                                  ; 101C _ B8, 00000000
        jmp     ?_061                                   ; 1021 _ E9, 000000DC

?_056:  mov     eax, dword [ebp+8H]                     ; 1026 _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 1029 _ 0F B6. 40, 03
        cmp     al, 2                                   ; 102D _ 3C, 02
        jnz     ?_057                                   ; 102F _ 75, 1B
        mov     eax, dword [ebp+8H]                     ; 1031 _ 8B. 45, 08
        movzx   edx, byte [ebp-4H]                      ; 1034 _ 0F B6. 55, FC
        mov     byte [eax+1H], dl                       ; 1038 _ 88. 50, 01
        mov     eax, dword [ebp+8H]                     ; 103B _ 8B. 45, 08
        mov     byte [eax+3H], 3                        ; 103E _ C6. 40, 03, 03
        mov     eax, 0                                  ; 1042 _ B8, 00000000
        jmp     ?_061                                   ; 1047 _ E9, 000000B6

?_057:  mov     eax, dword [ebp+8H]                     ; 104C _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 104F _ 0F B6. 40, 03
        cmp     al, 3                                   ; 1053 _ 3C, 03
        jne     ?_060                                   ; 1055 _ 0F 85, 000000A2
        mov     eax, dword [ebp+8H]                     ; 105B _ 8B. 45, 08
        movzx   edx, byte [ebp-4H]                      ; 105E _ 0F B6. 55, FC
        mov     byte [eax+2H], dl                       ; 1062 _ 88. 50, 02
        mov     eax, dword [ebp+8H]                     ; 1065 _ 8B. 45, 08
        mov     byte [eax+3H], 1                        ; 1068 _ C6. 40, 03, 01
        mov     eax, dword [ebp+8H]                     ; 106C _ 8B. 45, 08
        movzx   eax, byte [eax]                         ; 106F _ 0F B6. 00
        movzx   eax, al                                 ; 1072 _ 0F B6. C0
        and     eax, 07H                                ; 1075 _ 83. E0, 07
        mov     edx, eax                                ; 1078 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 107A _ 8B. 45, 08
        mov     dword [eax+0CH], edx                    ; 107D _ 89. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 1080 _ 8B. 45, 08
        movzx   eax, byte [eax+1H]                      ; 1083 _ 0F B6. 40, 01
        movzx   edx, al                                 ; 1087 _ 0F B6. D0
        mov     eax, dword [ebp+8H]                     ; 108A _ 8B. 45, 08
        mov     dword [eax+4H], edx                     ; 108D _ 89. 50, 04
        mov     eax, dword [ebp+8H]                     ; 1090 _ 8B. 45, 08
        movzx   eax, byte [eax+2H]                      ; 1093 _ 0F B6. 40, 02
        movzx   edx, al                                 ; 1097 _ 0F B6. D0
        mov     eax, dword [ebp+8H]                     ; 109A _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 109D _ 89. 50, 08
        mov     eax, dword [ebp+8H]                     ; 10A0 _ 8B. 45, 08
        movzx   eax, byte [eax]                         ; 10A3 _ 0F B6. 00
        movzx   eax, al                                 ; 10A6 _ 0F B6. C0
        and     eax, 10H                                ; 10A9 _ 83. E0, 10
        test    eax, eax                                ; 10AC _ 85. C0
        jz      ?_058                                   ; 10AE _ 74, 13
        mov     eax, dword [ebp+8H]                     ; 10B0 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 10B3 _ 8B. 40, 04
        or      eax, 0FFFFFF00H                         ; 10B6 _ 0D, FFFFFF00
        mov     edx, eax                                ; 10BB _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 10BD _ 8B. 45, 08
        mov     dword [eax+4H], edx                     ; 10C0 _ 89. 50, 04
?_058:  mov     eax, dword [ebp+8H]                     ; 10C3 _ 8B. 45, 08
        movzx   eax, byte [eax]                         ; 10C6 _ 0F B6. 00
        movzx   eax, al                                 ; 10C9 _ 0F B6. C0
        and     eax, 20H                                ; 10CC _ 83. E0, 20
        test    eax, eax                                ; 10CF _ 85. C0
        jz      ?_059                                   ; 10D1 _ 74, 13
        mov     eax, dword [ebp+8H]                     ; 10D3 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 10D6 _ 8B. 40, 08
        or      eax, 0FFFFFF00H                         ; 10D9 _ 0D, FFFFFF00
        mov     edx, eax                                ; 10DE _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 10E0 _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 10E3 _ 89. 50, 08
?_059:  mov     eax, dword [ebp+8H]                     ; 10E6 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 10E9 _ 8B. 40, 08
        neg     eax                                     ; 10EC _ F7. D8
        mov     edx, eax                                ; 10EE _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 10F0 _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 10F3 _ 89. 50, 08
        mov     eax, 1                                  ; 10F6 _ B8, 00000001
        jmp     ?_061                                   ; 10FB _ EB, 05

?_060:  mov     eax, 4294967295                         ; 10FD _ B8, FFFFFFFF
?_061:  leave                                           ; 1102 _ C9
        ret                                             ; 1103 _ C3
; mouse_decode End of function

computeMousePos:; Function begin
        push    ebp                                     ; 1104 _ 55
        mov     ebp, esp                                ; 1105 _ 89. E5
        sub     esp, 24                                 ; 1107 _ 83. EC, 18
        movzx   eax, word [?_140]                       ; 110A _ 0F B7. 05, 00000004(d)
        cwde                                            ; 1111 _ 98
        mov     dword [ebp-10H], eax                    ; 1112 _ 89. 45, F0
        movzx   eax, word [?_141]                       ; 1115 _ 0F B7. 05, 00000006(d)
        cwde                                            ; 111C _ 98
        mov     dword [ebp-0CH], eax                    ; 111D _ 89. 45, F4
        mov     eax, dword [ebp+10H]                    ; 1120 _ 8B. 45, 10
        mov     edx, dword [eax+4H]                     ; 1123 _ 8B. 50, 04
        mov     eax, dword [mx]                         ; 1126 _ A1, 000000F0(d)
        add     eax, edx                                ; 112B _ 01. D0
        mov     dword [mx], eax                         ; 112D _ A3, 000000F0(d)
        mov     eax, dword [ebp+10H]                    ; 1132 _ 8B. 45, 10
        mov     edx, dword [eax+8H]                     ; 1135 _ 8B. 50, 08
        mov     eax, dword [my]                         ; 1138 _ A1, 000000F4(d)
        add     eax, edx                                ; 113D _ 01. D0
        mov     dword [my], eax                         ; 113F _ A3, 000000F4(d)
        mov     eax, dword [mx]                         ; 1144 _ A1, 000000F0(d)
        test    eax, eax                                ; 1149 _ 85. C0
        jns     ?_062                                   ; 114B _ 79, 0A
        mov     dword [mx], 0                           ; 114D _ C7. 05, 000000F0(d), 00000000
?_062:  mov     eax, dword [my]                         ; 1157 _ A1, 000000F4(d)
        test    eax, eax                                ; 115C _ 85. C0
        jns     ?_063                                   ; 115E _ 79, 0A
        mov     dword [my], 0                           ; 1160 _ C7. 05, 000000F4(d), 00000000
?_063:  mov     eax, dword [ebp-10H]                    ; 116A _ 8B. 45, F0
        lea     edx, [eax-9H]                           ; 116D _ 8D. 50, F7
        mov     eax, dword [mx]                         ; 1170 _ A1, 000000F0(d)
        cmp     edx, eax                                ; 1175 _ 39. C2
        jge     ?_064                                   ; 1177 _ 7D, 0B
        mov     eax, dword [ebp-10H]                    ; 1179 _ 8B. 45, F0
        sub     eax, 9                                  ; 117C _ 83. E8, 09
        mov     dword [mx], eax                         ; 117F _ A3, 000000F0(d)
?_064:  mov     eax, dword [ebp-0CH]                    ; 1184 _ 8B. 45, F4
        lea     edx, [eax-1H]                           ; 1187 _ 8D. 50, FF
        mov     eax, dword [my]                         ; 118A _ A1, 000000F4(d)
        cmp     edx, eax                                ; 118F _ 39. C2
        jge     ?_065                                   ; 1191 _ 7D, 0B
        mov     eax, dword [ebp-0CH]                    ; 1193 _ 8B. 45, F4
        sub     eax, 1                                  ; 1196 _ 83. E8, 01
        mov     dword [my], eax                         ; 1199 _ A3, 000000F4(d)
?_065:  mov     eax, dword [buf_back]                   ; 119E _ A1, 000000F8(d)
        push    15                                      ; 11A3 _ 6A, 0F
        push    79                                      ; 11A5 _ 6A, 4F
        push    0                                       ; 11A7 _ 6A, 00
        push    0                                       ; 11A9 _ 6A, 00
        push    14                                      ; 11AB _ 6A, 0E
        push    dword [ebp-10H]                         ; 11AD _ FF. 75, F0
        push    eax                                     ; 11B0 _ 50
        call    boxfill8                                ; 11B1 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 11B6 _ 83. C4, 1C
        sub     esp, 8                                  ; 11B9 _ 83. EC, 08
        push    ?_129                                   ; 11BC _ 68, 0000001C(d)
        push    3                                       ; 11C1 _ 6A, 03
        push    0                                       ; 11C3 _ 6A, 00
        push    0                                       ; 11C5 _ 6A, 00
        push    dword [ebp+0CH]                         ; 11C7 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 11CA _ FF. 75, 08
        call    showString                              ; 11CD _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 11D2 _ 83. C4, 20
        nop                                             ; 11D5 _ 90
        leave                                           ; 11D6 _ C9
        ret                                             ; 11D7 _ C3
; computeMousePos End of function

showMemInfo:; Function begin
        push    ebp                                     ; 11D8 _ 55
        mov     ebp, esp                                ; 11D9 _ 89. E5
        sub     esp, 56                                 ; 11DB _ 83. EC, 38
        mov     dword [ebp-30H], 0                      ; 11DE _ C7. 45, D0, 00000000
        mov     dword [ebp-2CH], 0                      ; 11E5 _ C7. 45, D4, 00000000
        mov     dword [ebp-28H], 112                    ; 11EC _ C7. 45, D8, 00000070
        mov     dword [ebp-24H], 80                     ; 11F3 _ C7. 45, DC, 00000050
        push    100                                     ; 11FA _ 6A, 64
        push    dword [ebp+1CH]                         ; 11FC _ FF. 75, 1C
        push    0                                       ; 11FF _ 6A, 00
        push    0                                       ; 1201 _ 6A, 00
        push    14                                      ; 1203 _ 6A, 0E
        push    dword [ebp+1CH]                         ; 1205 _ FF. 75, 1C
        push    dword [ebp+14H]                         ; 1208 _ FF. 75, 14
        call    boxfill8                                ; 120B _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 1210 _ 83. C4, 1C
        mov     eax, dword [ebp+20H]                    ; 1213 _ 8B. 45, 20
        movsx   eax, al                                 ; 1216 _ 0F BE. C0
        sub     esp, 8                                  ; 1219 _ 83. EC, 08
        push    ?_130                                   ; 121C _ 68, 00000033(d)
        push    eax                                     ; 1221 _ 50
        push    dword [ebp-2CH]                         ; 1222 _ FF. 75, D4
        push    dword [ebp-30H]                         ; 1225 _ FF. 75, D0
        push    dword [ebp+0CH]                         ; 1228 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 122B _ FF. 75, 08
        call    showString                              ; 122E _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1233 _ 83. C4, 20
        mov     eax, dword [ebp+18H]                    ; 1236 _ 8B. 45, 18
        sub     esp, 12                                 ; 1239 _ 83. EC, 0C
        push    eax                                     ; 123C _ 50
        call    intToHexStr                             ; 123D _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1242 _ 83. C4, 10
        mov     dword [ebp-20H], eax                    ; 1245 _ 89. 45, E0
        mov     eax, dword [ebp+20H]                    ; 1248 _ 8B. 45, 20
        movsx   eax, al                                 ; 124B _ 0F BE. C0
        sub     esp, 8                                  ; 124E _ 83. EC, 08
        push    dword [ebp-20H]                         ; 1251 _ FF. 75, E0
        push    eax                                     ; 1254 _ 50
        push    dword [ebp-2CH]                         ; 1255 _ FF. 75, D4
        push    dword [ebp-28H]                         ; 1258 _ FF. 75, D8
        push    dword [ebp+0CH]                         ; 125B _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 125E _ FF. 75, 08
        call    showString                              ; 1261 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1266 _ 83. C4, 20
        add     dword [ebp-2CH], 16                     ; 1269 _ 83. 45, D4, 10
        mov     eax, dword [ebp+20H]                    ; 126D _ 8B. 45, 20
        movsx   eax, al                                 ; 1270 _ 0F BE. C0
        sub     esp, 8                                  ; 1273 _ 83. EC, 08
        push    ?_131                                   ; 1276 _ 68, 0000003D(d)
        push    eax                                     ; 127B _ 50
        push    dword [ebp-2CH]                         ; 127C _ FF. 75, D4
        push    dword [ebp-30H]                         ; 127F _ FF. 75, D0
        push    dword [ebp+0CH]                         ; 1282 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1285 _ FF. 75, 08
        call    showString                              ; 1288 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 128D _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 1290 _ 8B. 45, 10
        mov     eax, dword [eax]                        ; 1293 _ 8B. 00
        sub     esp, 12                                 ; 1295 _ 83. EC, 0C
        push    eax                                     ; 1298 _ 50
        call    intToHexStr                             ; 1299 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 129E _ 83. C4, 10
        mov     dword [ebp-1CH], eax                    ; 12A1 _ 89. 45, E4
        mov     eax, dword [ebp+20H]                    ; 12A4 _ 8B. 45, 20
        movsx   eax, al                                 ; 12A7 _ 0F BE. C0
        sub     esp, 8                                  ; 12AA _ 83. EC, 08
        push    dword [ebp-1CH]                         ; 12AD _ FF. 75, E4
        push    eax                                     ; 12B0 _ 50
        push    dword [ebp-2CH]                         ; 12B1 _ FF. 75, D4
        push    dword [ebp-28H]                         ; 12B4 _ FF. 75, D8
        push    dword [ebp+0CH]                         ; 12B7 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 12BA _ FF. 75, 08
        call    showString                              ; 12BD _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 12C2 _ 83. C4, 20
        add     dword [ebp-2CH], 16                     ; 12C5 _ 83. 45, D4, 10
        mov     eax, dword [ebp+20H]                    ; 12C9 _ 8B. 45, 20
        movsx   eax, al                                 ; 12CC _ 0F BE. C0
        sub     esp, 8                                  ; 12CF _ 83. EC, 08
        push    ?_132                                   ; 12D2 _ 68, 0000004B(d)
        push    eax                                     ; 12D7 _ 50
        push    dword [ebp-2CH]                         ; 12D8 _ FF. 75, D4
        push    dword [ebp-30H]                         ; 12DB _ FF. 75, D0
        push    dword [ebp+0CH]                         ; 12DE _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 12E1 _ FF. 75, 08
        call    showString                              ; 12E4 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 12E9 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 12EC _ 8B. 45, 10
        mov     eax, dword [eax+4H]                     ; 12EF _ 8B. 40, 04
        sub     esp, 12                                 ; 12F2 _ 83. EC, 0C
        push    eax                                     ; 12F5 _ 50
        call    intToHexStr                             ; 12F6 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 12FB _ 83. C4, 10
        mov     dword [ebp-18H], eax                    ; 12FE _ 89. 45, E8
        mov     eax, dword [ebp+20H]                    ; 1301 _ 8B. 45, 20
        movsx   eax, al                                 ; 1304 _ 0F BE. C0
        sub     esp, 8                                  ; 1307 _ 83. EC, 08
        push    dword [ebp-18H]                         ; 130A _ FF. 75, E8
        push    eax                                     ; 130D _ 50
        push    dword [ebp-2CH]                         ; 130E _ FF. 75, D4
        push    dword [ebp-28H]                         ; 1311 _ FF. 75, D8
        push    dword [ebp+0CH]                         ; 1314 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1317 _ FF. 75, 08
        call    showString                              ; 131A _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 131F _ 83. C4, 20
        add     dword [ebp-2CH], 16                     ; 1322 _ 83. 45, D4, 10
        mov     eax, dword [ebp+20H]                    ; 1326 _ 8B. 45, 20
        movsx   eax, al                                 ; 1329 _ 0F BE. C0
        sub     esp, 8                                  ; 132C _ 83. EC, 08
        push    ?_133                                   ; 132F _ 68, 0000005A(d)
        push    eax                                     ; 1334 _ 50
        push    dword [ebp-2CH]                         ; 1335 _ FF. 75, D4
        push    dword [ebp-30H]                         ; 1338 _ FF. 75, D0
        push    dword [ebp+0CH]                         ; 133B _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 133E _ FF. 75, 08
        call    showString                              ; 1341 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1346 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 1349 _ 8B. 45, 10
        mov     eax, dword [eax+8H]                     ; 134C _ 8B. 40, 08
        sub     esp, 12                                 ; 134F _ 83. EC, 0C
        push    eax                                     ; 1352 _ 50
        call    intToHexStr                             ; 1353 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1358 _ 83. C4, 10
        mov     dword [ebp-14H], eax                    ; 135B _ 89. 45, EC
        mov     eax, dword [ebp+20H]                    ; 135E _ 8B. 45, 20
        movsx   eax, al                                 ; 1361 _ 0F BE. C0
        sub     esp, 8                                  ; 1364 _ 83. EC, 08
        push    dword [ebp-14H]                         ; 1367 _ FF. 75, EC
        push    eax                                     ; 136A _ 50
        push    dword [ebp-2CH]                         ; 136B _ FF. 75, D4
        push    dword [ebp-28H]                         ; 136E _ FF. 75, D8
        push    dword [ebp+0CH]                         ; 1371 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1374 _ FF. 75, 08
        call    showString                              ; 1377 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 137C _ 83. C4, 20
        add     dword [ebp-2CH], 16                     ; 137F _ 83. 45, D4, 10
        mov     eax, dword [ebp+20H]                    ; 1383 _ 8B. 45, 20
        movsx   eax, al                                 ; 1386 _ 0F BE. C0
        sub     esp, 8                                  ; 1389 _ 83. EC, 08
        push    ?_134                                   ; 138C _ 68, 00000066(d)
        push    eax                                     ; 1391 _ 50
        push    dword [ebp-2CH]                         ; 1392 _ FF. 75, D4
        push    dword [ebp-30H]                         ; 1395 _ FF. 75, D0
        push    dword [ebp+0CH]                         ; 1398 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 139B _ FF. 75, 08
        call    showString                              ; 139E _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 13A3 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 13A6 _ 8B. 45, 10
        mov     eax, dword [eax+0CH]                    ; 13A9 _ 8B. 40, 0C
        sub     esp, 12                                 ; 13AC _ 83. EC, 0C
        push    eax                                     ; 13AF _ 50
        call    intToHexStr                             ; 13B0 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 13B5 _ 83. C4, 10
        mov     dword [ebp-10H], eax                    ; 13B8 _ 89. 45, F0
        mov     eax, dword [ebp+20H]                    ; 13BB _ 8B. 45, 20
        movsx   eax, al                                 ; 13BE _ 0F BE. C0
        sub     esp, 8                                  ; 13C1 _ 83. EC, 08
        push    dword [ebp-10H]                         ; 13C4 _ FF. 75, F0
        push    eax                                     ; 13C7 _ 50
        push    dword [ebp-2CH]                         ; 13C8 _ FF. 75, D4
        push    dword [ebp-28H]                         ; 13CB _ FF. 75, D8
        push    dword [ebp+0CH]                         ; 13CE _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 13D1 _ FF. 75, 08
        call    showString                              ; 13D4 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 13D9 _ 83. C4, 20
        add     dword [ebp-2CH], 16                     ; 13DC _ 83. 45, D4, 10
        mov     eax, dword [ebp+20H]                    ; 13E0 _ 8B. 45, 20
        movsx   eax, al                                 ; 13E3 _ 0F BE. C0
        sub     esp, 8                                  ; 13E6 _ 83. EC, 08
        push    ?_135                                   ; 13E9 _ 68, 00000073(d)
        push    eax                                     ; 13EE _ 50
        push    dword [ebp-2CH]                         ; 13EF _ FF. 75, D4
        push    dword [ebp-30H]                         ; 13F2 _ FF. 75, D0
        push    dword [ebp+0CH]                         ; 13F5 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 13F8 _ FF. 75, 08
        call    showString                              ; 13FB _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1400 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 1403 _ 8B. 45, 10
        mov     eax, dword [eax+10H]                    ; 1406 _ 8B. 40, 10
        sub     esp, 12                                 ; 1409 _ 83. EC, 0C
        push    eax                                     ; 140C _ 50
        call    intToHexStr                             ; 140D _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1412 _ 83. C4, 10
        mov     dword [ebp-0CH], eax                    ; 1415 _ 89. 45, F4
        mov     eax, dword [ebp+20H]                    ; 1418 _ 8B. 45, 20
        movsx   eax, al                                 ; 141B _ 0F BE. C0
        sub     esp, 8                                  ; 141E _ 83. EC, 08
        push    dword [ebp-0CH]                         ; 1421 _ FF. 75, F4
        push    eax                                     ; 1424 _ 50
        push    dword [ebp-2CH]                         ; 1425 _ FF. 75, D4
        push    dword [ebp-28H]                         ; 1428 _ FF. 75, D8
        push    dword [ebp+0CH]                         ; 142B _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 142E _ FF. 75, 08
        call    showString                              ; 1431 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1436 _ 83. C4, 20
        add     dword [ebp-2CH], 16                     ; 1439 _ 83. 45, D4, 10
        nop                                             ; 143D _ 90
        leave                                           ; 143E _ C9
        ret                                             ; 143F _ C3
; showMemInfo End of function

messageBox:; Function begin
        push    ebp                                     ; 1440 _ 55
        mov     ebp, esp                                ; 1441 _ 89. E5
        sub     esp, 24                                 ; 1443 _ 83. EC, 18
        mov     eax, dword [memman]                     ; 1446 _ A1, 00000008(d)
        sub     esp, 8                                  ; 144B _ 83. EC, 08
        push    12000                                   ; 144E _ 68, 00002EE0
        push    eax                                     ; 1453 _ 50
        call    memman_alloc_4K                         ; 1454 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1459 _ 83. C4, 10
        mov     dword [ebp-10H], eax                    ; 145C _ 89. 45, F0
        sub     esp, 12                                 ; 145F _ 83. EC, 0C
        push    dword [ebp+8H]                          ; 1462 _ FF. 75, 08
        call    sheet_alloc                             ; 1465 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 146A _ 83. C4, 10
        mov     dword [ebp-0CH], eax                    ; 146D _ 89. 45, F4
        sub     esp, 12                                 ; 1470 _ 83. EC, 0C
        push    99                                      ; 1473 _ 6A, 63
        push    75                                      ; 1475 _ 6A, 4B
        push    160                                     ; 1477 _ 68, 000000A0
        push    dword [ebp-10H]                         ; 147C _ FF. 75, F0
        push    dword [ebp-0CH]                         ; 147F _ FF. 75, F4
        call    sheet_setbuf                            ; 1482 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1487 _ 83. C4, 20
        sub     esp, 4                                  ; 148A _ 83. EC, 04
        push    dword [ebp+0CH]                         ; 148D _ FF. 75, 0C
        push    dword [ebp-0CH]                         ; 1490 _ FF. 75, F4
        push    dword [ebp+8H]                          ; 1493 _ FF. 75, 08
        call    make_window8                            ; 1496 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 149B _ 83. C4, 10
        sub     esp, 8                                  ; 149E _ 83. EC, 08
        push    ?_136                                   ; 14A1 _ 68, 0000007A(d)
        push    0                                       ; 14A6 _ 6A, 00
        push    22                                      ; 14A8 _ 6A, 16
        push    5                                       ; 14AA _ 6A, 05
        push    dword [ebp-0CH]                         ; 14AC _ FF. 75, F4
        push    dword [ebp+8H]                          ; 14AF _ FF. 75, 08
        call    showString                              ; 14B2 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 14B7 _ 83. C4, 20
        sub     esp, 8                                  ; 14BA _ 83. EC, 08
        push    ?_137                                   ; 14BD _ 68, 00000089(d)
        push    4                                       ; 14C2 _ 6A, 04
        push    38                                      ; 14C4 _ 6A, 26
        push    5                                       ; 14C6 _ 6A, 05
        push    dword [ebp-0CH]                         ; 14C8 _ FF. 75, F4
        push    dword [ebp+8H]                          ; 14CB _ FF. 75, 08
        call    showString                              ; 14CE _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 14D3 _ 83. C4, 20
        push    100                                     ; 14D6 _ 6A, 64
        push    60                                      ; 14D8 _ 6A, 3C
        push    dword [ebp-0CH]                         ; 14DA _ FF. 75, F4
        push    dword [ebp+8H]                          ; 14DD _ FF. 75, 08
        call    sheet_slide                             ; 14E0 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 14E5 _ 83. C4, 10
        sub     esp, 4                                  ; 14E8 _ 83. EC, 04
        push    1                                       ; 14EB _ 6A, 01
        push    dword [ebp-0CH]                         ; 14ED _ FF. 75, F4
        push    dword [ebp+8H]                          ; 14F0 _ FF. 75, 08
        call    sheet_level_updown                      ; 14F3 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 14F8 _ 83. C4, 10
        nop                                             ; 14FB _ 90
        leave                                           ; 14FC _ C9
        ret                                             ; 14FD _ C3
; messageBox End of function

make_window8:; Function begin
        push    ebp                                     ; 14FE _ 55
        mov     ebp, esp                                ; 14FF _ 89. E5
        push    ebx                                     ; 1501 _ 53
        sub     esp, 36                                 ; 1502 _ 83. EC, 24
        mov     eax, dword [ebp+0CH]                    ; 1505 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 1508 _ 8B. 40, 04
        mov     dword [ebp-10H], eax                    ; 150B _ 89. 45, F0
        mov     eax, dword [ebp+0CH]                    ; 150E _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 1511 _ 8B. 40, 08
        mov     dword [ebp-0CH], eax                    ; 1514 _ 89. 45, F4
        mov     eax, dword [ebp-10H]                    ; 1517 _ 8B. 45, F0
        lea     edx, [eax-1H]                           ; 151A _ 8D. 50, FF
        mov     eax, dword [ebp+0CH]                    ; 151D _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 1520 _ 8B. 00
        push    0                                       ; 1522 _ 6A, 00
        push    edx                                     ; 1524 _ 52
        push    0                                       ; 1525 _ 6A, 00
        push    0                                       ; 1527 _ 6A, 00
        push    8                                       ; 1529 _ 6A, 08
        push    dword [ebp-10H]                         ; 152B _ FF. 75, F0
        push    eax                                     ; 152E _ 50
        call    boxfill8                                ; 152F _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 1534 _ 83. C4, 1C
        mov     eax, dword [ebp-10H]                    ; 1537 _ 8B. 45, F0
        lea     edx, [eax-2H]                           ; 153A _ 8D. 50, FE
        mov     eax, dword [ebp+0CH]                    ; 153D _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 1540 _ 8B. 00
        push    1                                       ; 1542 _ 6A, 01
        push    edx                                     ; 1544 _ 52
        push    1                                       ; 1545 _ 6A, 01
        push    1                                       ; 1547 _ 6A, 01
        push    7                                       ; 1549 _ 6A, 07
        push    dword [ebp-10H]                         ; 154B _ FF. 75, F0
        push    eax                                     ; 154E _ 50
        call    boxfill8                                ; 154F _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 1554 _ 83. C4, 1C
        mov     eax, dword [ebp-0CH]                    ; 1557 _ 8B. 45, F4
        lea     edx, [eax-1H]                           ; 155A _ 8D. 50, FF
        mov     eax, dword [ebp+0CH]                    ; 155D _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 1560 _ 8B. 00
        push    edx                                     ; 1562 _ 52
        push    0                                       ; 1563 _ 6A, 00
        push    0                                       ; 1565 _ 6A, 00
        push    0                                       ; 1567 _ 6A, 00
        push    8                                       ; 1569 _ 6A, 08
        push    dword [ebp-10H]                         ; 156B _ FF. 75, F0
        push    eax                                     ; 156E _ 50
        call    boxfill8                                ; 156F _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 1574 _ 83. C4, 1C
        mov     eax, dword [ebp-0CH]                    ; 1577 _ 8B. 45, F4
        lea     edx, [eax-1H]                           ; 157A _ 8D. 50, FF
        mov     eax, dword [ebp+0CH]                    ; 157D _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 1580 _ 8B. 00
        push    edx                                     ; 1582 _ 52
        push    1                                       ; 1583 _ 6A, 01
        push    1                                       ; 1585 _ 6A, 01
        push    1                                       ; 1587 _ 6A, 01
        push    7                                       ; 1589 _ 6A, 07
        push    dword [ebp-10H]                         ; 158B _ FF. 75, F0
        push    eax                                     ; 158E _ 50
        call    boxfill8                                ; 158F _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 1594 _ 83. C4, 1C
        mov     eax, dword [ebp-0CH]                    ; 1597 _ 8B. 45, F4
        lea     ebx, [eax-2H]                           ; 159A _ 8D. 58, FE
        mov     eax, dword [ebp-10H]                    ; 159D _ 8B. 45, F0
        lea     ecx, [eax-2H]                           ; 15A0 _ 8D. 48, FE
        mov     eax, dword [ebp-10H]                    ; 15A3 _ 8B. 45, F0
        lea     edx, [eax-2H]                           ; 15A6 _ 8D. 50, FE
        mov     eax, dword [ebp+0CH]                    ; 15A9 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 15AC _ 8B. 00
        push    ebx                                     ; 15AE _ 53
        push    ecx                                     ; 15AF _ 51
        push    1                                       ; 15B0 _ 6A, 01
        push    edx                                     ; 15B2 _ 52
        push    15                                      ; 15B3 _ 6A, 0F
        push    dword [ebp-10H]                         ; 15B5 _ FF. 75, F0
        push    eax                                     ; 15B8 _ 50
        call    boxfill8                                ; 15B9 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 15BE _ 83. C4, 1C
        mov     eax, dword [ebp-0CH]                    ; 15C1 _ 8B. 45, F4
        lea     ebx, [eax-1H]                           ; 15C4 _ 8D. 58, FF
        mov     eax, dword [ebp-10H]                    ; 15C7 _ 8B. 45, F0
        lea     ecx, [eax-1H]                           ; 15CA _ 8D. 48, FF
        mov     eax, dword [ebp-10H]                    ; 15CD _ 8B. 45, F0
        lea     edx, [eax-1H]                           ; 15D0 _ 8D. 50, FF
        mov     eax, dword [ebp+0CH]                    ; 15D3 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 15D6 _ 8B. 00
        push    ebx                                     ; 15D8 _ 53
        push    ecx                                     ; 15D9 _ 51
        push    0                                       ; 15DA _ 6A, 00
        push    edx                                     ; 15DC _ 52
        push    0                                       ; 15DD _ 6A, 00
        push    dword [ebp-10H]                         ; 15DF _ FF. 75, F0
        push    eax                                     ; 15E2 _ 50
        call    boxfill8                                ; 15E3 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 15E8 _ 83. C4, 1C
        mov     eax, dword [ebp-0CH]                    ; 15EB _ 8B. 45, F4
        lea     ecx, [eax-3H]                           ; 15EE _ 8D. 48, FD
        mov     eax, dword [ebp-10H]                    ; 15F1 _ 8B. 45, F0
        lea     edx, [eax-3H]                           ; 15F4 _ 8D. 50, FD
        mov     eax, dword [ebp+0CH]                    ; 15F7 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 15FA _ 8B. 00
        push    ecx                                     ; 15FC _ 51
        push    edx                                     ; 15FD _ 52
        push    2                                       ; 15FE _ 6A, 02
        push    2                                       ; 1600 _ 6A, 02
        push    8                                       ; 1602 _ 6A, 08
        push    dword [ebp-10H]                         ; 1604 _ FF. 75, F0
        push    eax                                     ; 1607 _ 50
        call    boxfill8                                ; 1608 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 160D _ 83. C4, 1C
        mov     eax, dword [ebp-10H]                    ; 1610 _ 8B. 45, F0
        lea     edx, [eax-4H]                           ; 1613 _ 8D. 50, FC
        mov     eax, dword [ebp+0CH]                    ; 1616 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 1619 _ 8B. 00
        push    20                                      ; 161B _ 6A, 14
        push    edx                                     ; 161D _ 52
        push    3                                       ; 161E _ 6A, 03
        push    3                                       ; 1620 _ 6A, 03
        push    12                                      ; 1622 _ 6A, 0C
        push    dword [ebp-10H]                         ; 1624 _ FF. 75, F0
        push    eax                                     ; 1627 _ 50
        call    boxfill8                                ; 1628 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 162D _ 83. C4, 1C
        mov     eax, dword [ebp-0CH]                    ; 1630 _ 8B. 45, F4
        lea     ebx, [eax-2H]                           ; 1633 _ 8D. 58, FE
        mov     eax, dword [ebp-10H]                    ; 1636 _ 8B. 45, F0
        lea     ecx, [eax-2H]                           ; 1639 _ 8D. 48, FE
        mov     eax, dword [ebp-0CH]                    ; 163C _ 8B. 45, F4
        lea     edx, [eax-2H]                           ; 163F _ 8D. 50, FE
        mov     eax, dword [ebp+0CH]                    ; 1642 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 1645 _ 8B. 00
        push    ebx                                     ; 1647 _ 53
        push    ecx                                     ; 1648 _ 51
        push    edx                                     ; 1649 _ 52
        push    1                                       ; 164A _ 6A, 01
        push    15                                      ; 164C _ 6A, 0F
        push    dword [ebp-10H]                         ; 164E _ FF. 75, F0
        push    eax                                     ; 1651 _ 50
        call    boxfill8                                ; 1652 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 1657 _ 83. C4, 1C
        mov     eax, dword [ebp-0CH]                    ; 165A _ 8B. 45, F4
        lea     ebx, [eax-1H]                           ; 165D _ 8D. 58, FF
        mov     eax, dword [ebp-10H]                    ; 1660 _ 8B. 45, F0
        lea     ecx, [eax-1H]                           ; 1663 _ 8D. 48, FF
        mov     eax, dword [ebp-0CH]                    ; 1666 _ 8B. 45, F4
        lea     edx, [eax-1H]                           ; 1669 _ 8D. 50, FF
        mov     eax, dword [ebp+0CH]                    ; 166C _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 166F _ 8B. 00
        push    ebx                                     ; 1671 _ 53
        push    ecx                                     ; 1672 _ 51
        push    edx                                     ; 1673 _ 52
        push    0                                       ; 1674 _ 6A, 00
        push    0                                       ; 1676 _ 6A, 00
        push    dword [ebp-10H]                         ; 1678 _ FF. 75, F0
        push    eax                                     ; 167B _ 50
        call    boxfill8                                ; 167C _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 1681 _ 83. C4, 1C
        sub     esp, 8                                  ; 1684 _ 83. EC, 08
        push    dword [ebp+10H]                         ; 1687 _ FF. 75, 10
        push    7                                       ; 168A _ 6A, 07
        push    4                                       ; 168C _ 6A, 04
        push    5                                       ; 168E _ 6A, 05
        push    dword [ebp+0CH]                         ; 1690 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1693 _ FF. 75, 08
        call    showString                              ; 1696 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 169B _ 83. C4, 20
        mov     dword [ebp-18H], 0                      ; 169E _ C7. 45, E8, 00000000
        jmp     ?_072                                   ; 16A5 _ EB, 7D

?_066:  mov     dword [ebp-14H], 0                      ; 16A7 _ C7. 45, EC, 00000000
        jmp     ?_071                                   ; 16AE _ EB, 6A

?_067:  mov     eax, dword [ebp-18H]                    ; 16B0 _ 8B. 45, E8
        shl     eax, 4                                  ; 16B3 _ C1. E0, 04
        mov     edx, eax                                ; 16B6 _ 89. C2
        mov     eax, dword [ebp-14H]                    ; 16B8 _ 8B. 45, EC
        add     eax, edx                                ; 16BB _ 01. D0
        add     eax, closebtn.1869                      ; 16BD _ 05, 00000160(d)
        movzx   eax, byte [eax]                         ; 16C2 _ 0F B6. 00
        mov     byte [ebp-19H], al                      ; 16C5 _ 88. 45, E7
        cmp     byte [ebp-19H], 64                      ; 16C8 _ 80. 7D, E7, 40
        jnz     ?_068                                   ; 16CC _ 75, 06
        mov     byte [ebp-19H], 0                       ; 16CE _ C6. 45, E7, 00
        jmp     ?_070                                   ; 16D2 _ EB, 16

?_068:  cmp     byte [ebp-19H], 36                      ; 16D4 _ 80. 7D, E7, 24
        jnz     ?_069                                   ; 16D8 _ 75, 06
        mov     byte [ebp-19H], 15                      ; 16DA _ C6. 45, E7, 0F
        jmp     ?_070                                   ; 16DE _ EB, 0A

?_069:  cmp     byte [ebp-19H], 81                      ; 16E0 _ 80. 7D, E7, 51
        jnz     ?_070                                   ; 16E4 _ 75, 04
        mov     byte [ebp-19H], 8                       ; 16E6 _ C6. 45, E7, 08
?_070:  mov     eax, dword [ebp+0CH]                    ; 16EA _ 8B. 45, 0C
        mov     edx, dword [eax]                        ; 16ED _ 8B. 10
        mov     eax, dword [ebp-18H]                    ; 16EF _ 8B. 45, E8
        lea     ecx, [eax+5H]                           ; 16F2 _ 8D. 48, 05
        mov     eax, dword [ebp+0CH]                    ; 16F5 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 16F8 _ 8B. 40, 04
        imul    ecx, eax                                ; 16FB _ 0F AF. C8
        mov     eax, dword [ebp+0CH]                    ; 16FE _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 1701 _ 8B. 40, 04
        lea     ebx, [eax-15H]                          ; 1704 _ 8D. 58, EB
        mov     eax, dword [ebp-14H]                    ; 1707 _ 8B. 45, EC
        add     eax, ebx                                ; 170A _ 01. D8
        add     eax, ecx                                ; 170C _ 01. C8
        add     edx, eax                                ; 170E _ 01. C2
        movzx   eax, byte [ebp-19H]                     ; 1710 _ 0F B6. 45, E7
        mov     byte [edx], al                          ; 1714 _ 88. 02
        add     dword [ebp-14H], 1                      ; 1716 _ 83. 45, EC, 01
?_071:  cmp     dword [ebp-14H], 15                     ; 171A _ 83. 7D, EC, 0F
        jle     ?_067                                   ; 171E _ 7E, 90
        add     dword [ebp-18H], 1                      ; 1720 _ 83. 45, E8, 01
?_072:  cmp     dword [ebp-18H], 13                     ; 1724 _ 83. 7D, E8, 0D
        jle     ?_066                                   ; 1728 _ 0F 8E, FFFFFF79
        nop                                             ; 172E _ 90
        mov     ebx, dword [ebp-4H]                     ; 172F _ 8B. 5D, FC
        leave                                           ; 1732 _ C9
        ret                                             ; 1733 _ C3
; make_window8 End of function

memman_init:; Function begin
        push    ebp                                     ; 1734 _ 55
        mov     ebp, esp                                ; 1735 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 1737 _ 8B. 45, 08
        mov     dword [eax], 0                          ; 173A _ C7. 00, 00000000
        mov     eax, dword [ebp+8H]                     ; 1740 _ 8B. 45, 08
        mov     dword [eax+4H], 0                       ; 1743 _ C7. 40, 04, 00000000
        mov     eax, dword [ebp+8H]                     ; 174A _ 8B. 45, 08
        mov     dword [eax+8H], 0                       ; 174D _ C7. 40, 08, 00000000
        mov     eax, dword [ebp+8H]                     ; 1754 _ 8B. 45, 08
        mov     dword [eax+0CH], 0                      ; 1757 _ C7. 40, 0C, 00000000
        nop                                             ; 175E _ 90
        pop     ebp                                     ; 175F _ 5D
        ret                                             ; 1760 _ C3
; memman_init End of function

memman_total:; Function begin
        push    ebp                                     ; 1761 _ 55
        mov     ebp, esp                                ; 1762 _ 89. E5
        sub     esp, 16                                 ; 1764 _ 83. EC, 10
        mov     dword [ebp-8H], 0                       ; 1767 _ C7. 45, F8, 00000000
        mov     dword [ebp-4H], 0                       ; 176E _ C7. 45, FC, 00000000
        jmp     ?_074                                   ; 1775 _ EB, 14

?_073:  mov     eax, dword [ebp+8H]                     ; 1777 _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 177A _ 8B. 55, FC
        add     edx, 2                                  ; 177D _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 1780 _ 8B. 44 D0, 04
        add     dword [ebp-8H], eax                     ; 1784 _ 01. 45, F8
        add     dword [ebp-4H], 1                       ; 1787 _ 83. 45, FC, 01
?_074:  mov     eax, dword [ebp+8H]                     ; 178B _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 178E _ 8B. 00
        cmp     dword [ebp-4H], eax                     ; 1790 _ 39. 45, FC
        jl      ?_073                                   ; 1793 _ 7C, E2
        mov     eax, dword [ebp-8H]                     ; 1795 _ 8B. 45, F8
        leave                                           ; 1798 _ C9
        ret                                             ; 1799 _ C3
; memman_total End of function

memman_alloc_FF:; Function begin
        push    ebp                                     ; 179A _ 55
        mov     ebp, esp                                ; 179B _ 89. E5
        sub     esp, 16                                 ; 179D _ 83. EC, 10
        mov     dword [ebp-8H], 0                       ; 17A0 _ C7. 45, F8, 00000000
        jmp     ?_078                                   ; 17A7 _ E9, 00000085

?_075:  mov     eax, dword [ebp+8H]                     ; 17AC _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 17AF _ 8B. 55, F8
        add     edx, 2                                  ; 17B2 _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 17B5 _ 8B. 44 D0, 04
        cmp     dword [ebp+0CH], eax                    ; 17B9 _ 39. 45, 0C
        ja      ?_077                                   ; 17BC _ 77, 6F
        mov     eax, dword [ebp+8H]                     ; 17BE _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 17C1 _ 8B. 55, F8
        add     edx, 2                                  ; 17C4 _ 83. C2, 02
        mov     eax, dword [eax+edx*8]                  ; 17C7 _ 8B. 04 D0
        mov     dword [ebp-4H], eax                     ; 17CA _ 89. 45, FC
        mov     eax, dword [ebp+8H]                     ; 17CD _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 17D0 _ 8B. 55, F8
        add     edx, 2                                  ; 17D3 _ 83. C2, 02
        mov     edx, dword [eax+edx*8]                  ; 17D6 _ 8B. 14 D0
        mov     eax, dword [ebp+0CH]                    ; 17D9 _ 8B. 45, 0C
        lea     ecx, [edx+eax]                          ; 17DC _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 17DF _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 17E2 _ 8B. 55, F8
        add     edx, 2                                  ; 17E5 _ 83. C2, 02
        mov     dword [eax+edx*8], ecx                  ; 17E8 _ 89. 0C D0
        mov     eax, dword [ebp+8H]                     ; 17EB _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 17EE _ 8B. 55, F8
        add     edx, 2                                  ; 17F1 _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 17F4 _ 8B. 44 D0, 04
        sub     eax, dword [ebp+0CH]                    ; 17F8 _ 2B. 45, 0C
        mov     edx, eax                                ; 17FB _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 17FD _ 8B. 45, 08
        mov     ecx, dword [ebp-8H]                     ; 1800 _ 8B. 4D, F8
        add     ecx, 2                                  ; 1803 _ 83. C1, 02
        mov     dword [eax+ecx*8+4H], edx               ; 1806 _ 89. 54 C8, 04
        mov     eax, dword [ebp+8H]                     ; 180A _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 180D _ 8B. 55, F8
        add     edx, 2                                  ; 1810 _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 1813 _ 8B. 44 D0, 04
        test    eax, eax                                ; 1817 _ 85. C0
        jnz     ?_076                                   ; 1819 _ 75, 0D
        mov     eax, dword [ebp+8H]                     ; 181B _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 181E _ 8B. 00
        lea     edx, [eax-1H]                           ; 1820 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 1823 _ 8B. 45, 08
        mov     dword [eax], edx                        ; 1826 _ 89. 10
?_076:  mov     eax, dword [ebp-4H]                     ; 1828 _ 8B. 45, FC
        jmp     ?_079                                   ; 182B _ EB, 17

?_077:  add     dword [ebp-8H], 1                       ; 182D _ 83. 45, F8, 01
?_078:  mov     eax, dword [ebp+8H]                     ; 1831 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 1834 _ 8B. 00
        cmp     dword [ebp-8H], eax                     ; 1836 _ 39. 45, F8
        jl      ?_075                                   ; 1839 _ 0F 8C, FFFFFF6D
        mov     eax, 0                                  ; 183F _ B8, 00000000
?_079:  leave                                           ; 1844 _ C9
        ret                                             ; 1845 _ C3
; memman_alloc_FF End of function

memman_alloc_4K:; Function begin
        push    ebp                                     ; 1846 _ 55
        mov     ebp, esp                                ; 1847 _ 89. E5
        sub     esp, 16                                 ; 1849 _ 83. EC, 10
        mov     eax, dword [ebp+0CH]                    ; 184C _ 8B. 45, 0C
        add     eax, 4095                               ; 184F _ 05, 00000FFF
        and     eax, 0FFFFF000H                         ; 1854 _ 25, FFFFF000
        mov     dword [ebp+0CH], eax                    ; 1859 _ 89. 45, 0C
        push    dword [ebp+0CH]                         ; 185C _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 185F _ FF. 75, 08
        call    memman_alloc_FF                         ; 1862 _ E8, FFFFFFFC(rel)
        add     esp, 8                                  ; 1867 _ 83. C4, 08
        mov     dword [ebp-4H], eax                     ; 186A _ 89. 45, FC
        mov     eax, dword [ebp-4H]                     ; 186D _ 8B. 45, FC
        leave                                           ; 1870 _ C9
        ret                                             ; 1871 _ C3
; memman_alloc_4K End of function

memman_free:; Function begin
        push    ebp                                     ; 1872 _ 55
        mov     ebp, esp                                ; 1873 _ 89. E5
        push    ebx                                     ; 1875 _ 53
        sub     esp, 16                                 ; 1876 _ 83. EC, 10
        mov     dword [ebp-0CH], 0                      ; 1879 _ C7. 45, F4, 00000000
        jmp     ?_081                                   ; 1880 _ EB, 15

?_080:  mov     eax, dword [ebp+8H]                     ; 1882 _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 1885 _ 8B. 55, F4
        add     edx, 2                                  ; 1888 _ 83. C2, 02
        mov     eax, dword [eax+edx*8]                  ; 188B _ 8B. 04 D0
        cmp     dword [ebp+0CH], eax                    ; 188E _ 39. 45, 0C
        jc      ?_082                                   ; 1891 _ 72, 10
        add     dword [ebp-0CH], 1                      ; 1893 _ 83. 45, F4, 01
?_081:  mov     eax, dword [ebp+8H]                     ; 1897 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 189A _ 8B. 00
        cmp     dword [ebp-0CH], eax                    ; 189C _ 39. 45, F4
        jl      ?_080                                   ; 189F _ 7C, E1
        jmp     ?_083                                   ; 18A1 _ EB, 01

?_082:  nop                                             ; 18A3 _ 90
?_083:  cmp     dword [ebp-0CH], 0                      ; 18A4 _ 83. 7D, F4, 00
        jle     ?_085                                   ; 18A8 _ 0F 8E, 000000BA
        mov     eax, dword [ebp-0CH]                    ; 18AE _ 8B. 45, F4
        lea     edx, [eax-1H]                           ; 18B1 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 18B4 _ 8B. 45, 08
        add     edx, 2                                  ; 18B7 _ 83. C2, 02
        mov     edx, dword [eax+edx*8]                  ; 18BA _ 8B. 14 D0
        mov     eax, dword [ebp-0CH]                    ; 18BD _ 8B. 45, F4
        lea     ecx, [eax-1H]                           ; 18C0 _ 8D. 48, FF
        mov     eax, dword [ebp+8H]                     ; 18C3 _ 8B. 45, 08
        add     ecx, 2                                  ; 18C6 _ 83. C1, 02
        mov     eax, dword [eax+ecx*8+4H]               ; 18C9 _ 8B. 44 C8, 04
        add     eax, edx                                ; 18CD _ 01. D0
        cmp     dword [ebp+0CH], eax                    ; 18CF _ 39. 45, 0C
        jne     ?_085                                   ; 18D2 _ 0F 85, 00000090
        mov     eax, dword [ebp-0CH]                    ; 18D8 _ 8B. 45, F4
        lea     edx, [eax-1H]                           ; 18DB _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 18DE _ 8B. 45, 08
        add     edx, 2                                  ; 18E1 _ 83. C2, 02
        mov     edx, dword [eax+edx*8+4H]               ; 18E4 _ 8B. 54 D0, 04
        mov     eax, dword [ebp-0CH]                    ; 18E8 _ 8B. 45, F4
        lea     ebx, [eax-1H]                           ; 18EB _ 8D. 58, FF
        mov     eax, dword [ebp+10H]                    ; 18EE _ 8B. 45, 10
        lea     ecx, [edx+eax]                          ; 18F1 _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 18F4 _ 8B. 45, 08
        lea     edx, [ebx+2H]                           ; 18F7 _ 8D. 53, 02
        mov     dword [eax+edx*8+4H], ecx               ; 18FA _ 89. 4C D0, 04
        mov     eax, dword [ebp+8H]                     ; 18FE _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 1901 _ 8B. 00
        cmp     dword [ebp-0CH], eax                    ; 1903 _ 39. 45, F4
        jge     ?_084                                   ; 1906 _ 7D, 56
        mov     edx, dword [ebp+0CH]                    ; 1908 _ 8B. 55, 0C
        mov     eax, dword [ebp+10H]                    ; 190B _ 8B. 45, 10
        lea     ecx, [edx+eax]                          ; 190E _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 1911 _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 1914 _ 8B. 55, F4
        add     edx, 2                                  ; 1917 _ 83. C2, 02
        mov     eax, dword [eax+edx*8]                  ; 191A _ 8B. 04 D0
        cmp     ecx, eax                                ; 191D _ 39. C1
        jnz     ?_084                                   ; 191F _ 75, 3D
        mov     eax, dword [ebp-0CH]                    ; 1921 _ 8B. 45, F4
        lea     edx, [eax-1H]                           ; 1924 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 1927 _ 8B. 45, 08
        add     edx, 2                                  ; 192A _ 83. C2, 02
        mov     edx, dword [eax+edx*8+4H]               ; 192D _ 8B. 54 D0, 04
        mov     eax, dword [ebp+8H]                     ; 1931 _ 8B. 45, 08
        mov     ecx, dword [ebp-0CH]                    ; 1934 _ 8B. 4D, F4
        add     ecx, 2                                  ; 1937 _ 83. C1, 02
        mov     eax, dword [eax+ecx*8+4H]               ; 193A _ 8B. 44 C8, 04
        mov     ecx, dword [ebp-0CH]                    ; 193E _ 8B. 4D, F4
        lea     ebx, [ecx-1H]                           ; 1941 _ 8D. 59, FF
        lea     ecx, [edx+eax]                          ; 1944 _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 1947 _ 8B. 45, 08
        lea     edx, [ebx+2H]                           ; 194A _ 8D. 53, 02
        mov     dword [eax+edx*8+4H], ecx               ; 194D _ 89. 4C D0, 04
        mov     eax, dword [ebp+8H]                     ; 1951 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 1954 _ 8B. 00
        lea     edx, [eax-1H]                           ; 1956 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 1959 _ 8B. 45, 08
        mov     dword [eax], edx                        ; 195C _ 89. 10
?_084:  mov     eax, 0                                  ; 195E _ B8, 00000000
        jmp     ?_091                                   ; 1963 _ E9, 0000011C

?_085:  mov     eax, dword [ebp+8H]                     ; 1968 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 196B _ 8B. 00
        cmp     dword [ebp-0CH], eax                    ; 196D _ 39. 45, F4
        jge     ?_086                                   ; 1970 _ 7D, 52
        mov     edx, dword [ebp+0CH]                    ; 1972 _ 8B. 55, 0C
        mov     eax, dword [ebp+10H]                    ; 1975 _ 8B. 45, 10
        lea     ecx, [edx+eax]                          ; 1978 _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 197B _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 197E _ 8B. 55, F4
        add     edx, 2                                  ; 1981 _ 83. C2, 02
        mov     eax, dword [eax+edx*8]                  ; 1984 _ 8B. 04 D0
        cmp     ecx, eax                                ; 1987 _ 39. C1
        jnz     ?_086                                   ; 1989 _ 75, 39
        mov     eax, dword [ebp+8H]                     ; 198B _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 198E _ 8B. 55, F4
        lea     ecx, [edx+2H]                           ; 1991 _ 8D. 4A, 02
        mov     edx, dword [ebp+0CH]                    ; 1994 _ 8B. 55, 0C
        mov     dword [eax+ecx*8], edx                  ; 1997 _ 89. 14 C8
        mov     eax, dword [ebp+8H]                     ; 199A _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 199D _ 8B. 55, F4
        add     edx, 2                                  ; 19A0 _ 83. C2, 02
        mov     edx, dword [eax+edx*8+4H]               ; 19A3 _ 8B. 54 D0, 04
        mov     eax, dword [ebp+10H]                    ; 19A7 _ 8B. 45, 10
        lea     ecx, [edx+eax]                          ; 19AA _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 19AD _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 19B0 _ 8B. 55, F4
        add     edx, 2                                  ; 19B3 _ 83. C2, 02
        mov     dword [eax+edx*8+4H], ecx               ; 19B6 _ 89. 4C D0, 04
        mov     eax, 0                                  ; 19BA _ B8, 00000000
        jmp     ?_091                                   ; 19BF _ E9, 000000C0

?_086:  mov     eax, dword [ebp+8H]                     ; 19C4 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 19C7 _ 8B. 00
        cmp     eax, 4095                               ; 19C9 _ 3D, 00000FFF
        jg      ?_090                                   ; 19CE _ 0F 8F, 00000087
        mov     eax, dword [ebp+8H]                     ; 19D4 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 19D7 _ 8B. 00
        mov     dword [ebp-8H], eax                     ; 19D9 _ 89. 45, F8
        jmp     ?_088                                   ; 19DC _ EB, 28

?_087:  mov     eax, dword [ebp-8H]                     ; 19DE _ 8B. 45, F8
        lea     edx, [eax-1H]                           ; 19E1 _ 8D. 50, FF
        mov     ecx, dword [ebp+8H]                     ; 19E4 _ 8B. 4D, 08
        mov     eax, dword [ebp-8H]                     ; 19E7 _ 8B. 45, F8
        lea     ebx, [eax+2H]                           ; 19EA _ 8D. 58, 02
        mov     eax, dword [ebp+8H]                     ; 19ED _ 8B. 45, 08
        add     edx, 2                                  ; 19F0 _ 83. C2, 02
        lea     edx, [eax+edx*8]                        ; 19F3 _ 8D. 14 D0
        mov     eax, dword [edx]                        ; 19F6 _ 8B. 02
        mov     edx, dword [edx+4H]                     ; 19F8 _ 8B. 52, 04
        mov     dword [ecx+ebx*8], eax                  ; 19FB _ 89. 04 D9
        mov     dword [ecx+ebx*8+4H], edx               ; 19FE _ 89. 54 D9, 04
        sub     dword [ebp-8H], 1                       ; 1A02 _ 83. 6D, F8, 01
?_088:  mov     eax, dword [ebp-8H]                     ; 1A06 _ 8B. 45, F8
        cmp     eax, dword [ebp-0CH]                    ; 1A09 _ 3B. 45, F4
        jg      ?_087                                   ; 1A0C _ 7F, D0
        mov     eax, dword [ebp+8H]                     ; 1A0E _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 1A11 _ 8B. 00
        lea     edx, [eax+1H]                           ; 1A13 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 1A16 _ 8B. 45, 08
        mov     dword [eax], edx                        ; 1A19 _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 1A1B _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 1A1E _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 1A21 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 1A24 _ 8B. 00
        cmp     edx, eax                                ; 1A26 _ 39. C2
        jge     ?_089                                   ; 1A28 _ 7D, 0B
        mov     eax, dword [ebp+8H]                     ; 1A2A _ 8B. 45, 08
        mov     edx, dword [eax]                        ; 1A2D _ 8B. 10
        mov     eax, dword [ebp+8H]                     ; 1A2F _ 8B. 45, 08
        mov     dword [eax+4H], edx                     ; 1A32 _ 89. 50, 04
?_089:  mov     eax, dword [ebp+8H]                     ; 1A35 _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 1A38 _ 8B. 55, F4
        lea     ecx, [edx+2H]                           ; 1A3B _ 8D. 4A, 02
        mov     edx, dword [ebp+0CH]                    ; 1A3E _ 8B. 55, 0C
        mov     dword [eax+ecx*8], edx                  ; 1A41 _ 89. 14 C8
        mov     eax, dword [ebp+8H]                     ; 1A44 _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 1A47 _ 8B. 55, F4
        lea     ecx, [edx+2H]                           ; 1A4A _ 8D. 4A, 02
        mov     edx, dword [ebp+10H]                    ; 1A4D _ 8B. 55, 10
        mov     dword [eax+ecx*8+4H], edx               ; 1A50 _ 89. 54 C8, 04
        mov     eax, 0                                  ; 1A54 _ B8, 00000000
        jmp     ?_091                                   ; 1A59 _ EB, 29

?_090:  mov     eax, dword [ebp+8H]                     ; 1A5B _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 1A5E _ 8B. 40, 0C
        lea     edx, [eax+1H]                           ; 1A61 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 1A64 _ 8B. 45, 08
        mov     dword [eax+0CH], edx                    ; 1A67 _ 89. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 1A6A _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 1A6D _ 8B. 40, 08
        mov     edx, eax                                ; 1A70 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 1A72 _ 8B. 45, 10
        add     eax, edx                                ; 1A75 _ 01. D0
        mov     edx, eax                                ; 1A77 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 1A79 _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 1A7C _ 89. 50, 08
        mov     eax, 4294967295                         ; 1A7F _ B8, FFFFFFFF
?_091:  add     esp, 16                                 ; 1A84 _ 83. C4, 10
        pop     ebx                                     ; 1A87 _ 5B
        pop     ebp                                     ; 1A88 _ 5D
        ret                                             ; 1A89 _ C3
; memman_free End of function

memman_free_4K:; Function begin
        push    ebp                                     ; 1A8A _ 55
        mov     ebp, esp                                ; 1A8B _ 89. E5
        sub     esp, 16                                 ; 1A8D _ 83. EC, 10
        mov     eax, dword [ebp+10H]                    ; 1A90 _ 8B. 45, 10
        add     eax, 4095                               ; 1A93 _ 05, 00000FFF
        and     eax, 0FFFFF000H                         ; 1A98 _ 25, FFFFF000
        mov     dword [ebp+10H], eax                    ; 1A9D _ 89. 45, 10
        push    dword [ebp+10H]                         ; 1AA0 _ FF. 75, 10
        push    dword [ebp+0CH]                         ; 1AA3 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1AA6 _ FF. 75, 08
        call    memman_free                             ; 1AA9 _ E8, FFFFFFFC(rel)
        add     esp, 12                                 ; 1AAE _ 83. C4, 0C
        mov     dword [ebp-4H], eax                     ; 1AB1 _ 89. 45, FC
        mov     eax, dword [ebp-4H]                     ; 1AB4 _ 8B. 45, FC
        leave                                           ; 1AB7 _ C9
        ret                                             ; 1AB8 _ C3
; memman_free_4K End of function

shtctl_init:; Function begin
        push    ebp                                     ; 1AB9 _ 55
        mov     ebp, esp                                ; 1ABA _ 89. E5
        sub     esp, 24                                 ; 1ABC _ 83. EC, 18
        sub     esp, 8                                  ; 1ABF _ 83. EC, 08
        push    9232                                    ; 1AC2 _ 68, 00002410
        push    dword [ebp+8H]                          ; 1AC7 _ FF. 75, 08
        call    memman_alloc_4K                         ; 1ACA _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1ACF _ 83. C4, 10
        mov     dword [ebp-0CH], eax                    ; 1AD2 _ 89. 45, F4
        cmp     dword [ebp-0CH], 0                      ; 1AD5 _ 83. 7D, F4, 00
        jnz     ?_092                                   ; 1AD9 _ 75, 07
        mov     eax, 0                                  ; 1ADB _ B8, 00000000
        jmp     ?_095                                   ; 1AE0 _ EB, 54

?_092:  mov     eax, dword [ebp-0CH]                    ; 1AE2 _ 8B. 45, F4
        mov     edx, dword [ebp+0CH]                    ; 1AE5 _ 8B. 55, 0C
        mov     dword [eax], edx                        ; 1AE8 _ 89. 10
        mov     eax, dword [ebp-0CH]                    ; 1AEA _ 8B. 45, F4
        mov     edx, dword [ebp+10H]                    ; 1AED _ 8B. 55, 10
        mov     dword [eax+4H], edx                     ; 1AF0 _ 89. 50, 04
        mov     eax, dword [ebp-0CH]                    ; 1AF3 _ 8B. 45, F4
        mov     edx, dword [ebp+14H]                    ; 1AF6 _ 8B. 55, 14
        mov     dword [eax+8H], edx                     ; 1AF9 _ 89. 50, 08
        mov     eax, dword [ebp-0CH]                    ; 1AFC _ 8B. 45, F4
        mov     dword [eax+0CH], -1                     ; 1AFF _ C7. 40, 0C, FFFFFFFF
        mov     dword [ebp-10H], 0                      ; 1B06 _ C7. 45, F0, 00000000
        jmp     ?_094                                   ; 1B0D _ EB, 1B

?_093:  mov     eax, dword [ebp-0CH]                    ; 1B0F _ 8B. 45, F4
        mov     edx, dword [ebp-10H]                    ; 1B12 _ 8B. 55, F0
        add     edx, 33                                 ; 1B15 _ 83. C2, 21
        shl     edx, 5                                  ; 1B18 _ C1. E2, 05
        add     eax, edx                                ; 1B1B _ 01. D0
        add     eax, 12                                 ; 1B1D _ 83. C0, 0C
        mov     dword [eax], 0                          ; 1B20 _ C7. 00, 00000000
        add     dword [ebp-10H], 1                      ; 1B26 _ 83. 45, F0, 01
?_094:  cmp     dword [ebp-10H], 255                    ; 1B2A _ 81. 7D, F0, 000000FF
        jle     ?_093                                   ; 1B31 _ 7E, DC
        mov     eax, dword [ebp-0CH]                    ; 1B33 _ 8B. 45, F4
?_095:  leave                                           ; 1B36 _ C9
        ret                                             ; 1B37 _ C3
; shtctl_init End of function

sheet_alloc:; Function begin
        push    ebp                                     ; 1B38 _ 55
        mov     ebp, esp                                ; 1B39 _ 89. E5
        sub     esp, 16                                 ; 1B3B _ 83. EC, 10
        mov     dword [ebp-8H], 0                       ; 1B3E _ C7. 45, F8, 00000000
        jmp     ?_098                                   ; 1B45 _ EB, 48

?_096:  mov     eax, dword [ebp+8H]                     ; 1B47 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 1B4A _ 8B. 55, F8
        add     edx, 33                                 ; 1B4D _ 83. C2, 21
        shl     edx, 5                                  ; 1B50 _ C1. E2, 05
        add     eax, edx                                ; 1B53 _ 01. D0
        add     eax, 12                                 ; 1B55 _ 83. C0, 0C
        mov     eax, dword [eax]                        ; 1B58 _ 8B. 00
        test    eax, eax                                ; 1B5A _ 85. C0
        jnz     ?_097                                   ; 1B5C _ 75, 2D
        mov     eax, dword [ebp-8H]                     ; 1B5E _ 8B. 45, F8
        shl     eax, 5                                  ; 1B61 _ C1. E0, 05
        lea     edx, [eax+410H]                         ; 1B64 _ 8D. 90, 00000410
        mov     eax, dword [ebp+8H]                     ; 1B6A _ 8B. 45, 08
        add     eax, edx                                ; 1B6D _ 01. D0
        mov     dword [ebp-4H], eax                     ; 1B6F _ 89. 45, FC
        mov     eax, dword [ebp-4H]                     ; 1B72 _ 8B. 45, FC
        mov     dword [eax+1CH], 1                      ; 1B75 _ C7. 40, 1C, 00000001
        mov     eax, dword [ebp-4H]                     ; 1B7C _ 8B. 45, FC
        mov     dword [eax+18H], -1                     ; 1B7F _ C7. 40, 18, FFFFFFFF
        mov     eax, dword [ebp-4H]                     ; 1B86 _ 8B. 45, FC
        jmp     ?_099                                   ; 1B89 _ EB, 12

?_097:  add     dword [ebp-8H], 1                       ; 1B8B _ 83. 45, F8, 01
?_098:  cmp     dword [ebp-8H], 255                     ; 1B8F _ 81. 7D, F8, 000000FF
        jle     ?_096                                   ; 1B96 _ 7E, AF
        mov     eax, 0                                  ; 1B98 _ B8, 00000000
?_099:  leave                                           ; 1B9D _ C9
        ret                                             ; 1B9E _ C3
; sheet_alloc End of function

sheet_setbuf:; Function begin
        push    ebp                                     ; 1B9F _ 55
        mov     ebp, esp                                ; 1BA0 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 1BA2 _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 1BA5 _ 8B. 55, 0C
        mov     dword [eax], edx                        ; 1BA8 _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 1BAA _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 1BAD _ 8B. 55, 10
        mov     dword [eax+4H], edx                     ; 1BB0 _ 89. 50, 04
        mov     eax, dword [ebp+8H]                     ; 1BB3 _ 8B. 45, 08
        mov     edx, dword [ebp+14H]                    ; 1BB6 _ 8B. 55, 14
        mov     dword [eax+8H], edx                     ; 1BB9 _ 89. 50, 08
        mov     eax, dword [ebp+8H]                     ; 1BBC _ 8B. 45, 08
        mov     edx, dword [ebp+18H]                    ; 1BBF _ 8B. 55, 18
        mov     dword [eax+14H], edx                    ; 1BC2 _ 89. 50, 14
        nop                                             ; 1BC5 _ 90
        pop     ebp                                     ; 1BC6 _ 5D
        ret                                             ; 1BC7 _ C3
; sheet_setbuf End of function

sheet_level_updown:; Function begin
        push    ebp                                     ; 1BC8 _ 55
        mov     ebp, esp                                ; 1BC9 _ 89. E5
        push    ebx                                     ; 1BCB _ 53
        sub     esp, 36                                 ; 1BCC _ 83. EC, 24
        mov     eax, dword [ebp+0CH]                    ; 1BCF _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 1BD2 _ 8B. 40, 18
        mov     dword [ebp-0CH], eax                    ; 1BD5 _ 89. 45, F4
        mov     eax, dword [ebp+8H]                     ; 1BD8 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 1BDB _ 8B. 40, 0C
        add     eax, 1                                  ; 1BDE _ 83. C0, 01
        cmp     dword [ebp+10H], eax                    ; 1BE1 _ 39. 45, 10
        jle     ?_100                                   ; 1BE4 _ 7E, 0C
        mov     eax, dword [ebp+8H]                     ; 1BE6 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 1BE9 _ 8B. 40, 0C
        add     eax, 1                                  ; 1BEC _ 83. C0, 01
        mov     dword [ebp+10H], eax                    ; 1BEF _ 89. 45, 10
?_100:  cmp     dword [ebp+10H], -1                     ; 1BF2 _ 83. 7D, 10, FF
        jge     ?_101                                   ; 1BF6 _ 7D, 07
        mov     dword [ebp+10H], -1                     ; 1BF8 _ C7. 45, 10, FFFFFFFF
?_101:  mov     eax, dword [ebp+0CH]                    ; 1BFF _ 8B. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 1C02 _ 8B. 55, 10
        mov     dword [eax+18H], edx                    ; 1C05 _ 89. 50, 18
        mov     eax, dword [ebp-0CH]                    ; 1C08 _ 8B. 45, F4
        cmp     eax, dword [ebp+10H]                    ; 1C0B _ 3B. 45, 10
        jle     ?_109                                   ; 1C0E _ 0F 8E, 000000F7
        cmp     dword [ebp+10H], 0                      ; 1C14 _ 83. 7D, 10, 00
        js      ?_104                                   ; 1C18 _ 78, 52
        mov     eax, dword [ebp-0CH]                    ; 1C1A _ 8B. 45, F4
        mov     dword [ebp-1CH], eax                    ; 1C1D _ 89. 45, E4
        jmp     ?_103                                   ; 1C20 _ EB, 31

?_102:  mov     eax, dword [ebp-1CH]                    ; 1C22 _ 8B. 45, E4
        lea     edx, [eax-1H]                           ; 1C25 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 1C28 _ 8B. 45, 08
        add     edx, 4                                  ; 1C2B _ 83. C2, 04
        mov     edx, dword [eax+edx*4]                  ; 1C2E _ 8B. 14 90
        mov     eax, dword [ebp+8H]                     ; 1C31 _ 8B. 45, 08
        mov     ecx, dword [ebp-1CH]                    ; 1C34 _ 8B. 4D, E4
        add     ecx, 4                                  ; 1C37 _ 83. C1, 04
        mov     dword [eax+ecx*4], edx                  ; 1C3A _ 89. 14 88
        mov     eax, dword [ebp+8H]                     ; 1C3D _ 8B. 45, 08
        mov     edx, dword [ebp-1CH]                    ; 1C40 _ 8B. 55, E4
        add     edx, 4                                  ; 1C43 _ 83. C2, 04
        mov     eax, dword [eax+edx*4]                  ; 1C46 _ 8B. 04 90
        mov     edx, dword [ebp-1CH]                    ; 1C49 _ 8B. 55, E4
        mov     dword [eax+18H], edx                    ; 1C4C _ 89. 50, 18
        sub     dword [ebp-1CH], 1                      ; 1C4F _ 83. 6D, E4, 01
?_103:  mov     eax, dword [ebp-1CH]                    ; 1C53 _ 8B. 45, E4
        cmp     eax, dword [ebp+10H]                    ; 1C56 _ 3B. 45, 10
        jg      ?_102                                   ; 1C59 _ 7F, C7
        mov     eax, dword [ebp+8H]                     ; 1C5B _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 1C5E _ 8B. 55, 10
        lea     ecx, [edx+4H]                           ; 1C61 _ 8D. 4A, 04
        mov     edx, dword [ebp+0CH]                    ; 1C64 _ 8B. 55, 0C
        mov     dword [eax+ecx*4], edx                  ; 1C67 _ 89. 14 88
        jmp     ?_108                                   ; 1C6A _ EB, 5E

?_104:  mov     eax, dword [ebp+8H]                     ; 1C6C _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 1C6F _ 8B. 40, 0C
        cmp     dword [ebp-0CH], eax                    ; 1C72 _ 39. 45, F4
        jge     ?_107                                   ; 1C75 _ 7D, 44
        mov     eax, dword [ebp-0CH]                    ; 1C77 _ 8B. 45, F4
        mov     dword [ebp-18H], eax                    ; 1C7A _ 89. 45, E8
        jmp     ?_106                                   ; 1C7D _ EB, 31

?_105:  mov     eax, dword [ebp-18H]                    ; 1C7F _ 8B. 45, E8
        lea     edx, [eax+1H]                           ; 1C82 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 1C85 _ 8B. 45, 08
        add     edx, 4                                  ; 1C88 _ 83. C2, 04
        mov     edx, dword [eax+edx*4]                  ; 1C8B _ 8B. 14 90
        mov     eax, dword [ebp+8H]                     ; 1C8E _ 8B. 45, 08
        mov     ecx, dword [ebp-18H]                    ; 1C91 _ 8B. 4D, E8
        add     ecx, 4                                  ; 1C94 _ 83. C1, 04
        mov     dword [eax+ecx*4], edx                  ; 1C97 _ 89. 14 88
        mov     eax, dword [ebp+8H]                     ; 1C9A _ 8B. 45, 08
        mov     edx, dword [ebp-18H]                    ; 1C9D _ 8B. 55, E8
        add     edx, 4                                  ; 1CA0 _ 83. C2, 04
        mov     eax, dword [eax+edx*4]                  ; 1CA3 _ 8B. 04 90
        mov     edx, dword [ebp-18H]                    ; 1CA6 _ 8B. 55, E8
        mov     dword [eax+18H], edx                    ; 1CA9 _ 89. 50, 18
        add     dword [ebp-18H], 1                      ; 1CAC _ 83. 45, E8, 01
?_106:  mov     eax, dword [ebp+8H]                     ; 1CB0 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 1CB3 _ 8B. 40, 0C
        cmp     dword [ebp-18H], eax                    ; 1CB6 _ 39. 45, E8
        jl      ?_105                                   ; 1CB9 _ 7C, C4
?_107:  mov     eax, dword [ebp+8H]                     ; 1CBB _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 1CBE _ 8B. 40, 0C
        lea     edx, [eax-1H]                           ; 1CC1 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 1CC4 _ 8B. 45, 08
        mov     dword [eax+0CH], edx                    ; 1CC7 _ 89. 50, 0C
?_108:  mov     eax, dword [ebp+0CH]                    ; 1CCA _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 1CCD _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 1CD0 _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 1CD3 _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 1CD6 _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 1CD9 _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 1CDC _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 1CDF _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 1CE2 _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 1CE5 _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 1CE8 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 1CEB _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 1CEE _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 1CF1 _ 8B. 40, 0C
        sub     esp, 12                                 ; 1CF4 _ 83. EC, 0C
        push    ebx                                     ; 1CF7 _ 53
        push    ecx                                     ; 1CF8 _ 51
        push    edx                                     ; 1CF9 _ 52
        push    eax                                     ; 1CFA _ 50
        push    dword [ebp+8H]                          ; 1CFB _ FF. 75, 08
        call    sheet_refresh_new                       ; 1CFE _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1D03 _ 83. C4, 20
        jmp     ?_116                                   ; 1D06 _ E9, 0000010E

?_109:  mov     eax, dword [ebp-0CH]                    ; 1D0B _ 8B. 45, F4
        cmp     eax, dword [ebp+10H]                    ; 1D0E _ 3B. 45, 10
        jge     ?_116                                   ; 1D11 _ 0F 8D, 00000102
        cmp     dword [ebp-0CH], 0                      ; 1D17 _ 83. 7D, F4, 00
        js      ?_112                                   ; 1D1B _ 78, 52
        mov     eax, dword [ebp-0CH]                    ; 1D1D _ 8B. 45, F4
        mov     dword [ebp-14H], eax                    ; 1D20 _ 89. 45, EC
        jmp     ?_111                                   ; 1D23 _ EB, 31

?_110:  mov     eax, dword [ebp-14H]                    ; 1D25 _ 8B. 45, EC
        lea     edx, [eax+1H]                           ; 1D28 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 1D2B _ 8B. 45, 08
        add     edx, 4                                  ; 1D2E _ 83. C2, 04
        mov     edx, dword [eax+edx*4]                  ; 1D31 _ 8B. 14 90
        mov     eax, dword [ebp+8H]                     ; 1D34 _ 8B. 45, 08
        mov     ecx, dword [ebp-14H]                    ; 1D37 _ 8B. 4D, EC
        add     ecx, 4                                  ; 1D3A _ 83. C1, 04
        mov     dword [eax+ecx*4], edx                  ; 1D3D _ 89. 14 88
        mov     eax, dword [ebp+8H]                     ; 1D40 _ 8B. 45, 08
        mov     edx, dword [ebp-14H]                    ; 1D43 _ 8B. 55, EC
        add     edx, 4                                  ; 1D46 _ 83. C2, 04
        mov     eax, dword [eax+edx*4]                  ; 1D49 _ 8B. 04 90
        mov     edx, dword [ebp-14H]                    ; 1D4C _ 8B. 55, EC
        mov     dword [eax+18H], edx                    ; 1D4F _ 89. 50, 18
        add     dword [ebp-14H], 1                      ; 1D52 _ 83. 45, EC, 01
?_111:  mov     eax, dword [ebp-14H]                    ; 1D56 _ 8B. 45, EC
        cmp     eax, dword [ebp+10H]                    ; 1D59 _ 3B. 45, 10
        jl      ?_110                                   ; 1D5C _ 7C, C7
        mov     eax, dword [ebp+8H]                     ; 1D5E _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 1D61 _ 8B. 55, 10
        lea     ecx, [edx+4H]                           ; 1D64 _ 8D. 4A, 04
        mov     edx, dword [ebp+0CH]                    ; 1D67 _ 8B. 55, 0C
        mov     dword [eax+ecx*4], edx                  ; 1D6A _ 89. 14 88
        jmp     ?_115                                   ; 1D6D _ EB, 6E

?_112:  cmp     dword [ebp-0CH], 0                      ; 1D6F _ 83. 7D, F4, 00
        jns     ?_115                                   ; 1D73 _ 79, 68
        mov     eax, dword [ebp+8H]                     ; 1D75 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 1D78 _ 8B. 40, 0C
        mov     dword [ebp-10H], eax                    ; 1D7B _ 89. 45, F0
        jmp     ?_114                                   ; 1D7E _ EB, 37

?_113:  mov     eax, dword [ebp-10H]                    ; 1D80 _ 8B. 45, F0
        lea     ecx, [eax+1H]                           ; 1D83 _ 8D. 48, 01
        mov     eax, dword [ebp+8H]                     ; 1D86 _ 8B. 45, 08
        mov     edx, dword [ebp-10H]                    ; 1D89 _ 8B. 55, F0
        add     edx, 4                                  ; 1D8C _ 83. C2, 04
        mov     edx, dword [eax+edx*4]                  ; 1D8F _ 8B. 14 90
        mov     eax, dword [ebp+8H]                     ; 1D92 _ 8B. 45, 08
        add     ecx, 4                                  ; 1D95 _ 83. C1, 04
        mov     dword [eax+ecx*4], edx                  ; 1D98 _ 89. 14 88
        mov     eax, dword [ebp-10H]                    ; 1D9B _ 8B. 45, F0
        lea     edx, [eax+1H]                           ; 1D9E _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 1DA1 _ 8B. 45, 08
        add     edx, 4                                  ; 1DA4 _ 83. C2, 04
        mov     eax, dword [eax+edx*4]                  ; 1DA7 _ 8B. 04 90
        mov     edx, dword [ebp-10H]                    ; 1DAA _ 8B. 55, F0
        add     edx, 1                                  ; 1DAD _ 83. C2, 01
        mov     dword [eax+18H], edx                    ; 1DB0 _ 89. 50, 18
        sub     dword [ebp-10H], 1                      ; 1DB3 _ 83. 6D, F0, 01
?_114:  mov     eax, dword [ebp-10H]                    ; 1DB7 _ 8B. 45, F0
        cmp     eax, dword [ebp+10H]                    ; 1DBA _ 3B. 45, 10
        jge     ?_113                                   ; 1DBD _ 7D, C1
        mov     eax, dword [ebp+8H]                     ; 1DBF _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 1DC2 _ 8B. 55, 10
        lea     ecx, [edx+4H]                           ; 1DC5 _ 8D. 4A, 04
        mov     edx, dword [ebp+0CH]                    ; 1DC8 _ 8B. 55, 0C
        mov     dword [eax+ecx*4], edx                  ; 1DCB _ 89. 14 88
        mov     eax, dword [ebp+8H]                     ; 1DCE _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 1DD1 _ 8B. 40, 0C
        lea     edx, [eax+1H]                           ; 1DD4 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 1DD7 _ 8B. 45, 08
        mov     dword [eax+0CH], edx                    ; 1DDA _ 89. 50, 0C
?_115:  mov     eax, dword [ebp+0CH]                    ; 1DDD _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 1DE0 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 1DE3 _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 1DE6 _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 1DE9 _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 1DEC _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 1DEF _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 1DF2 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 1DF5 _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 1DF8 _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 1DFB _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 1DFE _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 1E01 _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 1E04 _ 8B. 40, 0C
        sub     esp, 12                                 ; 1E07 _ 83. EC, 0C
        push    ebx                                     ; 1E0A _ 53
        push    ecx                                     ; 1E0B _ 51
        push    edx                                     ; 1E0C _ 52
        push    eax                                     ; 1E0D _ 50
        push    dword [ebp+8H]                          ; 1E0E _ FF. 75, 08
        call    sheet_refresh_new                       ; 1E11 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1E16 _ 83. C4, 20
?_116:  nop                                             ; 1E19 _ 90
        mov     ebx, dword [ebp-4H]                     ; 1E1A _ 8B. 5D, FC
        leave                                           ; 1E1D _ C9
        ret                                             ; 1E1E _ C3
; sheet_level_updown End of function

sheet_refresh:; Function begin
        push    ebp                                     ; 1E1F _ 55
        mov     ebp, esp                                ; 1E20 _ 89. E5
        push    esi                                     ; 1E22 _ 56
        push    ebx                                     ; 1E23 _ 53
        mov     eax, dword [ebp+0CH]                    ; 1E24 _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 1E27 _ 8B. 40, 18
        test    eax, eax                                ; 1E2A _ 85. C0
        js      ?_117                                   ; 1E2C _ 78, 40
        mov     eax, dword [ebp+0CH]                    ; 1E2E _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 1E31 _ 8B. 50, 10
        mov     eax, dword [ebp+1CH]                    ; 1E34 _ 8B. 45, 1C
        lea     ebx, [edx+eax]                          ; 1E37 _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 1E3A _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 1E3D _ 8B. 50, 0C
        mov     eax, dword [ebp+18H]                    ; 1E40 _ 8B. 45, 18
        lea     ecx, [edx+eax]                          ; 1E43 _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 1E46 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 1E49 _ 8B. 50, 10
        mov     eax, dword [ebp+14H]                    ; 1E4C _ 8B. 45, 14
        add     edx, eax                                ; 1E4F _ 01. C2
        mov     eax, dword [ebp+0CH]                    ; 1E51 _ 8B. 45, 0C
        mov     esi, dword [eax+0CH]                    ; 1E54 _ 8B. 70, 0C
        mov     eax, dword [ebp+10H]                    ; 1E57 _ 8B. 45, 10
        add     eax, esi                                ; 1E5A _ 01. F0
        sub     esp, 12                                 ; 1E5C _ 83. EC, 0C
        push    ebx                                     ; 1E5F _ 53
        push    ecx                                     ; 1E60 _ 51
        push    edx                                     ; 1E61 _ 52
        push    eax                                     ; 1E62 _ 50
        push    dword [ebp+8H]                          ; 1E63 _ FF. 75, 08
        call    sheet_refresh_new                       ; 1E66 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1E6B _ 83. C4, 20
?_117:  mov     eax, 0                                  ; 1E6E _ B8, 00000000
        lea     esp, [ebp-8H]                           ; 1E73 _ 8D. 65, F8
        pop     ebx                                     ; 1E76 _ 5B
        pop     esi                                     ; 1E77 _ 5E
        pop     ebp                                     ; 1E78 _ 5D
        ret                                             ; 1E79 _ C3
; sheet_refresh End of function

sheet_slide:; Function begin
        push    ebp                                     ; 1E7A _ 55
        mov     ebp, esp                                ; 1E7B _ 89. E5
        sub     esp, 24                                 ; 1E7D _ 83. EC, 18
        mov     eax, dword [ebp+0CH]                    ; 1E80 _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 1E83 _ 8B. 40, 0C
        mov     dword [ebp-10H], eax                    ; 1E86 _ 89. 45, F0
        mov     eax, dword [ebp+0CH]                    ; 1E89 _ 8B. 45, 0C
        mov     eax, dword [eax+10H]                    ; 1E8C _ 8B. 40, 10
        mov     dword [ebp-0CH], eax                    ; 1E8F _ 89. 45, F4
        mov     eax, dword [ebp+0CH]                    ; 1E92 _ 8B. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 1E95 _ 8B. 55, 10
        mov     dword [eax+0CH], edx                    ; 1E98 _ 89. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 1E9B _ 8B. 45, 0C
        mov     edx, dword [ebp+14H]                    ; 1E9E _ 8B. 55, 14
        mov     dword [eax+10H], edx                    ; 1EA1 _ 89. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 1EA4 _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 1EA7 _ 8B. 40, 18
        test    eax, eax                                ; 1EAA _ 85. C0
        js      ?_118                                   ; 1EAC _ 78, 58
        mov     eax, dword [ebp+0CH]                    ; 1EAE _ 8B. 45, 0C
        mov     edx, dword [eax+8H]                     ; 1EB1 _ 8B. 50, 08
        mov     eax, dword [ebp-0CH]                    ; 1EB4 _ 8B. 45, F4
        add     edx, eax                                ; 1EB7 _ 01. C2
        mov     eax, dword [ebp+0CH]                    ; 1EB9 _ 8B. 45, 0C
        mov     ecx, dword [eax+4H]                     ; 1EBC _ 8B. 48, 04
        mov     eax, dword [ebp-10H]                    ; 1EBF _ 8B. 45, F0
        add     eax, ecx                                ; 1EC2 _ 01. C8
        sub     esp, 12                                 ; 1EC4 _ 83. EC, 0C
        push    edx                                     ; 1EC7 _ 52
        push    eax                                     ; 1EC8 _ 50
        push    dword [ebp-0CH]                         ; 1EC9 _ FF. 75, F4
        push    dword [ebp-10H]                         ; 1ECC _ FF. 75, F0
        push    dword [ebp+8H]                          ; 1ECF _ FF. 75, 08
        call    sheet_refresh_new                       ; 1ED2 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1ED7 _ 83. C4, 20
        mov     eax, dword [ebp+0CH]                    ; 1EDA _ 8B. 45, 0C
        mov     edx, dword [eax+8H]                     ; 1EDD _ 8B. 50, 08
        mov     eax, dword [ebp+14H]                    ; 1EE0 _ 8B. 45, 14
        add     edx, eax                                ; 1EE3 _ 01. C2
        mov     eax, dword [ebp+0CH]                    ; 1EE5 _ 8B. 45, 0C
        mov     ecx, dword [eax+4H]                     ; 1EE8 _ 8B. 48, 04
        mov     eax, dword [ebp+10H]                    ; 1EEB _ 8B. 45, 10
        add     eax, ecx                                ; 1EEE _ 01. C8
        sub     esp, 12                                 ; 1EF0 _ 83. EC, 0C
        push    edx                                     ; 1EF3 _ 52
        push    eax                                     ; 1EF4 _ 50
        push    dword [ebp+14H]                         ; 1EF5 _ FF. 75, 14
        push    dword [ebp+10H]                         ; 1EF8 _ FF. 75, 10
        push    dword [ebp+8H]                          ; 1EFB _ FF. 75, 08
        call    sheet_refresh_new                       ; 1EFE _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1F03 _ 83. C4, 20
?_118:  nop                                             ; 1F06 _ 90
        leave                                           ; 1F07 _ C9
        ret                                             ; 1F08 _ C3
; sheet_slide End of function

sheet_refresh_new:; Function begin
        push    ebp                                     ; 1F09 _ 55
        mov     ebp, esp                                ; 1F0A _ 89. E5
        sub     esp, 48                                 ; 1F0C _ 83. EC, 30
        mov     eax, dword [ebp+8H]                     ; 1F0F _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 1F12 _ 8B. 00
        mov     dword [ebp-14H], eax                    ; 1F14 _ 89. 45, EC
        mov     dword [ebp-20H], 0                      ; 1F17 _ C7. 45, E0, 00000000
        jmp     ?_125                                   ; 1F1E _ E9, 000000DC

?_119:  mov     eax, dword [ebp+8H]                     ; 1F23 _ 8B. 45, 08
        mov     edx, dword [ebp-20H]                    ; 1F26 _ 8B. 55, E0
        add     edx, 4                                  ; 1F29 _ 83. C2, 04
        mov     eax, dword [eax+edx*4]                  ; 1F2C _ 8B. 04 90
        mov     dword [ebp-10H], eax                    ; 1F2F _ 89. 45, F0
        mov     eax, dword [ebp-10H]                    ; 1F32 _ 8B. 45, F0
        mov     eax, dword [eax]                        ; 1F35 _ 8B. 00
        mov     dword [ebp-0CH], eax                    ; 1F37 _ 89. 45, F4
        mov     dword [ebp-1CH], 0                      ; 1F3A _ C7. 45, E4, 00000000
        jmp     ?_124                                   ; 1F41 _ E9, 000000A6

?_120:  mov     eax, dword [ebp-10H]                    ; 1F46 _ 8B. 45, F0
        mov     edx, dword [eax+10H]                    ; 1F49 _ 8B. 50, 10
        mov     eax, dword [ebp-1CH]                    ; 1F4C _ 8B. 45, E4
        add     eax, edx                                ; 1F4F _ 01. D0
        mov     dword [ebp-8H], eax                     ; 1F51 _ 89. 45, F8
        mov     dword [ebp-18H], 0                      ; 1F54 _ C7. 45, E8, 00000000
        jmp     ?_123                                   ; 1F5B _ EB, 7C

?_121:  mov     eax, dword [ebp-10H]                    ; 1F5D _ 8B. 45, F0
        mov     edx, dword [eax+0CH]                    ; 1F60 _ 8B. 50, 0C
        mov     eax, dword [ebp-18H]                    ; 1F63 _ 8B. 45, E8
        add     eax, edx                                ; 1F66 _ 01. D0
        mov     dword [ebp-4H], eax                     ; 1F68 _ 89. 45, FC
        mov     eax, dword [ebp+0CH]                    ; 1F6B _ 8B. 45, 0C
        cmp     eax, dword [ebp-4H]                     ; 1F6E _ 3B. 45, FC
        jg      ?_122                                   ; 1F71 _ 7F, 62
        mov     eax, dword [ebp-4H]                     ; 1F73 _ 8B. 45, FC
        cmp     eax, dword [ebp+14H]                    ; 1F76 _ 3B. 45, 14
        jge     ?_122                                   ; 1F79 _ 7D, 5A
        mov     eax, dword [ebp+10H]                    ; 1F7B _ 8B. 45, 10
        cmp     eax, dword [ebp-8H]                     ; 1F7E _ 3B. 45, F8
        jg      ?_122                                   ; 1F81 _ 7F, 52
        mov     eax, dword [ebp-8H]                     ; 1F83 _ 8B. 45, F8
        cmp     eax, dword [ebp+18H]                    ; 1F86 _ 3B. 45, 18
        jge     ?_122                                   ; 1F89 _ 7D, 4A
        mov     eax, dword [ebp-10H]                    ; 1F8B _ 8B. 45, F0
        mov     eax, dword [eax+4H]                     ; 1F8E _ 8B. 40, 04
        imul    eax, dword [ebp-1CH]                    ; 1F91 _ 0F AF. 45, E4
        mov     edx, eax                                ; 1F95 _ 89. C2
        mov     eax, dword [ebp-18H]                    ; 1F97 _ 8B. 45, E8
        add     eax, edx                                ; 1F9A _ 01. D0
        mov     edx, eax                                ; 1F9C _ 89. C2
        mov     eax, dword [ebp-0CH]                    ; 1F9E _ 8B. 45, F4
        add     eax, edx                                ; 1FA1 _ 01. D0
        movzx   eax, byte [eax]                         ; 1FA3 _ 0F B6. 00
        mov     byte [ebp-21H], al                      ; 1FA6 _ 88. 45, DF
        movzx   edx, byte [ebp-21H]                     ; 1FA9 _ 0F B6. 55, DF
        mov     eax, dword [ebp-10H]                    ; 1FAD _ 8B. 45, F0
        mov     eax, dword [eax+14H]                    ; 1FB0 _ 8B. 40, 14
        cmp     edx, eax                                ; 1FB3 _ 39. C2
        jz      ?_122                                   ; 1FB5 _ 74, 1E
        mov     eax, dword [ebp+8H]                     ; 1FB7 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 1FBA _ 8B. 40, 04
        imul    eax, dword [ebp-8H]                     ; 1FBD _ 0F AF. 45, F8
        mov     edx, eax                                ; 1FC1 _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 1FC3 _ 8B. 45, FC
        add     eax, edx                                ; 1FC6 _ 01. D0
        mov     edx, eax                                ; 1FC8 _ 89. C2
        mov     eax, dword [ebp-14H]                    ; 1FCA _ 8B. 45, EC
        add     edx, eax                                ; 1FCD _ 01. C2
        movzx   eax, byte [ebp-21H]                     ; 1FCF _ 0F B6. 45, DF
        mov     byte [edx], al                          ; 1FD3 _ 88. 02
?_122:  add     dword [ebp-18H], 1                      ; 1FD5 _ 83. 45, E8, 01
?_123:  mov     eax, dword [ebp-10H]                    ; 1FD9 _ 8B. 45, F0
        mov     eax, dword [eax+4H]                     ; 1FDC _ 8B. 40, 04
        cmp     dword [ebp-18H], eax                    ; 1FDF _ 39. 45, E8
        jl      ?_121                                   ; 1FE2 _ 0F 8C, FFFFFF75
        add     dword [ebp-1CH], 1                      ; 1FE8 _ 83. 45, E4, 01
?_124:  mov     eax, dword [ebp-10H]                    ; 1FEC _ 8B. 45, F0
        mov     eax, dword [eax+8H]                     ; 1FEF _ 8B. 40, 08
        cmp     dword [ebp-1CH], eax                    ; 1FF2 _ 39. 45, E4
        jl      ?_120                                   ; 1FF5 _ 0F 8C, FFFFFF4B
        add     dword [ebp-20H], 1                      ; 1FFB _ 83. 45, E0, 01
?_125:  mov     eax, dword [ebp+8H]                     ; 1FFF _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 2002 _ 8B. 40, 0C
        cmp     dword [ebp-20H], eax                    ; 2005 _ 39. 45, E0
        jle     ?_119                                   ; 2008 _ 0F 8E, FFFFFF15
        nop                                             ; 200E _ 90
        leave                                           ; 200F _ C9
        ret                                             ; 2010 _ C3
; sheet_refresh_new End of function



?_126:                                                  ; byte
        db 54H, 6FH, 74H, 61H, 6CH, 20H, 4DH, 65H       ; 0000 _ Total Me
        db 6DH, 20H, 53H, 69H, 7AH, 65H, 20H, 69H       ; 0008 _ m Size i
        db 73H, 3AH, 20H, 00H                           ; 0010 _ s: .

?_127:                                                  ; byte
        db 4DH, 42H, 00H                                ; 0014 _ MB.

?_128:                                                  ; byte
        db 4EH, 45H, 55H, 51H, 00H                      ; 0017 _ NEUQ.

?_129:                                                  ; byte
        db 54H, 68H, 65H, 20H, 6DH, 6FH, 75H, 73H       ; 001C _ The mous
        db 65H, 20H, 69H, 73H, 20H, 6DH, 6FH, 76H       ; 0024 _ e is mov
        db 69H, 6EH, 67H, 2EH, 2EH, 2EH, 00H            ; 002C _ ing....

?_130:                                                  ; byte
        db 50H, 61H, 67H, 65H, 20H, 69H, 73H, 3AH       ; 0033 _ Page is:
        db 20H, 00H                                     ; 003B _  .

?_131:                                                  ; byte
        db 42H, 61H, 73H, 65H, 41H, 64H, 64H, 72H       ; 003D _ BaseAddr
        db 4CH, 6FH, 77H, 3AH, 20H, 00H                 ; 0045 _ Low: .

?_132:                                                  ; byte
        db 42H, 61H, 73H, 65H, 41H, 64H, 64H, 72H       ; 004B _ BaseAddr
        db 48H, 69H, 67H, 68H, 3AH, 20H, 00H            ; 0053 _ High: .

?_133:                                                  ; byte
        db 4CH, 65H, 6EH, 67H, 74H, 68H, 4CH, 6FH       ; 005A _ LengthLo
        db 77H, 3AH, 20H, 00H                           ; 0062 _ w: .

?_134:                                                  ; byte
        db 4CH, 65H, 6EH, 67H, 74H, 68H, 48H, 69H       ; 0066 _ LengthHi
        db 67H, 68H, 3AH, 20H, 00H                      ; 006E _ gh: .

?_135:                                                  ; byte
        db 54H, 79H, 70H, 65H, 3AH, 20H, 00H            ; 0073 _ Type: .

?_136:                                                  ; byte
        db 54H, 68H, 69H, 73H, 20H, 69H, 73H, 20H       ; 007A _ This is 
        db 42H, 4DH, 59H, 2EH, 2EH, 2EH, 00H            ; 0082 _ BMY....

?_137:                                                  ; byte
        db 32H, 30H, 31H, 37H, 38H, 30H, 31H, 33H       ; 0089 _ 20178013
        db 00H                                          ; 0091 _ .



keyVal:                                                 ; byte
        db 30H, 78H                                     ; 0000 _ 0x

?_138:  db 00H                                          ; 0002 _ .

?_139:  db 00H, 00H, 00H, 00H, 00H                      ; 0003 _ .....

memman: dd 00100000H, 00000000H                         ; 0008 _ 1048576 0 
        dd 00000000H, 00000000H                         ; 0010 _ 0 0 
        dd 00000000H, 00000000H                         ; 0018 _ 0 0 

table_rgb.1684:                                         ; byte
        db 00H, 00H, 00H, 0FFH, 00H, 00H, 00H, 0FFH     ; 0020 _ ........
        db 00H, 0FFH, 0FFH, 00H, 00H, 00H, 0FFH, 0FFH   ; 0028 _ ........
        db 00H, 0FFH, 00H, 0FFH, 0FFH, 0FFH, 0FFH, 0FFH ; 0030 _ ........
        db 0C6H, 0C6H, 0C6H, 84H, 00H, 00H, 00H, 84H    ; 0038 _ ........
        db 00H, 84H, 84H, 00H, 00H, 00H, 84H, 84H       ; 0040 _ ........
        db 00H, 84H, 00H, 78H, 0D7H, 84H, 84H, 84H      ; 0048 _ ...x....
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0050 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0058 _ ........

cursor.1729:                                            ; byte
        db 2AH, 2AH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH       ; 0060 _ **......
        db 2EH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH       ; 0068 _ ........
        db 2AH, 4FH, 2AH, 2EH, 2EH, 2EH, 2EH, 2EH       ; 0070 _ *O*.....
        db 2EH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH       ; 0078 _ ........
        db 2AH, 4FH, 4FH, 2AH, 2EH, 2EH, 2EH, 2EH       ; 0080 _ *OO*....
        db 2EH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH       ; 0088 _ ........
        db 2AH, 4FH, 4FH, 4FH, 2AH, 2EH, 2EH, 2EH       ; 0090 _ *OOO*...
        db 2EH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH       ; 0098 _ ........
        db 2AH, 4FH, 4FH, 4FH, 4FH, 2AH, 2EH, 2EH       ; 00A0 _ *OOOO*..
        db 2EH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH       ; 00A8 _ ........
        db 2AH, 4FH, 4FH, 4FH, 4FH, 4FH, 2AH, 2EH       ; 00B0 _ *OOOOO*.
        db 2EH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH       ; 00B8 _ ........
        db 2AH, 4FH, 4FH, 4FH, 4FH, 4FH, 4FH, 2AH       ; 00C0 _ *OOOOOO*
        db 2EH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH       ; 00C8 _ ........
        db 2AH, 4FH, 4FH, 4FH, 4FH, 4FH, 4FH, 4FH       ; 00D0 _ *OOOOOOO
        db 2AH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH       ; 00D8 _ *.......
        db 2AH, 4FH, 4FH, 4FH, 4FH, 4FH, 2AH, 2AH       ; 00E0 _ *OOOOO**
        db 2EH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH       ; 00E8 _ ........
        db 2AH, 4FH, 4FH, 4FH, 4FH, 4FH, 2AH, 2EH       ; 00F0 _ *OOOOO*.
        db 2EH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH       ; 00F8 _ ........
        db 2AH, 4FH, 2AH, 2AH, 4FH, 4FH, 2AH, 2EH       ; 0100 _ *O**OO*.
        db 2EH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH       ; 0108 _ ........
        db 2AH, 2AH, 2EH, 2EH, 2AH, 4FH, 4FH, 2AH       ; 0110 _ **..*OO*
        db 2EH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH       ; 0118 _ ........
        db 2EH, 2EH, 2EH, 2EH, 2AH, 4FH, 4FH, 2AH       ; 0120 _ ....*OO*
        db 2EH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH       ; 0128 _ ........
        db 2EH, 2EH, 2EH, 2EH, 2EH, 2AH, 4FH, 4FH       ; 0130 _ .....*OO
        db 2AH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH       ; 0138 _ *.......
        db 2EH, 2EH, 2EH, 2EH, 2EH, 2AH, 4FH, 4FH       ; 0140 _ .....*OO
        db 2AH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH       ; 0148 _ *.......
        db 2EH, 2EH, 2EH, 2EH, 2EH, 2EH, 2AH, 2AH       ; 0150 _ ......**
        db 2EH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH       ; 0158 _ ........

closebtn.1869:                                          ; byte
        db 4FH, 4FH, 4FH, 4FH, 4FH, 4FH, 4FH, 4FH       ; 0160 _ OOOOOOOO
        db 4FH, 4FH, 4FH, 4FH, 4FH, 4FH, 4FH, 40H       ; 0168 _ OOOOOOO@
        db 4FH, 51H, 51H, 51H, 51H, 51H, 51H, 51H       ; 0170 _ OQQQQQQQ
        db 51H, 51H, 51H, 51H, 51H, 51H, 24H, 40H       ; 0178 _ QQQQQQ$@
        db 4FH, 51H, 51H, 51H, 51H, 51H, 51H, 51H       ; 0180 _ OQQQQQQQ
        db 51H, 51H, 51H, 51H, 51H, 51H, 24H, 40H       ; 0188 _ QQQQQQ$@
        db 4FH, 51H, 51H, 51H, 40H, 40H, 51H, 51H       ; 0190 _ OQQQ@@QQ
        db 51H, 51H, 40H, 40H, 51H, 51H, 24H, 40H       ; 0198 _ QQ@@QQ$@
        db 4FH, 51H, 51H, 51H, 51H, 40H, 40H, 51H       ; 01A0 _ OQQQQ@@Q
        db 51H, 40H, 40H, 51H, 51H, 51H, 24H, 40H       ; 01A8 _ Q@@QQQ$@
        db 4FH, 51H, 51H, 51H, 51H, 51H, 40H, 40H       ; 01B0 _ OQQQQQ@@
        db 40H, 40H, 51H, 51H, 51H, 51H, 24H, 40H       ; 01B8 _ @@QQQQ$@
        db 4FH, 51H, 51H, 51H, 51H, 51H, 51H, 40H       ; 01C0 _ OQQQQQQ@
        db 40H, 51H, 51H, 51H, 51H, 51H, 24H, 40H       ; 01C8 _ @QQQQQ$@
        db 4FH, 51H, 51H, 51H, 51H, 51H, 40H, 40H       ; 01D0 _ OQQQQQ@@
        db 40H, 40H, 51H, 51H, 51H, 51H, 24H, 40H       ; 01D8 _ @@QQQQ$@
        db 4FH, 51H, 51H, 51H, 51H, 40H, 40H, 51H       ; 01E0 _ OQQQQ@@Q
        db 51H, 40H, 40H, 51H, 51H, 51H, 24H, 40H       ; 01E8 _ Q@@QQQ$@
        db 4FH, 51H, 51H, 51H, 40H, 40H, 51H, 51H       ; 01F0 _ OQQQ@@QQ
        db 51H, 51H, 40H, 40H, 51H, 51H, 24H, 40H       ; 01F8 _ QQ@@QQ$@
        db 4FH, 51H, 51H, 51H, 51H, 51H, 51H, 51H       ; 0200 _ OQQQQQQQ
        db 51H, 51H, 51H, 51H, 51H, 51H, 24H, 40H       ; 0208 _ QQQQQQ$@
        db 4FH, 51H, 51H, 51H, 51H, 51H, 51H, 51H       ; 0210 _ OQQQQQQQ
        db 51H, 51H, 51H, 51H, 51H, 51H, 24H, 40H       ; 0218 _ QQQQQQ$@
        db 4FH, 24H, 24H, 24H, 24H, 24H, 24H, 24H       ; 0220 _ O$$$$$$$
        db 24H, 24H, 24H, 24H, 24H, 24H, 24H, 40H       ; 0228 _ $$$$$$$@
        db 40H, 40H, 40H, 40H, 40H, 40H, 40H, 40H       ; 0230 _ @@@@@@@@
        db 40H, 40H, 40H, 40H, 40H, 40H, 40H, 40H       ; 0238 _ @@@@@@@@



bootInfo:                                               ; qword
        resb    4                                       ; 0000

?_140:  resw    1                                       ; 0004

?_141:  resw    1                                       ; 0006

keyInfo:                                                ; byte
        resb    24                                      ; 0008

mouseInfo:                                              ; byte
        resb    32                                      ; 0020

keybuf:                                                 ; yword
        resb    32                                      ; 0040

mousebuf:                                               ; byte
        resb    128                                     ; 0060

mouse_move:                                             ; oword
        resb    16                                      ; 00E0

mx:     resd    1                                       ; 00F0

my:     resd    1                                       ; 00F4

buf_back: resd  2                                       ; 00F8

buf_mouse:                                              ; byte
        resb    256                                     ; 0100

str.1772:                                               ; byte
        resb    1                                       ; 0200

?_142:  resb    9                                       ; 0201

?_143:  resb    2                                       ; 020A

line.1821:                                              ; dword
        resd    1                                       ; 020C

pos.1820: resd  1                                       ; 0210


