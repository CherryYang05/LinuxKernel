; Disassembly of file: ckernel.o
; Tue Mar 23 14:57:24 2021
; Mode: 32 bits
; Syntax: YASM/NASM
; Instruction set: 80386






CMain:  ; Function begin
        push    ebp                                     ; 0000 _ 55
        mov     ebp, esp                                ; 0001 _ 89. E5
        push    ebx                                     ; 0003 _ 53
        sub     esp, 68                                 ; 0004 _ 83. EC, 44
        sub     esp, 12                                 ; 0007 _ 83. EC, 0C
        push    bootInfo                                ; 000A _ 68, 00000000(d)
        call    initBootInfo                            ; 000F _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0014 _ 83. C4, 10
        mov     eax, dword [bootInfo]                   ; 0017 _ A1, 00000000(d)
        mov     dword [ebp-38H], eax                    ; 001C _ 89. 45, C8
        movzx   eax, word [?_153]                       ; 001F _ 0F B7. 05, 00000004(d)
        cwde                                            ; 0026 _ 98
        mov     dword [ebp-34H], eax                    ; 0027 _ 89. 45, CC
        movzx   eax, word [?_154]                       ; 002A _ 0F B7. 05, 00000006(d)
        cwde                                            ; 0031 _ 98
        mov     dword [ebp-30H], eax                    ; 0032 _ 89. 45, D0
        mov     dword [ebp-2CH], 0                      ; 0035 _ C7. 45, D4, 00000000
        mov     dword [ebp-28H], 0                      ; 003C _ C7. 45, D8, 00000000
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
        mov     dword [ebp-24H], eax                    ; 0083 _ 89. 45, DC
        call    get_memory_block_count                  ; 0086 _ E8, FFFFFFFC(rel)
        mov     dword [ebp-20H], eax                    ; 008B _ 89. 45, E0
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
        mov     dword [ebp-1CH], eax                    ; 00CE _ 89. 45, E4
        mov     eax, dword [ebp-1CH]                    ; 00D1 _ 8B. 45, E4
        sub     esp, 12                                 ; 00D4 _ 83. EC, 0C
        push    eax                                     ; 00D7 _ 50
        call    intToHexStr                             ; 00D8 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 00DD _ 83. C4, 10
        mov     dword [ebp-18H], eax                    ; 00E0 _ 89. 45, E8
        sub     esp, 8                                  ; 00E3 _ 83. EC, 08
        push    ?_141                                   ; 00E6 _ 68, 00000000(d)
        push    3                                       ; 00EB _ 6A, 03
        push    0                                       ; 00ED _ 6A, 00
        push    0                                       ; 00EF _ 6A, 00
        push    dword [ebp-2CH]                         ; 00F1 _ FF. 75, D4
        push    dword [ebp-14H]                         ; 00F4 _ FF. 75, EC
        call    showString                              ; 00F7 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 00FC _ 83. C4, 20
        sub     esp, 8                                  ; 00FF _ 83. EC, 08
        push    dword [ebp-18H]                         ; 0102 _ FF. 75, E8
        push    3                                       ; 0105 _ 6A, 03
        push    0                                       ; 0107 _ 6A, 00
        push    152                                     ; 0109 _ 68, 00000098
        push    dword [ebp-2CH]                         ; 010E _ FF. 75, D4
        push    dword [ebp-14H]                         ; 0111 _ FF. 75, EC
        call    showString                              ; 0114 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0119 _ 83. C4, 20
        sub     esp, 8                                  ; 011C _ 83. EC, 08
        push    ?_142                                   ; 011F _ 68, 00000014(d)
        push    3                                       ; 0124 _ 6A, 03
        push    0                                       ; 0126 _ 6A, 00
        push    240                                     ; 0128 _ 68, 000000F0
        push    dword [ebp-2CH]                         ; 012D _ FF. 75, D4
        push    dword [ebp-14H]                         ; 0130 _ FF. 75, EC
        call    showString                              ; 0133 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0138 _ 83. C4, 20
        mov     eax, dword [memman]                     ; 013B _ A1, 00000008(d)
        push    dword [ebp-30H]                         ; 0140 _ FF. 75, D0
        push    dword [ebp-34H]                         ; 0143 _ FF. 75, CC
        push    dword [ebp-38H]                         ; 0146 _ FF. 75, C8
        push    eax                                     ; 0149 _ 50
        call    shtctl_init                             ; 014A _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 014F _ 83. C4, 10
        mov     dword [ebp-14H], eax                    ; 0152 _ 89. 45, EC
        sub     esp, 12                                 ; 0155 _ 83. EC, 0C
        push    dword [ebp-14H]                         ; 0158 _ FF. 75, EC
        call    sheet_alloc                             ; 015B _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0160 _ 83. C4, 10
        mov     dword [ebp-2CH], eax                    ; 0163 _ 89. 45, D4
        sub     esp, 12                                 ; 0166 _ 83. EC, 0C
        push    dword [ebp-14H]                         ; 0169 _ FF. 75, EC
        call    sheet_alloc                             ; 016C _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0171 _ 83. C4, 10
        mov     dword [ebp-28H], eax                    ; 0174 _ 89. 45, D8
        mov     eax, dword [ebp-34H]                    ; 0177 _ 8B. 45, CC
        imul    eax, dword [ebp-30H]                    ; 017A _ 0F AF. 45, D0
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
        push    dword [ebp-30H]                         ; 019F _ FF. 75, D0
        push    dword [ebp-34H]                         ; 01A2 _ FF. 75, CC
        push    eax                                     ; 01A5 _ 50
        call    init_screen8                            ; 01A6 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 01AB _ 83. C4, 10
        mov     eax, dword [buf_back]                   ; 01AE _ A1, 000000F8(d)
        sub     esp, 12                                 ; 01B3 _ 83. EC, 0C
        push    99                                      ; 01B6 _ 6A, 63
        push    dword [ebp-30H]                         ; 01B8 _ FF. 75, D0
        push    dword [ebp-34H]                         ; 01BB _ FF. 75, CC
        push    eax                                     ; 01BE _ 50
        push    dword [ebp-2CH]                         ; 01BF _ FF. 75, D4
        call    sheet_setbuf                            ; 01C2 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 01C7 _ 83. C4, 20
        sub     esp, 12                                 ; 01CA _ 83. EC, 0C
        push    99                                      ; 01CD _ 6A, 63
        push    16                                      ; 01CF _ 6A, 10
        push    16                                      ; 01D1 _ 6A, 10
        push    buf_mouse                               ; 01D3 _ 68, 00000100(d)
        push    dword [ebp-28H]                         ; 01D8 _ FF. 75, D8
        call    sheet_setbuf                            ; 01DB _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 01E0 _ 83. C4, 20
        sub     esp, 8                                  ; 01E3 _ 83. EC, 08
        push    99                                      ; 01E6 _ 6A, 63
        push    buf_mouse                               ; 01E8 _ 68, 00000100(d)
        call    init_mouse_cursor                       ; 01ED _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 01F2 _ 83. C4, 10
        push    0                                       ; 01F5 _ 6A, 00
        push    0                                       ; 01F7 _ 6A, 00
        push    dword [ebp-2CH]                         ; 01F9 _ FF. 75, D4
        push    dword [ebp-14H]                         ; 01FC _ FF. 75, EC
        call    sheet_slide                             ; 01FF _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0204 _ 83. C4, 10
        mov     eax, dword [ebp-34H]                    ; 0207 _ 8B. 45, CC
        sub     eax, 16                                 ; 020A _ 83. E8, 10
        mov     edx, eax                                ; 020D _ 89. C2
        shr     edx, 31                                 ; 020F _ C1. EA, 1F
        add     eax, edx                                ; 0212 _ 01. D0
        sar     eax, 1                                  ; 0214 _ D1. F8
        mov     dword [mx], eax                         ; 0216 _ A3, 000000F0(d)
        mov     eax, dword [ebp-30H]                    ; 021B _ 8B. 45, D0
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
        push    dword [ebp-28H]                         ; 023C _ FF. 75, D8
        push    dword [ebp-14H]                         ; 023F _ FF. 75, EC
        call    sheet_slide                             ; 0242 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0247 _ 83. C4, 10
        sub     esp, 8                                  ; 024A _ 83. EC, 08
        push    ?_143                                   ; 024D _ 68, 00000017(d)
        push    dword [ebp-14H]                         ; 0252 _ FF. 75, EC
        call    messageBox                              ; 0255 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 025A _ 83. C4, 10
        mov     dword [ebp-10H], eax                    ; 025D _ 89. 45, F0
        sub     esp, 4                                  ; 0260 _ 83. EC, 04
        push    0                                       ; 0263 _ 6A, 00
        push    dword [ebp-2CH]                         ; 0265 _ FF. 75, D4
        push    dword [ebp-14H]                         ; 0268 _ FF. 75, EC
        call    sheet_level_updown                      ; 026B _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0270 _ 83. C4, 10
        sub     esp, 4                                  ; 0273 _ 83. EC, 04
        push    100                                     ; 0276 _ 6A, 64
        push    dword [ebp-28H]                         ; 0278 _ FF. 75, D8
        push    dword [ebp-14H]                         ; 027B _ FF. 75, EC
        call    sheet_level_updown                      ; 027E _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0283 _ 83. C4, 10
        call    io_sti                                  ; 0286 _ E8, FFFFFFFC(rel)
        sub     esp, 12                                 ; 028B _ 83. EC, 0C
        push    mouse_move                              ; 028E _ 68, 000000E0(d)
        call    enable_mouse                            ; 0293 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0298 _ 83. C4, 10
        mov     dword [ebp-40H], 0                      ; 029B _ C7. 45, C0, 00000000
        mov     dword [ebp-3CH], 0                      ; 02A2 _ C7. 45, C4, 00000000
        mov     byte [ebp-41H], 0                       ; 02A9 _ C6. 45, BF, 00
?_001:  mov     eax, dword [ebp-3CH]                    ; 02AD _ 8B. 45, C4
        sub     esp, 12                                 ; 02B0 _ 83. EC, 0C
        push    eax                                     ; 02B3 _ 50
        call    intToHexStr                             ; 02B4 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 02B9 _ 83. C4, 10
        mov     dword [ebp-0CH], eax                    ; 02BC _ 89. 45, F4
        add     dword [ebp-3CH], 1                      ; 02BF _ 83. 45, C4, 01
        mov     eax, dword [ebp-10H]                    ; 02C3 _ 8B. 45, F0
        mov     edx, dword [eax+4H]                     ; 02C6 _ 8B. 50, 04
        mov     eax, dword [ebp-10H]                    ; 02C9 _ 8B. 45, F0
        mov     eax, dword [eax]                        ; 02CC _ 8B. 00
        sub     esp, 4                                  ; 02CE _ 83. EC, 04
        push    38                                      ; 02D1 _ 6A, 26
        push    150                                     ; 02D3 _ 68, 00000096
        push    22                                      ; 02D8 _ 6A, 16
        push    8                                       ; 02DA _ 6A, 08
        push    8                                       ; 02DC _ 6A, 08
        push    edx                                     ; 02DE _ 52
        push    eax                                     ; 02DF _ 50
        call    boxfill8                                ; 02E0 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 02E5 _ 83. C4, 20
        sub     esp, 8                                  ; 02E8 _ 83. EC, 08
        push    dword [ebp-0CH]                         ; 02EB _ FF. 75, F4
        push    10                                      ; 02EE _ 6A, 0A
        push    22                                      ; 02F0 _ 6A, 16
        push    8                                       ; 02F2 _ 6A, 08
        push    dword [ebp-10H]                         ; 02F4 _ FF. 75, F0
        push    dword [ebp-14H]                         ; 02F7 _ FF. 75, EC
        call    showString                              ; 02FA _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 02FF _ 83. C4, 20
        call    io_cli                                  ; 0302 _ E8, FFFFFFFC(rel)
        sub     esp, 12                                 ; 0307 _ 83. EC, 0C
        push    keyInfo                                 ; 030A _ 68, 00000008(d)
        call    fifo8_status                            ; 030F _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0314 _ 83. C4, 10
        mov     ebx, eax                                ; 0317 _ 89. C3
        sub     esp, 12                                 ; 0319 _ 83. EC, 0C
        push    mouseInfo                               ; 031C _ 68, 00000020(d)
        call    fifo8_status                            ; 0321 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0326 _ 83. C4, 10
        add     eax, ebx                                ; 0329 _ 01. D8
        test    eax, eax                                ; 032B _ 85. C0
        jnz     ?_002                                   ; 032D _ 75, 0A
        call    io_sti                                  ; 032F _ E8, FFFFFFFC(rel)
        jmp     ?_001                                   ; 0334 _ E9, FFFFFF74

?_002:  sub     esp, 12                                 ; 0339 _ 83. EC, 0C
        push    keyInfo                                 ; 033C _ 68, 00000008(d)
        call    fifo8_status                            ; 0341 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0346 _ 83. C4, 10
        test    eax, eax                                ; 0349 _ 85. C0
        jz      ?_003                                   ; 034B _ 74, 73
        call    io_sti                                  ; 034D _ E8, FFFFFFFC(rel)
        sub     esp, 12                                 ; 0352 _ 83. EC, 0C
        push    keyInfo                                 ; 0355 _ 68, 00000008(d)
        call    fifo8_get                               ; 035A _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 035F _ 83. C4, 10
        mov     byte [ebp-41H], al                      ; 0362 _ 88. 45, BF
        cmp     byte [ebp-41H], 28                      ; 0365 _ 80. 7D, BF, 1C
        jne     ?_001                                   ; 0369 _ 0F 85, FFFFFF3E
        mov     ecx, dword [buf_back]                   ; 036F _ 8B. 0D, 000000F8(d)
        mov     edx, dword [ebp-40H]                    ; 0375 _ 8B. 55, C0
        mov     eax, edx                                ; 0378 _ 89. D0
        shl     eax, 2                                  ; 037A _ C1. E0, 02
        add     eax, edx                                ; 037D _ 01. D0
        shl     eax, 2                                  ; 037F _ C1. E0, 02
        mov     edx, eax                                ; 0382 _ 89. C2
        mov     eax, dword [ebp-24H]                    ; 0384 _ 8B. 45, DC
        add     eax, edx                                ; 0387 _ 01. D0
        sub     esp, 4                                  ; 0389 _ 83. EC, 04
        push    7                                       ; 038C _ 6A, 07
        push    dword [ebp-34H]                         ; 038E _ FF. 75, CC
        push    dword [ebp-40H]                         ; 0391 _ FF. 75, C0
        push    ecx                                     ; 0394 _ 51
        push    eax                                     ; 0395 _ 50
        push    dword [ebp-2CH]                         ; 0396 _ FF. 75, D4
        push    dword [ebp-14H]                         ; 0399 _ FF. 75, EC
        call    showMemInfo                             ; 039C _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 03A1 _ 83. C4, 20
        add     dword [ebp-40H], 1                      ; 03A4 _ 83. 45, C0, 01
        mov     eax, dword [ebp-40H]                    ; 03A8 _ 8B. 45, C0
        cmp     eax, dword [ebp-20H]                    ; 03AB _ 3B. 45, E0
        jl      ?_001                                   ; 03AE _ 0F 8C, FFFFFEF9
        mov     dword [ebp-40H], 0                      ; 03B4 _ C7. 45, C0, 00000000
        jmp     ?_001                                   ; 03BB _ E9, FFFFFEED

?_003:  sub     esp, 12                                 ; 03C0 _ 83. EC, 0C
        push    mouseInfo                               ; 03C3 _ 68, 00000020(d)
        call    fifo8_status                            ; 03C8 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 03CD _ 83. C4, 10
        test    eax, eax                                ; 03D0 _ 85. C0
        je      ?_001                                   ; 03D2 _ 0F 84, FFFFFED5
        sub     esp, 4                                  ; 03D8 _ 83. EC, 04
        push    dword [ebp-28H]                         ; 03DB _ FF. 75, D8
        push    dword [ebp-2CH]                         ; 03DE _ FF. 75, D4
        push    dword [ebp-14H]                         ; 03E1 _ FF. 75, EC
        call    showMouseInfo                           ; 03E4 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 03E9 _ 83. C4, 10
        jmp     ?_001                                   ; 03EC _ E9, FFFFFEBC
; CMain End of function

initBootInfo:; Function begin
        push    ebp                                     ; 03F1 _ 55
        mov     ebp, esp                                ; 03F2 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 03F4 _ 8B. 45, 08
        mov     dword [eax], 655360                     ; 03F7 _ C7. 00, 000A0000
        mov     eax, dword [ebp+8H]                     ; 03FD _ 8B. 45, 08
; Note: Length-changing prefix causes delay on Intel processors
        mov     word [eax+4H], 320                      ; 0400 _ 66: C7. 40, 04, 0140
        mov     eax, dword [ebp+8H]                     ; 0406 _ 8B. 45, 08
; Note: Length-changing prefix causes delay on Intel processors
        mov     word [eax+6H], 200                      ; 0409 _ 66: C7. 40, 06, 00C8
        nop                                             ; 040F _ 90
        pop     ebp                                     ; 0410 _ 5D
        ret                                             ; 0411 _ C3
; initBootInfo End of function

showString:; Function begin
        push    ebp                                     ; 0412 _ 55
        mov     ebp, esp                                ; 0413 _ 89. E5
        push    ebx                                     ; 0415 _ 53
        sub     esp, 36                                 ; 0416 _ 83. EC, 24
        mov     eax, dword [ebp+18H]                    ; 0419 _ 8B. 45, 18
        mov     byte [ebp-1CH], al                      ; 041C _ 88. 45, E4
        mov     eax, dword [ebp+10H]                    ; 041F _ 8B. 45, 10
        mov     dword [ebp-0CH], eax                    ; 0422 _ 89. 45, F4
        jmp     ?_005                                   ; 0425 _ EB, 3E

?_004:  mov     eax, dword [ebp+1CH]                    ; 0427 _ 8B. 45, 1C
        movzx   eax, byte [eax]                         ; 042A _ 0F B6. 00
        movzx   eax, al                                 ; 042D _ 0F B6. C0
        shl     eax, 4                                  ; 0430 _ C1. E0, 04
        lea     ebx, [systemFont+eax]                   ; 0433 _ 8D. 98, 00000000(d)
        movsx   ecx, byte [ebp-1CH]                     ; 0439 _ 0F BE. 4D, E4
        mov     eax, dword [ebp+0CH]                    ; 043D _ 8B. 45, 0C
        mov     edx, dword [eax+4H]                     ; 0440 _ 8B. 50, 04
        mov     eax, dword [ebp+0CH]                    ; 0443 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 0446 _ 8B. 00
        sub     esp, 8                                  ; 0448 _ 83. EC, 08
        push    ebx                                     ; 044B _ 53
        push    ecx                                     ; 044C _ 51
        push    dword [ebp+14H]                         ; 044D _ FF. 75, 14
        push    dword [ebp+10H]                         ; 0450 _ FF. 75, 10
        push    edx                                     ; 0453 _ 52
        push    eax                                     ; 0454 _ 50
        call    showFont8                               ; 0455 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 045A _ 83. C4, 20
        add     dword [ebp+10H], 8                      ; 045D _ 83. 45, 10, 08
        add     dword [ebp+1CH], 1                      ; 0461 _ 83. 45, 1C, 01
?_005:  mov     eax, dword [ebp+1CH]                    ; 0465 _ 8B. 45, 1C
        movzx   eax, byte [eax]                         ; 0468 _ 0F B6. 00
        test    al, al                                  ; 046B _ 84. C0
        jnz     ?_004                                   ; 046D _ 75, B8
        mov     eax, dword [ebp+0CH]                    ; 046F _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 0472 _ 8B. 40, 18
        mov     edx, dword [ebp+14H]                    ; 0475 _ 8B. 55, 14
        add     edx, 16                                 ; 0478 _ 83. C2, 10
        sub     esp, 4                                  ; 047B _ 83. EC, 04
        push    eax                                     ; 047E _ 50
        push    edx                                     ; 047F _ 52
        push    dword [ebp+10H]                         ; 0480 _ FF. 75, 10
        push    dword [ebp+14H]                         ; 0483 _ FF. 75, 14
        push    dword [ebp-0CH]                         ; 0486 _ FF. 75, F4
        push    dword [ebp+0CH]                         ; 0489 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 048C _ FF. 75, 08
        call    sheet_refresh                           ; 048F _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0494 _ 83. C4, 20
        nop                                             ; 0497 _ 90
        mov     ebx, dword [ebp-4H]                     ; 0498 _ 8B. 5D, FC
        leave                                           ; 049B _ C9
        ret                                             ; 049C _ C3
; showString End of function

init_screen8:; Function begin
        push    ebp                                     ; 049D _ 55
        mov     ebp, esp                                ; 049E _ 89. E5
        push    ebx                                     ; 04A0 _ 53
        sub     esp, 4                                  ; 04A1 _ 83. EC, 04
        mov     eax, dword [ebp+10H]                    ; 04A4 _ 8B. 45, 10
        lea     edx, [eax-19H]                          ; 04A7 _ 8D. 50, E7
        mov     eax, dword [ebp+0CH]                    ; 04AA _ 8B. 45, 0C
        sub     eax, 1                                  ; 04AD _ 83. E8, 01
        sub     esp, 4                                  ; 04B0 _ 83. EC, 04
        push    edx                                     ; 04B3 _ 52
        push    eax                                     ; 04B4 _ 50
        push    0                                       ; 04B5 _ 6A, 00
        push    0                                       ; 04B7 _ 6A, 00
        push    14                                      ; 04B9 _ 6A, 0E
        push    dword [ebp+0CH]                         ; 04BB _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 04BE _ FF. 75, 08
        call    boxfill8                                ; 04C1 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 04C6 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 04C9 _ 8B. 45, 10
        lea     ecx, [eax-18H]                          ; 04CC _ 8D. 48, E8
        mov     eax, dword [ebp+0CH]                    ; 04CF _ 8B. 45, 0C
        lea     edx, [eax-1H]                           ; 04D2 _ 8D. 50, FF
        mov     eax, dword [ebp+10H]                    ; 04D5 _ 8B. 45, 10
        sub     eax, 24                                 ; 04D8 _ 83. E8, 18
        sub     esp, 4                                  ; 04DB _ 83. EC, 04
        push    ecx                                     ; 04DE _ 51
        push    edx                                     ; 04DF _ 52
        push    eax                                     ; 04E0 _ 50
        push    0                                       ; 04E1 _ 6A, 00
        push    8                                       ; 04E3 _ 6A, 08
        push    dword [ebp+0CH]                         ; 04E5 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 04E8 _ FF. 75, 08
        call    boxfill8                                ; 04EB _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 04F0 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 04F3 _ 8B. 45, 10
        lea     ecx, [eax-17H]                          ; 04F6 _ 8D. 48, E9
        mov     eax, dword [ebp+0CH]                    ; 04F9 _ 8B. 45, 0C
        lea     edx, [eax-1H]                           ; 04FC _ 8D. 50, FF
        mov     eax, dword [ebp+10H]                    ; 04FF _ 8B. 45, 10
        sub     eax, 23                                 ; 0502 _ 83. E8, 17
        sub     esp, 4                                  ; 0505 _ 83. EC, 04
        push    ecx                                     ; 0508 _ 51
        push    edx                                     ; 0509 _ 52
        push    eax                                     ; 050A _ 50
        push    0                                       ; 050B _ 6A, 00
        push    7                                       ; 050D _ 6A, 07
        push    dword [ebp+0CH]                         ; 050F _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 0512 _ FF. 75, 08
        call    boxfill8                                ; 0515 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 051A _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 051D _ 8B. 45, 10
        lea     ecx, [eax-1H]                           ; 0520 _ 8D. 48, FF
        mov     eax, dword [ebp+0CH]                    ; 0523 _ 8B. 45, 0C
        lea     edx, [eax-1H]                           ; 0526 _ 8D. 50, FF
        mov     eax, dword [ebp+10H]                    ; 0529 _ 8B. 45, 10
        sub     eax, 22                                 ; 052C _ 83. E8, 16
        sub     esp, 4                                  ; 052F _ 83. EC, 04
        push    ecx                                     ; 0532 _ 51
        push    edx                                     ; 0533 _ 52
        push    eax                                     ; 0534 _ 50
        push    0                                       ; 0535 _ 6A, 00
        push    8                                       ; 0537 _ 6A, 08
        push    dword [ebp+0CH]                         ; 0539 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 053C _ FF. 75, 08
        call    boxfill8                                ; 053F _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0544 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 0547 _ 8B. 45, 10
        lea     edx, [eax-14H]                          ; 054A _ 8D. 50, EC
        mov     eax, dword [ebp+10H]                    ; 054D _ 8B. 45, 10
        sub     eax, 20                                 ; 0550 _ 83. E8, 14
        sub     esp, 4                                  ; 0553 _ 83. EC, 04
        push    edx                                     ; 0556 _ 52
        push    51                                      ; 0557 _ 6A, 33
        push    eax                                     ; 0559 _ 50
        push    10                                      ; 055A _ 6A, 0A
        push    7                                       ; 055C _ 6A, 07
        push    dword [ebp+0CH]                         ; 055E _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 0561 _ FF. 75, 08
        call    boxfill8                                ; 0564 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0569 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 056C _ 8B. 45, 10
        lea     edx, [eax-4H]                           ; 056F _ 8D. 50, FC
        mov     eax, dword [ebp+10H]                    ; 0572 _ 8B. 45, 10
        sub     eax, 20                                 ; 0575 _ 83. E8, 14
        sub     esp, 4                                  ; 0578 _ 83. EC, 04
        push    edx                                     ; 057B _ 52
        push    9                                       ; 057C _ 6A, 09
        push    eax                                     ; 057E _ 50
        push    9                                       ; 057F _ 6A, 09
        push    7                                       ; 0581 _ 6A, 07
        push    dword [ebp+0CH]                         ; 0583 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 0586 _ FF. 75, 08
        call    boxfill8                                ; 0589 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 058E _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 0591 _ 8B. 45, 10
        lea     edx, [eax-4H]                           ; 0594 _ 8D. 50, FC
        mov     eax, dword [ebp+10H]                    ; 0597 _ 8B. 45, 10
        sub     eax, 4                                  ; 059A _ 83. E8, 04
        sub     esp, 4                                  ; 059D _ 83. EC, 04
        push    edx                                     ; 05A0 _ 52
        push    50                                      ; 05A1 _ 6A, 32
        push    eax                                     ; 05A3 _ 50
        push    10                                      ; 05A4 _ 6A, 0A
        push    15                                      ; 05A6 _ 6A, 0F
        push    dword [ebp+0CH]                         ; 05A8 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 05AB _ FF. 75, 08
        call    boxfill8                                ; 05AE _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 05B3 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 05B6 _ 8B. 45, 10
        lea     edx, [eax-5H]                           ; 05B9 _ 8D. 50, FB
        mov     eax, dword [ebp+10H]                    ; 05BC _ 8B. 45, 10
        sub     eax, 19                                 ; 05BF _ 83. E8, 13
        sub     esp, 4                                  ; 05C2 _ 83. EC, 04
        push    edx                                     ; 05C5 _ 52
        push    50                                      ; 05C6 _ 6A, 32
        push    eax                                     ; 05C8 _ 50
        push    50                                      ; 05C9 _ 6A, 32
        push    15                                      ; 05CB _ 6A, 0F
        push    dword [ebp+0CH]                         ; 05CD _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 05D0 _ FF. 75, 08
        call    boxfill8                                ; 05D3 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 05D8 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 05DB _ 8B. 45, 10
        lea     edx, [eax-3H]                           ; 05DE _ 8D. 50, FD
        mov     eax, dword [ebp+10H]                    ; 05E1 _ 8B. 45, 10
        sub     eax, 3                                  ; 05E4 _ 83. E8, 03
        sub     esp, 4                                  ; 05E7 _ 83. EC, 04
        push    edx                                     ; 05EA _ 52
        push    50                                      ; 05EB _ 6A, 32
        push    eax                                     ; 05ED _ 50
        push    10                                      ; 05EE _ 6A, 0A
        push    0                                       ; 05F0 _ 6A, 00
        push    dword [ebp+0CH]                         ; 05F2 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 05F5 _ FF. 75, 08
        call    boxfill8                                ; 05F8 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 05FD _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 0600 _ 8B. 45, 10
        lea     edx, [eax-3H]                           ; 0603 _ 8D. 50, FD
        mov     eax, dword [ebp+10H]                    ; 0606 _ 8B. 45, 10
        sub     eax, 20                                 ; 0609 _ 83. E8, 14
        sub     esp, 4                                  ; 060C _ 83. EC, 04
        push    edx                                     ; 060F _ 52
        push    51                                      ; 0610 _ 6A, 33
        push    eax                                     ; 0612 _ 50
        push    51                                      ; 0613 _ 6A, 33
        push    0                                       ; 0615 _ 6A, 00
        push    dword [ebp+0CH]                         ; 0617 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 061A _ FF. 75, 08
        call    boxfill8                                ; 061D _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0622 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 0625 _ 8B. 45, 10
        lea     ebx, [eax-14H]                          ; 0628 _ 8D. 58, EC
        mov     eax, dword [ebp+0CH]                    ; 062B _ 8B. 45, 0C
        lea     ecx, [eax-4H]                           ; 062E _ 8D. 48, FC
        mov     eax, dword [ebp+10H]                    ; 0631 _ 8B. 45, 10
        lea     edx, [eax-14H]                          ; 0634 _ 8D. 50, EC
        mov     eax, dword [ebp+0CH]                    ; 0637 _ 8B. 45, 0C
        sub     eax, 47                                 ; 063A _ 83. E8, 2F
        sub     esp, 4                                  ; 063D _ 83. EC, 04
        push    ebx                                     ; 0640 _ 53
        push    ecx                                     ; 0641 _ 51
        push    edx                                     ; 0642 _ 52
        push    eax                                     ; 0643 _ 50
        push    15                                      ; 0644 _ 6A, 0F
        push    dword [ebp+0CH]                         ; 0646 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 0649 _ FF. 75, 08
        call    boxfill8                                ; 064C _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0651 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 0654 _ 8B. 45, 10
        lea     ebx, [eax-3H]                           ; 0657 _ 8D. 58, FD
        mov     eax, dword [ebp+0CH]                    ; 065A _ 8B. 45, 0C
        lea     ecx, [eax-2FH]                          ; 065D _ 8D. 48, D1
        mov     eax, dword [ebp+10H]                    ; 0660 _ 8B. 45, 10
        lea     edx, [eax-14H]                          ; 0663 _ 8D. 50, EC
        mov     eax, dword [ebp+0CH]                    ; 0666 _ 8B. 45, 0C
        sub     eax, 47                                 ; 0669 _ 83. E8, 2F
        sub     esp, 4                                  ; 066C _ 83. EC, 04
        push    ebx                                     ; 066F _ 53
        push    ecx                                     ; 0670 _ 51
        push    edx                                     ; 0671 _ 52
        push    eax                                     ; 0672 _ 50
        push    15                                      ; 0673 _ 6A, 0F
        push    dword [ebp+0CH]                         ; 0675 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 0678 _ FF. 75, 08
        call    boxfill8                                ; 067B _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0680 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 0683 _ 8B. 45, 10
        lea     ebx, [eax-3H]                           ; 0686 _ 8D. 58, FD
        mov     eax, dword [ebp+0CH]                    ; 0689 _ 8B. 45, 0C
        lea     ecx, [eax-4H]                           ; 068C _ 8D. 48, FC
        mov     eax, dword [ebp+10H]                    ; 068F _ 8B. 45, 10
        lea     edx, [eax-3H]                           ; 0692 _ 8D. 50, FD
        mov     eax, dword [ebp+0CH]                    ; 0695 _ 8B. 45, 0C
        sub     eax, 47                                 ; 0698 _ 83. E8, 2F
        sub     esp, 4                                  ; 069B _ 83. EC, 04
        push    ebx                                     ; 069E _ 53
        push    ecx                                     ; 069F _ 51
        push    edx                                     ; 06A0 _ 52
        push    eax                                     ; 06A1 _ 50
        push    7                                       ; 06A2 _ 6A, 07
        push    dword [ebp+0CH]                         ; 06A4 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 06A7 _ FF. 75, 08
        call    boxfill8                                ; 06AA _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 06AF _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 06B2 _ 8B. 45, 10
        lea     ebx, [eax-3H]                           ; 06B5 _ 8D. 58, FD
        mov     eax, dword [ebp+0CH]                    ; 06B8 _ 8B. 45, 0C
        lea     ecx, [eax-3H]                           ; 06BB _ 8D. 48, FD
        mov     eax, dword [ebp+10H]                    ; 06BE _ 8B. 45, 10
        lea     edx, [eax-14H]                          ; 06C1 _ 8D. 50, EC
        mov     eax, dword [ebp+0CH]                    ; 06C4 _ 8B. 45, 0C
        sub     eax, 3                                  ; 06C7 _ 83. E8, 03
        sub     esp, 4                                  ; 06CA _ 83. EC, 04
        push    ebx                                     ; 06CD _ 53
        push    ecx                                     ; 06CE _ 51
        push    edx                                     ; 06CF _ 52
        push    eax                                     ; 06D0 _ 50
        push    7                                       ; 06D1 _ 6A, 07
        push    dword [ebp+0CH]                         ; 06D3 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 06D6 _ FF. 75, 08
        call    boxfill8                                ; 06D9 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 06DE _ 83. C4, 20
        nop                                             ; 06E1 _ 90
        mov     ebx, dword [ebp-4H]                     ; 06E2 _ 8B. 5D, FC
        leave                                           ; 06E5 _ C9
        ret                                             ; 06E6 _ C3
; init_screen8 End of function

init_palette:; Function begin
        push    ebp                                     ; 06E7 _ 55
        mov     ebp, esp                                ; 06E8 _ 89. E5
        sub     esp, 24                                 ; 06EA _ 83. EC, 18
        mov     eax, dword [bootInfo]                   ; 06ED _ A1, 00000000(d)
        mov     dword [ebp-14H], eax                    ; 06F2 _ 89. 45, EC
        movzx   eax, word [?_153]                       ; 06F5 _ 0F B7. 05, 00000004(d)
        cwde                                            ; 06FC _ 98
        mov     dword [ebp-10H], eax                    ; 06FD _ 89. 45, F0
        movzx   eax, word [?_154]                       ; 0700 _ 0F B7. 05, 00000006(d)
        cwde                                            ; 0707 _ 98
        mov     dword [ebp-0CH], eax                    ; 0708 _ 89. 45, F4
        sub     esp, 4                                  ; 070B _ 83. EC, 04
        push    table_rgb.1698                          ; 070E _ 68, 00000020(d)
        push    15                                      ; 0713 _ 6A, 0F
        push    0                                       ; 0715 _ 6A, 00
        call    set_palette                             ; 0717 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 071C _ 83. C4, 10
        nop                                             ; 071F _ 90
        leave                                           ; 0720 _ C9
        ret                                             ; 0721 _ C3
; init_palette End of function

set_palette:; Function begin
        push    ebp                                     ; 0722 _ 55
        mov     ebp, esp                                ; 0723 _ 89. E5
        sub     esp, 24                                 ; 0725 _ 83. EC, 18
        call    io_load_eflags                          ; 0728 _ E8, FFFFFFFC(rel)
        mov     dword [ebp-0CH], eax                    ; 072D _ 89. 45, F4
        call    io_cli                                  ; 0730 _ E8, FFFFFFFC(rel)
        sub     esp, 8                                  ; 0735 _ 83. EC, 08
        push    dword [ebp+8H]                          ; 0738 _ FF. 75, 08
        push    968                                     ; 073B _ 68, 000003C8
        call    io_out8                                 ; 0740 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0745 _ 83. C4, 10
        mov     eax, dword [ebp+8H]                     ; 0748 _ 8B. 45, 08
        mov     dword [ebp-10H], eax                    ; 074B _ 89. 45, F0
        jmp     ?_007                                   ; 074E _ EB, 65

?_006:  mov     eax, dword [ebp+10H]                    ; 0750 _ 8B. 45, 10
        movzx   eax, byte [eax]                         ; 0753 _ 0F B6. 00
        shr     al, 2                                   ; 0756 _ C0. E8, 02
        movzx   eax, al                                 ; 0759 _ 0F B6. C0
        sub     esp, 8                                  ; 075C _ 83. EC, 08
        push    eax                                     ; 075F _ 50
        push    969                                     ; 0760 _ 68, 000003C9
        call    io_out8                                 ; 0765 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 076A _ 83. C4, 10
        mov     eax, dword [ebp+10H]                    ; 076D _ 8B. 45, 10
        add     eax, 1                                  ; 0770 _ 83. C0, 01
        movzx   eax, byte [eax]                         ; 0773 _ 0F B6. 00
        shr     al, 2                                   ; 0776 _ C0. E8, 02
        movzx   eax, al                                 ; 0779 _ 0F B6. C0
        sub     esp, 8                                  ; 077C _ 83. EC, 08
        push    eax                                     ; 077F _ 50
        push    969                                     ; 0780 _ 68, 000003C9
        call    io_out8                                 ; 0785 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 078A _ 83. C4, 10
        mov     eax, dword [ebp+10H]                    ; 078D _ 8B. 45, 10
        add     eax, 2                                  ; 0790 _ 83. C0, 02
        movzx   eax, byte [eax]                         ; 0793 _ 0F B6. 00
        shr     al, 2                                   ; 0796 _ C0. E8, 02
        movzx   eax, al                                 ; 0799 _ 0F B6. C0
        sub     esp, 8                                  ; 079C _ 83. EC, 08
        push    eax                                     ; 079F _ 50
        push    969                                     ; 07A0 _ 68, 000003C9
        call    io_out8                                 ; 07A5 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 07AA _ 83. C4, 10
        add     dword [ebp+10H], 3                      ; 07AD _ 83. 45, 10, 03
        add     dword [ebp-10H], 1                      ; 07B1 _ 83. 45, F0, 01
?_007:  mov     eax, dword [ebp-10H]                    ; 07B5 _ 8B. 45, F0
        cmp     eax, dword [ebp+0CH]                    ; 07B8 _ 3B. 45, 0C
        jle     ?_006                                   ; 07BB _ 7E, 93
        sub     esp, 12                                 ; 07BD _ 83. EC, 0C
        push    dword [ebp-0CH]                         ; 07C0 _ FF. 75, F4
        call    io_store_eflags                         ; 07C3 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 07C8 _ 83. C4, 10
        nop                                             ; 07CB _ 90
        leave                                           ; 07CC _ C9
        ret                                             ; 07CD _ C3
; set_palette End of function

boxfill8:; Function begin
        push    ebp                                     ; 07CE _ 55
        mov     ebp, esp                                ; 07CF _ 89. E5
        sub     esp, 20                                 ; 07D1 _ 83. EC, 14
        mov     eax, dword [ebp+10H]                    ; 07D4 _ 8B. 45, 10
        mov     byte [ebp-14H], al                      ; 07D7 _ 88. 45, EC
        mov     eax, dword [ebp+18H]                    ; 07DA _ 8B. 45, 18
        mov     dword [ebp-4H], eax                     ; 07DD _ 89. 45, FC
        jmp     ?_011                                   ; 07E0 _ EB, 33

?_008:  mov     eax, dword [ebp+14H]                    ; 07E2 _ 8B. 45, 14
        mov     dword [ebp-8H], eax                     ; 07E5 _ 89. 45, F8
        jmp     ?_010                                   ; 07E8 _ EB, 1F

?_009:  mov     eax, dword [ebp-4H]                     ; 07EA _ 8B. 45, FC
        imul    eax, dword [ebp+0CH]                    ; 07ED _ 0F AF. 45, 0C
        mov     edx, eax                                ; 07F1 _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 07F3 _ 8B. 45, F8
        add     eax, edx                                ; 07F6 _ 01. D0
        mov     edx, eax                                ; 07F8 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 07FA _ 8B. 45, 08
        add     edx, eax                                ; 07FD _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 07FF _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0803 _ 88. 02
        add     dword [ebp-8H], 1                       ; 0805 _ 83. 45, F8, 01
?_010:  mov     eax, dword [ebp-8H]                     ; 0809 _ 8B. 45, F8
        cmp     eax, dword [ebp+1CH]                    ; 080C _ 3B. 45, 1C
        jle     ?_009                                   ; 080F _ 7E, D9
        add     dword [ebp-4H], 1                       ; 0811 _ 83. 45, FC, 01
?_011:  mov     eax, dword [ebp-4H]                     ; 0815 _ 8B. 45, FC
        cmp     eax, dword [ebp+20H]                    ; 0818 _ 3B. 45, 20
        jle     ?_008                                   ; 081B _ 7E, C5
        nop                                             ; 081D _ 90
        leave                                           ; 081E _ C9
        ret                                             ; 081F _ C3
; boxfill8 End of function

showFont8:; Function begin
        push    ebp                                     ; 0820 _ 55
        mov     ebp, esp                                ; 0821 _ 89. E5
        sub     esp, 20                                 ; 0823 _ 83. EC, 14
        mov     eax, dword [ebp+18H]                    ; 0826 _ 8B. 45, 18
        mov     byte [ebp-14H], al                      ; 0829 _ 88. 45, EC
        mov     dword [ebp-4H], 0                       ; 082C _ C7. 45, FC, 00000000
        jmp     ?_021                                   ; 0833 _ E9, 0000016C

?_012:  mov     edx, dword [ebp-4H]                     ; 0838 _ 8B. 55, FC
        mov     eax, dword [ebp+1CH]                    ; 083B _ 8B. 45, 1C
        add     eax, edx                                ; 083E _ 01. D0
        movzx   eax, byte [eax]                         ; 0840 _ 0F B6. 00
        mov     byte [ebp-5H], al                       ; 0843 _ 88. 45, FB
        cmp     byte [ebp-5H], 0                        ; 0846 _ 80. 7D, FB, 00
        jns     ?_013                                   ; 084A _ 79, 20
        mov     edx, dword [ebp+14H]                    ; 084C _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 084F _ 8B. 45, FC
        add     eax, edx                                ; 0852 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 0854 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 0858 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 085A _ 8B. 45, 10
        add     eax, edx                                ; 085D _ 01. D0
        mov     edx, eax                                ; 085F _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 0861 _ 8B. 45, 08
        add     edx, eax                                ; 0864 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0866 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 086A _ 88. 02
?_013:  movsx   eax, byte [ebp-5H]                      ; 086C _ 0F BE. 45, FB
        and     eax, 40H                                ; 0870 _ 83. E0, 40
        test    eax, eax                                ; 0873 _ 85. C0
        jz      ?_014                                   ; 0875 _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 0877 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 087A _ 8B. 45, FC
        add     eax, edx                                ; 087D _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 087F _ 0F AF. 45, 0C
        mov     edx, eax                                ; 0883 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 0885 _ 8B. 45, 10
        add     eax, edx                                ; 0888 _ 01. D0
        lea     edx, [eax+1H]                           ; 088A _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 088D _ 8B. 45, 08
        add     edx, eax                                ; 0890 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0892 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0896 _ 88. 02
?_014:  movsx   eax, byte [ebp-5H]                      ; 0898 _ 0F BE. 45, FB
        and     eax, 20H                                ; 089C _ 83. E0, 20
        test    eax, eax                                ; 089F _ 85. C0
        jz      ?_015                                   ; 08A1 _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 08A3 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 08A6 _ 8B. 45, FC
        add     eax, edx                                ; 08A9 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 08AB _ 0F AF. 45, 0C
        mov     edx, eax                                ; 08AF _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 08B1 _ 8B. 45, 10
        add     eax, edx                                ; 08B4 _ 01. D0
        lea     edx, [eax+2H]                           ; 08B6 _ 8D. 50, 02
        mov     eax, dword [ebp+8H]                     ; 08B9 _ 8B. 45, 08
        add     edx, eax                                ; 08BC _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 08BE _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 08C2 _ 88. 02
?_015:  movsx   eax, byte [ebp-5H]                      ; 08C4 _ 0F BE. 45, FB
        and     eax, 10H                                ; 08C8 _ 83. E0, 10
        test    eax, eax                                ; 08CB _ 85. C0
        jz      ?_016                                   ; 08CD _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 08CF _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 08D2 _ 8B. 45, FC
        add     eax, edx                                ; 08D5 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 08D7 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 08DB _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 08DD _ 8B. 45, 10
        add     eax, edx                                ; 08E0 _ 01. D0
        lea     edx, [eax+3H]                           ; 08E2 _ 8D. 50, 03
        mov     eax, dword [ebp+8H]                     ; 08E5 _ 8B. 45, 08
        add     edx, eax                                ; 08E8 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 08EA _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 08EE _ 88. 02
?_016:  movsx   eax, byte [ebp-5H]                      ; 08F0 _ 0F BE. 45, FB
        and     eax, 08H                                ; 08F4 _ 83. E0, 08
        test    eax, eax                                ; 08F7 _ 85. C0
        jz      ?_017                                   ; 08F9 _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 08FB _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 08FE _ 8B. 45, FC
        add     eax, edx                                ; 0901 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 0903 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 0907 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 0909 _ 8B. 45, 10
        add     eax, edx                                ; 090C _ 01. D0
        lea     edx, [eax+4H]                           ; 090E _ 8D. 50, 04
        mov     eax, dword [ebp+8H]                     ; 0911 _ 8B. 45, 08
        add     edx, eax                                ; 0914 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0916 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 091A _ 88. 02
?_017:  movsx   eax, byte [ebp-5H]                      ; 091C _ 0F BE. 45, FB
        and     eax, 04H                                ; 0920 _ 83. E0, 04
        test    eax, eax                                ; 0923 _ 85. C0
        jz      ?_018                                   ; 0925 _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 0927 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 092A _ 8B. 45, FC
        add     eax, edx                                ; 092D _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 092F _ 0F AF. 45, 0C
        mov     edx, eax                                ; 0933 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 0935 _ 8B. 45, 10
        add     eax, edx                                ; 0938 _ 01. D0
        lea     edx, [eax+5H]                           ; 093A _ 8D. 50, 05
        mov     eax, dword [ebp+8H]                     ; 093D _ 8B. 45, 08
        add     edx, eax                                ; 0940 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0942 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0946 _ 88. 02
?_018:  movsx   eax, byte [ebp-5H]                      ; 0948 _ 0F BE. 45, FB
        and     eax, 02H                                ; 094C _ 83. E0, 02
        test    eax, eax                                ; 094F _ 85. C0
        jz      ?_019                                   ; 0951 _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 0953 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 0956 _ 8B. 45, FC
        add     eax, edx                                ; 0959 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 095B _ 0F AF. 45, 0C
        mov     edx, eax                                ; 095F _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 0961 _ 8B. 45, 10
        add     eax, edx                                ; 0964 _ 01. D0
        lea     edx, [eax+6H]                           ; 0966 _ 8D. 50, 06
        mov     eax, dword [ebp+8H]                     ; 0969 _ 8B. 45, 08
        add     edx, eax                                ; 096C _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 096E _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0972 _ 88. 02
?_019:  movsx   eax, byte [ebp-5H]                      ; 0974 _ 0F BE. 45, FB
        and     eax, 01H                                ; 0978 _ 83. E0, 01
        test    eax, eax                                ; 097B _ 85. C0
        jz      ?_020                                   ; 097D _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 097F _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 0982 _ 8B. 45, FC
        add     eax, edx                                ; 0985 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 0987 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 098B _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 098D _ 8B. 45, 10
        add     eax, edx                                ; 0990 _ 01. D0
        lea     edx, [eax+7H]                           ; 0992 _ 8D. 50, 07
        mov     eax, dword [ebp+8H]                     ; 0995 _ 8B. 45, 08
        add     edx, eax                                ; 0998 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 099A _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 099E _ 88. 02
?_020:  add     dword [ebp-4H], 1                       ; 09A0 _ 83. 45, FC, 01
?_021:  cmp     dword [ebp-4H], 15                      ; 09A4 _ 83. 7D, FC, 0F
        jle     ?_012                                   ; 09A8 _ 0F 8E, FFFFFE8A
        nop                                             ; 09AE _ 90
        leave                                           ; 09AF _ C9
        ret                                             ; 09B0 _ C3
; showFont8 End of function

init_mouse_cursor:; Function begin
        push    ebp                                     ; 09B1 _ 55
        mov     ebp, esp                                ; 09B2 _ 89. E5
        sub     esp, 20                                 ; 09B4 _ 83. EC, 14
        mov     eax, dword [ebp+0CH]                    ; 09B7 _ 8B. 45, 0C
        mov     byte [ebp-14H], al                      ; 09BA _ 88. 45, EC
        mov     dword [ebp-4H], 0                       ; 09BD _ C7. 45, FC, 00000000
        jmp     ?_028                                   ; 09C4 _ E9, 000000B1

?_022:  mov     dword [ebp-8H], 0                       ; 09C9 _ C7. 45, F8, 00000000
        jmp     ?_027                                   ; 09D0 _ E9, 00000097

?_023:  mov     eax, dword [ebp-4H]                     ; 09D5 _ 8B. 45, FC
        shl     eax, 4                                  ; 09D8 _ C1. E0, 04
        mov     edx, eax                                ; 09DB _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 09DD _ 8B. 45, F8
        add     eax, edx                                ; 09E0 _ 01. D0
        add     eax, cursor.1743                        ; 09E2 _ 05, 00000060(d)
        movzx   eax, byte [eax]                         ; 09E7 _ 0F B6. 00
        cmp     al, 42                                  ; 09EA _ 3C, 2A
        jnz     ?_024                                   ; 09EC _ 75, 17
        mov     eax, dword [ebp-4H]                     ; 09EE _ 8B. 45, FC
        shl     eax, 4                                  ; 09F1 _ C1. E0, 04
        mov     edx, eax                                ; 09F4 _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 09F6 _ 8B. 45, F8
        add     eax, edx                                ; 09F9 _ 01. D0
        mov     edx, eax                                ; 09FB _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 09FD _ 8B. 45, 08
        add     eax, edx                                ; 0A00 _ 01. D0
        mov     byte [eax], 0                           ; 0A02 _ C6. 00, 00
?_024:  mov     eax, dword [ebp-4H]                     ; 0A05 _ 8B. 45, FC
        shl     eax, 4                                  ; 0A08 _ C1. E0, 04
        mov     edx, eax                                ; 0A0B _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 0A0D _ 8B. 45, F8
        add     eax, edx                                ; 0A10 _ 01. D0
        add     eax, cursor.1743                        ; 0A12 _ 05, 00000060(d)
        movzx   eax, byte [eax]                         ; 0A17 _ 0F B6. 00
        cmp     al, 79                                  ; 0A1A _ 3C, 4F
        jnz     ?_025                                   ; 0A1C _ 75, 17
        mov     eax, dword [ebp-4H]                     ; 0A1E _ 8B. 45, FC
        shl     eax, 4                                  ; 0A21 _ C1. E0, 04
        mov     edx, eax                                ; 0A24 _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 0A26 _ 8B. 45, F8
        add     eax, edx                                ; 0A29 _ 01. D0
        mov     edx, eax                                ; 0A2B _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 0A2D _ 8B. 45, 08
        add     eax, edx                                ; 0A30 _ 01. D0
        mov     byte [eax], 7                           ; 0A32 _ C6. 00, 07
?_025:  mov     eax, dword [ebp-4H]                     ; 0A35 _ 8B. 45, FC
        shl     eax, 4                                  ; 0A38 _ C1. E0, 04
        mov     edx, eax                                ; 0A3B _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 0A3D _ 8B. 45, F8
        add     eax, edx                                ; 0A40 _ 01. D0
        add     eax, cursor.1743                        ; 0A42 _ 05, 00000060(d)
        movzx   eax, byte [eax]                         ; 0A47 _ 0F B6. 00
        cmp     al, 46                                  ; 0A4A _ 3C, 2E
        jnz     ?_026                                   ; 0A4C _ 75, 1A
        mov     eax, dword [ebp-4H]                     ; 0A4E _ 8B. 45, FC
        shl     eax, 4                                  ; 0A51 _ C1. E0, 04
        mov     edx, eax                                ; 0A54 _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 0A56 _ 8B. 45, F8
        add     eax, edx                                ; 0A59 _ 01. D0
        mov     edx, eax                                ; 0A5B _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 0A5D _ 8B. 45, 08
        add     edx, eax                                ; 0A60 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0A62 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0A66 _ 88. 02
?_026:  add     dword [ebp-8H], 1                       ; 0A68 _ 83. 45, F8, 01
?_027:  cmp     dword [ebp-8H], 15                      ; 0A6C _ 83. 7D, F8, 0F
        jle     ?_023                                   ; 0A70 _ 0F 8E, FFFFFF5F
        add     dword [ebp-4H], 1                       ; 0A76 _ 83. 45, FC, 01
?_028:  cmp     dword [ebp-4H], 15                      ; 0A7A _ 83. 7D, FC, 0F
        jle     ?_022                                   ; 0A7E _ 0F 8E, FFFFFF45
        nop                                             ; 0A84 _ 90
        leave                                           ; 0A85 _ C9
        ret                                             ; 0A86 _ C3
; init_mouse_cursor End of function

putblock:; Function begin
        push    ebp                                     ; 0A87 _ 55
        mov     ebp, esp                                ; 0A88 _ 89. E5
        push    ebx                                     ; 0A8A _ 53
        sub     esp, 16                                 ; 0A8B _ 83. EC, 10
        mov     dword [ebp-8H], 0                       ; 0A8E _ C7. 45, F8, 00000000
        jmp     ?_032                                   ; 0A95 _ EB, 50

?_029:  mov     dword [ebp-0CH], 0                      ; 0A97 _ C7. 45, F4, 00000000
        jmp     ?_031                                   ; 0A9E _ EB, 3B

?_030:  mov     eax, dword [ebp-8H]                     ; 0AA0 _ 8B. 45, F8
        imul    eax, dword [ebp+24H]                    ; 0AA3 _ 0F AF. 45, 24
        mov     edx, eax                                ; 0AA7 _ 89. C2
        mov     eax, dword [ebp-0CH]                    ; 0AA9 _ 8B. 45, F4
        add     eax, edx                                ; 0AAC _ 01. D0
        mov     edx, eax                                ; 0AAE _ 89. C2
        mov     eax, dword [ebp+20H]                    ; 0AB0 _ 8B. 45, 20
        add     eax, edx                                ; 0AB3 _ 01. D0
        mov     ecx, dword [ebp+1CH]                    ; 0AB5 _ 8B. 4D, 1C
        mov     edx, dword [ebp-8H]                     ; 0AB8 _ 8B. 55, F8
        add     edx, ecx                                ; 0ABB _ 01. CA
        imul    edx, dword [ebp+0CH]                    ; 0ABD _ 0F AF. 55, 0C
        mov     ebx, dword [ebp+18H]                    ; 0AC1 _ 8B. 5D, 18
        mov     ecx, dword [ebp-0CH]                    ; 0AC4 _ 8B. 4D, F4
        add     ecx, ebx                                ; 0AC7 _ 01. D9
        add     edx, ecx                                ; 0AC9 _ 01. CA
        mov     ecx, edx                                ; 0ACB _ 89. D1
        mov     edx, dword [ebp+8H]                     ; 0ACD _ 8B. 55, 08
        add     edx, ecx                                ; 0AD0 _ 01. CA
        movzx   eax, byte [eax]                         ; 0AD2 _ 0F B6. 00
        mov     byte [edx], al                          ; 0AD5 _ 88. 02
        add     dword [ebp-0CH], 1                      ; 0AD7 _ 83. 45, F4, 01
?_031:  mov     eax, dword [ebp-0CH]                    ; 0ADB _ 8B. 45, F4
        cmp     eax, dword [ebp+10H]                    ; 0ADE _ 3B. 45, 10
        jl      ?_030                                   ; 0AE1 _ 7C, BD
        add     dword [ebp-8H], 1                       ; 0AE3 _ 83. 45, F8, 01
?_032:  mov     eax, dword [ebp-8H]                     ; 0AE7 _ 8B. 45, F8
        cmp     eax, dword [ebp+14H]                    ; 0AEA _ 3B. 45, 14
        jl      ?_029                                   ; 0AED _ 7C, A8
        nop                                             ; 0AEF _ 90
        add     esp, 16                                 ; 0AF0 _ 83. C4, 10
        pop     ebx                                     ; 0AF3 _ 5B
        pop     ebp                                     ; 0AF4 _ 5D
        ret                                             ; 0AF5 _ C3
; putblock End of function

intHandlerFromC:; Function begin
        push    ebp                                     ; 0AF6 _ 55
        mov     ebp, esp                                ; 0AF7 _ 89. E5
        sub     esp, 24                                 ; 0AF9 _ 83. EC, 18
        mov     eax, dword [bootInfo]                   ; 0AFC _ A1, 00000000(d)
        mov     dword [ebp-14H], eax                    ; 0B01 _ 89. 45, EC
        movzx   eax, word [?_153]                       ; 0B04 _ 0F B7. 05, 00000004(d)
        cwde                                            ; 0B0B _ 98
        mov     dword [ebp-10H], eax                    ; 0B0C _ 89. 45, F0
        movzx   eax, word [?_154]                       ; 0B0F _ 0F B7. 05, 00000006(d)
        cwde                                            ; 0B16 _ 98
        mov     dword [ebp-0CH], eax                    ; 0B17 _ 89. 45, F4
        sub     esp, 8                                  ; 0B1A _ 83. EC, 08
        push    32                                      ; 0B1D _ 6A, 20
        push    32                                      ; 0B1F _ 6A, 20
        call    io_out8                                 ; 0B21 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0B26 _ 83. C4, 10
        mov     byte [ebp-15H], 0                       ; 0B29 _ C6. 45, EB, 00
        sub     esp, 12                                 ; 0B2D _ 83. EC, 0C
        push    96                                      ; 0B30 _ 6A, 60
        call    io_in8                                  ; 0B32 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0B37 _ 83. C4, 10
        mov     byte [ebp-15H], al                      ; 0B3A _ 88. 45, EB
        movzx   eax, byte [ebp-15H]                     ; 0B3D _ 0F B6. 45, EB
        sub     esp, 8                                  ; 0B41 _ 83. EC, 08
        push    eax                                     ; 0B44 _ 50
        push    keyInfo                                 ; 0B45 _ 68, 00000008(d)
        call    fifo8_put                               ; 0B4A _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0B4F _ 83. C4, 10
        nop                                             ; 0B52 _ 90
        leave                                           ; 0B53 _ C9
        ret                                             ; 0B54 _ C3
; intHandlerFromC End of function

charToHex:; Function begin
        push    ebp                                     ; 0B55 _ 55
        mov     ebp, esp                                ; 0B56 _ 89. E5
        sub     esp, 40                                 ; 0B58 _ 83. EC, 28
        mov     eax, dword [ebp+8H]                     ; 0B5B _ 8B. 45, 08
        mov     byte [ebp-1CH], al                      ; 0B5E _ 88. 45, E4
        movzx   eax, byte [ebp-1CH]                     ; 0B61 _ 0F B6. 45, E4
        and     eax, 0FH                                ; 0B65 _ 83. E0, 0F
        mov     byte [ebp-9H], al                       ; 0B68 _ 88. 45, F7
        movsx   eax, byte [ebp-9H]                      ; 0B6B _ 0F BE. 45, F7
        sub     esp, 12                                 ; 0B6F _ 83. EC, 0C
        push    eax                                     ; 0B72 _ 50
        call    charToVal                               ; 0B73 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0B78 _ 83. C4, 10
        mov     byte [?_152], al                        ; 0B7B _ A2, 00000003(d)
        movzx   eax, byte [ebp-1CH]                     ; 0B80 _ 0F B6. 45, E4
        shr     al, 4                                   ; 0B84 _ C0. E8, 04
        mov     byte [ebp-1CH], al                      ; 0B87 _ 88. 45, E4
        movzx   eax, byte [ebp-1CH]                     ; 0B8A _ 0F B6. 45, E4
        movsx   eax, al                                 ; 0B8E _ 0F BE. C0
        sub     esp, 12                                 ; 0B91 _ 83. EC, 0C
        push    eax                                     ; 0B94 _ 50
        call    charToVal                               ; 0B95 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0B9A _ 83. C4, 10
        mov     byte [?_151], al                        ; 0B9D _ A2, 00000002(d)
        mov     eax, keyVal                             ; 0BA2 _ B8, 00000000(d)
        leave                                           ; 0BA7 _ C9
        ret                                             ; 0BA8 _ C3
; charToHex End of function

charToVal:; Function begin
        push    ebp                                     ; 0BA9 _ 55
        mov     ebp, esp                                ; 0BAA _ 89. E5
        sub     esp, 4                                  ; 0BAC _ 83. EC, 04
        mov     eax, dword [ebp+8H]                     ; 0BAF _ 8B. 45, 08
        mov     byte [ebp-4H], al                       ; 0BB2 _ 88. 45, FC
        cmp     byte [ebp-4H], 9                        ; 0BB5 _ 80. 7D, FC, 09
        jle     ?_033                                   ; 0BB9 _ 7E, 09
        movzx   eax, byte [ebp-4H]                      ; 0BBB _ 0F B6. 45, FC
        add     eax, 55                                 ; 0BBF _ 83. C0, 37
        jmp     ?_034                                   ; 0BC2 _ EB, 07

?_033:  movzx   eax, byte [ebp-4H]                      ; 0BC4 _ 0F B6. 45, FC
        add     eax, 48                                 ; 0BC8 _ 83. C0, 30
?_034:  leave                                           ; 0BCB _ C9
        ret                                             ; 0BCC _ C3
; charToVal End of function

intToHexStr:; Function begin
        push    ebp                                     ; 0BCD _ 55
        mov     ebp, esp                                ; 0BCE _ 89. E5
        sub     esp, 16                                 ; 0BD0 _ 83. EC, 10
        mov     byte [str.1786], 48                     ; 0BD3 _ C6. 05, 00000200(d), 30
        mov     byte [?_155], 120                       ; 0BDA _ C6. 05, 00000201(d), 78
        mov     byte [?_156], 0                         ; 0BE1 _ C6. 05, 0000020A(d), 00
        mov     dword [ebp-0CH], 2                      ; 0BE8 _ C7. 45, F4, 00000002
        jmp     ?_036                                   ; 0BEF _ EB, 0F

?_035:  mov     eax, dword [ebp-0CH]                    ; 0BF1 _ 8B. 45, F4
        add     eax, str.1786                           ; 0BF4 _ 05, 00000200(d)
        mov     byte [eax], 48                          ; 0BF9 _ C6. 00, 30
        add     dword [ebp-0CH], 1                      ; 0BFC _ 83. 45, F4, 01
?_036:  cmp     dword [ebp-0CH], 9                      ; 0C00 _ 83. 7D, F4, 09
        jle     ?_035                                   ; 0C04 _ 7E, EB
        mov     dword [ebp-8H], 9                       ; 0C06 _ C7. 45, F8, 00000009
        jmp     ?_039                                   ; 0C0D _ EB, 48

?_037:  mov     eax, dword [ebp+8H]                     ; 0C0F _ 8B. 45, 08
        and     eax, 0FH                                ; 0C12 _ 83. E0, 0F
        mov     dword [ebp-4H], eax                     ; 0C15 _ 89. 45, FC
        mov     eax, dword [ebp+8H]                     ; 0C18 _ 8B. 45, 08
        shr     eax, 4                                  ; 0C1B _ C1. E8, 04
        mov     dword [ebp+8H], eax                     ; 0C1E _ 89. 45, 08
        cmp     dword [ebp-4H], 9                       ; 0C21 _ 83. 7D, FC, 09
        jle     ?_038                                   ; 0C25 _ 7E, 19
        mov     eax, dword [ebp-4H]                     ; 0C27 _ 8B. 45, FC
        lea     ecx, [eax+37H]                          ; 0C2A _ 8D. 48, 37
        mov     eax, dword [ebp-8H]                     ; 0C2D _ 8B. 45, F8
        lea     edx, [eax-1H]                           ; 0C30 _ 8D. 50, FF
        mov     dword [ebp-8H], edx                     ; 0C33 _ 89. 55, F8
        mov     edx, ecx                                ; 0C36 _ 89. CA
        mov     byte [str.1786+eax], dl                 ; 0C38 _ 88. 90, 00000200(d)
        jmp     ?_039                                   ; 0C3E _ EB, 17

?_038:  mov     eax, dword [ebp-4H]                     ; 0C40 _ 8B. 45, FC
        lea     ecx, [eax+30H]                          ; 0C43 _ 8D. 48, 30
        mov     eax, dword [ebp-8H]                     ; 0C46 _ 8B. 45, F8
        lea     edx, [eax-1H]                           ; 0C49 _ 8D. 50, FF
        mov     dword [ebp-8H], edx                     ; 0C4C _ 89. 55, F8
        mov     edx, ecx                                ; 0C4F _ 89. CA
        mov     byte [str.1786+eax], dl                 ; 0C51 _ 88. 90, 00000200(d)
?_039:  cmp     dword [ebp-8H], 1                       ; 0C57 _ 83. 7D, F8, 01
        jle     ?_040                                   ; 0C5B _ 7E, 06
        cmp     dword [ebp+8H], 0                       ; 0C5D _ 83. 7D, 08, 00
        jnz     ?_037                                   ; 0C61 _ 75, AC
?_040:  mov     eax, str.1786                           ; 0C63 _ B8, 00000200(d)
        leave                                           ; 0C68 _ C9
        ret                                             ; 0C69 _ C3
; intToHexStr End of function

wait_KBC_sendReady:; Function begin
        push    ebp                                     ; 0C6A _ 55
        mov     ebp, esp                                ; 0C6B _ 89. E5
        sub     esp, 8                                  ; 0C6D _ 83. EC, 08
?_041:  sub     esp, 12                                 ; 0C70 _ 83. EC, 0C
        push    100                                     ; 0C73 _ 6A, 64
        call    io_in8                                  ; 0C75 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0C7A _ 83. C4, 10
        movsx   eax, al                                 ; 0C7D _ 0F BE. C0
        and     eax, 02H                                ; 0C80 _ 83. E0, 02
        test    eax, eax                                ; 0C83 _ 85. C0
        jz      ?_042                                   ; 0C85 _ 74, 02
        jmp     ?_041                                   ; 0C87 _ EB, E7

?_042:  nop                                             ; 0C89 _ 90
        nop                                             ; 0C8A _ 90
        leave                                           ; 0C8B _ C9
        ret                                             ; 0C8C _ C3
; wait_KBC_sendReady End of function

init_keyboard:; Function begin
        push    ebp                                     ; 0C8D _ 55
        mov     ebp, esp                                ; 0C8E _ 89. E5
        sub     esp, 8                                  ; 0C90 _ 83. EC, 08
        call    wait_KBC_sendReady                      ; 0C93 _ E8, FFFFFFFC(rel)
        sub     esp, 8                                  ; 0C98 _ 83. EC, 08
        push    96                                      ; 0C9B _ 6A, 60
        push    100                                     ; 0C9D _ 6A, 64
        call    io_out8                                 ; 0C9F _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0CA4 _ 83. C4, 10
        call    wait_KBC_sendReady                      ; 0CA7 _ E8, FFFFFFFC(rel)
        sub     esp, 8                                  ; 0CAC _ 83. EC, 08
        push    71                                      ; 0CAF _ 6A, 47
        push    96                                      ; 0CB1 _ 6A, 60
        call    io_out8                                 ; 0CB3 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0CB8 _ 83. C4, 10
        nop                                             ; 0CBB _ 90
        leave                                           ; 0CBC _ C9
        ret                                             ; 0CBD _ C3
; init_keyboard End of function

enable_mouse:; Function begin
        push    ebp                                     ; 0CBE _ 55
        mov     ebp, esp                                ; 0CBF _ 89. E5
        sub     esp, 8                                  ; 0CC1 _ 83. EC, 08
        call    wait_KBC_sendReady                      ; 0CC4 _ E8, FFFFFFFC(rel)
        sub     esp, 8                                  ; 0CC9 _ 83. EC, 08
        push    212                                     ; 0CCC _ 68, 000000D4
        push    100                                     ; 0CD1 _ 6A, 64
        call    io_out8                                 ; 0CD3 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0CD8 _ 83. C4, 10
        call    wait_KBC_sendReady                      ; 0CDB _ E8, FFFFFFFC(rel)
        sub     esp, 8                                  ; 0CE0 _ 83. EC, 08
        push    244                                     ; 0CE3 _ 68, 000000F4
        push    96                                      ; 0CE8 _ 6A, 60
        call    io_out8                                 ; 0CEA _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0CEF _ 83. C4, 10
        mov     eax, dword [ebp+8H]                     ; 0CF2 _ 8B. 45, 08
        mov     byte [eax+3H], 0                        ; 0CF5 _ C6. 40, 03, 00
        nop                                             ; 0CF9 _ 90
        leave                                           ; 0CFA _ C9
        ret                                             ; 0CFB _ C3
; enable_mouse End of function

intHandlerForMouse:; Function begin
        push    ebp                                     ; 0CFC _ 55
        mov     ebp, esp                                ; 0CFD _ 89. E5
        sub     esp, 24                                 ; 0CFF _ 83. EC, 18
        mov     byte [ebp-9H], 0                        ; 0D02 _ C6. 45, F7, 00
        sub     esp, 8                                  ; 0D06 _ 83. EC, 08
        push    32                                      ; 0D09 _ 6A, 20
        push    160                                     ; 0D0B _ 68, 000000A0
        call    io_out8                                 ; 0D10 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0D15 _ 83. C4, 10
        sub     esp, 8                                  ; 0D18 _ 83. EC, 08
        push    32                                      ; 0D1B _ 6A, 20
        push    32                                      ; 0D1D _ 6A, 20
        call    io_out8                                 ; 0D1F _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0D24 _ 83. C4, 10
        sub     esp, 12                                 ; 0D27 _ 83. EC, 0C
        push    96                                      ; 0D2A _ 6A, 60
        call    io_in8                                  ; 0D2C _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0D31 _ 83. C4, 10
        mov     byte [ebp-9H], al                       ; 0D34 _ 88. 45, F7
        movzx   eax, byte [ebp-9H]                      ; 0D37 _ 0F B6. 45, F7
        sub     esp, 8                                  ; 0D3B _ 83. EC, 08
        push    eax                                     ; 0D3E _ 50
        push    mouseInfo                               ; 0D3F _ 68, 00000020(d)
        call    fifo8_put                               ; 0D44 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0D49 _ 83. C4, 10
        nop                                             ; 0D4C _ 90
        leave                                           ; 0D4D _ C9
        ret                                             ; 0D4E _ C3
; intHandlerForMouse End of function

fifo8_init:; Function begin
        push    ebp                                     ; 0D4F _ 55
        mov     ebp, esp                                ; 0D50 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 0D52 _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 0D55 _ 8B. 55, 0C
        mov     dword [eax+0CH], edx                    ; 0D58 _ 89. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 0D5B _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 0D5E _ 8B. 55, 10
        mov     dword [eax], edx                        ; 0D61 _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 0D63 _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 0D66 _ 8B. 55, 0C
        mov     dword [eax+10H], edx                    ; 0D69 _ 89. 50, 10
        mov     eax, dword [ebp+8H]                     ; 0D6C _ 8B. 45, 08
        mov     dword [eax+4H], 0                       ; 0D6F _ C7. 40, 04, 00000000
        mov     eax, dword [ebp+8H]                     ; 0D76 _ 8B. 45, 08
        mov     dword [eax+8H], 0                       ; 0D79 _ C7. 40, 08, 00000000
        mov     eax, dword [ebp+8H]                     ; 0D80 _ 8B. 45, 08
        mov     dword [eax+14H], 0                      ; 0D83 _ C7. 40, 14, 00000000
        nop                                             ; 0D8A _ 90
        pop     ebp                                     ; 0D8B _ 5D
        ret                                             ; 0D8C _ C3
; fifo8_init End of function

fifo8_put:; Function begin
        push    ebp                                     ; 0D8D _ 55
        mov     ebp, esp                                ; 0D8E _ 89. E5
        sub     esp, 4                                  ; 0D90 _ 83. EC, 04
        mov     eax, dword [ebp+0CH]                    ; 0D93 _ 8B. 45, 0C
        mov     byte [ebp-4H], al                       ; 0D96 _ 88. 45, FC
        mov     eax, dword [ebp+8H]                     ; 0D99 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 0D9C _ 8B. 40, 10
        test    eax, eax                                ; 0D9F _ 85. C0
        jnz     ?_043                                   ; 0DA1 _ 75, 18
        mov     eax, dword [ebp+8H]                     ; 0DA3 _ 8B. 45, 08
        mov     eax, dword [eax+14H]                    ; 0DA6 _ 8B. 40, 14
        or      eax, 01H                                ; 0DA9 _ 83. C8, 01
        mov     edx, eax                                ; 0DAC _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 0DAE _ 8B. 45, 08
        mov     dword [eax+14H], edx                    ; 0DB1 _ 89. 50, 14
        mov     eax, 4294967295                         ; 0DB4 _ B8, FFFFFFFF
        jmp     ?_045                                   ; 0DB9 _ EB, 50

?_043:  mov     eax, dword [ebp+8H]                     ; 0DBB _ 8B. 45, 08
        mov     edx, dword [eax]                        ; 0DBE _ 8B. 10
        mov     eax, dword [ebp+8H]                     ; 0DC0 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 0DC3 _ 8B. 40, 08
        add     edx, eax                                ; 0DC6 _ 01. C2
        movzx   eax, byte [ebp-4H]                      ; 0DC8 _ 0F B6. 45, FC
        mov     byte [edx], al                          ; 0DCC _ 88. 02
        mov     eax, dword [ebp+8H]                     ; 0DCE _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 0DD1 _ 8B. 40, 08
        lea     edx, [eax+1H]                           ; 0DD4 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 0DD7 _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 0DDA _ 89. 50, 08
        mov     eax, dword [ebp+8H]                     ; 0DDD _ 8B. 45, 08
        mov     edx, dword [eax+8H]                     ; 0DE0 _ 8B. 50, 08
        mov     eax, dword [ebp+8H]                     ; 0DE3 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 0DE6 _ 8B. 40, 0C
        cmp     edx, eax                                ; 0DE9 _ 39. C2
        jnz     ?_044                                   ; 0DEB _ 75, 0A
        mov     eax, dword [ebp+8H]                     ; 0DED _ 8B. 45, 08
        mov     dword [eax+8H], 0                       ; 0DF0 _ C7. 40, 08, 00000000
?_044:  mov     eax, dword [ebp+8H]                     ; 0DF7 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 0DFA _ 8B. 40, 10
        lea     edx, [eax-1H]                           ; 0DFD _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 0E00 _ 8B. 45, 08
        mov     dword [eax+10H], edx                    ; 0E03 _ 89. 50, 10
        mov     eax, 1                                  ; 0E06 _ B8, 00000001
?_045:  leave                                           ; 0E0B _ C9
        ret                                             ; 0E0C _ C3
; fifo8_put End of function

fifo8_get:; Function begin
        push    ebp                                     ; 0E0D _ 55
        mov     ebp, esp                                ; 0E0E _ 89. E5
        sub     esp, 16                                 ; 0E10 _ 83. EC, 10
        mov     eax, dword [ebp+8H]                     ; 0E13 _ 8B. 45, 08
        mov     edx, dword [eax+10H]                    ; 0E16 _ 8B. 50, 10
        mov     eax, dword [ebp+8H]                     ; 0E19 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 0E1C _ 8B. 40, 0C
        cmp     edx, eax                                ; 0E1F _ 39. C2
        jnz     ?_046                                   ; 0E21 _ 75, 07
        mov     eax, 4294967295                         ; 0E23 _ B8, FFFFFFFF
        jmp     ?_048                                   ; 0E28 _ EB, 51

?_046:  mov     eax, dword [ebp+8H]                     ; 0E2A _ 8B. 45, 08
        mov     edx, dword [eax]                        ; 0E2D _ 8B. 10
        mov     eax, dword [ebp+8H]                     ; 0E2F _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 0E32 _ 8B. 40, 04
        add     eax, edx                                ; 0E35 _ 01. D0
        movzx   eax, byte [eax]                         ; 0E37 _ 0F B6. 00
        movzx   eax, al                                 ; 0E3A _ 0F B6. C0
        mov     dword [ebp-4H], eax                     ; 0E3D _ 89. 45, FC
        mov     eax, dword [ebp+8H]                     ; 0E40 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 0E43 _ 8B. 40, 04
        lea     edx, [eax+1H]                           ; 0E46 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 0E49 _ 8B. 45, 08
        mov     dword [eax+4H], edx                     ; 0E4C _ 89. 50, 04
        mov     eax, dword [ebp+8H]                     ; 0E4F _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 0E52 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 0E55 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 0E58 _ 8B. 40, 0C
        cmp     edx, eax                                ; 0E5B _ 39. C2
        jnz     ?_047                                   ; 0E5D _ 75, 0A
        mov     eax, dword [ebp+8H]                     ; 0E5F _ 8B. 45, 08
        mov     dword [eax+4H], 0                       ; 0E62 _ C7. 40, 04, 00000000
?_047:  mov     eax, dword [ebp+8H]                     ; 0E69 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 0E6C _ 8B. 40, 10
        lea     edx, [eax+1H]                           ; 0E6F _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 0E72 _ 8B. 45, 08
        mov     dword [eax+10H], edx                    ; 0E75 _ 89. 50, 10
        mov     eax, dword [ebp-4H]                     ; 0E78 _ 8B. 45, FC
?_048:  leave                                           ; 0E7B _ C9
        ret                                             ; 0E7C _ C3
; fifo8_get End of function

fifo8_status:; Function begin
        push    ebp                                     ; 0E7D _ 55
        mov     ebp, esp                                ; 0E7E _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 0E80 _ 8B. 45, 08
        mov     edx, dword [eax+0CH]                    ; 0E83 _ 8B. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 0E86 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 0E89 _ 8B. 40, 10
        sub     edx, eax                                ; 0E8C _ 29. C2
        mov     eax, edx                                ; 0E8E _ 89. D0
        pop     ebp                                     ; 0E90 _ 5D
        ret                                             ; 0E91 _ C3
; fifo8_status End of function

showKeyboardInfo:; Function begin
        push    ebp                                     ; 0E92 _ 55
        mov     ebp, esp                                ; 0E93 _ 89. E5
        sub     esp, 40                                 ; 0E95 _ 83. EC, 28
        call    io_sti                                  ; 0E98 _ E8, FFFFFFFC(rel)
        mov     eax, dword [bootInfo]                   ; 0E9D _ A1, 00000000(d)
        mov     dword [ebp-18H], eax                    ; 0EA2 _ 89. 45, E8
        movzx   eax, word [?_153]                       ; 0EA5 _ 0F B7. 05, 00000004(d)
        cwde                                            ; 0EAC _ 98
        mov     dword [ebp-14H], eax                    ; 0EAD _ 89. 45, EC
        movzx   eax, word [?_154]                       ; 0EB0 _ 0F B7. 05, 00000006(d)
        cwde                                            ; 0EB7 _ 98
        mov     dword [ebp-10H], eax                    ; 0EB8 _ 89. 45, F0
        mov     byte [ebp-19H], 0                       ; 0EBB _ C6. 45, E7, 00
        sub     esp, 12                                 ; 0EBF _ 83. EC, 0C
        push    keyInfo                                 ; 0EC2 _ 68, 00000008(d)
        call    fifo8_get                               ; 0EC7 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0ECC _ 83. C4, 10
        mov     byte [ebp-19H], al                      ; 0ECF _ 88. 45, E7
        movzx   eax, byte [ebp-19H]                     ; 0ED2 _ 0F B6. 45, E7
        sub     esp, 12                                 ; 0ED6 _ 83. EC, 0C
        push    eax                                     ; 0ED9 _ 50
        call    charToHex                               ; 0EDA _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0EDF _ 83. C4, 10
        mov     dword [ebp-0CH], eax                    ; 0EE2 _ 89. 45, F4
        mov     edx, dword [line.1835]                  ; 0EE5 _ 8B. 15, 0000020C(d)
        mov     eax, dword [pos.1834]                   ; 0EEB _ A1, 00000210(d)
        sub     esp, 8                                  ; 0EF0 _ 83. EC, 08
        push    dword [ebp-0CH]                         ; 0EF3 _ FF. 75, F4
        push    7                                       ; 0EF6 _ 6A, 07
        push    edx                                     ; 0EF8 _ 52
        push    eax                                     ; 0EF9 _ 50
        push    dword [ebp+0CH]                         ; 0EFA _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 0EFD _ FF. 75, 08
        call    showString                              ; 0F00 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0F05 _ 83. C4, 20
        mov     eax, dword [pos.1834]                   ; 0F08 _ A1, 00000210(d)
        add     eax, 32                                 ; 0F0D _ 83. C0, 20
        mov     dword [pos.1834], eax                   ; 0F10 _ A3, 00000210(d)
        mov     eax, dword [pos.1834]                   ; 0F15 _ A1, 00000210(d)
        cmp     dword [ebp-14H], eax                    ; 0F1A _ 39. 45, EC
        jnz     ?_051                                   ; 0F1D _ 75, 28
        mov     eax, dword [line.1835]                  ; 0F1F _ A1, 0000020C(d)
        cmp     dword [ebp-10H], eax                    ; 0F24 _ 39. 45, F0
        jz      ?_049                                   ; 0F27 _ 74, 0A
        mov     eax, dword [line.1835]                  ; 0F29 _ A1, 0000020C(d)
        add     eax, 16                                 ; 0F2E _ 83. C0, 10
        jmp     ?_050                                   ; 0F31 _ EB, 05

?_049:  mov     eax, 0                                  ; 0F33 _ B8, 00000000
?_050:  mov     dword [line.1835], eax                  ; 0F38 _ A3, 0000020C(d)
        mov     dword [pos.1834], 0                     ; 0F3D _ C7. 05, 00000210(d), 00000000
?_051:  nop                                             ; 0F47 _ 90
        leave                                           ; 0F48 _ C9
        ret                                             ; 0F49 _ C3
; showKeyboardInfo End of function

showMouseInfo:; Function begin
        push    ebp                                     ; 0F4A _ 55
        mov     ebp, esp                                ; 0F4B _ 89. E5
        sub     esp, 24                                 ; 0F4D _ 83. EC, 18
        call    io_sti                                  ; 0F50 _ E8, FFFFFFFC(rel)
        mov     byte [ebp-9H], 0                        ; 0F55 _ C6. 45, F7, 00
        sub     esp, 12                                 ; 0F59 _ 83. EC, 0C
        push    mouseInfo                               ; 0F5C _ 68, 00000020(d)
        call    fifo8_get                               ; 0F61 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0F66 _ 83. C4, 10
        mov     byte [ebp-9H], al                       ; 0F69 _ 88. 45, F7
        movzx   eax, byte [ebp-9H]                      ; 0F6C _ 0F B6. 45, F7
        sub     esp, 8                                  ; 0F70 _ 83. EC, 08
        push    eax                                     ; 0F73 _ 50
        push    mouse_move                              ; 0F74 _ 68, 000000E0(d)
        call    mouse_decode                            ; 0F79 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0F7E _ 83. C4, 10
        test    eax, eax                                ; 0F81 _ 85. C0
        jz      ?_052                                   ; 0F83 _ 74, 31
        sub     esp, 4                                  ; 0F85 _ 83. EC, 04
        push    mouse_move                              ; 0F88 _ 68, 000000E0(d)
        push    dword [ebp+0CH]                         ; 0F8D _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 0F90 _ FF. 75, 08
        call    computeMousePos                         ; 0F93 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0F98 _ 83. C4, 10
        mov     edx, dword [my]                         ; 0F9B _ 8B. 15, 000000F4(d)
        mov     eax, dword [mx]                         ; 0FA1 _ A1, 000000F0(d)
        push    edx                                     ; 0FA6 _ 52
        push    eax                                     ; 0FA7 _ 50
        push    dword [ebp+10H]                         ; 0FA8 _ FF. 75, 10
        push    dword [ebp+8H]                          ; 0FAB _ FF. 75, 08
        call    sheet_slide                             ; 0FAE _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0FB3 _ 83. C4, 10
?_052:  nop                                             ; 0FB6 _ 90
        leave                                           ; 0FB7 _ C9
        ret                                             ; 0FB8 _ C3
; showMouseInfo End of function

mouse_decode:; Function begin
        push    ebp                                     ; 0FB9 _ 55
        mov     ebp, esp                                ; 0FBA _ 89. E5
        sub     esp, 4                                  ; 0FBC _ 83. EC, 04
        mov     eax, dword [ebp+0CH]                    ; 0FBF _ 8B. 45, 0C
        mov     byte [ebp-4H], al                       ; 0FC2 _ 88. 45, FC
        mov     eax, dword [ebp+8H]                     ; 0FC5 _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 0FC8 _ 0F B6. 40, 03
        test    al, al                                  ; 0FCC _ 84. C0
        jnz     ?_054                                   ; 0FCE _ 75, 17
        cmp     byte [ebp-4H], -6                       ; 0FD0 _ 80. 7D, FC, FA
        jnz     ?_053                                   ; 0FD4 _ 75, 07
        mov     eax, dword [ebp+8H]                     ; 0FD6 _ 8B. 45, 08
        mov     byte [eax+3H], 1                        ; 0FD9 _ C6. 40, 03, 01
?_053:  mov     eax, 0                                  ; 0FDD _ B8, 00000000
        jmp     ?_061                                   ; 0FE2 _ E9, 0000010C

?_054:  mov     eax, dword [ebp+8H]                     ; 0FE7 _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 0FEA _ 0F B6. 40, 03
        cmp     al, 1                                   ; 0FEE _ 3C, 01
        jnz     ?_056                                   ; 0FF0 _ 75, 25
        movzx   eax, byte [ebp-4H]                      ; 0FF2 _ 0F B6. 45, FC
        or      eax, 37H                                ; 0FF6 _ 83. C8, 37
        cmp     al, 63                                  ; 0FF9 _ 3C, 3F
        jnz     ?_055                                   ; 0FFB _ 75, 10
        mov     eax, dword [ebp+8H]                     ; 0FFD _ 8B. 45, 08
        movzx   edx, byte [ebp-4H]                      ; 1000 _ 0F B6. 55, FC
        mov     byte [eax], dl                          ; 1004 _ 88. 10
        mov     eax, dword [ebp+8H]                     ; 1006 _ 8B. 45, 08
        mov     byte [eax+3H], 2                        ; 1009 _ C6. 40, 03, 02
?_055:  mov     eax, 0                                  ; 100D _ B8, 00000000
        jmp     ?_061                                   ; 1012 _ E9, 000000DC

?_056:  mov     eax, dword [ebp+8H]                     ; 1017 _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 101A _ 0F B6. 40, 03
        cmp     al, 2                                   ; 101E _ 3C, 02
        jnz     ?_057                                   ; 1020 _ 75, 1B
        mov     eax, dword [ebp+8H]                     ; 1022 _ 8B. 45, 08
        movzx   edx, byte [ebp-4H]                      ; 1025 _ 0F B6. 55, FC
        mov     byte [eax+1H], dl                       ; 1029 _ 88. 50, 01
        mov     eax, dword [ebp+8H]                     ; 102C _ 8B. 45, 08
        mov     byte [eax+3H], 3                        ; 102F _ C6. 40, 03, 03
        mov     eax, 0                                  ; 1033 _ B8, 00000000
        jmp     ?_061                                   ; 1038 _ E9, 000000B6

?_057:  mov     eax, dword [ebp+8H]                     ; 103D _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 1040 _ 0F B6. 40, 03
        cmp     al, 3                                   ; 1044 _ 3C, 03
        jne     ?_060                                   ; 1046 _ 0F 85, 000000A2
        mov     eax, dword [ebp+8H]                     ; 104C _ 8B. 45, 08
        movzx   edx, byte [ebp-4H]                      ; 104F _ 0F B6. 55, FC
        mov     byte [eax+2H], dl                       ; 1053 _ 88. 50, 02
        mov     eax, dword [ebp+8H]                     ; 1056 _ 8B. 45, 08
        mov     byte [eax+3H], 1                        ; 1059 _ C6. 40, 03, 01
        mov     eax, dword [ebp+8H]                     ; 105D _ 8B. 45, 08
        movzx   eax, byte [eax]                         ; 1060 _ 0F B6. 00
        movzx   eax, al                                 ; 1063 _ 0F B6. C0
        and     eax, 07H                                ; 1066 _ 83. E0, 07
        mov     edx, eax                                ; 1069 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 106B _ 8B. 45, 08
        mov     dword [eax+0CH], edx                    ; 106E _ 89. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 1071 _ 8B. 45, 08
        movzx   eax, byte [eax+1H]                      ; 1074 _ 0F B6. 40, 01
        movzx   edx, al                                 ; 1078 _ 0F B6. D0
        mov     eax, dword [ebp+8H]                     ; 107B _ 8B. 45, 08
        mov     dword [eax+4H], edx                     ; 107E _ 89. 50, 04
        mov     eax, dword [ebp+8H]                     ; 1081 _ 8B. 45, 08
        movzx   eax, byte [eax+2H]                      ; 1084 _ 0F B6. 40, 02
        movzx   edx, al                                 ; 1088 _ 0F B6. D0
        mov     eax, dword [ebp+8H]                     ; 108B _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 108E _ 89. 50, 08
        mov     eax, dword [ebp+8H]                     ; 1091 _ 8B. 45, 08
        movzx   eax, byte [eax]                         ; 1094 _ 0F B6. 00
        movzx   eax, al                                 ; 1097 _ 0F B6. C0
        and     eax, 10H                                ; 109A _ 83. E0, 10
        test    eax, eax                                ; 109D _ 85. C0
        jz      ?_058                                   ; 109F _ 74, 13
        mov     eax, dword [ebp+8H]                     ; 10A1 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 10A4 _ 8B. 40, 04
        or      eax, 0FFFFFF00H                         ; 10A7 _ 0D, FFFFFF00
        mov     edx, eax                                ; 10AC _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 10AE _ 8B. 45, 08
        mov     dword [eax+4H], edx                     ; 10B1 _ 89. 50, 04
?_058:  mov     eax, dword [ebp+8H]                     ; 10B4 _ 8B. 45, 08
        movzx   eax, byte [eax]                         ; 10B7 _ 0F B6. 00
        movzx   eax, al                                 ; 10BA _ 0F B6. C0
        and     eax, 20H                                ; 10BD _ 83. E0, 20
        test    eax, eax                                ; 10C0 _ 85. C0
        jz      ?_059                                   ; 10C2 _ 74, 13
        mov     eax, dword [ebp+8H]                     ; 10C4 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 10C7 _ 8B. 40, 08
        or      eax, 0FFFFFF00H                         ; 10CA _ 0D, FFFFFF00
        mov     edx, eax                                ; 10CF _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 10D1 _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 10D4 _ 89. 50, 08
?_059:  mov     eax, dword [ebp+8H]                     ; 10D7 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 10DA _ 8B. 40, 08
        neg     eax                                     ; 10DD _ F7. D8
        mov     edx, eax                                ; 10DF _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 10E1 _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 10E4 _ 89. 50, 08
        mov     eax, 1                                  ; 10E7 _ B8, 00000001
        jmp     ?_061                                   ; 10EC _ EB, 05

?_060:  mov     eax, 4294967295                         ; 10EE _ B8, FFFFFFFF
?_061:  leave                                           ; 10F3 _ C9
        ret                                             ; 10F4 _ C3
; mouse_decode End of function

computeMousePos:; Function begin
        push    ebp                                     ; 10F5 _ 55
        mov     ebp, esp                                ; 10F6 _ 89. E5
        sub     esp, 24                                 ; 10F8 _ 83. EC, 18
        movzx   eax, word [?_153]                       ; 10FB _ 0F B7. 05, 00000004(d)
        cwde                                            ; 1102 _ 98
        mov     dword [ebp-10H], eax                    ; 1103 _ 89. 45, F0
        movzx   eax, word [?_154]                       ; 1106 _ 0F B7. 05, 00000006(d)
        cwde                                            ; 110D _ 98
        mov     dword [ebp-0CH], eax                    ; 110E _ 89. 45, F4
        mov     eax, dword [ebp+10H]                    ; 1111 _ 8B. 45, 10
        mov     edx, dword [eax+4H]                     ; 1114 _ 8B. 50, 04
        mov     eax, dword [mx]                         ; 1117 _ A1, 000000F0(d)
        add     eax, edx                                ; 111C _ 01. D0
        mov     dword [mx], eax                         ; 111E _ A3, 000000F0(d)
        mov     eax, dword [ebp+10H]                    ; 1123 _ 8B. 45, 10
        mov     edx, dword [eax+8H]                     ; 1126 _ 8B. 50, 08
        mov     eax, dword [my]                         ; 1129 _ A1, 000000F4(d)
        add     eax, edx                                ; 112E _ 01. D0
        mov     dword [my], eax                         ; 1130 _ A3, 000000F4(d)
        mov     eax, dword [mx]                         ; 1135 _ A1, 000000F0(d)
        test    eax, eax                                ; 113A _ 85. C0
        jns     ?_062                                   ; 113C _ 79, 0A
        mov     dword [mx], 0                           ; 113E _ C7. 05, 000000F0(d), 00000000
?_062:  mov     eax, dword [my]                         ; 1148 _ A1, 000000F4(d)
        test    eax, eax                                ; 114D _ 85. C0
        jns     ?_063                                   ; 114F _ 79, 0A
        mov     dword [my], 0                           ; 1151 _ C7. 05, 000000F4(d), 00000000
?_063:  mov     eax, dword [ebp-10H]                    ; 115B _ 8B. 45, F0
        lea     edx, [eax-9H]                           ; 115E _ 8D. 50, F7
        mov     eax, dword [mx]                         ; 1161 _ A1, 000000F0(d)
        cmp     edx, eax                                ; 1166 _ 39. C2
        jge     ?_064                                   ; 1168 _ 7D, 0B
        mov     eax, dword [ebp-10H]                    ; 116A _ 8B. 45, F0
        sub     eax, 9                                  ; 116D _ 83. E8, 09
        mov     dword [mx], eax                         ; 1170 _ A3, 000000F0(d)
?_064:  mov     eax, dword [ebp-0CH]                    ; 1175 _ 8B. 45, F4
        lea     edx, [eax-1H]                           ; 1178 _ 8D. 50, FF
        mov     eax, dword [my]                         ; 117B _ A1, 000000F4(d)
        cmp     edx, eax                                ; 1180 _ 39. C2
        jge     ?_065                                   ; 1182 _ 7D, 0B
        mov     eax, dword [ebp-0CH]                    ; 1184 _ 8B. 45, F4
        sub     eax, 1                                  ; 1187 _ 83. E8, 01
        mov     dword [my], eax                         ; 118A _ A3, 000000F4(d)
?_065:  mov     eax, dword [buf_back]                   ; 118F _ A1, 000000F8(d)
        push    15                                      ; 1194 _ 6A, 0F
        push    79                                      ; 1196 _ 6A, 4F
        push    0                                       ; 1198 _ 6A, 00
        push    0                                       ; 119A _ 6A, 00
        push    14                                      ; 119C _ 6A, 0E
        push    dword [ebp-10H]                         ; 119E _ FF. 75, F0
        push    eax                                     ; 11A1 _ 50
        call    boxfill8                                ; 11A2 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 11A7 _ 83. C4, 1C
        sub     esp, 8                                  ; 11AA _ 83. EC, 08
        push    ?_144                                   ; 11AD _ 68, 0000001F(d)
        push    3                                       ; 11B2 _ 6A, 03
        push    0                                       ; 11B4 _ 6A, 00
        push    0                                       ; 11B6 _ 6A, 00
        push    dword [ebp+0CH]                         ; 11B8 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 11BB _ FF. 75, 08
        call    showString                              ; 11BE _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 11C3 _ 83. C4, 20
        nop                                             ; 11C6 _ 90
        leave                                           ; 11C7 _ C9
        ret                                             ; 11C8 _ C3
; computeMousePos End of function

showMemInfo:; Function begin
        push    ebp                                     ; 11C9 _ 55
        mov     ebp, esp                                ; 11CA _ 89. E5
        sub     esp, 56                                 ; 11CC _ 83. EC, 38
        mov     dword [ebp-30H], 0                      ; 11CF _ C7. 45, D0, 00000000
        mov     dword [ebp-2CH], 0                      ; 11D6 _ C7. 45, D4, 00000000
        mov     dword [ebp-28H], 112                    ; 11DD _ C7. 45, D8, 00000070
        mov     dword [ebp-24H], 80                     ; 11E4 _ C7. 45, DC, 00000050
        push    100                                     ; 11EB _ 6A, 64
        push    dword [ebp+1CH]                         ; 11ED _ FF. 75, 1C
        push    0                                       ; 11F0 _ 6A, 00
        push    0                                       ; 11F2 _ 6A, 00
        push    14                                      ; 11F4 _ 6A, 0E
        push    dword [ebp+1CH]                         ; 11F6 _ FF. 75, 1C
        push    dword [ebp+14H]                         ; 11F9 _ FF. 75, 14
        call    boxfill8                                ; 11FC _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 1201 _ 83. C4, 1C
        mov     eax, dword [ebp+20H]                    ; 1204 _ 8B. 45, 20
        movsx   eax, al                                 ; 1207 _ 0F BE. C0
        sub     esp, 8                                  ; 120A _ 83. EC, 08
        push    ?_145                                   ; 120D _ 68, 00000036(d)
        push    eax                                     ; 1212 _ 50
        push    dword [ebp-2CH]                         ; 1213 _ FF. 75, D4
        push    dword [ebp-30H]                         ; 1216 _ FF. 75, D0
        push    dword [ebp+0CH]                         ; 1219 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 121C _ FF. 75, 08
        call    showString                              ; 121F _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1224 _ 83. C4, 20
        mov     eax, dword [ebp+18H]                    ; 1227 _ 8B. 45, 18
        sub     esp, 12                                 ; 122A _ 83. EC, 0C
        push    eax                                     ; 122D _ 50
        call    intToHexStr                             ; 122E _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1233 _ 83. C4, 10
        mov     dword [ebp-20H], eax                    ; 1236 _ 89. 45, E0
        mov     eax, dword [ebp+20H]                    ; 1239 _ 8B. 45, 20
        movsx   eax, al                                 ; 123C _ 0F BE. C0
        sub     esp, 8                                  ; 123F _ 83. EC, 08
        push    dword [ebp-20H]                         ; 1242 _ FF. 75, E0
        push    eax                                     ; 1245 _ 50
        push    dword [ebp-2CH]                         ; 1246 _ FF. 75, D4
        push    dword [ebp-28H]                         ; 1249 _ FF. 75, D8
        push    dword [ebp+0CH]                         ; 124C _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 124F _ FF. 75, 08
        call    showString                              ; 1252 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1257 _ 83. C4, 20
        add     dword [ebp-2CH], 16                     ; 125A _ 83. 45, D4, 10
        mov     eax, dword [ebp+20H]                    ; 125E _ 8B. 45, 20
        movsx   eax, al                                 ; 1261 _ 0F BE. C0
        sub     esp, 8                                  ; 1264 _ 83. EC, 08
        push    ?_146                                   ; 1267 _ 68, 00000040(d)
        push    eax                                     ; 126C _ 50
        push    dword [ebp-2CH]                         ; 126D _ FF. 75, D4
        push    dword [ebp-30H]                         ; 1270 _ FF. 75, D0
        push    dword [ebp+0CH]                         ; 1273 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1276 _ FF. 75, 08
        call    showString                              ; 1279 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 127E _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 1281 _ 8B. 45, 10
        mov     eax, dword [eax]                        ; 1284 _ 8B. 00
        sub     esp, 12                                 ; 1286 _ 83. EC, 0C
        push    eax                                     ; 1289 _ 50
        call    intToHexStr                             ; 128A _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 128F _ 83. C4, 10
        mov     dword [ebp-1CH], eax                    ; 1292 _ 89. 45, E4
        mov     eax, dword [ebp+20H]                    ; 1295 _ 8B. 45, 20
        movsx   eax, al                                 ; 1298 _ 0F BE. C0
        sub     esp, 8                                  ; 129B _ 83. EC, 08
        push    dword [ebp-1CH]                         ; 129E _ FF. 75, E4
        push    eax                                     ; 12A1 _ 50
        push    dword [ebp-2CH]                         ; 12A2 _ FF. 75, D4
        push    dword [ebp-28H]                         ; 12A5 _ FF. 75, D8
        push    dword [ebp+0CH]                         ; 12A8 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 12AB _ FF. 75, 08
        call    showString                              ; 12AE _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 12B3 _ 83. C4, 20
        add     dword [ebp-2CH], 16                     ; 12B6 _ 83. 45, D4, 10
        mov     eax, dword [ebp+20H]                    ; 12BA _ 8B. 45, 20
        movsx   eax, al                                 ; 12BD _ 0F BE. C0
        sub     esp, 8                                  ; 12C0 _ 83. EC, 08
        push    ?_147                                   ; 12C3 _ 68, 0000004E(d)
        push    eax                                     ; 12C8 _ 50
        push    dword [ebp-2CH]                         ; 12C9 _ FF. 75, D4
        push    dword [ebp-30H]                         ; 12CC _ FF. 75, D0
        push    dword [ebp+0CH]                         ; 12CF _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 12D2 _ FF. 75, 08
        call    showString                              ; 12D5 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 12DA _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 12DD _ 8B. 45, 10
        mov     eax, dword [eax+4H]                     ; 12E0 _ 8B. 40, 04
        sub     esp, 12                                 ; 12E3 _ 83. EC, 0C
        push    eax                                     ; 12E6 _ 50
        call    intToHexStr                             ; 12E7 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 12EC _ 83. C4, 10
        mov     dword [ebp-18H], eax                    ; 12EF _ 89. 45, E8
        mov     eax, dword [ebp+20H]                    ; 12F2 _ 8B. 45, 20
        movsx   eax, al                                 ; 12F5 _ 0F BE. C0
        sub     esp, 8                                  ; 12F8 _ 83. EC, 08
        push    dword [ebp-18H]                         ; 12FB _ FF. 75, E8
        push    eax                                     ; 12FE _ 50
        push    dword [ebp-2CH]                         ; 12FF _ FF. 75, D4
        push    dword [ebp-28H]                         ; 1302 _ FF. 75, D8
        push    dword [ebp+0CH]                         ; 1305 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1308 _ FF. 75, 08
        call    showString                              ; 130B _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1310 _ 83. C4, 20
        add     dword [ebp-2CH], 16                     ; 1313 _ 83. 45, D4, 10
        mov     eax, dword [ebp+20H]                    ; 1317 _ 8B. 45, 20
        movsx   eax, al                                 ; 131A _ 0F BE. C0
        sub     esp, 8                                  ; 131D _ 83. EC, 08
        push    ?_148                                   ; 1320 _ 68, 0000005D(d)
        push    eax                                     ; 1325 _ 50
        push    dword [ebp-2CH]                         ; 1326 _ FF. 75, D4
        push    dword [ebp-30H]                         ; 1329 _ FF. 75, D0
        push    dword [ebp+0CH]                         ; 132C _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 132F _ FF. 75, 08
        call    showString                              ; 1332 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1337 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 133A _ 8B. 45, 10
        mov     eax, dword [eax+8H]                     ; 133D _ 8B. 40, 08
        sub     esp, 12                                 ; 1340 _ 83. EC, 0C
        push    eax                                     ; 1343 _ 50
        call    intToHexStr                             ; 1344 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1349 _ 83. C4, 10
        mov     dword [ebp-14H], eax                    ; 134C _ 89. 45, EC
        mov     eax, dword [ebp+20H]                    ; 134F _ 8B. 45, 20
        movsx   eax, al                                 ; 1352 _ 0F BE. C0
        sub     esp, 8                                  ; 1355 _ 83. EC, 08
        push    dword [ebp-14H]                         ; 1358 _ FF. 75, EC
        push    eax                                     ; 135B _ 50
        push    dword [ebp-2CH]                         ; 135C _ FF. 75, D4
        push    dword [ebp-28H]                         ; 135F _ FF. 75, D8
        push    dword [ebp+0CH]                         ; 1362 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1365 _ FF. 75, 08
        call    showString                              ; 1368 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 136D _ 83. C4, 20
        add     dword [ebp-2CH], 16                     ; 1370 _ 83. 45, D4, 10
        mov     eax, dword [ebp+20H]                    ; 1374 _ 8B. 45, 20
        movsx   eax, al                                 ; 1377 _ 0F BE. C0
        sub     esp, 8                                  ; 137A _ 83. EC, 08
        push    ?_149                                   ; 137D _ 68, 00000069(d)
        push    eax                                     ; 1382 _ 50
        push    dword [ebp-2CH]                         ; 1383 _ FF. 75, D4
        push    dword [ebp-30H]                         ; 1386 _ FF. 75, D0
        push    dword [ebp+0CH]                         ; 1389 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 138C _ FF. 75, 08
        call    showString                              ; 138F _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1394 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 1397 _ 8B. 45, 10
        mov     eax, dword [eax+0CH]                    ; 139A _ 8B. 40, 0C
        sub     esp, 12                                 ; 139D _ 83. EC, 0C
        push    eax                                     ; 13A0 _ 50
        call    intToHexStr                             ; 13A1 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 13A6 _ 83. C4, 10
        mov     dword [ebp-10H], eax                    ; 13A9 _ 89. 45, F0
        mov     eax, dword [ebp+20H]                    ; 13AC _ 8B. 45, 20
        movsx   eax, al                                 ; 13AF _ 0F BE. C0
        sub     esp, 8                                  ; 13B2 _ 83. EC, 08
        push    dword [ebp-10H]                         ; 13B5 _ FF. 75, F0
        push    eax                                     ; 13B8 _ 50
        push    dword [ebp-2CH]                         ; 13B9 _ FF. 75, D4
        push    dword [ebp-28H]                         ; 13BC _ FF. 75, D8
        push    dword [ebp+0CH]                         ; 13BF _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 13C2 _ FF. 75, 08
        call    showString                              ; 13C5 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 13CA _ 83. C4, 20
        add     dword [ebp-2CH], 16                     ; 13CD _ 83. 45, D4, 10
        mov     eax, dword [ebp+20H]                    ; 13D1 _ 8B. 45, 20
        movsx   eax, al                                 ; 13D4 _ 0F BE. C0
        sub     esp, 8                                  ; 13D7 _ 83. EC, 08
        push    ?_150                                   ; 13DA _ 68, 00000076(d)
        push    eax                                     ; 13DF _ 50
        push    dword [ebp-2CH]                         ; 13E0 _ FF. 75, D4
        push    dword [ebp-30H]                         ; 13E3 _ FF. 75, D0
        push    dword [ebp+0CH]                         ; 13E6 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 13E9 _ FF. 75, 08
        call    showString                              ; 13EC _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 13F1 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 13F4 _ 8B. 45, 10
        mov     eax, dword [eax+10H]                    ; 13F7 _ 8B. 40, 10
        sub     esp, 12                                 ; 13FA _ 83. EC, 0C
        push    eax                                     ; 13FD _ 50
        call    intToHexStr                             ; 13FE _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1403 _ 83. C4, 10
        mov     dword [ebp-0CH], eax                    ; 1406 _ 89. 45, F4
        mov     eax, dword [ebp+20H]                    ; 1409 _ 8B. 45, 20
        movsx   eax, al                                 ; 140C _ 0F BE. C0
        sub     esp, 8                                  ; 140F _ 83. EC, 08
        push    dword [ebp-0CH]                         ; 1412 _ FF. 75, F4
        push    eax                                     ; 1415 _ 50
        push    dword [ebp-2CH]                         ; 1416 _ FF. 75, D4
        push    dword [ebp-28H]                         ; 1419 _ FF. 75, D8
        push    dword [ebp+0CH]                         ; 141C _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 141F _ FF. 75, 08
        call    showString                              ; 1422 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1427 _ 83. C4, 20
        add     dword [ebp-2CH], 16                     ; 142A _ 83. 45, D4, 10
        nop                                             ; 142E _ 90
        leave                                           ; 142F _ C9
        ret                                             ; 1430 _ C3
; showMemInfo End of function

messageBox:; Function begin
        push    ebp                                     ; 1431 _ 55
        mov     ebp, esp                                ; 1432 _ 89. E5
        sub     esp, 24                                 ; 1434 _ 83. EC, 18
        mov     eax, dword [memman]                     ; 1437 _ A1, 00000008(d)
        sub     esp, 8                                  ; 143C _ 83. EC, 08
        push    12000                                   ; 143F _ 68, 00002EE0
        push    eax                                     ; 1444 _ 50
        call    memman_alloc_4K                         ; 1445 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 144A _ 83. C4, 10
        mov     dword [ebp-10H], eax                    ; 144D _ 89. 45, F0
        sub     esp, 12                                 ; 1450 _ 83. EC, 0C
        push    dword [ebp+8H]                          ; 1453 _ FF. 75, 08
        call    sheet_alloc                             ; 1456 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 145B _ 83. C4, 10
        mov     dword [ebp-0CH], eax                    ; 145E _ 89. 45, F4
        sub     esp, 12                                 ; 1461 _ 83. EC, 0C
        push    99                                      ; 1464 _ 6A, 63
        push    75                                      ; 1466 _ 6A, 4B
        push    160                                     ; 1468 _ 68, 000000A0
        push    dword [ebp-10H]                         ; 146D _ FF. 75, F0
        push    dword [ebp-0CH]                         ; 1470 _ FF. 75, F4
        call    sheet_setbuf                            ; 1473 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1478 _ 83. C4, 20
        sub     esp, 4                                  ; 147B _ 83. EC, 04
        push    dword [ebp+0CH]                         ; 147E _ FF. 75, 0C
        push    dword [ebp-0CH]                         ; 1481 _ FF. 75, F4
        push    dword [ebp+8H]                          ; 1484 _ FF. 75, 08
        call    make_window8                            ; 1487 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 148C _ 83. C4, 10
        push    40                                      ; 148F _ 6A, 28
        push    60                                      ; 1491 _ 6A, 3C
        push    dword [ebp-0CH]                         ; 1493 _ FF. 75, F4
        push    dword [ebp+8H]                          ; 1496 _ FF. 75, 08
        call    sheet_slide                             ; 1499 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 149E _ 83. C4, 10
        sub     esp, 4                                  ; 14A1 _ 83. EC, 04
        push    1                                       ; 14A4 _ 6A, 01
        push    dword [ebp-0CH]                         ; 14A6 _ FF. 75, F4
        push    dword [ebp+8H]                          ; 14A9 _ FF. 75, 08
        call    sheet_level_updown                      ; 14AC _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 14B1 _ 83. C4, 10
        mov     eax, dword [ebp-0CH]                    ; 14B4 _ 8B. 45, F4
        leave                                           ; 14B7 _ C9
        ret                                             ; 14B8 _ C3
; messageBox End of function

make_window8:; Function begin
        push    ebp                                     ; 14B9 _ 55
        mov     ebp, esp                                ; 14BA _ 89. E5
        push    ebx                                     ; 14BC _ 53
        sub     esp, 36                                 ; 14BD _ 83. EC, 24
        mov     eax, dword [ebp+0CH]                    ; 14C0 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 14C3 _ 8B. 40, 04
        mov     dword [ebp-10H], eax                    ; 14C6 _ 89. 45, F0
        mov     eax, dword [ebp+0CH]                    ; 14C9 _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 14CC _ 8B. 40, 08
        mov     dword [ebp-0CH], eax                    ; 14CF _ 89. 45, F4
        mov     eax, dword [ebp-10H]                    ; 14D2 _ 8B. 45, F0
        lea     edx, [eax-1H]                           ; 14D5 _ 8D. 50, FF
        mov     eax, dword [ebp+0CH]                    ; 14D8 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 14DB _ 8B. 00
        push    0                                       ; 14DD _ 6A, 00
        push    edx                                     ; 14DF _ 52
        push    0                                       ; 14E0 _ 6A, 00
        push    0                                       ; 14E2 _ 6A, 00
        push    8                                       ; 14E4 _ 6A, 08
        push    dword [ebp-10H]                         ; 14E6 _ FF. 75, F0
        push    eax                                     ; 14E9 _ 50
        call    boxfill8                                ; 14EA _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 14EF _ 83. C4, 1C
        mov     eax, dword [ebp-10H]                    ; 14F2 _ 8B. 45, F0
        lea     edx, [eax-2H]                           ; 14F5 _ 8D. 50, FE
        mov     eax, dword [ebp+0CH]                    ; 14F8 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 14FB _ 8B. 00
        push    1                                       ; 14FD _ 6A, 01
        push    edx                                     ; 14FF _ 52
        push    1                                       ; 1500 _ 6A, 01
        push    1                                       ; 1502 _ 6A, 01
        push    7                                       ; 1504 _ 6A, 07
        push    dword [ebp-10H]                         ; 1506 _ FF. 75, F0
        push    eax                                     ; 1509 _ 50
        call    boxfill8                                ; 150A _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 150F _ 83. C4, 1C
        mov     eax, dword [ebp-0CH]                    ; 1512 _ 8B. 45, F4
        lea     edx, [eax-1H]                           ; 1515 _ 8D. 50, FF
        mov     eax, dword [ebp+0CH]                    ; 1518 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 151B _ 8B. 00
        push    edx                                     ; 151D _ 52
        push    0                                       ; 151E _ 6A, 00
        push    0                                       ; 1520 _ 6A, 00
        push    0                                       ; 1522 _ 6A, 00
        push    8                                       ; 1524 _ 6A, 08
        push    dword [ebp-10H]                         ; 1526 _ FF. 75, F0
        push    eax                                     ; 1529 _ 50
        call    boxfill8                                ; 152A _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 152F _ 83. C4, 1C
        mov     eax, dword [ebp-0CH]                    ; 1532 _ 8B. 45, F4
        lea     edx, [eax-1H]                           ; 1535 _ 8D. 50, FF
        mov     eax, dword [ebp+0CH]                    ; 1538 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 153B _ 8B. 00
        push    edx                                     ; 153D _ 52
        push    1                                       ; 153E _ 6A, 01
        push    1                                       ; 1540 _ 6A, 01
        push    1                                       ; 1542 _ 6A, 01
        push    7                                       ; 1544 _ 6A, 07
        push    dword [ebp-10H]                         ; 1546 _ FF. 75, F0
        push    eax                                     ; 1549 _ 50
        call    boxfill8                                ; 154A _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 154F _ 83. C4, 1C
        mov     eax, dword [ebp-0CH]                    ; 1552 _ 8B. 45, F4
        lea     ebx, [eax-2H]                           ; 1555 _ 8D. 58, FE
        mov     eax, dword [ebp-10H]                    ; 1558 _ 8B. 45, F0
        lea     ecx, [eax-2H]                           ; 155B _ 8D. 48, FE
        mov     eax, dword [ebp-10H]                    ; 155E _ 8B. 45, F0
        lea     edx, [eax-2H]                           ; 1561 _ 8D. 50, FE
        mov     eax, dword [ebp+0CH]                    ; 1564 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 1567 _ 8B. 00
        push    ebx                                     ; 1569 _ 53
        push    ecx                                     ; 156A _ 51
        push    1                                       ; 156B _ 6A, 01
        push    edx                                     ; 156D _ 52
        push    15                                      ; 156E _ 6A, 0F
        push    dword [ebp-10H]                         ; 1570 _ FF. 75, F0
        push    eax                                     ; 1573 _ 50
        call    boxfill8                                ; 1574 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 1579 _ 83. C4, 1C
        mov     eax, dword [ebp-0CH]                    ; 157C _ 8B. 45, F4
        lea     ebx, [eax-1H]                           ; 157F _ 8D. 58, FF
        mov     eax, dword [ebp-10H]                    ; 1582 _ 8B. 45, F0
        lea     ecx, [eax-1H]                           ; 1585 _ 8D. 48, FF
        mov     eax, dword [ebp-10H]                    ; 1588 _ 8B. 45, F0
        lea     edx, [eax-1H]                           ; 158B _ 8D. 50, FF
        mov     eax, dword [ebp+0CH]                    ; 158E _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 1591 _ 8B. 00
        push    ebx                                     ; 1593 _ 53
        push    ecx                                     ; 1594 _ 51
        push    0                                       ; 1595 _ 6A, 00
        push    edx                                     ; 1597 _ 52
        push    0                                       ; 1598 _ 6A, 00
        push    dword [ebp-10H]                         ; 159A _ FF. 75, F0
        push    eax                                     ; 159D _ 50
        call    boxfill8                                ; 159E _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 15A3 _ 83. C4, 1C
        mov     eax, dword [ebp-0CH]                    ; 15A6 _ 8B. 45, F4
        lea     ecx, [eax-3H]                           ; 15A9 _ 8D. 48, FD
        mov     eax, dword [ebp-10H]                    ; 15AC _ 8B. 45, F0
        lea     edx, [eax-3H]                           ; 15AF _ 8D. 50, FD
        mov     eax, dword [ebp+0CH]                    ; 15B2 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 15B5 _ 8B. 00
        push    ecx                                     ; 15B7 _ 51
        push    edx                                     ; 15B8 _ 52
        push    2                                       ; 15B9 _ 6A, 02
        push    2                                       ; 15BB _ 6A, 02
        push    8                                       ; 15BD _ 6A, 08
        push    dword [ebp-10H]                         ; 15BF _ FF. 75, F0
        push    eax                                     ; 15C2 _ 50
        call    boxfill8                                ; 15C3 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 15C8 _ 83. C4, 1C
        mov     eax, dword [ebp-10H]                    ; 15CB _ 8B. 45, F0
        lea     edx, [eax-4H]                           ; 15CE _ 8D. 50, FC
        mov     eax, dword [ebp+0CH]                    ; 15D1 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 15D4 _ 8B. 00
        push    20                                      ; 15D6 _ 6A, 14
        push    edx                                     ; 15D8 _ 52
        push    3                                       ; 15D9 _ 6A, 03
        push    3                                       ; 15DB _ 6A, 03
        push    12                                      ; 15DD _ 6A, 0C
        push    dword [ebp-10H]                         ; 15DF _ FF. 75, F0
        push    eax                                     ; 15E2 _ 50
        call    boxfill8                                ; 15E3 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 15E8 _ 83. C4, 1C
        mov     eax, dword [ebp-0CH]                    ; 15EB _ 8B. 45, F4
        lea     ebx, [eax-2H]                           ; 15EE _ 8D. 58, FE
        mov     eax, dword [ebp-10H]                    ; 15F1 _ 8B. 45, F0
        lea     ecx, [eax-2H]                           ; 15F4 _ 8D. 48, FE
        mov     eax, dword [ebp-0CH]                    ; 15F7 _ 8B. 45, F4
        lea     edx, [eax-2H]                           ; 15FA _ 8D. 50, FE
        mov     eax, dword [ebp+0CH]                    ; 15FD _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 1600 _ 8B. 00
        push    ebx                                     ; 1602 _ 53
        push    ecx                                     ; 1603 _ 51
        push    edx                                     ; 1604 _ 52
        push    1                                       ; 1605 _ 6A, 01
        push    15                                      ; 1607 _ 6A, 0F
        push    dword [ebp-10H]                         ; 1609 _ FF. 75, F0
        push    eax                                     ; 160C _ 50
        call    boxfill8                                ; 160D _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 1612 _ 83. C4, 1C
        mov     eax, dword [ebp-0CH]                    ; 1615 _ 8B. 45, F4
        lea     ebx, [eax-1H]                           ; 1618 _ 8D. 58, FF
        mov     eax, dword [ebp-10H]                    ; 161B _ 8B. 45, F0
        lea     ecx, [eax-1H]                           ; 161E _ 8D. 48, FF
        mov     eax, dword [ebp-0CH]                    ; 1621 _ 8B. 45, F4
        lea     edx, [eax-1H]                           ; 1624 _ 8D. 50, FF
        mov     eax, dword [ebp+0CH]                    ; 1627 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 162A _ 8B. 00
        push    ebx                                     ; 162C _ 53
        push    ecx                                     ; 162D _ 51
        push    edx                                     ; 162E _ 52
        push    0                                       ; 162F _ 6A, 00
        push    0                                       ; 1631 _ 6A, 00
        push    dword [ebp-10H]                         ; 1633 _ FF. 75, F0
        push    eax                                     ; 1636 _ 50
        call    boxfill8                                ; 1637 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 163C _ 83. C4, 1C
        sub     esp, 8                                  ; 163F _ 83. EC, 08
        push    dword [ebp+10H]                         ; 1642 _ FF. 75, 10
        push    7                                       ; 1645 _ 6A, 07
        push    4                                       ; 1647 _ 6A, 04
        push    8                                       ; 1649 _ 6A, 08
        push    dword [ebp+0CH]                         ; 164B _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 164E _ FF. 75, 08
        call    showString                              ; 1651 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1656 _ 83. C4, 20
        mov     dword [ebp-18H], 0                      ; 1659 _ C7. 45, E8, 00000000
        jmp     ?_072                                   ; 1660 _ EB, 7D

?_066:  mov     dword [ebp-14H], 0                      ; 1662 _ C7. 45, EC, 00000000
        jmp     ?_071                                   ; 1669 _ EB, 6A

?_067:  mov     eax, dword [ebp-18H]                    ; 166B _ 8B. 45, E8
        shl     eax, 4                                  ; 166E _ C1. E0, 04
        mov     edx, eax                                ; 1671 _ 89. C2
        mov     eax, dword [ebp-14H]                    ; 1673 _ 8B. 45, EC
        add     eax, edx                                ; 1676 _ 01. D0
        add     eax, closebtn.1883                      ; 1678 _ 05, 00000160(d)
        movzx   eax, byte [eax]                         ; 167D _ 0F B6. 00
        mov     byte [ebp-19H], al                      ; 1680 _ 88. 45, E7
        cmp     byte [ebp-19H], 64                      ; 1683 _ 80. 7D, E7, 40
        jnz     ?_068                                   ; 1687 _ 75, 06
        mov     byte [ebp-19H], 0                       ; 1689 _ C6. 45, E7, 00
        jmp     ?_070                                   ; 168D _ EB, 16

?_068:  cmp     byte [ebp-19H], 36                      ; 168F _ 80. 7D, E7, 24
        jnz     ?_069                                   ; 1693 _ 75, 06
        mov     byte [ebp-19H], 15                      ; 1695 _ C6. 45, E7, 0F
        jmp     ?_070                                   ; 1699 _ EB, 0A

?_069:  cmp     byte [ebp-19H], 81                      ; 169B _ 80. 7D, E7, 51
        jnz     ?_070                                   ; 169F _ 75, 04
        mov     byte [ebp-19H], 8                       ; 16A1 _ C6. 45, E7, 08
?_070:  mov     eax, dword [ebp+0CH]                    ; 16A5 _ 8B. 45, 0C
        mov     edx, dword [eax]                        ; 16A8 _ 8B. 10
        mov     eax, dword [ebp-18H]                    ; 16AA _ 8B. 45, E8
        lea     ecx, [eax+5H]                           ; 16AD _ 8D. 48, 05
        mov     eax, dword [ebp+0CH]                    ; 16B0 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 16B3 _ 8B. 40, 04
        imul    ecx, eax                                ; 16B6 _ 0F AF. C8
        mov     eax, dword [ebp+0CH]                    ; 16B9 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 16BC _ 8B. 40, 04
        lea     ebx, [eax-15H]                          ; 16BF _ 8D. 58, EB
        mov     eax, dword [ebp-14H]                    ; 16C2 _ 8B. 45, EC
        add     eax, ebx                                ; 16C5 _ 01. D8
        add     eax, ecx                                ; 16C7 _ 01. C8
        add     edx, eax                                ; 16C9 _ 01. C2
        movzx   eax, byte [ebp-19H]                     ; 16CB _ 0F B6. 45, E7
        mov     byte [edx], al                          ; 16CF _ 88. 02
        add     dword [ebp-14H], 1                      ; 16D1 _ 83. 45, EC, 01
?_071:  cmp     dword [ebp-14H], 15                     ; 16D5 _ 83. 7D, EC, 0F
        jle     ?_067                                   ; 16D9 _ 7E, 90
        add     dword [ebp-18H], 1                      ; 16DB _ 83. 45, E8, 01
?_072:  cmp     dword [ebp-18H], 13                     ; 16DF _ 83. 7D, E8, 0D
        jle     ?_066                                   ; 16E3 _ 0F 8E, FFFFFF79
        nop                                             ; 16E9 _ 90
        mov     ebx, dword [ebp-4H]                     ; 16EA _ 8B. 5D, FC
        leave                                           ; 16ED _ C9
        ret                                             ; 16EE _ C3
; make_window8 End of function

memman_init:; Function begin
        push    ebp                                     ; 16EF _ 55
        mov     ebp, esp                                ; 16F0 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 16F2 _ 8B. 45, 08
        mov     dword [eax], 0                          ; 16F5 _ C7. 00, 00000000
        mov     eax, dword [ebp+8H]                     ; 16FB _ 8B. 45, 08
        mov     dword [eax+4H], 0                       ; 16FE _ C7. 40, 04, 00000000
        mov     eax, dword [ebp+8H]                     ; 1705 _ 8B. 45, 08
        mov     dword [eax+8H], 0                       ; 1708 _ C7. 40, 08, 00000000
        mov     eax, dword [ebp+8H]                     ; 170F _ 8B. 45, 08
        mov     dword [eax+0CH], 0                      ; 1712 _ C7. 40, 0C, 00000000
        nop                                             ; 1719 _ 90
        pop     ebp                                     ; 171A _ 5D
        ret                                             ; 171B _ C3
; memman_init End of function

memman_total:; Function begin
        push    ebp                                     ; 171C _ 55
        mov     ebp, esp                                ; 171D _ 89. E5
        sub     esp, 16                                 ; 171F _ 83. EC, 10
        mov     dword [ebp-8H], 0                       ; 1722 _ C7. 45, F8, 00000000
        mov     dword [ebp-4H], 0                       ; 1729 _ C7. 45, FC, 00000000
        jmp     ?_074                                   ; 1730 _ EB, 14

?_073:  mov     eax, dword [ebp+8H]                     ; 1732 _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 1735 _ 8B. 55, FC
        add     edx, 2                                  ; 1738 _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 173B _ 8B. 44 D0, 04
        add     dword [ebp-8H], eax                     ; 173F _ 01. 45, F8
        add     dword [ebp-4H], 1                       ; 1742 _ 83. 45, FC, 01
?_074:  mov     eax, dword [ebp+8H]                     ; 1746 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 1749 _ 8B. 00
        cmp     dword [ebp-4H], eax                     ; 174B _ 39. 45, FC
        jl      ?_073                                   ; 174E _ 7C, E2
        mov     eax, dword [ebp-8H]                     ; 1750 _ 8B. 45, F8
        leave                                           ; 1753 _ C9
        ret                                             ; 1754 _ C3
; memman_total End of function

memman_alloc_FF:; Function begin
        push    ebp                                     ; 1755 _ 55
        mov     ebp, esp                                ; 1756 _ 89. E5
        sub     esp, 16                                 ; 1758 _ 83. EC, 10
        mov     dword [ebp-8H], 0                       ; 175B _ C7. 45, F8, 00000000
        jmp     ?_078                                   ; 1762 _ E9, 00000085

?_075:  mov     eax, dword [ebp+8H]                     ; 1767 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 176A _ 8B. 55, F8
        add     edx, 2                                  ; 176D _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 1770 _ 8B. 44 D0, 04
        cmp     dword [ebp+0CH], eax                    ; 1774 _ 39. 45, 0C
        ja      ?_077                                   ; 1777 _ 77, 6F
        mov     eax, dword [ebp+8H]                     ; 1779 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 177C _ 8B. 55, F8
        add     edx, 2                                  ; 177F _ 83. C2, 02
        mov     eax, dword [eax+edx*8]                  ; 1782 _ 8B. 04 D0
        mov     dword [ebp-4H], eax                     ; 1785 _ 89. 45, FC
        mov     eax, dword [ebp+8H]                     ; 1788 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 178B _ 8B. 55, F8
        add     edx, 2                                  ; 178E _ 83. C2, 02
        mov     edx, dword [eax+edx*8]                  ; 1791 _ 8B. 14 D0
        mov     eax, dword [ebp+0CH]                    ; 1794 _ 8B. 45, 0C
        lea     ecx, [edx+eax]                          ; 1797 _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 179A _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 179D _ 8B. 55, F8
        add     edx, 2                                  ; 17A0 _ 83. C2, 02
        mov     dword [eax+edx*8], ecx                  ; 17A3 _ 89. 0C D0
        mov     eax, dword [ebp+8H]                     ; 17A6 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 17A9 _ 8B. 55, F8
        add     edx, 2                                  ; 17AC _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 17AF _ 8B. 44 D0, 04
        sub     eax, dword [ebp+0CH]                    ; 17B3 _ 2B. 45, 0C
        mov     edx, eax                                ; 17B6 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 17B8 _ 8B. 45, 08
        mov     ecx, dword [ebp-8H]                     ; 17BB _ 8B. 4D, F8
        add     ecx, 2                                  ; 17BE _ 83. C1, 02
        mov     dword [eax+ecx*8+4H], edx               ; 17C1 _ 89. 54 C8, 04
        mov     eax, dword [ebp+8H]                     ; 17C5 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 17C8 _ 8B. 55, F8
        add     edx, 2                                  ; 17CB _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 17CE _ 8B. 44 D0, 04
        test    eax, eax                                ; 17D2 _ 85. C0
        jnz     ?_076                                   ; 17D4 _ 75, 0D
        mov     eax, dword [ebp+8H]                     ; 17D6 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 17D9 _ 8B. 00
        lea     edx, [eax-1H]                           ; 17DB _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 17DE _ 8B. 45, 08
        mov     dword [eax], edx                        ; 17E1 _ 89. 10
?_076:  mov     eax, dword [ebp-4H]                     ; 17E3 _ 8B. 45, FC
        jmp     ?_079                                   ; 17E6 _ EB, 17

?_077:  add     dword [ebp-8H], 1                       ; 17E8 _ 83. 45, F8, 01
?_078:  mov     eax, dword [ebp+8H]                     ; 17EC _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 17EF _ 8B. 00
        cmp     dword [ebp-8H], eax                     ; 17F1 _ 39. 45, F8
        jl      ?_075                                   ; 17F4 _ 0F 8C, FFFFFF6D
        mov     eax, 0                                  ; 17FA _ B8, 00000000
?_079:  leave                                           ; 17FF _ C9
        ret                                             ; 1800 _ C3
; memman_alloc_FF End of function

memman_alloc_4K:; Function begin
        push    ebp                                     ; 1801 _ 55
        mov     ebp, esp                                ; 1802 _ 89. E5
        sub     esp, 16                                 ; 1804 _ 83. EC, 10
        mov     eax, dword [ebp+0CH]                    ; 1807 _ 8B. 45, 0C
        add     eax, 4095                               ; 180A _ 05, 00000FFF
        and     eax, 0FFFFF000H                         ; 180F _ 25, FFFFF000
        mov     dword [ebp+0CH], eax                    ; 1814 _ 89. 45, 0C
        push    dword [ebp+0CH]                         ; 1817 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 181A _ FF. 75, 08
        call    memman_alloc_FF                         ; 181D _ E8, FFFFFFFC(rel)
        add     esp, 8                                  ; 1822 _ 83. C4, 08
        mov     dword [ebp-4H], eax                     ; 1825 _ 89. 45, FC
        mov     eax, dword [ebp-4H]                     ; 1828 _ 8B. 45, FC
        leave                                           ; 182B _ C9
        ret                                             ; 182C _ C3
; memman_alloc_4K End of function

memman_free:; Function begin
        push    ebp                                     ; 182D _ 55
        mov     ebp, esp                                ; 182E _ 89. E5
        push    ebx                                     ; 1830 _ 53
        sub     esp, 16                                 ; 1831 _ 83. EC, 10
        mov     dword [ebp-0CH], 0                      ; 1834 _ C7. 45, F4, 00000000
        jmp     ?_081                                   ; 183B _ EB, 15

?_080:  mov     eax, dword [ebp+8H]                     ; 183D _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 1840 _ 8B. 55, F4
        add     edx, 2                                  ; 1843 _ 83. C2, 02
        mov     eax, dword [eax+edx*8]                  ; 1846 _ 8B. 04 D0
        cmp     dword [ebp+0CH], eax                    ; 1849 _ 39. 45, 0C
        jc      ?_082                                   ; 184C _ 72, 10
        add     dword [ebp-0CH], 1                      ; 184E _ 83. 45, F4, 01
?_081:  mov     eax, dword [ebp+8H]                     ; 1852 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 1855 _ 8B. 00
        cmp     dword [ebp-0CH], eax                    ; 1857 _ 39. 45, F4
        jl      ?_080                                   ; 185A _ 7C, E1
        jmp     ?_083                                   ; 185C _ EB, 01

?_082:  nop                                             ; 185E _ 90
?_083:  cmp     dword [ebp-0CH], 0                      ; 185F _ 83. 7D, F4, 00
        jle     ?_085                                   ; 1863 _ 0F 8E, 000000BA
        mov     eax, dword [ebp-0CH]                    ; 1869 _ 8B. 45, F4
        lea     edx, [eax-1H]                           ; 186C _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 186F _ 8B. 45, 08
        add     edx, 2                                  ; 1872 _ 83. C2, 02
        mov     edx, dword [eax+edx*8]                  ; 1875 _ 8B. 14 D0
        mov     eax, dword [ebp-0CH]                    ; 1878 _ 8B. 45, F4
        lea     ecx, [eax-1H]                           ; 187B _ 8D. 48, FF
        mov     eax, dword [ebp+8H]                     ; 187E _ 8B. 45, 08
        add     ecx, 2                                  ; 1881 _ 83. C1, 02
        mov     eax, dword [eax+ecx*8+4H]               ; 1884 _ 8B. 44 C8, 04
        add     eax, edx                                ; 1888 _ 01. D0
        cmp     dword [ebp+0CH], eax                    ; 188A _ 39. 45, 0C
        jne     ?_085                                   ; 188D _ 0F 85, 00000090
        mov     eax, dword [ebp-0CH]                    ; 1893 _ 8B. 45, F4
        lea     edx, [eax-1H]                           ; 1896 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 1899 _ 8B. 45, 08
        add     edx, 2                                  ; 189C _ 83. C2, 02
        mov     edx, dword [eax+edx*8+4H]               ; 189F _ 8B. 54 D0, 04
        mov     eax, dword [ebp-0CH]                    ; 18A3 _ 8B. 45, F4
        lea     ebx, [eax-1H]                           ; 18A6 _ 8D. 58, FF
        mov     eax, dword [ebp+10H]                    ; 18A9 _ 8B. 45, 10
        lea     ecx, [edx+eax]                          ; 18AC _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 18AF _ 8B. 45, 08
        lea     edx, [ebx+2H]                           ; 18B2 _ 8D. 53, 02
        mov     dword [eax+edx*8+4H], ecx               ; 18B5 _ 89. 4C D0, 04
        mov     eax, dword [ebp+8H]                     ; 18B9 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 18BC _ 8B. 00
        cmp     dword [ebp-0CH], eax                    ; 18BE _ 39. 45, F4
        jge     ?_084                                   ; 18C1 _ 7D, 56
        mov     edx, dword [ebp+0CH]                    ; 18C3 _ 8B. 55, 0C
        mov     eax, dword [ebp+10H]                    ; 18C6 _ 8B. 45, 10
        lea     ecx, [edx+eax]                          ; 18C9 _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 18CC _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 18CF _ 8B. 55, F4
        add     edx, 2                                  ; 18D2 _ 83. C2, 02
        mov     eax, dword [eax+edx*8]                  ; 18D5 _ 8B. 04 D0
        cmp     ecx, eax                                ; 18D8 _ 39. C1
        jnz     ?_084                                   ; 18DA _ 75, 3D
        mov     eax, dword [ebp-0CH]                    ; 18DC _ 8B. 45, F4
        lea     edx, [eax-1H]                           ; 18DF _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 18E2 _ 8B. 45, 08
        add     edx, 2                                  ; 18E5 _ 83. C2, 02
        mov     edx, dword [eax+edx*8+4H]               ; 18E8 _ 8B. 54 D0, 04
        mov     eax, dword [ebp+8H]                     ; 18EC _ 8B. 45, 08
        mov     ecx, dword [ebp-0CH]                    ; 18EF _ 8B. 4D, F4
        add     ecx, 2                                  ; 18F2 _ 83. C1, 02
        mov     eax, dword [eax+ecx*8+4H]               ; 18F5 _ 8B. 44 C8, 04
        mov     ecx, dword [ebp-0CH]                    ; 18F9 _ 8B. 4D, F4
        lea     ebx, [ecx-1H]                           ; 18FC _ 8D. 59, FF
        lea     ecx, [edx+eax]                          ; 18FF _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 1902 _ 8B. 45, 08
        lea     edx, [ebx+2H]                           ; 1905 _ 8D. 53, 02
        mov     dword [eax+edx*8+4H], ecx               ; 1908 _ 89. 4C D0, 04
        mov     eax, dword [ebp+8H]                     ; 190C _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 190F _ 8B. 00
        lea     edx, [eax-1H]                           ; 1911 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 1914 _ 8B. 45, 08
        mov     dword [eax], edx                        ; 1917 _ 89. 10
?_084:  mov     eax, 0                                  ; 1919 _ B8, 00000000
        jmp     ?_091                                   ; 191E _ E9, 0000011C

?_085:  mov     eax, dword [ebp+8H]                     ; 1923 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 1926 _ 8B. 00
        cmp     dword [ebp-0CH], eax                    ; 1928 _ 39. 45, F4
        jge     ?_086                                   ; 192B _ 7D, 52
        mov     edx, dword [ebp+0CH]                    ; 192D _ 8B. 55, 0C
        mov     eax, dword [ebp+10H]                    ; 1930 _ 8B. 45, 10
        lea     ecx, [edx+eax]                          ; 1933 _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 1936 _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 1939 _ 8B. 55, F4
        add     edx, 2                                  ; 193C _ 83. C2, 02
        mov     eax, dword [eax+edx*8]                  ; 193F _ 8B. 04 D0
        cmp     ecx, eax                                ; 1942 _ 39. C1
        jnz     ?_086                                   ; 1944 _ 75, 39
        mov     eax, dword [ebp+8H]                     ; 1946 _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 1949 _ 8B. 55, F4
        lea     ecx, [edx+2H]                           ; 194C _ 8D. 4A, 02
        mov     edx, dword [ebp+0CH]                    ; 194F _ 8B. 55, 0C
        mov     dword [eax+ecx*8], edx                  ; 1952 _ 89. 14 C8
        mov     eax, dword [ebp+8H]                     ; 1955 _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 1958 _ 8B. 55, F4
        add     edx, 2                                  ; 195B _ 83. C2, 02
        mov     edx, dword [eax+edx*8+4H]               ; 195E _ 8B. 54 D0, 04
        mov     eax, dword [ebp+10H]                    ; 1962 _ 8B. 45, 10
        lea     ecx, [edx+eax]                          ; 1965 _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 1968 _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 196B _ 8B. 55, F4
        add     edx, 2                                  ; 196E _ 83. C2, 02
        mov     dword [eax+edx*8+4H], ecx               ; 1971 _ 89. 4C D0, 04
        mov     eax, 0                                  ; 1975 _ B8, 00000000
        jmp     ?_091                                   ; 197A _ E9, 000000C0

?_086:  mov     eax, dword [ebp+8H]                     ; 197F _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 1982 _ 8B. 00
        cmp     eax, 4095                               ; 1984 _ 3D, 00000FFF
        jg      ?_090                                   ; 1989 _ 0F 8F, 00000087
        mov     eax, dword [ebp+8H]                     ; 198F _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 1992 _ 8B. 00
        mov     dword [ebp-8H], eax                     ; 1994 _ 89. 45, F8
        jmp     ?_088                                   ; 1997 _ EB, 28

?_087:  mov     eax, dword [ebp-8H]                     ; 1999 _ 8B. 45, F8
        lea     edx, [eax-1H]                           ; 199C _ 8D. 50, FF
        mov     ecx, dword [ebp+8H]                     ; 199F _ 8B. 4D, 08
        mov     eax, dword [ebp-8H]                     ; 19A2 _ 8B. 45, F8
        lea     ebx, [eax+2H]                           ; 19A5 _ 8D. 58, 02
        mov     eax, dword [ebp+8H]                     ; 19A8 _ 8B. 45, 08
        add     edx, 2                                  ; 19AB _ 83. C2, 02
        lea     edx, [eax+edx*8]                        ; 19AE _ 8D. 14 D0
        mov     eax, dword [edx]                        ; 19B1 _ 8B. 02
        mov     edx, dword [edx+4H]                     ; 19B3 _ 8B. 52, 04
        mov     dword [ecx+ebx*8], eax                  ; 19B6 _ 89. 04 D9
        mov     dword [ecx+ebx*8+4H], edx               ; 19B9 _ 89. 54 D9, 04
        sub     dword [ebp-8H], 1                       ; 19BD _ 83. 6D, F8, 01
?_088:  mov     eax, dword [ebp-8H]                     ; 19C1 _ 8B. 45, F8
        cmp     eax, dword [ebp-0CH]                    ; 19C4 _ 3B. 45, F4
        jg      ?_087                                   ; 19C7 _ 7F, D0
        mov     eax, dword [ebp+8H]                     ; 19C9 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 19CC _ 8B. 00
        lea     edx, [eax+1H]                           ; 19CE _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 19D1 _ 8B. 45, 08
        mov     dword [eax], edx                        ; 19D4 _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 19D6 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 19D9 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 19DC _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 19DF _ 8B. 00
        cmp     edx, eax                                ; 19E1 _ 39. C2
        jge     ?_089                                   ; 19E3 _ 7D, 0B
        mov     eax, dword [ebp+8H]                     ; 19E5 _ 8B. 45, 08
        mov     edx, dword [eax]                        ; 19E8 _ 8B. 10
        mov     eax, dword [ebp+8H]                     ; 19EA _ 8B. 45, 08
        mov     dword [eax+4H], edx                     ; 19ED _ 89. 50, 04
?_089:  mov     eax, dword [ebp+8H]                     ; 19F0 _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 19F3 _ 8B. 55, F4
        lea     ecx, [edx+2H]                           ; 19F6 _ 8D. 4A, 02
        mov     edx, dword [ebp+0CH]                    ; 19F9 _ 8B. 55, 0C
        mov     dword [eax+ecx*8], edx                  ; 19FC _ 89. 14 C8
        mov     eax, dword [ebp+8H]                     ; 19FF _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 1A02 _ 8B. 55, F4
        lea     ecx, [edx+2H]                           ; 1A05 _ 8D. 4A, 02
        mov     edx, dword [ebp+10H]                    ; 1A08 _ 8B. 55, 10
        mov     dword [eax+ecx*8+4H], edx               ; 1A0B _ 89. 54 C8, 04
        mov     eax, 0                                  ; 1A0F _ B8, 00000000
        jmp     ?_091                                   ; 1A14 _ EB, 29

?_090:  mov     eax, dword [ebp+8H]                     ; 1A16 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 1A19 _ 8B. 40, 0C
        lea     edx, [eax+1H]                           ; 1A1C _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 1A1F _ 8B. 45, 08
        mov     dword [eax+0CH], edx                    ; 1A22 _ 89. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 1A25 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 1A28 _ 8B. 40, 08
        mov     edx, eax                                ; 1A2B _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 1A2D _ 8B. 45, 10
        add     eax, edx                                ; 1A30 _ 01. D0
        mov     edx, eax                                ; 1A32 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 1A34 _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 1A37 _ 89. 50, 08
        mov     eax, 4294967295                         ; 1A3A _ B8, FFFFFFFF
?_091:  add     esp, 16                                 ; 1A3F _ 83. C4, 10
        pop     ebx                                     ; 1A42 _ 5B
        pop     ebp                                     ; 1A43 _ 5D
        ret                                             ; 1A44 _ C3
; memman_free End of function

memman_free_4K:; Function begin
        push    ebp                                     ; 1A45 _ 55
        mov     ebp, esp                                ; 1A46 _ 89. E5
        sub     esp, 16                                 ; 1A48 _ 83. EC, 10
        mov     eax, dword [ebp+10H]                    ; 1A4B _ 8B. 45, 10
        add     eax, 4095                               ; 1A4E _ 05, 00000FFF
        and     eax, 0FFFFF000H                         ; 1A53 _ 25, FFFFF000
        mov     dword [ebp+10H], eax                    ; 1A58 _ 89. 45, 10
        push    dword [ebp+10H]                         ; 1A5B _ FF. 75, 10
        push    dword [ebp+0CH]                         ; 1A5E _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1A61 _ FF. 75, 08
        call    memman_free                             ; 1A64 _ E8, FFFFFFFC(rel)
        add     esp, 12                                 ; 1A69 _ 83. C4, 0C
        mov     dword [ebp-4H], eax                     ; 1A6C _ 89. 45, FC
        mov     eax, dword [ebp-4H]                     ; 1A6F _ 8B. 45, FC
        leave                                           ; 1A72 _ C9
        ret                                             ; 1A73 _ C3
; memman_free_4K End of function

shtctl_init:; Function begin
        push    ebp                                     ; 1A74 _ 55
        mov     ebp, esp                                ; 1A75 _ 89. E5
        sub     esp, 24                                 ; 1A77 _ 83. EC, 18
        sub     esp, 8                                  ; 1A7A _ 83. EC, 08
        push    9232                                    ; 1A7D _ 68, 00002410
        push    dword [ebp+8H]                          ; 1A82 _ FF. 75, 08
        call    memman_alloc_4K                         ; 1A85 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1A8A _ 83. C4, 10
        mov     dword [ebp-0CH], eax                    ; 1A8D _ 89. 45, F4
        cmp     dword [ebp-0CH], 0                      ; 1A90 _ 83. 7D, F4, 00
        jnz     ?_092                                   ; 1A94 _ 75, 0A
        mov     eax, 0                                  ; 1A96 _ B8, 00000000
        jmp     ?_096                                   ; 1A9B _ E9, 0000009A

?_092:  mov     eax, dword [ebp+10H]                    ; 1AA0 _ 8B. 45, 10
        imul    eax, dword [ebp+14H]                    ; 1AA3 _ 0F AF. 45, 14
        sub     esp, 8                                  ; 1AA7 _ 83. EC, 08
        push    eax                                     ; 1AAA _ 50
        push    dword [ebp+8H]                          ; 1AAB _ FF. 75, 08
        call    memman_alloc_4K                         ; 1AAE _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1AB3 _ 83. C4, 10
        mov     edx, eax                                ; 1AB6 _ 89. C2
        mov     eax, dword [ebp-0CH]                    ; 1AB8 _ 8B. 45, F4
        mov     dword [eax+4H], edx                     ; 1ABB _ 89. 50, 04
        mov     eax, dword [ebp-0CH]                    ; 1ABE _ 8B. 45, F4
        mov     eax, dword [eax+4H]                     ; 1AC1 _ 8B. 40, 04
        test    eax, eax                                ; 1AC4 _ 85. C0
        jnz     ?_093                                   ; 1AC6 _ 75, 1E
        mov     eax, dword [ebp-0CH]                    ; 1AC8 _ 8B. 45, F4
        sub     esp, 4                                  ; 1ACB _ 83. EC, 04
        push    9232                                    ; 1ACE _ 68, 00002410
        push    eax                                     ; 1AD3 _ 50
        push    dword [ebp+8H]                          ; 1AD4 _ FF. 75, 08
        call    memman_free_4K                          ; 1AD7 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1ADC _ 83. C4, 10
        mov     eax, 0                                  ; 1ADF _ B8, 00000000
        jmp     ?_096                                   ; 1AE4 _ EB, 54

?_093:  mov     eax, dword [ebp-0CH]                    ; 1AE6 _ 8B. 45, F4
        mov     edx, dword [ebp+0CH]                    ; 1AE9 _ 8B. 55, 0C
        mov     dword [eax], edx                        ; 1AEC _ 89. 10
        mov     eax, dword [ebp-0CH]                    ; 1AEE _ 8B. 45, F4
        mov     edx, dword [ebp+10H]                    ; 1AF1 _ 8B. 55, 10
        mov     dword [eax+8H], edx                     ; 1AF4 _ 89. 50, 08
        mov     eax, dword [ebp-0CH]                    ; 1AF7 _ 8B. 45, F4
        mov     edx, dword [ebp+14H]                    ; 1AFA _ 8B. 55, 14
        mov     dword [eax+0CH], edx                    ; 1AFD _ 89. 50, 0C
        mov     eax, dword [ebp-0CH]                    ; 1B00 _ 8B. 45, F4
        mov     dword [eax+10H], -1                     ; 1B03 _ C7. 40, 10, FFFFFFFF
        mov     dword [ebp-10H], 0                      ; 1B0A _ C7. 45, F0, 00000000
        jmp     ?_095                                   ; 1B11 _ EB, 1B

?_094:  mov     eax, dword [ebp-0CH]                    ; 1B13 _ 8B. 45, F4
        mov     edx, dword [ebp-10H]                    ; 1B16 _ 8B. 55, F0
        add     edx, 33                                 ; 1B19 _ 83. C2, 21
        shl     edx, 5                                  ; 1B1C _ C1. E2, 05
        add     eax, edx                                ; 1B1F _ 01. D0
        add     eax, 16                                 ; 1B21 _ 83. C0, 10
        mov     dword [eax], 0                          ; 1B24 _ C7. 00, 00000000
        add     dword [ebp-10H], 1                      ; 1B2A _ 83. 45, F0, 01
?_095:  cmp     dword [ebp-10H], 255                    ; 1B2E _ 81. 7D, F0, 000000FF
        jle     ?_094                                   ; 1B35 _ 7E, DC
        mov     eax, dword [ebp-0CH]                    ; 1B37 _ 8B. 45, F4
?_096:  leave                                           ; 1B3A _ C9
        ret                                             ; 1B3B _ C3
; shtctl_init End of function

sheet_alloc:; Function begin
        push    ebp                                     ; 1B3C _ 55
        mov     ebp, esp                                ; 1B3D _ 89. E5
        sub     esp, 16                                 ; 1B3F _ 83. EC, 10
        mov     dword [ebp-8H], 0                       ; 1B42 _ C7. 45, F8, 00000000
        jmp     ?_099                                   ; 1B49 _ EB, 4B

?_097:  mov     eax, dword [ebp+8H]                     ; 1B4B _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 1B4E _ 8B. 55, F8
        add     edx, 33                                 ; 1B51 _ 83. C2, 21
        shl     edx, 5                                  ; 1B54 _ C1. E2, 05
        add     eax, edx                                ; 1B57 _ 01. D0
        add     eax, 16                                 ; 1B59 _ 83. C0, 10
        mov     eax, dword [eax]                        ; 1B5C _ 8B. 00
        test    eax, eax                                ; 1B5E _ 85. C0
        jnz     ?_098                                   ; 1B60 _ 75, 30
        mov     eax, dword [ebp-8H]                     ; 1B62 _ 8B. 45, F8
        shl     eax, 5                                  ; 1B65 _ C1. E0, 05
        lea     edx, [eax+410H]                         ; 1B68 _ 8D. 90, 00000410
        mov     eax, dword [ebp+8H]                     ; 1B6E _ 8B. 45, 08
        add     eax, edx                                ; 1B71 _ 01. D0
        add     eax, 4                                  ; 1B73 _ 83. C0, 04
        mov     dword [ebp-4H], eax                     ; 1B76 _ 89. 45, FC
        mov     eax, dword [ebp-4H]                     ; 1B79 _ 8B. 45, FC
        mov     dword [eax+1CH], 1                      ; 1B7C _ C7. 40, 1C, 00000001
        mov     eax, dword [ebp-4H]                     ; 1B83 _ 8B. 45, FC
        mov     dword [eax+18H], -1                     ; 1B86 _ C7. 40, 18, FFFFFFFF
        mov     eax, dword [ebp-4H]                     ; 1B8D _ 8B. 45, FC
        jmp     ?_100                                   ; 1B90 _ EB, 12

?_098:  add     dword [ebp-8H], 1                       ; 1B92 _ 83. 45, F8, 01
?_099:  cmp     dword [ebp-8H], 255                     ; 1B96 _ 81. 7D, F8, 000000FF
        jle     ?_097                                   ; 1B9D _ 7E, AC
        mov     eax, 0                                  ; 1B9F _ B8, 00000000
?_100:  leave                                           ; 1BA4 _ C9
        ret                                             ; 1BA5 _ C3
; sheet_alloc End of function

sheet_setbuf:; Function begin
        push    ebp                                     ; 1BA6 _ 55
        mov     ebp, esp                                ; 1BA7 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 1BA9 _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 1BAC _ 8B. 55, 0C
        mov     dword [eax], edx                        ; 1BAF _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 1BB1 _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 1BB4 _ 8B. 55, 10
        mov     dword [eax+4H], edx                     ; 1BB7 _ 89. 50, 04
        mov     eax, dword [ebp+8H]                     ; 1BBA _ 8B. 45, 08
        mov     edx, dword [ebp+14H]                    ; 1BBD _ 8B. 55, 14
        mov     dword [eax+8H], edx                     ; 1BC0 _ 89. 50, 08
        mov     eax, dword [ebp+8H]                     ; 1BC3 _ 8B. 45, 08
        mov     edx, dword [ebp+18H]                    ; 1BC6 _ 8B. 55, 18
        mov     dword [eax+14H], edx                    ; 1BC9 _ 89. 50, 14
        nop                                             ; 1BCC _ 90
        pop     ebp                                     ; 1BCD _ 5D
        ret                                             ; 1BCE _ C3
; sheet_setbuf End of function

sheet_level_updown:; Function begin
        push    ebp                                     ; 1BCF _ 55
        mov     ebp, esp                                ; 1BD0 _ 89. E5
        push    esi                                     ; 1BD2 _ 56
        push    ebx                                     ; 1BD3 _ 53
        sub     esp, 32                                 ; 1BD4 _ 83. EC, 20
        mov     eax, dword [ebp+0CH]                    ; 1BD7 _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 1BDA _ 8B. 40, 18
        mov     dword [ebp-0CH], eax                    ; 1BDD _ 89. 45, F4
        mov     eax, dword [ebp+8H]                     ; 1BE0 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 1BE3 _ 8B. 40, 10
        add     eax, 1                                  ; 1BE6 _ 83. C0, 01
        cmp     dword [ebp+10H], eax                    ; 1BE9 _ 39. 45, 10
        jle     ?_101                                   ; 1BEC _ 7E, 0C
        mov     eax, dword [ebp+8H]                     ; 1BEE _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 1BF1 _ 8B. 40, 10
        add     eax, 1                                  ; 1BF4 _ 83. C0, 01
        mov     dword [ebp+10H], eax                    ; 1BF7 _ 89. 45, 10
?_101:  cmp     dword [ebp+10H], -1                     ; 1BFA _ 83. 7D, 10, FF
        jge     ?_102                                   ; 1BFE _ 7D, 07
        mov     dword [ebp+10H], -1                     ; 1C00 _ C7. 45, 10, FFFFFFFF
?_102:  mov     eax, dword [ebp+0CH]                    ; 1C07 _ 8B. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 1C0A _ 8B. 55, 10
        mov     dword [eax+18H], edx                    ; 1C0D _ 89. 50, 18
        mov     eax, dword [ebp-0CH]                    ; 1C10 _ 8B. 45, F4
        cmp     eax, dword [ebp+10H]                    ; 1C13 _ 3B. 45, 10
        jle     ?_109                                   ; 1C16 _ 0F 8E, 000001D5
        cmp     dword [ebp+10H], 0                      ; 1C1C _ 83. 7D, 10, 00
        js      ?_105                                   ; 1C20 _ 0F 88, 000000E2
        mov     eax, dword [ebp-0CH]                    ; 1C26 _ 8B. 45, F4
        mov     dword [ebp-1CH], eax                    ; 1C29 _ 89. 45, E4
        jmp     ?_104                                   ; 1C2C _ EB, 34

?_103:  mov     eax, dword [ebp-1CH]                    ; 1C2E _ 8B. 45, E4
        lea     edx, [eax-1H]                           ; 1C31 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 1C34 _ 8B. 45, 08
        add     edx, 4                                  ; 1C37 _ 83. C2, 04
        mov     edx, dword [eax+edx*4+4H]               ; 1C3A _ 8B. 54 90, 04
        mov     eax, dword [ebp+8H]                     ; 1C3E _ 8B. 45, 08
        mov     ecx, dword [ebp-1CH]                    ; 1C41 _ 8B. 4D, E4
        add     ecx, 4                                  ; 1C44 _ 83. C1, 04
        mov     dword [eax+ecx*4+4H], edx               ; 1C47 _ 89. 54 88, 04
        mov     eax, dword [ebp+8H]                     ; 1C4B _ 8B. 45, 08
        mov     edx, dword [ebp-1CH]                    ; 1C4E _ 8B. 55, E4
        add     edx, 4                                  ; 1C51 _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 1C54 _ 8B. 44 90, 04
        mov     edx, dword [ebp-1CH]                    ; 1C58 _ 8B. 55, E4
        mov     dword [eax+18H], edx                    ; 1C5B _ 89. 50, 18
        sub     dword [ebp-1CH], 1                      ; 1C5E _ 83. 6D, E4, 01
?_104:  mov     eax, dword [ebp-1CH]                    ; 1C62 _ 8B. 45, E4
        cmp     eax, dword [ebp+10H]                    ; 1C65 _ 3B. 45, 10
        jg      ?_103                                   ; 1C68 _ 7F, C4
        mov     eax, dword [ebp+8H]                     ; 1C6A _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 1C6D _ 8B. 55, 10
        lea     ecx, [edx+4H]                           ; 1C70 _ 8D. 4A, 04
        mov     edx, dword [ebp+0CH]                    ; 1C73 _ 8B. 55, 0C
        mov     dword [eax+ecx*4+4H], edx               ; 1C76 _ 89. 54 88, 04
        mov     eax, dword [ebp+10H]                    ; 1C7A _ 8B. 45, 10
        lea     esi, [eax+1H]                           ; 1C7D _ 8D. 70, 01
        mov     eax, dword [ebp+0CH]                    ; 1C80 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 1C83 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 1C86 _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 1C89 _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 1C8C _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 1C8F _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 1C92 _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 1C95 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 1C98 _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 1C9B _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 1C9E _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 1CA1 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 1CA4 _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 1CA7 _ 8B. 40, 0C
        sub     esp, 8                                  ; 1CAA _ 83. EC, 08
        push    esi                                     ; 1CAD _ 56
        push    ebx                                     ; 1CAE _ 53
        push    ecx                                     ; 1CAF _ 51
        push    edx                                     ; 1CB0 _ 52
        push    eax                                     ; 1CB1 _ 50
        push    dword [ebp+8H]                          ; 1CB2 _ FF. 75, 08
        call    sheet_refreshmap                        ; 1CB5 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1CBA _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 1CBD _ 8B. 45, 10
        lea     esi, [eax+1H]                           ; 1CC0 _ 8D. 70, 01
        mov     eax, dword [ebp+0CH]                    ; 1CC3 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 1CC6 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 1CC9 _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 1CCC _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 1CCF _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 1CD2 _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 1CD5 _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 1CD8 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 1CDB _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 1CDE _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 1CE1 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 1CE4 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 1CE7 _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 1CEA _ 8B. 40, 0C
        sub     esp, 4                                  ; 1CED _ 83. EC, 04
        push    dword [ebp-0CH]                         ; 1CF0 _ FF. 75, F4
        push    esi                                     ; 1CF3 _ 56
        push    ebx                                     ; 1CF4 _ 53
        push    ecx                                     ; 1CF5 _ 51
        push    edx                                     ; 1CF6 _ 52
        push    eax                                     ; 1CF7 _ 50
        push    dword [ebp+8H]                          ; 1CF8 _ FF. 75, 08
        call    sheet_refresh_new                       ; 1CFB _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1D00 _ 83. C4, 20
        jmp     ?_116                                   ; 1D03 _ E9, 00000244

?_105:  mov     eax, dword [ebp+8H]                     ; 1D08 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 1D0B _ 8B. 40, 10
        cmp     dword [ebp-0CH], eax                    ; 1D0E _ 39. 45, F4
        jge     ?_108                                   ; 1D11 _ 7D, 47
        mov     eax, dword [ebp-0CH]                    ; 1D13 _ 8B. 45, F4
        mov     dword [ebp-18H], eax                    ; 1D16 _ 89. 45, E8
        jmp     ?_107                                   ; 1D19 _ EB, 34

?_106:  mov     eax, dword [ebp-18H]                    ; 1D1B _ 8B. 45, E8
        lea     edx, [eax+1H]                           ; 1D1E _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 1D21 _ 8B. 45, 08
        add     edx, 4                                  ; 1D24 _ 83. C2, 04
        mov     edx, dword [eax+edx*4+4H]               ; 1D27 _ 8B. 54 90, 04
        mov     eax, dword [ebp+8H]                     ; 1D2B _ 8B. 45, 08
        mov     ecx, dword [ebp-18H]                    ; 1D2E _ 8B. 4D, E8
        add     ecx, 4                                  ; 1D31 _ 83. C1, 04
        mov     dword [eax+ecx*4+4H], edx               ; 1D34 _ 89. 54 88, 04
        mov     eax, dword [ebp+8H]                     ; 1D38 _ 8B. 45, 08
        mov     edx, dword [ebp-18H]                    ; 1D3B _ 8B. 55, E8
        add     edx, 4                                  ; 1D3E _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 1D41 _ 8B. 44 90, 04
        mov     edx, dword [ebp-18H]                    ; 1D45 _ 8B. 55, E8
        mov     dword [eax+18H], edx                    ; 1D48 _ 89. 50, 18
        add     dword [ebp-18H], 1                      ; 1D4B _ 83. 45, E8, 01
?_107:  mov     eax, dword [ebp+8H]                     ; 1D4F _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 1D52 _ 8B. 40, 10
        cmp     dword [ebp-18H], eax                    ; 1D55 _ 39. 45, E8
        jl      ?_106                                   ; 1D58 _ 7C, C1
?_108:  mov     eax, dword [ebp+8H]                     ; 1D5A _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 1D5D _ 8B. 40, 10
        lea     edx, [eax-1H]                           ; 1D60 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 1D63 _ 8B. 45, 08
        mov     dword [eax+10H], edx                    ; 1D66 _ 89. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 1D69 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 1D6C _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 1D6F _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 1D72 _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 1D75 _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 1D78 _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 1D7B _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 1D7E _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 1D81 _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 1D84 _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 1D87 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 1D8A _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 1D8D _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 1D90 _ 8B. 40, 0C
        sub     esp, 8                                  ; 1D93 _ 83. EC, 08
        push    0                                       ; 1D96 _ 6A, 00
        push    ebx                                     ; 1D98 _ 53
        push    ecx                                     ; 1D99 _ 51
        push    edx                                     ; 1D9A _ 52
        push    eax                                     ; 1D9B _ 50
        push    dword [ebp+8H]                          ; 1D9C _ FF. 75, 08
        call    sheet_refreshmap                        ; 1D9F _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1DA4 _ 83. C4, 20
        mov     eax, dword [ebp-0CH]                    ; 1DA7 _ 8B. 45, F4
        lea     esi, [eax-1H]                           ; 1DAA _ 8D. 70, FF
        mov     eax, dword [ebp+0CH]                    ; 1DAD _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 1DB0 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 1DB3 _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 1DB6 _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 1DB9 _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 1DBC _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 1DBF _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 1DC2 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 1DC5 _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 1DC8 _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 1DCB _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 1DCE _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 1DD1 _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 1DD4 _ 8B. 40, 0C
        sub     esp, 4                                  ; 1DD7 _ 83. EC, 04
        push    esi                                     ; 1DDA _ 56
        push    0                                       ; 1DDB _ 6A, 00
        push    ebx                                     ; 1DDD _ 53
        push    ecx                                     ; 1DDE _ 51
        push    edx                                     ; 1DDF _ 52
        push    eax                                     ; 1DE0 _ 50
        push    dword [ebp+8H]                          ; 1DE1 _ FF. 75, 08
        call    sheet_refresh_new                       ; 1DE4 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1DE9 _ 83. C4, 20
        jmp     ?_116                                   ; 1DEC _ E9, 0000015B

?_109:  mov     eax, dword [ebp-0CH]                    ; 1DF1 _ 8B. 45, F4
        cmp     eax, dword [ebp+10H]                    ; 1DF4 _ 3B. 45, 10
        jge     ?_116                                   ; 1DF7 _ 0F 8D, 0000014F
        cmp     dword [ebp-0CH], 0                      ; 1DFD _ 83. 7D, F4, 00
        js      ?_112                                   ; 1E01 _ 78, 56
        mov     eax, dword [ebp-0CH]                    ; 1E03 _ 8B. 45, F4
        mov     dword [ebp-14H], eax                    ; 1E06 _ 89. 45, EC
        jmp     ?_111                                   ; 1E09 _ EB, 34

?_110:  mov     eax, dword [ebp-14H]                    ; 1E0B _ 8B. 45, EC
        lea     edx, [eax+1H]                           ; 1E0E _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 1E11 _ 8B. 45, 08
        add     edx, 4                                  ; 1E14 _ 83. C2, 04
        mov     edx, dword [eax+edx*4+4H]               ; 1E17 _ 8B. 54 90, 04
        mov     eax, dword [ebp+8H]                     ; 1E1B _ 8B. 45, 08
        mov     ecx, dword [ebp-14H]                    ; 1E1E _ 8B. 4D, EC
        add     ecx, 4                                  ; 1E21 _ 83. C1, 04
        mov     dword [eax+ecx*4+4H], edx               ; 1E24 _ 89. 54 88, 04
        mov     eax, dword [ebp+8H]                     ; 1E28 _ 8B. 45, 08
        mov     edx, dword [ebp-14H]                    ; 1E2B _ 8B. 55, EC
        add     edx, 4                                  ; 1E2E _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 1E31 _ 8B. 44 90, 04
        mov     edx, dword [ebp-14H]                    ; 1E35 _ 8B. 55, EC
        mov     dword [eax+18H], edx                    ; 1E38 _ 89. 50, 18
        add     dword [ebp-14H], 1                      ; 1E3B _ 83. 45, EC, 01
?_111:  mov     eax, dword [ebp-14H]                    ; 1E3F _ 8B. 45, EC
        cmp     eax, dword [ebp+10H]                    ; 1E42 _ 3B. 45, 10
        jl      ?_110                                   ; 1E45 _ 7C, C4
        mov     eax, dword [ebp+8H]                     ; 1E47 _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 1E4A _ 8B. 55, 10
        lea     ecx, [edx+4H]                           ; 1E4D _ 8D. 4A, 04
        mov     edx, dword [ebp+0CH]                    ; 1E50 _ 8B. 55, 0C
        mov     dword [eax+ecx*4+4H], edx               ; 1E53 _ 89. 54 88, 04
        jmp     ?_115                                   ; 1E57 _ EB, 72

?_112:  cmp     dword [ebp-0CH], 0                      ; 1E59 _ 83. 7D, F4, 00
        jns     ?_115                                   ; 1E5D _ 79, 6C
        mov     eax, dword [ebp+8H]                     ; 1E5F _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 1E62 _ 8B. 40, 10
        mov     dword [ebp-10H], eax                    ; 1E65 _ 89. 45, F0
        jmp     ?_114                                   ; 1E68 _ EB, 3A

?_113:  mov     eax, dword [ebp-10H]                    ; 1E6A _ 8B. 45, F0
        lea     ecx, [eax+1H]                           ; 1E6D _ 8D. 48, 01
        mov     eax, dword [ebp+8H]                     ; 1E70 _ 8B. 45, 08
        mov     edx, dword [ebp-10H]                    ; 1E73 _ 8B. 55, F0
        add     edx, 4                                  ; 1E76 _ 83. C2, 04
        mov     edx, dword [eax+edx*4+4H]               ; 1E79 _ 8B. 54 90, 04
        mov     eax, dword [ebp+8H]                     ; 1E7D _ 8B. 45, 08
        add     ecx, 4                                  ; 1E80 _ 83. C1, 04
        mov     dword [eax+ecx*4+4H], edx               ; 1E83 _ 89. 54 88, 04
        mov     eax, dword [ebp-10H]                    ; 1E87 _ 8B. 45, F0
        lea     edx, [eax+1H]                           ; 1E8A _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 1E8D _ 8B. 45, 08
        add     edx, 4                                  ; 1E90 _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 1E93 _ 8B. 44 90, 04
        mov     edx, dword [ebp-10H]                    ; 1E97 _ 8B. 55, F0
        add     edx, 1                                  ; 1E9A _ 83. C2, 01
        mov     dword [eax+18H], edx                    ; 1E9D _ 89. 50, 18
        sub     dword [ebp-10H], 1                      ; 1EA0 _ 83. 6D, F0, 01
?_114:  mov     eax, dword [ebp-10H]                    ; 1EA4 _ 8B. 45, F0
        cmp     eax, dword [ebp+10H]                    ; 1EA7 _ 3B. 45, 10
        jge     ?_113                                   ; 1EAA _ 7D, BE
        mov     eax, dword [ebp+8H]                     ; 1EAC _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 1EAF _ 8B. 55, 10
        lea     ecx, [edx+4H]                           ; 1EB2 _ 8D. 4A, 04
        mov     edx, dword [ebp+0CH]                    ; 1EB5 _ 8B. 55, 0C
        mov     dword [eax+ecx*4+4H], edx               ; 1EB8 _ 89. 54 88, 04
        mov     eax, dword [ebp+8H]                     ; 1EBC _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 1EBF _ 8B. 40, 10
        lea     edx, [eax+1H]                           ; 1EC2 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 1EC5 _ 8B. 45, 08
        mov     dword [eax+10H], edx                    ; 1EC8 _ 89. 50, 10
?_115:  mov     eax, dword [ebp+0CH]                    ; 1ECB _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 1ECE _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 1ED1 _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 1ED4 _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 1ED7 _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 1EDA _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 1EDD _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 1EE0 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 1EE3 _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 1EE6 _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 1EE9 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 1EEC _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 1EEF _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 1EF2 _ 8B. 40, 0C
        sub     esp, 8                                  ; 1EF5 _ 83. EC, 08
        push    dword [ebp+10H]                         ; 1EF8 _ FF. 75, 10
        push    ebx                                     ; 1EFB _ 53
        push    ecx                                     ; 1EFC _ 51
        push    edx                                     ; 1EFD _ 52
        push    eax                                     ; 1EFE _ 50
        push    dword [ebp+8H]                          ; 1EFF _ FF. 75, 08
        call    sheet_refreshmap                        ; 1F02 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1F07 _ 83. C4, 20
        mov     eax, dword [ebp+0CH]                    ; 1F0A _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 1F0D _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 1F10 _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 1F13 _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 1F16 _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 1F19 _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 1F1C _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 1F1F _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 1F22 _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 1F25 _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 1F28 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 1F2B _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 1F2E _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 1F31 _ 8B. 40, 0C
        sub     esp, 4                                  ; 1F34 _ 83. EC, 04
        push    dword [ebp+10H]                         ; 1F37 _ FF. 75, 10
        push    dword [ebp+10H]                         ; 1F3A _ FF. 75, 10
        push    ebx                                     ; 1F3D _ 53
        push    ecx                                     ; 1F3E _ 51
        push    edx                                     ; 1F3F _ 52
        push    eax                                     ; 1F40 _ 50
        push    dword [ebp+8H]                          ; 1F41 _ FF. 75, 08
        call    sheet_refresh_new                       ; 1F44 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1F49 _ 83. C4, 20
?_116:  nop                                             ; 1F4C _ 90
        lea     esp, [ebp-8H]                           ; 1F4D _ 8D. 65, F8
        pop     ebx                                     ; 1F50 _ 5B
        pop     esi                                     ; 1F51 _ 5E
        pop     ebp                                     ; 1F52 _ 5D
        ret                                             ; 1F53 _ C3
; sheet_level_updown End of function

sheet_refresh:; Function begin
        push    ebp                                     ; 1F54 _ 55
        mov     ebp, esp                                ; 1F55 _ 89. E5
        push    edi                                     ; 1F57 _ 57
        push    esi                                     ; 1F58 _ 56
        push    ebx                                     ; 1F59 _ 53
        sub     esp, 28                                 ; 1F5A _ 83. EC, 1C
        mov     eax, dword [ebp+0CH]                    ; 1F5D _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 1F60 _ 8B. 40, 18
        test    eax, eax                                ; 1F63 _ 85. C0
        js      ?_117                                   ; 1F65 _ 78, 52
        mov     eax, dword [ebp+0CH]                    ; 1F67 _ 8B. 45, 0C
        mov     ebx, dword [eax+18H]                    ; 1F6A _ 8B. 58, 18
        mov     eax, dword [ebp+0CH]                    ; 1F6D _ 8B. 45, 0C
        mov     ecx, dword [eax+18H]                    ; 1F70 _ 8B. 48, 18
        mov     eax, dword [ebp+0CH]                    ; 1F73 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 1F76 _ 8B. 50, 10
        mov     eax, dword [ebp+1CH]                    ; 1F79 _ 8B. 45, 1C
        lea     edi, [edx+eax]                          ; 1F7C _ 8D. 3C 02
        mov     eax, dword [ebp+0CH]                    ; 1F7F _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 1F82 _ 8B. 50, 0C
        mov     eax, dword [ebp+18H]                    ; 1F85 _ 8B. 45, 18
        lea     esi, [edx+eax]                          ; 1F88 _ 8D. 34 02
        mov     eax, dword [ebp+0CH]                    ; 1F8B _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 1F8E _ 8B. 50, 10
        mov     eax, dword [ebp+14H]                    ; 1F91 _ 8B. 45, 14
        add     edx, eax                                ; 1F94 _ 01. C2
        mov     eax, dword [ebp+0CH]                    ; 1F96 _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 1F99 _ 8B. 40, 0C
        mov     dword [ebp-1CH], eax                    ; 1F9C _ 89. 45, E4
        mov     eax, dword [ebp+10H]                    ; 1F9F _ 8B. 45, 10
        add     eax, dword [ebp-1CH]                    ; 1FA2 _ 03. 45, E4
        sub     esp, 4                                  ; 1FA5 _ 83. EC, 04
        push    ebx                                     ; 1FA8 _ 53
        push    ecx                                     ; 1FA9 _ 51
        push    edi                                     ; 1FAA _ 57
        push    esi                                     ; 1FAB _ 56
        push    edx                                     ; 1FAC _ 52
        push    eax                                     ; 1FAD _ 50
        push    dword [ebp+8H]                          ; 1FAE _ FF. 75, 08
        call    sheet_refresh_new                       ; 1FB1 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1FB6 _ 83. C4, 20
?_117:  mov     eax, 0                                  ; 1FB9 _ B8, 00000000
        lea     esp, [ebp-0CH]                          ; 1FBE _ 8D. 65, F4
        pop     ebx                                     ; 1FC1 _ 5B
        pop     esi                                     ; 1FC2 _ 5E
        pop     edi                                     ; 1FC3 _ 5F
        pop     ebp                                     ; 1FC4 _ 5D
        ret                                             ; 1FC5 _ C3
; sheet_refresh End of function

sheet_slide:; Function begin
        push    ebp                                     ; 1FC6 _ 55
        mov     ebp, esp                                ; 1FC7 _ 89. E5
        push    esi                                     ; 1FC9 _ 56
        push    ebx                                     ; 1FCA _ 53
        sub     esp, 16                                 ; 1FCB _ 83. EC, 10
        mov     eax, dword [ebp+0CH]                    ; 1FCE _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 1FD1 _ 8B. 40, 0C
        mov     dword [ebp-10H], eax                    ; 1FD4 _ 89. 45, F0
        mov     eax, dword [ebp+0CH]                    ; 1FD7 _ 8B. 45, 0C
        mov     eax, dword [eax+10H]                    ; 1FDA _ 8B. 40, 10
        mov     dword [ebp-0CH], eax                    ; 1FDD _ 89. 45, F4
        mov     eax, dword [ebp+0CH]                    ; 1FE0 _ 8B. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 1FE3 _ 8B. 55, 10
        mov     dword [eax+0CH], edx                    ; 1FE6 _ 89. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 1FE9 _ 8B. 45, 0C
        mov     edx, dword [ebp+14H]                    ; 1FEC _ 8B. 55, 14
        mov     dword [eax+10H], edx                    ; 1FEF _ 89. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 1FF2 _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 1FF5 _ 8B. 40, 18
        test    eax, eax                                ; 1FF8 _ 85. C0
        js      ?_118                                   ; 1FFA _ 0F 88, 000000D3
        mov     eax, dword [ebp+0CH]                    ; 2000 _ 8B. 45, 0C
        mov     edx, dword [eax+8H]                     ; 2003 _ 8B. 50, 08
        mov     eax, dword [ebp-0CH]                    ; 2006 _ 8B. 45, F4
        add     edx, eax                                ; 2009 _ 01. C2
        mov     eax, dword [ebp+0CH]                    ; 200B _ 8B. 45, 0C
        mov     ecx, dword [eax+4H]                     ; 200E _ 8B. 48, 04
        mov     eax, dword [ebp-10H]                    ; 2011 _ 8B. 45, F0
        add     eax, ecx                                ; 2014 _ 01. C8
        sub     esp, 8                                  ; 2016 _ 83. EC, 08
        push    0                                       ; 2019 _ 6A, 00
        push    edx                                     ; 201B _ 52
        push    eax                                     ; 201C _ 50
        push    dword [ebp-0CH]                         ; 201D _ FF. 75, F4
        push    dword [ebp-10H]                         ; 2020 _ FF. 75, F0
        push    dword [ebp+8H]                          ; 2023 _ FF. 75, 08
        call    sheet_refreshmap                        ; 2026 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 202B _ 83. C4, 20
        mov     eax, dword [ebp+0CH]                    ; 202E _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 2031 _ 8B. 40, 18
        mov     edx, dword [ebp+0CH]                    ; 2034 _ 8B. 55, 0C
        mov     ecx, dword [edx+8H]                     ; 2037 _ 8B. 4A, 08
        mov     edx, dword [ebp+14H]                    ; 203A _ 8B. 55, 14
        add     ecx, edx                                ; 203D _ 01. D1
        mov     edx, dword [ebp+0CH]                    ; 203F _ 8B. 55, 0C
        mov     ebx, dword [edx+4H]                     ; 2042 _ 8B. 5A, 04
        mov     edx, dword [ebp+10H]                    ; 2045 _ 8B. 55, 10
        add     edx, ebx                                ; 2048 _ 01. DA
        sub     esp, 8                                  ; 204A _ 83. EC, 08
        push    eax                                     ; 204D _ 50
        push    ecx                                     ; 204E _ 51
        push    edx                                     ; 204F _ 52
        push    dword [ebp+14H]                         ; 2050 _ FF. 75, 14
        push    dword [ebp+10H]                         ; 2053 _ FF. 75, 10
        push    dword [ebp+8H]                          ; 2056 _ FF. 75, 08
        call    sheet_refreshmap                        ; 2059 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 205E _ 83. C4, 20
        mov     eax, dword [ebp+0CH]                    ; 2061 _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 2064 _ 8B. 40, 18
        lea     ecx, [eax-1H]                           ; 2067 _ 8D. 48, FF
        mov     eax, dword [ebp+0CH]                    ; 206A _ 8B. 45, 0C
        mov     edx, dword [eax+8H]                     ; 206D _ 8B. 50, 08
        mov     eax, dword [ebp-0CH]                    ; 2070 _ 8B. 45, F4
        add     edx, eax                                ; 2073 _ 01. C2
        mov     eax, dword [ebp+0CH]                    ; 2075 _ 8B. 45, 0C
        mov     ebx, dword [eax+4H]                     ; 2078 _ 8B. 58, 04
        mov     eax, dword [ebp-10H]                    ; 207B _ 8B. 45, F0
        add     eax, ebx                                ; 207E _ 01. D8
        sub     esp, 4                                  ; 2080 _ 83. EC, 04
        push    ecx                                     ; 2083 _ 51
        push    0                                       ; 2084 _ 6A, 00
        push    edx                                     ; 2086 _ 52
        push    eax                                     ; 2087 _ 50
        push    dword [ebp-0CH]                         ; 2088 _ FF. 75, F4
        push    dword [ebp-10H]                         ; 208B _ FF. 75, F0
        push    dword [ebp+8H]                          ; 208E _ FF. 75, 08
        call    sheet_refresh_new                       ; 2091 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 2096 _ 83. C4, 20
        mov     eax, dword [ebp+0CH]                    ; 2099 _ 8B. 45, 0C
        mov     edx, dword [eax+18H]                    ; 209C _ 8B. 50, 18
        mov     eax, dword [ebp+0CH]                    ; 209F _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 20A2 _ 8B. 40, 18
        mov     ecx, dword [ebp+0CH]                    ; 20A5 _ 8B. 4D, 0C
        mov     ebx, dword [ecx+8H]                     ; 20A8 _ 8B. 59, 08
        mov     ecx, dword [ebp+14H]                    ; 20AB _ 8B. 4D, 14
        add     ebx, ecx                                ; 20AE _ 01. CB
        mov     ecx, dword [ebp+0CH]                    ; 20B0 _ 8B. 4D, 0C
        mov     esi, dword [ecx+4H]                     ; 20B3 _ 8B. 71, 04
        mov     ecx, dword [ebp+10H]                    ; 20B6 _ 8B. 4D, 10
        add     ecx, esi                                ; 20B9 _ 01. F1
        sub     esp, 4                                  ; 20BB _ 83. EC, 04
        push    edx                                     ; 20BE _ 52
        push    eax                                     ; 20BF _ 50
        push    ebx                                     ; 20C0 _ 53
        push    ecx                                     ; 20C1 _ 51
        push    dword [ebp+14H]                         ; 20C2 _ FF. 75, 14
        push    dword [ebp+10H]                         ; 20C5 _ FF. 75, 10
        push    dword [ebp+8H]                          ; 20C8 _ FF. 75, 08
        call    sheet_refresh_new                       ; 20CB _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 20D0 _ 83. C4, 20
?_118:  nop                                             ; 20D3 _ 90
        lea     esp, [ebp-8H]                           ; 20D4 _ 8D. 65, F8
        pop     ebx                                     ; 20D7 _ 5B
        pop     esi                                     ; 20D8 _ 5E
        pop     ebp                                     ; 20D9 _ 5D
        ret                                             ; 20DA _ C3
; sheet_slide End of function

sheet_refresh_new:; Function begin
        push    ebp                                     ; 20DB _ 55
        mov     ebp, esp                                ; 20DC _ 89. E5
        sub     esp, 48                                 ; 20DE _ 83. EC, 30
        mov     eax, dword [ebp+8H]                     ; 20E1 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 20E4 _ 8B. 00
        mov     dword [ebp-18H], eax                    ; 20E6 _ 89. 45, E8
        mov     eax, dword [ebp+8H]                     ; 20E9 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 20EC _ 8B. 40, 04
        mov     dword [ebp-14H], eax                    ; 20EF _ 89. 45, EC
        mov     eax, dword [ebp+1CH]                    ; 20F2 _ 8B. 45, 1C
        mov     dword [ebp-24H], eax                    ; 20F5 _ 89. 45, DC
        jmp     ?_125                                   ; 20F8 _ E9, 00000118

?_119:  mov     eax, dword [ebp+8H]                     ; 20FD _ 8B. 45, 08
        mov     edx, dword [ebp-24H]                    ; 2100 _ 8B. 55, DC
        add     edx, 4                                  ; 2103 _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 2106 _ 8B. 44 90, 04
        mov     dword [ebp-10H], eax                    ; 210A _ 89. 45, F0
        mov     eax, dword [ebp-10H]                    ; 210D _ 8B. 45, F0
        mov     eax, dword [eax]                        ; 2110 _ 8B. 00
        mov     dword [ebp-0CH], eax                    ; 2112 _ 89. 45, F4
        mov     eax, dword [ebp-10H]                    ; 2115 _ 8B. 45, F0
        mov     edx, dword [ebp+8H]                     ; 2118 _ 8B. 55, 08
        add     edx, 1044                               ; 211B _ 81. C2, 00000414
        sub     eax, edx                                ; 2121 _ 29. D0
        sar     eax, 5                                  ; 2123 _ C1. F8, 05
        mov     byte [ebp-26H], al                      ; 2126 _ 88. 45, DA
        mov     dword [ebp-20H], 0                      ; 2129 _ C7. 45, E0, 00000000
        jmp     ?_124                                   ; 2130 _ E9, 000000CD

?_120:  mov     eax, dword [ebp-10H]                    ; 2135 _ 8B. 45, F0
        mov     edx, dword [eax+10H]                    ; 2138 _ 8B. 50, 10
        mov     eax, dword [ebp-20H]                    ; 213B _ 8B. 45, E0
        add     eax, edx                                ; 213E _ 01. D0
        mov     dword [ebp-8H], eax                     ; 2140 _ 89. 45, F8
        mov     dword [ebp-1CH], 0                      ; 2143 _ C7. 45, E4, 00000000
        jmp     ?_123                                   ; 214A _ E9, 000000A0

?_121:  mov     eax, dword [ebp-10H]                    ; 214F _ 8B. 45, F0
        mov     edx, dword [eax+0CH]                    ; 2152 _ 8B. 50, 0C
        mov     eax, dword [ebp-1CH]                    ; 2155 _ 8B. 45, E4
        add     eax, edx                                ; 2158 _ 01. D0
        mov     dword [ebp-4H], eax                     ; 215A _ 89. 45, FC
        mov     eax, dword [ebp+0CH]                    ; 215D _ 8B. 45, 0C
        cmp     eax, dword [ebp-4H]                     ; 2160 _ 3B. 45, FC
        jg      ?_122                                   ; 2163 _ 0F 8F, 00000082
        mov     eax, dword [ebp-4H]                     ; 2169 _ 8B. 45, FC
        cmp     eax, dword [ebp+14H]                    ; 216C _ 3B. 45, 14
        jge     ?_122                                   ; 216F _ 7D, 7A
        mov     eax, dword [ebp+10H]                    ; 2171 _ 8B. 45, 10
        cmp     eax, dword [ebp-8H]                     ; 2174 _ 3B. 45, F8
        jg      ?_122                                   ; 2177 _ 7F, 72
        mov     eax, dword [ebp-8H]                     ; 2179 _ 8B. 45, F8
        cmp     eax, dword [ebp+18H]                    ; 217C _ 3B. 45, 18
        jge     ?_122                                   ; 217F _ 7D, 6A
        mov     eax, dword [ebp-10H]                    ; 2181 _ 8B. 45, F0
        mov     eax, dword [eax+4H]                     ; 2184 _ 8B. 40, 04
        imul    eax, dword [ebp-20H]                    ; 2187 _ 0F AF. 45, E0
        mov     edx, eax                                ; 218B _ 89. C2
        mov     eax, dword [ebp-1CH]                    ; 218D _ 8B. 45, E4
        add     eax, edx                                ; 2190 _ 01. D0
        mov     edx, eax                                ; 2192 _ 89. C2
        mov     eax, dword [ebp-0CH]                    ; 2194 _ 8B. 45, F4
        add     eax, edx                                ; 2197 _ 01. D0
        movzx   eax, byte [eax]                         ; 2199 _ 0F B6. 00
        mov     byte [ebp-25H], al                      ; 219C _ 88. 45, DB
        mov     eax, dword [ebp+8H]                     ; 219F _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 21A2 _ 8B. 40, 08
        imul    eax, dword [ebp-8H]                     ; 21A5 _ 0F AF. 45, F8
        mov     edx, eax                                ; 21A9 _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 21AB _ 8B. 45, FC
        add     eax, edx                                ; 21AE _ 01. D0
        mov     edx, eax                                ; 21B0 _ 89. C2
        mov     eax, dword [ebp-14H]                    ; 21B2 _ 8B. 45, EC
        add     eax, edx                                ; 21B5 _ 01. D0
        movzx   eax, byte [eax]                         ; 21B7 _ 0F B6. 00
        cmp     byte [ebp-26H], al                      ; 21BA _ 38. 45, DA
        jnz     ?_122                                   ; 21BD _ 75, 2C
        movzx   edx, byte [ebp-25H]                     ; 21BF _ 0F B6. 55, DB
        mov     eax, dword [ebp-10H]                    ; 21C3 _ 8B. 45, F0
        mov     eax, dword [eax+14H]                    ; 21C6 _ 8B. 40, 14
        cmp     edx, eax                                ; 21C9 _ 39. C2
        jz      ?_122                                   ; 21CB _ 74, 1E
        mov     eax, dword [ebp+8H]                     ; 21CD _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 21D0 _ 8B. 40, 08
        imul    eax, dword [ebp-8H]                     ; 21D3 _ 0F AF. 45, F8
        mov     edx, eax                                ; 21D7 _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 21D9 _ 8B. 45, FC
        add     eax, edx                                ; 21DC _ 01. D0
        mov     edx, eax                                ; 21DE _ 89. C2
        mov     eax, dword [ebp-18H]                    ; 21E0 _ 8B. 45, E8
        add     edx, eax                                ; 21E3 _ 01. C2
        movzx   eax, byte [ebp-25H]                     ; 21E5 _ 0F B6. 45, DB
        mov     byte [edx], al                          ; 21E9 _ 88. 02
?_122:  add     dword [ebp-1CH], 1                      ; 21EB _ 83. 45, E4, 01
?_123:  mov     eax, dword [ebp-10H]                    ; 21EF _ 8B. 45, F0
        mov     eax, dword [eax+4H]                     ; 21F2 _ 8B. 40, 04
        cmp     dword [ebp-1CH], eax                    ; 21F5 _ 39. 45, E4
        jl      ?_121                                   ; 21F8 _ 0F 8C, FFFFFF51
        add     dword [ebp-20H], 1                      ; 21FE _ 83. 45, E0, 01
?_124:  mov     eax, dword [ebp-10H]                    ; 2202 _ 8B. 45, F0
        mov     eax, dword [eax+8H]                     ; 2205 _ 8B. 40, 08
        cmp     dword [ebp-20H], eax                    ; 2208 _ 39. 45, E0
        jl      ?_120                                   ; 220B _ 0F 8C, FFFFFF24
        add     dword [ebp-24H], 1                      ; 2211 _ 83. 45, DC, 01
?_125:  mov     eax, dword [ebp-24H]                    ; 2215 _ 8B. 45, DC
        cmp     eax, dword [ebp+20H]                    ; 2218 _ 3B. 45, 20
        jle     ?_119                                   ; 221B _ 0F 8E, FFFFFEDC
        nop                                             ; 2221 _ 90
        leave                                           ; 2222 _ C9
        ret                                             ; 2223 _ C3
; sheet_refresh_new End of function

sheet_refreshmap:; Function begin
        push    ebp                                     ; 2224 _ 55
        mov     ebp, esp                                ; 2225 _ 89. E5
        sub     esp, 64                                 ; 2227 _ 83. EC, 40
        mov     eax, dword [ebp+8H]                     ; 222A _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 222D _ 8B. 40, 04
        mov     dword [ebp-14H], eax                    ; 2230 _ 89. 45, EC
        cmp     dword [ebp+0CH], 0                      ; 2233 _ 83. 7D, 0C, 00
        jns     ?_126                                   ; 2237 _ 79, 07
        mov     dword [ebp+0CH], 0                      ; 2239 _ C7. 45, 0C, 00000000
?_126:  mov     eax, dword [ebp+8H]                     ; 2240 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 2243 _ 8B. 40, 08
        cmp     dword [ebp+0CH], eax                    ; 2246 _ 39. 45, 0C
        jle     ?_127                                   ; 2249 _ 7E, 09
        mov     eax, dword [ebp+8H]                     ; 224B _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 224E _ 8B. 40, 08
        mov     dword [ebp+0CH], eax                    ; 2251 _ 89. 45, 0C
?_127:  cmp     dword [ebp+10H], 0                      ; 2254 _ 83. 7D, 10, 00
        jns     ?_128                                   ; 2258 _ 79, 07
        mov     dword [ebp+10H], 0                      ; 225A _ C7. 45, 10, 00000000
?_128:  mov     eax, dword [ebp+8H]                     ; 2261 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 2264 _ 8B. 40, 0C
        cmp     dword [ebp+10H], eax                    ; 2267 _ 39. 45, 10
        jle     ?_129                                   ; 226A _ 7E, 09
        mov     eax, dword [ebp+8H]                     ; 226C _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 226F _ 8B. 40, 0C
        mov     dword [ebp+10H], eax                    ; 2272 _ 89. 45, 10
?_129:  mov     eax, dword [ebp+1CH]                    ; 2275 _ 8B. 45, 1C
        mov     dword [ebp-20H], eax                    ; 2278 _ 89. 45, E0
        jmp     ?_140                                   ; 227B _ E9, 00000140

?_130:  mov     eax, dword [ebp+8H]                     ; 2280 _ 8B. 45, 08
        mov     edx, dword [ebp-20H]                    ; 2283 _ 8B. 55, E0
        add     edx, 4                                  ; 2286 _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 2289 _ 8B. 44 90, 04
        mov     dword [ebp-10H], eax                    ; 228D _ 89. 45, F0
        mov     eax, dword [ebp-10H]                    ; 2290 _ 8B. 45, F0
        mov     edx, dword [ebp+8H]                     ; 2293 _ 8B. 55, 08
        add     edx, 1044                               ; 2296 _ 81. C2, 00000414
        sub     eax, edx                                ; 229C _ 29. D0
        sar     eax, 5                                  ; 229E _ C1. F8, 05
        mov     byte [ebp-31H], al                      ; 22A1 _ 88. 45, CF
        mov     eax, dword [ebp-10H]                    ; 22A4 _ 8B. 45, F0
        mov     eax, dword [eax]                        ; 22A7 _ 8B. 00
        mov     dword [ebp-0CH], eax                    ; 22A9 _ 89. 45, F4
        mov     eax, dword [ebp-10H]                    ; 22AC _ 8B. 45, F0
        mov     eax, dword [eax+0CH]                    ; 22AF _ 8B. 40, 0C
        mov     edx, dword [ebp+0CH]                    ; 22B2 _ 8B. 55, 0C
        sub     edx, eax                                ; 22B5 _ 29. C2
        mov     eax, edx                                ; 22B7 _ 89. D0
        mov     dword [ebp-30H], eax                    ; 22B9 _ 89. 45, D0
        mov     eax, dword [ebp-10H]                    ; 22BC _ 8B. 45, F0
        mov     eax, dword [eax+10H]                    ; 22BF _ 8B. 40, 10
        mov     edx, dword [ebp+10H]                    ; 22C2 _ 8B. 55, 10
        sub     edx, eax                                ; 22C5 _ 29. C2
        mov     eax, edx                                ; 22C7 _ 89. D0
        mov     dword [ebp-2CH], eax                    ; 22C9 _ 89. 45, D4
        mov     eax, dword [ebp-10H]                    ; 22CC _ 8B. 45, F0
        mov     eax, dword [eax+0CH]                    ; 22CF _ 8B. 40, 0C
        mov     edx, dword [ebp+14H]                    ; 22D2 _ 8B. 55, 14
        sub     edx, eax                                ; 22D5 _ 29. C2
        mov     eax, edx                                ; 22D7 _ 89. D0
        mov     dword [ebp-28H], eax                    ; 22D9 _ 89. 45, D8
        mov     eax, dword [ebp-10H]                    ; 22DC _ 8B. 45, F0
        mov     eax, dword [eax+10H]                    ; 22DF _ 8B. 40, 10
        mov     edx, dword [ebp+18H]                    ; 22E2 _ 8B. 55, 18
        sub     edx, eax                                ; 22E5 _ 29. C2
        mov     eax, edx                                ; 22E7 _ 89. D0
        mov     dword [ebp-24H], eax                    ; 22E9 _ 89. 45, DC
        cmp     dword [ebp-30H], 0                      ; 22EC _ 83. 7D, D0, 00
        jns     ?_131                                   ; 22F0 _ 79, 07
        mov     dword [ebp-30H], 0                      ; 22F2 _ C7. 45, D0, 00000000
?_131:  cmp     dword [ebp-2CH], 0                      ; 22F9 _ 83. 7D, D4, 00
        jns     ?_132                                   ; 22FD _ 79, 07
        mov     dword [ebp-2CH], 0                      ; 22FF _ C7. 45, D4, 00000000
?_132:  mov     eax, dword [ebp-10H]                    ; 2306 _ 8B. 45, F0
        mov     eax, dword [eax+4H]                     ; 2309 _ 8B. 40, 04
        cmp     dword [ebp-28H], eax                    ; 230C _ 39. 45, D8
        jle     ?_133                                   ; 230F _ 7E, 09
        mov     eax, dword [ebp-10H]                    ; 2311 _ 8B. 45, F0
        mov     eax, dword [eax+4H]                     ; 2314 _ 8B. 40, 04
        mov     dword [ebp-28H], eax                    ; 2317 _ 89. 45, D8
?_133:  mov     eax, dword [ebp-10H]                    ; 231A _ 8B. 45, F0
        mov     eax, dword [eax+8H]                     ; 231D _ 8B. 40, 08
        cmp     dword [ebp-24H], eax                    ; 2320 _ 39. 45, DC
        jle     ?_134                                   ; 2323 _ 7E, 09
        mov     eax, dword [ebp-10H]                    ; 2325 _ 8B. 45, F0
        mov     eax, dword [eax+8H]                     ; 2328 _ 8B. 40, 08
        mov     dword [ebp-24H], eax                    ; 232B _ 89. 45, DC
?_134:  mov     eax, dword [ebp-2CH]                    ; 232E _ 8B. 45, D4
        mov     dword [ebp-1CH], eax                    ; 2331 _ 89. 45, E4
        jmp     ?_139                                   ; 2334 _ EB, 7A

?_135:  mov     eax, dword [ebp-10H]                    ; 2336 _ 8B. 45, F0
        mov     edx, dword [eax+10H]                    ; 2339 _ 8B. 50, 10
        mov     eax, dword [ebp-1CH]                    ; 233C _ 8B. 45, E4
        add     eax, edx                                ; 233F _ 01. D0
        mov     dword [ebp-8H], eax                     ; 2341 _ 89. 45, F8
        mov     eax, dword [ebp-30H]                    ; 2344 _ 8B. 45, D0
        mov     dword [ebp-18H], eax                    ; 2347 _ 89. 45, E8
        jmp     ?_138                                   ; 234A _ EB, 58

?_136:  mov     eax, dword [ebp-10H]                    ; 234C _ 8B. 45, F0
        mov     edx, dword [eax+0CH]                    ; 234F _ 8B. 50, 0C
        mov     eax, dword [ebp-18H]                    ; 2352 _ 8B. 45, E8
        add     eax, edx                                ; 2355 _ 01. D0
        mov     dword [ebp-4H], eax                     ; 2357 _ 89. 45, FC
        mov     eax, dword [ebp-10H]                    ; 235A _ 8B. 45, F0
        mov     eax, dword [eax+4H]                     ; 235D _ 8B. 40, 04
        imul    eax, dword [ebp-1CH]                    ; 2360 _ 0F AF. 45, E4
        mov     edx, eax                                ; 2364 _ 89. C2
        mov     eax, dword [ebp-18H]                    ; 2366 _ 8B. 45, E8
        add     eax, edx                                ; 2369 _ 01. D0
        mov     edx, eax                                ; 236B _ 89. C2
        mov     eax, dword [ebp-0CH]                    ; 236D _ 8B. 45, F4
        add     eax, edx                                ; 2370 _ 01. D0
        movzx   eax, byte [eax]                         ; 2372 _ 0F B6. 00
        movzx   edx, al                                 ; 2375 _ 0F B6. D0
        mov     eax, dword [ebp-10H]                    ; 2378 _ 8B. 45, F0
        mov     eax, dword [eax+14H]                    ; 237B _ 8B. 40, 14
        cmp     edx, eax                                ; 237E _ 39. C2
        jz      ?_137                                   ; 2380 _ 74, 1E
        mov     eax, dword [ebp+8H]                     ; 2382 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 2385 _ 8B. 40, 08
        imul    eax, dword [ebp-8H]                     ; 2388 _ 0F AF. 45, F8
        mov     edx, eax                                ; 238C _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 238E _ 8B. 45, FC
        add     eax, edx                                ; 2391 _ 01. D0
        mov     edx, eax                                ; 2393 _ 89. C2
        mov     eax, dword [ebp-14H]                    ; 2395 _ 8B. 45, EC
        add     edx, eax                                ; 2398 _ 01. C2
        movzx   eax, byte [ebp-31H]                     ; 239A _ 0F B6. 45, CF
        mov     byte [edx], al                          ; 239E _ 88. 02
?_137:  add     dword [ebp-18H], 1                      ; 23A0 _ 83. 45, E8, 01
?_138:  mov     eax, dword [ebp-18H]                    ; 23A4 _ 8B. 45, E8
        cmp     eax, dword [ebp-28H]                    ; 23A7 _ 3B. 45, D8
        jl      ?_136                                   ; 23AA _ 7C, A0
        add     dword [ebp-1CH], 1                      ; 23AC _ 83. 45, E4, 01
?_139:  mov     eax, dword [ebp-1CH]                    ; 23B0 _ 8B. 45, E4
        cmp     eax, dword [ebp-24H]                    ; 23B3 _ 3B. 45, DC
        jl      ?_135                                   ; 23B6 _ 0F 8C, FFFFFF7A
        add     dword [ebp-20H], 1                      ; 23BC _ 83. 45, E0, 01
?_140:  mov     eax, dword [ebp+8H]                     ; 23C0 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 23C3 _ 8B. 40, 10
        cmp     dword [ebp-20H], eax                    ; 23C6 _ 39. 45, E0
        jle     ?_130                                   ; 23C9 _ 0F 8E, FFFFFEB1
        nop                                             ; 23CF _ 90
        leave                                           ; 23D0 _ C9
        ret                                             ; 23D1 _ C3
; sheet_refreshmap End of function



?_141:                                                  ; byte
        db 54H, 6FH, 74H, 61H, 6CH, 20H, 4DH, 65H       ; 0000 _ Total Me
        db 6DH, 20H, 53H, 69H, 7AH, 65H, 20H, 69H       ; 0008 _ m Size i
        db 73H, 3AH, 20H, 00H                           ; 0010 _ s: .

?_142:                                                  ; byte
        db 4DH, 42H, 00H                                ; 0014 _ MB.

?_143:                                                  ; byte
        db 43H, 6FH, 75H, 6EH, 74H, 65H, 72H, 00H       ; 0017 _ Counter.

?_144:                                                  ; byte
        db 54H, 68H, 65H, 20H, 6DH, 6FH, 75H, 73H       ; 001F _ The mous
        db 65H, 20H, 69H, 73H, 20H, 6DH, 6FH, 76H       ; 0027 _ e is mov
        db 69H, 6EH, 67H, 2EH, 2EH, 2EH, 00H            ; 002F _ ing....

?_145:                                                  ; byte
        db 50H, 61H, 67H, 65H, 20H, 69H, 73H, 3AH       ; 0036 _ Page is:
        db 20H, 00H                                     ; 003E _  .

?_146:                                                  ; byte
        db 42H, 61H, 73H, 65H, 41H, 64H, 64H, 72H       ; 0040 _ BaseAddr
        db 4CH, 6FH, 77H, 3AH, 20H, 00H                 ; 0048 _ Low: .

?_147:                                                  ; byte
        db 42H, 61H, 73H, 65H, 41H, 64H, 64H, 72H       ; 004E _ BaseAddr
        db 48H, 69H, 67H, 68H, 3AH, 20H, 00H            ; 0056 _ High: .

?_148:                                                  ; byte
        db 4CH, 65H, 6EH, 67H, 74H, 68H, 4CH, 6FH       ; 005D _ LengthLo
        db 77H, 3AH, 20H, 00H                           ; 0065 _ w: .

?_149:                                                  ; byte
        db 4CH, 65H, 6EH, 67H, 74H, 68H, 48H, 69H       ; 0069 _ LengthHi
        db 67H, 68H, 3AH, 20H, 00H                      ; 0071 _ gh: .

?_150:                                                  ; byte
        db 54H, 79H, 70H, 65H, 3AH, 20H, 00H            ; 0076 _ Type: .



keyVal:                                                 ; byte
        db 30H, 78H                                     ; 0000 _ 0x

?_151:  db 00H                                          ; 0002 _ .

?_152:  db 00H, 00H, 00H, 00H, 00H                      ; 0003 _ .....

memman: dd 00100000H, 00000000H                         ; 0008 _ 1048576 0 
        dd 00000000H, 00000000H                         ; 0010 _ 0 0 
        dd 00000000H, 00000000H                         ; 0018 _ 0 0 

table_rgb.1698:                                         ; byte
        db 00H, 00H, 00H, 0FFH, 00H, 00H, 00H, 0FFH     ; 0020 _ ........
        db 00H, 0FFH, 0FFH, 00H, 00H, 00H, 0FFH, 0FFH   ; 0028 _ ........
        db 00H, 0FFH, 00H, 0FFH, 0FFH, 0FFH, 0FFH, 0FFH ; 0030 _ ........
        db 0C6H, 0C6H, 0C6H, 84H, 00H, 00H, 00H, 84H    ; 0038 _ ........
        db 00H, 84H, 84H, 00H, 00H, 00H, 84H, 84H       ; 0040 _ ........
        db 00H, 84H, 00H, 78H, 0D7H, 84H, 84H, 84H      ; 0048 _ ...x....
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0050 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0058 _ ........

cursor.1743:                                            ; byte
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

closebtn.1883:                                          ; byte
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

?_153:  resw    1                                       ; 0004

?_154:  resw    1                                       ; 0006

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

str.1786:                                               ; byte
        resb    1                                       ; 0200

?_155:  resb    9                                       ; 0201

?_156:  resb    2                                       ; 020A

line.1835:                                              ; dword
        resd    1                                       ; 020C

pos.1834: resd  1                                       ; 0210


