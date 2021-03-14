; Disassembly of file: ckernel.o
; Sun Mar 14 16:32:05 2021
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
        movzx   eax, word [?_130]                       ; 001F _ 0F B7. 05, 00000004(d)
        cwde                                            ; 0026 _ 98
        mov     dword [ebp-2CH], eax                    ; 0027 _ 89. 45, D4
        movzx   eax, word [?_131]                       ; 002A _ 0F B7. 05, 00000006(d)
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
        push    ?_119                                   ; 00E6 _ 68, 00000000(d)
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
        push    ?_120                                   ; 011F _ 68, 00000014(d)
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
        sub     esp, 4                                  ; 024A _ 83. EC, 04
        push    1                                       ; 024D _ 6A, 01
        push    dword [ebp-20H]                         ; 024F _ FF. 75, E0
        push    dword [ebp-0CH]                         ; 0252 _ FF. 75, F4
        call    sheet_level_updown                      ; 0255 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 025A _ 83. C4, 10
        sub     esp, 4                                  ; 025D _ 83. EC, 04
        push    0                                       ; 0260 _ 6A, 00
        push    dword [ebp-24H]                         ; 0262 _ FF. 75, DC
        push    dword [ebp-0CH]                         ; 0265 _ FF. 75, F4
        call    sheet_level_updown                      ; 0268 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 026D _ 83. C4, 10
        mov     eax, dword [ebp-0CH]                    ; 0270 _ 8B. 45, F4
        mov     eax, dword [eax+0CH]                    ; 0273 _ 8B. 40, 0C
        sub     esp, 12                                 ; 0276 _ 83. EC, 0C
        push    eax                                     ; 0279 _ 50
        call    intToHexStr                             ; 027A _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 027F _ 83. C4, 10
        sub     esp, 8                                  ; 0282 _ 83. EC, 08
        push    eax                                     ; 0285 _ 50
        push    2                                       ; 0286 _ 6A, 02
        push    16                                      ; 0288 _ 6A, 10
        push    0                                       ; 028A _ 6A, 00
        push    dword [ebp-24H]                         ; 028C _ FF. 75, DC
        push    dword [ebp-0CH]                         ; 028F _ FF. 75, F4
        call    showString                              ; 0292 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0297 _ 83. C4, 20
        mov     eax, dword [buf_back]                   ; 029A _ A1, 000000F8(d)
        sub     esp, 12                                 ; 029F _ 83. EC, 0C
        push    eax                                     ; 02A2 _ 50
        call    intToHexStr                             ; 02A3 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 02A8 _ 83. C4, 10
        sub     esp, 8                                  ; 02AB _ 83. EC, 08
        push    eax                                     ; 02AE _ 50
        push    2                                       ; 02AF _ 6A, 02
        push    32                                      ; 02B1 _ 6A, 20
        push    0                                       ; 02B3 _ 6A, 00
        push    dword [ebp-24H]                         ; 02B5 _ FF. 75, DC
        push    dword [ebp-0CH]                         ; 02B8 _ FF. 75, F4
        call    showString                              ; 02BB _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 02C0 _ 83. C4, 20
        mov     eax, dword [ebp-0CH]                    ; 02C3 _ 8B. 45, F4
        mov     eax, dword [eax]                        ; 02C6 _ 8B. 00
        sub     esp, 12                                 ; 02C8 _ 83. EC, 0C
        push    eax                                     ; 02CB _ 50
        call    intToHexStr                             ; 02CC _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 02D1 _ 83. C4, 10
        sub     esp, 8                                  ; 02D4 _ 83. EC, 08
        push    eax                                     ; 02D7 _ 50
        push    2                                       ; 02D8 _ 6A, 02
        push    48                                      ; 02DA _ 6A, 30
        push    0                                       ; 02DC _ 6A, 00
        push    dword [ebp-24H]                         ; 02DE _ FF. 75, DC
        push    dword [ebp-0CH]                         ; 02E1 _ FF. 75, F4
        call    showString                              ; 02E4 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 02E9 _ 83. C4, 20
        call    io_sti                                  ; 02EC _ E8, FFFFFFFC(rel)
        sub     esp, 12                                 ; 02F1 _ 83. EC, 0C
        push    mouse_move                              ; 02F4 _ 68, 000000E0(d)
        call    enable_mouse                            ; 02F9 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 02FE _ 83. C4, 10
        mov     dword [ebp-34H], 0                      ; 0301 _ C7. 45, CC, 00000000
        mov     byte [ebp-35H], 0                       ; 0308 _ C6. 45, CB, 00
?_001:  call    io_cli                                  ; 030C _ E8, FFFFFFFC(rel)
        sub     esp, 12                                 ; 0311 _ 83. EC, 0C
        push    keyInfo                                 ; 0314 _ 68, 00000008(d)
        call    fifo8_status                            ; 0319 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 031E _ 83. C4, 10
        mov     ebx, eax                                ; 0321 _ 89. C3
        sub     esp, 12                                 ; 0323 _ 83. EC, 0C
        push    mouseInfo                               ; 0326 _ 68, 00000020(d)
        call    fifo8_status                            ; 032B _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0330 _ 83. C4, 10
        add     eax, ebx                                ; 0333 _ 01. D8
        test    eax, eax                                ; 0335 _ 85. C0
        jnz     ?_002                                   ; 0337 _ 75, 07
        call    io_stihlt                               ; 0339 _ E8, FFFFFFFC(rel)
        jmp     ?_001                                   ; 033E _ EB, CC

?_002:  sub     esp, 12                                 ; 0340 _ 83. EC, 0C
        push    keyInfo                                 ; 0343 _ 68, 00000008(d)
        call    fifo8_status                            ; 0348 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 034D _ 83. C4, 10
        test    eax, eax                                ; 0350 _ 85. C0
        jz      ?_003                                   ; 0352 _ 74, 6F
        call    io_sti                                  ; 0354 _ E8, FFFFFFFC(rel)
        sub     esp, 12                                 ; 0359 _ 83. EC, 0C
        push    keyInfo                                 ; 035C _ 68, 00000008(d)
        call    fifo8_get                               ; 0361 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0366 _ 83. C4, 10
        mov     byte [ebp-35H], al                      ; 0369 _ 88. 45, CB
        cmp     byte [ebp-35H], 28                      ; 036C _ 80. 7D, CB, 1C
        jnz     ?_001                                   ; 0370 _ 75, 9A
        mov     ecx, dword [buf_back]                   ; 0372 _ 8B. 0D, 000000F8(d)
        mov     edx, dword [ebp-34H]                    ; 0378 _ 8B. 55, CC
        mov     eax, edx                                ; 037B _ 89. D0
        shl     eax, 2                                  ; 037D _ C1. E0, 02
        add     eax, edx                                ; 0380 _ 01. D0
        shl     eax, 2                                  ; 0382 _ C1. E0, 02
        mov     edx, eax                                ; 0385 _ 89. C2
        mov     eax, dword [ebp-1CH]                    ; 0387 _ 8B. 45, E4
        add     eax, edx                                ; 038A _ 01. D0
        sub     esp, 4                                  ; 038C _ 83. EC, 04
        push    7                                       ; 038F _ 6A, 07
        push    dword [ebp-2CH]                         ; 0391 _ FF. 75, D4
        push    dword [ebp-34H]                         ; 0394 _ FF. 75, CC
        push    ecx                                     ; 0397 _ 51
        push    eax                                     ; 0398 _ 50
        push    dword [ebp-24H]                         ; 0399 _ FF. 75, DC
        push    dword [ebp-0CH]                         ; 039C _ FF. 75, F4
        call    showMemInfo                             ; 039F _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 03A4 _ 83. C4, 20
        add     dword [ebp-34H], 1                      ; 03A7 _ 83. 45, CC, 01
        mov     eax, dword [ebp-34H]                    ; 03AB _ 8B. 45, CC
        cmp     eax, dword [ebp-18H]                    ; 03AE _ 3B. 45, E8
        jl      ?_001                                   ; 03B1 _ 0F 8C, FFFFFF55
        mov     dword [ebp-34H], 0                      ; 03B7 _ C7. 45, CC, 00000000
        jmp     ?_001                                   ; 03BE _ E9, FFFFFF49

?_003:  sub     esp, 12                                 ; 03C3 _ 83. EC, 0C
        push    mouseInfo                               ; 03C6 _ 68, 00000020(d)
        call    fifo8_status                            ; 03CB _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 03D0 _ 83. C4, 10
        test    eax, eax                                ; 03D3 _ 85. C0
        je      ?_001                                   ; 03D5 _ 0F 84, FFFFFF31
        sub     esp, 4                                  ; 03DB _ 83. EC, 04
        push    dword [ebp-20H]                         ; 03DE _ FF. 75, E0
        push    dword [ebp-24H]                         ; 03E1 _ FF. 75, DC
        push    dword [ebp-0CH]                         ; 03E4 _ FF. 75, F4
        call    showMouseInfo                           ; 03E7 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 03EC _ 83. C4, 10
        jmp     ?_001                                   ; 03EF _ E9, FFFFFF18
; CMain End of function

initBootInfo:; Function begin
        push    ebp                                     ; 03F4 _ 55
        mov     ebp, esp                                ; 03F5 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 03F7 _ 8B. 45, 08
        mov     dword [eax], 655360                     ; 03FA _ C7. 00, 000A0000
        mov     eax, dword [ebp+8H]                     ; 0400 _ 8B. 45, 08
; Note: Length-changing prefix causes delay on Intel processors
        mov     word [eax+4H], 320                      ; 0403 _ 66: C7. 40, 04, 0140
        mov     eax, dword [ebp+8H]                     ; 0409 _ 8B. 45, 08
; Note: Length-changing prefix causes delay on Intel processors
        mov     word [eax+6H], 200                      ; 040C _ 66: C7. 40, 06, 00C8
        nop                                             ; 0412 _ 90
        pop     ebp                                     ; 0413 _ 5D
        ret                                             ; 0414 _ C3
; initBootInfo End of function

showString:; Function begin
        push    ebp                                     ; 0415 _ 55
        mov     ebp, esp                                ; 0416 _ 89. E5
        push    ebx                                     ; 0418 _ 53
        sub     esp, 36                                 ; 0419 _ 83. EC, 24
        mov     eax, dword [ebp+18H]                    ; 041C _ 8B. 45, 18
        mov     byte [ebp-1CH], al                      ; 041F _ 88. 45, E4
        mov     eax, dword [ebp+10H]                    ; 0422 _ 8B. 45, 10
        mov     dword [ebp-0CH], eax                    ; 0425 _ 89. 45, F4
        jmp     ?_005                                   ; 0428 _ EB, 3E

?_004:  mov     eax, dword [ebp+1CH]                    ; 042A _ 8B. 45, 1C
        movzx   eax, byte [eax]                         ; 042D _ 0F B6. 00
        movzx   eax, al                                 ; 0430 _ 0F B6. C0
        shl     eax, 4                                  ; 0433 _ C1. E0, 04
        lea     ebx, [systemFont+eax]                   ; 0436 _ 8D. 98, 00000000(d)
        movsx   ecx, byte [ebp-1CH]                     ; 043C _ 0F BE. 4D, E4
        mov     eax, dword [ebp+0CH]                    ; 0440 _ 8B. 45, 0C
        mov     edx, dword [eax+4H]                     ; 0443 _ 8B. 50, 04
        mov     eax, dword [ebp+0CH]                    ; 0446 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 0449 _ 8B. 00
        sub     esp, 8                                  ; 044B _ 83. EC, 08
        push    ebx                                     ; 044E _ 53
        push    ecx                                     ; 044F _ 51
        push    dword [ebp+14H]                         ; 0450 _ FF. 75, 14
        push    dword [ebp+10H]                         ; 0453 _ FF. 75, 10
        push    edx                                     ; 0456 _ 52
        push    eax                                     ; 0457 _ 50
        call    showFont8                               ; 0458 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 045D _ 83. C4, 20
        add     dword [ebp+10H], 8                      ; 0460 _ 83. 45, 10, 08
        add     dword [ebp+1CH], 1                      ; 0464 _ 83. 45, 1C, 01
?_005:  mov     eax, dword [ebp+1CH]                    ; 0468 _ 8B. 45, 1C
        movzx   eax, byte [eax]                         ; 046B _ 0F B6. 00
        test    al, al                                  ; 046E _ 84. C0
        jnz     ?_004                                   ; 0470 _ 75, B8
        mov     eax, dword [ebp+14H]                    ; 0472 _ 8B. 45, 14
        add     eax, 16                                 ; 0475 _ 83. C0, 10
        sub     esp, 8                                  ; 0478 _ 83. EC, 08
        push    eax                                     ; 047B _ 50
        push    dword [ebp+10H]                         ; 047C _ FF. 75, 10
        push    dword [ebp+14H]                         ; 047F _ FF. 75, 14
        push    dword [ebp-0CH]                         ; 0482 _ FF. 75, F4
        push    dword [ebp+0CH]                         ; 0485 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 0488 _ FF. 75, 08
        call    sheet_refresh                           ; 048B _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0490 _ 83. C4, 20
        nop                                             ; 0493 _ 90
        mov     ebx, dword [ebp-4H]                     ; 0494 _ 8B. 5D, FC
        leave                                           ; 0497 _ C9
        ret                                             ; 0498 _ C3
; showString End of function

init_screen8:; Function begin
        push    ebp                                     ; 0499 _ 55
        mov     ebp, esp                                ; 049A _ 89. E5
        push    ebx                                     ; 049C _ 53
        sub     esp, 4                                  ; 049D _ 83. EC, 04
        mov     eax, dword [ebp+10H]                    ; 04A0 _ 8B. 45, 10
        lea     edx, [eax-19H]                          ; 04A3 _ 8D. 50, E7
        mov     eax, dword [ebp+0CH]                    ; 04A6 _ 8B. 45, 0C
        sub     eax, 1                                  ; 04A9 _ 83. E8, 01
        sub     esp, 4                                  ; 04AC _ 83. EC, 04
        push    edx                                     ; 04AF _ 52
        push    eax                                     ; 04B0 _ 50
        push    0                                       ; 04B1 _ 6A, 00
        push    0                                       ; 04B3 _ 6A, 00
        push    14                                      ; 04B5 _ 6A, 0E
        push    dword [ebp+0CH]                         ; 04B7 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 04BA _ FF. 75, 08
        call    boxfill8                                ; 04BD _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 04C2 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 04C5 _ 8B. 45, 10
        lea     ecx, [eax-18H]                          ; 04C8 _ 8D. 48, E8
        mov     eax, dword [ebp+0CH]                    ; 04CB _ 8B. 45, 0C
        lea     edx, [eax-1H]                           ; 04CE _ 8D. 50, FF
        mov     eax, dword [ebp+10H]                    ; 04D1 _ 8B. 45, 10
        sub     eax, 24                                 ; 04D4 _ 83. E8, 18
        sub     esp, 4                                  ; 04D7 _ 83. EC, 04
        push    ecx                                     ; 04DA _ 51
        push    edx                                     ; 04DB _ 52
        push    eax                                     ; 04DC _ 50
        push    0                                       ; 04DD _ 6A, 00
        push    8                                       ; 04DF _ 6A, 08
        push    dword [ebp+0CH]                         ; 04E1 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 04E4 _ FF. 75, 08
        call    boxfill8                                ; 04E7 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 04EC _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 04EF _ 8B. 45, 10
        lea     ecx, [eax-17H]                          ; 04F2 _ 8D. 48, E9
        mov     eax, dword [ebp+0CH]                    ; 04F5 _ 8B. 45, 0C
        lea     edx, [eax-1H]                           ; 04F8 _ 8D. 50, FF
        mov     eax, dword [ebp+10H]                    ; 04FB _ 8B. 45, 10
        sub     eax, 23                                 ; 04FE _ 83. E8, 17
        sub     esp, 4                                  ; 0501 _ 83. EC, 04
        push    ecx                                     ; 0504 _ 51
        push    edx                                     ; 0505 _ 52
        push    eax                                     ; 0506 _ 50
        push    0                                       ; 0507 _ 6A, 00
        push    7                                       ; 0509 _ 6A, 07
        push    dword [ebp+0CH]                         ; 050B _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 050E _ FF. 75, 08
        call    boxfill8                                ; 0511 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0516 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 0519 _ 8B. 45, 10
        lea     ecx, [eax-1H]                           ; 051C _ 8D. 48, FF
        mov     eax, dword [ebp+0CH]                    ; 051F _ 8B. 45, 0C
        lea     edx, [eax-1H]                           ; 0522 _ 8D. 50, FF
        mov     eax, dword [ebp+10H]                    ; 0525 _ 8B. 45, 10
        sub     eax, 22                                 ; 0528 _ 83. E8, 16
        sub     esp, 4                                  ; 052B _ 83. EC, 04
        push    ecx                                     ; 052E _ 51
        push    edx                                     ; 052F _ 52
        push    eax                                     ; 0530 _ 50
        push    0                                       ; 0531 _ 6A, 00
        push    8                                       ; 0533 _ 6A, 08
        push    dword [ebp+0CH]                         ; 0535 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 0538 _ FF. 75, 08
        call    boxfill8                                ; 053B _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0540 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 0543 _ 8B. 45, 10
        lea     edx, [eax-14H]                          ; 0546 _ 8D. 50, EC
        mov     eax, dword [ebp+10H]                    ; 0549 _ 8B. 45, 10
        sub     eax, 20                                 ; 054C _ 83. E8, 14
        sub     esp, 4                                  ; 054F _ 83. EC, 04
        push    edx                                     ; 0552 _ 52
        push    51                                      ; 0553 _ 6A, 33
        push    eax                                     ; 0555 _ 50
        push    10                                      ; 0556 _ 6A, 0A
        push    7                                       ; 0558 _ 6A, 07
        push    dword [ebp+0CH]                         ; 055A _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 055D _ FF. 75, 08
        call    boxfill8                                ; 0560 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0565 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 0568 _ 8B. 45, 10
        lea     edx, [eax-4H]                           ; 056B _ 8D. 50, FC
        mov     eax, dword [ebp+10H]                    ; 056E _ 8B. 45, 10
        sub     eax, 20                                 ; 0571 _ 83. E8, 14
        sub     esp, 4                                  ; 0574 _ 83. EC, 04
        push    edx                                     ; 0577 _ 52
        push    9                                       ; 0578 _ 6A, 09
        push    eax                                     ; 057A _ 50
        push    9                                       ; 057B _ 6A, 09
        push    7                                       ; 057D _ 6A, 07
        push    dword [ebp+0CH]                         ; 057F _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 0582 _ FF. 75, 08
        call    boxfill8                                ; 0585 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 058A _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 058D _ 8B. 45, 10
        lea     edx, [eax-4H]                           ; 0590 _ 8D. 50, FC
        mov     eax, dword [ebp+10H]                    ; 0593 _ 8B. 45, 10
        sub     eax, 4                                  ; 0596 _ 83. E8, 04
        sub     esp, 4                                  ; 0599 _ 83. EC, 04
        push    edx                                     ; 059C _ 52
        push    50                                      ; 059D _ 6A, 32
        push    eax                                     ; 059F _ 50
        push    10                                      ; 05A0 _ 6A, 0A
        push    15                                      ; 05A2 _ 6A, 0F
        push    dword [ebp+0CH]                         ; 05A4 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 05A7 _ FF. 75, 08
        call    boxfill8                                ; 05AA _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 05AF _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 05B2 _ 8B. 45, 10
        lea     edx, [eax-5H]                           ; 05B5 _ 8D. 50, FB
        mov     eax, dword [ebp+10H]                    ; 05B8 _ 8B. 45, 10
        sub     eax, 19                                 ; 05BB _ 83. E8, 13
        sub     esp, 4                                  ; 05BE _ 83. EC, 04
        push    edx                                     ; 05C1 _ 52
        push    50                                      ; 05C2 _ 6A, 32
        push    eax                                     ; 05C4 _ 50
        push    50                                      ; 05C5 _ 6A, 32
        push    15                                      ; 05C7 _ 6A, 0F
        push    dword [ebp+0CH]                         ; 05C9 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 05CC _ FF. 75, 08
        call    boxfill8                                ; 05CF _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 05D4 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 05D7 _ 8B. 45, 10
        lea     edx, [eax-3H]                           ; 05DA _ 8D. 50, FD
        mov     eax, dword [ebp+10H]                    ; 05DD _ 8B. 45, 10
        sub     eax, 3                                  ; 05E0 _ 83. E8, 03
        sub     esp, 4                                  ; 05E3 _ 83. EC, 04
        push    edx                                     ; 05E6 _ 52
        push    50                                      ; 05E7 _ 6A, 32
        push    eax                                     ; 05E9 _ 50
        push    10                                      ; 05EA _ 6A, 0A
        push    0                                       ; 05EC _ 6A, 00
        push    dword [ebp+0CH]                         ; 05EE _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 05F1 _ FF. 75, 08
        call    boxfill8                                ; 05F4 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 05F9 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 05FC _ 8B. 45, 10
        lea     edx, [eax-3H]                           ; 05FF _ 8D. 50, FD
        mov     eax, dword [ebp+10H]                    ; 0602 _ 8B. 45, 10
        sub     eax, 20                                 ; 0605 _ 83. E8, 14
        sub     esp, 4                                  ; 0608 _ 83. EC, 04
        push    edx                                     ; 060B _ 52
        push    51                                      ; 060C _ 6A, 33
        push    eax                                     ; 060E _ 50
        push    51                                      ; 060F _ 6A, 33
        push    0                                       ; 0611 _ 6A, 00
        push    dword [ebp+0CH]                         ; 0613 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 0616 _ FF. 75, 08
        call    boxfill8                                ; 0619 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 061E _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 0621 _ 8B. 45, 10
        lea     ebx, [eax-14H]                          ; 0624 _ 8D. 58, EC
        mov     eax, dword [ebp+0CH]                    ; 0627 _ 8B. 45, 0C
        lea     ecx, [eax-4H]                           ; 062A _ 8D. 48, FC
        mov     eax, dword [ebp+10H]                    ; 062D _ 8B. 45, 10
        lea     edx, [eax-14H]                          ; 0630 _ 8D. 50, EC
        mov     eax, dword [ebp+0CH]                    ; 0633 _ 8B. 45, 0C
        sub     eax, 47                                 ; 0636 _ 83. E8, 2F
        sub     esp, 4                                  ; 0639 _ 83. EC, 04
        push    ebx                                     ; 063C _ 53
        push    ecx                                     ; 063D _ 51
        push    edx                                     ; 063E _ 52
        push    eax                                     ; 063F _ 50
        push    15                                      ; 0640 _ 6A, 0F
        push    dword [ebp+0CH]                         ; 0642 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 0645 _ FF. 75, 08
        call    boxfill8                                ; 0648 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 064D _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 0650 _ 8B. 45, 10
        lea     ebx, [eax-3H]                           ; 0653 _ 8D. 58, FD
        mov     eax, dword [ebp+0CH]                    ; 0656 _ 8B. 45, 0C
        lea     ecx, [eax-2FH]                          ; 0659 _ 8D. 48, D1
        mov     eax, dword [ebp+10H]                    ; 065C _ 8B. 45, 10
        lea     edx, [eax-14H]                          ; 065F _ 8D. 50, EC
        mov     eax, dword [ebp+0CH]                    ; 0662 _ 8B. 45, 0C
        sub     eax, 47                                 ; 0665 _ 83. E8, 2F
        sub     esp, 4                                  ; 0668 _ 83. EC, 04
        push    ebx                                     ; 066B _ 53
        push    ecx                                     ; 066C _ 51
        push    edx                                     ; 066D _ 52
        push    eax                                     ; 066E _ 50
        push    15                                      ; 066F _ 6A, 0F
        push    dword [ebp+0CH]                         ; 0671 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 0674 _ FF. 75, 08
        call    boxfill8                                ; 0677 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 067C _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 067F _ 8B. 45, 10
        lea     ebx, [eax-3H]                           ; 0682 _ 8D. 58, FD
        mov     eax, dword [ebp+0CH]                    ; 0685 _ 8B. 45, 0C
        lea     ecx, [eax-4H]                           ; 0688 _ 8D. 48, FC
        mov     eax, dword [ebp+10H]                    ; 068B _ 8B. 45, 10
        lea     edx, [eax-3H]                           ; 068E _ 8D. 50, FD
        mov     eax, dword [ebp+0CH]                    ; 0691 _ 8B. 45, 0C
        sub     eax, 47                                 ; 0694 _ 83. E8, 2F
        sub     esp, 4                                  ; 0697 _ 83. EC, 04
        push    ebx                                     ; 069A _ 53
        push    ecx                                     ; 069B _ 51
        push    edx                                     ; 069C _ 52
        push    eax                                     ; 069D _ 50
        push    7                                       ; 069E _ 6A, 07
        push    dword [ebp+0CH]                         ; 06A0 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 06A3 _ FF. 75, 08
        call    boxfill8                                ; 06A6 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 06AB _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 06AE _ 8B. 45, 10
        lea     ebx, [eax-3H]                           ; 06B1 _ 8D. 58, FD
        mov     eax, dword [ebp+0CH]                    ; 06B4 _ 8B. 45, 0C
        lea     ecx, [eax-3H]                           ; 06B7 _ 8D. 48, FD
        mov     eax, dword [ebp+10H]                    ; 06BA _ 8B. 45, 10
        lea     edx, [eax-14H]                          ; 06BD _ 8D. 50, EC
        mov     eax, dword [ebp+0CH]                    ; 06C0 _ 8B. 45, 0C
        sub     eax, 3                                  ; 06C3 _ 83. E8, 03
        sub     esp, 4                                  ; 06C6 _ 83. EC, 04
        push    ebx                                     ; 06C9 _ 53
        push    ecx                                     ; 06CA _ 51
        push    edx                                     ; 06CB _ 52
        push    eax                                     ; 06CC _ 50
        push    7                                       ; 06CD _ 6A, 07
        push    dword [ebp+0CH]                         ; 06CF _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 06D2 _ FF. 75, 08
        call    boxfill8                                ; 06D5 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 06DA _ 83. C4, 20
        nop                                             ; 06DD _ 90
        mov     ebx, dword [ebp-4H]                     ; 06DE _ 8B. 5D, FC
        leave                                           ; 06E1 _ C9
        ret                                             ; 06E2 _ C3
; init_screen8 End of function

init_palette:; Function begin
        push    ebp                                     ; 06E3 _ 55
        mov     ebp, esp                                ; 06E4 _ 89. E5
        sub     esp, 24                                 ; 06E6 _ 83. EC, 18
        mov     eax, dword [bootInfo]                   ; 06E9 _ A1, 00000000(d)
        mov     dword [ebp-14H], eax                    ; 06EE _ 89. 45, EC
        movzx   eax, word [?_130]                       ; 06F1 _ 0F B7. 05, 00000004(d)
        cwde                                            ; 06F8 _ 98
        mov     dword [ebp-10H], eax                    ; 06F9 _ 89. 45, F0
        movzx   eax, word [?_131]                       ; 06FC _ 0F B7. 05, 00000006(d)
        cwde                                            ; 0703 _ 98
        mov     dword [ebp-0CH], eax                    ; 0704 _ 89. 45, F4
        sub     esp, 4                                  ; 0707 _ 83. EC, 04
        push    table_rgb.1677                          ; 070A _ 68, 00000020(d)
        push    15                                      ; 070F _ 6A, 0F
        push    0                                       ; 0711 _ 6A, 00
        call    set_palette                             ; 0713 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0718 _ 83. C4, 10
        nop                                             ; 071B _ 90
        leave                                           ; 071C _ C9
        ret                                             ; 071D _ C3
; init_palette End of function

set_palette:; Function begin
        push    ebp                                     ; 071E _ 55
        mov     ebp, esp                                ; 071F _ 89. E5
        sub     esp, 24                                 ; 0721 _ 83. EC, 18
        call    io_load_eflags                          ; 0724 _ E8, FFFFFFFC(rel)
        mov     dword [ebp-0CH], eax                    ; 0729 _ 89. 45, F4
        call    io_cli                                  ; 072C _ E8, FFFFFFFC(rel)
        sub     esp, 8                                  ; 0731 _ 83. EC, 08
        push    dword [ebp+8H]                          ; 0734 _ FF. 75, 08
        push    968                                     ; 0737 _ 68, 000003C8
        call    io_out8                                 ; 073C _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0741 _ 83. C4, 10
        mov     eax, dword [ebp+8H]                     ; 0744 _ 8B. 45, 08
        mov     dword [ebp-10H], eax                    ; 0747 _ 89. 45, F0
        jmp     ?_007                                   ; 074A _ EB, 65

?_006:  mov     eax, dword [ebp+10H]                    ; 074C _ 8B. 45, 10
        movzx   eax, byte [eax]                         ; 074F _ 0F B6. 00
        shr     al, 2                                   ; 0752 _ C0. E8, 02
        movzx   eax, al                                 ; 0755 _ 0F B6. C0
        sub     esp, 8                                  ; 0758 _ 83. EC, 08
        push    eax                                     ; 075B _ 50
        push    969                                     ; 075C _ 68, 000003C9
        call    io_out8                                 ; 0761 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0766 _ 83. C4, 10
        mov     eax, dword [ebp+10H]                    ; 0769 _ 8B. 45, 10
        add     eax, 1                                  ; 076C _ 83. C0, 01
        movzx   eax, byte [eax]                         ; 076F _ 0F B6. 00
        shr     al, 2                                   ; 0772 _ C0. E8, 02
        movzx   eax, al                                 ; 0775 _ 0F B6. C0
        sub     esp, 8                                  ; 0778 _ 83. EC, 08
        push    eax                                     ; 077B _ 50
        push    969                                     ; 077C _ 68, 000003C9
        call    io_out8                                 ; 0781 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0786 _ 83. C4, 10
        mov     eax, dword [ebp+10H]                    ; 0789 _ 8B. 45, 10
        add     eax, 2                                  ; 078C _ 83. C0, 02
        movzx   eax, byte [eax]                         ; 078F _ 0F B6. 00
        shr     al, 2                                   ; 0792 _ C0. E8, 02
        movzx   eax, al                                 ; 0795 _ 0F B6. C0
        sub     esp, 8                                  ; 0798 _ 83. EC, 08
        push    eax                                     ; 079B _ 50
        push    969                                     ; 079C _ 68, 000003C9
        call    io_out8                                 ; 07A1 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 07A6 _ 83. C4, 10
        add     dword [ebp+10H], 3                      ; 07A9 _ 83. 45, 10, 03
        add     dword [ebp-10H], 1                      ; 07AD _ 83. 45, F0, 01
?_007:  mov     eax, dword [ebp-10H]                    ; 07B1 _ 8B. 45, F0
        cmp     eax, dword [ebp+0CH]                    ; 07B4 _ 3B. 45, 0C
        jle     ?_006                                   ; 07B7 _ 7E, 93
        sub     esp, 12                                 ; 07B9 _ 83. EC, 0C
        push    dword [ebp-0CH]                         ; 07BC _ FF. 75, F4
        call    io_store_eflags                         ; 07BF _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 07C4 _ 83. C4, 10
        nop                                             ; 07C7 _ 90
        leave                                           ; 07C8 _ C9
        ret                                             ; 07C9 _ C3
; set_palette End of function

boxfill8:; Function begin
        push    ebp                                     ; 07CA _ 55
        mov     ebp, esp                                ; 07CB _ 89. E5
        sub     esp, 20                                 ; 07CD _ 83. EC, 14
        mov     eax, dword [ebp+10H]                    ; 07D0 _ 8B. 45, 10
        mov     byte [ebp-14H], al                      ; 07D3 _ 88. 45, EC
        mov     eax, dword [ebp+18H]                    ; 07D6 _ 8B. 45, 18
        mov     dword [ebp-4H], eax                     ; 07D9 _ 89. 45, FC
        jmp     ?_011                                   ; 07DC _ EB, 33

?_008:  mov     eax, dword [ebp+14H]                    ; 07DE _ 8B. 45, 14
        mov     dword [ebp-8H], eax                     ; 07E1 _ 89. 45, F8
        jmp     ?_010                                   ; 07E4 _ EB, 1F

?_009:  mov     eax, dword [ebp-4H]                     ; 07E6 _ 8B. 45, FC
        imul    eax, dword [ebp+0CH]                    ; 07E9 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 07ED _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 07EF _ 8B. 45, F8
        add     eax, edx                                ; 07F2 _ 01. D0
        mov     edx, eax                                ; 07F4 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 07F6 _ 8B. 45, 08
        add     edx, eax                                ; 07F9 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 07FB _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 07FF _ 88. 02
        add     dword [ebp-8H], 1                       ; 0801 _ 83. 45, F8, 01
?_010:  mov     eax, dword [ebp-8H]                     ; 0805 _ 8B. 45, F8
        cmp     eax, dword [ebp+1CH]                    ; 0808 _ 3B. 45, 1C
        jle     ?_009                                   ; 080B _ 7E, D9
        add     dword [ebp-4H], 1                       ; 080D _ 83. 45, FC, 01
?_011:  mov     eax, dword [ebp-4H]                     ; 0811 _ 8B. 45, FC
        cmp     eax, dword [ebp+20H]                    ; 0814 _ 3B. 45, 20
        jle     ?_008                                   ; 0817 _ 7E, C5
        nop                                             ; 0819 _ 90
        leave                                           ; 081A _ C9
        ret                                             ; 081B _ C3
; boxfill8 End of function

showFont8:; Function begin
        push    ebp                                     ; 081C _ 55
        mov     ebp, esp                                ; 081D _ 89. E5
        sub     esp, 20                                 ; 081F _ 83. EC, 14
        mov     eax, dword [ebp+18H]                    ; 0822 _ 8B. 45, 18
        mov     byte [ebp-14H], al                      ; 0825 _ 88. 45, EC
        mov     dword [ebp-4H], 0                       ; 0828 _ C7. 45, FC, 00000000
        jmp     ?_021                                   ; 082F _ E9, 0000016C

?_012:  mov     edx, dword [ebp-4H]                     ; 0834 _ 8B. 55, FC
        mov     eax, dword [ebp+1CH]                    ; 0837 _ 8B. 45, 1C
        add     eax, edx                                ; 083A _ 01. D0
        movzx   eax, byte [eax]                         ; 083C _ 0F B6. 00
        mov     byte [ebp-5H], al                       ; 083F _ 88. 45, FB
        cmp     byte [ebp-5H], 0                        ; 0842 _ 80. 7D, FB, 00
        jns     ?_013                                   ; 0846 _ 79, 20
        mov     edx, dword [ebp+14H]                    ; 0848 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 084B _ 8B. 45, FC
        add     eax, edx                                ; 084E _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 0850 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 0854 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 0856 _ 8B. 45, 10
        add     eax, edx                                ; 0859 _ 01. D0
        mov     edx, eax                                ; 085B _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 085D _ 8B. 45, 08
        add     edx, eax                                ; 0860 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0862 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0866 _ 88. 02
?_013:  movsx   eax, byte [ebp-5H]                      ; 0868 _ 0F BE. 45, FB
        and     eax, 40H                                ; 086C _ 83. E0, 40
        test    eax, eax                                ; 086F _ 85. C0
        jz      ?_014                                   ; 0871 _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 0873 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 0876 _ 8B. 45, FC
        add     eax, edx                                ; 0879 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 087B _ 0F AF. 45, 0C
        mov     edx, eax                                ; 087F _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 0881 _ 8B. 45, 10
        add     eax, edx                                ; 0884 _ 01. D0
        lea     edx, [eax+1H]                           ; 0886 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 0889 _ 8B. 45, 08
        add     edx, eax                                ; 088C _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 088E _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0892 _ 88. 02
?_014:  movsx   eax, byte [ebp-5H]                      ; 0894 _ 0F BE. 45, FB
        and     eax, 20H                                ; 0898 _ 83. E0, 20
        test    eax, eax                                ; 089B _ 85. C0
        jz      ?_015                                   ; 089D _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 089F _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 08A2 _ 8B. 45, FC
        add     eax, edx                                ; 08A5 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 08A7 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 08AB _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 08AD _ 8B. 45, 10
        add     eax, edx                                ; 08B0 _ 01. D0
        lea     edx, [eax+2H]                           ; 08B2 _ 8D. 50, 02
        mov     eax, dword [ebp+8H]                     ; 08B5 _ 8B. 45, 08
        add     edx, eax                                ; 08B8 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 08BA _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 08BE _ 88. 02
?_015:  movsx   eax, byte [ebp-5H]                      ; 08C0 _ 0F BE. 45, FB
        and     eax, 10H                                ; 08C4 _ 83. E0, 10
        test    eax, eax                                ; 08C7 _ 85. C0
        jz      ?_016                                   ; 08C9 _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 08CB _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 08CE _ 8B. 45, FC
        add     eax, edx                                ; 08D1 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 08D3 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 08D7 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 08D9 _ 8B. 45, 10
        add     eax, edx                                ; 08DC _ 01. D0
        lea     edx, [eax+3H]                           ; 08DE _ 8D. 50, 03
        mov     eax, dword [ebp+8H]                     ; 08E1 _ 8B. 45, 08
        add     edx, eax                                ; 08E4 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 08E6 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 08EA _ 88. 02
?_016:  movsx   eax, byte [ebp-5H]                      ; 08EC _ 0F BE. 45, FB
        and     eax, 08H                                ; 08F0 _ 83. E0, 08
        test    eax, eax                                ; 08F3 _ 85. C0
        jz      ?_017                                   ; 08F5 _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 08F7 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 08FA _ 8B. 45, FC
        add     eax, edx                                ; 08FD _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 08FF _ 0F AF. 45, 0C
        mov     edx, eax                                ; 0903 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 0905 _ 8B. 45, 10
        add     eax, edx                                ; 0908 _ 01. D0
        lea     edx, [eax+4H]                           ; 090A _ 8D. 50, 04
        mov     eax, dword [ebp+8H]                     ; 090D _ 8B. 45, 08
        add     edx, eax                                ; 0910 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0912 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0916 _ 88. 02
?_017:  movsx   eax, byte [ebp-5H]                      ; 0918 _ 0F BE. 45, FB
        and     eax, 04H                                ; 091C _ 83. E0, 04
        test    eax, eax                                ; 091F _ 85. C0
        jz      ?_018                                   ; 0921 _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 0923 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 0926 _ 8B. 45, FC
        add     eax, edx                                ; 0929 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 092B _ 0F AF. 45, 0C
        mov     edx, eax                                ; 092F _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 0931 _ 8B. 45, 10
        add     eax, edx                                ; 0934 _ 01. D0
        lea     edx, [eax+5H]                           ; 0936 _ 8D. 50, 05
        mov     eax, dword [ebp+8H]                     ; 0939 _ 8B. 45, 08
        add     edx, eax                                ; 093C _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 093E _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0942 _ 88. 02
?_018:  movsx   eax, byte [ebp-5H]                      ; 0944 _ 0F BE. 45, FB
        and     eax, 02H                                ; 0948 _ 83. E0, 02
        test    eax, eax                                ; 094B _ 85. C0
        jz      ?_019                                   ; 094D _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 094F _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 0952 _ 8B. 45, FC
        add     eax, edx                                ; 0955 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 0957 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 095B _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 095D _ 8B. 45, 10
        add     eax, edx                                ; 0960 _ 01. D0
        lea     edx, [eax+6H]                           ; 0962 _ 8D. 50, 06
        mov     eax, dword [ebp+8H]                     ; 0965 _ 8B. 45, 08
        add     edx, eax                                ; 0968 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 096A _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 096E _ 88. 02
?_019:  movsx   eax, byte [ebp-5H]                      ; 0970 _ 0F BE. 45, FB
        and     eax, 01H                                ; 0974 _ 83. E0, 01
        test    eax, eax                                ; 0977 _ 85. C0
        jz      ?_020                                   ; 0979 _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 097B _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 097E _ 8B. 45, FC
        add     eax, edx                                ; 0981 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 0983 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 0987 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 0989 _ 8B. 45, 10
        add     eax, edx                                ; 098C _ 01. D0
        lea     edx, [eax+7H]                           ; 098E _ 8D. 50, 07
        mov     eax, dword [ebp+8H]                     ; 0991 _ 8B. 45, 08
        add     edx, eax                                ; 0994 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0996 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 099A _ 88. 02
?_020:  add     dword [ebp-4H], 1                       ; 099C _ 83. 45, FC, 01
?_021:  cmp     dword [ebp-4H], 15                      ; 09A0 _ 83. 7D, FC, 0F
        jle     ?_012                                   ; 09A4 _ 0F 8E, FFFFFE8A
        nop                                             ; 09AA _ 90
        leave                                           ; 09AB _ C9
        ret                                             ; 09AC _ C3
; showFont8 End of function

init_mouse_cursor:; Function begin
        push    ebp                                     ; 09AD _ 55
        mov     ebp, esp                                ; 09AE _ 89. E5
        sub     esp, 20                                 ; 09B0 _ 83. EC, 14
        mov     eax, dword [ebp+0CH]                    ; 09B3 _ 8B. 45, 0C
        mov     byte [ebp-14H], al                      ; 09B6 _ 88. 45, EC
        mov     dword [ebp-4H], 0                       ; 09B9 _ C7. 45, FC, 00000000
        jmp     ?_028                                   ; 09C0 _ E9, 000000B1

?_022:  mov     dword [ebp-8H], 0                       ; 09C5 _ C7. 45, F8, 00000000
        jmp     ?_027                                   ; 09CC _ E9, 00000097

?_023:  mov     eax, dword [ebp-4H]                     ; 09D1 _ 8B. 45, FC
        shl     eax, 4                                  ; 09D4 _ C1. E0, 04
        mov     edx, eax                                ; 09D7 _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 09D9 _ 8B. 45, F8
        add     eax, edx                                ; 09DC _ 01. D0
        add     eax, cursor.1722                        ; 09DE _ 05, 00000060(d)
        movzx   eax, byte [eax]                         ; 09E3 _ 0F B6. 00
        cmp     al, 42                                  ; 09E6 _ 3C, 2A
        jnz     ?_024                                   ; 09E8 _ 75, 17
        mov     eax, dword [ebp-4H]                     ; 09EA _ 8B. 45, FC
        shl     eax, 4                                  ; 09ED _ C1. E0, 04
        mov     edx, eax                                ; 09F0 _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 09F2 _ 8B. 45, F8
        add     eax, edx                                ; 09F5 _ 01. D0
        mov     edx, eax                                ; 09F7 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 09F9 _ 8B. 45, 08
        add     eax, edx                                ; 09FC _ 01. D0
        mov     byte [eax], 0                           ; 09FE _ C6. 00, 00
?_024:  mov     eax, dword [ebp-4H]                     ; 0A01 _ 8B. 45, FC
        shl     eax, 4                                  ; 0A04 _ C1. E0, 04
        mov     edx, eax                                ; 0A07 _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 0A09 _ 8B. 45, F8
        add     eax, edx                                ; 0A0C _ 01. D0
        add     eax, cursor.1722                        ; 0A0E _ 05, 00000060(d)
        movzx   eax, byte [eax]                         ; 0A13 _ 0F B6. 00
        cmp     al, 79                                  ; 0A16 _ 3C, 4F
        jnz     ?_025                                   ; 0A18 _ 75, 17
        mov     eax, dword [ebp-4H]                     ; 0A1A _ 8B. 45, FC
        shl     eax, 4                                  ; 0A1D _ C1. E0, 04
        mov     edx, eax                                ; 0A20 _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 0A22 _ 8B. 45, F8
        add     eax, edx                                ; 0A25 _ 01. D0
        mov     edx, eax                                ; 0A27 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 0A29 _ 8B. 45, 08
        add     eax, edx                                ; 0A2C _ 01. D0
        mov     byte [eax], 7                           ; 0A2E _ C6. 00, 07
?_025:  mov     eax, dword [ebp-4H]                     ; 0A31 _ 8B. 45, FC
        shl     eax, 4                                  ; 0A34 _ C1. E0, 04
        mov     edx, eax                                ; 0A37 _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 0A39 _ 8B. 45, F8
        add     eax, edx                                ; 0A3C _ 01. D0
        add     eax, cursor.1722                        ; 0A3E _ 05, 00000060(d)
        movzx   eax, byte [eax]                         ; 0A43 _ 0F B6. 00
        cmp     al, 46                                  ; 0A46 _ 3C, 2E
        jnz     ?_026                                   ; 0A48 _ 75, 1A
        mov     eax, dword [ebp-4H]                     ; 0A4A _ 8B. 45, FC
        shl     eax, 4                                  ; 0A4D _ C1. E0, 04
        mov     edx, eax                                ; 0A50 _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 0A52 _ 8B. 45, F8
        add     eax, edx                                ; 0A55 _ 01. D0
        mov     edx, eax                                ; 0A57 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 0A59 _ 8B. 45, 08
        add     edx, eax                                ; 0A5C _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0A5E _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0A62 _ 88. 02
?_026:  add     dword [ebp-8H], 1                       ; 0A64 _ 83. 45, F8, 01
?_027:  cmp     dword [ebp-8H], 15                      ; 0A68 _ 83. 7D, F8, 0F
        jle     ?_023                                   ; 0A6C _ 0F 8E, FFFFFF5F
        add     dword [ebp-4H], 1                       ; 0A72 _ 83. 45, FC, 01
?_028:  cmp     dword [ebp-4H], 15                      ; 0A76 _ 83. 7D, FC, 0F
        jle     ?_022                                   ; 0A7A _ 0F 8E, FFFFFF45
        nop                                             ; 0A80 _ 90
        leave                                           ; 0A81 _ C9
        ret                                             ; 0A82 _ C3
; init_mouse_cursor End of function

putblock:; Function begin
        push    ebp                                     ; 0A83 _ 55
        mov     ebp, esp                                ; 0A84 _ 89. E5
        push    ebx                                     ; 0A86 _ 53
        sub     esp, 16                                 ; 0A87 _ 83. EC, 10
        mov     dword [ebp-8H], 0                       ; 0A8A _ C7. 45, F8, 00000000
        jmp     ?_032                                   ; 0A91 _ EB, 50

?_029:  mov     dword [ebp-0CH], 0                      ; 0A93 _ C7. 45, F4, 00000000
        jmp     ?_031                                   ; 0A9A _ EB, 3B

?_030:  mov     eax, dword [ebp-8H]                     ; 0A9C _ 8B. 45, F8
        imul    eax, dword [ebp+24H]                    ; 0A9F _ 0F AF. 45, 24
        mov     edx, eax                                ; 0AA3 _ 89. C2
        mov     eax, dword [ebp-0CH]                    ; 0AA5 _ 8B. 45, F4
        add     eax, edx                                ; 0AA8 _ 01. D0
        mov     edx, eax                                ; 0AAA _ 89. C2
        mov     eax, dword [ebp+20H]                    ; 0AAC _ 8B. 45, 20
        add     eax, edx                                ; 0AAF _ 01. D0
        mov     ecx, dword [ebp+1CH]                    ; 0AB1 _ 8B. 4D, 1C
        mov     edx, dword [ebp-8H]                     ; 0AB4 _ 8B. 55, F8
        add     edx, ecx                                ; 0AB7 _ 01. CA
        imul    edx, dword [ebp+0CH]                    ; 0AB9 _ 0F AF. 55, 0C
        mov     ebx, dword [ebp+18H]                    ; 0ABD _ 8B. 5D, 18
        mov     ecx, dword [ebp-0CH]                    ; 0AC0 _ 8B. 4D, F4
        add     ecx, ebx                                ; 0AC3 _ 01. D9
        add     edx, ecx                                ; 0AC5 _ 01. CA
        mov     ecx, edx                                ; 0AC7 _ 89. D1
        mov     edx, dword [ebp+8H]                     ; 0AC9 _ 8B. 55, 08
        add     edx, ecx                                ; 0ACC _ 01. CA
        movzx   eax, byte [eax]                         ; 0ACE _ 0F B6. 00
        mov     byte [edx], al                          ; 0AD1 _ 88. 02
        add     dword [ebp-0CH], 1                      ; 0AD3 _ 83. 45, F4, 01
?_031:  mov     eax, dword [ebp-0CH]                    ; 0AD7 _ 8B. 45, F4
        cmp     eax, dword [ebp+10H]                    ; 0ADA _ 3B. 45, 10
        jl      ?_030                                   ; 0ADD _ 7C, BD
        add     dword [ebp-8H], 1                       ; 0ADF _ 83. 45, F8, 01
?_032:  mov     eax, dword [ebp-8H]                     ; 0AE3 _ 8B. 45, F8
        cmp     eax, dword [ebp+14H]                    ; 0AE6 _ 3B. 45, 14
        jl      ?_029                                   ; 0AE9 _ 7C, A8
        nop                                             ; 0AEB _ 90
        add     esp, 16                                 ; 0AEC _ 83. C4, 10
        pop     ebx                                     ; 0AEF _ 5B
        pop     ebp                                     ; 0AF0 _ 5D
        ret                                             ; 0AF1 _ C3
; putblock End of function

intHandlerFromC:; Function begin
        push    ebp                                     ; 0AF2 _ 55
        mov     ebp, esp                                ; 0AF3 _ 89. E5
        sub     esp, 24                                 ; 0AF5 _ 83. EC, 18
        mov     eax, dword [bootInfo]                   ; 0AF8 _ A1, 00000000(d)
        mov     dword [ebp-14H], eax                    ; 0AFD _ 89. 45, EC
        movzx   eax, word [?_130]                       ; 0B00 _ 0F B7. 05, 00000004(d)
        cwde                                            ; 0B07 _ 98
        mov     dword [ebp-10H], eax                    ; 0B08 _ 89. 45, F0
        movzx   eax, word [?_131]                       ; 0B0B _ 0F B7. 05, 00000006(d)
        cwde                                            ; 0B12 _ 98
        mov     dword [ebp-0CH], eax                    ; 0B13 _ 89. 45, F4
        sub     esp, 8                                  ; 0B16 _ 83. EC, 08
        push    32                                      ; 0B19 _ 6A, 20
        push    32                                      ; 0B1B _ 6A, 20
        call    io_out8                                 ; 0B1D _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0B22 _ 83. C4, 10
        mov     byte [ebp-15H], 0                       ; 0B25 _ C6. 45, EB, 00
        sub     esp, 12                                 ; 0B29 _ 83. EC, 0C
        push    96                                      ; 0B2C _ 6A, 60
        call    io_in8                                  ; 0B2E _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0B33 _ 83. C4, 10
        mov     byte [ebp-15H], al                      ; 0B36 _ 88. 45, EB
        movzx   eax, byte [ebp-15H]                     ; 0B39 _ 0F B6. 45, EB
        sub     esp, 8                                  ; 0B3D _ 83. EC, 08
        push    eax                                     ; 0B40 _ 50
        push    keyInfo                                 ; 0B41 _ 68, 00000008(d)
        call    fifo8_put                               ; 0B46 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0B4B _ 83. C4, 10
        nop                                             ; 0B4E _ 90
        leave                                           ; 0B4F _ C9
        ret                                             ; 0B50 _ C3
; intHandlerFromC End of function

charToHex:; Function begin
        push    ebp                                     ; 0B51 _ 55
        mov     ebp, esp                                ; 0B52 _ 89. E5
        sub     esp, 40                                 ; 0B54 _ 83. EC, 28
        mov     eax, dword [ebp+8H]                     ; 0B57 _ 8B. 45, 08
        mov     byte [ebp-1CH], al                      ; 0B5A _ 88. 45, E4
        movzx   eax, byte [ebp-1CH]                     ; 0B5D _ 0F B6. 45, E4
        and     eax, 0FH                                ; 0B61 _ 83. E0, 0F
        mov     byte [ebp-9H], al                       ; 0B64 _ 88. 45, F7
        movsx   eax, byte [ebp-9H]                      ; 0B67 _ 0F BE. 45, F7
        sub     esp, 12                                 ; 0B6B _ 83. EC, 0C
        push    eax                                     ; 0B6E _ 50
        call    charToVal                               ; 0B6F _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0B74 _ 83. C4, 10
        mov     byte [?_129], al                        ; 0B77 _ A2, 00000003(d)
        movzx   eax, byte [ebp-1CH]                     ; 0B7C _ 0F B6. 45, E4
        shr     al, 4                                   ; 0B80 _ C0. E8, 04
        mov     byte [ebp-1CH], al                      ; 0B83 _ 88. 45, E4
        movzx   eax, byte [ebp-1CH]                     ; 0B86 _ 0F B6. 45, E4
        movsx   eax, al                                 ; 0B8A _ 0F BE. C0
        sub     esp, 12                                 ; 0B8D _ 83. EC, 0C
        push    eax                                     ; 0B90 _ 50
        call    charToVal                               ; 0B91 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0B96 _ 83. C4, 10
        mov     byte [?_128], al                        ; 0B99 _ A2, 00000002(d)
        mov     eax, keyVal                             ; 0B9E _ B8, 00000000(d)
        leave                                           ; 0BA3 _ C9
        ret                                             ; 0BA4 _ C3
; charToHex End of function

charToVal:; Function begin
        push    ebp                                     ; 0BA5 _ 55
        mov     ebp, esp                                ; 0BA6 _ 89. E5
        sub     esp, 4                                  ; 0BA8 _ 83. EC, 04
        mov     eax, dword [ebp+8H]                     ; 0BAB _ 8B. 45, 08
        mov     byte [ebp-4H], al                       ; 0BAE _ 88. 45, FC
        cmp     byte [ebp-4H], 9                        ; 0BB1 _ 80. 7D, FC, 09
        jle     ?_033                                   ; 0BB5 _ 7E, 09
        movzx   eax, byte [ebp-4H]                      ; 0BB7 _ 0F B6. 45, FC
        add     eax, 55                                 ; 0BBB _ 83. C0, 37
        jmp     ?_034                                   ; 0BBE _ EB, 07

?_033:  movzx   eax, byte [ebp-4H]                      ; 0BC0 _ 0F B6. 45, FC
        add     eax, 48                                 ; 0BC4 _ 83. C0, 30
?_034:  leave                                           ; 0BC7 _ C9
        ret                                             ; 0BC8 _ C3
; charToVal End of function

intToHexStr:; Function begin
        push    ebp                                     ; 0BC9 _ 55
        mov     ebp, esp                                ; 0BCA _ 89. E5
        sub     esp, 16                                 ; 0BCC _ 83. EC, 10
        mov     byte [str.1765], 48                     ; 0BCF _ C6. 05, 00000200(d), 30
        mov     byte [?_132], 120                       ; 0BD6 _ C6. 05, 00000201(d), 78
        mov     byte [?_133], 0                         ; 0BDD _ C6. 05, 0000020A(d), 00
        mov     dword [ebp-0CH], 2                      ; 0BE4 _ C7. 45, F4, 00000002
        jmp     ?_036                                   ; 0BEB _ EB, 0F

?_035:  mov     eax, dword [ebp-0CH]                    ; 0BED _ 8B. 45, F4
        add     eax, str.1765                           ; 0BF0 _ 05, 00000200(d)
        mov     byte [eax], 48                          ; 0BF5 _ C6. 00, 30
        add     dword [ebp-0CH], 1                      ; 0BF8 _ 83. 45, F4, 01
?_036:  cmp     dword [ebp-0CH], 9                      ; 0BFC _ 83. 7D, F4, 09
        jle     ?_035                                   ; 0C00 _ 7E, EB
        mov     dword [ebp-8H], 9                       ; 0C02 _ C7. 45, F8, 00000009
        jmp     ?_039                                   ; 0C09 _ EB, 48

?_037:  mov     eax, dword [ebp+8H]                     ; 0C0B _ 8B. 45, 08
        and     eax, 0FH                                ; 0C0E _ 83. E0, 0F
        mov     dword [ebp-4H], eax                     ; 0C11 _ 89. 45, FC
        mov     eax, dword [ebp+8H]                     ; 0C14 _ 8B. 45, 08
        shr     eax, 4                                  ; 0C17 _ C1. E8, 04
        mov     dword [ebp+8H], eax                     ; 0C1A _ 89. 45, 08
        cmp     dword [ebp-4H], 9                       ; 0C1D _ 83. 7D, FC, 09
        jle     ?_038                                   ; 0C21 _ 7E, 19
        mov     eax, dword [ebp-4H]                     ; 0C23 _ 8B. 45, FC
        lea     ecx, [eax+37H]                          ; 0C26 _ 8D. 48, 37
        mov     eax, dword [ebp-8H]                     ; 0C29 _ 8B. 45, F8
        lea     edx, [eax-1H]                           ; 0C2C _ 8D. 50, FF
        mov     dword [ebp-8H], edx                     ; 0C2F _ 89. 55, F8
        mov     edx, ecx                                ; 0C32 _ 89. CA
        mov     byte [str.1765+eax], dl                 ; 0C34 _ 88. 90, 00000200(d)
        jmp     ?_039                                   ; 0C3A _ EB, 17

?_038:  mov     eax, dword [ebp-4H]                     ; 0C3C _ 8B. 45, FC
        lea     ecx, [eax+30H]                          ; 0C3F _ 8D. 48, 30
        mov     eax, dword [ebp-8H]                     ; 0C42 _ 8B. 45, F8
        lea     edx, [eax-1H]                           ; 0C45 _ 8D. 50, FF
        mov     dword [ebp-8H], edx                     ; 0C48 _ 89. 55, F8
        mov     edx, ecx                                ; 0C4B _ 89. CA
        mov     byte [str.1765+eax], dl                 ; 0C4D _ 88. 90, 00000200(d)
?_039:  cmp     dword [ebp-8H], 1                       ; 0C53 _ 83. 7D, F8, 01
        jle     ?_040                                   ; 0C57 _ 7E, 06
        cmp     dword [ebp+8H], 0                       ; 0C59 _ 83. 7D, 08, 00
        jnz     ?_037                                   ; 0C5D _ 75, AC
?_040:  mov     eax, str.1765                           ; 0C5F _ B8, 00000200(d)
        leave                                           ; 0C64 _ C9
        ret                                             ; 0C65 _ C3
; intToHexStr End of function

wait_KBC_sendReady:; Function begin
        push    ebp                                     ; 0C66 _ 55
        mov     ebp, esp                                ; 0C67 _ 89. E5
        sub     esp, 8                                  ; 0C69 _ 83. EC, 08
?_041:  sub     esp, 12                                 ; 0C6C _ 83. EC, 0C
        push    100                                     ; 0C6F _ 6A, 64
        call    io_in8                                  ; 0C71 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0C76 _ 83. C4, 10
        movsx   eax, al                                 ; 0C79 _ 0F BE. C0
        and     eax, 02H                                ; 0C7C _ 83. E0, 02
        test    eax, eax                                ; 0C7F _ 85. C0
        jz      ?_042                                   ; 0C81 _ 74, 02
        jmp     ?_041                                   ; 0C83 _ EB, E7

?_042:  nop                                             ; 0C85 _ 90
        nop                                             ; 0C86 _ 90
        leave                                           ; 0C87 _ C9
        ret                                             ; 0C88 _ C3
; wait_KBC_sendReady End of function

init_keyboard:; Function begin
        push    ebp                                     ; 0C89 _ 55
        mov     ebp, esp                                ; 0C8A _ 89. E5
        sub     esp, 8                                  ; 0C8C _ 83. EC, 08
        call    wait_KBC_sendReady                      ; 0C8F _ E8, FFFFFFFC(rel)
        sub     esp, 8                                  ; 0C94 _ 83. EC, 08
        push    96                                      ; 0C97 _ 6A, 60
        push    100                                     ; 0C99 _ 6A, 64
        call    io_out8                                 ; 0C9B _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0CA0 _ 83. C4, 10
        call    wait_KBC_sendReady                      ; 0CA3 _ E8, FFFFFFFC(rel)
        sub     esp, 8                                  ; 0CA8 _ 83. EC, 08
        push    71                                      ; 0CAB _ 6A, 47
        push    96                                      ; 0CAD _ 6A, 60
        call    io_out8                                 ; 0CAF _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0CB4 _ 83. C4, 10
        nop                                             ; 0CB7 _ 90
        leave                                           ; 0CB8 _ C9
        ret                                             ; 0CB9 _ C3
; init_keyboard End of function

enable_mouse:; Function begin
        push    ebp                                     ; 0CBA _ 55
        mov     ebp, esp                                ; 0CBB _ 89. E5
        sub     esp, 8                                  ; 0CBD _ 83. EC, 08
        call    wait_KBC_sendReady                      ; 0CC0 _ E8, FFFFFFFC(rel)
        sub     esp, 8                                  ; 0CC5 _ 83. EC, 08
        push    212                                     ; 0CC8 _ 68, 000000D4
        push    100                                     ; 0CCD _ 6A, 64
        call    io_out8                                 ; 0CCF _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0CD4 _ 83. C4, 10
        call    wait_KBC_sendReady                      ; 0CD7 _ E8, FFFFFFFC(rel)
        sub     esp, 8                                  ; 0CDC _ 83. EC, 08
        push    244                                     ; 0CDF _ 68, 000000F4
        push    96                                      ; 0CE4 _ 6A, 60
        call    io_out8                                 ; 0CE6 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0CEB _ 83. C4, 10
        mov     eax, dword [ebp+8H]                     ; 0CEE _ 8B. 45, 08
        mov     byte [eax+3H], 0                        ; 0CF1 _ C6. 40, 03, 00
        nop                                             ; 0CF5 _ 90
        leave                                           ; 0CF6 _ C9
        ret                                             ; 0CF7 _ C3
; enable_mouse End of function

intHandlerForMouse:; Function begin
        push    ebp                                     ; 0CF8 _ 55
        mov     ebp, esp                                ; 0CF9 _ 89. E5
        sub     esp, 24                                 ; 0CFB _ 83. EC, 18
        mov     byte [ebp-9H], 0                        ; 0CFE _ C6. 45, F7, 00
        sub     esp, 8                                  ; 0D02 _ 83. EC, 08
        push    32                                      ; 0D05 _ 6A, 20
        push    160                                     ; 0D07 _ 68, 000000A0
        call    io_out8                                 ; 0D0C _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0D11 _ 83. C4, 10
        sub     esp, 8                                  ; 0D14 _ 83. EC, 08
        push    32                                      ; 0D17 _ 6A, 20
        push    32                                      ; 0D19 _ 6A, 20
        call    io_out8                                 ; 0D1B _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0D20 _ 83. C4, 10
        sub     esp, 12                                 ; 0D23 _ 83. EC, 0C
        push    96                                      ; 0D26 _ 6A, 60
        call    io_in8                                  ; 0D28 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0D2D _ 83. C4, 10
        mov     byte [ebp-9H], al                       ; 0D30 _ 88. 45, F7
        movzx   eax, byte [ebp-9H]                      ; 0D33 _ 0F B6. 45, F7
        sub     esp, 8                                  ; 0D37 _ 83. EC, 08
        push    eax                                     ; 0D3A _ 50
        push    mouseInfo                               ; 0D3B _ 68, 00000020(d)
        call    fifo8_put                               ; 0D40 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0D45 _ 83. C4, 10
        nop                                             ; 0D48 _ 90
        leave                                           ; 0D49 _ C9
        ret                                             ; 0D4A _ C3
; intHandlerForMouse End of function

fifo8_init:; Function begin
        push    ebp                                     ; 0D4B _ 55
        mov     ebp, esp                                ; 0D4C _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 0D4E _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 0D51 _ 8B. 55, 0C
        mov     dword [eax+0CH], edx                    ; 0D54 _ 89. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 0D57 _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 0D5A _ 8B. 55, 10
        mov     dword [eax], edx                        ; 0D5D _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 0D5F _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 0D62 _ 8B. 55, 0C
        mov     dword [eax+10H], edx                    ; 0D65 _ 89. 50, 10
        mov     eax, dword [ebp+8H]                     ; 0D68 _ 8B. 45, 08
        mov     dword [eax+4H], 0                       ; 0D6B _ C7. 40, 04, 00000000
        mov     eax, dword [ebp+8H]                     ; 0D72 _ 8B. 45, 08
        mov     dword [eax+8H], 0                       ; 0D75 _ C7. 40, 08, 00000000
        mov     eax, dword [ebp+8H]                     ; 0D7C _ 8B. 45, 08
        mov     dword [eax+14H], 0                      ; 0D7F _ C7. 40, 14, 00000000
        nop                                             ; 0D86 _ 90
        pop     ebp                                     ; 0D87 _ 5D
        ret                                             ; 0D88 _ C3
; fifo8_init End of function

fifo8_put:; Function begin
        push    ebp                                     ; 0D89 _ 55
        mov     ebp, esp                                ; 0D8A _ 89. E5
        sub     esp, 4                                  ; 0D8C _ 83. EC, 04
        mov     eax, dword [ebp+0CH]                    ; 0D8F _ 8B. 45, 0C
        mov     byte [ebp-4H], al                       ; 0D92 _ 88. 45, FC
        mov     eax, dword [ebp+8H]                     ; 0D95 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 0D98 _ 8B. 40, 10
        test    eax, eax                                ; 0D9B _ 85. C0
        jnz     ?_043                                   ; 0D9D _ 75, 18
        mov     eax, dword [ebp+8H]                     ; 0D9F _ 8B. 45, 08
        mov     eax, dword [eax+14H]                    ; 0DA2 _ 8B. 40, 14
        or      eax, 01H                                ; 0DA5 _ 83. C8, 01
        mov     edx, eax                                ; 0DA8 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 0DAA _ 8B. 45, 08
        mov     dword [eax+14H], edx                    ; 0DAD _ 89. 50, 14
        mov     eax, 4294967295                         ; 0DB0 _ B8, FFFFFFFF
        jmp     ?_045                                   ; 0DB5 _ EB, 50

?_043:  mov     eax, dword [ebp+8H]                     ; 0DB7 _ 8B. 45, 08
        mov     edx, dword [eax]                        ; 0DBA _ 8B. 10
        mov     eax, dword [ebp+8H]                     ; 0DBC _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 0DBF _ 8B. 40, 08
        add     edx, eax                                ; 0DC2 _ 01. C2
        movzx   eax, byte [ebp-4H]                      ; 0DC4 _ 0F B6. 45, FC
        mov     byte [edx], al                          ; 0DC8 _ 88. 02
        mov     eax, dword [ebp+8H]                     ; 0DCA _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 0DCD _ 8B. 40, 08
        lea     edx, [eax+1H]                           ; 0DD0 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 0DD3 _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 0DD6 _ 89. 50, 08
        mov     eax, dword [ebp+8H]                     ; 0DD9 _ 8B. 45, 08
        mov     edx, dword [eax+8H]                     ; 0DDC _ 8B. 50, 08
        mov     eax, dword [ebp+8H]                     ; 0DDF _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 0DE2 _ 8B. 40, 0C
        cmp     edx, eax                                ; 0DE5 _ 39. C2
        jnz     ?_044                                   ; 0DE7 _ 75, 0A
        mov     eax, dword [ebp+8H]                     ; 0DE9 _ 8B. 45, 08
        mov     dword [eax+8H], 0                       ; 0DEC _ C7. 40, 08, 00000000
?_044:  mov     eax, dword [ebp+8H]                     ; 0DF3 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 0DF6 _ 8B. 40, 10
        lea     edx, [eax-1H]                           ; 0DF9 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 0DFC _ 8B. 45, 08
        mov     dword [eax+10H], edx                    ; 0DFF _ 89. 50, 10
        mov     eax, 1                                  ; 0E02 _ B8, 00000001
?_045:  leave                                           ; 0E07 _ C9
        ret                                             ; 0E08 _ C3
; fifo8_put End of function

fifo8_get:; Function begin
        push    ebp                                     ; 0E09 _ 55
        mov     ebp, esp                                ; 0E0A _ 89. E5
        sub     esp, 16                                 ; 0E0C _ 83. EC, 10
        mov     eax, dword [ebp+8H]                     ; 0E0F _ 8B. 45, 08
        mov     edx, dword [eax+10H]                    ; 0E12 _ 8B. 50, 10
        mov     eax, dword [ebp+8H]                     ; 0E15 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 0E18 _ 8B. 40, 0C
        cmp     edx, eax                                ; 0E1B _ 39. C2
        jnz     ?_046                                   ; 0E1D _ 75, 07
        mov     eax, 4294967295                         ; 0E1F _ B8, FFFFFFFF
        jmp     ?_048                                   ; 0E24 _ EB, 51

?_046:  mov     eax, dword [ebp+8H]                     ; 0E26 _ 8B. 45, 08
        mov     edx, dword [eax]                        ; 0E29 _ 8B. 10
        mov     eax, dword [ebp+8H]                     ; 0E2B _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 0E2E _ 8B. 40, 04
        add     eax, edx                                ; 0E31 _ 01. D0
        movzx   eax, byte [eax]                         ; 0E33 _ 0F B6. 00
        movzx   eax, al                                 ; 0E36 _ 0F B6. C0
        mov     dword [ebp-4H], eax                     ; 0E39 _ 89. 45, FC
        mov     eax, dword [ebp+8H]                     ; 0E3C _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 0E3F _ 8B. 40, 04
        lea     edx, [eax+1H]                           ; 0E42 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 0E45 _ 8B. 45, 08
        mov     dword [eax+4H], edx                     ; 0E48 _ 89. 50, 04
        mov     eax, dword [ebp+8H]                     ; 0E4B _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 0E4E _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 0E51 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 0E54 _ 8B. 40, 0C
        cmp     edx, eax                                ; 0E57 _ 39. C2
        jnz     ?_047                                   ; 0E59 _ 75, 0A
        mov     eax, dword [ebp+8H]                     ; 0E5B _ 8B. 45, 08
        mov     dword [eax+4H], 0                       ; 0E5E _ C7. 40, 04, 00000000
?_047:  mov     eax, dword [ebp+8H]                     ; 0E65 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 0E68 _ 8B. 40, 10
        lea     edx, [eax+1H]                           ; 0E6B _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 0E6E _ 8B. 45, 08
        mov     dword [eax+10H], edx                    ; 0E71 _ 89. 50, 10
        mov     eax, dword [ebp-4H]                     ; 0E74 _ 8B. 45, FC
?_048:  leave                                           ; 0E77 _ C9
        ret                                             ; 0E78 _ C3
; fifo8_get End of function

fifo8_status:; Function begin
        push    ebp                                     ; 0E79 _ 55
        mov     ebp, esp                                ; 0E7A _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 0E7C _ 8B. 45, 08
        mov     edx, dword [eax+0CH]                    ; 0E7F _ 8B. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 0E82 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 0E85 _ 8B. 40, 10
        sub     edx, eax                                ; 0E88 _ 29. C2
        mov     eax, edx                                ; 0E8A _ 89. D0
        pop     ebp                                     ; 0E8C _ 5D
        ret                                             ; 0E8D _ C3
; fifo8_status End of function

showKeyboardInfo:; Function begin
        push    ebp                                     ; 0E8E _ 55
        mov     ebp, esp                                ; 0E8F _ 89. E5
        sub     esp, 40                                 ; 0E91 _ 83. EC, 28
        call    io_sti                                  ; 0E94 _ E8, FFFFFFFC(rel)
        mov     eax, dword [bootInfo]                   ; 0E99 _ A1, 00000000(d)
        mov     dword [ebp-18H], eax                    ; 0E9E _ 89. 45, E8
        movzx   eax, word [?_130]                       ; 0EA1 _ 0F B7. 05, 00000004(d)
        cwde                                            ; 0EA8 _ 98
        mov     dword [ebp-14H], eax                    ; 0EA9 _ 89. 45, EC
        movzx   eax, word [?_131]                       ; 0EAC _ 0F B7. 05, 00000006(d)
        cwde                                            ; 0EB3 _ 98
        mov     dword [ebp-10H], eax                    ; 0EB4 _ 89. 45, F0
        mov     byte [ebp-19H], 0                       ; 0EB7 _ C6. 45, E7, 00
        sub     esp, 12                                 ; 0EBB _ 83. EC, 0C
        push    keyInfo                                 ; 0EBE _ 68, 00000008(d)
        call    fifo8_get                               ; 0EC3 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0EC8 _ 83. C4, 10
        mov     byte [ebp-19H], al                      ; 0ECB _ 88. 45, E7
        movzx   eax, byte [ebp-19H]                     ; 0ECE _ 0F B6. 45, E7
        sub     esp, 12                                 ; 0ED2 _ 83. EC, 0C
        push    eax                                     ; 0ED5 _ 50
        call    charToHex                               ; 0ED6 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0EDB _ 83. C4, 10
        mov     dword [ebp-0CH], eax                    ; 0EDE _ 89. 45, F4
        mov     edx, dword [line.1814]                  ; 0EE1 _ 8B. 15, 0000020C(d)
        mov     eax, dword [pos.1813]                   ; 0EE7 _ A1, 00000210(d)
        sub     esp, 8                                  ; 0EEC _ 83. EC, 08
        push    dword [ebp-0CH]                         ; 0EEF _ FF. 75, F4
        push    7                                       ; 0EF2 _ 6A, 07
        push    edx                                     ; 0EF4 _ 52
        push    eax                                     ; 0EF5 _ 50
        push    dword [ebp+0CH]                         ; 0EF6 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 0EF9 _ FF. 75, 08
        call    showString                              ; 0EFC _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0F01 _ 83. C4, 20
        mov     eax, dword [pos.1813]                   ; 0F04 _ A1, 00000210(d)
        add     eax, 32                                 ; 0F09 _ 83. C0, 20
        mov     dword [pos.1813], eax                   ; 0F0C _ A3, 00000210(d)
        mov     eax, dword [pos.1813]                   ; 0F11 _ A1, 00000210(d)
        cmp     dword [ebp-14H], eax                    ; 0F16 _ 39. 45, EC
        jnz     ?_051                                   ; 0F19 _ 75, 28
        mov     eax, dword [line.1814]                  ; 0F1B _ A1, 0000020C(d)
        cmp     dword [ebp-10H], eax                    ; 0F20 _ 39. 45, F0
        jz      ?_049                                   ; 0F23 _ 74, 0A
        mov     eax, dword [line.1814]                  ; 0F25 _ A1, 0000020C(d)
        add     eax, 16                                 ; 0F2A _ 83. C0, 10
        jmp     ?_050                                   ; 0F2D _ EB, 05

?_049:  mov     eax, 0                                  ; 0F2F _ B8, 00000000
?_050:  mov     dword [line.1814], eax                  ; 0F34 _ A3, 0000020C(d)
        mov     dword [pos.1813], 0                     ; 0F39 _ C7. 05, 00000210(d), 00000000
?_051:  nop                                             ; 0F43 _ 90
        leave                                           ; 0F44 _ C9
        ret                                             ; 0F45 _ C3
; showKeyboardInfo End of function

showMouseInfo:; Function begin
        push    ebp                                     ; 0F46 _ 55
        mov     ebp, esp                                ; 0F47 _ 89. E5
        sub     esp, 24                                 ; 0F49 _ 83. EC, 18
        call    io_sti                                  ; 0F4C _ E8, FFFFFFFC(rel)
        mov     byte [ebp-9H], 0                        ; 0F51 _ C6. 45, F7, 00
        sub     esp, 12                                 ; 0F55 _ 83. EC, 0C
        push    mouseInfo                               ; 0F58 _ 68, 00000020(d)
        call    fifo8_get                               ; 0F5D _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0F62 _ 83. C4, 10
        mov     byte [ebp-9H], al                       ; 0F65 _ 88. 45, F7
        movzx   eax, byte [ebp-9H]                      ; 0F68 _ 0F B6. 45, F7
        sub     esp, 8                                  ; 0F6C _ 83. EC, 08
        push    eax                                     ; 0F6F _ 50
        push    mouse_move                              ; 0F70 _ 68, 000000E0(d)
        call    mouse_decode                            ; 0F75 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0F7A _ 83. C4, 10
        test    eax, eax                                ; 0F7D _ 85. C0
        jz      ?_052                                   ; 0F7F _ 74, 31
        sub     esp, 4                                  ; 0F81 _ 83. EC, 04
        push    mouse_move                              ; 0F84 _ 68, 000000E0(d)
        push    dword [ebp+0CH]                         ; 0F89 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 0F8C _ FF. 75, 08
        call    computeMousePos                         ; 0F8F _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0F94 _ 83. C4, 10
        mov     edx, dword [my]                         ; 0F97 _ 8B. 15, 000000F4(d)
        mov     eax, dword [mx]                         ; 0F9D _ A1, 000000F0(d)
        push    edx                                     ; 0FA2 _ 52
        push    eax                                     ; 0FA3 _ 50
        push    dword [ebp+10H]                         ; 0FA4 _ FF. 75, 10
        push    dword [ebp+8H]                          ; 0FA7 _ FF. 75, 08
        call    sheet_slide                             ; 0FAA _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0FAF _ 83. C4, 10
?_052:  nop                                             ; 0FB2 _ 90
        leave                                           ; 0FB3 _ C9
        ret                                             ; 0FB4 _ C3
; showMouseInfo End of function

mouse_decode:; Function begin
        push    ebp                                     ; 0FB5 _ 55
        mov     ebp, esp                                ; 0FB6 _ 89. E5
        sub     esp, 4                                  ; 0FB8 _ 83. EC, 04
        mov     eax, dword [ebp+0CH]                    ; 0FBB _ 8B. 45, 0C
        mov     byte [ebp-4H], al                       ; 0FBE _ 88. 45, FC
        mov     eax, dword [ebp+8H]                     ; 0FC1 _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 0FC4 _ 0F B6. 40, 03
        test    al, al                                  ; 0FC8 _ 84. C0
        jnz     ?_054                                   ; 0FCA _ 75, 17
        cmp     byte [ebp-4H], -6                       ; 0FCC _ 80. 7D, FC, FA
        jnz     ?_053                                   ; 0FD0 _ 75, 07
        mov     eax, dword [ebp+8H]                     ; 0FD2 _ 8B. 45, 08
        mov     byte [eax+3H], 1                        ; 0FD5 _ C6. 40, 03, 01
?_053:  mov     eax, 0                                  ; 0FD9 _ B8, 00000000
        jmp     ?_061                                   ; 0FDE _ E9, 0000010C

?_054:  mov     eax, dword [ebp+8H]                     ; 0FE3 _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 0FE6 _ 0F B6. 40, 03
        cmp     al, 1                                   ; 0FEA _ 3C, 01
        jnz     ?_056                                   ; 0FEC _ 75, 25
        movzx   eax, byte [ebp-4H]                      ; 0FEE _ 0F B6. 45, FC
        or      eax, 37H                                ; 0FF2 _ 83. C8, 37
        cmp     al, 63                                  ; 0FF5 _ 3C, 3F
        jnz     ?_055                                   ; 0FF7 _ 75, 10
        mov     eax, dword [ebp+8H]                     ; 0FF9 _ 8B. 45, 08
        movzx   edx, byte [ebp-4H]                      ; 0FFC _ 0F B6. 55, FC
        mov     byte [eax], dl                          ; 1000 _ 88. 10
        mov     eax, dword [ebp+8H]                     ; 1002 _ 8B. 45, 08
        mov     byte [eax+3H], 2                        ; 1005 _ C6. 40, 03, 02
?_055:  mov     eax, 0                                  ; 1009 _ B8, 00000000
        jmp     ?_061                                   ; 100E _ E9, 000000DC

?_056:  mov     eax, dword [ebp+8H]                     ; 1013 _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 1016 _ 0F B6. 40, 03
        cmp     al, 2                                   ; 101A _ 3C, 02
        jnz     ?_057                                   ; 101C _ 75, 1B
        mov     eax, dword [ebp+8H]                     ; 101E _ 8B. 45, 08
        movzx   edx, byte [ebp-4H]                      ; 1021 _ 0F B6. 55, FC
        mov     byte [eax+1H], dl                       ; 1025 _ 88. 50, 01
        mov     eax, dword [ebp+8H]                     ; 1028 _ 8B. 45, 08
        mov     byte [eax+3H], 3                        ; 102B _ C6. 40, 03, 03
        mov     eax, 0                                  ; 102F _ B8, 00000000
        jmp     ?_061                                   ; 1034 _ E9, 000000B6

?_057:  mov     eax, dword [ebp+8H]                     ; 1039 _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 103C _ 0F B6. 40, 03
        cmp     al, 3                                   ; 1040 _ 3C, 03
        jne     ?_060                                   ; 1042 _ 0F 85, 000000A2
        mov     eax, dword [ebp+8H]                     ; 1048 _ 8B. 45, 08
        movzx   edx, byte [ebp-4H]                      ; 104B _ 0F B6. 55, FC
        mov     byte [eax+2H], dl                       ; 104F _ 88. 50, 02
        mov     eax, dword [ebp+8H]                     ; 1052 _ 8B. 45, 08
        mov     byte [eax+3H], 1                        ; 1055 _ C6. 40, 03, 01
        mov     eax, dword [ebp+8H]                     ; 1059 _ 8B. 45, 08
        movzx   eax, byte [eax]                         ; 105C _ 0F B6. 00
        movzx   eax, al                                 ; 105F _ 0F B6. C0
        and     eax, 07H                                ; 1062 _ 83. E0, 07
        mov     edx, eax                                ; 1065 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 1067 _ 8B. 45, 08
        mov     dword [eax+0CH], edx                    ; 106A _ 89. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 106D _ 8B. 45, 08
        movzx   eax, byte [eax+1H]                      ; 1070 _ 0F B6. 40, 01
        movzx   edx, al                                 ; 1074 _ 0F B6. D0
        mov     eax, dword [ebp+8H]                     ; 1077 _ 8B. 45, 08
        mov     dword [eax+4H], edx                     ; 107A _ 89. 50, 04
        mov     eax, dword [ebp+8H]                     ; 107D _ 8B. 45, 08
        movzx   eax, byte [eax+2H]                      ; 1080 _ 0F B6. 40, 02
        movzx   edx, al                                 ; 1084 _ 0F B6. D0
        mov     eax, dword [ebp+8H]                     ; 1087 _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 108A _ 89. 50, 08
        mov     eax, dword [ebp+8H]                     ; 108D _ 8B. 45, 08
        movzx   eax, byte [eax]                         ; 1090 _ 0F B6. 00
        movzx   eax, al                                 ; 1093 _ 0F B6. C0
        and     eax, 10H                                ; 1096 _ 83. E0, 10
        test    eax, eax                                ; 1099 _ 85. C0
        jz      ?_058                                   ; 109B _ 74, 13
        mov     eax, dword [ebp+8H]                     ; 109D _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 10A0 _ 8B. 40, 04
        or      eax, 0FFFFFF00H                         ; 10A3 _ 0D, FFFFFF00
        mov     edx, eax                                ; 10A8 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 10AA _ 8B. 45, 08
        mov     dword [eax+4H], edx                     ; 10AD _ 89. 50, 04
?_058:  mov     eax, dword [ebp+8H]                     ; 10B0 _ 8B. 45, 08
        movzx   eax, byte [eax]                         ; 10B3 _ 0F B6. 00
        movzx   eax, al                                 ; 10B6 _ 0F B6. C0
        and     eax, 20H                                ; 10B9 _ 83. E0, 20
        test    eax, eax                                ; 10BC _ 85. C0
        jz      ?_059                                   ; 10BE _ 74, 13
        mov     eax, dword [ebp+8H]                     ; 10C0 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 10C3 _ 8B. 40, 08
        or      eax, 0FFFFFF00H                         ; 10C6 _ 0D, FFFFFF00
        mov     edx, eax                                ; 10CB _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 10CD _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 10D0 _ 89. 50, 08
?_059:  mov     eax, dword [ebp+8H]                     ; 10D3 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 10D6 _ 8B. 40, 08
        neg     eax                                     ; 10D9 _ F7. D8
        mov     edx, eax                                ; 10DB _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 10DD _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 10E0 _ 89. 50, 08
        mov     eax, 1                                  ; 10E3 _ B8, 00000001
        jmp     ?_061                                   ; 10E8 _ EB, 05

?_060:  mov     eax, 4294967295                         ; 10EA _ B8, FFFFFFFF
?_061:  leave                                           ; 10EF _ C9
        ret                                             ; 10F0 _ C3
; mouse_decode End of function

computeMousePos:; Function begin
        push    ebp                                     ; 10F1 _ 55
        mov     ebp, esp                                ; 10F2 _ 89. E5
        sub     esp, 24                                 ; 10F4 _ 83. EC, 18
        movzx   eax, word [?_130]                       ; 10F7 _ 0F B7. 05, 00000004(d)
        cwde                                            ; 10FE _ 98
        mov     dword [ebp-10H], eax                    ; 10FF _ 89. 45, F0
        movzx   eax, word [?_131]                       ; 1102 _ 0F B7. 05, 00000006(d)
        cwde                                            ; 1109 _ 98
        mov     dword [ebp-0CH], eax                    ; 110A _ 89. 45, F4
        mov     eax, dword [ebp+10H]                    ; 110D _ 8B. 45, 10
        mov     edx, dword [eax+4H]                     ; 1110 _ 8B. 50, 04
        mov     eax, dword [mx]                         ; 1113 _ A1, 000000F0(d)
        add     eax, edx                                ; 1118 _ 01. D0
        mov     dword [mx], eax                         ; 111A _ A3, 000000F0(d)
        mov     eax, dword [ebp+10H]                    ; 111F _ 8B. 45, 10
        mov     edx, dword [eax+8H]                     ; 1122 _ 8B. 50, 08
        mov     eax, dword [my]                         ; 1125 _ A1, 000000F4(d)
        add     eax, edx                                ; 112A _ 01. D0
        mov     dword [my], eax                         ; 112C _ A3, 000000F4(d)
        mov     eax, dword [mx]                         ; 1131 _ A1, 000000F0(d)
        test    eax, eax                                ; 1136 _ 85. C0
        jns     ?_062                                   ; 1138 _ 79, 0A
        mov     dword [mx], 0                           ; 113A _ C7. 05, 000000F0(d), 00000000
?_062:  mov     eax, dword [my]                         ; 1144 _ A1, 000000F4(d)
        test    eax, eax                                ; 1149 _ 85. C0
        jns     ?_063                                   ; 114B _ 79, 0A
        mov     dword [my], 0                           ; 114D _ C7. 05, 000000F4(d), 00000000
?_063:  mov     eax, dword [ebp-10H]                    ; 1157 _ 8B. 45, F0
        lea     edx, [eax-9H]                           ; 115A _ 8D. 50, F7
        mov     eax, dword [mx]                         ; 115D _ A1, 000000F0(d)
        cmp     edx, eax                                ; 1162 _ 39. C2
        jge     ?_064                                   ; 1164 _ 7D, 0B
        mov     eax, dword [ebp-10H]                    ; 1166 _ 8B. 45, F0
        sub     eax, 9                                  ; 1169 _ 83. E8, 09
        mov     dword [mx], eax                         ; 116C _ A3, 000000F0(d)
?_064:  mov     eax, dword [ebp-0CH]                    ; 1171 _ 8B. 45, F4
        lea     edx, [eax-1H]                           ; 1174 _ 8D. 50, FF
        mov     eax, dword [my]                         ; 1177 _ A1, 000000F4(d)
        cmp     edx, eax                                ; 117C _ 39. C2
        jge     ?_065                                   ; 117E _ 7D, 0B
        mov     eax, dword [ebp-0CH]                    ; 1180 _ 8B. 45, F4
        sub     eax, 1                                  ; 1183 _ 83. E8, 01
        mov     dword [my], eax                         ; 1186 _ A3, 000000F4(d)
?_065:  mov     eax, dword [buf_back]                   ; 118B _ A1, 000000F8(d)
        push    15                                      ; 1190 _ 6A, 0F
        push    79                                      ; 1192 _ 6A, 4F
        push    0                                       ; 1194 _ 6A, 00
        push    0                                       ; 1196 _ 6A, 00
        push    14                                      ; 1198 _ 6A, 0E
        push    dword [ebp-10H]                         ; 119A _ FF. 75, F0
        push    eax                                     ; 119D _ 50
        call    boxfill8                                ; 119E _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 11A3 _ 83. C4, 1C
        sub     esp, 8                                  ; 11A6 _ 83. EC, 08
        push    ?_121                                   ; 11A9 _ 68, 00000017(d)
        push    3                                       ; 11AE _ 6A, 03
        push    0                                       ; 11B0 _ 6A, 00
        push    0                                       ; 11B2 _ 6A, 00
        push    dword [ebp+0CH]                         ; 11B4 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 11B7 _ FF. 75, 08
        call    showString                              ; 11BA _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 11BF _ 83. C4, 20
        nop                                             ; 11C2 _ 90
        leave                                           ; 11C3 _ C9
        ret                                             ; 11C4 _ C3
; computeMousePos End of function

showMemInfo:; Function begin
        push    ebp                                     ; 11C5 _ 55
        mov     ebp, esp                                ; 11C6 _ 89. E5
        sub     esp, 56                                 ; 11C8 _ 83. EC, 38
        mov     dword [ebp-30H], 0                      ; 11CB _ C7. 45, D0, 00000000
        mov     dword [ebp-2CH], 0                      ; 11D2 _ C7. 45, D4, 00000000
        mov     dword [ebp-28H], 112                    ; 11D9 _ C7. 45, D8, 00000070
        mov     dword [ebp-24H], 80                     ; 11E0 _ C7. 45, DC, 00000050
        push    100                                     ; 11E7 _ 6A, 64
        push    dword [ebp+1CH]                         ; 11E9 _ FF. 75, 1C
        push    0                                       ; 11EC _ 6A, 00
        push    0                                       ; 11EE _ 6A, 00
        push    14                                      ; 11F0 _ 6A, 0E
        push    dword [ebp+1CH]                         ; 11F2 _ FF. 75, 1C
        push    dword [ebp+14H]                         ; 11F5 _ FF. 75, 14
        call    boxfill8                                ; 11F8 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 11FD _ 83. C4, 1C
        mov     eax, dword [ebp+20H]                    ; 1200 _ 8B. 45, 20
        movsx   eax, al                                 ; 1203 _ 0F BE. C0
        sub     esp, 8                                  ; 1206 _ 83. EC, 08
        push    ?_122                                   ; 1209 _ 68, 00000022(d)
        push    eax                                     ; 120E _ 50
        push    dword [ebp-2CH]                         ; 120F _ FF. 75, D4
        push    dword [ebp-30H]                         ; 1212 _ FF. 75, D0
        push    dword [ebp+0CH]                         ; 1215 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1218 _ FF. 75, 08
        call    showString                              ; 121B _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1220 _ 83. C4, 20
        mov     eax, dword [ebp+18H]                    ; 1223 _ 8B. 45, 18
        sub     esp, 12                                 ; 1226 _ 83. EC, 0C
        push    eax                                     ; 1229 _ 50
        call    intToHexStr                             ; 122A _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 122F _ 83. C4, 10
        mov     dword [ebp-20H], eax                    ; 1232 _ 89. 45, E0
        mov     eax, dword [ebp+20H]                    ; 1235 _ 8B. 45, 20
        movsx   eax, al                                 ; 1238 _ 0F BE. C0
        sub     esp, 8                                  ; 123B _ 83. EC, 08
        push    dword [ebp-20H]                         ; 123E _ FF. 75, E0
        push    eax                                     ; 1241 _ 50
        push    dword [ebp-2CH]                         ; 1242 _ FF. 75, D4
        push    dword [ebp-28H]                         ; 1245 _ FF. 75, D8
        push    dword [ebp+0CH]                         ; 1248 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 124B _ FF. 75, 08
        call    showString                              ; 124E _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1253 _ 83. C4, 20
        add     dword [ebp-2CH], 16                     ; 1256 _ 83. 45, D4, 10
        mov     eax, dword [ebp+20H]                    ; 125A _ 8B. 45, 20
        movsx   eax, al                                 ; 125D _ 0F BE. C0
        sub     esp, 8                                  ; 1260 _ 83. EC, 08
        push    ?_123                                   ; 1263 _ 68, 0000002C(d)
        push    eax                                     ; 1268 _ 50
        push    dword [ebp-2CH]                         ; 1269 _ FF. 75, D4
        push    dword [ebp-30H]                         ; 126C _ FF. 75, D0
        push    dword [ebp+0CH]                         ; 126F _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1272 _ FF. 75, 08
        call    showString                              ; 1275 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 127A _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 127D _ 8B. 45, 10
        mov     eax, dword [eax]                        ; 1280 _ 8B. 00
        sub     esp, 12                                 ; 1282 _ 83. EC, 0C
        push    eax                                     ; 1285 _ 50
        call    intToHexStr                             ; 1286 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 128B _ 83. C4, 10
        mov     dword [ebp-1CH], eax                    ; 128E _ 89. 45, E4
        mov     eax, dword [ebp+20H]                    ; 1291 _ 8B. 45, 20
        movsx   eax, al                                 ; 1294 _ 0F BE. C0
        sub     esp, 8                                  ; 1297 _ 83. EC, 08
        push    dword [ebp-1CH]                         ; 129A _ FF. 75, E4
        push    eax                                     ; 129D _ 50
        push    dword [ebp-2CH]                         ; 129E _ FF. 75, D4
        push    dword [ebp-28H]                         ; 12A1 _ FF. 75, D8
        push    dword [ebp+0CH]                         ; 12A4 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 12A7 _ FF. 75, 08
        call    showString                              ; 12AA _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 12AF _ 83. C4, 20
        add     dword [ebp-2CH], 16                     ; 12B2 _ 83. 45, D4, 10
        mov     eax, dword [ebp+20H]                    ; 12B6 _ 8B. 45, 20
        movsx   eax, al                                 ; 12B9 _ 0F BE. C0
        sub     esp, 8                                  ; 12BC _ 83. EC, 08
        push    ?_124                                   ; 12BF _ 68, 0000003A(d)
        push    eax                                     ; 12C4 _ 50
        push    dword [ebp-2CH]                         ; 12C5 _ FF. 75, D4
        push    dword [ebp-30H]                         ; 12C8 _ FF. 75, D0
        push    dword [ebp+0CH]                         ; 12CB _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 12CE _ FF. 75, 08
        call    showString                              ; 12D1 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 12D6 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 12D9 _ 8B. 45, 10
        mov     eax, dword [eax+4H]                     ; 12DC _ 8B. 40, 04
        sub     esp, 12                                 ; 12DF _ 83. EC, 0C
        push    eax                                     ; 12E2 _ 50
        call    intToHexStr                             ; 12E3 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 12E8 _ 83. C4, 10
        mov     dword [ebp-18H], eax                    ; 12EB _ 89. 45, E8
        mov     eax, dword [ebp+20H]                    ; 12EE _ 8B. 45, 20
        movsx   eax, al                                 ; 12F1 _ 0F BE. C0
        sub     esp, 8                                  ; 12F4 _ 83. EC, 08
        push    dword [ebp-18H]                         ; 12F7 _ FF. 75, E8
        push    eax                                     ; 12FA _ 50
        push    dword [ebp-2CH]                         ; 12FB _ FF. 75, D4
        push    dword [ebp-28H]                         ; 12FE _ FF. 75, D8
        push    dword [ebp+0CH]                         ; 1301 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1304 _ FF. 75, 08
        call    showString                              ; 1307 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 130C _ 83. C4, 20
        add     dword [ebp-2CH], 16                     ; 130F _ 83. 45, D4, 10
        mov     eax, dword [ebp+20H]                    ; 1313 _ 8B. 45, 20
        movsx   eax, al                                 ; 1316 _ 0F BE. C0
        sub     esp, 8                                  ; 1319 _ 83. EC, 08
        push    ?_125                                   ; 131C _ 68, 00000049(d)
        push    eax                                     ; 1321 _ 50
        push    dword [ebp-2CH]                         ; 1322 _ FF. 75, D4
        push    dword [ebp-30H]                         ; 1325 _ FF. 75, D0
        push    dword [ebp+0CH]                         ; 1328 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 132B _ FF. 75, 08
        call    showString                              ; 132E _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1333 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 1336 _ 8B. 45, 10
        mov     eax, dword [eax+8H]                     ; 1339 _ 8B. 40, 08
        sub     esp, 12                                 ; 133C _ 83. EC, 0C
        push    eax                                     ; 133F _ 50
        call    intToHexStr                             ; 1340 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1345 _ 83. C4, 10
        mov     dword [ebp-14H], eax                    ; 1348 _ 89. 45, EC
        mov     eax, dword [ebp+20H]                    ; 134B _ 8B. 45, 20
        movsx   eax, al                                 ; 134E _ 0F BE. C0
        sub     esp, 8                                  ; 1351 _ 83. EC, 08
        push    dword [ebp-14H]                         ; 1354 _ FF. 75, EC
        push    eax                                     ; 1357 _ 50
        push    dword [ebp-2CH]                         ; 1358 _ FF. 75, D4
        push    dword [ebp-28H]                         ; 135B _ FF. 75, D8
        push    dword [ebp+0CH]                         ; 135E _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1361 _ FF. 75, 08
        call    showString                              ; 1364 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1369 _ 83. C4, 20
        add     dword [ebp-2CH], 16                     ; 136C _ 83. 45, D4, 10
        mov     eax, dword [ebp+20H]                    ; 1370 _ 8B. 45, 20
        movsx   eax, al                                 ; 1373 _ 0F BE. C0
        sub     esp, 8                                  ; 1376 _ 83. EC, 08
        push    ?_126                                   ; 1379 _ 68, 00000055(d)
        push    eax                                     ; 137E _ 50
        push    dword [ebp-2CH]                         ; 137F _ FF. 75, D4
        push    dword [ebp-30H]                         ; 1382 _ FF. 75, D0
        push    dword [ebp+0CH]                         ; 1385 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1388 _ FF. 75, 08
        call    showString                              ; 138B _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1390 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 1393 _ 8B. 45, 10
        mov     eax, dword [eax+0CH]                    ; 1396 _ 8B. 40, 0C
        sub     esp, 12                                 ; 1399 _ 83. EC, 0C
        push    eax                                     ; 139C _ 50
        call    intToHexStr                             ; 139D _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 13A2 _ 83. C4, 10
        mov     dword [ebp-10H], eax                    ; 13A5 _ 89. 45, F0
        mov     eax, dword [ebp+20H]                    ; 13A8 _ 8B. 45, 20
        movsx   eax, al                                 ; 13AB _ 0F BE. C0
        sub     esp, 8                                  ; 13AE _ 83. EC, 08
        push    dword [ebp-10H]                         ; 13B1 _ FF. 75, F0
        push    eax                                     ; 13B4 _ 50
        push    dword [ebp-2CH]                         ; 13B5 _ FF. 75, D4
        push    dword [ebp-28H]                         ; 13B8 _ FF. 75, D8
        push    dword [ebp+0CH]                         ; 13BB _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 13BE _ FF. 75, 08
        call    showString                              ; 13C1 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 13C6 _ 83. C4, 20
        add     dword [ebp-2CH], 16                     ; 13C9 _ 83. 45, D4, 10
        mov     eax, dword [ebp+20H]                    ; 13CD _ 8B. 45, 20
        movsx   eax, al                                 ; 13D0 _ 0F BE. C0
        sub     esp, 8                                  ; 13D3 _ 83. EC, 08
        push    ?_127                                   ; 13D6 _ 68, 00000062(d)
        push    eax                                     ; 13DB _ 50
        push    dword [ebp-2CH]                         ; 13DC _ FF. 75, D4
        push    dword [ebp-30H]                         ; 13DF _ FF. 75, D0
        push    dword [ebp+0CH]                         ; 13E2 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 13E5 _ FF. 75, 08
        call    showString                              ; 13E8 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 13ED _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 13F0 _ 8B. 45, 10
        mov     eax, dword [eax+10H]                    ; 13F3 _ 8B. 40, 10
        sub     esp, 12                                 ; 13F6 _ 83. EC, 0C
        push    eax                                     ; 13F9 _ 50
        call    intToHexStr                             ; 13FA _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 13FF _ 83. C4, 10
        mov     dword [ebp-0CH], eax                    ; 1402 _ 89. 45, F4
        mov     eax, dword [ebp+20H]                    ; 1405 _ 8B. 45, 20
        movsx   eax, al                                 ; 1408 _ 0F BE. C0
        sub     esp, 8                                  ; 140B _ 83. EC, 08
        push    dword [ebp-0CH]                         ; 140E _ FF. 75, F4
        push    eax                                     ; 1411 _ 50
        push    dword [ebp-2CH]                         ; 1412 _ FF. 75, D4
        push    dword [ebp-28H]                         ; 1415 _ FF. 75, D8
        push    dword [ebp+0CH]                         ; 1418 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 141B _ FF. 75, 08
        call    showString                              ; 141E _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1423 _ 83. C4, 20
        add     dword [ebp-2CH], 16                     ; 1426 _ 83. 45, D4, 10
        nop                                             ; 142A _ 90
        leave                                           ; 142B _ C9
        ret                                             ; 142C _ C3
; showMemInfo End of function

memman_init:; Function begin
        push    ebp                                     ; 142D _ 55
        mov     ebp, esp                                ; 142E _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 1430 _ 8B. 45, 08
        mov     dword [eax], 0                          ; 1433 _ C7. 00, 00000000
        mov     eax, dword [ebp+8H]                     ; 1439 _ 8B. 45, 08
        mov     dword [eax+4H], 0                       ; 143C _ C7. 40, 04, 00000000
        mov     eax, dword [ebp+8H]                     ; 1443 _ 8B. 45, 08
        mov     dword [eax+8H], 0                       ; 1446 _ C7. 40, 08, 00000000
        mov     eax, dword [ebp+8H]                     ; 144D _ 8B. 45, 08
        mov     dword [eax+0CH], 0                      ; 1450 _ C7. 40, 0C, 00000000
        nop                                             ; 1457 _ 90
        pop     ebp                                     ; 1458 _ 5D
        ret                                             ; 1459 _ C3
; memman_init End of function

memman_total:; Function begin
        push    ebp                                     ; 145A _ 55
        mov     ebp, esp                                ; 145B _ 89. E5
        sub     esp, 16                                 ; 145D _ 83. EC, 10
        mov     dword [ebp-8H], 0                       ; 1460 _ C7. 45, F8, 00000000
        mov     dword [ebp-4H], 0                       ; 1467 _ C7. 45, FC, 00000000
        jmp     ?_067                                   ; 146E _ EB, 14

?_066:  mov     eax, dword [ebp+8H]                     ; 1470 _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 1473 _ 8B. 55, FC
        add     edx, 2                                  ; 1476 _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 1479 _ 8B. 44 D0, 04
        add     dword [ebp-8H], eax                     ; 147D _ 01. 45, F8
        add     dword [ebp-4H], 1                       ; 1480 _ 83. 45, FC, 01
?_067:  mov     eax, dword [ebp+8H]                     ; 1484 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 1487 _ 8B. 00
        cmp     dword [ebp-4H], eax                     ; 1489 _ 39. 45, FC
        jl      ?_066                                   ; 148C _ 7C, E2
        mov     eax, dword [ebp-8H]                     ; 148E _ 8B. 45, F8
        leave                                           ; 1491 _ C9
        ret                                             ; 1492 _ C3
; memman_total End of function

memman_alloc_FF:; Function begin
        push    ebp                                     ; 1493 _ 55
        mov     ebp, esp                                ; 1494 _ 89. E5
        sub     esp, 16                                 ; 1496 _ 83. EC, 10
        mov     dword [ebp-8H], 0                       ; 1499 _ C7. 45, F8, 00000000
        jmp     ?_071                                   ; 14A0 _ E9, 00000085

?_068:  mov     eax, dword [ebp+8H]                     ; 14A5 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 14A8 _ 8B. 55, F8
        add     edx, 2                                  ; 14AB _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 14AE _ 8B. 44 D0, 04
        cmp     dword [ebp+0CH], eax                    ; 14B2 _ 39. 45, 0C
        ja      ?_070                                   ; 14B5 _ 77, 6F
        mov     eax, dword [ebp+8H]                     ; 14B7 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 14BA _ 8B. 55, F8
        add     edx, 2                                  ; 14BD _ 83. C2, 02
        mov     eax, dword [eax+edx*8]                  ; 14C0 _ 8B. 04 D0
        mov     dword [ebp-4H], eax                     ; 14C3 _ 89. 45, FC
        mov     eax, dword [ebp+8H]                     ; 14C6 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 14C9 _ 8B. 55, F8
        add     edx, 2                                  ; 14CC _ 83. C2, 02
        mov     edx, dword [eax+edx*8]                  ; 14CF _ 8B. 14 D0
        mov     eax, dword [ebp+0CH]                    ; 14D2 _ 8B. 45, 0C
        lea     ecx, [edx+eax]                          ; 14D5 _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 14D8 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 14DB _ 8B. 55, F8
        add     edx, 2                                  ; 14DE _ 83. C2, 02
        mov     dword [eax+edx*8], ecx                  ; 14E1 _ 89. 0C D0
        mov     eax, dword [ebp+8H]                     ; 14E4 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 14E7 _ 8B. 55, F8
        add     edx, 2                                  ; 14EA _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 14ED _ 8B. 44 D0, 04
        sub     eax, dword [ebp+0CH]                    ; 14F1 _ 2B. 45, 0C
        mov     edx, eax                                ; 14F4 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 14F6 _ 8B. 45, 08
        mov     ecx, dword [ebp-8H]                     ; 14F9 _ 8B. 4D, F8
        add     ecx, 2                                  ; 14FC _ 83. C1, 02
        mov     dword [eax+ecx*8+4H], edx               ; 14FF _ 89. 54 C8, 04
        mov     eax, dword [ebp+8H]                     ; 1503 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 1506 _ 8B. 55, F8
        add     edx, 2                                  ; 1509 _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 150C _ 8B. 44 D0, 04
        test    eax, eax                                ; 1510 _ 85. C0
        jnz     ?_069                                   ; 1512 _ 75, 0D
        mov     eax, dword [ebp+8H]                     ; 1514 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 1517 _ 8B. 00
        lea     edx, [eax-1H]                           ; 1519 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 151C _ 8B. 45, 08
        mov     dword [eax], edx                        ; 151F _ 89. 10
?_069:  mov     eax, dword [ebp-4H]                     ; 1521 _ 8B. 45, FC
        jmp     ?_072                                   ; 1524 _ EB, 17

?_070:  add     dword [ebp-8H], 1                       ; 1526 _ 83. 45, F8, 01
?_071:  mov     eax, dword [ebp+8H]                     ; 152A _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 152D _ 8B. 00
        cmp     dword [ebp-8H], eax                     ; 152F _ 39. 45, F8
        jl      ?_068                                   ; 1532 _ 0F 8C, FFFFFF6D
        mov     eax, 0                                  ; 1538 _ B8, 00000000
?_072:  leave                                           ; 153D _ C9
        ret                                             ; 153E _ C3
; memman_alloc_FF End of function

memman_alloc_4K:; Function begin
        push    ebp                                     ; 153F _ 55
        mov     ebp, esp                                ; 1540 _ 89. E5
        sub     esp, 16                                 ; 1542 _ 83. EC, 10
        mov     eax, dword [ebp+0CH]                    ; 1545 _ 8B. 45, 0C
        add     eax, 4095                               ; 1548 _ 05, 00000FFF
        and     eax, 0FFFFF000H                         ; 154D _ 25, FFFFF000
        mov     dword [ebp+0CH], eax                    ; 1552 _ 89. 45, 0C
        push    dword [ebp+0CH]                         ; 1555 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1558 _ FF. 75, 08
        call    memman_alloc_FF                         ; 155B _ E8, FFFFFFFC(rel)
        add     esp, 8                                  ; 1560 _ 83. C4, 08
        mov     dword [ebp-4H], eax                     ; 1563 _ 89. 45, FC
        mov     eax, dword [ebp-4H]                     ; 1566 _ 8B. 45, FC
        leave                                           ; 1569 _ C9
        ret                                             ; 156A _ C3
; memman_alloc_4K End of function

memman_free:; Function begin
        push    ebp                                     ; 156B _ 55
        mov     ebp, esp                                ; 156C _ 89. E5
        push    ebx                                     ; 156E _ 53
        sub     esp, 16                                 ; 156F _ 83. EC, 10
        mov     dword [ebp-0CH], 0                      ; 1572 _ C7. 45, F4, 00000000
        jmp     ?_074                                   ; 1579 _ EB, 15

?_073:  mov     eax, dword [ebp+8H]                     ; 157B _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 157E _ 8B. 55, F4
        add     edx, 2                                  ; 1581 _ 83. C2, 02
        mov     eax, dword [eax+edx*8]                  ; 1584 _ 8B. 04 D0
        cmp     dword [ebp+0CH], eax                    ; 1587 _ 39. 45, 0C
        jc      ?_075                                   ; 158A _ 72, 10
        add     dword [ebp-0CH], 1                      ; 158C _ 83. 45, F4, 01
?_074:  mov     eax, dword [ebp+8H]                     ; 1590 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 1593 _ 8B. 00
        cmp     dword [ebp-0CH], eax                    ; 1595 _ 39. 45, F4
        jl      ?_073                                   ; 1598 _ 7C, E1
        jmp     ?_076                                   ; 159A _ EB, 01

?_075:  nop                                             ; 159C _ 90
?_076:  cmp     dword [ebp-0CH], 0                      ; 159D _ 83. 7D, F4, 00
        jle     ?_078                                   ; 15A1 _ 0F 8E, 000000BA
        mov     eax, dword [ebp-0CH]                    ; 15A7 _ 8B. 45, F4
        lea     edx, [eax-1H]                           ; 15AA _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 15AD _ 8B. 45, 08
        add     edx, 2                                  ; 15B0 _ 83. C2, 02
        mov     edx, dword [eax+edx*8]                  ; 15B3 _ 8B. 14 D0
        mov     eax, dword [ebp-0CH]                    ; 15B6 _ 8B. 45, F4
        lea     ecx, [eax-1H]                           ; 15B9 _ 8D. 48, FF
        mov     eax, dword [ebp+8H]                     ; 15BC _ 8B. 45, 08
        add     ecx, 2                                  ; 15BF _ 83. C1, 02
        mov     eax, dword [eax+ecx*8+4H]               ; 15C2 _ 8B. 44 C8, 04
        add     eax, edx                                ; 15C6 _ 01. D0
        cmp     dword [ebp+0CH], eax                    ; 15C8 _ 39. 45, 0C
        jne     ?_078                                   ; 15CB _ 0F 85, 00000090
        mov     eax, dword [ebp-0CH]                    ; 15D1 _ 8B. 45, F4
        lea     edx, [eax-1H]                           ; 15D4 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 15D7 _ 8B. 45, 08
        add     edx, 2                                  ; 15DA _ 83. C2, 02
        mov     edx, dword [eax+edx*8+4H]               ; 15DD _ 8B. 54 D0, 04
        mov     eax, dword [ebp-0CH]                    ; 15E1 _ 8B. 45, F4
        lea     ebx, [eax-1H]                           ; 15E4 _ 8D. 58, FF
        mov     eax, dword [ebp+10H]                    ; 15E7 _ 8B. 45, 10
        lea     ecx, [edx+eax]                          ; 15EA _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 15ED _ 8B. 45, 08
        lea     edx, [ebx+2H]                           ; 15F0 _ 8D. 53, 02
        mov     dword [eax+edx*8+4H], ecx               ; 15F3 _ 89. 4C D0, 04
        mov     eax, dword [ebp+8H]                     ; 15F7 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 15FA _ 8B. 00
        cmp     dword [ebp-0CH], eax                    ; 15FC _ 39. 45, F4
        jge     ?_077                                   ; 15FF _ 7D, 56
        mov     edx, dword [ebp+0CH]                    ; 1601 _ 8B. 55, 0C
        mov     eax, dword [ebp+10H]                    ; 1604 _ 8B. 45, 10
        lea     ecx, [edx+eax]                          ; 1607 _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 160A _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 160D _ 8B. 55, F4
        add     edx, 2                                  ; 1610 _ 83. C2, 02
        mov     eax, dword [eax+edx*8]                  ; 1613 _ 8B. 04 D0
        cmp     ecx, eax                                ; 1616 _ 39. C1
        jnz     ?_077                                   ; 1618 _ 75, 3D
        mov     eax, dword [ebp-0CH]                    ; 161A _ 8B. 45, F4
        lea     edx, [eax-1H]                           ; 161D _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 1620 _ 8B. 45, 08
        add     edx, 2                                  ; 1623 _ 83. C2, 02
        mov     edx, dword [eax+edx*8+4H]               ; 1626 _ 8B. 54 D0, 04
        mov     eax, dword [ebp+8H]                     ; 162A _ 8B. 45, 08
        mov     ecx, dword [ebp-0CH]                    ; 162D _ 8B. 4D, F4
        add     ecx, 2                                  ; 1630 _ 83. C1, 02
        mov     eax, dword [eax+ecx*8+4H]               ; 1633 _ 8B. 44 C8, 04
        mov     ecx, dword [ebp-0CH]                    ; 1637 _ 8B. 4D, F4
        lea     ebx, [ecx-1H]                           ; 163A _ 8D. 59, FF
        lea     ecx, [edx+eax]                          ; 163D _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 1640 _ 8B. 45, 08
        lea     edx, [ebx+2H]                           ; 1643 _ 8D. 53, 02
        mov     dword [eax+edx*8+4H], ecx               ; 1646 _ 89. 4C D0, 04
        mov     eax, dword [ebp+8H]                     ; 164A _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 164D _ 8B. 00
        lea     edx, [eax-1H]                           ; 164F _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 1652 _ 8B. 45, 08
        mov     dword [eax], edx                        ; 1655 _ 89. 10
?_077:  mov     eax, 0                                  ; 1657 _ B8, 00000000
        jmp     ?_084                                   ; 165C _ E9, 0000011C

?_078:  mov     eax, dword [ebp+8H]                     ; 1661 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 1664 _ 8B. 00
        cmp     dword [ebp-0CH], eax                    ; 1666 _ 39. 45, F4
        jge     ?_079                                   ; 1669 _ 7D, 52
        mov     edx, dword [ebp+0CH]                    ; 166B _ 8B. 55, 0C
        mov     eax, dword [ebp+10H]                    ; 166E _ 8B. 45, 10
        lea     ecx, [edx+eax]                          ; 1671 _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 1674 _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 1677 _ 8B. 55, F4
        add     edx, 2                                  ; 167A _ 83. C2, 02
        mov     eax, dword [eax+edx*8]                  ; 167D _ 8B. 04 D0
        cmp     ecx, eax                                ; 1680 _ 39. C1
        jnz     ?_079                                   ; 1682 _ 75, 39
        mov     eax, dword [ebp+8H]                     ; 1684 _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 1687 _ 8B. 55, F4
        lea     ecx, [edx+2H]                           ; 168A _ 8D. 4A, 02
        mov     edx, dword [ebp+0CH]                    ; 168D _ 8B. 55, 0C
        mov     dword [eax+ecx*8], edx                  ; 1690 _ 89. 14 C8
        mov     eax, dword [ebp+8H]                     ; 1693 _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 1696 _ 8B. 55, F4
        add     edx, 2                                  ; 1699 _ 83. C2, 02
        mov     edx, dword [eax+edx*8+4H]               ; 169C _ 8B. 54 D0, 04
        mov     eax, dword [ebp+10H]                    ; 16A0 _ 8B. 45, 10
        lea     ecx, [edx+eax]                          ; 16A3 _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 16A6 _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 16A9 _ 8B. 55, F4
        add     edx, 2                                  ; 16AC _ 83. C2, 02
        mov     dword [eax+edx*8+4H], ecx               ; 16AF _ 89. 4C D0, 04
        mov     eax, 0                                  ; 16B3 _ B8, 00000000
        jmp     ?_084                                   ; 16B8 _ E9, 000000C0

?_079:  mov     eax, dword [ebp+8H]                     ; 16BD _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 16C0 _ 8B. 00
        cmp     eax, 4095                               ; 16C2 _ 3D, 00000FFF
        jg      ?_083                                   ; 16C7 _ 0F 8F, 00000087
        mov     eax, dword [ebp+8H]                     ; 16CD _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 16D0 _ 8B. 00
        mov     dword [ebp-8H], eax                     ; 16D2 _ 89. 45, F8
        jmp     ?_081                                   ; 16D5 _ EB, 28

?_080:  mov     eax, dword [ebp-8H]                     ; 16D7 _ 8B. 45, F8
        lea     edx, [eax-1H]                           ; 16DA _ 8D. 50, FF
        mov     ecx, dword [ebp+8H]                     ; 16DD _ 8B. 4D, 08
        mov     eax, dword [ebp-8H]                     ; 16E0 _ 8B. 45, F8
        lea     ebx, [eax+2H]                           ; 16E3 _ 8D. 58, 02
        mov     eax, dword [ebp+8H]                     ; 16E6 _ 8B. 45, 08
        add     edx, 2                                  ; 16E9 _ 83. C2, 02
        lea     edx, [eax+edx*8]                        ; 16EC _ 8D. 14 D0
        mov     eax, dword [edx]                        ; 16EF _ 8B. 02
        mov     edx, dword [edx+4H]                     ; 16F1 _ 8B. 52, 04
        mov     dword [ecx+ebx*8], eax                  ; 16F4 _ 89. 04 D9
        mov     dword [ecx+ebx*8+4H], edx               ; 16F7 _ 89. 54 D9, 04
        sub     dword [ebp-8H], 1                       ; 16FB _ 83. 6D, F8, 01
?_081:  mov     eax, dword [ebp-8H]                     ; 16FF _ 8B. 45, F8
        cmp     eax, dword [ebp-0CH]                    ; 1702 _ 3B. 45, F4
        jg      ?_080                                   ; 1705 _ 7F, D0
        mov     eax, dword [ebp+8H]                     ; 1707 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 170A _ 8B. 00
        lea     edx, [eax+1H]                           ; 170C _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 170F _ 8B. 45, 08
        mov     dword [eax], edx                        ; 1712 _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 1714 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 1717 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 171A _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 171D _ 8B. 00
        cmp     edx, eax                                ; 171F _ 39. C2
        jge     ?_082                                   ; 1721 _ 7D, 0B
        mov     eax, dword [ebp+8H]                     ; 1723 _ 8B. 45, 08
        mov     edx, dword [eax]                        ; 1726 _ 8B. 10
        mov     eax, dword [ebp+8H]                     ; 1728 _ 8B. 45, 08
        mov     dword [eax+4H], edx                     ; 172B _ 89. 50, 04
?_082:  mov     eax, dword [ebp+8H]                     ; 172E _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 1731 _ 8B. 55, F4
        lea     ecx, [edx+2H]                           ; 1734 _ 8D. 4A, 02
        mov     edx, dword [ebp+0CH]                    ; 1737 _ 8B. 55, 0C
        mov     dword [eax+ecx*8], edx                  ; 173A _ 89. 14 C8
        mov     eax, dword [ebp+8H]                     ; 173D _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 1740 _ 8B. 55, F4
        lea     ecx, [edx+2H]                           ; 1743 _ 8D. 4A, 02
        mov     edx, dword [ebp+10H]                    ; 1746 _ 8B. 55, 10
        mov     dword [eax+ecx*8+4H], edx               ; 1749 _ 89. 54 C8, 04
        mov     eax, 0                                  ; 174D _ B8, 00000000
        jmp     ?_084                                   ; 1752 _ EB, 29

?_083:  mov     eax, dword [ebp+8H]                     ; 1754 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 1757 _ 8B. 40, 0C
        lea     edx, [eax+1H]                           ; 175A _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 175D _ 8B. 45, 08
        mov     dword [eax+0CH], edx                    ; 1760 _ 89. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 1763 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 1766 _ 8B. 40, 08
        mov     edx, eax                                ; 1769 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 176B _ 8B. 45, 10
        add     eax, edx                                ; 176E _ 01. D0
        mov     edx, eax                                ; 1770 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 1772 _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 1775 _ 89. 50, 08
        mov     eax, 4294967295                         ; 1778 _ B8, FFFFFFFF
?_084:  add     esp, 16                                 ; 177D _ 83. C4, 10
        pop     ebx                                     ; 1780 _ 5B
        pop     ebp                                     ; 1781 _ 5D
        ret                                             ; 1782 _ C3
; memman_free End of function

memman_free_4K:; Function begin
        push    ebp                                     ; 1783 _ 55
        mov     ebp, esp                                ; 1784 _ 89. E5
        sub     esp, 16                                 ; 1786 _ 83. EC, 10
        mov     eax, dword [ebp+10H]                    ; 1789 _ 8B. 45, 10
        add     eax, 4095                               ; 178C _ 05, 00000FFF
        and     eax, 0FFFFF000H                         ; 1791 _ 25, FFFFF000
        mov     dword [ebp+10H], eax                    ; 1796 _ 89. 45, 10
        push    dword [ebp+10H]                         ; 1799 _ FF. 75, 10
        push    dword [ebp+0CH]                         ; 179C _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 179F _ FF. 75, 08
        call    memman_free                             ; 17A2 _ E8, FFFFFFFC(rel)
        add     esp, 12                                 ; 17A7 _ 83. C4, 0C
        mov     dword [ebp-4H], eax                     ; 17AA _ 89. 45, FC
        mov     eax, dword [ebp-4H]                     ; 17AD _ 8B. 45, FC
        leave                                           ; 17B0 _ C9
        ret                                             ; 17B1 _ C3
; memman_free_4K End of function

shtctl_init:; Function begin
        push    ebp                                     ; 17B2 _ 55
        mov     ebp, esp                                ; 17B3 _ 89. E5
        sub     esp, 24                                 ; 17B5 _ 83. EC, 18
        sub     esp, 8                                  ; 17B8 _ 83. EC, 08
        push    9232                                    ; 17BB _ 68, 00002410
        push    dword [ebp+8H]                          ; 17C0 _ FF. 75, 08
        call    memman_alloc_4K                         ; 17C3 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 17C8 _ 83. C4, 10
        mov     dword [ebp-0CH], eax                    ; 17CB _ 89. 45, F4
        cmp     dword [ebp-0CH], 0                      ; 17CE _ 83. 7D, F4, 00
        jnz     ?_085                                   ; 17D2 _ 75, 07
        mov     eax, 0                                  ; 17D4 _ B8, 00000000
        jmp     ?_088                                   ; 17D9 _ EB, 54

?_085:  mov     eax, dword [ebp-0CH]                    ; 17DB _ 8B. 45, F4
        mov     edx, dword [ebp+0CH]                    ; 17DE _ 8B. 55, 0C
        mov     dword [eax], edx                        ; 17E1 _ 89. 10
        mov     eax, dword [ebp-0CH]                    ; 17E3 _ 8B. 45, F4
        mov     edx, dword [ebp+10H]                    ; 17E6 _ 8B. 55, 10
        mov     dword [eax+4H], edx                     ; 17E9 _ 89. 50, 04
        mov     eax, dword [ebp-0CH]                    ; 17EC _ 8B. 45, F4
        mov     edx, dword [ebp+14H]                    ; 17EF _ 8B. 55, 14
        mov     dword [eax+8H], edx                     ; 17F2 _ 89. 50, 08
        mov     eax, dword [ebp-0CH]                    ; 17F5 _ 8B. 45, F4
        mov     dword [eax+0CH], -1                     ; 17F8 _ C7. 40, 0C, FFFFFFFF
        mov     dword [ebp-10H], 0                      ; 17FF _ C7. 45, F0, 00000000
        jmp     ?_087                                   ; 1806 _ EB, 1B

?_086:  mov     eax, dword [ebp-0CH]                    ; 1808 _ 8B. 45, F4
        mov     edx, dword [ebp-10H]                    ; 180B _ 8B. 55, F0
        add     edx, 33                                 ; 180E _ 83. C2, 21
        shl     edx, 5                                  ; 1811 _ C1. E2, 05
        add     eax, edx                                ; 1814 _ 01. D0
        add     eax, 12                                 ; 1816 _ 83. C0, 0C
        mov     dword [eax], 0                          ; 1819 _ C7. 00, 00000000
        add     dword [ebp-10H], 1                      ; 181F _ 83. 45, F0, 01
?_087:  cmp     dword [ebp-10H], 255                    ; 1823 _ 81. 7D, F0, 000000FF
        jle     ?_086                                   ; 182A _ 7E, DC
        mov     eax, dword [ebp-0CH]                    ; 182C _ 8B. 45, F4
?_088:  leave                                           ; 182F _ C9
        ret                                             ; 1830 _ C3
; shtctl_init End of function

sheet_alloc:; Function begin
        push    ebp                                     ; 1831 _ 55
        mov     ebp, esp                                ; 1832 _ 89. E5
        sub     esp, 16                                 ; 1834 _ 83. EC, 10
        mov     dword [ebp-8H], 0                       ; 1837 _ C7. 45, F8, 00000000
        jmp     ?_091                                   ; 183E _ EB, 48

?_089:  mov     eax, dword [ebp+8H]                     ; 1840 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 1843 _ 8B. 55, F8
        add     edx, 33                                 ; 1846 _ 83. C2, 21
        shl     edx, 5                                  ; 1849 _ C1. E2, 05
        add     eax, edx                                ; 184C _ 01. D0
        add     eax, 12                                 ; 184E _ 83. C0, 0C
        mov     eax, dword [eax]                        ; 1851 _ 8B. 00
        test    eax, eax                                ; 1853 _ 85. C0
        jnz     ?_090                                   ; 1855 _ 75, 2D
        mov     eax, dword [ebp-8H]                     ; 1857 _ 8B. 45, F8
        shl     eax, 5                                  ; 185A _ C1. E0, 05
        lea     edx, [eax+410H]                         ; 185D _ 8D. 90, 00000410
        mov     eax, dword [ebp+8H]                     ; 1863 _ 8B. 45, 08
        add     eax, edx                                ; 1866 _ 01. D0
        mov     dword [ebp-4H], eax                     ; 1868 _ 89. 45, FC
        mov     eax, dword [ebp-4H]                     ; 186B _ 8B. 45, FC
        mov     dword [eax+1CH], 1                      ; 186E _ C7. 40, 1C, 00000001
        mov     eax, dword [ebp-4H]                     ; 1875 _ 8B. 45, FC
        mov     dword [eax+18H], -1                     ; 1878 _ C7. 40, 18, FFFFFFFF
        mov     eax, dword [ebp-4H]                     ; 187F _ 8B. 45, FC
        jmp     ?_092                                   ; 1882 _ EB, 12

?_090:  add     dword [ebp-8H], 1                       ; 1884 _ 83. 45, F8, 01
?_091:  cmp     dword [ebp-8H], 255                     ; 1888 _ 81. 7D, F8, 000000FF
        jle     ?_089                                   ; 188F _ 7E, AF
        mov     eax, 0                                  ; 1891 _ B8, 00000000
?_092:  leave                                           ; 1896 _ C9
        ret                                             ; 1897 _ C3
; sheet_alloc End of function

sheet_setbuf:; Function begin
        push    ebp                                     ; 1898 _ 55
        mov     ebp, esp                                ; 1899 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 189B _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 189E _ 8B. 55, 0C
        mov     dword [eax], edx                        ; 18A1 _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 18A3 _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 18A6 _ 8B. 55, 10
        mov     dword [eax+4H], edx                     ; 18A9 _ 89. 50, 04
        mov     eax, dword [ebp+8H]                     ; 18AC _ 8B. 45, 08
        mov     edx, dword [ebp+14H]                    ; 18AF _ 8B. 55, 14
        mov     dword [eax+8H], edx                     ; 18B2 _ 89. 50, 08
        mov     eax, dword [ebp+8H]                     ; 18B5 _ 8B. 45, 08
        mov     edx, dword [ebp+18H]                    ; 18B8 _ 8B. 55, 18
        mov     dword [eax+14H], edx                    ; 18BB _ 89. 50, 14
        nop                                             ; 18BE _ 90
        pop     ebp                                     ; 18BF _ 5D
        ret                                             ; 18C0 _ C3
; sheet_setbuf End of function

sheet_level_updown:; Function begin
        push    ebp                                     ; 18C1 _ 55
        mov     ebp, esp                                ; 18C2 _ 89. E5
        push    ebx                                     ; 18C4 _ 53
        sub     esp, 36                                 ; 18C5 _ 83. EC, 24
        mov     eax, dword [ebp+0CH]                    ; 18C8 _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 18CB _ 8B. 40, 18
        mov     dword [ebp-0CH], eax                    ; 18CE _ 89. 45, F4
        mov     eax, dword [ebp+8H]                     ; 18D1 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 18D4 _ 8B. 40, 0C
        add     eax, 1                                  ; 18D7 _ 83. C0, 01
        cmp     dword [ebp+10H], eax                    ; 18DA _ 39. 45, 10
        jle     ?_093                                   ; 18DD _ 7E, 0C
        mov     eax, dword [ebp+8H]                     ; 18DF _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 18E2 _ 8B. 40, 0C
        add     eax, 1                                  ; 18E5 _ 83. C0, 01
        mov     dword [ebp+10H], eax                    ; 18E8 _ 89. 45, 10
?_093:  cmp     dword [ebp+10H], -1                     ; 18EB _ 83. 7D, 10, FF
        jge     ?_094                                   ; 18EF _ 7D, 07
        mov     dword [ebp+10H], -1                     ; 18F1 _ C7. 45, 10, FFFFFFFF
?_094:  mov     eax, dword [ebp+0CH]                    ; 18F8 _ 8B. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 18FB _ 8B. 55, 10
        mov     dword [eax+18H], edx                    ; 18FE _ 89. 50, 18
        mov     eax, dword [ebp-0CH]                    ; 1901 _ 8B. 45, F4
        cmp     eax, dword [ebp+10H]                    ; 1904 _ 3B. 45, 10
        jle     ?_102                                   ; 1907 _ 0F 8E, 000000F7
        cmp     dword [ebp+10H], 0                      ; 190D _ 83. 7D, 10, 00
        js      ?_097                                   ; 1911 _ 78, 52
        mov     eax, dword [ebp-0CH]                    ; 1913 _ 8B. 45, F4
        mov     dword [ebp-1CH], eax                    ; 1916 _ 89. 45, E4
        jmp     ?_096                                   ; 1919 _ EB, 31

?_095:  mov     eax, dword [ebp-1CH]                    ; 191B _ 8B. 45, E4
        lea     edx, [eax-1H]                           ; 191E _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 1921 _ 8B. 45, 08
        add     edx, 4                                  ; 1924 _ 83. C2, 04
        mov     edx, dword [eax+edx*4]                  ; 1927 _ 8B. 14 90
        mov     eax, dword [ebp+8H]                     ; 192A _ 8B. 45, 08
        mov     ecx, dword [ebp-1CH]                    ; 192D _ 8B. 4D, E4
        add     ecx, 4                                  ; 1930 _ 83. C1, 04
        mov     dword [eax+ecx*4], edx                  ; 1933 _ 89. 14 88
        mov     eax, dword [ebp+8H]                     ; 1936 _ 8B. 45, 08
        mov     edx, dword [ebp-1CH]                    ; 1939 _ 8B. 55, E4
        add     edx, 4                                  ; 193C _ 83. C2, 04
        mov     eax, dword [eax+edx*4]                  ; 193F _ 8B. 04 90
        mov     edx, dword [ebp-1CH]                    ; 1942 _ 8B. 55, E4
        mov     dword [eax+18H], edx                    ; 1945 _ 89. 50, 18
        sub     dword [ebp-1CH], 1                      ; 1948 _ 83. 6D, E4, 01
?_096:  mov     eax, dword [ebp-1CH]                    ; 194C _ 8B. 45, E4
        cmp     eax, dword [ebp+10H]                    ; 194F _ 3B. 45, 10
        jg      ?_095                                   ; 1952 _ 7F, C7
        mov     eax, dword [ebp+8H]                     ; 1954 _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 1957 _ 8B. 55, 10
        lea     ecx, [edx+4H]                           ; 195A _ 8D. 4A, 04
        mov     edx, dword [ebp+0CH]                    ; 195D _ 8B. 55, 0C
        mov     dword [eax+ecx*4], edx                  ; 1960 _ 89. 14 88
        jmp     ?_101                                   ; 1963 _ EB, 5E

?_097:  mov     eax, dword [ebp+8H]                     ; 1965 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 1968 _ 8B. 40, 0C
        cmp     dword [ebp-0CH], eax                    ; 196B _ 39. 45, F4
        jge     ?_100                                   ; 196E _ 7D, 44
        mov     eax, dword [ebp-0CH]                    ; 1970 _ 8B. 45, F4
        mov     dword [ebp-18H], eax                    ; 1973 _ 89. 45, E8
        jmp     ?_099                                   ; 1976 _ EB, 31

?_098:  mov     eax, dword [ebp-18H]                    ; 1978 _ 8B. 45, E8
        lea     edx, [eax+1H]                           ; 197B _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 197E _ 8B. 45, 08
        add     edx, 4                                  ; 1981 _ 83. C2, 04
        mov     edx, dword [eax+edx*4]                  ; 1984 _ 8B. 14 90
        mov     eax, dword [ebp+8H]                     ; 1987 _ 8B. 45, 08
        mov     ecx, dword [ebp-18H]                    ; 198A _ 8B. 4D, E8
        add     ecx, 4                                  ; 198D _ 83. C1, 04
        mov     dword [eax+ecx*4], edx                  ; 1990 _ 89. 14 88
        mov     eax, dword [ebp+8H]                     ; 1993 _ 8B. 45, 08
        mov     edx, dword [ebp-18H]                    ; 1996 _ 8B. 55, E8
        add     edx, 4                                  ; 1999 _ 83. C2, 04
        mov     eax, dword [eax+edx*4]                  ; 199C _ 8B. 04 90
        mov     edx, dword [ebp-18H]                    ; 199F _ 8B. 55, E8
        mov     dword [eax+18H], edx                    ; 19A2 _ 89. 50, 18
        add     dword [ebp-18H], 1                      ; 19A5 _ 83. 45, E8, 01
?_099:  mov     eax, dword [ebp+8H]                     ; 19A9 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 19AC _ 8B. 40, 0C
        cmp     dword [ebp-18H], eax                    ; 19AF _ 39. 45, E8
        jl      ?_098                                   ; 19B2 _ 7C, C4
?_100:  mov     eax, dword [ebp+8H]                     ; 19B4 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 19B7 _ 8B. 40, 0C
        lea     edx, [eax-1H]                           ; 19BA _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 19BD _ 8B. 45, 08
        mov     dword [eax+0CH], edx                    ; 19C0 _ 89. 50, 0C
?_101:  mov     eax, dword [ebp+0CH]                    ; 19C3 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 19C6 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 19C9 _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 19CC _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 19CF _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 19D2 _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 19D5 _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 19D8 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 19DB _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 19DE _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 19E1 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 19E4 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 19E7 _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 19EA _ 8B. 40, 0C
        sub     esp, 12                                 ; 19ED _ 83. EC, 0C
        push    ebx                                     ; 19F0 _ 53
        push    ecx                                     ; 19F1 _ 51
        push    edx                                     ; 19F2 _ 52
        push    eax                                     ; 19F3 _ 50
        push    dword [ebp+8H]                          ; 19F4 _ FF. 75, 08
        call    sheet_refresh_new                       ; 19F7 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 19FC _ 83. C4, 20
        jmp     ?_109                                   ; 19FF _ E9, 0000010E

?_102:  mov     eax, dword [ebp-0CH]                    ; 1A04 _ 8B. 45, F4
        cmp     eax, dword [ebp+10H]                    ; 1A07 _ 3B. 45, 10
        jge     ?_109                                   ; 1A0A _ 0F 8D, 00000102
        cmp     dword [ebp-0CH], 0                      ; 1A10 _ 83. 7D, F4, 00
        js      ?_105                                   ; 1A14 _ 78, 52
        mov     eax, dword [ebp-0CH]                    ; 1A16 _ 8B. 45, F4
        mov     dword [ebp-14H], eax                    ; 1A19 _ 89. 45, EC
        jmp     ?_104                                   ; 1A1C _ EB, 31

?_103:  mov     eax, dword [ebp-14H]                    ; 1A1E _ 8B. 45, EC
        lea     edx, [eax+1H]                           ; 1A21 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 1A24 _ 8B. 45, 08
        add     edx, 4                                  ; 1A27 _ 83. C2, 04
        mov     edx, dword [eax+edx*4]                  ; 1A2A _ 8B. 14 90
        mov     eax, dword [ebp+8H]                     ; 1A2D _ 8B. 45, 08
        mov     ecx, dword [ebp-14H]                    ; 1A30 _ 8B. 4D, EC
        add     ecx, 4                                  ; 1A33 _ 83. C1, 04
        mov     dword [eax+ecx*4], edx                  ; 1A36 _ 89. 14 88
        mov     eax, dword [ebp+8H]                     ; 1A39 _ 8B. 45, 08
        mov     edx, dword [ebp-14H]                    ; 1A3C _ 8B. 55, EC
        add     edx, 4                                  ; 1A3F _ 83. C2, 04
        mov     eax, dword [eax+edx*4]                  ; 1A42 _ 8B. 04 90
        mov     edx, dword [ebp-14H]                    ; 1A45 _ 8B. 55, EC
        mov     dword [eax+18H], edx                    ; 1A48 _ 89. 50, 18
        add     dword [ebp-14H], 1                      ; 1A4B _ 83. 45, EC, 01
?_104:  mov     eax, dword [ebp-14H]                    ; 1A4F _ 8B. 45, EC
        cmp     eax, dword [ebp+10H]                    ; 1A52 _ 3B. 45, 10
        jl      ?_103                                   ; 1A55 _ 7C, C7
        mov     eax, dword [ebp+8H]                     ; 1A57 _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 1A5A _ 8B. 55, 10
        lea     ecx, [edx+4H]                           ; 1A5D _ 8D. 4A, 04
        mov     edx, dword [ebp+0CH]                    ; 1A60 _ 8B. 55, 0C
        mov     dword [eax+ecx*4], edx                  ; 1A63 _ 89. 14 88
        jmp     ?_108                                   ; 1A66 _ EB, 6E

?_105:  cmp     dword [ebp-0CH], 0                      ; 1A68 _ 83. 7D, F4, 00
        jns     ?_108                                   ; 1A6C _ 79, 68
        mov     eax, dword [ebp+8H]                     ; 1A6E _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 1A71 _ 8B. 40, 0C
        mov     dword [ebp-10H], eax                    ; 1A74 _ 89. 45, F0
        jmp     ?_107                                   ; 1A77 _ EB, 37

?_106:  mov     eax, dword [ebp-10H]                    ; 1A79 _ 8B. 45, F0
        lea     ecx, [eax+1H]                           ; 1A7C _ 8D. 48, 01
        mov     eax, dword [ebp+8H]                     ; 1A7F _ 8B. 45, 08
        mov     edx, dword [ebp-10H]                    ; 1A82 _ 8B. 55, F0
        add     edx, 4                                  ; 1A85 _ 83. C2, 04
        mov     edx, dword [eax+edx*4]                  ; 1A88 _ 8B. 14 90
        mov     eax, dword [ebp+8H]                     ; 1A8B _ 8B. 45, 08
        add     ecx, 4                                  ; 1A8E _ 83. C1, 04
        mov     dword [eax+ecx*4], edx                  ; 1A91 _ 89. 14 88
        mov     eax, dword [ebp-10H]                    ; 1A94 _ 8B. 45, F0
        lea     edx, [eax+1H]                           ; 1A97 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 1A9A _ 8B. 45, 08
        add     edx, 4                                  ; 1A9D _ 83. C2, 04
        mov     eax, dword [eax+edx*4]                  ; 1AA0 _ 8B. 04 90
        mov     edx, dword [ebp-10H]                    ; 1AA3 _ 8B. 55, F0
        add     edx, 1                                  ; 1AA6 _ 83. C2, 01
        mov     dword [eax+18H], edx                    ; 1AA9 _ 89. 50, 18
        sub     dword [ebp-10H], 1                      ; 1AAC _ 83. 6D, F0, 01
?_107:  mov     eax, dword [ebp-10H]                    ; 1AB0 _ 8B. 45, F0
        cmp     eax, dword [ebp+10H]                    ; 1AB3 _ 3B. 45, 10
        jge     ?_106                                   ; 1AB6 _ 7D, C1
        mov     eax, dword [ebp+8H]                     ; 1AB8 _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 1ABB _ 8B. 55, 10
        lea     ecx, [edx+4H]                           ; 1ABE _ 8D. 4A, 04
        mov     edx, dword [ebp+0CH]                    ; 1AC1 _ 8B. 55, 0C
        mov     dword [eax+ecx*4], edx                  ; 1AC4 _ 89. 14 88
        mov     eax, dword [ebp+8H]                     ; 1AC7 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 1ACA _ 8B. 40, 0C
        lea     edx, [eax+1H]                           ; 1ACD _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 1AD0 _ 8B. 45, 08
        mov     dword [eax+0CH], edx                    ; 1AD3 _ 89. 50, 0C
?_108:  mov     eax, dword [ebp+0CH]                    ; 1AD6 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 1AD9 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 1ADC _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 1ADF _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 1AE2 _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 1AE5 _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 1AE8 _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 1AEB _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 1AEE _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 1AF1 _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 1AF4 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 1AF7 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 1AFA _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 1AFD _ 8B. 40, 0C
        sub     esp, 12                                 ; 1B00 _ 83. EC, 0C
        push    ebx                                     ; 1B03 _ 53
        push    ecx                                     ; 1B04 _ 51
        push    edx                                     ; 1B05 _ 52
        push    eax                                     ; 1B06 _ 50
        push    dword [ebp+8H]                          ; 1B07 _ FF. 75, 08
        call    sheet_refresh_new                       ; 1B0A _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1B0F _ 83. C4, 20
?_109:  nop                                             ; 1B12 _ 90
        mov     ebx, dword [ebp-4H]                     ; 1B13 _ 8B. 5D, FC
        leave                                           ; 1B16 _ C9
        ret                                             ; 1B17 _ C3
; sheet_level_updown End of function

sheet_refresh:; Function begin
        push    ebp                                     ; 1B18 _ 55
        mov     ebp, esp                                ; 1B19 _ 89. E5
        push    esi                                     ; 1B1B _ 56
        push    ebx                                     ; 1B1C _ 53
        mov     eax, dword [ebp+0CH]                    ; 1B1D _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 1B20 _ 8B. 40, 18
        test    eax, eax                                ; 1B23 _ 85. C0
        js      ?_110                                   ; 1B25 _ 78, 40
        mov     eax, dword [ebp+0CH]                    ; 1B27 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 1B2A _ 8B. 50, 10
        mov     eax, dword [ebp+1CH]                    ; 1B2D _ 8B. 45, 1C
        lea     ebx, [edx+eax]                          ; 1B30 _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 1B33 _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 1B36 _ 8B. 50, 0C
        mov     eax, dword [ebp+18H]                    ; 1B39 _ 8B. 45, 18
        lea     ecx, [edx+eax]                          ; 1B3C _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 1B3F _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 1B42 _ 8B. 50, 10
        mov     eax, dword [ebp+14H]                    ; 1B45 _ 8B. 45, 14
        add     edx, eax                                ; 1B48 _ 01. C2
        mov     eax, dword [ebp+0CH]                    ; 1B4A _ 8B. 45, 0C
        mov     esi, dword [eax+0CH]                    ; 1B4D _ 8B. 70, 0C
        mov     eax, dword [ebp+10H]                    ; 1B50 _ 8B. 45, 10
        add     eax, esi                                ; 1B53 _ 01. F0
        sub     esp, 12                                 ; 1B55 _ 83. EC, 0C
        push    ebx                                     ; 1B58 _ 53
        push    ecx                                     ; 1B59 _ 51
        push    edx                                     ; 1B5A _ 52
        push    eax                                     ; 1B5B _ 50
        push    dword [ebp+8H]                          ; 1B5C _ FF. 75, 08
        call    sheet_refresh_new                       ; 1B5F _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1B64 _ 83. C4, 20
?_110:  mov     eax, 0                                  ; 1B67 _ B8, 00000000
        lea     esp, [ebp-8H]                           ; 1B6C _ 8D. 65, F8
        pop     ebx                                     ; 1B6F _ 5B
        pop     esi                                     ; 1B70 _ 5E
        pop     ebp                                     ; 1B71 _ 5D
        ret                                             ; 1B72 _ C3
; sheet_refresh End of function

sheet_slide:; Function begin
        push    ebp                                     ; 1B73 _ 55
        mov     ebp, esp                                ; 1B74 _ 89. E5
        sub     esp, 24                                 ; 1B76 _ 83. EC, 18
        mov     eax, dword [ebp+0CH]                    ; 1B79 _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 1B7C _ 8B. 40, 0C
        mov     dword [ebp-10H], eax                    ; 1B7F _ 89. 45, F0
        mov     eax, dword [ebp+0CH]                    ; 1B82 _ 8B. 45, 0C
        mov     eax, dword [eax+10H]                    ; 1B85 _ 8B. 40, 10
        mov     dword [ebp-0CH], eax                    ; 1B88 _ 89. 45, F4
        mov     eax, dword [ebp+0CH]                    ; 1B8B _ 8B. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 1B8E _ 8B. 55, 10
        mov     dword [eax+0CH], edx                    ; 1B91 _ 89. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 1B94 _ 8B. 45, 0C
        mov     edx, dword [ebp+14H]                    ; 1B97 _ 8B. 55, 14
        mov     dword [eax+10H], edx                    ; 1B9A _ 89. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 1B9D _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 1BA0 _ 8B. 40, 18
        test    eax, eax                                ; 1BA3 _ 85. C0
        js      ?_111                                   ; 1BA5 _ 78, 58
        mov     eax, dword [ebp+0CH]                    ; 1BA7 _ 8B. 45, 0C
        mov     edx, dword [eax+8H]                     ; 1BAA _ 8B. 50, 08
        mov     eax, dword [ebp-0CH]                    ; 1BAD _ 8B. 45, F4
        add     edx, eax                                ; 1BB0 _ 01. C2
        mov     eax, dword [ebp+0CH]                    ; 1BB2 _ 8B. 45, 0C
        mov     ecx, dword [eax+4H]                     ; 1BB5 _ 8B. 48, 04
        mov     eax, dword [ebp-10H]                    ; 1BB8 _ 8B. 45, F0
        add     eax, ecx                                ; 1BBB _ 01. C8
        sub     esp, 12                                 ; 1BBD _ 83. EC, 0C
        push    edx                                     ; 1BC0 _ 52
        push    eax                                     ; 1BC1 _ 50
        push    dword [ebp-0CH]                         ; 1BC2 _ FF. 75, F4
        push    dword [ebp-10H]                         ; 1BC5 _ FF. 75, F0
        push    dword [ebp+8H]                          ; 1BC8 _ FF. 75, 08
        call    sheet_refresh_new                       ; 1BCB _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1BD0 _ 83. C4, 20
        mov     eax, dword [ebp+0CH]                    ; 1BD3 _ 8B. 45, 0C
        mov     edx, dword [eax+8H]                     ; 1BD6 _ 8B. 50, 08
        mov     eax, dword [ebp+14H]                    ; 1BD9 _ 8B. 45, 14
        add     edx, eax                                ; 1BDC _ 01. C2
        mov     eax, dword [ebp+0CH]                    ; 1BDE _ 8B. 45, 0C
        mov     ecx, dword [eax+4H]                     ; 1BE1 _ 8B. 48, 04
        mov     eax, dword [ebp+10H]                    ; 1BE4 _ 8B. 45, 10
        add     eax, ecx                                ; 1BE7 _ 01. C8
        sub     esp, 12                                 ; 1BE9 _ 83. EC, 0C
        push    edx                                     ; 1BEC _ 52
        push    eax                                     ; 1BED _ 50
        push    dword [ebp+14H]                         ; 1BEE _ FF. 75, 14
        push    dword [ebp+10H]                         ; 1BF1 _ FF. 75, 10
        push    dword [ebp+8H]                          ; 1BF4 _ FF. 75, 08
        call    sheet_refresh_new                       ; 1BF7 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1BFC _ 83. C4, 20
?_111:  nop                                             ; 1BFF _ 90
        leave                                           ; 1C00 _ C9
        ret                                             ; 1C01 _ C3
; sheet_slide End of function

sheet_refresh_new:; Function begin
        push    ebp                                     ; 1C02 _ 55
        mov     ebp, esp                                ; 1C03 _ 89. E5
        sub     esp, 48                                 ; 1C05 _ 83. EC, 30
        mov     eax, dword [ebp+8H]                     ; 1C08 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 1C0B _ 8B. 00
        mov     dword [ebp-14H], eax                    ; 1C0D _ 89. 45, EC
        mov     dword [ebp-20H], 0                      ; 1C10 _ C7. 45, E0, 00000000
        jmp     ?_118                                   ; 1C17 _ E9, 000000DC

?_112:  mov     eax, dword [ebp+8H]                     ; 1C1C _ 8B. 45, 08
        mov     edx, dword [ebp-20H]                    ; 1C1F _ 8B. 55, E0
        add     edx, 4                                  ; 1C22 _ 83. C2, 04
        mov     eax, dword [eax+edx*4]                  ; 1C25 _ 8B. 04 90
        mov     dword [ebp-10H], eax                    ; 1C28 _ 89. 45, F0
        mov     eax, dword [ebp-10H]                    ; 1C2B _ 8B. 45, F0
        mov     eax, dword [eax]                        ; 1C2E _ 8B. 00
        mov     dword [ebp-0CH], eax                    ; 1C30 _ 89. 45, F4
        mov     dword [ebp-1CH], 0                      ; 1C33 _ C7. 45, E4, 00000000
        jmp     ?_117                                   ; 1C3A _ E9, 000000A6

?_113:  mov     eax, dword [ebp-10H]                    ; 1C3F _ 8B. 45, F0
        mov     edx, dword [eax+10H]                    ; 1C42 _ 8B. 50, 10
        mov     eax, dword [ebp-1CH]                    ; 1C45 _ 8B. 45, E4
        add     eax, edx                                ; 1C48 _ 01. D0
        mov     dword [ebp-8H], eax                     ; 1C4A _ 89. 45, F8
        mov     dword [ebp-18H], 0                      ; 1C4D _ C7. 45, E8, 00000000
        jmp     ?_116                                   ; 1C54 _ EB, 7C

?_114:  mov     eax, dword [ebp-10H]                    ; 1C56 _ 8B. 45, F0
        mov     edx, dword [eax+0CH]                    ; 1C59 _ 8B. 50, 0C
        mov     eax, dword [ebp-18H]                    ; 1C5C _ 8B. 45, E8
        add     eax, edx                                ; 1C5F _ 01. D0
        mov     dword [ebp-4H], eax                     ; 1C61 _ 89. 45, FC
        mov     eax, dword [ebp+0CH]                    ; 1C64 _ 8B. 45, 0C
        cmp     eax, dword [ebp-4H]                     ; 1C67 _ 3B. 45, FC
        jg      ?_115                                   ; 1C6A _ 7F, 62
        mov     eax, dword [ebp-4H]                     ; 1C6C _ 8B. 45, FC
        cmp     eax, dword [ebp+14H]                    ; 1C6F _ 3B. 45, 14
        jge     ?_115                                   ; 1C72 _ 7D, 5A
        mov     eax, dword [ebp+10H]                    ; 1C74 _ 8B. 45, 10
        cmp     eax, dword [ebp-8H]                     ; 1C77 _ 3B. 45, F8
        jg      ?_115                                   ; 1C7A _ 7F, 52
        mov     eax, dword [ebp-8H]                     ; 1C7C _ 8B. 45, F8
        cmp     eax, dword [ebp+18H]                    ; 1C7F _ 3B. 45, 18
        jge     ?_115                                   ; 1C82 _ 7D, 4A
        mov     eax, dword [ebp-10H]                    ; 1C84 _ 8B. 45, F0
        mov     eax, dword [eax+4H]                     ; 1C87 _ 8B. 40, 04
        imul    eax, dword [ebp-1CH]                    ; 1C8A _ 0F AF. 45, E4
        mov     edx, eax                                ; 1C8E _ 89. C2
        mov     eax, dword [ebp-18H]                    ; 1C90 _ 8B. 45, E8
        add     eax, edx                                ; 1C93 _ 01. D0
        mov     edx, eax                                ; 1C95 _ 89. C2
        mov     eax, dword [ebp-0CH]                    ; 1C97 _ 8B. 45, F4
        add     eax, edx                                ; 1C9A _ 01. D0
        movzx   eax, byte [eax]                         ; 1C9C _ 0F B6. 00
        mov     byte [ebp-21H], al                      ; 1C9F _ 88. 45, DF
        movzx   edx, byte [ebp-21H]                     ; 1CA2 _ 0F B6. 55, DF
        mov     eax, dword [ebp-10H]                    ; 1CA6 _ 8B. 45, F0
        mov     eax, dword [eax+14H]                    ; 1CA9 _ 8B. 40, 14
        cmp     edx, eax                                ; 1CAC _ 39. C2
        jz      ?_115                                   ; 1CAE _ 74, 1E
        mov     eax, dword [ebp+8H]                     ; 1CB0 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 1CB3 _ 8B. 40, 04
        imul    eax, dword [ebp-8H]                     ; 1CB6 _ 0F AF. 45, F8
        mov     edx, eax                                ; 1CBA _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 1CBC _ 8B. 45, FC
        add     eax, edx                                ; 1CBF _ 01. D0
        mov     edx, eax                                ; 1CC1 _ 89. C2
        mov     eax, dword [ebp-14H]                    ; 1CC3 _ 8B. 45, EC
        add     edx, eax                                ; 1CC6 _ 01. C2
        movzx   eax, byte [ebp-21H]                     ; 1CC8 _ 0F B6. 45, DF
        mov     byte [edx], al                          ; 1CCC _ 88. 02
?_115:  add     dword [ebp-18H], 1                      ; 1CCE _ 83. 45, E8, 01
?_116:  mov     eax, dword [ebp-10H]                    ; 1CD2 _ 8B. 45, F0
        mov     eax, dword [eax+4H]                     ; 1CD5 _ 8B. 40, 04
        cmp     dword [ebp-18H], eax                    ; 1CD8 _ 39. 45, E8
        jl      ?_114                                   ; 1CDB _ 0F 8C, FFFFFF75
        add     dword [ebp-1CH], 1                      ; 1CE1 _ 83. 45, E4, 01
?_117:  mov     eax, dword [ebp-10H]                    ; 1CE5 _ 8B. 45, F0
        mov     eax, dword [eax+8H]                     ; 1CE8 _ 8B. 40, 08
        cmp     dword [ebp-1CH], eax                    ; 1CEB _ 39. 45, E4
        jl      ?_113                                   ; 1CEE _ 0F 8C, FFFFFF4B
        add     dword [ebp-20H], 1                      ; 1CF4 _ 83. 45, E0, 01
?_118:  mov     eax, dword [ebp+8H]                     ; 1CF8 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 1CFB _ 8B. 40, 0C
        cmp     dword [ebp-20H], eax                    ; 1CFE _ 39. 45, E0
        jle     ?_112                                   ; 1D01 _ 0F 8E, FFFFFF15
        nop                                             ; 1D07 _ 90
        leave                                           ; 1D08 _ C9
        ret                                             ; 1D09 _ C3
; sheet_refresh_new End of function



?_119:                                                  ; byte
        db 54H, 6FH, 74H, 61H, 6CH, 20H, 4DH, 65H       ; 0000 _ Total Me
        db 6DH, 20H, 53H, 69H, 7AH, 65H, 20H, 69H       ; 0008 _ m Size i
        db 73H, 3AH, 20H, 00H                           ; 0010 _ s: .

?_120:                                                  ; byte
        db 4DH, 42H, 00H                                ; 0014 _ MB.

?_121:                                                  ; byte
        db 6DH, 6FH, 75H, 73H, 65H, 20H, 6DH, 6FH       ; 0017 _ mouse mo
        db 76H, 65H, 00H                                ; 001F _ ve.

?_122:                                                  ; byte
        db 50H, 61H, 67H, 65H, 20H, 69H, 73H, 3AH       ; 0022 _ Page is:
        db 20H, 00H                                     ; 002A _  .

?_123:                                                  ; byte
        db 42H, 61H, 73H, 65H, 41H, 64H, 64H, 72H       ; 002C _ BaseAddr
        db 4CH, 6FH, 77H, 3AH, 20H, 00H                 ; 0034 _ Low: .

?_124:                                                  ; byte
        db 42H, 61H, 73H, 65H, 41H, 64H, 64H, 72H       ; 003A _ BaseAddr
        db 48H, 69H, 67H, 68H, 3AH, 20H, 00H            ; 0042 _ High: .

?_125:                                                  ; byte
        db 4CH, 65H, 6EH, 67H, 74H, 68H, 4CH, 6FH       ; 0049 _ LengthLo
        db 77H, 3AH, 20H, 00H                           ; 0051 _ w: .

?_126:                                                  ; byte
        db 4CH, 65H, 6EH, 67H, 74H, 68H, 48H, 69H       ; 0055 _ LengthHi
        db 67H, 68H, 3AH, 20H, 00H                      ; 005D _ gh: .

?_127:                                                  ; byte
        db 54H, 79H, 70H, 65H, 3AH, 20H, 00H            ; 0062 _ Type: .



keyVal:                                                 ; byte
        db 30H, 78H                                     ; 0000 _ 0x

?_128:  db 00H                                          ; 0002 _ .

?_129:  db 00H, 00H, 00H, 00H, 00H                      ; 0003 _ .....

memman: dd 00100000H, 00000000H                         ; 0008 _ 1048576 0 
        dd 00000000H, 00000000H                         ; 0010 _ 0 0 
        dd 00000000H, 00000000H                         ; 0018 _ 0 0 

table_rgb.1677:                                         ; byte
        db 00H, 00H, 00H, 0FFH, 00H, 00H, 00H, 0FFH     ; 0020 _ ........
        db 00H, 0FFH, 0FFH, 00H, 00H, 00H, 0FFH, 0FFH   ; 0028 _ ........
        db 00H, 0FFH, 00H, 0FFH, 0FFH, 0FFH, 0FFH, 0FFH ; 0030 _ ........
        db 0C6H, 0C6H, 0C6H, 84H, 00H, 00H, 00H, 84H    ; 0038 _ ........
        db 00H, 84H, 84H, 00H, 00H, 00H, 84H, 84H       ; 0040 _ ........
        db 00H, 84H, 00H, 78H, 0D7H, 84H, 84H, 84H      ; 0048 _ ...x....
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0050 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0058 _ ........

cursor.1722:                                            ; byte
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



bootInfo:                                               ; qword
        resb    4                                       ; 0000

?_130:  resw    1                                       ; 0004

?_131:  resw    1                                       ; 0006

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

str.1765:                                               ; byte
        resb    1                                       ; 0200

?_132:  resb    9                                       ; 0201

?_133:  resb    2                                       ; 020A

line.1814:                                              ; dword
        resd    1                                       ; 020C

pos.1813: resd  1                                       ; 0210


