; Disassembly of file: ckernel.o
; Sat Mar 13 17:03:06 2021
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
        push    dword [ebp-2CH]                         ; 00F1 _ FF. 75, D4
        push    dword [ebp-30H]                         ; 00F4 _ FF. 75, D0
        call    showString                              ; 00F7 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 00FC _ 83. C4, 20
        sub     esp, 8                                  ; 00FF _ 83. EC, 08
        push    dword [ebp-10H]                         ; 0102 _ FF. 75, F0
        push    3                                       ; 0105 _ 6A, 03
        push    0                                       ; 0107 _ 6A, 00
        push    152                                     ; 0109 _ 68, 00000098
        push    dword [ebp-2CH]                         ; 010E _ FF. 75, D4
        push    dword [ebp-30H]                         ; 0111 _ FF. 75, D0
        call    showString                              ; 0114 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0119 _ 83. C4, 20
        sub     esp, 8                                  ; 011C _ 83. EC, 08
        push    ?_120                                   ; 011F _ 68, 00000014(d)
        push    3                                       ; 0124 _ 6A, 03
        push    0                                       ; 0126 _ 6A, 00
        push    240                                     ; 0128 _ 68, 000000F0
        push    dword [ebp-2CH]                         ; 012D _ FF. 75, D4
        push    dword [ebp-30H]                         ; 0130 _ FF. 75, D0
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
        mov     ecx, eax                                ; 0282 _ 89. C1
        movzx   eax, word [?_130]                       ; 0284 _ 0F B7. 05, 00000004(d)
        movsx   edx, ax                                 ; 028B _ 0F BF. D0
        mov     eax, dword [buf_back]                   ; 028E _ A1, 000000F8(d)
        sub     esp, 8                                  ; 0293 _ 83. EC, 08
        push    ecx                                     ; 0296 _ 51
        push    2                                       ; 0297 _ 6A, 02
        push    16                                      ; 0299 _ 6A, 10
        push    0                                       ; 029B _ 6A, 00
        push    edx                                     ; 029D _ 52
        push    eax                                     ; 029E _ 50
        call    showString                              ; 029F _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 02A4 _ 83. C4, 20
        mov     eax, dword [buf_back]                   ; 02A7 _ A1, 000000F8(d)
        sub     esp, 12                                 ; 02AC _ 83. EC, 0C
        push    eax                                     ; 02AF _ 50
        call    intToHexStr                             ; 02B0 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 02B5 _ 83. C4, 10
        mov     ecx, eax                                ; 02B8 _ 89. C1
        movzx   eax, word [?_130]                       ; 02BA _ 0F B7. 05, 00000004(d)
        movsx   edx, ax                                 ; 02C1 _ 0F BF. D0
        mov     eax, dword [buf_back]                   ; 02C4 _ A1, 000000F8(d)
        sub     esp, 8                                  ; 02C9 _ 83. EC, 08
        push    ecx                                     ; 02CC _ 51
        push    2                                       ; 02CD _ 6A, 02
        push    32                                      ; 02CF _ 6A, 20
        push    0                                       ; 02D1 _ 6A, 00
        push    edx                                     ; 02D3 _ 52
        push    eax                                     ; 02D4 _ 50
        call    showString                              ; 02D5 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 02DA _ 83. C4, 20
        mov     eax, dword [ebp-0CH]                    ; 02DD _ 8B. 45, F4
        mov     eax, dword [eax]                        ; 02E0 _ 8B. 00
        sub     esp, 12                                 ; 02E2 _ 83. EC, 0C
        push    eax                                     ; 02E5 _ 50
        call    intToHexStr                             ; 02E6 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 02EB _ 83. C4, 10
        mov     ecx, eax                                ; 02EE _ 89. C1
        movzx   eax, word [?_130]                       ; 02F0 _ 0F B7. 05, 00000004(d)
        movsx   edx, ax                                 ; 02F7 _ 0F BF. D0
        mov     eax, dword [buf_back]                   ; 02FA _ A1, 000000F8(d)
        sub     esp, 8                                  ; 02FF _ 83. EC, 08
        push    ecx                                     ; 0302 _ 51
        push    2                                       ; 0303 _ 6A, 02
        push    48                                      ; 0305 _ 6A, 30
        push    0                                       ; 0307 _ 6A, 00
        push    edx                                     ; 0309 _ 52
        push    eax                                     ; 030A _ 50
        call    showString                              ; 030B _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0310 _ 83. C4, 20
        call    io_sti                                  ; 0313 _ E8, FFFFFFFC(rel)
        sub     esp, 12                                 ; 0318 _ 83. EC, 0C
        push    mouse_move                              ; 031B _ 68, 000000E0(d)
        call    enable_mouse                            ; 0320 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0325 _ 83. C4, 10
        mov     dword [ebp-34H], 0                      ; 0328 _ C7. 45, CC, 00000000
        mov     byte [ebp-35H], 0                       ; 032F _ C6. 45, CB, 00
?_001:  call    io_cli                                  ; 0333 _ E8, FFFFFFFC(rel)
        sub     esp, 12                                 ; 0338 _ 83. EC, 0C
        push    keyInfo                                 ; 033B _ 68, 00000008(d)
        call    fifo8_status                            ; 0340 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0345 _ 83. C4, 10
        mov     ebx, eax                                ; 0348 _ 89. C3
        sub     esp, 12                                 ; 034A _ 83. EC, 0C
        push    mouseInfo                               ; 034D _ 68, 00000020(d)
        call    fifo8_status                            ; 0352 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0357 _ 83. C4, 10
        add     eax, ebx                                ; 035A _ 01. D8
        test    eax, eax                                ; 035C _ 85. C0
        jnz     ?_002                                   ; 035E _ 75, 07
        call    io_stihlt                               ; 0360 _ E8, FFFFFFFC(rel)
        jmp     ?_001                                   ; 0365 _ EB, CC

?_002:  sub     esp, 12                                 ; 0367 _ 83. EC, 0C
        push    keyInfo                                 ; 036A _ 68, 00000008(d)
        call    fifo8_status                            ; 036F _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0374 _ 83. C4, 10
        test    eax, eax                                ; 0377 _ 85. C0
        jz      ?_004                                   ; 0379 _ 74, 73
        call    io_sti                                  ; 037B _ E8, FFFFFFFC(rel)
        sub     esp, 12                                 ; 0380 _ 83. EC, 0C
        push    keyInfo                                 ; 0383 _ 68, 00000008(d)
        call    fifo8_get                               ; 0388 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 038D _ 83. C4, 10
        mov     byte [ebp-35H], al                      ; 0390 _ 88. 45, CB
        cmp     byte [ebp-35H], 28                      ; 0393 _ 80. 7D, CB, 1C
        jnz     ?_001                                   ; 0397 _ 75, 9A
        mov     ecx, dword [buf_back]                   ; 0399 _ 8B. 0D, 000000F8(d)
        mov     edx, dword [ebp-34H]                    ; 039F _ 8B. 55, CC
        mov     eax, edx                                ; 03A2 _ 89. D0
        shl     eax, 2                                  ; 03A4 _ C1. E0, 02
        add     eax, edx                                ; 03A7 _ 01. D0
        shl     eax, 2                                  ; 03A9 _ C1. E0, 02
        mov     edx, eax                                ; 03AC _ 89. C2
        mov     eax, dword [ebp-1CH]                    ; 03AE _ 8B. 45, E4
        add     eax, edx                                ; 03B1 _ 01. D0
        sub     esp, 12                                 ; 03B3 _ 83. EC, 0C
        push    7                                       ; 03B6 _ 6A, 07
        push    dword [ebp-2CH]                         ; 03B8 _ FF. 75, D4
        push    dword [ebp-34H]                         ; 03BB _ FF. 75, CC
        push    ecx                                     ; 03BE _ 51
        push    eax                                     ; 03BF _ 50
        call    showMemInfo                             ; 03C0 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 03C5 _ 83. C4, 20
        add     dword [ebp-34H], 1                      ; 03C8 _ 83. 45, CC, 01
        mov     eax, dword [ebp-34H]                    ; 03CC _ 8B. 45, CC
        cmp     eax, dword [ebp-18H]                    ; 03CF _ 3B. 45, E8
        jl      ?_003                                   ; 03D2 _ 7C, 07
        mov     dword [ebp-34H], 0                      ; 03D4 _ C7. 45, CC, 00000000
?_003:  sub     esp, 12                                 ; 03DB _ 83. EC, 0C
        push    dword [ebp-0CH]                         ; 03DE _ FF. 75, F4
        call    sheet_refresh                           ; 03E1 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 03E6 _ 83. C4, 10
        jmp     ?_001                                   ; 03E9 _ E9, FFFFFF45

?_004:  sub     esp, 12                                 ; 03EE _ 83. EC, 0C
        push    mouseInfo                               ; 03F1 _ 68, 00000020(d)
        call    fifo8_status                            ; 03F6 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 03FB _ 83. C4, 10
        test    eax, eax                                ; 03FE _ 85. C0
        je      ?_001                                   ; 0400 _ 0F 84, FFFFFF2D
        sub     esp, 8                                  ; 0406 _ 83. EC, 08
        push    dword [ebp-20H]                         ; 0409 _ FF. 75, E0
        push    dword [ebp-0CH]                         ; 040C _ FF. 75, F4
        call    showMouseInfo                           ; 040F _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0414 _ 83. C4, 10
        jmp     ?_001                                   ; 0417 _ E9, FFFFFF17
; CMain End of function

initBootInfo:; Function begin
        push    ebp                                     ; 041C _ 55
        mov     ebp, esp                                ; 041D _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 041F _ 8B. 45, 08
        mov     dword [eax], 655360                     ; 0422 _ C7. 00, 000A0000
        mov     eax, dword [ebp+8H]                     ; 0428 _ 8B. 45, 08
; Note: Length-changing prefix causes delay on Intel processors
        mov     word [eax+4H], 320                      ; 042B _ 66: C7. 40, 04, 0140
        mov     eax, dword [ebp+8H]                     ; 0431 _ 8B. 45, 08
; Note: Length-changing prefix causes delay on Intel processors
        mov     word [eax+6H], 200                      ; 0434 _ 66: C7. 40, 06, 00C8
        nop                                             ; 043A _ 90
        pop     ebp                                     ; 043B _ 5D
        ret                                             ; 043C _ C3
; initBootInfo End of function

showString:; Function begin
        push    ebp                                     ; 043D _ 55
        mov     ebp, esp                                ; 043E _ 89. E5
        sub     esp, 24                                 ; 0440 _ 83. EC, 18
        mov     eax, dword [ebp+18H]                    ; 0443 _ 8B. 45, 18
        mov     byte [ebp-0CH], al                      ; 0446 _ 88. 45, F4
        jmp     ?_006                                   ; 0449 _ EB, 37

?_005:  mov     eax, dword [ebp+1CH]                    ; 044B _ 8B. 45, 1C
        movzx   eax, byte [eax]                         ; 044E _ 0F B6. 00
        movzx   eax, al                                 ; 0451 _ 0F B6. C0
        shl     eax, 4                                  ; 0454 _ C1. E0, 04
        lea     edx, [systemFont+eax]                   ; 0457 _ 8D. 90, 00000000(d)
        movsx   eax, byte [ebp-0CH]                     ; 045D _ 0F BE. 45, F4
        sub     esp, 8                                  ; 0461 _ 83. EC, 08
        push    edx                                     ; 0464 _ 52
        push    eax                                     ; 0465 _ 50
        push    dword [ebp+14H]                         ; 0466 _ FF. 75, 14
        push    dword [ebp+10H]                         ; 0469 _ FF. 75, 10
        push    dword [ebp+0CH]                         ; 046C _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 046F _ FF. 75, 08
        call    showFont8                               ; 0472 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0477 _ 83. C4, 20
        add     dword [ebp+10H], 8                      ; 047A _ 83. 45, 10, 08
        add     dword [ebp+1CH], 1                      ; 047E _ 83. 45, 1C, 01
?_006:  mov     eax, dword [ebp+1CH]                    ; 0482 _ 8B. 45, 1C
        movzx   eax, byte [eax]                         ; 0485 _ 0F B6. 00
        test    al, al                                  ; 0488 _ 84. C0
        jnz     ?_005                                   ; 048A _ 75, BF
        nop                                             ; 048C _ 90
        leave                                           ; 048D _ C9
        ret                                             ; 048E _ C3
; showString End of function

init_screen8:; Function begin
        push    ebp                                     ; 048F _ 55
        mov     ebp, esp                                ; 0490 _ 89. E5
        push    ebx                                     ; 0492 _ 53
        sub     esp, 4                                  ; 0493 _ 83. EC, 04
        mov     eax, dword [ebp+10H]                    ; 0496 _ 8B. 45, 10
        lea     edx, [eax-1DH]                          ; 0499 _ 8D. 50, E3
        mov     eax, dword [ebp+0CH]                    ; 049C _ 8B. 45, 0C
        sub     eax, 1                                  ; 049F _ 83. E8, 01
        sub     esp, 4                                  ; 04A2 _ 83. EC, 04
        push    edx                                     ; 04A5 _ 52
        push    eax                                     ; 04A6 _ 50
        push    0                                       ; 04A7 _ 6A, 00
        push    0                                       ; 04A9 _ 6A, 00
        push    14                                      ; 04AB _ 6A, 0E
        push    dword [ebp+0CH]                         ; 04AD _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 04B0 _ FF. 75, 08
        call    boxfill8                                ; 04B3 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 04B8 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 04BB _ 8B. 45, 10
        lea     ecx, [eax-1CH]                          ; 04BE _ 8D. 48, E4
        mov     eax, dword [ebp+0CH]                    ; 04C1 _ 8B. 45, 0C
        lea     edx, [eax-1H]                           ; 04C4 _ 8D. 50, FF
        mov     eax, dword [ebp+10H]                    ; 04C7 _ 8B. 45, 10
        sub     eax, 28                                 ; 04CA _ 83. E8, 1C
        sub     esp, 4                                  ; 04CD _ 83. EC, 04
        push    ecx                                     ; 04D0 _ 51
        push    edx                                     ; 04D1 _ 52
        push    eax                                     ; 04D2 _ 50
        push    0                                       ; 04D3 _ 6A, 00
        push    8                                       ; 04D5 _ 6A, 08
        push    dword [ebp+0CH]                         ; 04D7 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 04DA _ FF. 75, 08
        call    boxfill8                                ; 04DD _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 04E2 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 04E5 _ 8B. 45, 10
        lea     ecx, [eax-1BH]                          ; 04E8 _ 8D. 48, E5
        mov     eax, dword [ebp+0CH]                    ; 04EB _ 8B. 45, 0C
        lea     edx, [eax-1H]                           ; 04EE _ 8D. 50, FF
        mov     eax, dword [ebp+10H]                    ; 04F1 _ 8B. 45, 10
        sub     eax, 27                                 ; 04F4 _ 83. E8, 1B
        sub     esp, 4                                  ; 04F7 _ 83. EC, 04
        push    ecx                                     ; 04FA _ 51
        push    edx                                     ; 04FB _ 52
        push    eax                                     ; 04FC _ 50
        push    0                                       ; 04FD _ 6A, 00
        push    7                                       ; 04FF _ 6A, 07
        push    dword [ebp+0CH]                         ; 0501 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 0504 _ FF. 75, 08
        call    boxfill8                                ; 0507 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 050C _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 050F _ 8B. 45, 10
        lea     ecx, [eax-1H]                           ; 0512 _ 8D. 48, FF
        mov     eax, dword [ebp+0CH]                    ; 0515 _ 8B. 45, 0C
        lea     edx, [eax-1H]                           ; 0518 _ 8D. 50, FF
        mov     eax, dword [ebp+10H]                    ; 051B _ 8B. 45, 10
        sub     eax, 26                                 ; 051E _ 83. E8, 1A
        sub     esp, 4                                  ; 0521 _ 83. EC, 04
        push    ecx                                     ; 0524 _ 51
        push    edx                                     ; 0525 _ 52
        push    eax                                     ; 0526 _ 50
        push    0                                       ; 0527 _ 6A, 00
        push    8                                       ; 0529 _ 6A, 08
        push    dword [ebp+0CH]                         ; 052B _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 052E _ FF. 75, 08
        call    boxfill8                                ; 0531 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0536 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 0539 _ 8B. 45, 10
        lea     edx, [eax-18H]                          ; 053C _ 8D. 50, E8
        mov     eax, dword [ebp+10H]                    ; 053F _ 8B. 45, 10
        sub     eax, 24                                 ; 0542 _ 83. E8, 18
        sub     esp, 4                                  ; 0545 _ 83. EC, 04
        push    edx                                     ; 0548 _ 52
        push    59                                      ; 0549 _ 6A, 3B
        push    eax                                     ; 054B _ 50
        push    3                                       ; 054C _ 6A, 03
        push    7                                       ; 054E _ 6A, 07
        push    dword [ebp+0CH]                         ; 0550 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 0553 _ FF. 75, 08
        call    boxfill8                                ; 0556 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 055B _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 055E _ 8B. 45, 10
        lea     edx, [eax-4H]                           ; 0561 _ 8D. 50, FC
        mov     eax, dword [ebp+10H]                    ; 0564 _ 8B. 45, 10
        sub     eax, 24                                 ; 0567 _ 83. E8, 18
        sub     esp, 4                                  ; 056A _ 83. EC, 04
        push    edx                                     ; 056D _ 52
        push    2                                       ; 056E _ 6A, 02
        push    eax                                     ; 0570 _ 50
        push    2                                       ; 0571 _ 6A, 02
        push    7                                       ; 0573 _ 6A, 07
        push    dword [ebp+0CH]                         ; 0575 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 0578 _ FF. 75, 08
        call    boxfill8                                ; 057B _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0580 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 0583 _ 8B. 45, 10
        lea     edx, [eax-4H]                           ; 0586 _ 8D. 50, FC
        mov     eax, dword [ebp+10H]                    ; 0589 _ 8B. 45, 10
        sub     eax, 4                                  ; 058C _ 83. E8, 04
        sub     esp, 4                                  ; 058F _ 83. EC, 04
        push    edx                                     ; 0592 _ 52
        push    59                                      ; 0593 _ 6A, 3B
        push    eax                                     ; 0595 _ 50
        push    3                                       ; 0596 _ 6A, 03
        push    15                                      ; 0598 _ 6A, 0F
        push    dword [ebp+0CH]                         ; 059A _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 059D _ FF. 75, 08
        call    boxfill8                                ; 05A0 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 05A5 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 05A8 _ 8B. 45, 10
        lea     edx, [eax-5H]                           ; 05AB _ 8D. 50, FB
        mov     eax, dword [ebp+10H]                    ; 05AE _ 8B. 45, 10
        sub     eax, 23                                 ; 05B1 _ 83. E8, 17
        sub     esp, 4                                  ; 05B4 _ 83. EC, 04
        push    edx                                     ; 05B7 _ 52
        push    59                                      ; 05B8 _ 6A, 3B
        push    eax                                     ; 05BA _ 50
        push    59                                      ; 05BB _ 6A, 3B
        push    15                                      ; 05BD _ 6A, 0F
        push    dword [ebp+0CH]                         ; 05BF _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 05C2 _ FF. 75, 08
        call    boxfill8                                ; 05C5 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 05CA _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 05CD _ 8B. 45, 10
        lea     edx, [eax-3H]                           ; 05D0 _ 8D. 50, FD
        mov     eax, dword [ebp+10H]                    ; 05D3 _ 8B. 45, 10
        sub     eax, 3                                  ; 05D6 _ 83. E8, 03
        sub     esp, 4                                  ; 05D9 _ 83. EC, 04
        push    edx                                     ; 05DC _ 52
        push    59                                      ; 05DD _ 6A, 3B
        push    eax                                     ; 05DF _ 50
        push    2                                       ; 05E0 _ 6A, 02
        push    0                                       ; 05E2 _ 6A, 00
        push    dword [ebp+0CH]                         ; 05E4 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 05E7 _ FF. 75, 08
        call    boxfill8                                ; 05EA _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 05EF _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 05F2 _ 8B. 45, 10
        lea     edx, [eax-3H]                           ; 05F5 _ 8D. 50, FD
        mov     eax, dword [ebp+10H]                    ; 05F8 _ 8B. 45, 10
        sub     eax, 24                                 ; 05FB _ 83. E8, 18
        sub     esp, 4                                  ; 05FE _ 83. EC, 04
        push    edx                                     ; 0601 _ 52
        push    60                                      ; 0602 _ 6A, 3C
        push    eax                                     ; 0604 _ 50
        push    60                                      ; 0605 _ 6A, 3C
        push    0                                       ; 0607 _ 6A, 00
        push    dword [ebp+0CH]                         ; 0609 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 060C _ FF. 75, 08
        call    boxfill8                                ; 060F _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0614 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 0617 _ 8B. 45, 10
        lea     ebx, [eax-18H]                          ; 061A _ 8D. 58, E8
        mov     eax, dword [ebp+0CH]                    ; 061D _ 8B. 45, 0C
        lea     ecx, [eax-4H]                           ; 0620 _ 8D. 48, FC
        mov     eax, dword [ebp+10H]                    ; 0623 _ 8B. 45, 10
        lea     edx, [eax-18H]                          ; 0626 _ 8D. 50, E8
        mov     eax, dword [ebp+0CH]                    ; 0629 _ 8B. 45, 0C
        sub     eax, 47                                 ; 062C _ 83. E8, 2F
        sub     esp, 4                                  ; 062F _ 83. EC, 04
        push    ebx                                     ; 0632 _ 53
        push    ecx                                     ; 0633 _ 51
        push    edx                                     ; 0634 _ 52
        push    eax                                     ; 0635 _ 50
        push    15                                      ; 0636 _ 6A, 0F
        push    dword [ebp+0CH]                         ; 0638 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 063B _ FF. 75, 08
        call    boxfill8                                ; 063E _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0643 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 0646 _ 8B. 45, 10
        lea     ebx, [eax-4H]                           ; 0649 _ 8D. 58, FC
        mov     eax, dword [ebp+0CH]                    ; 064C _ 8B. 45, 0C
        lea     ecx, [eax-2FH]                          ; 064F _ 8D. 48, D1
        mov     eax, dword [ebp+10H]                    ; 0652 _ 8B. 45, 10
        lea     edx, [eax-17H]                          ; 0655 _ 8D. 50, E9
        mov     eax, dword [ebp+0CH]                    ; 0658 _ 8B. 45, 0C
        sub     eax, 47                                 ; 065B _ 83. E8, 2F
        sub     esp, 4                                  ; 065E _ 83. EC, 04
        push    ebx                                     ; 0661 _ 53
        push    ecx                                     ; 0662 _ 51
        push    edx                                     ; 0663 _ 52
        push    eax                                     ; 0664 _ 50
        push    15                                      ; 0665 _ 6A, 0F
        push    dword [ebp+0CH]                         ; 0667 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 066A _ FF. 75, 08
        call    boxfill8                                ; 066D _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0672 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 0675 _ 8B. 45, 10
        lea     ebx, [eax-3H]                           ; 0678 _ 8D. 58, FD
        mov     eax, dword [ebp+0CH]                    ; 067B _ 8B. 45, 0C
        lea     ecx, [eax-4H]                           ; 067E _ 8D. 48, FC
        mov     eax, dword [ebp+10H]                    ; 0681 _ 8B. 45, 10
        lea     edx, [eax-3H]                           ; 0684 _ 8D. 50, FD
        mov     eax, dword [ebp+0CH]                    ; 0687 _ 8B. 45, 0C
        sub     eax, 47                                 ; 068A _ 83. E8, 2F
        sub     esp, 4                                  ; 068D _ 83. EC, 04
        push    ebx                                     ; 0690 _ 53
        push    ecx                                     ; 0691 _ 51
        push    edx                                     ; 0692 _ 52
        push    eax                                     ; 0693 _ 50
        push    7                                       ; 0694 _ 6A, 07
        push    dword [ebp+0CH]                         ; 0696 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 0699 _ FF. 75, 08
        call    boxfill8                                ; 069C _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 06A1 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 06A4 _ 8B. 45, 10
        lea     ebx, [eax-3H]                           ; 06A7 _ 8D. 58, FD
        mov     eax, dword [ebp+0CH]                    ; 06AA _ 8B. 45, 0C
        lea     ecx, [eax-3H]                           ; 06AD _ 8D. 48, FD
        mov     eax, dword [ebp+10H]                    ; 06B0 _ 8B. 45, 10
        lea     edx, [eax-18H]                          ; 06B3 _ 8D. 50, E8
        mov     eax, dword [ebp+0CH]                    ; 06B6 _ 8B. 45, 0C
        sub     eax, 3                                  ; 06B9 _ 83. E8, 03
        sub     esp, 4                                  ; 06BC _ 83. EC, 04
        push    ebx                                     ; 06BF _ 53
        push    ecx                                     ; 06C0 _ 51
        push    edx                                     ; 06C1 _ 52
        push    eax                                     ; 06C2 _ 50
        push    7                                       ; 06C3 _ 6A, 07
        push    dword [ebp+0CH]                         ; 06C5 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 06C8 _ FF. 75, 08
        call    boxfill8                                ; 06CB _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 06D0 _ 83. C4, 20
        nop                                             ; 06D3 _ 90
        mov     ebx, dword [ebp-4H]                     ; 06D4 _ 8B. 5D, FC
        leave                                           ; 06D7 _ C9
        ret                                             ; 06D8 _ C3
; init_screen8 End of function

init_palette:; Function begin
        push    ebp                                     ; 06D9 _ 55
        mov     ebp, esp                                ; 06DA _ 89. E5
        sub     esp, 24                                 ; 06DC _ 83. EC, 18
        mov     eax, dword [bootInfo]                   ; 06DF _ A1, 00000000(d)
        mov     dword [ebp-14H], eax                    ; 06E4 _ 89. 45, EC
        movzx   eax, word [?_130]                       ; 06E7 _ 0F B7. 05, 00000004(d)
        cwde                                            ; 06EE _ 98
        mov     dword [ebp-10H], eax                    ; 06EF _ 89. 45, F0
        movzx   eax, word [?_131]                       ; 06F2 _ 0F B7. 05, 00000006(d)
        cwde                                            ; 06F9 _ 98
        mov     dword [ebp-0CH], eax                    ; 06FA _ 89. 45, F4
        sub     esp, 4                                  ; 06FD _ 83. EC, 04
        push    table_rgb.1656                          ; 0700 _ 68, 00000020(d)
        push    15                                      ; 0705 _ 6A, 0F
        push    0                                       ; 0707 _ 6A, 00
        call    set_palette                             ; 0709 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 070E _ 83. C4, 10
        nop                                             ; 0711 _ 90
        leave                                           ; 0712 _ C9
        ret                                             ; 0713 _ C3
; init_palette End of function

set_palette:; Function begin
        push    ebp                                     ; 0714 _ 55
        mov     ebp, esp                                ; 0715 _ 89. E5
        sub     esp, 24                                 ; 0717 _ 83. EC, 18
        call    io_load_eflags                          ; 071A _ E8, FFFFFFFC(rel)
        mov     dword [ebp-0CH], eax                    ; 071F _ 89. 45, F4
        call    io_cli                                  ; 0722 _ E8, FFFFFFFC(rel)
        sub     esp, 8                                  ; 0727 _ 83. EC, 08
        push    dword [ebp+8H]                          ; 072A _ FF. 75, 08
        push    968                                     ; 072D _ 68, 000003C8
        call    io_out8                                 ; 0732 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0737 _ 83. C4, 10
        mov     eax, dword [ebp+8H]                     ; 073A _ 8B. 45, 08
        mov     dword [ebp-10H], eax                    ; 073D _ 89. 45, F0
        jmp     ?_008                                   ; 0740 _ EB, 65

?_007:  mov     eax, dword [ebp+10H]                    ; 0742 _ 8B. 45, 10
        movzx   eax, byte [eax]                         ; 0745 _ 0F B6. 00
        shr     al, 2                                   ; 0748 _ C0. E8, 02
        movzx   eax, al                                 ; 074B _ 0F B6. C0
        sub     esp, 8                                  ; 074E _ 83. EC, 08
        push    eax                                     ; 0751 _ 50
        push    969                                     ; 0752 _ 68, 000003C9
        call    io_out8                                 ; 0757 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 075C _ 83. C4, 10
        mov     eax, dword [ebp+10H]                    ; 075F _ 8B. 45, 10
        add     eax, 1                                  ; 0762 _ 83. C0, 01
        movzx   eax, byte [eax]                         ; 0765 _ 0F B6. 00
        shr     al, 2                                   ; 0768 _ C0. E8, 02
        movzx   eax, al                                 ; 076B _ 0F B6. C0
        sub     esp, 8                                  ; 076E _ 83. EC, 08
        push    eax                                     ; 0771 _ 50
        push    969                                     ; 0772 _ 68, 000003C9
        call    io_out8                                 ; 0777 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 077C _ 83. C4, 10
        mov     eax, dword [ebp+10H]                    ; 077F _ 8B. 45, 10
        add     eax, 2                                  ; 0782 _ 83. C0, 02
        movzx   eax, byte [eax]                         ; 0785 _ 0F B6. 00
        shr     al, 2                                   ; 0788 _ C0. E8, 02
        movzx   eax, al                                 ; 078B _ 0F B6. C0
        sub     esp, 8                                  ; 078E _ 83. EC, 08
        push    eax                                     ; 0791 _ 50
        push    969                                     ; 0792 _ 68, 000003C9
        call    io_out8                                 ; 0797 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 079C _ 83. C4, 10
        add     dword [ebp+10H], 3                      ; 079F _ 83. 45, 10, 03
        add     dword [ebp-10H], 1                      ; 07A3 _ 83. 45, F0, 01
?_008:  mov     eax, dword [ebp-10H]                    ; 07A7 _ 8B. 45, F0
        cmp     eax, dword [ebp+0CH]                    ; 07AA _ 3B. 45, 0C
        jle     ?_007                                   ; 07AD _ 7E, 93
        sub     esp, 12                                 ; 07AF _ 83. EC, 0C
        push    dword [ebp-0CH]                         ; 07B2 _ FF. 75, F4
        call    io_store_eflags                         ; 07B5 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 07BA _ 83. C4, 10
        nop                                             ; 07BD _ 90
        leave                                           ; 07BE _ C9
        ret                                             ; 07BF _ C3
; set_palette End of function

boxfill8:; Function begin
        push    ebp                                     ; 07C0 _ 55
        mov     ebp, esp                                ; 07C1 _ 89. E5
        sub     esp, 20                                 ; 07C3 _ 83. EC, 14
        mov     eax, dword [ebp+10H]                    ; 07C6 _ 8B. 45, 10
        mov     byte [ebp-14H], al                      ; 07C9 _ 88. 45, EC
        mov     eax, dword [ebp+18H]                    ; 07CC _ 8B. 45, 18
        mov     dword [ebp-4H], eax                     ; 07CF _ 89. 45, FC
        jmp     ?_012                                   ; 07D2 _ EB, 33

?_009:  mov     eax, dword [ebp+14H]                    ; 07D4 _ 8B. 45, 14
        mov     dword [ebp-8H], eax                     ; 07D7 _ 89. 45, F8
        jmp     ?_011                                   ; 07DA _ EB, 1F

?_010:  mov     eax, dword [ebp-4H]                     ; 07DC _ 8B. 45, FC
        imul    eax, dword [ebp+0CH]                    ; 07DF _ 0F AF. 45, 0C
        mov     edx, eax                                ; 07E3 _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 07E5 _ 8B. 45, F8
        add     eax, edx                                ; 07E8 _ 01. D0
        mov     edx, eax                                ; 07EA _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 07EC _ 8B. 45, 08
        add     edx, eax                                ; 07EF _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 07F1 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 07F5 _ 88. 02
        add     dword [ebp-8H], 1                       ; 07F7 _ 83. 45, F8, 01
?_011:  mov     eax, dword [ebp-8H]                     ; 07FB _ 8B. 45, F8
        cmp     eax, dword [ebp+1CH]                    ; 07FE _ 3B. 45, 1C
        jle     ?_010                                   ; 0801 _ 7E, D9
        add     dword [ebp-4H], 1                       ; 0803 _ 83. 45, FC, 01
?_012:  mov     eax, dword [ebp-4H]                     ; 0807 _ 8B. 45, FC
        cmp     eax, dword [ebp+20H]                    ; 080A _ 3B. 45, 20
        jle     ?_009                                   ; 080D _ 7E, C5
        nop                                             ; 080F _ 90
        leave                                           ; 0810 _ C9
        ret                                             ; 0811 _ C3
; boxfill8 End of function

showFont8:; Function begin
        push    ebp                                     ; 0812 _ 55
        mov     ebp, esp                                ; 0813 _ 89. E5
        sub     esp, 20                                 ; 0815 _ 83. EC, 14
        mov     eax, dword [ebp+18H]                    ; 0818 _ 8B. 45, 18
        mov     byte [ebp-14H], al                      ; 081B _ 88. 45, EC
        mov     dword [ebp-4H], 0                       ; 081E _ C7. 45, FC, 00000000
        jmp     ?_022                                   ; 0825 _ E9, 0000016C

?_013:  mov     edx, dword [ebp-4H]                     ; 082A _ 8B. 55, FC
        mov     eax, dword [ebp+1CH]                    ; 082D _ 8B. 45, 1C
        add     eax, edx                                ; 0830 _ 01. D0
        movzx   eax, byte [eax]                         ; 0832 _ 0F B6. 00
        mov     byte [ebp-5H], al                       ; 0835 _ 88. 45, FB
        cmp     byte [ebp-5H], 0                        ; 0838 _ 80. 7D, FB, 00
        jns     ?_014                                   ; 083C _ 79, 20
        mov     edx, dword [ebp+14H]                    ; 083E _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 0841 _ 8B. 45, FC
        add     eax, edx                                ; 0844 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 0846 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 084A _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 084C _ 8B. 45, 10
        add     eax, edx                                ; 084F _ 01. D0
        mov     edx, eax                                ; 0851 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 0853 _ 8B. 45, 08
        add     edx, eax                                ; 0856 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0858 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 085C _ 88. 02
?_014:  movsx   eax, byte [ebp-5H]                      ; 085E _ 0F BE. 45, FB
        and     eax, 40H                                ; 0862 _ 83. E0, 40
        test    eax, eax                                ; 0865 _ 85. C0
        jz      ?_015                                   ; 0867 _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 0869 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 086C _ 8B. 45, FC
        add     eax, edx                                ; 086F _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 0871 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 0875 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 0877 _ 8B. 45, 10
        add     eax, edx                                ; 087A _ 01. D0
        lea     edx, [eax+1H]                           ; 087C _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 087F _ 8B. 45, 08
        add     edx, eax                                ; 0882 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0884 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0888 _ 88. 02
?_015:  movsx   eax, byte [ebp-5H]                      ; 088A _ 0F BE. 45, FB
        and     eax, 20H                                ; 088E _ 83. E0, 20
        test    eax, eax                                ; 0891 _ 85. C0
        jz      ?_016                                   ; 0893 _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 0895 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 0898 _ 8B. 45, FC
        add     eax, edx                                ; 089B _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 089D _ 0F AF. 45, 0C
        mov     edx, eax                                ; 08A1 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 08A3 _ 8B. 45, 10
        add     eax, edx                                ; 08A6 _ 01. D0
        lea     edx, [eax+2H]                           ; 08A8 _ 8D. 50, 02
        mov     eax, dword [ebp+8H]                     ; 08AB _ 8B. 45, 08
        add     edx, eax                                ; 08AE _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 08B0 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 08B4 _ 88. 02
?_016:  movsx   eax, byte [ebp-5H]                      ; 08B6 _ 0F BE. 45, FB
        and     eax, 10H                                ; 08BA _ 83. E0, 10
        test    eax, eax                                ; 08BD _ 85. C0
        jz      ?_017                                   ; 08BF _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 08C1 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 08C4 _ 8B. 45, FC
        add     eax, edx                                ; 08C7 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 08C9 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 08CD _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 08CF _ 8B. 45, 10
        add     eax, edx                                ; 08D2 _ 01. D0
        lea     edx, [eax+3H]                           ; 08D4 _ 8D. 50, 03
        mov     eax, dword [ebp+8H]                     ; 08D7 _ 8B. 45, 08
        add     edx, eax                                ; 08DA _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 08DC _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 08E0 _ 88. 02
?_017:  movsx   eax, byte [ebp-5H]                      ; 08E2 _ 0F BE. 45, FB
        and     eax, 08H                                ; 08E6 _ 83. E0, 08
        test    eax, eax                                ; 08E9 _ 85. C0
        jz      ?_018                                   ; 08EB _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 08ED _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 08F0 _ 8B. 45, FC
        add     eax, edx                                ; 08F3 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 08F5 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 08F9 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 08FB _ 8B. 45, 10
        add     eax, edx                                ; 08FE _ 01. D0
        lea     edx, [eax+4H]                           ; 0900 _ 8D. 50, 04
        mov     eax, dword [ebp+8H]                     ; 0903 _ 8B. 45, 08
        add     edx, eax                                ; 0906 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0908 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 090C _ 88. 02
?_018:  movsx   eax, byte [ebp-5H]                      ; 090E _ 0F BE. 45, FB
        and     eax, 04H                                ; 0912 _ 83. E0, 04
        test    eax, eax                                ; 0915 _ 85. C0
        jz      ?_019                                   ; 0917 _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 0919 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 091C _ 8B. 45, FC
        add     eax, edx                                ; 091F _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 0921 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 0925 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 0927 _ 8B. 45, 10
        add     eax, edx                                ; 092A _ 01. D0
        lea     edx, [eax+5H]                           ; 092C _ 8D. 50, 05
        mov     eax, dword [ebp+8H]                     ; 092F _ 8B. 45, 08
        add     edx, eax                                ; 0932 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0934 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0938 _ 88. 02
?_019:  movsx   eax, byte [ebp-5H]                      ; 093A _ 0F BE. 45, FB
        and     eax, 02H                                ; 093E _ 83. E0, 02
        test    eax, eax                                ; 0941 _ 85. C0
        jz      ?_020                                   ; 0943 _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 0945 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 0948 _ 8B. 45, FC
        add     eax, edx                                ; 094B _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 094D _ 0F AF. 45, 0C
        mov     edx, eax                                ; 0951 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 0953 _ 8B. 45, 10
        add     eax, edx                                ; 0956 _ 01. D0
        lea     edx, [eax+6H]                           ; 0958 _ 8D. 50, 06
        mov     eax, dword [ebp+8H]                     ; 095B _ 8B. 45, 08
        add     edx, eax                                ; 095E _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0960 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0964 _ 88. 02
?_020:  movsx   eax, byte [ebp-5H]                      ; 0966 _ 0F BE. 45, FB
        and     eax, 01H                                ; 096A _ 83. E0, 01
        test    eax, eax                                ; 096D _ 85. C0
        jz      ?_021                                   ; 096F _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 0971 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 0974 _ 8B. 45, FC
        add     eax, edx                                ; 0977 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 0979 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 097D _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 097F _ 8B. 45, 10
        add     eax, edx                                ; 0982 _ 01. D0
        lea     edx, [eax+7H]                           ; 0984 _ 8D. 50, 07
        mov     eax, dword [ebp+8H]                     ; 0987 _ 8B. 45, 08
        add     edx, eax                                ; 098A _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 098C _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0990 _ 88. 02
?_021:  add     dword [ebp-4H], 1                       ; 0992 _ 83. 45, FC, 01
?_022:  cmp     dword [ebp-4H], 15                      ; 0996 _ 83. 7D, FC, 0F
        jle     ?_013                                   ; 099A _ 0F 8E, FFFFFE8A
        nop                                             ; 09A0 _ 90
        leave                                           ; 09A1 _ C9
        ret                                             ; 09A2 _ C3
; showFont8 End of function

init_mouse_cursor:; Function begin
        push    ebp                                     ; 09A3 _ 55
        mov     ebp, esp                                ; 09A4 _ 89. E5
        sub     esp, 20                                 ; 09A6 _ 83. EC, 14
        mov     eax, dword [ebp+0CH]                    ; 09A9 _ 8B. 45, 0C
        mov     byte [ebp-14H], al                      ; 09AC _ 88. 45, EC
        mov     dword [ebp-4H], 0                       ; 09AF _ C7. 45, FC, 00000000
        jmp     ?_029                                   ; 09B6 _ E9, 000000B1

?_023:  mov     dword [ebp-8H], 0                       ; 09BB _ C7. 45, F8, 00000000
        jmp     ?_028                                   ; 09C2 _ E9, 00000097

?_024:  mov     eax, dword [ebp-4H]                     ; 09C7 _ 8B. 45, FC
        shl     eax, 4                                  ; 09CA _ C1. E0, 04
        mov     edx, eax                                ; 09CD _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 09CF _ 8B. 45, F8
        add     eax, edx                                ; 09D2 _ 01. D0
        add     eax, cursor.1701                        ; 09D4 _ 05, 00000060(d)
        movzx   eax, byte [eax]                         ; 09D9 _ 0F B6. 00
        cmp     al, 42                                  ; 09DC _ 3C, 2A
        jnz     ?_025                                   ; 09DE _ 75, 17
        mov     eax, dword [ebp-4H]                     ; 09E0 _ 8B. 45, FC
        shl     eax, 4                                  ; 09E3 _ C1. E0, 04
        mov     edx, eax                                ; 09E6 _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 09E8 _ 8B. 45, F8
        add     eax, edx                                ; 09EB _ 01. D0
        mov     edx, eax                                ; 09ED _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 09EF _ 8B. 45, 08
        add     eax, edx                                ; 09F2 _ 01. D0
        mov     byte [eax], 0                           ; 09F4 _ C6. 00, 00
?_025:  mov     eax, dword [ebp-4H]                     ; 09F7 _ 8B. 45, FC
        shl     eax, 4                                  ; 09FA _ C1. E0, 04
        mov     edx, eax                                ; 09FD _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 09FF _ 8B. 45, F8
        add     eax, edx                                ; 0A02 _ 01. D0
        add     eax, cursor.1701                        ; 0A04 _ 05, 00000060(d)
        movzx   eax, byte [eax]                         ; 0A09 _ 0F B6. 00
        cmp     al, 79                                  ; 0A0C _ 3C, 4F
        jnz     ?_026                                   ; 0A0E _ 75, 17
        mov     eax, dword [ebp-4H]                     ; 0A10 _ 8B. 45, FC
        shl     eax, 4                                  ; 0A13 _ C1. E0, 04
        mov     edx, eax                                ; 0A16 _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 0A18 _ 8B. 45, F8
        add     eax, edx                                ; 0A1B _ 01. D0
        mov     edx, eax                                ; 0A1D _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 0A1F _ 8B. 45, 08
        add     eax, edx                                ; 0A22 _ 01. D0
        mov     byte [eax], 7                           ; 0A24 _ C6. 00, 07
?_026:  mov     eax, dword [ebp-4H]                     ; 0A27 _ 8B. 45, FC
        shl     eax, 4                                  ; 0A2A _ C1. E0, 04
        mov     edx, eax                                ; 0A2D _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 0A2F _ 8B. 45, F8
        add     eax, edx                                ; 0A32 _ 01. D0
        add     eax, cursor.1701                        ; 0A34 _ 05, 00000060(d)
        movzx   eax, byte [eax]                         ; 0A39 _ 0F B6. 00
        cmp     al, 46                                  ; 0A3C _ 3C, 2E
        jnz     ?_027                                   ; 0A3E _ 75, 1A
        mov     eax, dword [ebp-4H]                     ; 0A40 _ 8B. 45, FC
        shl     eax, 4                                  ; 0A43 _ C1. E0, 04
        mov     edx, eax                                ; 0A46 _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 0A48 _ 8B. 45, F8
        add     eax, edx                                ; 0A4B _ 01. D0
        mov     edx, eax                                ; 0A4D _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 0A4F _ 8B. 45, 08
        add     edx, eax                                ; 0A52 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0A54 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0A58 _ 88. 02
?_027:  add     dword [ebp-8H], 1                       ; 0A5A _ 83. 45, F8, 01
?_028:  cmp     dword [ebp-8H], 15                      ; 0A5E _ 83. 7D, F8, 0F
        jle     ?_024                                   ; 0A62 _ 0F 8E, FFFFFF5F
        add     dword [ebp-4H], 1                       ; 0A68 _ 83. 45, FC, 01
?_029:  cmp     dword [ebp-4H], 15                      ; 0A6C _ 83. 7D, FC, 0F
        jle     ?_023                                   ; 0A70 _ 0F 8E, FFFFFF45
        nop                                             ; 0A76 _ 90
        leave                                           ; 0A77 _ C9
        ret                                             ; 0A78 _ C3
; init_mouse_cursor End of function

putblock:; Function begin
        push    ebp                                     ; 0A79 _ 55
        mov     ebp, esp                                ; 0A7A _ 89. E5
        push    ebx                                     ; 0A7C _ 53
        sub     esp, 16                                 ; 0A7D _ 83. EC, 10
        mov     dword [ebp-8H], 0                       ; 0A80 _ C7. 45, F8, 00000000
        jmp     ?_033                                   ; 0A87 _ EB, 50

?_030:  mov     dword [ebp-0CH], 0                      ; 0A89 _ C7. 45, F4, 00000000
        jmp     ?_032                                   ; 0A90 _ EB, 3B

?_031:  mov     eax, dword [ebp-8H]                     ; 0A92 _ 8B. 45, F8
        imul    eax, dword [ebp+24H]                    ; 0A95 _ 0F AF. 45, 24
        mov     edx, eax                                ; 0A99 _ 89. C2
        mov     eax, dword [ebp-0CH]                    ; 0A9B _ 8B. 45, F4
        add     eax, edx                                ; 0A9E _ 01. D0
        mov     edx, eax                                ; 0AA0 _ 89. C2
        mov     eax, dword [ebp+20H]                    ; 0AA2 _ 8B. 45, 20
        add     eax, edx                                ; 0AA5 _ 01. D0
        mov     ecx, dword [ebp+1CH]                    ; 0AA7 _ 8B. 4D, 1C
        mov     edx, dword [ebp-8H]                     ; 0AAA _ 8B. 55, F8
        add     edx, ecx                                ; 0AAD _ 01. CA
        imul    edx, dword [ebp+0CH]                    ; 0AAF _ 0F AF. 55, 0C
        mov     ebx, dword [ebp+18H]                    ; 0AB3 _ 8B. 5D, 18
        mov     ecx, dword [ebp-0CH]                    ; 0AB6 _ 8B. 4D, F4
        add     ecx, ebx                                ; 0AB9 _ 01. D9
        add     edx, ecx                                ; 0ABB _ 01. CA
        mov     ecx, edx                                ; 0ABD _ 89. D1
        mov     edx, dword [ebp+8H]                     ; 0ABF _ 8B. 55, 08
        add     edx, ecx                                ; 0AC2 _ 01. CA
        movzx   eax, byte [eax]                         ; 0AC4 _ 0F B6. 00
        mov     byte [edx], al                          ; 0AC7 _ 88. 02
        add     dword [ebp-0CH], 1                      ; 0AC9 _ 83. 45, F4, 01
?_032:  mov     eax, dword [ebp-0CH]                    ; 0ACD _ 8B. 45, F4
        cmp     eax, dword [ebp+10H]                    ; 0AD0 _ 3B. 45, 10
        jl      ?_031                                   ; 0AD3 _ 7C, BD
        add     dword [ebp-8H], 1                       ; 0AD5 _ 83. 45, F8, 01
?_033:  mov     eax, dword [ebp-8H]                     ; 0AD9 _ 8B. 45, F8
        cmp     eax, dword [ebp+14H]                    ; 0ADC _ 3B. 45, 14
        jl      ?_030                                   ; 0ADF _ 7C, A8
        nop                                             ; 0AE1 _ 90
        add     esp, 16                                 ; 0AE2 _ 83. C4, 10
        pop     ebx                                     ; 0AE5 _ 5B
        pop     ebp                                     ; 0AE6 _ 5D
        ret                                             ; 0AE7 _ C3
; putblock End of function

intHandlerFromC:; Function begin
        push    ebp                                     ; 0AE8 _ 55
        mov     ebp, esp                                ; 0AE9 _ 89. E5
        sub     esp, 24                                 ; 0AEB _ 83. EC, 18
        mov     eax, dword [bootInfo]                   ; 0AEE _ A1, 00000000(d)
        mov     dword [ebp-14H], eax                    ; 0AF3 _ 89. 45, EC
        movzx   eax, word [?_130]                       ; 0AF6 _ 0F B7. 05, 00000004(d)
        cwde                                            ; 0AFD _ 98
        mov     dword [ebp-10H], eax                    ; 0AFE _ 89. 45, F0
        movzx   eax, word [?_131]                       ; 0B01 _ 0F B7. 05, 00000006(d)
        cwde                                            ; 0B08 _ 98
        mov     dword [ebp-0CH], eax                    ; 0B09 _ 89. 45, F4
        sub     esp, 8                                  ; 0B0C _ 83. EC, 08
        push    32                                      ; 0B0F _ 6A, 20
        push    32                                      ; 0B11 _ 6A, 20
        call    io_out8                                 ; 0B13 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0B18 _ 83. C4, 10
        mov     byte [ebp-15H], 0                       ; 0B1B _ C6. 45, EB, 00
        sub     esp, 12                                 ; 0B1F _ 83. EC, 0C
        push    96                                      ; 0B22 _ 6A, 60
        call    io_in8                                  ; 0B24 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0B29 _ 83. C4, 10
        mov     byte [ebp-15H], al                      ; 0B2C _ 88. 45, EB
        movzx   eax, byte [ebp-15H]                     ; 0B2F _ 0F B6. 45, EB
        sub     esp, 8                                  ; 0B33 _ 83. EC, 08
        push    eax                                     ; 0B36 _ 50
        push    keyInfo                                 ; 0B37 _ 68, 00000008(d)
        call    fifo8_put                               ; 0B3C _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0B41 _ 83. C4, 10
        nop                                             ; 0B44 _ 90
        leave                                           ; 0B45 _ C9
        ret                                             ; 0B46 _ C3
; intHandlerFromC End of function

charToHex:; Function begin
        push    ebp                                     ; 0B47 _ 55
        mov     ebp, esp                                ; 0B48 _ 89. E5
        sub     esp, 40                                 ; 0B4A _ 83. EC, 28
        mov     eax, dword [ebp+8H]                     ; 0B4D _ 8B. 45, 08
        mov     byte [ebp-1CH], al                      ; 0B50 _ 88. 45, E4
        movzx   eax, byte [ebp-1CH]                     ; 0B53 _ 0F B6. 45, E4
        and     eax, 0FH                                ; 0B57 _ 83. E0, 0F
        mov     byte [ebp-9H], al                       ; 0B5A _ 88. 45, F7
        movsx   eax, byte [ebp-9H]                      ; 0B5D _ 0F BE. 45, F7
        sub     esp, 12                                 ; 0B61 _ 83. EC, 0C
        push    eax                                     ; 0B64 _ 50
        call    charToVal                               ; 0B65 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0B6A _ 83. C4, 10
        mov     byte [?_129], al                        ; 0B6D _ A2, 00000003(d)
        movzx   eax, byte [ebp-1CH]                     ; 0B72 _ 0F B6. 45, E4
        shr     al, 4                                   ; 0B76 _ C0. E8, 04
        mov     byte [ebp-1CH], al                      ; 0B79 _ 88. 45, E4
        movzx   eax, byte [ebp-1CH]                     ; 0B7C _ 0F B6. 45, E4
        movsx   eax, al                                 ; 0B80 _ 0F BE. C0
        sub     esp, 12                                 ; 0B83 _ 83. EC, 0C
        push    eax                                     ; 0B86 _ 50
        call    charToVal                               ; 0B87 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0B8C _ 83. C4, 10
        mov     byte [?_128], al                        ; 0B8F _ A2, 00000002(d)
        mov     eax, keyVal                             ; 0B94 _ B8, 00000000(d)
        leave                                           ; 0B99 _ C9
        ret                                             ; 0B9A _ C3
; charToHex End of function

charToVal:; Function begin
        push    ebp                                     ; 0B9B _ 55
        mov     ebp, esp                                ; 0B9C _ 89. E5
        sub     esp, 4                                  ; 0B9E _ 83. EC, 04
        mov     eax, dword [ebp+8H]                     ; 0BA1 _ 8B. 45, 08
        mov     byte [ebp-4H], al                       ; 0BA4 _ 88. 45, FC
        cmp     byte [ebp-4H], 9                        ; 0BA7 _ 80. 7D, FC, 09
        jle     ?_034                                   ; 0BAB _ 7E, 09
        movzx   eax, byte [ebp-4H]                      ; 0BAD _ 0F B6. 45, FC
        add     eax, 55                                 ; 0BB1 _ 83. C0, 37
        jmp     ?_035                                   ; 0BB4 _ EB, 07

?_034:  movzx   eax, byte [ebp-4H]                      ; 0BB6 _ 0F B6. 45, FC
        add     eax, 48                                 ; 0BBA _ 83. C0, 30
?_035:  leave                                           ; 0BBD _ C9
        ret                                             ; 0BBE _ C3
; charToVal End of function

intToHexStr:; Function begin
        push    ebp                                     ; 0BBF _ 55
        mov     ebp, esp                                ; 0BC0 _ 89. E5
        sub     esp, 16                                 ; 0BC2 _ 83. EC, 10
        mov     byte [str.1744], 48                     ; 0BC5 _ C6. 05, 00000200(d), 30
        mov     byte [?_132], 120                       ; 0BCC _ C6. 05, 00000201(d), 78
        mov     byte [?_133], 0                         ; 0BD3 _ C6. 05, 0000020A(d), 00
        mov     dword [ebp-0CH], 2                      ; 0BDA _ C7. 45, F4, 00000002
        jmp     ?_037                                   ; 0BE1 _ EB, 0F

?_036:  mov     eax, dword [ebp-0CH]                    ; 0BE3 _ 8B. 45, F4
        add     eax, str.1744                           ; 0BE6 _ 05, 00000200(d)
        mov     byte [eax], 48                          ; 0BEB _ C6. 00, 30
        add     dword [ebp-0CH], 1                      ; 0BEE _ 83. 45, F4, 01
?_037:  cmp     dword [ebp-0CH], 9                      ; 0BF2 _ 83. 7D, F4, 09
        jle     ?_036                                   ; 0BF6 _ 7E, EB
        mov     dword [ebp-8H], 9                       ; 0BF8 _ C7. 45, F8, 00000009
        jmp     ?_040                                   ; 0BFF _ EB, 48

?_038:  mov     eax, dword [ebp+8H]                     ; 0C01 _ 8B. 45, 08
        and     eax, 0FH                                ; 0C04 _ 83. E0, 0F
        mov     dword [ebp-4H], eax                     ; 0C07 _ 89. 45, FC
        mov     eax, dword [ebp+8H]                     ; 0C0A _ 8B. 45, 08
        shr     eax, 4                                  ; 0C0D _ C1. E8, 04
        mov     dword [ebp+8H], eax                     ; 0C10 _ 89. 45, 08
        cmp     dword [ebp-4H], 9                       ; 0C13 _ 83. 7D, FC, 09
        jle     ?_039                                   ; 0C17 _ 7E, 19
        mov     eax, dword [ebp-4H]                     ; 0C19 _ 8B. 45, FC
        lea     ecx, [eax+37H]                          ; 0C1C _ 8D. 48, 37
        mov     eax, dword [ebp-8H]                     ; 0C1F _ 8B. 45, F8
        lea     edx, [eax-1H]                           ; 0C22 _ 8D. 50, FF
        mov     dword [ebp-8H], edx                     ; 0C25 _ 89. 55, F8
        mov     edx, ecx                                ; 0C28 _ 89. CA
        mov     byte [str.1744+eax], dl                 ; 0C2A _ 88. 90, 00000200(d)
        jmp     ?_040                                   ; 0C30 _ EB, 17

?_039:  mov     eax, dword [ebp-4H]                     ; 0C32 _ 8B. 45, FC
        lea     ecx, [eax+30H]                          ; 0C35 _ 8D. 48, 30
        mov     eax, dword [ebp-8H]                     ; 0C38 _ 8B. 45, F8
        lea     edx, [eax-1H]                           ; 0C3B _ 8D. 50, FF
        mov     dword [ebp-8H], edx                     ; 0C3E _ 89. 55, F8
        mov     edx, ecx                                ; 0C41 _ 89. CA
        mov     byte [str.1744+eax], dl                 ; 0C43 _ 88. 90, 00000200(d)
?_040:  cmp     dword [ebp-8H], 1                       ; 0C49 _ 83. 7D, F8, 01
        jle     ?_041                                   ; 0C4D _ 7E, 06
        cmp     dword [ebp+8H], 0                       ; 0C4F _ 83. 7D, 08, 00
        jnz     ?_038                                   ; 0C53 _ 75, AC
?_041:  mov     eax, str.1744                           ; 0C55 _ B8, 00000200(d)
        leave                                           ; 0C5A _ C9
        ret                                             ; 0C5B _ C3
; intToHexStr End of function

wait_KBC_sendReady:; Function begin
        push    ebp                                     ; 0C5C _ 55
        mov     ebp, esp                                ; 0C5D _ 89. E5
        sub     esp, 8                                  ; 0C5F _ 83. EC, 08
?_042:  sub     esp, 12                                 ; 0C62 _ 83. EC, 0C
        push    100                                     ; 0C65 _ 6A, 64
        call    io_in8                                  ; 0C67 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0C6C _ 83. C4, 10
        movsx   eax, al                                 ; 0C6F _ 0F BE. C0
        and     eax, 02H                                ; 0C72 _ 83. E0, 02
        test    eax, eax                                ; 0C75 _ 85. C0
        jz      ?_043                                   ; 0C77 _ 74, 02
        jmp     ?_042                                   ; 0C79 _ EB, E7

?_043:  nop                                             ; 0C7B _ 90
        nop                                             ; 0C7C _ 90
        leave                                           ; 0C7D _ C9
        ret                                             ; 0C7E _ C3
; wait_KBC_sendReady End of function

init_keyboard:; Function begin
        push    ebp                                     ; 0C7F _ 55
        mov     ebp, esp                                ; 0C80 _ 89. E5
        sub     esp, 8                                  ; 0C82 _ 83. EC, 08
        call    wait_KBC_sendReady                      ; 0C85 _ E8, FFFFFFFC(rel)
        sub     esp, 8                                  ; 0C8A _ 83. EC, 08
        push    96                                      ; 0C8D _ 6A, 60
        push    100                                     ; 0C8F _ 6A, 64
        call    io_out8                                 ; 0C91 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0C96 _ 83. C4, 10
        call    wait_KBC_sendReady                      ; 0C99 _ E8, FFFFFFFC(rel)
        sub     esp, 8                                  ; 0C9E _ 83. EC, 08
        push    71                                      ; 0CA1 _ 6A, 47
        push    96                                      ; 0CA3 _ 6A, 60
        call    io_out8                                 ; 0CA5 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0CAA _ 83. C4, 10
        nop                                             ; 0CAD _ 90
        leave                                           ; 0CAE _ C9
        ret                                             ; 0CAF _ C3
; init_keyboard End of function

enable_mouse:; Function begin
        push    ebp                                     ; 0CB0 _ 55
        mov     ebp, esp                                ; 0CB1 _ 89. E5
        sub     esp, 8                                  ; 0CB3 _ 83. EC, 08
        call    wait_KBC_sendReady                      ; 0CB6 _ E8, FFFFFFFC(rel)
        sub     esp, 8                                  ; 0CBB _ 83. EC, 08
        push    212                                     ; 0CBE _ 68, 000000D4
        push    100                                     ; 0CC3 _ 6A, 64
        call    io_out8                                 ; 0CC5 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0CCA _ 83. C4, 10
        call    wait_KBC_sendReady                      ; 0CCD _ E8, FFFFFFFC(rel)
        sub     esp, 8                                  ; 0CD2 _ 83. EC, 08
        push    244                                     ; 0CD5 _ 68, 000000F4
        push    96                                      ; 0CDA _ 6A, 60
        call    io_out8                                 ; 0CDC _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0CE1 _ 83. C4, 10
        mov     eax, dword [ebp+8H]                     ; 0CE4 _ 8B. 45, 08
        mov     byte [eax+3H], 0                        ; 0CE7 _ C6. 40, 03, 00
        nop                                             ; 0CEB _ 90
        leave                                           ; 0CEC _ C9
        ret                                             ; 0CED _ C3
; enable_mouse End of function

intHandlerForMouse:; Function begin
        push    ebp                                     ; 0CEE _ 55
        mov     ebp, esp                                ; 0CEF _ 89. E5
        sub     esp, 24                                 ; 0CF1 _ 83. EC, 18
        mov     byte [ebp-9H], 0                        ; 0CF4 _ C6. 45, F7, 00
        sub     esp, 8                                  ; 0CF8 _ 83. EC, 08
        push    32                                      ; 0CFB _ 6A, 20
        push    160                                     ; 0CFD _ 68, 000000A0
        call    io_out8                                 ; 0D02 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0D07 _ 83. C4, 10
        sub     esp, 8                                  ; 0D0A _ 83. EC, 08
        push    32                                      ; 0D0D _ 6A, 20
        push    32                                      ; 0D0F _ 6A, 20
        call    io_out8                                 ; 0D11 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0D16 _ 83. C4, 10
        sub     esp, 12                                 ; 0D19 _ 83. EC, 0C
        push    96                                      ; 0D1C _ 6A, 60
        call    io_in8                                  ; 0D1E _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0D23 _ 83. C4, 10
        mov     byte [ebp-9H], al                       ; 0D26 _ 88. 45, F7
        movzx   eax, byte [ebp-9H]                      ; 0D29 _ 0F B6. 45, F7
        sub     esp, 8                                  ; 0D2D _ 83. EC, 08
        push    eax                                     ; 0D30 _ 50
        push    mouseInfo                               ; 0D31 _ 68, 00000020(d)
        call    fifo8_put                               ; 0D36 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0D3B _ 83. C4, 10
        nop                                             ; 0D3E _ 90
        leave                                           ; 0D3F _ C9
        ret                                             ; 0D40 _ C3
; intHandlerForMouse End of function

fifo8_init:; Function begin
        push    ebp                                     ; 0D41 _ 55
        mov     ebp, esp                                ; 0D42 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 0D44 _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 0D47 _ 8B. 55, 0C
        mov     dword [eax+0CH], edx                    ; 0D4A _ 89. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 0D4D _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 0D50 _ 8B. 55, 10
        mov     dword [eax], edx                        ; 0D53 _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 0D55 _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 0D58 _ 8B. 55, 0C
        mov     dword [eax+10H], edx                    ; 0D5B _ 89. 50, 10
        mov     eax, dword [ebp+8H]                     ; 0D5E _ 8B. 45, 08
        mov     dword [eax+4H], 0                       ; 0D61 _ C7. 40, 04, 00000000
        mov     eax, dword [ebp+8H]                     ; 0D68 _ 8B. 45, 08
        mov     dword [eax+8H], 0                       ; 0D6B _ C7. 40, 08, 00000000
        mov     eax, dword [ebp+8H]                     ; 0D72 _ 8B. 45, 08
        mov     dword [eax+14H], 0                      ; 0D75 _ C7. 40, 14, 00000000
        nop                                             ; 0D7C _ 90
        pop     ebp                                     ; 0D7D _ 5D
        ret                                             ; 0D7E _ C3
; fifo8_init End of function

fifo8_put:; Function begin
        push    ebp                                     ; 0D7F _ 55
        mov     ebp, esp                                ; 0D80 _ 89. E5
        sub     esp, 4                                  ; 0D82 _ 83. EC, 04
        mov     eax, dword [ebp+0CH]                    ; 0D85 _ 8B. 45, 0C
        mov     byte [ebp-4H], al                       ; 0D88 _ 88. 45, FC
        mov     eax, dword [ebp+8H]                     ; 0D8B _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 0D8E _ 8B. 40, 10
        test    eax, eax                                ; 0D91 _ 85. C0
        jnz     ?_044                                   ; 0D93 _ 75, 18
        mov     eax, dword [ebp+8H]                     ; 0D95 _ 8B. 45, 08
        mov     eax, dword [eax+14H]                    ; 0D98 _ 8B. 40, 14
        or      eax, 01H                                ; 0D9B _ 83. C8, 01
        mov     edx, eax                                ; 0D9E _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 0DA0 _ 8B. 45, 08
        mov     dword [eax+14H], edx                    ; 0DA3 _ 89. 50, 14
        mov     eax, 4294967295                         ; 0DA6 _ B8, FFFFFFFF
        jmp     ?_046                                   ; 0DAB _ EB, 50

?_044:  mov     eax, dword [ebp+8H]                     ; 0DAD _ 8B. 45, 08
        mov     edx, dword [eax]                        ; 0DB0 _ 8B. 10
        mov     eax, dword [ebp+8H]                     ; 0DB2 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 0DB5 _ 8B. 40, 08
        add     edx, eax                                ; 0DB8 _ 01. C2
        movzx   eax, byte [ebp-4H]                      ; 0DBA _ 0F B6. 45, FC
        mov     byte [edx], al                          ; 0DBE _ 88. 02
        mov     eax, dword [ebp+8H]                     ; 0DC0 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 0DC3 _ 8B. 40, 08
        lea     edx, [eax+1H]                           ; 0DC6 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 0DC9 _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 0DCC _ 89. 50, 08
        mov     eax, dword [ebp+8H]                     ; 0DCF _ 8B. 45, 08
        mov     edx, dword [eax+8H]                     ; 0DD2 _ 8B. 50, 08
        mov     eax, dword [ebp+8H]                     ; 0DD5 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 0DD8 _ 8B. 40, 0C
        cmp     edx, eax                                ; 0DDB _ 39. C2
        jnz     ?_045                                   ; 0DDD _ 75, 0A
        mov     eax, dword [ebp+8H]                     ; 0DDF _ 8B. 45, 08
        mov     dword [eax+8H], 0                       ; 0DE2 _ C7. 40, 08, 00000000
?_045:  mov     eax, dword [ebp+8H]                     ; 0DE9 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 0DEC _ 8B. 40, 10
        lea     edx, [eax-1H]                           ; 0DEF _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 0DF2 _ 8B. 45, 08
        mov     dword [eax+10H], edx                    ; 0DF5 _ 89. 50, 10
        mov     eax, 1                                  ; 0DF8 _ B8, 00000001
?_046:  leave                                           ; 0DFD _ C9
        ret                                             ; 0DFE _ C3
; fifo8_put End of function

fifo8_get:; Function begin
        push    ebp                                     ; 0DFF _ 55
        mov     ebp, esp                                ; 0E00 _ 89. E5
        sub     esp, 16                                 ; 0E02 _ 83. EC, 10
        mov     eax, dword [ebp+8H]                     ; 0E05 _ 8B. 45, 08
        mov     edx, dword [eax+10H]                    ; 0E08 _ 8B. 50, 10
        mov     eax, dword [ebp+8H]                     ; 0E0B _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 0E0E _ 8B. 40, 0C
        cmp     edx, eax                                ; 0E11 _ 39. C2
        jnz     ?_047                                   ; 0E13 _ 75, 07
        mov     eax, 4294967295                         ; 0E15 _ B8, FFFFFFFF
        jmp     ?_049                                   ; 0E1A _ EB, 51

?_047:  mov     eax, dword [ebp+8H]                     ; 0E1C _ 8B. 45, 08
        mov     edx, dword [eax]                        ; 0E1F _ 8B. 10
        mov     eax, dword [ebp+8H]                     ; 0E21 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 0E24 _ 8B. 40, 04
        add     eax, edx                                ; 0E27 _ 01. D0
        movzx   eax, byte [eax]                         ; 0E29 _ 0F B6. 00
        movzx   eax, al                                 ; 0E2C _ 0F B6. C0
        mov     dword [ebp-4H], eax                     ; 0E2F _ 89. 45, FC
        mov     eax, dword [ebp+8H]                     ; 0E32 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 0E35 _ 8B. 40, 04
        lea     edx, [eax+1H]                           ; 0E38 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 0E3B _ 8B. 45, 08
        mov     dword [eax+4H], edx                     ; 0E3E _ 89. 50, 04
        mov     eax, dword [ebp+8H]                     ; 0E41 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 0E44 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 0E47 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 0E4A _ 8B. 40, 0C
        cmp     edx, eax                                ; 0E4D _ 39. C2
        jnz     ?_048                                   ; 0E4F _ 75, 0A
        mov     eax, dword [ebp+8H]                     ; 0E51 _ 8B. 45, 08
        mov     dword [eax+4H], 0                       ; 0E54 _ C7. 40, 04, 00000000
?_048:  mov     eax, dword [ebp+8H]                     ; 0E5B _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 0E5E _ 8B. 40, 10
        lea     edx, [eax+1H]                           ; 0E61 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 0E64 _ 8B. 45, 08
        mov     dword [eax+10H], edx                    ; 0E67 _ 89. 50, 10
        mov     eax, dword [ebp-4H]                     ; 0E6A _ 8B. 45, FC
?_049:  leave                                           ; 0E6D _ C9
        ret                                             ; 0E6E _ C3
; fifo8_get End of function

fifo8_status:; Function begin
        push    ebp                                     ; 0E6F _ 55
        mov     ebp, esp                                ; 0E70 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 0E72 _ 8B. 45, 08
        mov     edx, dword [eax+0CH]                    ; 0E75 _ 8B. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 0E78 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 0E7B _ 8B. 40, 10
        sub     edx, eax                                ; 0E7E _ 29. C2
        mov     eax, edx                                ; 0E80 _ 89. D0
        pop     ebp                                     ; 0E82 _ 5D
        ret                                             ; 0E83 _ C3
; fifo8_status End of function

showKeyboardInfo:; Function begin
        push    ebp                                     ; 0E84 _ 55
        mov     ebp, esp                                ; 0E85 _ 89. E5
        sub     esp, 40                                 ; 0E87 _ 83. EC, 28
        call    io_sti                                  ; 0E8A _ E8, FFFFFFFC(rel)
        mov     eax, dword [bootInfo]                   ; 0E8F _ A1, 00000000(d)
        mov     dword [ebp-18H], eax                    ; 0E94 _ 89. 45, E8
        movzx   eax, word [?_130]                       ; 0E97 _ 0F B7. 05, 00000004(d)
        cwde                                            ; 0E9E _ 98
        mov     dword [ebp-14H], eax                    ; 0E9F _ 89. 45, EC
        movzx   eax, word [?_131]                       ; 0EA2 _ 0F B7. 05, 00000006(d)
        cwde                                            ; 0EA9 _ 98
        mov     dword [ebp-10H], eax                    ; 0EAA _ 89. 45, F0
        mov     byte [ebp-19H], 0                       ; 0EAD _ C6. 45, E7, 00
        sub     esp, 12                                 ; 0EB1 _ 83. EC, 0C
        push    keyInfo                                 ; 0EB4 _ 68, 00000008(d)
        call    fifo8_get                               ; 0EB9 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0EBE _ 83. C4, 10
        mov     byte [ebp-19H], al                      ; 0EC1 _ 88. 45, E7
        movzx   eax, byte [ebp-19H]                     ; 0EC4 _ 0F B6. 45, E7
        sub     esp, 12                                 ; 0EC8 _ 83. EC, 0C
        push    eax                                     ; 0ECB _ 50
        call    charToHex                               ; 0ECC _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0ED1 _ 83. C4, 10
        mov     dword [ebp-0CH], eax                    ; 0ED4 _ 89. 45, F4
        mov     edx, dword [line.1791]                  ; 0ED7 _ 8B. 15, 0000020C(d)
        mov     eax, dword [pos.1790]                   ; 0EDD _ A1, 00000210(d)
        sub     esp, 8                                  ; 0EE2 _ 83. EC, 08
        push    dword [ebp-0CH]                         ; 0EE5 _ FF. 75, F4
        push    7                                       ; 0EE8 _ 6A, 07
        push    edx                                     ; 0EEA _ 52
        push    eax                                     ; 0EEB _ 50
        push    dword [ebp-14H]                         ; 0EEC _ FF. 75, EC
        push    dword [ebp-18H]                         ; 0EEF _ FF. 75, E8
        call    showString                              ; 0EF2 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0EF7 _ 83. C4, 20
        mov     eax, dword [pos.1790]                   ; 0EFA _ A1, 00000210(d)
        add     eax, 32                                 ; 0EFF _ 83. C0, 20
        mov     dword [pos.1790], eax                   ; 0F02 _ A3, 00000210(d)
        mov     eax, dword [pos.1790]                   ; 0F07 _ A1, 00000210(d)
        cmp     dword [ebp-14H], eax                    ; 0F0C _ 39. 45, EC
        jnz     ?_052                                   ; 0F0F _ 75, 28
        mov     eax, dword [line.1791]                  ; 0F11 _ A1, 0000020C(d)
        cmp     dword [ebp-10H], eax                    ; 0F16 _ 39. 45, F0
        jz      ?_050                                   ; 0F19 _ 74, 0A
        mov     eax, dword [line.1791]                  ; 0F1B _ A1, 0000020C(d)
        add     eax, 16                                 ; 0F20 _ 83. C0, 10
        jmp     ?_051                                   ; 0F23 _ EB, 05

?_050:  mov     eax, 0                                  ; 0F25 _ B8, 00000000
?_051:  mov     dword [line.1791], eax                  ; 0F2A _ A3, 0000020C(d)
        mov     dword [pos.1790], 0                     ; 0F2F _ C7. 05, 00000210(d), 00000000
?_052:  nop                                             ; 0F39 _ 90
        leave                                           ; 0F3A _ C9
        ret                                             ; 0F3B _ C3
; showKeyboardInfo End of function

showMouseInfo:; Function begin
        push    ebp                                     ; 0F3C _ 55
        mov     ebp, esp                                ; 0F3D _ 89. E5
        sub     esp, 24                                 ; 0F3F _ 83. EC, 18
        call    io_sti                                  ; 0F42 _ E8, FFFFFFFC(rel)
        mov     byte [ebp-9H], 0                        ; 0F47 _ C6. 45, F7, 00
        sub     esp, 12                                 ; 0F4B _ 83. EC, 0C
        push    mouseInfo                               ; 0F4E _ 68, 00000020(d)
        call    fifo8_get                               ; 0F53 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0F58 _ 83. C4, 10
        mov     byte [ebp-9H], al                       ; 0F5B _ 88. 45, F7
        movzx   eax, byte [ebp-9H]                      ; 0F5E _ 0F B6. 45, F7
        sub     esp, 8                                  ; 0F62 _ 83. EC, 08
        push    eax                                     ; 0F65 _ 50
        push    mouse_move                              ; 0F66 _ 68, 000000E0(d)
        call    mouse_decode                            ; 0F6B _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0F70 _ 83. C4, 10
        test    eax, eax                                ; 0F73 _ 85. C0
        jz      ?_053                                   ; 0F75 _ 74, 2B
        sub     esp, 12                                 ; 0F77 _ 83. EC, 0C
        push    mouse_move                              ; 0F7A _ 68, 000000E0(d)
        call    computeMousePos                         ; 0F7F _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0F84 _ 83. C4, 10
        mov     edx, dword [my]                         ; 0F87 _ 8B. 15, 000000F4(d)
        mov     eax, dword [mx]                         ; 0F8D _ A1, 000000F0(d)
        push    edx                                     ; 0F92 _ 52
        push    eax                                     ; 0F93 _ 50
        push    dword [ebp+0CH]                         ; 0F94 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 0F97 _ FF. 75, 08
        call    sheet_slide                             ; 0F9A _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0F9F _ 83. C4, 10
?_053:  nop                                             ; 0FA2 _ 90
        leave                                           ; 0FA3 _ C9
        ret                                             ; 0FA4 _ C3
; showMouseInfo End of function

mouse_decode:; Function begin
        push    ebp                                     ; 0FA5 _ 55
        mov     ebp, esp                                ; 0FA6 _ 89. E5
        sub     esp, 4                                  ; 0FA8 _ 83. EC, 04
        mov     eax, dword [ebp+0CH]                    ; 0FAB _ 8B. 45, 0C
        mov     byte [ebp-4H], al                       ; 0FAE _ 88. 45, FC
        mov     eax, dword [ebp+8H]                     ; 0FB1 _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 0FB4 _ 0F B6. 40, 03
        test    al, al                                  ; 0FB8 _ 84. C0
        jnz     ?_055                                   ; 0FBA _ 75, 17
        cmp     byte [ebp-4H], -6                       ; 0FBC _ 80. 7D, FC, FA
        jnz     ?_054                                   ; 0FC0 _ 75, 07
        mov     eax, dword [ebp+8H]                     ; 0FC2 _ 8B. 45, 08
        mov     byte [eax+3H], 1                        ; 0FC5 _ C6. 40, 03, 01
?_054:  mov     eax, 0                                  ; 0FC9 _ B8, 00000000
        jmp     ?_062                                   ; 0FCE _ E9, 0000010C

?_055:  mov     eax, dword [ebp+8H]                     ; 0FD3 _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 0FD6 _ 0F B6. 40, 03
        cmp     al, 1                                   ; 0FDA _ 3C, 01
        jnz     ?_057                                   ; 0FDC _ 75, 25
        movzx   eax, byte [ebp-4H]                      ; 0FDE _ 0F B6. 45, FC
        or      eax, 37H                                ; 0FE2 _ 83. C8, 37
        cmp     al, 63                                  ; 0FE5 _ 3C, 3F
        jnz     ?_056                                   ; 0FE7 _ 75, 10
        mov     eax, dword [ebp+8H]                     ; 0FE9 _ 8B. 45, 08
        movzx   edx, byte [ebp-4H]                      ; 0FEC _ 0F B6. 55, FC
        mov     byte [eax], dl                          ; 0FF0 _ 88. 10
        mov     eax, dword [ebp+8H]                     ; 0FF2 _ 8B. 45, 08
        mov     byte [eax+3H], 2                        ; 0FF5 _ C6. 40, 03, 02
?_056:  mov     eax, 0                                  ; 0FF9 _ B8, 00000000
        jmp     ?_062                                   ; 0FFE _ E9, 000000DC

?_057:  mov     eax, dword [ebp+8H]                     ; 1003 _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 1006 _ 0F B6. 40, 03
        cmp     al, 2                                   ; 100A _ 3C, 02
        jnz     ?_058                                   ; 100C _ 75, 1B
        mov     eax, dword [ebp+8H]                     ; 100E _ 8B. 45, 08
        movzx   edx, byte [ebp-4H]                      ; 1011 _ 0F B6. 55, FC
        mov     byte [eax+1H], dl                       ; 1015 _ 88. 50, 01
        mov     eax, dword [ebp+8H]                     ; 1018 _ 8B. 45, 08
        mov     byte [eax+3H], 3                        ; 101B _ C6. 40, 03, 03
        mov     eax, 0                                  ; 101F _ B8, 00000000
        jmp     ?_062                                   ; 1024 _ E9, 000000B6

?_058:  mov     eax, dword [ebp+8H]                     ; 1029 _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 102C _ 0F B6. 40, 03
        cmp     al, 3                                   ; 1030 _ 3C, 03
        jne     ?_061                                   ; 1032 _ 0F 85, 000000A2
        mov     eax, dword [ebp+8H]                     ; 1038 _ 8B. 45, 08
        movzx   edx, byte [ebp-4H]                      ; 103B _ 0F B6. 55, FC
        mov     byte [eax+2H], dl                       ; 103F _ 88. 50, 02
        mov     eax, dword [ebp+8H]                     ; 1042 _ 8B. 45, 08
        mov     byte [eax+3H], 1                        ; 1045 _ C6. 40, 03, 01
        mov     eax, dword [ebp+8H]                     ; 1049 _ 8B. 45, 08
        movzx   eax, byte [eax]                         ; 104C _ 0F B6. 00
        movzx   eax, al                                 ; 104F _ 0F B6. C0
        and     eax, 07H                                ; 1052 _ 83. E0, 07
        mov     edx, eax                                ; 1055 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 1057 _ 8B. 45, 08
        mov     dword [eax+0CH], edx                    ; 105A _ 89. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 105D _ 8B. 45, 08
        movzx   eax, byte [eax+1H]                      ; 1060 _ 0F B6. 40, 01
        movzx   edx, al                                 ; 1064 _ 0F B6. D0
        mov     eax, dword [ebp+8H]                     ; 1067 _ 8B. 45, 08
        mov     dword [eax+4H], edx                     ; 106A _ 89. 50, 04
        mov     eax, dword [ebp+8H]                     ; 106D _ 8B. 45, 08
        movzx   eax, byte [eax+2H]                      ; 1070 _ 0F B6. 40, 02
        movzx   edx, al                                 ; 1074 _ 0F B6. D0
        mov     eax, dword [ebp+8H]                     ; 1077 _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 107A _ 89. 50, 08
        mov     eax, dword [ebp+8H]                     ; 107D _ 8B. 45, 08
        movzx   eax, byte [eax]                         ; 1080 _ 0F B6. 00
        movzx   eax, al                                 ; 1083 _ 0F B6. C0
        and     eax, 10H                                ; 1086 _ 83. E0, 10
        test    eax, eax                                ; 1089 _ 85. C0
        jz      ?_059                                   ; 108B _ 74, 13
        mov     eax, dword [ebp+8H]                     ; 108D _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 1090 _ 8B. 40, 04
        or      eax, 0FFFFFF00H                         ; 1093 _ 0D, FFFFFF00
        mov     edx, eax                                ; 1098 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 109A _ 8B. 45, 08
        mov     dword [eax+4H], edx                     ; 109D _ 89. 50, 04
?_059:  mov     eax, dword [ebp+8H]                     ; 10A0 _ 8B. 45, 08
        movzx   eax, byte [eax]                         ; 10A3 _ 0F B6. 00
        movzx   eax, al                                 ; 10A6 _ 0F B6. C0
        and     eax, 20H                                ; 10A9 _ 83. E0, 20
        test    eax, eax                                ; 10AC _ 85. C0
        jz      ?_060                                   ; 10AE _ 74, 13
        mov     eax, dword [ebp+8H]                     ; 10B0 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 10B3 _ 8B. 40, 08
        or      eax, 0FFFFFF00H                         ; 10B6 _ 0D, FFFFFF00
        mov     edx, eax                                ; 10BB _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 10BD _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 10C0 _ 89. 50, 08
?_060:  mov     eax, dword [ebp+8H]                     ; 10C3 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 10C6 _ 8B. 40, 08
        neg     eax                                     ; 10C9 _ F7. D8
        mov     edx, eax                                ; 10CB _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 10CD _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 10D0 _ 89. 50, 08
        mov     eax, 1                                  ; 10D3 _ B8, 00000001
        jmp     ?_062                                   ; 10D8 _ EB, 05

?_061:  mov     eax, 4294967295                         ; 10DA _ B8, FFFFFFFF
?_062:  leave                                           ; 10DF _ C9
        ret                                             ; 10E0 _ C3
; mouse_decode End of function

computeMousePos:; Function begin
        push    ebp                                     ; 10E1 _ 55
        mov     ebp, esp                                ; 10E2 _ 89. E5
        sub     esp, 24                                 ; 10E4 _ 83. EC, 18
        movzx   eax, word [?_130]                       ; 10E7 _ 0F B7. 05, 00000004(d)
        cwde                                            ; 10EE _ 98
        mov     dword [ebp-10H], eax                    ; 10EF _ 89. 45, F0
        movzx   eax, word [?_131]                       ; 10F2 _ 0F B7. 05, 00000006(d)
        cwde                                            ; 10F9 _ 98
        mov     dword [ebp-0CH], eax                    ; 10FA _ 89. 45, F4
        mov     eax, dword [ebp+8H]                     ; 10FD _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 1100 _ 8B. 50, 04
        mov     eax, dword [mx]                         ; 1103 _ A1, 000000F0(d)
        add     eax, edx                                ; 1108 _ 01. D0
        mov     dword [mx], eax                         ; 110A _ A3, 000000F0(d)
        mov     eax, dword [ebp+8H]                     ; 110F _ 8B. 45, 08
        mov     edx, dword [eax+8H]                     ; 1112 _ 8B. 50, 08
        mov     eax, dword [my]                         ; 1115 _ A1, 000000F4(d)
        add     eax, edx                                ; 111A _ 01. D0
        mov     dword [my], eax                         ; 111C _ A3, 000000F4(d)
        mov     eax, dword [mx]                         ; 1121 _ A1, 000000F0(d)
        test    eax, eax                                ; 1126 _ 85. C0
        jns     ?_063                                   ; 1128 _ 79, 0A
        mov     dword [mx], 0                           ; 112A _ C7. 05, 000000F0(d), 00000000
?_063:  mov     eax, dword [my]                         ; 1134 _ A1, 000000F4(d)
        test    eax, eax                                ; 1139 _ 85. C0
        jns     ?_064                                   ; 113B _ 79, 0A
        mov     dword [my], 0                           ; 113D _ C7. 05, 000000F4(d), 00000000
?_064:  mov     eax, dword [ebp-10H]                    ; 1147 _ 8B. 45, F0
        lea     edx, [eax-9H]                           ; 114A _ 8D. 50, F7
        mov     eax, dword [mx]                         ; 114D _ A1, 000000F0(d)
        cmp     edx, eax                                ; 1152 _ 39. C2
        jge     ?_065                                   ; 1154 _ 7D, 0B
        mov     eax, dword [ebp-10H]                    ; 1156 _ 8B. 45, F0
        sub     eax, 9                                  ; 1159 _ 83. E8, 09
        mov     dword [mx], eax                         ; 115C _ A3, 000000F0(d)
?_065:  mov     eax, dword [ebp-0CH]                    ; 1161 _ 8B. 45, F4
        lea     edx, [eax-1H]                           ; 1164 _ 8D. 50, FF
        mov     eax, dword [my]                         ; 1167 _ A1, 000000F4(d)
        cmp     edx, eax                                ; 116C _ 39. C2
        jge     ?_066                                   ; 116E _ 7D, 0B
        mov     eax, dword [ebp-0CH]                    ; 1170 _ 8B. 45, F4
        sub     eax, 1                                  ; 1173 _ 83. E8, 01
        mov     dword [my], eax                         ; 1176 _ A3, 000000F4(d)
?_066:  mov     eax, dword [buf_back]                   ; 117B _ A1, 000000F8(d)
        push    15                                      ; 1180 _ 6A, 0F
        push    79                                      ; 1182 _ 6A, 4F
        push    0                                       ; 1184 _ 6A, 00
        push    0                                       ; 1186 _ 6A, 00
        push    14                                      ; 1188 _ 6A, 0E
        push    dword [ebp-10H]                         ; 118A _ FF. 75, F0
        push    eax                                     ; 118D _ 50
        call    boxfill8                                ; 118E _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 1193 _ 83. C4, 1C
        mov     eax, dword [buf_back]                   ; 1196 _ A1, 000000F8(d)
        sub     esp, 8                                  ; 119B _ 83. EC, 08
        push    ?_121                                   ; 119E _ 68, 00000017(d)
        push    3                                       ; 11A3 _ 6A, 03
        push    0                                       ; 11A5 _ 6A, 00
        push    0                                       ; 11A7 _ 6A, 00
        push    dword [ebp-10H]                         ; 11A9 _ FF. 75, F0
        push    eax                                     ; 11AC _ 50
        call    showString                              ; 11AD _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 11B2 _ 83. C4, 20
        nop                                             ; 11B5 _ 90
        leave                                           ; 11B6 _ C9
        ret                                             ; 11B7 _ C3
; computeMousePos End of function

showMemInfo:; Function begin
        push    ebp                                     ; 11B8 _ 55
        mov     ebp, esp                                ; 11B9 _ 89. E5
        sub     esp, 56                                 ; 11BB _ 83. EC, 38
        mov     dword [ebp-30H], 0                      ; 11BE _ C7. 45, D0, 00000000
        mov     dword [ebp-2CH], 0                      ; 11C5 _ C7. 45, D4, 00000000
        mov     dword [ebp-28H], 112                    ; 11CC _ C7. 45, D8, 00000070
        mov     dword [ebp-24H], 80                     ; 11D3 _ C7. 45, DC, 00000050
        push    100                                     ; 11DA _ 6A, 64
        push    dword [ebp+14H]                         ; 11DC _ FF. 75, 14
        push    0                                       ; 11DF _ 6A, 00
        push    0                                       ; 11E1 _ 6A, 00
        push    14                                      ; 11E3 _ 6A, 0E
        push    dword [ebp+14H]                         ; 11E5 _ FF. 75, 14
        push    dword [ebp+0CH]                         ; 11E8 _ FF. 75, 0C
        call    boxfill8                                ; 11EB _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 11F0 _ 83. C4, 1C
        mov     eax, dword [ebp+18H]                    ; 11F3 _ 8B. 45, 18
        movsx   eax, al                                 ; 11F6 _ 0F BE. C0
        sub     esp, 8                                  ; 11F9 _ 83. EC, 08
        push    ?_122                                   ; 11FC _ 68, 00000022(d)
        push    eax                                     ; 1201 _ 50
        push    dword [ebp-2CH]                         ; 1202 _ FF. 75, D4
        push    dword [ebp-30H]                         ; 1205 _ FF. 75, D0
        push    dword [ebp+14H]                         ; 1208 _ FF. 75, 14
        push    dword [ebp+0CH]                         ; 120B _ FF. 75, 0C
        call    showString                              ; 120E _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1213 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 1216 _ 8B. 45, 10
        sub     esp, 12                                 ; 1219 _ 83. EC, 0C
        push    eax                                     ; 121C _ 50
        call    intToHexStr                             ; 121D _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1222 _ 83. C4, 10
        mov     dword [ebp-20H], eax                    ; 1225 _ 89. 45, E0
        mov     eax, dword [ebp+18H]                    ; 1228 _ 8B. 45, 18
        movsx   eax, al                                 ; 122B _ 0F BE. C0
        sub     esp, 8                                  ; 122E _ 83. EC, 08
        push    dword [ebp-20H]                         ; 1231 _ FF. 75, E0
        push    eax                                     ; 1234 _ 50
        push    dword [ebp-2CH]                         ; 1235 _ FF. 75, D4
        push    dword [ebp-28H]                         ; 1238 _ FF. 75, D8
        push    dword [ebp+14H]                         ; 123B _ FF. 75, 14
        push    dword [ebp+0CH]                         ; 123E _ FF. 75, 0C
        call    showString                              ; 1241 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1246 _ 83. C4, 20
        add     dword [ebp-2CH], 16                     ; 1249 _ 83. 45, D4, 10
        mov     eax, dword [ebp+18H]                    ; 124D _ 8B. 45, 18
        movsx   eax, al                                 ; 1250 _ 0F BE. C0
        sub     esp, 8                                  ; 1253 _ 83. EC, 08
        push    ?_123                                   ; 1256 _ 68, 0000002C(d)
        push    eax                                     ; 125B _ 50
        push    dword [ebp-2CH]                         ; 125C _ FF. 75, D4
        push    dword [ebp-30H]                         ; 125F _ FF. 75, D0
        push    dword [ebp+14H]                         ; 1262 _ FF. 75, 14
        push    dword [ebp+0CH]                         ; 1265 _ FF. 75, 0C
        call    showString                              ; 1268 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 126D _ 83. C4, 20
        mov     eax, dword [ebp+8H]                     ; 1270 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 1273 _ 8B. 00
        sub     esp, 12                                 ; 1275 _ 83. EC, 0C
        push    eax                                     ; 1278 _ 50
        call    intToHexStr                             ; 1279 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 127E _ 83. C4, 10
        mov     dword [ebp-1CH], eax                    ; 1281 _ 89. 45, E4
        mov     eax, dword [ebp+18H]                    ; 1284 _ 8B. 45, 18
        movsx   eax, al                                 ; 1287 _ 0F BE. C0
        sub     esp, 8                                  ; 128A _ 83. EC, 08
        push    dword [ebp-1CH]                         ; 128D _ FF. 75, E4
        push    eax                                     ; 1290 _ 50
        push    dword [ebp-2CH]                         ; 1291 _ FF. 75, D4
        push    dword [ebp-28H]                         ; 1294 _ FF. 75, D8
        push    dword [ebp+14H]                         ; 1297 _ FF. 75, 14
        push    dword [ebp+0CH]                         ; 129A _ FF. 75, 0C
        call    showString                              ; 129D _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 12A2 _ 83. C4, 20
        add     dword [ebp-2CH], 16                     ; 12A5 _ 83. 45, D4, 10
        mov     eax, dword [ebp+18H]                    ; 12A9 _ 8B. 45, 18
        movsx   eax, al                                 ; 12AC _ 0F BE. C0
        sub     esp, 8                                  ; 12AF _ 83. EC, 08
        push    ?_124                                   ; 12B2 _ 68, 0000003A(d)
        push    eax                                     ; 12B7 _ 50
        push    dword [ebp-2CH]                         ; 12B8 _ FF. 75, D4
        push    dword [ebp-30H]                         ; 12BB _ FF. 75, D0
        push    dword [ebp+14H]                         ; 12BE _ FF. 75, 14
        push    dword [ebp+0CH]                         ; 12C1 _ FF. 75, 0C
        call    showString                              ; 12C4 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 12C9 _ 83. C4, 20
        mov     eax, dword [ebp+8H]                     ; 12CC _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 12CF _ 8B. 40, 04
        sub     esp, 12                                 ; 12D2 _ 83. EC, 0C
        push    eax                                     ; 12D5 _ 50
        call    intToHexStr                             ; 12D6 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 12DB _ 83. C4, 10
        mov     dword [ebp-18H], eax                    ; 12DE _ 89. 45, E8
        mov     eax, dword [ebp+18H]                    ; 12E1 _ 8B. 45, 18
        movsx   eax, al                                 ; 12E4 _ 0F BE. C0
        sub     esp, 8                                  ; 12E7 _ 83. EC, 08
        push    dword [ebp-18H]                         ; 12EA _ FF. 75, E8
        push    eax                                     ; 12ED _ 50
        push    dword [ebp-2CH]                         ; 12EE _ FF. 75, D4
        push    dword [ebp-28H]                         ; 12F1 _ FF. 75, D8
        push    dword [ebp+14H]                         ; 12F4 _ FF. 75, 14
        push    dword [ebp+0CH]                         ; 12F7 _ FF. 75, 0C
        call    showString                              ; 12FA _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 12FF _ 83. C4, 20
        add     dword [ebp-2CH], 16                     ; 1302 _ 83. 45, D4, 10
        mov     eax, dword [ebp+18H]                    ; 1306 _ 8B. 45, 18
        movsx   eax, al                                 ; 1309 _ 0F BE. C0
        sub     esp, 8                                  ; 130C _ 83. EC, 08
        push    ?_125                                   ; 130F _ 68, 00000049(d)
        push    eax                                     ; 1314 _ 50
        push    dword [ebp-2CH]                         ; 1315 _ FF. 75, D4
        push    dword [ebp-30H]                         ; 1318 _ FF. 75, D0
        push    dword [ebp+14H]                         ; 131B _ FF. 75, 14
        push    dword [ebp+0CH]                         ; 131E _ FF. 75, 0C
        call    showString                              ; 1321 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1326 _ 83. C4, 20
        mov     eax, dword [ebp+8H]                     ; 1329 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 132C _ 8B. 40, 08
        sub     esp, 12                                 ; 132F _ 83. EC, 0C
        push    eax                                     ; 1332 _ 50
        call    intToHexStr                             ; 1333 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1338 _ 83. C4, 10
        mov     dword [ebp-14H], eax                    ; 133B _ 89. 45, EC
        mov     eax, dword [ebp+18H]                    ; 133E _ 8B. 45, 18
        movsx   eax, al                                 ; 1341 _ 0F BE. C0
        sub     esp, 8                                  ; 1344 _ 83. EC, 08
        push    dword [ebp-14H]                         ; 1347 _ FF. 75, EC
        push    eax                                     ; 134A _ 50
        push    dword [ebp-2CH]                         ; 134B _ FF. 75, D4
        push    dword [ebp-28H]                         ; 134E _ FF. 75, D8
        push    dword [ebp+14H]                         ; 1351 _ FF. 75, 14
        push    dword [ebp+0CH]                         ; 1354 _ FF. 75, 0C
        call    showString                              ; 1357 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 135C _ 83. C4, 20
        add     dword [ebp-2CH], 16                     ; 135F _ 83. 45, D4, 10
        mov     eax, dword [ebp+18H]                    ; 1363 _ 8B. 45, 18
        movsx   eax, al                                 ; 1366 _ 0F BE. C0
        sub     esp, 8                                  ; 1369 _ 83. EC, 08
        push    ?_126                                   ; 136C _ 68, 00000055(d)
        push    eax                                     ; 1371 _ 50
        push    dword [ebp-2CH]                         ; 1372 _ FF. 75, D4
        push    dword [ebp-30H]                         ; 1375 _ FF. 75, D0
        push    dword [ebp+14H]                         ; 1378 _ FF. 75, 14
        push    dword [ebp+0CH]                         ; 137B _ FF. 75, 0C
        call    showString                              ; 137E _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1383 _ 83. C4, 20
        mov     eax, dword [ebp+8H]                     ; 1386 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 1389 _ 8B. 40, 0C
        sub     esp, 12                                 ; 138C _ 83. EC, 0C
        push    eax                                     ; 138F _ 50
        call    intToHexStr                             ; 1390 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1395 _ 83. C4, 10
        mov     dword [ebp-10H], eax                    ; 1398 _ 89. 45, F0
        mov     eax, dword [ebp+18H]                    ; 139B _ 8B. 45, 18
        movsx   eax, al                                 ; 139E _ 0F BE. C0
        sub     esp, 8                                  ; 13A1 _ 83. EC, 08
        push    dword [ebp-10H]                         ; 13A4 _ FF. 75, F0
        push    eax                                     ; 13A7 _ 50
        push    dword [ebp-2CH]                         ; 13A8 _ FF. 75, D4
        push    dword [ebp-28H]                         ; 13AB _ FF. 75, D8
        push    dword [ebp+14H]                         ; 13AE _ FF. 75, 14
        push    dword [ebp+0CH]                         ; 13B1 _ FF. 75, 0C
        call    showString                              ; 13B4 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 13B9 _ 83. C4, 20
        add     dword [ebp-2CH], 16                     ; 13BC _ 83. 45, D4, 10
        mov     eax, dword [ebp+18H]                    ; 13C0 _ 8B. 45, 18
        movsx   eax, al                                 ; 13C3 _ 0F BE. C0
        sub     esp, 8                                  ; 13C6 _ 83. EC, 08
        push    ?_127                                   ; 13C9 _ 68, 00000062(d)
        push    eax                                     ; 13CE _ 50
        push    dword [ebp-2CH]                         ; 13CF _ FF. 75, D4
        push    dword [ebp-30H]                         ; 13D2 _ FF. 75, D0
        push    dword [ebp+14H]                         ; 13D5 _ FF. 75, 14
        push    dword [ebp+0CH]                         ; 13D8 _ FF. 75, 0C
        call    showString                              ; 13DB _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 13E0 _ 83. C4, 20
        mov     eax, dword [ebp+8H]                     ; 13E3 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 13E6 _ 8B. 40, 10
        sub     esp, 12                                 ; 13E9 _ 83. EC, 0C
        push    eax                                     ; 13EC _ 50
        call    intToHexStr                             ; 13ED _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 13F2 _ 83. C4, 10
        mov     dword [ebp-0CH], eax                    ; 13F5 _ 89. 45, F4
        mov     eax, dword [ebp+18H]                    ; 13F8 _ 8B. 45, 18
        movsx   eax, al                                 ; 13FB _ 0F BE. C0
        sub     esp, 8                                  ; 13FE _ 83. EC, 08
        push    dword [ebp-0CH]                         ; 1401 _ FF. 75, F4
        push    eax                                     ; 1404 _ 50
        push    dword [ebp-2CH]                         ; 1405 _ FF. 75, D4
        push    dword [ebp-28H]                         ; 1408 _ FF. 75, D8
        push    dword [ebp+14H]                         ; 140B _ FF. 75, 14
        push    dword [ebp+0CH]                         ; 140E _ FF. 75, 0C
        call    showString                              ; 1411 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1416 _ 83. C4, 20
        add     dword [ebp-2CH], 16                     ; 1419 _ 83. 45, D4, 10
        nop                                             ; 141D _ 90
        leave                                           ; 141E _ C9
        ret                                             ; 141F _ C3
; showMemInfo End of function

memman_init:; Function begin
        push    ebp                                     ; 1420 _ 55
        mov     ebp, esp                                ; 1421 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 1423 _ 8B. 45, 08
        mov     dword [eax], 0                          ; 1426 _ C7. 00, 00000000
        mov     eax, dword [ebp+8H]                     ; 142C _ 8B. 45, 08
        mov     dword [eax+4H], 0                       ; 142F _ C7. 40, 04, 00000000
        mov     eax, dword [ebp+8H]                     ; 1436 _ 8B. 45, 08
        mov     dword [eax+8H], 0                       ; 1439 _ C7. 40, 08, 00000000
        mov     eax, dword [ebp+8H]                     ; 1440 _ 8B. 45, 08
        mov     dword [eax+0CH], 0                      ; 1443 _ C7. 40, 0C, 00000000
        nop                                             ; 144A _ 90
        pop     ebp                                     ; 144B _ 5D
        ret                                             ; 144C _ C3
; memman_init End of function

memman_total:; Function begin
        push    ebp                                     ; 144D _ 55
        mov     ebp, esp                                ; 144E _ 89. E5
        sub     esp, 16                                 ; 1450 _ 83. EC, 10
        mov     dword [ebp-8H], 0                       ; 1453 _ C7. 45, F8, 00000000
        mov     dword [ebp-4H], 0                       ; 145A _ C7. 45, FC, 00000000
        jmp     ?_068                                   ; 1461 _ EB, 14

?_067:  mov     eax, dword [ebp+8H]                     ; 1463 _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 1466 _ 8B. 55, FC
        add     edx, 2                                  ; 1469 _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 146C _ 8B. 44 D0, 04
        add     dword [ebp-8H], eax                     ; 1470 _ 01. 45, F8
        add     dword [ebp-4H], 1                       ; 1473 _ 83. 45, FC, 01
?_068:  mov     eax, dword [ebp+8H]                     ; 1477 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 147A _ 8B. 00
        cmp     dword [ebp-4H], eax                     ; 147C _ 39. 45, FC
        jl      ?_067                                   ; 147F _ 7C, E2
        mov     eax, dword [ebp-8H]                     ; 1481 _ 8B. 45, F8
        leave                                           ; 1484 _ C9
        ret                                             ; 1485 _ C3
; memman_total End of function

memman_alloc_FF:; Function begin
        push    ebp                                     ; 1486 _ 55
        mov     ebp, esp                                ; 1487 _ 89. E5
        sub     esp, 16                                 ; 1489 _ 83. EC, 10
        mov     dword [ebp-8H], 0                       ; 148C _ C7. 45, F8, 00000000
        jmp     ?_072                                   ; 1493 _ E9, 00000085

?_069:  mov     eax, dword [ebp+8H]                     ; 1498 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 149B _ 8B. 55, F8
        add     edx, 2                                  ; 149E _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 14A1 _ 8B. 44 D0, 04
        cmp     dword [ebp+0CH], eax                    ; 14A5 _ 39. 45, 0C
        ja      ?_071                                   ; 14A8 _ 77, 6F
        mov     eax, dword [ebp+8H]                     ; 14AA _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 14AD _ 8B. 55, F8
        add     edx, 2                                  ; 14B0 _ 83. C2, 02
        mov     eax, dword [eax+edx*8]                  ; 14B3 _ 8B. 04 D0
        mov     dword [ebp-4H], eax                     ; 14B6 _ 89. 45, FC
        mov     eax, dword [ebp+8H]                     ; 14B9 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 14BC _ 8B. 55, F8
        add     edx, 2                                  ; 14BF _ 83. C2, 02
        mov     edx, dword [eax+edx*8]                  ; 14C2 _ 8B. 14 D0
        mov     eax, dword [ebp+0CH]                    ; 14C5 _ 8B. 45, 0C
        lea     ecx, [edx+eax]                          ; 14C8 _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 14CB _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 14CE _ 8B. 55, F8
        add     edx, 2                                  ; 14D1 _ 83. C2, 02
        mov     dword [eax+edx*8], ecx                  ; 14D4 _ 89. 0C D0
        mov     eax, dword [ebp+8H]                     ; 14D7 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 14DA _ 8B. 55, F8
        add     edx, 2                                  ; 14DD _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 14E0 _ 8B. 44 D0, 04
        sub     eax, dword [ebp+0CH]                    ; 14E4 _ 2B. 45, 0C
        mov     edx, eax                                ; 14E7 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 14E9 _ 8B. 45, 08
        mov     ecx, dword [ebp-8H]                     ; 14EC _ 8B. 4D, F8
        add     ecx, 2                                  ; 14EF _ 83. C1, 02
        mov     dword [eax+ecx*8+4H], edx               ; 14F2 _ 89. 54 C8, 04
        mov     eax, dword [ebp+8H]                     ; 14F6 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 14F9 _ 8B. 55, F8
        add     edx, 2                                  ; 14FC _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 14FF _ 8B. 44 D0, 04
        test    eax, eax                                ; 1503 _ 85. C0
        jnz     ?_070                                   ; 1505 _ 75, 0D
        mov     eax, dword [ebp+8H]                     ; 1507 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 150A _ 8B. 00
        lea     edx, [eax-1H]                           ; 150C _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 150F _ 8B. 45, 08
        mov     dword [eax], edx                        ; 1512 _ 89. 10
?_070:  mov     eax, dword [ebp-4H]                     ; 1514 _ 8B. 45, FC
        jmp     ?_073                                   ; 1517 _ EB, 17

?_071:  add     dword [ebp-8H], 1                       ; 1519 _ 83. 45, F8, 01
?_072:  mov     eax, dword [ebp+8H]                     ; 151D _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 1520 _ 8B. 00
        cmp     dword [ebp-8H], eax                     ; 1522 _ 39. 45, F8
        jl      ?_069                                   ; 1525 _ 0F 8C, FFFFFF6D
        mov     eax, 0                                  ; 152B _ B8, 00000000
?_073:  leave                                           ; 1530 _ C9
        ret                                             ; 1531 _ C3
; memman_alloc_FF End of function

memman_alloc_4K:; Function begin
        push    ebp                                     ; 1532 _ 55
        mov     ebp, esp                                ; 1533 _ 89. E5
        sub     esp, 16                                 ; 1535 _ 83. EC, 10
        mov     eax, dword [ebp+0CH]                    ; 1538 _ 8B. 45, 0C
        add     eax, 4095                               ; 153B _ 05, 00000FFF
        and     eax, 0FFFFF000H                         ; 1540 _ 25, FFFFF000
        mov     dword [ebp+0CH], eax                    ; 1545 _ 89. 45, 0C
        push    dword [ebp+0CH]                         ; 1548 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 154B _ FF. 75, 08
        call    memman_alloc_FF                         ; 154E _ E8, FFFFFFFC(rel)
        add     esp, 8                                  ; 1553 _ 83. C4, 08
        mov     dword [ebp-4H], eax                     ; 1556 _ 89. 45, FC
        mov     eax, dword [ebp-4H]                     ; 1559 _ 8B. 45, FC
        leave                                           ; 155C _ C9
        ret                                             ; 155D _ C3
; memman_alloc_4K End of function

memman_free:; Function begin
        push    ebp                                     ; 155E _ 55
        mov     ebp, esp                                ; 155F _ 89. E5
        push    ebx                                     ; 1561 _ 53
        sub     esp, 16                                 ; 1562 _ 83. EC, 10
        mov     dword [ebp-0CH], 0                      ; 1565 _ C7. 45, F4, 00000000
        jmp     ?_075                                   ; 156C _ EB, 15

?_074:  mov     eax, dword [ebp+8H]                     ; 156E _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 1571 _ 8B. 55, F4
        add     edx, 2                                  ; 1574 _ 83. C2, 02
        mov     eax, dword [eax+edx*8]                  ; 1577 _ 8B. 04 D0
        cmp     dword [ebp+0CH], eax                    ; 157A _ 39. 45, 0C
        jc      ?_076                                   ; 157D _ 72, 10
        add     dword [ebp-0CH], 1                      ; 157F _ 83. 45, F4, 01
?_075:  mov     eax, dword [ebp+8H]                     ; 1583 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 1586 _ 8B. 00
        cmp     dword [ebp-0CH], eax                    ; 1588 _ 39. 45, F4
        jl      ?_074                                   ; 158B _ 7C, E1
        jmp     ?_077                                   ; 158D _ EB, 01

?_076:  nop                                             ; 158F _ 90
?_077:  cmp     dword [ebp-0CH], 0                      ; 1590 _ 83. 7D, F4, 00
        jle     ?_079                                   ; 1594 _ 0F 8E, 000000BA
        mov     eax, dword [ebp-0CH]                    ; 159A _ 8B. 45, F4
        lea     edx, [eax-1H]                           ; 159D _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 15A0 _ 8B. 45, 08
        add     edx, 2                                  ; 15A3 _ 83. C2, 02
        mov     edx, dword [eax+edx*8]                  ; 15A6 _ 8B. 14 D0
        mov     eax, dword [ebp-0CH]                    ; 15A9 _ 8B. 45, F4
        lea     ecx, [eax-1H]                           ; 15AC _ 8D. 48, FF
        mov     eax, dword [ebp+8H]                     ; 15AF _ 8B. 45, 08
        add     ecx, 2                                  ; 15B2 _ 83. C1, 02
        mov     eax, dword [eax+ecx*8+4H]               ; 15B5 _ 8B. 44 C8, 04
        add     eax, edx                                ; 15B9 _ 01. D0
        cmp     dword [ebp+0CH], eax                    ; 15BB _ 39. 45, 0C
        jne     ?_079                                   ; 15BE _ 0F 85, 00000090
        mov     eax, dword [ebp-0CH]                    ; 15C4 _ 8B. 45, F4
        lea     edx, [eax-1H]                           ; 15C7 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 15CA _ 8B. 45, 08
        add     edx, 2                                  ; 15CD _ 83. C2, 02
        mov     edx, dword [eax+edx*8+4H]               ; 15D0 _ 8B. 54 D0, 04
        mov     eax, dword [ebp-0CH]                    ; 15D4 _ 8B. 45, F4
        lea     ebx, [eax-1H]                           ; 15D7 _ 8D. 58, FF
        mov     eax, dword [ebp+10H]                    ; 15DA _ 8B. 45, 10
        lea     ecx, [edx+eax]                          ; 15DD _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 15E0 _ 8B. 45, 08
        lea     edx, [ebx+2H]                           ; 15E3 _ 8D. 53, 02
        mov     dword [eax+edx*8+4H], ecx               ; 15E6 _ 89. 4C D0, 04
        mov     eax, dword [ebp+8H]                     ; 15EA _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 15ED _ 8B. 00
        cmp     dword [ebp-0CH], eax                    ; 15EF _ 39. 45, F4
        jge     ?_078                                   ; 15F2 _ 7D, 56
        mov     edx, dword [ebp+0CH]                    ; 15F4 _ 8B. 55, 0C
        mov     eax, dword [ebp+10H]                    ; 15F7 _ 8B. 45, 10
        lea     ecx, [edx+eax]                          ; 15FA _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 15FD _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 1600 _ 8B. 55, F4
        add     edx, 2                                  ; 1603 _ 83. C2, 02
        mov     eax, dword [eax+edx*8]                  ; 1606 _ 8B. 04 D0
        cmp     ecx, eax                                ; 1609 _ 39. C1
        jnz     ?_078                                   ; 160B _ 75, 3D
        mov     eax, dword [ebp-0CH]                    ; 160D _ 8B. 45, F4
        lea     edx, [eax-1H]                           ; 1610 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 1613 _ 8B. 45, 08
        add     edx, 2                                  ; 1616 _ 83. C2, 02
        mov     edx, dword [eax+edx*8+4H]               ; 1619 _ 8B. 54 D0, 04
        mov     eax, dword [ebp+8H]                     ; 161D _ 8B. 45, 08
        mov     ecx, dword [ebp-0CH]                    ; 1620 _ 8B. 4D, F4
        add     ecx, 2                                  ; 1623 _ 83. C1, 02
        mov     eax, dword [eax+ecx*8+4H]               ; 1626 _ 8B. 44 C8, 04
        mov     ecx, dword [ebp-0CH]                    ; 162A _ 8B. 4D, F4
        lea     ebx, [ecx-1H]                           ; 162D _ 8D. 59, FF
        lea     ecx, [edx+eax]                          ; 1630 _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 1633 _ 8B. 45, 08
        lea     edx, [ebx+2H]                           ; 1636 _ 8D. 53, 02
        mov     dword [eax+edx*8+4H], ecx               ; 1639 _ 89. 4C D0, 04
        mov     eax, dword [ebp+8H]                     ; 163D _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 1640 _ 8B. 00
        lea     edx, [eax-1H]                           ; 1642 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 1645 _ 8B. 45, 08
        mov     dword [eax], edx                        ; 1648 _ 89. 10
?_078:  mov     eax, 0                                  ; 164A _ B8, 00000000
        jmp     ?_085                                   ; 164F _ E9, 0000011C

?_079:  mov     eax, dword [ebp+8H]                     ; 1654 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 1657 _ 8B. 00
        cmp     dword [ebp-0CH], eax                    ; 1659 _ 39. 45, F4
        jge     ?_080                                   ; 165C _ 7D, 52
        mov     edx, dword [ebp+0CH]                    ; 165E _ 8B. 55, 0C
        mov     eax, dword [ebp+10H]                    ; 1661 _ 8B. 45, 10
        lea     ecx, [edx+eax]                          ; 1664 _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 1667 _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 166A _ 8B. 55, F4
        add     edx, 2                                  ; 166D _ 83. C2, 02
        mov     eax, dword [eax+edx*8]                  ; 1670 _ 8B. 04 D0
        cmp     ecx, eax                                ; 1673 _ 39. C1
        jnz     ?_080                                   ; 1675 _ 75, 39
        mov     eax, dword [ebp+8H]                     ; 1677 _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 167A _ 8B. 55, F4
        lea     ecx, [edx+2H]                           ; 167D _ 8D. 4A, 02
        mov     edx, dword [ebp+0CH]                    ; 1680 _ 8B. 55, 0C
        mov     dword [eax+ecx*8], edx                  ; 1683 _ 89. 14 C8
        mov     eax, dword [ebp+8H]                     ; 1686 _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 1689 _ 8B. 55, F4
        add     edx, 2                                  ; 168C _ 83. C2, 02
        mov     edx, dword [eax+edx*8+4H]               ; 168F _ 8B. 54 D0, 04
        mov     eax, dword [ebp+10H]                    ; 1693 _ 8B. 45, 10
        lea     ecx, [edx+eax]                          ; 1696 _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 1699 _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 169C _ 8B. 55, F4
        add     edx, 2                                  ; 169F _ 83. C2, 02
        mov     dword [eax+edx*8+4H], ecx               ; 16A2 _ 89. 4C D0, 04
        mov     eax, 0                                  ; 16A6 _ B8, 00000000
        jmp     ?_085                                   ; 16AB _ E9, 000000C0

?_080:  mov     eax, dword [ebp+8H]                     ; 16B0 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 16B3 _ 8B. 00
        cmp     eax, 4095                               ; 16B5 _ 3D, 00000FFF
        jg      ?_084                                   ; 16BA _ 0F 8F, 00000087
        mov     eax, dword [ebp+8H]                     ; 16C0 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 16C3 _ 8B. 00
        mov     dword [ebp-8H], eax                     ; 16C5 _ 89. 45, F8
        jmp     ?_082                                   ; 16C8 _ EB, 28

?_081:  mov     eax, dword [ebp-8H]                     ; 16CA _ 8B. 45, F8
        lea     edx, [eax-1H]                           ; 16CD _ 8D. 50, FF
        mov     ecx, dword [ebp+8H]                     ; 16D0 _ 8B. 4D, 08
        mov     eax, dword [ebp-8H]                     ; 16D3 _ 8B. 45, F8
        lea     ebx, [eax+2H]                           ; 16D6 _ 8D. 58, 02
        mov     eax, dword [ebp+8H]                     ; 16D9 _ 8B. 45, 08
        add     edx, 2                                  ; 16DC _ 83. C2, 02
        lea     edx, [eax+edx*8]                        ; 16DF _ 8D. 14 D0
        mov     eax, dword [edx]                        ; 16E2 _ 8B. 02
        mov     edx, dword [edx+4H]                     ; 16E4 _ 8B. 52, 04
        mov     dword [ecx+ebx*8], eax                  ; 16E7 _ 89. 04 D9
        mov     dword [ecx+ebx*8+4H], edx               ; 16EA _ 89. 54 D9, 04
        sub     dword [ebp-8H], 1                       ; 16EE _ 83. 6D, F8, 01
?_082:  mov     eax, dword [ebp-8H]                     ; 16F2 _ 8B. 45, F8
        cmp     eax, dword [ebp-0CH]                    ; 16F5 _ 3B. 45, F4
        jg      ?_081                                   ; 16F8 _ 7F, D0
        mov     eax, dword [ebp+8H]                     ; 16FA _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 16FD _ 8B. 00
        lea     edx, [eax+1H]                           ; 16FF _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 1702 _ 8B. 45, 08
        mov     dword [eax], edx                        ; 1705 _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 1707 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 170A _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 170D _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 1710 _ 8B. 00
        cmp     edx, eax                                ; 1712 _ 39. C2
        jge     ?_083                                   ; 1714 _ 7D, 0B
        mov     eax, dword [ebp+8H]                     ; 1716 _ 8B. 45, 08
        mov     edx, dword [eax]                        ; 1719 _ 8B. 10
        mov     eax, dword [ebp+8H]                     ; 171B _ 8B. 45, 08
        mov     dword [eax+4H], edx                     ; 171E _ 89. 50, 04
?_083:  mov     eax, dword [ebp+8H]                     ; 1721 _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 1724 _ 8B. 55, F4
        lea     ecx, [edx+2H]                           ; 1727 _ 8D. 4A, 02
        mov     edx, dword [ebp+0CH]                    ; 172A _ 8B. 55, 0C
        mov     dword [eax+ecx*8], edx                  ; 172D _ 89. 14 C8
        mov     eax, dword [ebp+8H]                     ; 1730 _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 1733 _ 8B. 55, F4
        lea     ecx, [edx+2H]                           ; 1736 _ 8D. 4A, 02
        mov     edx, dword [ebp+10H]                    ; 1739 _ 8B. 55, 10
        mov     dword [eax+ecx*8+4H], edx               ; 173C _ 89. 54 C8, 04
        mov     eax, 0                                  ; 1740 _ B8, 00000000
        jmp     ?_085                                   ; 1745 _ EB, 29

?_084:  mov     eax, dword [ebp+8H]                     ; 1747 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 174A _ 8B. 40, 0C
        lea     edx, [eax+1H]                           ; 174D _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 1750 _ 8B. 45, 08
        mov     dword [eax+0CH], edx                    ; 1753 _ 89. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 1756 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 1759 _ 8B. 40, 08
        mov     edx, eax                                ; 175C _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 175E _ 8B. 45, 10
        add     eax, edx                                ; 1761 _ 01. D0
        mov     edx, eax                                ; 1763 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 1765 _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 1768 _ 89. 50, 08
        mov     eax, 4294967295                         ; 176B _ B8, FFFFFFFF
?_085:  add     esp, 16                                 ; 1770 _ 83. C4, 10
        pop     ebx                                     ; 1773 _ 5B
        pop     ebp                                     ; 1774 _ 5D
        ret                                             ; 1775 _ C3
; memman_free End of function

memman_free_4K:; Function begin
        push    ebp                                     ; 1776 _ 55
        mov     ebp, esp                                ; 1777 _ 89. E5
        sub     esp, 16                                 ; 1779 _ 83. EC, 10
        mov     eax, dword [ebp+10H]                    ; 177C _ 8B. 45, 10
        add     eax, 4095                               ; 177F _ 05, 00000FFF
        and     eax, 0FFFFF000H                         ; 1784 _ 25, FFFFF000
        mov     dword [ebp+10H], eax                    ; 1789 _ 89. 45, 10
        push    dword [ebp+10H]                         ; 178C _ FF. 75, 10
        push    dword [ebp+0CH]                         ; 178F _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1792 _ FF. 75, 08
        call    memman_free                             ; 1795 _ E8, FFFFFFFC(rel)
        add     esp, 12                                 ; 179A _ 83. C4, 0C
        mov     dword [ebp-4H], eax                     ; 179D _ 89. 45, FC
        mov     eax, dword [ebp-4H]                     ; 17A0 _ 8B. 45, FC
        leave                                           ; 17A3 _ C9
        ret                                             ; 17A4 _ C3
; memman_free_4K End of function

shtctl_init:; Function begin
        push    ebp                                     ; 17A5 _ 55
        mov     ebp, esp                                ; 17A6 _ 89. E5
        sub     esp, 24                                 ; 17A8 _ 83. EC, 18
        sub     esp, 8                                  ; 17AB _ 83. EC, 08
        push    9232                                    ; 17AE _ 68, 00002410
        push    dword [ebp+8H]                          ; 17B3 _ FF. 75, 08
        call    memman_alloc_4K                         ; 17B6 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 17BB _ 83. C4, 10
        mov     dword [ebp-0CH], eax                    ; 17BE _ 89. 45, F4
        cmp     dword [ebp-0CH], 0                      ; 17C1 _ 83. 7D, F4, 00
        jnz     ?_086                                   ; 17C5 _ 75, 07
        mov     eax, 0                                  ; 17C7 _ B8, 00000000
        jmp     ?_089                                   ; 17CC _ EB, 54

?_086:  mov     eax, dword [ebp-0CH]                    ; 17CE _ 8B. 45, F4
        mov     edx, dword [ebp+0CH]                    ; 17D1 _ 8B. 55, 0C
        mov     dword [eax], edx                        ; 17D4 _ 89. 10
        mov     eax, dword [ebp-0CH]                    ; 17D6 _ 8B. 45, F4
        mov     edx, dword [ebp+10H]                    ; 17D9 _ 8B. 55, 10
        mov     dword [eax+4H], edx                     ; 17DC _ 89. 50, 04
        mov     eax, dword [ebp-0CH]                    ; 17DF _ 8B. 45, F4
        mov     edx, dword [ebp+14H]                    ; 17E2 _ 8B. 55, 14
        mov     dword [eax+8H], edx                     ; 17E5 _ 89. 50, 08
        mov     eax, dword [ebp-0CH]                    ; 17E8 _ 8B. 45, F4
        mov     dword [eax+0CH], -1                     ; 17EB _ C7. 40, 0C, FFFFFFFF
        mov     dword [ebp-10H], 0                      ; 17F2 _ C7. 45, F0, 00000000
        jmp     ?_088                                   ; 17F9 _ EB, 1B

?_087:  mov     eax, dword [ebp-0CH]                    ; 17FB _ 8B. 45, F4
        mov     edx, dword [ebp-10H]                    ; 17FE _ 8B. 55, F0
        add     edx, 33                                 ; 1801 _ 83. C2, 21
        shl     edx, 5                                  ; 1804 _ C1. E2, 05
        add     eax, edx                                ; 1807 _ 01. D0
        add     eax, 12                                 ; 1809 _ 83. C0, 0C
        mov     dword [eax], 0                          ; 180C _ C7. 00, 00000000
        add     dword [ebp-10H], 1                      ; 1812 _ 83. 45, F0, 01
?_088:  cmp     dword [ebp-10H], 255                    ; 1816 _ 81. 7D, F0, 000000FF
        jle     ?_087                                   ; 181D _ 7E, DC
        mov     eax, dword [ebp-0CH]                    ; 181F _ 8B. 45, F4
?_089:  leave                                           ; 1822 _ C9
        ret                                             ; 1823 _ C3
; shtctl_init End of function

sheet_alloc:; Function begin
        push    ebp                                     ; 1824 _ 55
        mov     ebp, esp                                ; 1825 _ 89. E5
        sub     esp, 16                                 ; 1827 _ 83. EC, 10
        mov     dword [ebp-8H], 0                       ; 182A _ C7. 45, F8, 00000000
        jmp     ?_092                                   ; 1831 _ EB, 48

?_090:  mov     eax, dword [ebp+8H]                     ; 1833 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 1836 _ 8B. 55, F8
        add     edx, 33                                 ; 1839 _ 83. C2, 21
        shl     edx, 5                                  ; 183C _ C1. E2, 05
        add     eax, edx                                ; 183F _ 01. D0
        add     eax, 12                                 ; 1841 _ 83. C0, 0C
        mov     eax, dword [eax]                        ; 1844 _ 8B. 00
        test    eax, eax                                ; 1846 _ 85. C0
        jnz     ?_091                                   ; 1848 _ 75, 2D
        mov     eax, dword [ebp-8H]                     ; 184A _ 8B. 45, F8
        shl     eax, 5                                  ; 184D _ C1. E0, 05
        lea     edx, [eax+410H]                         ; 1850 _ 8D. 90, 00000410
        mov     eax, dword [ebp+8H]                     ; 1856 _ 8B. 45, 08
        add     eax, edx                                ; 1859 _ 01. D0
        mov     dword [ebp-4H], eax                     ; 185B _ 89. 45, FC
        mov     eax, dword [ebp-4H]                     ; 185E _ 8B. 45, FC
        mov     dword [eax+1CH], 1                      ; 1861 _ C7. 40, 1C, 00000001
        mov     eax, dword [ebp-4H]                     ; 1868 _ 8B. 45, FC
        mov     dword [eax+18H], -1                     ; 186B _ C7. 40, 18, FFFFFFFF
        mov     eax, dword [ebp-4H]                     ; 1872 _ 8B. 45, FC
        jmp     ?_093                                   ; 1875 _ EB, 12

?_091:  add     dword [ebp-8H], 1                       ; 1877 _ 83. 45, F8, 01
?_092:  cmp     dword [ebp-8H], 255                     ; 187B _ 81. 7D, F8, 000000FF
        jle     ?_090                                   ; 1882 _ 7E, AF
        mov     eax, 0                                  ; 1884 _ B8, 00000000
?_093:  leave                                           ; 1889 _ C9
        ret                                             ; 188A _ C3
; sheet_alloc End of function

sheet_setbuf:; Function begin
        push    ebp                                     ; 188B _ 55
        mov     ebp, esp                                ; 188C _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 188E _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 1891 _ 8B. 55, 0C
        mov     dword [eax], edx                        ; 1894 _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 1896 _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 1899 _ 8B. 55, 10
        mov     dword [eax+4H], edx                     ; 189C _ 89. 50, 04
        mov     eax, dword [ebp+8H]                     ; 189F _ 8B. 45, 08
        mov     edx, dword [ebp+14H]                    ; 18A2 _ 8B. 55, 14
        mov     dword [eax+8H], edx                     ; 18A5 _ 89. 50, 08
        mov     eax, dword [ebp+8H]                     ; 18A8 _ 8B. 45, 08
        mov     edx, dword [ebp+18H]                    ; 18AB _ 8B. 55, 18
        mov     dword [eax+14H], edx                    ; 18AE _ 89. 50, 14
        nop                                             ; 18B1 _ 90
        pop     ebp                                     ; 18B2 _ 5D
        ret                                             ; 18B3 _ C3
; sheet_setbuf End of function

sheet_level_updown:; Function begin
        push    ebp                                     ; 18B4 _ 55
        mov     ebp, esp                                ; 18B5 _ 89. E5
        sub     esp, 40                                 ; 18B7 _ 83. EC, 28
        mov     eax, dword [ebp+0CH]                    ; 18BA _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 18BD _ 8B. 40, 18
        mov     dword [ebp-0CH], eax                    ; 18C0 _ 89. 45, F4
        mov     eax, dword [ebp+8H]                     ; 18C3 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 18C6 _ 8B. 40, 0C
        add     eax, 1                                  ; 18C9 _ 83. C0, 01
        cmp     dword [ebp+10H], eax                    ; 18CC _ 39. 45, 10
        jle     ?_094                                   ; 18CF _ 7E, 0C
        mov     eax, dword [ebp+8H]                     ; 18D1 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 18D4 _ 8B. 40, 0C
        add     eax, 1                                  ; 18D7 _ 83. C0, 01
        mov     dword [ebp+10H], eax                    ; 18DA _ 89. 45, 10
?_094:  cmp     dword [ebp+10H], -1                     ; 18DD _ 83. 7D, 10, FF
        jge     ?_095                                   ; 18E1 _ 7D, 07
        mov     dword [ebp+10H], -1                     ; 18E3 _ C7. 45, 10, FFFFFFFF
?_095:  mov     eax, dword [ebp+0CH]                    ; 18EA _ 8B. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 18ED _ 8B. 55, 10
        mov     dword [eax+18H], edx                    ; 18F0 _ 89. 50, 18
        mov     eax, dword [ebp-0CH]                    ; 18F3 _ 8B. 45, F4
        cmp     eax, dword [ebp+10H]                    ; 18F6 _ 3B. 45, 10
        jle     ?_103                                   ; 18F9 _ 0F 8E, 000000C9
        cmp     dword [ebp+10H], 0                      ; 18FF _ 83. 7D, 10, 00
        js      ?_098                                   ; 1903 _ 78, 52
        mov     eax, dword [ebp-0CH]                    ; 1905 _ 8B. 45, F4
        mov     dword [ebp-1CH], eax                    ; 1908 _ 89. 45, E4
        jmp     ?_097                                   ; 190B _ EB, 31

?_096:  mov     eax, dword [ebp-1CH]                    ; 190D _ 8B. 45, E4
        lea     edx, [eax-1H]                           ; 1910 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 1913 _ 8B. 45, 08
        add     edx, 4                                  ; 1916 _ 83. C2, 04
        mov     edx, dword [eax+edx*4]                  ; 1919 _ 8B. 14 90
        mov     eax, dword [ebp+8H]                     ; 191C _ 8B. 45, 08
        mov     ecx, dword [ebp-1CH]                    ; 191F _ 8B. 4D, E4
        add     ecx, 4                                  ; 1922 _ 83. C1, 04
        mov     dword [eax+ecx*4], edx                  ; 1925 _ 89. 14 88
        mov     eax, dword [ebp+8H]                     ; 1928 _ 8B. 45, 08
        mov     edx, dword [ebp-1CH]                    ; 192B _ 8B. 55, E4
        add     edx, 4                                  ; 192E _ 83. C2, 04
        mov     eax, dword [eax+edx*4]                  ; 1931 _ 8B. 04 90
        mov     edx, dword [ebp-1CH]                    ; 1934 _ 8B. 55, E4
        mov     dword [eax+18H], edx                    ; 1937 _ 89. 50, 18
        sub     dword [ebp-1CH], 1                      ; 193A _ 83. 6D, E4, 01
?_097:  mov     eax, dword [ebp-1CH]                    ; 193E _ 8B. 45, E4
        cmp     eax, dword [ebp+10H]                    ; 1941 _ 3B. 45, 10
        jg      ?_096                                   ; 1944 _ 7F, C7
        mov     eax, dword [ebp+8H]                     ; 1946 _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 1949 _ 8B. 55, 10
        lea     ecx, [edx+4H]                           ; 194C _ 8D. 4A, 04
        mov     edx, dword [ebp+0CH]                    ; 194F _ 8B. 55, 0C
        mov     dword [eax+ecx*4], edx                  ; 1952 _ 89. 14 88
        jmp     ?_102                                   ; 1955 _ EB, 5E

?_098:  mov     eax, dword [ebp+8H]                     ; 1957 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 195A _ 8B. 40, 0C
        cmp     dword [ebp-0CH], eax                    ; 195D _ 39. 45, F4
        jge     ?_101                                   ; 1960 _ 7D, 44
        mov     eax, dword [ebp-0CH]                    ; 1962 _ 8B. 45, F4
        mov     dword [ebp-18H], eax                    ; 1965 _ 89. 45, E8
        jmp     ?_100                                   ; 1968 _ EB, 31

?_099:  mov     eax, dword [ebp-18H]                    ; 196A _ 8B. 45, E8
        lea     edx, [eax+1H]                           ; 196D _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 1970 _ 8B. 45, 08
        add     edx, 4                                  ; 1973 _ 83. C2, 04
        mov     edx, dword [eax+edx*4]                  ; 1976 _ 8B. 14 90
        mov     eax, dword [ebp+8H]                     ; 1979 _ 8B. 45, 08
        mov     ecx, dword [ebp-18H]                    ; 197C _ 8B. 4D, E8
        add     ecx, 4                                  ; 197F _ 83. C1, 04
        mov     dword [eax+ecx*4], edx                  ; 1982 _ 89. 14 88
        mov     eax, dword [ebp+8H]                     ; 1985 _ 8B. 45, 08
        mov     edx, dword [ebp-18H]                    ; 1988 _ 8B. 55, E8
        add     edx, 4                                  ; 198B _ 83. C2, 04
        mov     eax, dword [eax+edx*4]                  ; 198E _ 8B. 04 90
        mov     edx, dword [ebp-18H]                    ; 1991 _ 8B. 55, E8
        mov     dword [eax+18H], edx                    ; 1994 _ 89. 50, 18
        add     dword [ebp-18H], 1                      ; 1997 _ 83. 45, E8, 01
?_100:  mov     eax, dword [ebp+8H]                     ; 199B _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 199E _ 8B. 40, 0C
        cmp     dword [ebp-18H], eax                    ; 19A1 _ 39. 45, E8
        jl      ?_099                                   ; 19A4 _ 7C, C4
?_101:  mov     eax, dword [ebp+8H]                     ; 19A6 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 19A9 _ 8B. 40, 0C
        lea     edx, [eax-1H]                           ; 19AC _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 19AF _ 8B. 45, 08
        mov     dword [eax+0CH], edx                    ; 19B2 _ 89. 50, 0C
?_102:  sub     esp, 12                                 ; 19B5 _ 83. EC, 0C
        push    dword [ebp+8H]                          ; 19B8 _ FF. 75, 08
        call    sheet_refresh                           ; 19BB _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 19C0 _ 83. C4, 10
        jmp     ?_110                                   ; 19C3 _ E9, 000000E0

?_103:  mov     eax, dword [ebp-0CH]                    ; 19C8 _ 8B. 45, F4
        cmp     eax, dword [ebp+10H]                    ; 19CB _ 3B. 45, 10
        jge     ?_110                                   ; 19CE _ 0F 8D, 000000D4
        cmp     dword [ebp-0CH], 0                      ; 19D4 _ 83. 7D, F4, 00
        js      ?_106                                   ; 19D8 _ 78, 52
        mov     eax, dword [ebp-0CH]                    ; 19DA _ 8B. 45, F4
        mov     dword [ebp-14H], eax                    ; 19DD _ 89. 45, EC
        jmp     ?_105                                   ; 19E0 _ EB, 31

?_104:  mov     eax, dword [ebp-14H]                    ; 19E2 _ 8B. 45, EC
        lea     edx, [eax+1H]                           ; 19E5 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 19E8 _ 8B. 45, 08
        add     edx, 4                                  ; 19EB _ 83. C2, 04
        mov     edx, dword [eax+edx*4]                  ; 19EE _ 8B. 14 90
        mov     eax, dword [ebp+8H]                     ; 19F1 _ 8B. 45, 08
        mov     ecx, dword [ebp-14H]                    ; 19F4 _ 8B. 4D, EC
        add     ecx, 4                                  ; 19F7 _ 83. C1, 04
        mov     dword [eax+ecx*4], edx                  ; 19FA _ 89. 14 88
        mov     eax, dword [ebp+8H]                     ; 19FD _ 8B. 45, 08
        mov     edx, dword [ebp-14H]                    ; 1A00 _ 8B. 55, EC
        add     edx, 4                                  ; 1A03 _ 83. C2, 04
        mov     eax, dword [eax+edx*4]                  ; 1A06 _ 8B. 04 90
        mov     edx, dword [ebp-14H]                    ; 1A09 _ 8B. 55, EC
        mov     dword [eax+18H], edx                    ; 1A0C _ 89. 50, 18
        add     dword [ebp-14H], 1                      ; 1A0F _ 83. 45, EC, 01
?_105:  mov     eax, dword [ebp-14H]                    ; 1A13 _ 8B. 45, EC
        cmp     eax, dword [ebp+10H]                    ; 1A16 _ 3B. 45, 10
        jl      ?_104                                   ; 1A19 _ 7C, C7
        mov     eax, dword [ebp+8H]                     ; 1A1B _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 1A1E _ 8B. 55, 10
        lea     ecx, [edx+4H]                           ; 1A21 _ 8D. 4A, 04
        mov     edx, dword [ebp+0CH]                    ; 1A24 _ 8B. 55, 0C
        mov     dword [eax+ecx*4], edx                  ; 1A27 _ 89. 14 88
        jmp     ?_109                                   ; 1A2A _ EB, 6E

?_106:  cmp     dword [ebp-0CH], 0                      ; 1A2C _ 83. 7D, F4, 00
        jns     ?_109                                   ; 1A30 _ 79, 68
        mov     eax, dword [ebp+8H]                     ; 1A32 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 1A35 _ 8B. 40, 0C
        mov     dword [ebp-10H], eax                    ; 1A38 _ 89. 45, F0
        jmp     ?_108                                   ; 1A3B _ EB, 37

?_107:  mov     eax, dword [ebp-10H]                    ; 1A3D _ 8B. 45, F0
        lea     ecx, [eax+1H]                           ; 1A40 _ 8D. 48, 01
        mov     eax, dword [ebp+8H]                     ; 1A43 _ 8B. 45, 08
        mov     edx, dword [ebp-10H]                    ; 1A46 _ 8B. 55, F0
        add     edx, 4                                  ; 1A49 _ 83. C2, 04
        mov     edx, dword [eax+edx*4]                  ; 1A4C _ 8B. 14 90
        mov     eax, dword [ebp+8H]                     ; 1A4F _ 8B. 45, 08
        add     ecx, 4                                  ; 1A52 _ 83. C1, 04
        mov     dword [eax+ecx*4], edx                  ; 1A55 _ 89. 14 88
        mov     eax, dword [ebp-10H]                    ; 1A58 _ 8B. 45, F0
        lea     edx, [eax+1H]                           ; 1A5B _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 1A5E _ 8B. 45, 08
        add     edx, 4                                  ; 1A61 _ 83. C2, 04
        mov     eax, dword [eax+edx*4]                  ; 1A64 _ 8B. 04 90
        mov     edx, dword [ebp-10H]                    ; 1A67 _ 8B. 55, F0
        add     edx, 1                                  ; 1A6A _ 83. C2, 01
        mov     dword [eax+18H], edx                    ; 1A6D _ 89. 50, 18
        sub     dword [ebp-10H], 1                      ; 1A70 _ 83. 6D, F0, 01
?_108:  mov     eax, dword [ebp-10H]                    ; 1A74 _ 8B. 45, F0
        cmp     eax, dword [ebp+10H]                    ; 1A77 _ 3B. 45, 10
        jge     ?_107                                   ; 1A7A _ 7D, C1
        mov     eax, dword [ebp+8H]                     ; 1A7C _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 1A7F _ 8B. 55, 10
        lea     ecx, [edx+4H]                           ; 1A82 _ 8D. 4A, 04
        mov     edx, dword [ebp+0CH]                    ; 1A85 _ 8B. 55, 0C
        mov     dword [eax+ecx*4], edx                  ; 1A88 _ 89. 14 88
        mov     eax, dword [ebp+8H]                     ; 1A8B _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 1A8E _ 8B. 40, 0C
        lea     edx, [eax+1H]                           ; 1A91 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 1A94 _ 8B. 45, 08
        mov     dword [eax+0CH], edx                    ; 1A97 _ 89. 50, 0C
?_109:  sub     esp, 12                                 ; 1A9A _ 83. EC, 0C
        push    dword [ebp+8H]                          ; 1A9D _ FF. 75, 08
        call    sheet_refresh                           ; 1AA0 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1AA5 _ 83. C4, 10
?_110:  nop                                             ; 1AA8 _ 90
        leave                                           ; 1AA9 _ C9
        ret                                             ; 1AAA _ C3
; sheet_level_updown End of function

sheet_refresh:; Function begin
        push    ebp                                     ; 1AAB _ 55
        mov     ebp, esp                                ; 1AAC _ 89. E5
        sub     esp, 48                                 ; 1AAE _ 83. EC, 30
        mov     eax, dword [ebp+8H]                     ; 1AB1 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 1AB4 _ 8B. 00
        mov     dword [ebp-14H], eax                    ; 1AB6 _ 89. 45, EC
        mov     dword [ebp-20H], 0                      ; 1AB9 _ C7. 45, E0, 00000000
        jmp     ?_117                                   ; 1AC0 _ E9, 000000B8

?_111:  mov     eax, dword [ebp+8H]                     ; 1AC5 _ 8B. 45, 08
        mov     edx, dword [ebp-20H]                    ; 1AC8 _ 8B. 55, E0
        add     edx, 4                                  ; 1ACB _ 83. C2, 04
        mov     eax, dword [eax+edx*4]                  ; 1ACE _ 8B. 04 90
        mov     dword [ebp-10H], eax                    ; 1AD1 _ 89. 45, F0
        mov     eax, dword [ebp-10H]                    ; 1AD4 _ 8B. 45, F0
        mov     eax, dword [eax]                        ; 1AD7 _ 8B. 00
        mov     dword [ebp-0CH], eax                    ; 1AD9 _ 89. 45, F4
        mov     dword [ebp-1CH], 0                      ; 1ADC _ C7. 45, E4, 00000000
        jmp     ?_116                                   ; 1AE3 _ E9, 00000082

?_112:  mov     eax, dword [ebp-10H]                    ; 1AE8 _ 8B. 45, F0
        mov     edx, dword [eax+10H]                    ; 1AEB _ 8B. 50, 10
        mov     eax, dword [ebp-1CH]                    ; 1AEE _ 8B. 45, E4
        add     eax, edx                                ; 1AF1 _ 01. D0
        mov     dword [ebp-8H], eax                     ; 1AF3 _ 89. 45, F8
        mov     dword [ebp-18H], 0                      ; 1AF6 _ C7. 45, E8, 00000000
        jmp     ?_115                                   ; 1AFD _ EB, 5C

?_113:  mov     eax, dword [ebp-10H]                    ; 1AFF _ 8B. 45, F0
        mov     edx, dword [eax+0CH]                    ; 1B02 _ 8B. 50, 0C
        mov     eax, dword [ebp-18H]                    ; 1B05 _ 8B. 45, E8
        add     eax, edx                                ; 1B08 _ 01. D0
        mov     dword [ebp-4H], eax                     ; 1B0A _ 89. 45, FC
        mov     eax, dword [ebp-10H]                    ; 1B0D _ 8B. 45, F0
        mov     eax, dword [eax+4H]                     ; 1B10 _ 8B. 40, 04
        imul    eax, dword [ebp-1CH]                    ; 1B13 _ 0F AF. 45, E4
        mov     edx, eax                                ; 1B17 _ 89. C2
        mov     eax, dword [ebp-18H]                    ; 1B19 _ 8B. 45, E8
        add     eax, edx                                ; 1B1C _ 01. D0
        mov     edx, eax                                ; 1B1E _ 89. C2
        mov     eax, dword [ebp-0CH]                    ; 1B20 _ 8B. 45, F4
        add     eax, edx                                ; 1B23 _ 01. D0
        movzx   eax, byte [eax]                         ; 1B25 _ 0F B6. 00
        mov     byte [ebp-21H], al                      ; 1B28 _ 88. 45, DF
        movzx   edx, byte [ebp-21H]                     ; 1B2B _ 0F B6. 55, DF
        mov     eax, dword [ebp-10H]                    ; 1B2F _ 8B. 45, F0
        mov     eax, dword [eax+14H]                    ; 1B32 _ 8B. 40, 14
        cmp     edx, eax                                ; 1B35 _ 39. C2
        jz      ?_114                                   ; 1B37 _ 74, 1E
        mov     eax, dword [ebp+8H]                     ; 1B39 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 1B3C _ 8B. 40, 04
        imul    eax, dword [ebp-8H]                     ; 1B3F _ 0F AF. 45, F8
        mov     edx, eax                                ; 1B43 _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 1B45 _ 8B. 45, FC
        add     eax, edx                                ; 1B48 _ 01. D0
        mov     edx, eax                                ; 1B4A _ 89. C2
        mov     eax, dword [ebp-14H]                    ; 1B4C _ 8B. 45, EC
        add     edx, eax                                ; 1B4F _ 01. C2
        movzx   eax, byte [ebp-21H]                     ; 1B51 _ 0F B6. 45, DF
        mov     byte [edx], al                          ; 1B55 _ 88. 02
?_114:  add     dword [ebp-18H], 1                      ; 1B57 _ 83. 45, E8, 01
?_115:  mov     eax, dword [ebp-10H]                    ; 1B5B _ 8B. 45, F0
        mov     eax, dword [eax+4H]                     ; 1B5E _ 8B. 40, 04
        cmp     dword [ebp-18H], eax                    ; 1B61 _ 39. 45, E8
        jl      ?_113                                   ; 1B64 _ 7C, 99
        add     dword [ebp-1CH], 1                      ; 1B66 _ 83. 45, E4, 01
?_116:  mov     eax, dword [ebp-10H]                    ; 1B6A _ 8B. 45, F0
        mov     eax, dword [eax+8H]                     ; 1B6D _ 8B. 40, 08
        cmp     dword [ebp-1CH], eax                    ; 1B70 _ 39. 45, E4
        jl      ?_112                                   ; 1B73 _ 0F 8C, FFFFFF6F
        add     dword [ebp-20H], 1                      ; 1B79 _ 83. 45, E0, 01
?_117:  mov     eax, dword [ebp+8H]                     ; 1B7D _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 1B80 _ 8B. 40, 0C
        cmp     dword [ebp-20H], eax                    ; 1B83 _ 39. 45, E0
        jle     ?_111                                   ; 1B86 _ 0F 8E, FFFFFF39
        mov     eax, 0                                  ; 1B8C _ B8, 00000000
        leave                                           ; 1B91 _ C9
        ret                                             ; 1B92 _ C3
; sheet_refresh End of function

sheet_slide:; Function begin
        push    ebp                                     ; 1B93 _ 55
        mov     ebp, esp                                ; 1B94 _ 89. E5
        mov     eax, dword [ebp+0CH]                    ; 1B96 _ 8B. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 1B99 _ 8B. 55, 10
        mov     dword [eax+0CH], edx                    ; 1B9C _ 89. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 1B9F _ 8B. 45, 0C
        mov     edx, dword [ebp+14H]                    ; 1BA2 _ 8B. 55, 14
        mov     dword [eax+10H], edx                    ; 1BA5 _ 89. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 1BA8 _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 1BAB _ 8B. 40, 18
        test    eax, eax                                ; 1BAE _ 85. C0
        js      ?_118                                   ; 1BB0 _ 78, 0B
        push    dword [ebp+8H]                          ; 1BB2 _ FF. 75, 08
        call    sheet_refresh                           ; 1BB5 _ E8, FFFFFFFC(rel)
        add     esp, 4                                  ; 1BBA _ 83. C4, 04
?_118:  nop                                             ; 1BBD _ 90
        leave                                           ; 1BBE _ C9
        ret                                             ; 1BBF _ C3
; sheet_slide End of function



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

table_rgb.1656:                                         ; byte
        db 00H, 00H, 00H, 0FFH, 00H, 00H, 00H, 0FFH     ; 0020 _ ........
        db 00H, 0FFH, 0FFH, 00H, 00H, 00H, 0FFH, 0FFH   ; 0028 _ ........
        db 00H, 0FFH, 00H, 0FFH, 0FFH, 0FFH, 0FFH, 0FFH ; 0030 _ ........
        db 0C6H, 0C6H, 0C6H, 84H, 00H, 00H, 00H, 84H    ; 0038 _ ........
        db 00H, 84H, 84H, 00H, 00H, 00H, 84H, 84H       ; 0040 _ ........
        db 00H, 84H, 00H, 78H, 0D7H, 84H, 84H, 84H      ; 0048 _ ...x....
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0050 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0058 _ ........

cursor.1701:                                            ; byte
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

str.1744:                                               ; byte
        resb    1                                       ; 0200

?_132:  resb    9                                       ; 0201

?_133:  resb    2                                       ; 020A

line.1791:                                              ; dword
        resd    1                                       ; 020C

pos.1790: resd  1                                       ; 0210


