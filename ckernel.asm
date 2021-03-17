; Disassembly of file: ckernel.o
; Wed Mar 17 18:03:09 2021
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
        movzx   eax, word [?_138]                       ; 001F _ 0F B7. 05, 00000004(d)
        cwde                                            ; 0026 _ 98
        mov     dword [ebp-34H], eax                    ; 0027 _ 89. 45, CC
        movzx   eax, word [?_139]                       ; 002A _ 0F B7. 05, 00000006(d)
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
        push    ?_126                                   ; 00E6 _ 68, 00000000(d)
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
        push    ?_127                                   ; 011F _ 68, 00000014(d)
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
        push    ?_128                                   ; 024D _ 68, 00000017(d)
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
        sub     esp, 12                                 ; 0302 _ 83. EC, 0C
        push    keyInfo                                 ; 0305 _ 68, 00000008(d)
        call    fifo8_status                            ; 030A _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 030F _ 83. C4, 10
        mov     ebx, eax                                ; 0312 _ 89. C3
        sub     esp, 12                                 ; 0314 _ 83. EC, 0C
        push    mouseInfo                               ; 0317 _ 68, 00000020(d)
        call    fifo8_status                            ; 031C _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0321 _ 83. C4, 10
        add     eax, ebx                                ; 0324 _ 01. D8
        test    eax, eax                                ; 0326 _ 85. C0
        jnz     ?_002                                   ; 0328 _ 75, 0A
        call    io_sti                                  ; 032A _ E8, FFFFFFFC(rel)
        jmp     ?_001                                   ; 032F _ E9, FFFFFF79

?_002:  sub     esp, 12                                 ; 0334 _ 83. EC, 0C
        push    keyInfo                                 ; 0337 _ 68, 00000008(d)
        call    fifo8_status                            ; 033C _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0341 _ 83. C4, 10
        test    eax, eax                                ; 0344 _ 85. C0
        jz      ?_003                                   ; 0346 _ 74, 73
        call    io_sti                                  ; 0348 _ E8, FFFFFFFC(rel)
        sub     esp, 12                                 ; 034D _ 83. EC, 0C
        push    keyInfo                                 ; 0350 _ 68, 00000008(d)
        call    fifo8_get                               ; 0355 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 035A _ 83. C4, 10
        mov     byte [ebp-41H], al                      ; 035D _ 88. 45, BF
        cmp     byte [ebp-41H], 28                      ; 0360 _ 80. 7D, BF, 1C
        jne     ?_001                                   ; 0364 _ 0F 85, FFFFFF43
        mov     ecx, dword [buf_back]                   ; 036A _ 8B. 0D, 000000F8(d)
        mov     edx, dword [ebp-40H]                    ; 0370 _ 8B. 55, C0
        mov     eax, edx                                ; 0373 _ 89. D0
        shl     eax, 2                                  ; 0375 _ C1. E0, 02
        add     eax, edx                                ; 0378 _ 01. D0
        shl     eax, 2                                  ; 037A _ C1. E0, 02
        mov     edx, eax                                ; 037D _ 89. C2
        mov     eax, dword [ebp-24H]                    ; 037F _ 8B. 45, DC
        add     eax, edx                                ; 0382 _ 01. D0
        sub     esp, 4                                  ; 0384 _ 83. EC, 04
        push    7                                       ; 0387 _ 6A, 07
        push    dword [ebp-34H]                         ; 0389 _ FF. 75, CC
        push    dword [ebp-40H]                         ; 038C _ FF. 75, C0
        push    ecx                                     ; 038F _ 51
        push    eax                                     ; 0390 _ 50
        push    dword [ebp-2CH]                         ; 0391 _ FF. 75, D4
        push    dword [ebp-14H]                         ; 0394 _ FF. 75, EC
        call    showMemInfo                             ; 0397 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 039C _ 83. C4, 20
        add     dword [ebp-40H], 1                      ; 039F _ 83. 45, C0, 01
        mov     eax, dword [ebp-40H]                    ; 03A3 _ 8B. 45, C0
        cmp     eax, dword [ebp-20H]                    ; 03A6 _ 3B. 45, E0
        jl      ?_001                                   ; 03A9 _ 0F 8C, FFFFFEFE
        mov     dword [ebp-40H], 0                      ; 03AF _ C7. 45, C0, 00000000
        jmp     ?_001                                   ; 03B6 _ E9, FFFFFEF2

?_003:  sub     esp, 12                                 ; 03BB _ 83. EC, 0C
        push    mouseInfo                               ; 03BE _ 68, 00000020(d)
        call    fifo8_status                            ; 03C3 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 03C8 _ 83. C4, 10
        test    eax, eax                                ; 03CB _ 85. C0
        je      ?_001                                   ; 03CD _ 0F 84, FFFFFEDA
        sub     esp, 4                                  ; 03D3 _ 83. EC, 04
        push    dword [ebp-28H]                         ; 03D6 _ FF. 75, D8
        push    dword [ebp-2CH]                         ; 03D9 _ FF. 75, D4
        push    dword [ebp-14H]                         ; 03DC _ FF. 75, EC
        call    showMouseInfo                           ; 03DF _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 03E4 _ 83. C4, 10
        jmp     ?_001                                   ; 03E7 _ E9, FFFFFEC1
; CMain End of function

initBootInfo:; Function begin
        push    ebp                                     ; 03EC _ 55
        mov     ebp, esp                                ; 03ED _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 03EF _ 8B. 45, 08
        mov     dword [eax], 655360                     ; 03F2 _ C7. 00, 000A0000
        mov     eax, dword [ebp+8H]                     ; 03F8 _ 8B. 45, 08
; Note: Length-changing prefix causes delay on Intel processors
        mov     word [eax+4H], 320                      ; 03FB _ 66: C7. 40, 04, 0140
        mov     eax, dword [ebp+8H]                     ; 0401 _ 8B. 45, 08
; Note: Length-changing prefix causes delay on Intel processors
        mov     word [eax+6H], 200                      ; 0404 _ 66: C7. 40, 06, 00C8
        nop                                             ; 040A _ 90
        pop     ebp                                     ; 040B _ 5D
        ret                                             ; 040C _ C3
; initBootInfo End of function

showString:; Function begin
        push    ebp                                     ; 040D _ 55
        mov     ebp, esp                                ; 040E _ 89. E5
        push    ebx                                     ; 0410 _ 53
        sub     esp, 36                                 ; 0411 _ 83. EC, 24
        mov     eax, dword [ebp+18H]                    ; 0414 _ 8B. 45, 18
        mov     byte [ebp-1CH], al                      ; 0417 _ 88. 45, E4
        mov     eax, dword [ebp+10H]                    ; 041A _ 8B. 45, 10
        mov     dword [ebp-0CH], eax                    ; 041D _ 89. 45, F4
        jmp     ?_005                                   ; 0420 _ EB, 3E

?_004:  mov     eax, dword [ebp+1CH]                    ; 0422 _ 8B. 45, 1C
        movzx   eax, byte [eax]                         ; 0425 _ 0F B6. 00
        movzx   eax, al                                 ; 0428 _ 0F B6. C0
        shl     eax, 4                                  ; 042B _ C1. E0, 04
        lea     ebx, [systemFont+eax]                   ; 042E _ 8D. 98, 00000000(d)
        movsx   ecx, byte [ebp-1CH]                     ; 0434 _ 0F BE. 4D, E4
        mov     eax, dword [ebp+0CH]                    ; 0438 _ 8B. 45, 0C
        mov     edx, dword [eax+4H]                     ; 043B _ 8B. 50, 04
        mov     eax, dword [ebp+0CH]                    ; 043E _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 0441 _ 8B. 00
        sub     esp, 8                                  ; 0443 _ 83. EC, 08
        push    ebx                                     ; 0446 _ 53
        push    ecx                                     ; 0447 _ 51
        push    dword [ebp+14H]                         ; 0448 _ FF. 75, 14
        push    dword [ebp+10H]                         ; 044B _ FF. 75, 10
        push    edx                                     ; 044E _ 52
        push    eax                                     ; 044F _ 50
        call    showFont8                               ; 0450 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0455 _ 83. C4, 20
        add     dword [ebp+10H], 8                      ; 0458 _ 83. 45, 10, 08
        add     dword [ebp+1CH], 1                      ; 045C _ 83. 45, 1C, 01
?_005:  mov     eax, dword [ebp+1CH]                    ; 0460 _ 8B. 45, 1C
        movzx   eax, byte [eax]                         ; 0463 _ 0F B6. 00
        test    al, al                                  ; 0466 _ 84. C0
        jnz     ?_004                                   ; 0468 _ 75, B8
        mov     eax, dword [ebp+14H]                    ; 046A _ 8B. 45, 14
        add     eax, 16                                 ; 046D _ 83. C0, 10
        sub     esp, 8                                  ; 0470 _ 83. EC, 08
        push    eax                                     ; 0473 _ 50
        push    dword [ebp+10H]                         ; 0474 _ FF. 75, 10
        push    dword [ebp+14H]                         ; 0477 _ FF. 75, 14
        push    dword [ebp-0CH]                         ; 047A _ FF. 75, F4
        push    dword [ebp+0CH]                         ; 047D _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 0480 _ FF. 75, 08
        call    sheet_refresh                           ; 0483 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0488 _ 83. C4, 20
        nop                                             ; 048B _ 90
        mov     ebx, dword [ebp-4H]                     ; 048C _ 8B. 5D, FC
        leave                                           ; 048F _ C9
        ret                                             ; 0490 _ C3
; showString End of function

init_screen8:; Function begin
        push    ebp                                     ; 0491 _ 55
        mov     ebp, esp                                ; 0492 _ 89. E5
        push    ebx                                     ; 0494 _ 53
        sub     esp, 4                                  ; 0495 _ 83. EC, 04
        mov     eax, dword [ebp+10H]                    ; 0498 _ 8B. 45, 10
        lea     edx, [eax-19H]                          ; 049B _ 8D. 50, E7
        mov     eax, dword [ebp+0CH]                    ; 049E _ 8B. 45, 0C
        sub     eax, 1                                  ; 04A1 _ 83. E8, 01
        sub     esp, 4                                  ; 04A4 _ 83. EC, 04
        push    edx                                     ; 04A7 _ 52
        push    eax                                     ; 04A8 _ 50
        push    0                                       ; 04A9 _ 6A, 00
        push    0                                       ; 04AB _ 6A, 00
        push    14                                      ; 04AD _ 6A, 0E
        push    dword [ebp+0CH]                         ; 04AF _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 04B2 _ FF. 75, 08
        call    boxfill8                                ; 04B5 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 04BA _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 04BD _ 8B. 45, 10
        lea     ecx, [eax-18H]                          ; 04C0 _ 8D. 48, E8
        mov     eax, dword [ebp+0CH]                    ; 04C3 _ 8B. 45, 0C
        lea     edx, [eax-1H]                           ; 04C6 _ 8D. 50, FF
        mov     eax, dword [ebp+10H]                    ; 04C9 _ 8B. 45, 10
        sub     eax, 24                                 ; 04CC _ 83. E8, 18
        sub     esp, 4                                  ; 04CF _ 83. EC, 04
        push    ecx                                     ; 04D2 _ 51
        push    edx                                     ; 04D3 _ 52
        push    eax                                     ; 04D4 _ 50
        push    0                                       ; 04D5 _ 6A, 00
        push    8                                       ; 04D7 _ 6A, 08
        push    dword [ebp+0CH]                         ; 04D9 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 04DC _ FF. 75, 08
        call    boxfill8                                ; 04DF _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 04E4 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 04E7 _ 8B. 45, 10
        lea     ecx, [eax-17H]                          ; 04EA _ 8D. 48, E9
        mov     eax, dword [ebp+0CH]                    ; 04ED _ 8B. 45, 0C
        lea     edx, [eax-1H]                           ; 04F0 _ 8D. 50, FF
        mov     eax, dword [ebp+10H]                    ; 04F3 _ 8B. 45, 10
        sub     eax, 23                                 ; 04F6 _ 83. E8, 17
        sub     esp, 4                                  ; 04F9 _ 83. EC, 04
        push    ecx                                     ; 04FC _ 51
        push    edx                                     ; 04FD _ 52
        push    eax                                     ; 04FE _ 50
        push    0                                       ; 04FF _ 6A, 00
        push    7                                       ; 0501 _ 6A, 07
        push    dword [ebp+0CH]                         ; 0503 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 0506 _ FF. 75, 08
        call    boxfill8                                ; 0509 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 050E _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 0511 _ 8B. 45, 10
        lea     ecx, [eax-1H]                           ; 0514 _ 8D. 48, FF
        mov     eax, dword [ebp+0CH]                    ; 0517 _ 8B. 45, 0C
        lea     edx, [eax-1H]                           ; 051A _ 8D. 50, FF
        mov     eax, dword [ebp+10H]                    ; 051D _ 8B. 45, 10
        sub     eax, 22                                 ; 0520 _ 83. E8, 16
        sub     esp, 4                                  ; 0523 _ 83. EC, 04
        push    ecx                                     ; 0526 _ 51
        push    edx                                     ; 0527 _ 52
        push    eax                                     ; 0528 _ 50
        push    0                                       ; 0529 _ 6A, 00
        push    8                                       ; 052B _ 6A, 08
        push    dword [ebp+0CH]                         ; 052D _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 0530 _ FF. 75, 08
        call    boxfill8                                ; 0533 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0538 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 053B _ 8B. 45, 10
        lea     edx, [eax-14H]                          ; 053E _ 8D. 50, EC
        mov     eax, dword [ebp+10H]                    ; 0541 _ 8B. 45, 10
        sub     eax, 20                                 ; 0544 _ 83. E8, 14
        sub     esp, 4                                  ; 0547 _ 83. EC, 04
        push    edx                                     ; 054A _ 52
        push    51                                      ; 054B _ 6A, 33
        push    eax                                     ; 054D _ 50
        push    10                                      ; 054E _ 6A, 0A
        push    7                                       ; 0550 _ 6A, 07
        push    dword [ebp+0CH]                         ; 0552 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 0555 _ FF. 75, 08
        call    boxfill8                                ; 0558 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 055D _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 0560 _ 8B. 45, 10
        lea     edx, [eax-4H]                           ; 0563 _ 8D. 50, FC
        mov     eax, dword [ebp+10H]                    ; 0566 _ 8B. 45, 10
        sub     eax, 20                                 ; 0569 _ 83. E8, 14
        sub     esp, 4                                  ; 056C _ 83. EC, 04
        push    edx                                     ; 056F _ 52
        push    9                                       ; 0570 _ 6A, 09
        push    eax                                     ; 0572 _ 50
        push    9                                       ; 0573 _ 6A, 09
        push    7                                       ; 0575 _ 6A, 07
        push    dword [ebp+0CH]                         ; 0577 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 057A _ FF. 75, 08
        call    boxfill8                                ; 057D _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0582 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 0585 _ 8B. 45, 10
        lea     edx, [eax-4H]                           ; 0588 _ 8D. 50, FC
        mov     eax, dword [ebp+10H]                    ; 058B _ 8B. 45, 10
        sub     eax, 4                                  ; 058E _ 83. E8, 04
        sub     esp, 4                                  ; 0591 _ 83. EC, 04
        push    edx                                     ; 0594 _ 52
        push    50                                      ; 0595 _ 6A, 32
        push    eax                                     ; 0597 _ 50
        push    10                                      ; 0598 _ 6A, 0A
        push    15                                      ; 059A _ 6A, 0F
        push    dword [ebp+0CH]                         ; 059C _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 059F _ FF. 75, 08
        call    boxfill8                                ; 05A2 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 05A7 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 05AA _ 8B. 45, 10
        lea     edx, [eax-5H]                           ; 05AD _ 8D. 50, FB
        mov     eax, dword [ebp+10H]                    ; 05B0 _ 8B. 45, 10
        sub     eax, 19                                 ; 05B3 _ 83. E8, 13
        sub     esp, 4                                  ; 05B6 _ 83. EC, 04
        push    edx                                     ; 05B9 _ 52
        push    50                                      ; 05BA _ 6A, 32
        push    eax                                     ; 05BC _ 50
        push    50                                      ; 05BD _ 6A, 32
        push    15                                      ; 05BF _ 6A, 0F
        push    dword [ebp+0CH]                         ; 05C1 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 05C4 _ FF. 75, 08
        call    boxfill8                                ; 05C7 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 05CC _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 05CF _ 8B. 45, 10
        lea     edx, [eax-3H]                           ; 05D2 _ 8D. 50, FD
        mov     eax, dword [ebp+10H]                    ; 05D5 _ 8B. 45, 10
        sub     eax, 3                                  ; 05D8 _ 83. E8, 03
        sub     esp, 4                                  ; 05DB _ 83. EC, 04
        push    edx                                     ; 05DE _ 52
        push    50                                      ; 05DF _ 6A, 32
        push    eax                                     ; 05E1 _ 50
        push    10                                      ; 05E2 _ 6A, 0A
        push    0                                       ; 05E4 _ 6A, 00
        push    dword [ebp+0CH]                         ; 05E6 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 05E9 _ FF. 75, 08
        call    boxfill8                                ; 05EC _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 05F1 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 05F4 _ 8B. 45, 10
        lea     edx, [eax-3H]                           ; 05F7 _ 8D. 50, FD
        mov     eax, dword [ebp+10H]                    ; 05FA _ 8B. 45, 10
        sub     eax, 20                                 ; 05FD _ 83. E8, 14
        sub     esp, 4                                  ; 0600 _ 83. EC, 04
        push    edx                                     ; 0603 _ 52
        push    51                                      ; 0604 _ 6A, 33
        push    eax                                     ; 0606 _ 50
        push    51                                      ; 0607 _ 6A, 33
        push    0                                       ; 0609 _ 6A, 00
        push    dword [ebp+0CH]                         ; 060B _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 060E _ FF. 75, 08
        call    boxfill8                                ; 0611 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0616 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 0619 _ 8B. 45, 10
        lea     ebx, [eax-14H]                          ; 061C _ 8D. 58, EC
        mov     eax, dword [ebp+0CH]                    ; 061F _ 8B. 45, 0C
        lea     ecx, [eax-4H]                           ; 0622 _ 8D. 48, FC
        mov     eax, dword [ebp+10H]                    ; 0625 _ 8B. 45, 10
        lea     edx, [eax-14H]                          ; 0628 _ 8D. 50, EC
        mov     eax, dword [ebp+0CH]                    ; 062B _ 8B. 45, 0C
        sub     eax, 47                                 ; 062E _ 83. E8, 2F
        sub     esp, 4                                  ; 0631 _ 83. EC, 04
        push    ebx                                     ; 0634 _ 53
        push    ecx                                     ; 0635 _ 51
        push    edx                                     ; 0636 _ 52
        push    eax                                     ; 0637 _ 50
        push    15                                      ; 0638 _ 6A, 0F
        push    dword [ebp+0CH]                         ; 063A _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 063D _ FF. 75, 08
        call    boxfill8                                ; 0640 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0645 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 0648 _ 8B. 45, 10
        lea     ebx, [eax-3H]                           ; 064B _ 8D. 58, FD
        mov     eax, dword [ebp+0CH]                    ; 064E _ 8B. 45, 0C
        lea     ecx, [eax-2FH]                          ; 0651 _ 8D. 48, D1
        mov     eax, dword [ebp+10H]                    ; 0654 _ 8B. 45, 10
        lea     edx, [eax-14H]                          ; 0657 _ 8D. 50, EC
        mov     eax, dword [ebp+0CH]                    ; 065A _ 8B. 45, 0C
        sub     eax, 47                                 ; 065D _ 83. E8, 2F
        sub     esp, 4                                  ; 0660 _ 83. EC, 04
        push    ebx                                     ; 0663 _ 53
        push    ecx                                     ; 0664 _ 51
        push    edx                                     ; 0665 _ 52
        push    eax                                     ; 0666 _ 50
        push    15                                      ; 0667 _ 6A, 0F
        push    dword [ebp+0CH]                         ; 0669 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 066C _ FF. 75, 08
        call    boxfill8                                ; 066F _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0674 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 0677 _ 8B. 45, 10
        lea     ebx, [eax-3H]                           ; 067A _ 8D. 58, FD
        mov     eax, dword [ebp+0CH]                    ; 067D _ 8B. 45, 0C
        lea     ecx, [eax-4H]                           ; 0680 _ 8D. 48, FC
        mov     eax, dword [ebp+10H]                    ; 0683 _ 8B. 45, 10
        lea     edx, [eax-3H]                           ; 0686 _ 8D. 50, FD
        mov     eax, dword [ebp+0CH]                    ; 0689 _ 8B. 45, 0C
        sub     eax, 47                                 ; 068C _ 83. E8, 2F
        sub     esp, 4                                  ; 068F _ 83. EC, 04
        push    ebx                                     ; 0692 _ 53
        push    ecx                                     ; 0693 _ 51
        push    edx                                     ; 0694 _ 52
        push    eax                                     ; 0695 _ 50
        push    7                                       ; 0696 _ 6A, 07
        push    dword [ebp+0CH]                         ; 0698 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 069B _ FF. 75, 08
        call    boxfill8                                ; 069E _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 06A3 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 06A6 _ 8B. 45, 10
        lea     ebx, [eax-3H]                           ; 06A9 _ 8D. 58, FD
        mov     eax, dword [ebp+0CH]                    ; 06AC _ 8B. 45, 0C
        lea     ecx, [eax-3H]                           ; 06AF _ 8D. 48, FD
        mov     eax, dword [ebp+10H]                    ; 06B2 _ 8B. 45, 10
        lea     edx, [eax-14H]                          ; 06B5 _ 8D. 50, EC
        mov     eax, dword [ebp+0CH]                    ; 06B8 _ 8B. 45, 0C
        sub     eax, 3                                  ; 06BB _ 83. E8, 03
        sub     esp, 4                                  ; 06BE _ 83. EC, 04
        push    ebx                                     ; 06C1 _ 53
        push    ecx                                     ; 06C2 _ 51
        push    edx                                     ; 06C3 _ 52
        push    eax                                     ; 06C4 _ 50
        push    7                                       ; 06C5 _ 6A, 07
        push    dword [ebp+0CH]                         ; 06C7 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 06CA _ FF. 75, 08
        call    boxfill8                                ; 06CD _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 06D2 _ 83. C4, 20
        nop                                             ; 06D5 _ 90
        mov     ebx, dword [ebp-4H]                     ; 06D6 _ 8B. 5D, FC
        leave                                           ; 06D9 _ C9
        ret                                             ; 06DA _ C3
; init_screen8 End of function

init_palette:; Function begin
        push    ebp                                     ; 06DB _ 55
        mov     ebp, esp                                ; 06DC _ 89. E5
        sub     esp, 24                                 ; 06DE _ 83. EC, 18
        mov     eax, dword [bootInfo]                   ; 06E1 _ A1, 00000000(d)
        mov     dword [ebp-14H], eax                    ; 06E6 _ 89. 45, EC
        movzx   eax, word [?_138]                       ; 06E9 _ 0F B7. 05, 00000004(d)
        cwde                                            ; 06F0 _ 98
        mov     dword [ebp-10H], eax                    ; 06F1 _ 89. 45, F0
        movzx   eax, word [?_139]                       ; 06F4 _ 0F B7. 05, 00000006(d)
        cwde                                            ; 06FB _ 98
        mov     dword [ebp-0CH], eax                    ; 06FC _ 89. 45, F4
        sub     esp, 4                                  ; 06FF _ 83. EC, 04
        push    table_rgb.1687                          ; 0702 _ 68, 00000020(d)
        push    15                                      ; 0707 _ 6A, 0F
        push    0                                       ; 0709 _ 6A, 00
        call    set_palette                             ; 070B _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0710 _ 83. C4, 10
        nop                                             ; 0713 _ 90
        leave                                           ; 0714 _ C9
        ret                                             ; 0715 _ C3
; init_palette End of function

set_palette:; Function begin
        push    ebp                                     ; 0716 _ 55
        mov     ebp, esp                                ; 0717 _ 89. E5
        sub     esp, 24                                 ; 0719 _ 83. EC, 18
        call    io_load_eflags                          ; 071C _ E8, FFFFFFFC(rel)
        mov     dword [ebp-0CH], eax                    ; 0721 _ 89. 45, F4
        call    io_cli                                  ; 0724 _ E8, FFFFFFFC(rel)
        sub     esp, 8                                  ; 0729 _ 83. EC, 08
        push    dword [ebp+8H]                          ; 072C _ FF. 75, 08
        push    968                                     ; 072F _ 68, 000003C8
        call    io_out8                                 ; 0734 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0739 _ 83. C4, 10
        mov     eax, dword [ebp+8H]                     ; 073C _ 8B. 45, 08
        mov     dword [ebp-10H], eax                    ; 073F _ 89. 45, F0
        jmp     ?_007                                   ; 0742 _ EB, 65

?_006:  mov     eax, dword [ebp+10H]                    ; 0744 _ 8B. 45, 10
        movzx   eax, byte [eax]                         ; 0747 _ 0F B6. 00
        shr     al, 2                                   ; 074A _ C0. E8, 02
        movzx   eax, al                                 ; 074D _ 0F B6. C0
        sub     esp, 8                                  ; 0750 _ 83. EC, 08
        push    eax                                     ; 0753 _ 50
        push    969                                     ; 0754 _ 68, 000003C9
        call    io_out8                                 ; 0759 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 075E _ 83. C4, 10
        mov     eax, dword [ebp+10H]                    ; 0761 _ 8B. 45, 10
        add     eax, 1                                  ; 0764 _ 83. C0, 01
        movzx   eax, byte [eax]                         ; 0767 _ 0F B6. 00
        shr     al, 2                                   ; 076A _ C0. E8, 02
        movzx   eax, al                                 ; 076D _ 0F B6. C0
        sub     esp, 8                                  ; 0770 _ 83. EC, 08
        push    eax                                     ; 0773 _ 50
        push    969                                     ; 0774 _ 68, 000003C9
        call    io_out8                                 ; 0779 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 077E _ 83. C4, 10
        mov     eax, dword [ebp+10H]                    ; 0781 _ 8B. 45, 10
        add     eax, 2                                  ; 0784 _ 83. C0, 02
        movzx   eax, byte [eax]                         ; 0787 _ 0F B6. 00
        shr     al, 2                                   ; 078A _ C0. E8, 02
        movzx   eax, al                                 ; 078D _ 0F B6. C0
        sub     esp, 8                                  ; 0790 _ 83. EC, 08
        push    eax                                     ; 0793 _ 50
        push    969                                     ; 0794 _ 68, 000003C9
        call    io_out8                                 ; 0799 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 079E _ 83. C4, 10
        add     dword [ebp+10H], 3                      ; 07A1 _ 83. 45, 10, 03
        add     dword [ebp-10H], 1                      ; 07A5 _ 83. 45, F0, 01
?_007:  mov     eax, dword [ebp-10H]                    ; 07A9 _ 8B. 45, F0
        cmp     eax, dword [ebp+0CH]                    ; 07AC _ 3B. 45, 0C
        jle     ?_006                                   ; 07AF _ 7E, 93
        sub     esp, 12                                 ; 07B1 _ 83. EC, 0C
        push    dword [ebp-0CH]                         ; 07B4 _ FF. 75, F4
        call    io_store_eflags                         ; 07B7 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 07BC _ 83. C4, 10
        nop                                             ; 07BF _ 90
        leave                                           ; 07C0 _ C9
        ret                                             ; 07C1 _ C3
; set_palette End of function

boxfill8:; Function begin
        push    ebp                                     ; 07C2 _ 55
        mov     ebp, esp                                ; 07C3 _ 89. E5
        sub     esp, 20                                 ; 07C5 _ 83. EC, 14
        mov     eax, dword [ebp+10H]                    ; 07C8 _ 8B. 45, 10
        mov     byte [ebp-14H], al                      ; 07CB _ 88. 45, EC
        mov     eax, dword [ebp+18H]                    ; 07CE _ 8B. 45, 18
        mov     dword [ebp-4H], eax                     ; 07D1 _ 89. 45, FC
        jmp     ?_011                                   ; 07D4 _ EB, 33

?_008:  mov     eax, dword [ebp+14H]                    ; 07D6 _ 8B. 45, 14
        mov     dword [ebp-8H], eax                     ; 07D9 _ 89. 45, F8
        jmp     ?_010                                   ; 07DC _ EB, 1F

?_009:  mov     eax, dword [ebp-4H]                     ; 07DE _ 8B. 45, FC
        imul    eax, dword [ebp+0CH]                    ; 07E1 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 07E5 _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 07E7 _ 8B. 45, F8
        add     eax, edx                                ; 07EA _ 01. D0
        mov     edx, eax                                ; 07EC _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 07EE _ 8B. 45, 08
        add     edx, eax                                ; 07F1 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 07F3 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 07F7 _ 88. 02
        add     dword [ebp-8H], 1                       ; 07F9 _ 83. 45, F8, 01
?_010:  mov     eax, dword [ebp-8H]                     ; 07FD _ 8B. 45, F8
        cmp     eax, dword [ebp+1CH]                    ; 0800 _ 3B. 45, 1C
        jle     ?_009                                   ; 0803 _ 7E, D9
        add     dword [ebp-4H], 1                       ; 0805 _ 83. 45, FC, 01
?_011:  mov     eax, dword [ebp-4H]                     ; 0809 _ 8B. 45, FC
        cmp     eax, dword [ebp+20H]                    ; 080C _ 3B. 45, 20
        jle     ?_008                                   ; 080F _ 7E, C5
        nop                                             ; 0811 _ 90
        leave                                           ; 0812 _ C9
        ret                                             ; 0813 _ C3
; boxfill8 End of function

showFont8:; Function begin
        push    ebp                                     ; 0814 _ 55
        mov     ebp, esp                                ; 0815 _ 89. E5
        sub     esp, 20                                 ; 0817 _ 83. EC, 14
        mov     eax, dword [ebp+18H]                    ; 081A _ 8B. 45, 18
        mov     byte [ebp-14H], al                      ; 081D _ 88. 45, EC
        mov     dword [ebp-4H], 0                       ; 0820 _ C7. 45, FC, 00000000
        jmp     ?_021                                   ; 0827 _ E9, 0000016C

?_012:  mov     edx, dword [ebp-4H]                     ; 082C _ 8B. 55, FC
        mov     eax, dword [ebp+1CH]                    ; 082F _ 8B. 45, 1C
        add     eax, edx                                ; 0832 _ 01. D0
        movzx   eax, byte [eax]                         ; 0834 _ 0F B6. 00
        mov     byte [ebp-5H], al                       ; 0837 _ 88. 45, FB
        cmp     byte [ebp-5H], 0                        ; 083A _ 80. 7D, FB, 00
        jns     ?_013                                   ; 083E _ 79, 20
        mov     edx, dword [ebp+14H]                    ; 0840 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 0843 _ 8B. 45, FC
        add     eax, edx                                ; 0846 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 0848 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 084C _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 084E _ 8B. 45, 10
        add     eax, edx                                ; 0851 _ 01. D0
        mov     edx, eax                                ; 0853 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 0855 _ 8B. 45, 08
        add     edx, eax                                ; 0858 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 085A _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 085E _ 88. 02
?_013:  movsx   eax, byte [ebp-5H]                      ; 0860 _ 0F BE. 45, FB
        and     eax, 40H                                ; 0864 _ 83. E0, 40
        test    eax, eax                                ; 0867 _ 85. C0
        jz      ?_014                                   ; 0869 _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 086B _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 086E _ 8B. 45, FC
        add     eax, edx                                ; 0871 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 0873 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 0877 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 0879 _ 8B. 45, 10
        add     eax, edx                                ; 087C _ 01. D0
        lea     edx, [eax+1H]                           ; 087E _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 0881 _ 8B. 45, 08
        add     edx, eax                                ; 0884 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0886 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 088A _ 88. 02
?_014:  movsx   eax, byte [ebp-5H]                      ; 088C _ 0F BE. 45, FB
        and     eax, 20H                                ; 0890 _ 83. E0, 20
        test    eax, eax                                ; 0893 _ 85. C0
        jz      ?_015                                   ; 0895 _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 0897 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 089A _ 8B. 45, FC
        add     eax, edx                                ; 089D _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 089F _ 0F AF. 45, 0C
        mov     edx, eax                                ; 08A3 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 08A5 _ 8B. 45, 10
        add     eax, edx                                ; 08A8 _ 01. D0
        lea     edx, [eax+2H]                           ; 08AA _ 8D. 50, 02
        mov     eax, dword [ebp+8H]                     ; 08AD _ 8B. 45, 08
        add     edx, eax                                ; 08B0 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 08B2 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 08B6 _ 88. 02
?_015:  movsx   eax, byte [ebp-5H]                      ; 08B8 _ 0F BE. 45, FB
        and     eax, 10H                                ; 08BC _ 83. E0, 10
        test    eax, eax                                ; 08BF _ 85. C0
        jz      ?_016                                   ; 08C1 _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 08C3 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 08C6 _ 8B. 45, FC
        add     eax, edx                                ; 08C9 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 08CB _ 0F AF. 45, 0C
        mov     edx, eax                                ; 08CF _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 08D1 _ 8B. 45, 10
        add     eax, edx                                ; 08D4 _ 01. D0
        lea     edx, [eax+3H]                           ; 08D6 _ 8D. 50, 03
        mov     eax, dword [ebp+8H]                     ; 08D9 _ 8B. 45, 08
        add     edx, eax                                ; 08DC _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 08DE _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 08E2 _ 88. 02
?_016:  movsx   eax, byte [ebp-5H]                      ; 08E4 _ 0F BE. 45, FB
        and     eax, 08H                                ; 08E8 _ 83. E0, 08
        test    eax, eax                                ; 08EB _ 85. C0
        jz      ?_017                                   ; 08ED _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 08EF _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 08F2 _ 8B. 45, FC
        add     eax, edx                                ; 08F5 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 08F7 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 08FB _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 08FD _ 8B. 45, 10
        add     eax, edx                                ; 0900 _ 01. D0
        lea     edx, [eax+4H]                           ; 0902 _ 8D. 50, 04
        mov     eax, dword [ebp+8H]                     ; 0905 _ 8B. 45, 08
        add     edx, eax                                ; 0908 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 090A _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 090E _ 88. 02
?_017:  movsx   eax, byte [ebp-5H]                      ; 0910 _ 0F BE. 45, FB
        and     eax, 04H                                ; 0914 _ 83. E0, 04
        test    eax, eax                                ; 0917 _ 85. C0
        jz      ?_018                                   ; 0919 _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 091B _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 091E _ 8B. 45, FC
        add     eax, edx                                ; 0921 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 0923 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 0927 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 0929 _ 8B. 45, 10
        add     eax, edx                                ; 092C _ 01. D0
        lea     edx, [eax+5H]                           ; 092E _ 8D. 50, 05
        mov     eax, dword [ebp+8H]                     ; 0931 _ 8B. 45, 08
        add     edx, eax                                ; 0934 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0936 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 093A _ 88. 02
?_018:  movsx   eax, byte [ebp-5H]                      ; 093C _ 0F BE. 45, FB
        and     eax, 02H                                ; 0940 _ 83. E0, 02
        test    eax, eax                                ; 0943 _ 85. C0
        jz      ?_019                                   ; 0945 _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 0947 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 094A _ 8B. 45, FC
        add     eax, edx                                ; 094D _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 094F _ 0F AF. 45, 0C
        mov     edx, eax                                ; 0953 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 0955 _ 8B. 45, 10
        add     eax, edx                                ; 0958 _ 01. D0
        lea     edx, [eax+6H]                           ; 095A _ 8D. 50, 06
        mov     eax, dword [ebp+8H]                     ; 095D _ 8B. 45, 08
        add     edx, eax                                ; 0960 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0962 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0966 _ 88. 02
?_019:  movsx   eax, byte [ebp-5H]                      ; 0968 _ 0F BE. 45, FB
        and     eax, 01H                                ; 096C _ 83. E0, 01
        test    eax, eax                                ; 096F _ 85. C0
        jz      ?_020                                   ; 0971 _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 0973 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 0976 _ 8B. 45, FC
        add     eax, edx                                ; 0979 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 097B _ 0F AF. 45, 0C
        mov     edx, eax                                ; 097F _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 0981 _ 8B. 45, 10
        add     eax, edx                                ; 0984 _ 01. D0
        lea     edx, [eax+7H]                           ; 0986 _ 8D. 50, 07
        mov     eax, dword [ebp+8H]                     ; 0989 _ 8B. 45, 08
        add     edx, eax                                ; 098C _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 098E _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0992 _ 88. 02
?_020:  add     dword [ebp-4H], 1                       ; 0994 _ 83. 45, FC, 01
?_021:  cmp     dword [ebp-4H], 15                      ; 0998 _ 83. 7D, FC, 0F
        jle     ?_012                                   ; 099C _ 0F 8E, FFFFFE8A
        nop                                             ; 09A2 _ 90
        leave                                           ; 09A3 _ C9
        ret                                             ; 09A4 _ C3
; showFont8 End of function

init_mouse_cursor:; Function begin
        push    ebp                                     ; 09A5 _ 55
        mov     ebp, esp                                ; 09A6 _ 89. E5
        sub     esp, 20                                 ; 09A8 _ 83. EC, 14
        mov     eax, dword [ebp+0CH]                    ; 09AB _ 8B. 45, 0C
        mov     byte [ebp-14H], al                      ; 09AE _ 88. 45, EC
        mov     dword [ebp-4H], 0                       ; 09B1 _ C7. 45, FC, 00000000
        jmp     ?_028                                   ; 09B8 _ E9, 000000B1

?_022:  mov     dword [ebp-8H], 0                       ; 09BD _ C7. 45, F8, 00000000
        jmp     ?_027                                   ; 09C4 _ E9, 00000097

?_023:  mov     eax, dword [ebp-4H]                     ; 09C9 _ 8B. 45, FC
        shl     eax, 4                                  ; 09CC _ C1. E0, 04
        mov     edx, eax                                ; 09CF _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 09D1 _ 8B. 45, F8
        add     eax, edx                                ; 09D4 _ 01. D0
        add     eax, cursor.1732                        ; 09D6 _ 05, 00000060(d)
        movzx   eax, byte [eax]                         ; 09DB _ 0F B6. 00
        cmp     al, 42                                  ; 09DE _ 3C, 2A
        jnz     ?_024                                   ; 09E0 _ 75, 17
        mov     eax, dword [ebp-4H]                     ; 09E2 _ 8B. 45, FC
        shl     eax, 4                                  ; 09E5 _ C1. E0, 04
        mov     edx, eax                                ; 09E8 _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 09EA _ 8B. 45, F8
        add     eax, edx                                ; 09ED _ 01. D0
        mov     edx, eax                                ; 09EF _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 09F1 _ 8B. 45, 08
        add     eax, edx                                ; 09F4 _ 01. D0
        mov     byte [eax], 0                           ; 09F6 _ C6. 00, 00
?_024:  mov     eax, dword [ebp-4H]                     ; 09F9 _ 8B. 45, FC
        shl     eax, 4                                  ; 09FC _ C1. E0, 04
        mov     edx, eax                                ; 09FF _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 0A01 _ 8B. 45, F8
        add     eax, edx                                ; 0A04 _ 01. D0
        add     eax, cursor.1732                        ; 0A06 _ 05, 00000060(d)
        movzx   eax, byte [eax]                         ; 0A0B _ 0F B6. 00
        cmp     al, 79                                  ; 0A0E _ 3C, 4F
        jnz     ?_025                                   ; 0A10 _ 75, 17
        mov     eax, dword [ebp-4H]                     ; 0A12 _ 8B. 45, FC
        shl     eax, 4                                  ; 0A15 _ C1. E0, 04
        mov     edx, eax                                ; 0A18 _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 0A1A _ 8B. 45, F8
        add     eax, edx                                ; 0A1D _ 01. D0
        mov     edx, eax                                ; 0A1F _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 0A21 _ 8B. 45, 08
        add     eax, edx                                ; 0A24 _ 01. D0
        mov     byte [eax], 7                           ; 0A26 _ C6. 00, 07
?_025:  mov     eax, dword [ebp-4H]                     ; 0A29 _ 8B. 45, FC
        shl     eax, 4                                  ; 0A2C _ C1. E0, 04
        mov     edx, eax                                ; 0A2F _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 0A31 _ 8B. 45, F8
        add     eax, edx                                ; 0A34 _ 01. D0
        add     eax, cursor.1732                        ; 0A36 _ 05, 00000060(d)
        movzx   eax, byte [eax]                         ; 0A3B _ 0F B6. 00
        cmp     al, 46                                  ; 0A3E _ 3C, 2E
        jnz     ?_026                                   ; 0A40 _ 75, 1A
        mov     eax, dword [ebp-4H]                     ; 0A42 _ 8B. 45, FC
        shl     eax, 4                                  ; 0A45 _ C1. E0, 04
        mov     edx, eax                                ; 0A48 _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 0A4A _ 8B. 45, F8
        add     eax, edx                                ; 0A4D _ 01. D0
        mov     edx, eax                                ; 0A4F _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 0A51 _ 8B. 45, 08
        add     edx, eax                                ; 0A54 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0A56 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0A5A _ 88. 02
?_026:  add     dword [ebp-8H], 1                       ; 0A5C _ 83. 45, F8, 01
?_027:  cmp     dword [ebp-8H], 15                      ; 0A60 _ 83. 7D, F8, 0F
        jle     ?_023                                   ; 0A64 _ 0F 8E, FFFFFF5F
        add     dword [ebp-4H], 1                       ; 0A6A _ 83. 45, FC, 01
?_028:  cmp     dword [ebp-4H], 15                      ; 0A6E _ 83. 7D, FC, 0F
        jle     ?_022                                   ; 0A72 _ 0F 8E, FFFFFF45
        nop                                             ; 0A78 _ 90
        leave                                           ; 0A79 _ C9
        ret                                             ; 0A7A _ C3
; init_mouse_cursor End of function

putblock:; Function begin
        push    ebp                                     ; 0A7B _ 55
        mov     ebp, esp                                ; 0A7C _ 89. E5
        push    ebx                                     ; 0A7E _ 53
        sub     esp, 16                                 ; 0A7F _ 83. EC, 10
        mov     dword [ebp-8H], 0                       ; 0A82 _ C7. 45, F8, 00000000
        jmp     ?_032                                   ; 0A89 _ EB, 50

?_029:  mov     dword [ebp-0CH], 0                      ; 0A8B _ C7. 45, F4, 00000000
        jmp     ?_031                                   ; 0A92 _ EB, 3B

?_030:  mov     eax, dword [ebp-8H]                     ; 0A94 _ 8B. 45, F8
        imul    eax, dword [ebp+24H]                    ; 0A97 _ 0F AF. 45, 24
        mov     edx, eax                                ; 0A9B _ 89. C2
        mov     eax, dword [ebp-0CH]                    ; 0A9D _ 8B. 45, F4
        add     eax, edx                                ; 0AA0 _ 01. D0
        mov     edx, eax                                ; 0AA2 _ 89. C2
        mov     eax, dword [ebp+20H]                    ; 0AA4 _ 8B. 45, 20
        add     eax, edx                                ; 0AA7 _ 01. D0
        mov     ecx, dword [ebp+1CH]                    ; 0AA9 _ 8B. 4D, 1C
        mov     edx, dword [ebp-8H]                     ; 0AAC _ 8B. 55, F8
        add     edx, ecx                                ; 0AAF _ 01. CA
        imul    edx, dword [ebp+0CH]                    ; 0AB1 _ 0F AF. 55, 0C
        mov     ebx, dword [ebp+18H]                    ; 0AB5 _ 8B. 5D, 18
        mov     ecx, dword [ebp-0CH]                    ; 0AB8 _ 8B. 4D, F4
        add     ecx, ebx                                ; 0ABB _ 01. D9
        add     edx, ecx                                ; 0ABD _ 01. CA
        mov     ecx, edx                                ; 0ABF _ 89. D1
        mov     edx, dword [ebp+8H]                     ; 0AC1 _ 8B. 55, 08
        add     edx, ecx                                ; 0AC4 _ 01. CA
        movzx   eax, byte [eax]                         ; 0AC6 _ 0F B6. 00
        mov     byte [edx], al                          ; 0AC9 _ 88. 02
        add     dword [ebp-0CH], 1                      ; 0ACB _ 83. 45, F4, 01
?_031:  mov     eax, dword [ebp-0CH]                    ; 0ACF _ 8B. 45, F4
        cmp     eax, dword [ebp+10H]                    ; 0AD2 _ 3B. 45, 10
        jl      ?_030                                   ; 0AD5 _ 7C, BD
        add     dword [ebp-8H], 1                       ; 0AD7 _ 83. 45, F8, 01
?_032:  mov     eax, dword [ebp-8H]                     ; 0ADB _ 8B. 45, F8
        cmp     eax, dword [ebp+14H]                    ; 0ADE _ 3B. 45, 14
        jl      ?_029                                   ; 0AE1 _ 7C, A8
        nop                                             ; 0AE3 _ 90
        add     esp, 16                                 ; 0AE4 _ 83. C4, 10
        pop     ebx                                     ; 0AE7 _ 5B
        pop     ebp                                     ; 0AE8 _ 5D
        ret                                             ; 0AE9 _ C3
; putblock End of function

intHandlerFromC:; Function begin
        push    ebp                                     ; 0AEA _ 55
        mov     ebp, esp                                ; 0AEB _ 89. E5
        sub     esp, 24                                 ; 0AED _ 83. EC, 18
        mov     eax, dword [bootInfo]                   ; 0AF0 _ A1, 00000000(d)
        mov     dword [ebp-14H], eax                    ; 0AF5 _ 89. 45, EC
        movzx   eax, word [?_138]                       ; 0AF8 _ 0F B7. 05, 00000004(d)
        cwde                                            ; 0AFF _ 98
        mov     dword [ebp-10H], eax                    ; 0B00 _ 89. 45, F0
        movzx   eax, word [?_139]                       ; 0B03 _ 0F B7. 05, 00000006(d)
        cwde                                            ; 0B0A _ 98
        mov     dword [ebp-0CH], eax                    ; 0B0B _ 89. 45, F4
        sub     esp, 8                                  ; 0B0E _ 83. EC, 08
        push    32                                      ; 0B11 _ 6A, 20
        push    32                                      ; 0B13 _ 6A, 20
        call    io_out8                                 ; 0B15 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0B1A _ 83. C4, 10
        mov     byte [ebp-15H], 0                       ; 0B1D _ C6. 45, EB, 00
        sub     esp, 12                                 ; 0B21 _ 83. EC, 0C
        push    96                                      ; 0B24 _ 6A, 60
        call    io_in8                                  ; 0B26 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0B2B _ 83. C4, 10
        mov     byte [ebp-15H], al                      ; 0B2E _ 88. 45, EB
        movzx   eax, byte [ebp-15H]                     ; 0B31 _ 0F B6. 45, EB
        sub     esp, 8                                  ; 0B35 _ 83. EC, 08
        push    eax                                     ; 0B38 _ 50
        push    keyInfo                                 ; 0B39 _ 68, 00000008(d)
        call    fifo8_put                               ; 0B3E _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0B43 _ 83. C4, 10
        nop                                             ; 0B46 _ 90
        leave                                           ; 0B47 _ C9
        ret                                             ; 0B48 _ C3
; intHandlerFromC End of function

charToHex:; Function begin
        push    ebp                                     ; 0B49 _ 55
        mov     ebp, esp                                ; 0B4A _ 89. E5
        sub     esp, 40                                 ; 0B4C _ 83. EC, 28
        mov     eax, dword [ebp+8H]                     ; 0B4F _ 8B. 45, 08
        mov     byte [ebp-1CH], al                      ; 0B52 _ 88. 45, E4
        movzx   eax, byte [ebp-1CH]                     ; 0B55 _ 0F B6. 45, E4
        and     eax, 0FH                                ; 0B59 _ 83. E0, 0F
        mov     byte [ebp-9H], al                       ; 0B5C _ 88. 45, F7
        movsx   eax, byte [ebp-9H]                      ; 0B5F _ 0F BE. 45, F7
        sub     esp, 12                                 ; 0B63 _ 83. EC, 0C
        push    eax                                     ; 0B66 _ 50
        call    charToVal                               ; 0B67 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0B6C _ 83. C4, 10
        mov     byte [?_137], al                        ; 0B6F _ A2, 00000003(d)
        movzx   eax, byte [ebp-1CH]                     ; 0B74 _ 0F B6. 45, E4
        shr     al, 4                                   ; 0B78 _ C0. E8, 04
        mov     byte [ebp-1CH], al                      ; 0B7B _ 88. 45, E4
        movzx   eax, byte [ebp-1CH]                     ; 0B7E _ 0F B6. 45, E4
        movsx   eax, al                                 ; 0B82 _ 0F BE. C0
        sub     esp, 12                                 ; 0B85 _ 83. EC, 0C
        push    eax                                     ; 0B88 _ 50
        call    charToVal                               ; 0B89 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0B8E _ 83. C4, 10
        mov     byte [?_136], al                        ; 0B91 _ A2, 00000002(d)
        mov     eax, keyVal                             ; 0B96 _ B8, 00000000(d)
        leave                                           ; 0B9B _ C9
        ret                                             ; 0B9C _ C3
; charToHex End of function

charToVal:; Function begin
        push    ebp                                     ; 0B9D _ 55
        mov     ebp, esp                                ; 0B9E _ 89. E5
        sub     esp, 4                                  ; 0BA0 _ 83. EC, 04
        mov     eax, dword [ebp+8H]                     ; 0BA3 _ 8B. 45, 08
        mov     byte [ebp-4H], al                       ; 0BA6 _ 88. 45, FC
        cmp     byte [ebp-4H], 9                        ; 0BA9 _ 80. 7D, FC, 09
        jle     ?_033                                   ; 0BAD _ 7E, 09
        movzx   eax, byte [ebp-4H]                      ; 0BAF _ 0F B6. 45, FC
        add     eax, 55                                 ; 0BB3 _ 83. C0, 37
        jmp     ?_034                                   ; 0BB6 _ EB, 07

?_033:  movzx   eax, byte [ebp-4H]                      ; 0BB8 _ 0F B6. 45, FC
        add     eax, 48                                 ; 0BBC _ 83. C0, 30
?_034:  leave                                           ; 0BBF _ C9
        ret                                             ; 0BC0 _ C3
; charToVal End of function

intToHexStr:; Function begin
        push    ebp                                     ; 0BC1 _ 55
        mov     ebp, esp                                ; 0BC2 _ 89. E5
        sub     esp, 16                                 ; 0BC4 _ 83. EC, 10
        mov     byte [str.1775], 48                     ; 0BC7 _ C6. 05, 00000200(d), 30
        mov     byte [?_140], 120                       ; 0BCE _ C6. 05, 00000201(d), 78
        mov     byte [?_141], 0                         ; 0BD5 _ C6. 05, 0000020A(d), 00
        mov     dword [ebp-0CH], 2                      ; 0BDC _ C7. 45, F4, 00000002
        jmp     ?_036                                   ; 0BE3 _ EB, 0F

?_035:  mov     eax, dword [ebp-0CH]                    ; 0BE5 _ 8B. 45, F4
        add     eax, str.1775                           ; 0BE8 _ 05, 00000200(d)
        mov     byte [eax], 48                          ; 0BED _ C6. 00, 30
        add     dword [ebp-0CH], 1                      ; 0BF0 _ 83. 45, F4, 01
?_036:  cmp     dword [ebp-0CH], 9                      ; 0BF4 _ 83. 7D, F4, 09
        jle     ?_035                                   ; 0BF8 _ 7E, EB
        mov     dword [ebp-8H], 9                       ; 0BFA _ C7. 45, F8, 00000009
        jmp     ?_039                                   ; 0C01 _ EB, 48

?_037:  mov     eax, dword [ebp+8H]                     ; 0C03 _ 8B. 45, 08
        and     eax, 0FH                                ; 0C06 _ 83. E0, 0F
        mov     dword [ebp-4H], eax                     ; 0C09 _ 89. 45, FC
        mov     eax, dword [ebp+8H]                     ; 0C0C _ 8B. 45, 08
        shr     eax, 4                                  ; 0C0F _ C1. E8, 04
        mov     dword [ebp+8H], eax                     ; 0C12 _ 89. 45, 08
        cmp     dword [ebp-4H], 9                       ; 0C15 _ 83. 7D, FC, 09
        jle     ?_038                                   ; 0C19 _ 7E, 19
        mov     eax, dword [ebp-4H]                     ; 0C1B _ 8B. 45, FC
        lea     ecx, [eax+37H]                          ; 0C1E _ 8D. 48, 37
        mov     eax, dword [ebp-8H]                     ; 0C21 _ 8B. 45, F8
        lea     edx, [eax-1H]                           ; 0C24 _ 8D. 50, FF
        mov     dword [ebp-8H], edx                     ; 0C27 _ 89. 55, F8
        mov     edx, ecx                                ; 0C2A _ 89. CA
        mov     byte [str.1775+eax], dl                 ; 0C2C _ 88. 90, 00000200(d)
        jmp     ?_039                                   ; 0C32 _ EB, 17

?_038:  mov     eax, dword [ebp-4H]                     ; 0C34 _ 8B. 45, FC
        lea     ecx, [eax+30H]                          ; 0C37 _ 8D. 48, 30
        mov     eax, dword [ebp-8H]                     ; 0C3A _ 8B. 45, F8
        lea     edx, [eax-1H]                           ; 0C3D _ 8D. 50, FF
        mov     dword [ebp-8H], edx                     ; 0C40 _ 89. 55, F8
        mov     edx, ecx                                ; 0C43 _ 89. CA
        mov     byte [str.1775+eax], dl                 ; 0C45 _ 88. 90, 00000200(d)
?_039:  cmp     dword [ebp-8H], 1                       ; 0C4B _ 83. 7D, F8, 01
        jle     ?_040                                   ; 0C4F _ 7E, 06
        cmp     dword [ebp+8H], 0                       ; 0C51 _ 83. 7D, 08, 00
        jnz     ?_037                                   ; 0C55 _ 75, AC
?_040:  mov     eax, str.1775                           ; 0C57 _ B8, 00000200(d)
        leave                                           ; 0C5C _ C9
        ret                                             ; 0C5D _ C3
; intToHexStr End of function

wait_KBC_sendReady:; Function begin
        push    ebp                                     ; 0C5E _ 55
        mov     ebp, esp                                ; 0C5F _ 89. E5
        sub     esp, 8                                  ; 0C61 _ 83. EC, 08
?_041:  sub     esp, 12                                 ; 0C64 _ 83. EC, 0C
        push    100                                     ; 0C67 _ 6A, 64
        call    io_in8                                  ; 0C69 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0C6E _ 83. C4, 10
        movsx   eax, al                                 ; 0C71 _ 0F BE. C0
        and     eax, 02H                                ; 0C74 _ 83. E0, 02
        test    eax, eax                                ; 0C77 _ 85. C0
        jz      ?_042                                   ; 0C79 _ 74, 02
        jmp     ?_041                                   ; 0C7B _ EB, E7

?_042:  nop                                             ; 0C7D _ 90
        nop                                             ; 0C7E _ 90
        leave                                           ; 0C7F _ C9
        ret                                             ; 0C80 _ C3
; wait_KBC_sendReady End of function

init_keyboard:; Function begin
        push    ebp                                     ; 0C81 _ 55
        mov     ebp, esp                                ; 0C82 _ 89. E5
        sub     esp, 8                                  ; 0C84 _ 83. EC, 08
        call    wait_KBC_sendReady                      ; 0C87 _ E8, FFFFFFFC(rel)
        sub     esp, 8                                  ; 0C8C _ 83. EC, 08
        push    96                                      ; 0C8F _ 6A, 60
        push    100                                     ; 0C91 _ 6A, 64
        call    io_out8                                 ; 0C93 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0C98 _ 83. C4, 10
        call    wait_KBC_sendReady                      ; 0C9B _ E8, FFFFFFFC(rel)
        sub     esp, 8                                  ; 0CA0 _ 83. EC, 08
        push    71                                      ; 0CA3 _ 6A, 47
        push    96                                      ; 0CA5 _ 6A, 60
        call    io_out8                                 ; 0CA7 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0CAC _ 83. C4, 10
        nop                                             ; 0CAF _ 90
        leave                                           ; 0CB0 _ C9
        ret                                             ; 0CB1 _ C3
; init_keyboard End of function

enable_mouse:; Function begin
        push    ebp                                     ; 0CB2 _ 55
        mov     ebp, esp                                ; 0CB3 _ 89. E5
        sub     esp, 8                                  ; 0CB5 _ 83. EC, 08
        call    wait_KBC_sendReady                      ; 0CB8 _ E8, FFFFFFFC(rel)
        sub     esp, 8                                  ; 0CBD _ 83. EC, 08
        push    212                                     ; 0CC0 _ 68, 000000D4
        push    100                                     ; 0CC5 _ 6A, 64
        call    io_out8                                 ; 0CC7 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0CCC _ 83. C4, 10
        call    wait_KBC_sendReady                      ; 0CCF _ E8, FFFFFFFC(rel)
        sub     esp, 8                                  ; 0CD4 _ 83. EC, 08
        push    244                                     ; 0CD7 _ 68, 000000F4
        push    96                                      ; 0CDC _ 6A, 60
        call    io_out8                                 ; 0CDE _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0CE3 _ 83. C4, 10
        mov     eax, dword [ebp+8H]                     ; 0CE6 _ 8B. 45, 08
        mov     byte [eax+3H], 0                        ; 0CE9 _ C6. 40, 03, 00
        nop                                             ; 0CED _ 90
        leave                                           ; 0CEE _ C9
        ret                                             ; 0CEF _ C3
; enable_mouse End of function

intHandlerForMouse:; Function begin
        push    ebp                                     ; 0CF0 _ 55
        mov     ebp, esp                                ; 0CF1 _ 89. E5
        sub     esp, 24                                 ; 0CF3 _ 83. EC, 18
        mov     byte [ebp-9H], 0                        ; 0CF6 _ C6. 45, F7, 00
        sub     esp, 8                                  ; 0CFA _ 83. EC, 08
        push    32                                      ; 0CFD _ 6A, 20
        push    160                                     ; 0CFF _ 68, 000000A0
        call    io_out8                                 ; 0D04 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0D09 _ 83. C4, 10
        sub     esp, 8                                  ; 0D0C _ 83. EC, 08
        push    32                                      ; 0D0F _ 6A, 20
        push    32                                      ; 0D11 _ 6A, 20
        call    io_out8                                 ; 0D13 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0D18 _ 83. C4, 10
        sub     esp, 12                                 ; 0D1B _ 83. EC, 0C
        push    96                                      ; 0D1E _ 6A, 60
        call    io_in8                                  ; 0D20 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0D25 _ 83. C4, 10
        mov     byte [ebp-9H], al                       ; 0D28 _ 88. 45, F7
        movzx   eax, byte [ebp-9H]                      ; 0D2B _ 0F B6. 45, F7
        sub     esp, 8                                  ; 0D2F _ 83. EC, 08
        push    eax                                     ; 0D32 _ 50
        push    mouseInfo                               ; 0D33 _ 68, 00000020(d)
        call    fifo8_put                               ; 0D38 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0D3D _ 83. C4, 10
        nop                                             ; 0D40 _ 90
        leave                                           ; 0D41 _ C9
        ret                                             ; 0D42 _ C3
; intHandlerForMouse End of function

fifo8_init:; Function begin
        push    ebp                                     ; 0D43 _ 55
        mov     ebp, esp                                ; 0D44 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 0D46 _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 0D49 _ 8B. 55, 0C
        mov     dword [eax+0CH], edx                    ; 0D4C _ 89. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 0D4F _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 0D52 _ 8B. 55, 10
        mov     dword [eax], edx                        ; 0D55 _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 0D57 _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 0D5A _ 8B. 55, 0C
        mov     dword [eax+10H], edx                    ; 0D5D _ 89. 50, 10
        mov     eax, dword [ebp+8H]                     ; 0D60 _ 8B. 45, 08
        mov     dword [eax+4H], 0                       ; 0D63 _ C7. 40, 04, 00000000
        mov     eax, dword [ebp+8H]                     ; 0D6A _ 8B. 45, 08
        mov     dword [eax+8H], 0                       ; 0D6D _ C7. 40, 08, 00000000
        mov     eax, dword [ebp+8H]                     ; 0D74 _ 8B. 45, 08
        mov     dword [eax+14H], 0                      ; 0D77 _ C7. 40, 14, 00000000
        nop                                             ; 0D7E _ 90
        pop     ebp                                     ; 0D7F _ 5D
        ret                                             ; 0D80 _ C3
; fifo8_init End of function

fifo8_put:; Function begin
        push    ebp                                     ; 0D81 _ 55
        mov     ebp, esp                                ; 0D82 _ 89. E5
        sub     esp, 4                                  ; 0D84 _ 83. EC, 04
        mov     eax, dword [ebp+0CH]                    ; 0D87 _ 8B. 45, 0C
        mov     byte [ebp-4H], al                       ; 0D8A _ 88. 45, FC
        mov     eax, dword [ebp+8H]                     ; 0D8D _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 0D90 _ 8B. 40, 10
        test    eax, eax                                ; 0D93 _ 85. C0
        jnz     ?_043                                   ; 0D95 _ 75, 18
        mov     eax, dword [ebp+8H]                     ; 0D97 _ 8B. 45, 08
        mov     eax, dword [eax+14H]                    ; 0D9A _ 8B. 40, 14
        or      eax, 01H                                ; 0D9D _ 83. C8, 01
        mov     edx, eax                                ; 0DA0 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 0DA2 _ 8B. 45, 08
        mov     dword [eax+14H], edx                    ; 0DA5 _ 89. 50, 14
        mov     eax, 4294967295                         ; 0DA8 _ B8, FFFFFFFF
        jmp     ?_045                                   ; 0DAD _ EB, 50

?_043:  mov     eax, dword [ebp+8H]                     ; 0DAF _ 8B. 45, 08
        mov     edx, dword [eax]                        ; 0DB2 _ 8B. 10
        mov     eax, dword [ebp+8H]                     ; 0DB4 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 0DB7 _ 8B. 40, 08
        add     edx, eax                                ; 0DBA _ 01. C2
        movzx   eax, byte [ebp-4H]                      ; 0DBC _ 0F B6. 45, FC
        mov     byte [edx], al                          ; 0DC0 _ 88. 02
        mov     eax, dword [ebp+8H]                     ; 0DC2 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 0DC5 _ 8B. 40, 08
        lea     edx, [eax+1H]                           ; 0DC8 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 0DCB _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 0DCE _ 89. 50, 08
        mov     eax, dword [ebp+8H]                     ; 0DD1 _ 8B. 45, 08
        mov     edx, dword [eax+8H]                     ; 0DD4 _ 8B. 50, 08
        mov     eax, dword [ebp+8H]                     ; 0DD7 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 0DDA _ 8B. 40, 0C
        cmp     edx, eax                                ; 0DDD _ 39. C2
        jnz     ?_044                                   ; 0DDF _ 75, 0A
        mov     eax, dword [ebp+8H]                     ; 0DE1 _ 8B. 45, 08
        mov     dword [eax+8H], 0                       ; 0DE4 _ C7. 40, 08, 00000000
?_044:  mov     eax, dword [ebp+8H]                     ; 0DEB _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 0DEE _ 8B. 40, 10
        lea     edx, [eax-1H]                           ; 0DF1 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 0DF4 _ 8B. 45, 08
        mov     dword [eax+10H], edx                    ; 0DF7 _ 89. 50, 10
        mov     eax, 1                                  ; 0DFA _ B8, 00000001
?_045:  leave                                           ; 0DFF _ C9
        ret                                             ; 0E00 _ C3
; fifo8_put End of function

fifo8_get:; Function begin
        push    ebp                                     ; 0E01 _ 55
        mov     ebp, esp                                ; 0E02 _ 89. E5
        sub     esp, 16                                 ; 0E04 _ 83. EC, 10
        mov     eax, dword [ebp+8H]                     ; 0E07 _ 8B. 45, 08
        mov     edx, dword [eax+10H]                    ; 0E0A _ 8B. 50, 10
        mov     eax, dword [ebp+8H]                     ; 0E0D _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 0E10 _ 8B. 40, 0C
        cmp     edx, eax                                ; 0E13 _ 39. C2
        jnz     ?_046                                   ; 0E15 _ 75, 07
        mov     eax, 4294967295                         ; 0E17 _ B8, FFFFFFFF
        jmp     ?_048                                   ; 0E1C _ EB, 51

?_046:  mov     eax, dword [ebp+8H]                     ; 0E1E _ 8B. 45, 08
        mov     edx, dword [eax]                        ; 0E21 _ 8B. 10
        mov     eax, dword [ebp+8H]                     ; 0E23 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 0E26 _ 8B. 40, 04
        add     eax, edx                                ; 0E29 _ 01. D0
        movzx   eax, byte [eax]                         ; 0E2B _ 0F B6. 00
        movzx   eax, al                                 ; 0E2E _ 0F B6. C0
        mov     dword [ebp-4H], eax                     ; 0E31 _ 89. 45, FC
        mov     eax, dword [ebp+8H]                     ; 0E34 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 0E37 _ 8B. 40, 04
        lea     edx, [eax+1H]                           ; 0E3A _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 0E3D _ 8B. 45, 08
        mov     dword [eax+4H], edx                     ; 0E40 _ 89. 50, 04
        mov     eax, dword [ebp+8H]                     ; 0E43 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 0E46 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 0E49 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 0E4C _ 8B. 40, 0C
        cmp     edx, eax                                ; 0E4F _ 39. C2
        jnz     ?_047                                   ; 0E51 _ 75, 0A
        mov     eax, dword [ebp+8H]                     ; 0E53 _ 8B. 45, 08
        mov     dword [eax+4H], 0                       ; 0E56 _ C7. 40, 04, 00000000
?_047:  mov     eax, dword [ebp+8H]                     ; 0E5D _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 0E60 _ 8B. 40, 10
        lea     edx, [eax+1H]                           ; 0E63 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 0E66 _ 8B. 45, 08
        mov     dword [eax+10H], edx                    ; 0E69 _ 89. 50, 10
        mov     eax, dword [ebp-4H]                     ; 0E6C _ 8B. 45, FC
?_048:  leave                                           ; 0E6F _ C9
        ret                                             ; 0E70 _ C3
; fifo8_get End of function

fifo8_status:; Function begin
        push    ebp                                     ; 0E71 _ 55
        mov     ebp, esp                                ; 0E72 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 0E74 _ 8B. 45, 08
        mov     edx, dword [eax+0CH]                    ; 0E77 _ 8B. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 0E7A _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 0E7D _ 8B. 40, 10
        sub     edx, eax                                ; 0E80 _ 29. C2
        mov     eax, edx                                ; 0E82 _ 89. D0
        pop     ebp                                     ; 0E84 _ 5D
        ret                                             ; 0E85 _ C3
; fifo8_status End of function

showKeyboardInfo:; Function begin
        push    ebp                                     ; 0E86 _ 55
        mov     ebp, esp                                ; 0E87 _ 89. E5
        sub     esp, 40                                 ; 0E89 _ 83. EC, 28
        call    io_sti                                  ; 0E8C _ E8, FFFFFFFC(rel)
        mov     eax, dword [bootInfo]                   ; 0E91 _ A1, 00000000(d)
        mov     dword [ebp-18H], eax                    ; 0E96 _ 89. 45, E8
        movzx   eax, word [?_138]                       ; 0E99 _ 0F B7. 05, 00000004(d)
        cwde                                            ; 0EA0 _ 98
        mov     dword [ebp-14H], eax                    ; 0EA1 _ 89. 45, EC
        movzx   eax, word [?_139]                       ; 0EA4 _ 0F B7. 05, 00000006(d)
        cwde                                            ; 0EAB _ 98
        mov     dword [ebp-10H], eax                    ; 0EAC _ 89. 45, F0
        mov     byte [ebp-19H], 0                       ; 0EAF _ C6. 45, E7, 00
        sub     esp, 12                                 ; 0EB3 _ 83. EC, 0C
        push    keyInfo                                 ; 0EB6 _ 68, 00000008(d)
        call    fifo8_get                               ; 0EBB _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0EC0 _ 83. C4, 10
        mov     byte [ebp-19H], al                      ; 0EC3 _ 88. 45, E7
        movzx   eax, byte [ebp-19H]                     ; 0EC6 _ 0F B6. 45, E7
        sub     esp, 12                                 ; 0ECA _ 83. EC, 0C
        push    eax                                     ; 0ECD _ 50
        call    charToHex                               ; 0ECE _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0ED3 _ 83. C4, 10
        mov     dword [ebp-0CH], eax                    ; 0ED6 _ 89. 45, F4
        mov     edx, dword [line.1824]                  ; 0ED9 _ 8B. 15, 0000020C(d)
        mov     eax, dword [pos.1823]                   ; 0EDF _ A1, 00000210(d)
        sub     esp, 8                                  ; 0EE4 _ 83. EC, 08
        push    dword [ebp-0CH]                         ; 0EE7 _ FF. 75, F4
        push    7                                       ; 0EEA _ 6A, 07
        push    edx                                     ; 0EEC _ 52
        push    eax                                     ; 0EED _ 50
        push    dword [ebp+0CH]                         ; 0EEE _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 0EF1 _ FF. 75, 08
        call    showString                              ; 0EF4 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0EF9 _ 83. C4, 20
        mov     eax, dword [pos.1823]                   ; 0EFC _ A1, 00000210(d)
        add     eax, 32                                 ; 0F01 _ 83. C0, 20
        mov     dword [pos.1823], eax                   ; 0F04 _ A3, 00000210(d)
        mov     eax, dword [pos.1823]                   ; 0F09 _ A1, 00000210(d)
        cmp     dword [ebp-14H], eax                    ; 0F0E _ 39. 45, EC
        jnz     ?_051                                   ; 0F11 _ 75, 28
        mov     eax, dword [line.1824]                  ; 0F13 _ A1, 0000020C(d)
        cmp     dword [ebp-10H], eax                    ; 0F18 _ 39. 45, F0
        jz      ?_049                                   ; 0F1B _ 74, 0A
        mov     eax, dword [line.1824]                  ; 0F1D _ A1, 0000020C(d)
        add     eax, 16                                 ; 0F22 _ 83. C0, 10
        jmp     ?_050                                   ; 0F25 _ EB, 05

?_049:  mov     eax, 0                                  ; 0F27 _ B8, 00000000
?_050:  mov     dword [line.1824], eax                  ; 0F2C _ A3, 0000020C(d)
        mov     dword [pos.1823], 0                     ; 0F31 _ C7. 05, 00000210(d), 00000000
?_051:  nop                                             ; 0F3B _ 90
        leave                                           ; 0F3C _ C9
        ret                                             ; 0F3D _ C3
; showKeyboardInfo End of function

showMouseInfo:; Function begin
        push    ebp                                     ; 0F3E _ 55
        mov     ebp, esp                                ; 0F3F _ 89. E5
        sub     esp, 24                                 ; 0F41 _ 83. EC, 18
        call    io_sti                                  ; 0F44 _ E8, FFFFFFFC(rel)
        mov     byte [ebp-9H], 0                        ; 0F49 _ C6. 45, F7, 00
        sub     esp, 12                                 ; 0F4D _ 83. EC, 0C
        push    mouseInfo                               ; 0F50 _ 68, 00000020(d)
        call    fifo8_get                               ; 0F55 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0F5A _ 83. C4, 10
        mov     byte [ebp-9H], al                       ; 0F5D _ 88. 45, F7
        movzx   eax, byte [ebp-9H]                      ; 0F60 _ 0F B6. 45, F7
        sub     esp, 8                                  ; 0F64 _ 83. EC, 08
        push    eax                                     ; 0F67 _ 50
        push    mouse_move                              ; 0F68 _ 68, 000000E0(d)
        call    mouse_decode                            ; 0F6D _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0F72 _ 83. C4, 10
        test    eax, eax                                ; 0F75 _ 85. C0
        jz      ?_052                                   ; 0F77 _ 74, 31
        sub     esp, 4                                  ; 0F79 _ 83. EC, 04
        push    mouse_move                              ; 0F7C _ 68, 000000E0(d)
        push    dword [ebp+0CH]                         ; 0F81 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 0F84 _ FF. 75, 08
        call    computeMousePos                         ; 0F87 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0F8C _ 83. C4, 10
        mov     edx, dword [my]                         ; 0F8F _ 8B. 15, 000000F4(d)
        mov     eax, dword [mx]                         ; 0F95 _ A1, 000000F0(d)
        push    edx                                     ; 0F9A _ 52
        push    eax                                     ; 0F9B _ 50
        push    dword [ebp+10H]                         ; 0F9C _ FF. 75, 10
        push    dword [ebp+8H]                          ; 0F9F _ FF. 75, 08
        call    sheet_slide                             ; 0FA2 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0FA7 _ 83. C4, 10
?_052:  nop                                             ; 0FAA _ 90
        leave                                           ; 0FAB _ C9
        ret                                             ; 0FAC _ C3
; showMouseInfo End of function

mouse_decode:; Function begin
        push    ebp                                     ; 0FAD _ 55
        mov     ebp, esp                                ; 0FAE _ 89. E5
        sub     esp, 4                                  ; 0FB0 _ 83. EC, 04
        mov     eax, dword [ebp+0CH]                    ; 0FB3 _ 8B. 45, 0C
        mov     byte [ebp-4H], al                       ; 0FB6 _ 88. 45, FC
        mov     eax, dword [ebp+8H]                     ; 0FB9 _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 0FBC _ 0F B6. 40, 03
        test    al, al                                  ; 0FC0 _ 84. C0
        jnz     ?_054                                   ; 0FC2 _ 75, 17
        cmp     byte [ebp-4H], -6                       ; 0FC4 _ 80. 7D, FC, FA
        jnz     ?_053                                   ; 0FC8 _ 75, 07
        mov     eax, dword [ebp+8H]                     ; 0FCA _ 8B. 45, 08
        mov     byte [eax+3H], 1                        ; 0FCD _ C6. 40, 03, 01
?_053:  mov     eax, 0                                  ; 0FD1 _ B8, 00000000
        jmp     ?_061                                   ; 0FD6 _ E9, 0000010C

?_054:  mov     eax, dword [ebp+8H]                     ; 0FDB _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 0FDE _ 0F B6. 40, 03
        cmp     al, 1                                   ; 0FE2 _ 3C, 01
        jnz     ?_056                                   ; 0FE4 _ 75, 25
        movzx   eax, byte [ebp-4H]                      ; 0FE6 _ 0F B6. 45, FC
        or      eax, 37H                                ; 0FEA _ 83. C8, 37
        cmp     al, 63                                  ; 0FED _ 3C, 3F
        jnz     ?_055                                   ; 0FEF _ 75, 10
        mov     eax, dword [ebp+8H]                     ; 0FF1 _ 8B. 45, 08
        movzx   edx, byte [ebp-4H]                      ; 0FF4 _ 0F B6. 55, FC
        mov     byte [eax], dl                          ; 0FF8 _ 88. 10
        mov     eax, dword [ebp+8H]                     ; 0FFA _ 8B. 45, 08
        mov     byte [eax+3H], 2                        ; 0FFD _ C6. 40, 03, 02
?_055:  mov     eax, 0                                  ; 1001 _ B8, 00000000
        jmp     ?_061                                   ; 1006 _ E9, 000000DC

?_056:  mov     eax, dword [ebp+8H]                     ; 100B _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 100E _ 0F B6. 40, 03
        cmp     al, 2                                   ; 1012 _ 3C, 02
        jnz     ?_057                                   ; 1014 _ 75, 1B
        mov     eax, dword [ebp+8H]                     ; 1016 _ 8B. 45, 08
        movzx   edx, byte [ebp-4H]                      ; 1019 _ 0F B6. 55, FC
        mov     byte [eax+1H], dl                       ; 101D _ 88. 50, 01
        mov     eax, dword [ebp+8H]                     ; 1020 _ 8B. 45, 08
        mov     byte [eax+3H], 3                        ; 1023 _ C6. 40, 03, 03
        mov     eax, 0                                  ; 1027 _ B8, 00000000
        jmp     ?_061                                   ; 102C _ E9, 000000B6

?_057:  mov     eax, dword [ebp+8H]                     ; 1031 _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 1034 _ 0F B6. 40, 03
        cmp     al, 3                                   ; 1038 _ 3C, 03
        jne     ?_060                                   ; 103A _ 0F 85, 000000A2
        mov     eax, dword [ebp+8H]                     ; 1040 _ 8B. 45, 08
        movzx   edx, byte [ebp-4H]                      ; 1043 _ 0F B6. 55, FC
        mov     byte [eax+2H], dl                       ; 1047 _ 88. 50, 02
        mov     eax, dword [ebp+8H]                     ; 104A _ 8B. 45, 08
        mov     byte [eax+3H], 1                        ; 104D _ C6. 40, 03, 01
        mov     eax, dword [ebp+8H]                     ; 1051 _ 8B. 45, 08
        movzx   eax, byte [eax]                         ; 1054 _ 0F B6. 00
        movzx   eax, al                                 ; 1057 _ 0F B6. C0
        and     eax, 07H                                ; 105A _ 83. E0, 07
        mov     edx, eax                                ; 105D _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 105F _ 8B. 45, 08
        mov     dword [eax+0CH], edx                    ; 1062 _ 89. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 1065 _ 8B. 45, 08
        movzx   eax, byte [eax+1H]                      ; 1068 _ 0F B6. 40, 01
        movzx   edx, al                                 ; 106C _ 0F B6. D0
        mov     eax, dword [ebp+8H]                     ; 106F _ 8B. 45, 08
        mov     dword [eax+4H], edx                     ; 1072 _ 89. 50, 04
        mov     eax, dword [ebp+8H]                     ; 1075 _ 8B. 45, 08
        movzx   eax, byte [eax+2H]                      ; 1078 _ 0F B6. 40, 02
        movzx   edx, al                                 ; 107C _ 0F B6. D0
        mov     eax, dword [ebp+8H]                     ; 107F _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 1082 _ 89. 50, 08
        mov     eax, dword [ebp+8H]                     ; 1085 _ 8B. 45, 08
        movzx   eax, byte [eax]                         ; 1088 _ 0F B6. 00
        movzx   eax, al                                 ; 108B _ 0F B6. C0
        and     eax, 10H                                ; 108E _ 83. E0, 10
        test    eax, eax                                ; 1091 _ 85. C0
        jz      ?_058                                   ; 1093 _ 74, 13
        mov     eax, dword [ebp+8H]                     ; 1095 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 1098 _ 8B. 40, 04
        or      eax, 0FFFFFF00H                         ; 109B _ 0D, FFFFFF00
        mov     edx, eax                                ; 10A0 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 10A2 _ 8B. 45, 08
        mov     dword [eax+4H], edx                     ; 10A5 _ 89. 50, 04
?_058:  mov     eax, dword [ebp+8H]                     ; 10A8 _ 8B. 45, 08
        movzx   eax, byte [eax]                         ; 10AB _ 0F B6. 00
        movzx   eax, al                                 ; 10AE _ 0F B6. C0
        and     eax, 20H                                ; 10B1 _ 83. E0, 20
        test    eax, eax                                ; 10B4 _ 85. C0
        jz      ?_059                                   ; 10B6 _ 74, 13
        mov     eax, dword [ebp+8H]                     ; 10B8 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 10BB _ 8B. 40, 08
        or      eax, 0FFFFFF00H                         ; 10BE _ 0D, FFFFFF00
        mov     edx, eax                                ; 10C3 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 10C5 _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 10C8 _ 89. 50, 08
?_059:  mov     eax, dword [ebp+8H]                     ; 10CB _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 10CE _ 8B. 40, 08
        neg     eax                                     ; 10D1 _ F7. D8
        mov     edx, eax                                ; 10D3 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 10D5 _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 10D8 _ 89. 50, 08
        mov     eax, 1                                  ; 10DB _ B8, 00000001
        jmp     ?_061                                   ; 10E0 _ EB, 05

?_060:  mov     eax, 4294967295                         ; 10E2 _ B8, FFFFFFFF
?_061:  leave                                           ; 10E7 _ C9
        ret                                             ; 10E8 _ C3
; mouse_decode End of function

computeMousePos:; Function begin
        push    ebp                                     ; 10E9 _ 55
        mov     ebp, esp                                ; 10EA _ 89. E5
        sub     esp, 24                                 ; 10EC _ 83. EC, 18
        movzx   eax, word [?_138]                       ; 10EF _ 0F B7. 05, 00000004(d)
        cwde                                            ; 10F6 _ 98
        mov     dword [ebp-10H], eax                    ; 10F7 _ 89. 45, F0
        movzx   eax, word [?_139]                       ; 10FA _ 0F B7. 05, 00000006(d)
        cwde                                            ; 1101 _ 98
        mov     dword [ebp-0CH], eax                    ; 1102 _ 89. 45, F4
        mov     eax, dword [ebp+10H]                    ; 1105 _ 8B. 45, 10
        mov     edx, dword [eax+4H]                     ; 1108 _ 8B. 50, 04
        mov     eax, dword [mx]                         ; 110B _ A1, 000000F0(d)
        add     eax, edx                                ; 1110 _ 01. D0
        mov     dword [mx], eax                         ; 1112 _ A3, 000000F0(d)
        mov     eax, dword [ebp+10H]                    ; 1117 _ 8B. 45, 10
        mov     edx, dword [eax+8H]                     ; 111A _ 8B. 50, 08
        mov     eax, dword [my]                         ; 111D _ A1, 000000F4(d)
        add     eax, edx                                ; 1122 _ 01. D0
        mov     dword [my], eax                         ; 1124 _ A3, 000000F4(d)
        mov     eax, dword [mx]                         ; 1129 _ A1, 000000F0(d)
        test    eax, eax                                ; 112E _ 85. C0
        jns     ?_062                                   ; 1130 _ 79, 0A
        mov     dword [mx], 0                           ; 1132 _ C7. 05, 000000F0(d), 00000000
?_062:  mov     eax, dword [my]                         ; 113C _ A1, 000000F4(d)
        test    eax, eax                                ; 1141 _ 85. C0
        jns     ?_063                                   ; 1143 _ 79, 0A
        mov     dword [my], 0                           ; 1145 _ C7. 05, 000000F4(d), 00000000
?_063:  mov     eax, dword [ebp-10H]                    ; 114F _ 8B. 45, F0
        lea     edx, [eax-9H]                           ; 1152 _ 8D. 50, F7
        mov     eax, dword [mx]                         ; 1155 _ A1, 000000F0(d)
        cmp     edx, eax                                ; 115A _ 39. C2
        jge     ?_064                                   ; 115C _ 7D, 0B
        mov     eax, dword [ebp-10H]                    ; 115E _ 8B. 45, F0
        sub     eax, 9                                  ; 1161 _ 83. E8, 09
        mov     dword [mx], eax                         ; 1164 _ A3, 000000F0(d)
?_064:  mov     eax, dword [ebp-0CH]                    ; 1169 _ 8B. 45, F4
        lea     edx, [eax-1H]                           ; 116C _ 8D. 50, FF
        mov     eax, dword [my]                         ; 116F _ A1, 000000F4(d)
        cmp     edx, eax                                ; 1174 _ 39. C2
        jge     ?_065                                   ; 1176 _ 7D, 0B
        mov     eax, dword [ebp-0CH]                    ; 1178 _ 8B. 45, F4
        sub     eax, 1                                  ; 117B _ 83. E8, 01
        mov     dword [my], eax                         ; 117E _ A3, 000000F4(d)
?_065:  mov     eax, dword [buf_back]                   ; 1183 _ A1, 000000F8(d)
        push    15                                      ; 1188 _ 6A, 0F
        push    79                                      ; 118A _ 6A, 4F
        push    0                                       ; 118C _ 6A, 00
        push    0                                       ; 118E _ 6A, 00
        push    14                                      ; 1190 _ 6A, 0E
        push    dword [ebp-10H]                         ; 1192 _ FF. 75, F0
        push    eax                                     ; 1195 _ 50
        call    boxfill8                                ; 1196 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 119B _ 83. C4, 1C
        sub     esp, 8                                  ; 119E _ 83. EC, 08
        push    ?_129                                   ; 11A1 _ 68, 0000001F(d)
        push    3                                       ; 11A6 _ 6A, 03
        push    0                                       ; 11A8 _ 6A, 00
        push    0                                       ; 11AA _ 6A, 00
        push    dword [ebp+0CH]                         ; 11AC _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 11AF _ FF. 75, 08
        call    showString                              ; 11B2 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 11B7 _ 83. C4, 20
        nop                                             ; 11BA _ 90
        leave                                           ; 11BB _ C9
        ret                                             ; 11BC _ C3
; computeMousePos End of function

showMemInfo:; Function begin
        push    ebp                                     ; 11BD _ 55
        mov     ebp, esp                                ; 11BE _ 89. E5
        sub     esp, 56                                 ; 11C0 _ 83. EC, 38
        mov     dword [ebp-30H], 0                      ; 11C3 _ C7. 45, D0, 00000000
        mov     dword [ebp-2CH], 0                      ; 11CA _ C7. 45, D4, 00000000
        mov     dword [ebp-28H], 112                    ; 11D1 _ C7. 45, D8, 00000070
        mov     dword [ebp-24H], 80                     ; 11D8 _ C7. 45, DC, 00000050
        push    100                                     ; 11DF _ 6A, 64
        push    dword [ebp+1CH]                         ; 11E1 _ FF. 75, 1C
        push    0                                       ; 11E4 _ 6A, 00
        push    0                                       ; 11E6 _ 6A, 00
        push    14                                      ; 11E8 _ 6A, 0E
        push    dword [ebp+1CH]                         ; 11EA _ FF. 75, 1C
        push    dword [ebp+14H]                         ; 11ED _ FF. 75, 14
        call    boxfill8                                ; 11F0 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 11F5 _ 83. C4, 1C
        mov     eax, dword [ebp+20H]                    ; 11F8 _ 8B. 45, 20
        movsx   eax, al                                 ; 11FB _ 0F BE. C0
        sub     esp, 8                                  ; 11FE _ 83. EC, 08
        push    ?_130                                   ; 1201 _ 68, 00000036(d)
        push    eax                                     ; 1206 _ 50
        push    dword [ebp-2CH]                         ; 1207 _ FF. 75, D4
        push    dword [ebp-30H]                         ; 120A _ FF. 75, D0
        push    dword [ebp+0CH]                         ; 120D _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1210 _ FF. 75, 08
        call    showString                              ; 1213 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1218 _ 83. C4, 20
        mov     eax, dword [ebp+18H]                    ; 121B _ 8B. 45, 18
        sub     esp, 12                                 ; 121E _ 83. EC, 0C
        push    eax                                     ; 1221 _ 50
        call    intToHexStr                             ; 1222 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1227 _ 83. C4, 10
        mov     dword [ebp-20H], eax                    ; 122A _ 89. 45, E0
        mov     eax, dword [ebp+20H]                    ; 122D _ 8B. 45, 20
        movsx   eax, al                                 ; 1230 _ 0F BE. C0
        sub     esp, 8                                  ; 1233 _ 83. EC, 08
        push    dword [ebp-20H]                         ; 1236 _ FF. 75, E0
        push    eax                                     ; 1239 _ 50
        push    dword [ebp-2CH]                         ; 123A _ FF. 75, D4
        push    dword [ebp-28H]                         ; 123D _ FF. 75, D8
        push    dword [ebp+0CH]                         ; 1240 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1243 _ FF. 75, 08
        call    showString                              ; 1246 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 124B _ 83. C4, 20
        add     dword [ebp-2CH], 16                     ; 124E _ 83. 45, D4, 10
        mov     eax, dword [ebp+20H]                    ; 1252 _ 8B. 45, 20
        movsx   eax, al                                 ; 1255 _ 0F BE. C0
        sub     esp, 8                                  ; 1258 _ 83. EC, 08
        push    ?_131                                   ; 125B _ 68, 00000040(d)
        push    eax                                     ; 1260 _ 50
        push    dword [ebp-2CH]                         ; 1261 _ FF. 75, D4
        push    dword [ebp-30H]                         ; 1264 _ FF. 75, D0
        push    dword [ebp+0CH]                         ; 1267 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 126A _ FF. 75, 08
        call    showString                              ; 126D _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1272 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 1275 _ 8B. 45, 10
        mov     eax, dword [eax]                        ; 1278 _ 8B. 00
        sub     esp, 12                                 ; 127A _ 83. EC, 0C
        push    eax                                     ; 127D _ 50
        call    intToHexStr                             ; 127E _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1283 _ 83. C4, 10
        mov     dword [ebp-1CH], eax                    ; 1286 _ 89. 45, E4
        mov     eax, dword [ebp+20H]                    ; 1289 _ 8B. 45, 20
        movsx   eax, al                                 ; 128C _ 0F BE. C0
        sub     esp, 8                                  ; 128F _ 83. EC, 08
        push    dword [ebp-1CH]                         ; 1292 _ FF. 75, E4
        push    eax                                     ; 1295 _ 50
        push    dword [ebp-2CH]                         ; 1296 _ FF. 75, D4
        push    dword [ebp-28H]                         ; 1299 _ FF. 75, D8
        push    dword [ebp+0CH]                         ; 129C _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 129F _ FF. 75, 08
        call    showString                              ; 12A2 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 12A7 _ 83. C4, 20
        add     dword [ebp-2CH], 16                     ; 12AA _ 83. 45, D4, 10
        mov     eax, dword [ebp+20H]                    ; 12AE _ 8B. 45, 20
        movsx   eax, al                                 ; 12B1 _ 0F BE. C0
        sub     esp, 8                                  ; 12B4 _ 83. EC, 08
        push    ?_132                                   ; 12B7 _ 68, 0000004E(d)
        push    eax                                     ; 12BC _ 50
        push    dword [ebp-2CH]                         ; 12BD _ FF. 75, D4
        push    dword [ebp-30H]                         ; 12C0 _ FF. 75, D0
        push    dword [ebp+0CH]                         ; 12C3 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 12C6 _ FF. 75, 08
        call    showString                              ; 12C9 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 12CE _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 12D1 _ 8B. 45, 10
        mov     eax, dword [eax+4H]                     ; 12D4 _ 8B. 40, 04
        sub     esp, 12                                 ; 12D7 _ 83. EC, 0C
        push    eax                                     ; 12DA _ 50
        call    intToHexStr                             ; 12DB _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 12E0 _ 83. C4, 10
        mov     dword [ebp-18H], eax                    ; 12E3 _ 89. 45, E8
        mov     eax, dword [ebp+20H]                    ; 12E6 _ 8B. 45, 20
        movsx   eax, al                                 ; 12E9 _ 0F BE. C0
        sub     esp, 8                                  ; 12EC _ 83. EC, 08
        push    dword [ebp-18H]                         ; 12EF _ FF. 75, E8
        push    eax                                     ; 12F2 _ 50
        push    dword [ebp-2CH]                         ; 12F3 _ FF. 75, D4
        push    dword [ebp-28H]                         ; 12F6 _ FF. 75, D8
        push    dword [ebp+0CH]                         ; 12F9 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 12FC _ FF. 75, 08
        call    showString                              ; 12FF _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1304 _ 83. C4, 20
        add     dword [ebp-2CH], 16                     ; 1307 _ 83. 45, D4, 10
        mov     eax, dword [ebp+20H]                    ; 130B _ 8B. 45, 20
        movsx   eax, al                                 ; 130E _ 0F BE. C0
        sub     esp, 8                                  ; 1311 _ 83. EC, 08
        push    ?_133                                   ; 1314 _ 68, 0000005D(d)
        push    eax                                     ; 1319 _ 50
        push    dword [ebp-2CH]                         ; 131A _ FF. 75, D4
        push    dword [ebp-30H]                         ; 131D _ FF. 75, D0
        push    dword [ebp+0CH]                         ; 1320 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1323 _ FF. 75, 08
        call    showString                              ; 1326 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 132B _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 132E _ 8B. 45, 10
        mov     eax, dword [eax+8H]                     ; 1331 _ 8B. 40, 08
        sub     esp, 12                                 ; 1334 _ 83. EC, 0C
        push    eax                                     ; 1337 _ 50
        call    intToHexStr                             ; 1338 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 133D _ 83. C4, 10
        mov     dword [ebp-14H], eax                    ; 1340 _ 89. 45, EC
        mov     eax, dword [ebp+20H]                    ; 1343 _ 8B. 45, 20
        movsx   eax, al                                 ; 1346 _ 0F BE. C0
        sub     esp, 8                                  ; 1349 _ 83. EC, 08
        push    dword [ebp-14H]                         ; 134C _ FF. 75, EC
        push    eax                                     ; 134F _ 50
        push    dword [ebp-2CH]                         ; 1350 _ FF. 75, D4
        push    dword [ebp-28H]                         ; 1353 _ FF. 75, D8
        push    dword [ebp+0CH]                         ; 1356 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1359 _ FF. 75, 08
        call    showString                              ; 135C _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1361 _ 83. C4, 20
        add     dword [ebp-2CH], 16                     ; 1364 _ 83. 45, D4, 10
        mov     eax, dword [ebp+20H]                    ; 1368 _ 8B. 45, 20
        movsx   eax, al                                 ; 136B _ 0F BE. C0
        sub     esp, 8                                  ; 136E _ 83. EC, 08
        push    ?_134                                   ; 1371 _ 68, 00000069(d)
        push    eax                                     ; 1376 _ 50
        push    dword [ebp-2CH]                         ; 1377 _ FF. 75, D4
        push    dword [ebp-30H]                         ; 137A _ FF. 75, D0
        push    dword [ebp+0CH]                         ; 137D _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1380 _ FF. 75, 08
        call    showString                              ; 1383 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1388 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 138B _ 8B. 45, 10
        mov     eax, dword [eax+0CH]                    ; 138E _ 8B. 40, 0C
        sub     esp, 12                                 ; 1391 _ 83. EC, 0C
        push    eax                                     ; 1394 _ 50
        call    intToHexStr                             ; 1395 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 139A _ 83. C4, 10
        mov     dword [ebp-10H], eax                    ; 139D _ 89. 45, F0
        mov     eax, dword [ebp+20H]                    ; 13A0 _ 8B. 45, 20
        movsx   eax, al                                 ; 13A3 _ 0F BE. C0
        sub     esp, 8                                  ; 13A6 _ 83. EC, 08
        push    dword [ebp-10H]                         ; 13A9 _ FF. 75, F0
        push    eax                                     ; 13AC _ 50
        push    dword [ebp-2CH]                         ; 13AD _ FF. 75, D4
        push    dword [ebp-28H]                         ; 13B0 _ FF. 75, D8
        push    dword [ebp+0CH]                         ; 13B3 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 13B6 _ FF. 75, 08
        call    showString                              ; 13B9 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 13BE _ 83. C4, 20
        add     dword [ebp-2CH], 16                     ; 13C1 _ 83. 45, D4, 10
        mov     eax, dword [ebp+20H]                    ; 13C5 _ 8B. 45, 20
        movsx   eax, al                                 ; 13C8 _ 0F BE. C0
        sub     esp, 8                                  ; 13CB _ 83. EC, 08
        push    ?_135                                   ; 13CE _ 68, 00000076(d)
        push    eax                                     ; 13D3 _ 50
        push    dword [ebp-2CH]                         ; 13D4 _ FF. 75, D4
        push    dword [ebp-30H]                         ; 13D7 _ FF. 75, D0
        push    dword [ebp+0CH]                         ; 13DA _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 13DD _ FF. 75, 08
        call    showString                              ; 13E0 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 13E5 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 13E8 _ 8B. 45, 10
        mov     eax, dword [eax+10H]                    ; 13EB _ 8B. 40, 10
        sub     esp, 12                                 ; 13EE _ 83. EC, 0C
        push    eax                                     ; 13F1 _ 50
        call    intToHexStr                             ; 13F2 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 13F7 _ 83. C4, 10
        mov     dword [ebp-0CH], eax                    ; 13FA _ 89. 45, F4
        mov     eax, dword [ebp+20H]                    ; 13FD _ 8B. 45, 20
        movsx   eax, al                                 ; 1400 _ 0F BE. C0
        sub     esp, 8                                  ; 1403 _ 83. EC, 08
        push    dword [ebp-0CH]                         ; 1406 _ FF. 75, F4
        push    eax                                     ; 1409 _ 50
        push    dword [ebp-2CH]                         ; 140A _ FF. 75, D4
        push    dword [ebp-28H]                         ; 140D _ FF. 75, D8
        push    dword [ebp+0CH]                         ; 1410 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1413 _ FF. 75, 08
        call    showString                              ; 1416 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 141B _ 83. C4, 20
        add     dword [ebp-2CH], 16                     ; 141E _ 83. 45, D4, 10
        nop                                             ; 1422 _ 90
        leave                                           ; 1423 _ C9
        ret                                             ; 1424 _ C3
; showMemInfo End of function

messageBox:; Function begin
        push    ebp                                     ; 1425 _ 55
        mov     ebp, esp                                ; 1426 _ 89. E5
        sub     esp, 24                                 ; 1428 _ 83. EC, 18
        mov     eax, dword [memman]                     ; 142B _ A1, 00000008(d)
        sub     esp, 8                                  ; 1430 _ 83. EC, 08
        push    12000                                   ; 1433 _ 68, 00002EE0
        push    eax                                     ; 1438 _ 50
        call    memman_alloc_4K                         ; 1439 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 143E _ 83. C4, 10
        mov     dword [ebp-10H], eax                    ; 1441 _ 89. 45, F0
        sub     esp, 12                                 ; 1444 _ 83. EC, 0C
        push    dword [ebp+8H]                          ; 1447 _ FF. 75, 08
        call    sheet_alloc                             ; 144A _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 144F _ 83. C4, 10
        mov     dword [ebp-0CH], eax                    ; 1452 _ 89. 45, F4
        sub     esp, 12                                 ; 1455 _ 83. EC, 0C
        push    99                                      ; 1458 _ 6A, 63
        push    75                                      ; 145A _ 6A, 4B
        push    160                                     ; 145C _ 68, 000000A0
        push    dword [ebp-10H]                         ; 1461 _ FF. 75, F0
        push    dword [ebp-0CH]                         ; 1464 _ FF. 75, F4
        call    sheet_setbuf                            ; 1467 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 146C _ 83. C4, 20
        sub     esp, 4                                  ; 146F _ 83. EC, 04
        push    dword [ebp+0CH]                         ; 1472 _ FF. 75, 0C
        push    dword [ebp-0CH]                         ; 1475 _ FF. 75, F4
        push    dword [ebp+8H]                          ; 1478 _ FF. 75, 08
        call    make_window8                            ; 147B _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1480 _ 83. C4, 10
        push    40                                      ; 1483 _ 6A, 28
        push    100                                     ; 1485 _ 6A, 64
        push    dword [ebp-0CH]                         ; 1487 _ FF. 75, F4
        push    dword [ebp+8H]                          ; 148A _ FF. 75, 08
        call    sheet_slide                             ; 148D _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1492 _ 83. C4, 10
        sub     esp, 4                                  ; 1495 _ 83. EC, 04
        push    1                                       ; 1498 _ 6A, 01
        push    dword [ebp-0CH]                         ; 149A _ FF. 75, F4
        push    dword [ebp+8H]                          ; 149D _ FF. 75, 08
        call    sheet_level_updown                      ; 14A0 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 14A5 _ 83. C4, 10
        mov     eax, dword [ebp-0CH]                    ; 14A8 _ 8B. 45, F4
        leave                                           ; 14AB _ C9
        ret                                             ; 14AC _ C3
; messageBox End of function

make_window8:; Function begin
        push    ebp                                     ; 14AD _ 55
        mov     ebp, esp                                ; 14AE _ 89. E5
        push    ebx                                     ; 14B0 _ 53
        sub     esp, 36                                 ; 14B1 _ 83. EC, 24
        mov     eax, dword [ebp+0CH]                    ; 14B4 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 14B7 _ 8B. 40, 04
        mov     dword [ebp-10H], eax                    ; 14BA _ 89. 45, F0
        mov     eax, dword [ebp+0CH]                    ; 14BD _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 14C0 _ 8B. 40, 08
        mov     dword [ebp-0CH], eax                    ; 14C3 _ 89. 45, F4
        mov     eax, dword [ebp-10H]                    ; 14C6 _ 8B. 45, F0
        lea     edx, [eax-1H]                           ; 14C9 _ 8D. 50, FF
        mov     eax, dword [ebp+0CH]                    ; 14CC _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 14CF _ 8B. 00
        push    0                                       ; 14D1 _ 6A, 00
        push    edx                                     ; 14D3 _ 52
        push    0                                       ; 14D4 _ 6A, 00
        push    0                                       ; 14D6 _ 6A, 00
        push    8                                       ; 14D8 _ 6A, 08
        push    dword [ebp-10H]                         ; 14DA _ FF. 75, F0
        push    eax                                     ; 14DD _ 50
        call    boxfill8                                ; 14DE _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 14E3 _ 83. C4, 1C
        mov     eax, dword [ebp-10H]                    ; 14E6 _ 8B. 45, F0
        lea     edx, [eax-2H]                           ; 14E9 _ 8D. 50, FE
        mov     eax, dword [ebp+0CH]                    ; 14EC _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 14EF _ 8B. 00
        push    1                                       ; 14F1 _ 6A, 01
        push    edx                                     ; 14F3 _ 52
        push    1                                       ; 14F4 _ 6A, 01
        push    1                                       ; 14F6 _ 6A, 01
        push    7                                       ; 14F8 _ 6A, 07
        push    dword [ebp-10H]                         ; 14FA _ FF. 75, F0
        push    eax                                     ; 14FD _ 50
        call    boxfill8                                ; 14FE _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 1503 _ 83. C4, 1C
        mov     eax, dword [ebp-0CH]                    ; 1506 _ 8B. 45, F4
        lea     edx, [eax-1H]                           ; 1509 _ 8D. 50, FF
        mov     eax, dword [ebp+0CH]                    ; 150C _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 150F _ 8B. 00
        push    edx                                     ; 1511 _ 52
        push    0                                       ; 1512 _ 6A, 00
        push    0                                       ; 1514 _ 6A, 00
        push    0                                       ; 1516 _ 6A, 00
        push    8                                       ; 1518 _ 6A, 08
        push    dword [ebp-10H]                         ; 151A _ FF. 75, F0
        push    eax                                     ; 151D _ 50
        call    boxfill8                                ; 151E _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 1523 _ 83. C4, 1C
        mov     eax, dword [ebp-0CH]                    ; 1526 _ 8B. 45, F4
        lea     edx, [eax-1H]                           ; 1529 _ 8D. 50, FF
        mov     eax, dword [ebp+0CH]                    ; 152C _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 152F _ 8B. 00
        push    edx                                     ; 1531 _ 52
        push    1                                       ; 1532 _ 6A, 01
        push    1                                       ; 1534 _ 6A, 01
        push    1                                       ; 1536 _ 6A, 01
        push    7                                       ; 1538 _ 6A, 07
        push    dword [ebp-10H]                         ; 153A _ FF. 75, F0
        push    eax                                     ; 153D _ 50
        call    boxfill8                                ; 153E _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 1543 _ 83. C4, 1C
        mov     eax, dword [ebp-0CH]                    ; 1546 _ 8B. 45, F4
        lea     ebx, [eax-2H]                           ; 1549 _ 8D. 58, FE
        mov     eax, dword [ebp-10H]                    ; 154C _ 8B. 45, F0
        lea     ecx, [eax-2H]                           ; 154F _ 8D. 48, FE
        mov     eax, dword [ebp-10H]                    ; 1552 _ 8B. 45, F0
        lea     edx, [eax-2H]                           ; 1555 _ 8D. 50, FE
        mov     eax, dword [ebp+0CH]                    ; 1558 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 155B _ 8B. 00
        push    ebx                                     ; 155D _ 53
        push    ecx                                     ; 155E _ 51
        push    1                                       ; 155F _ 6A, 01
        push    edx                                     ; 1561 _ 52
        push    15                                      ; 1562 _ 6A, 0F
        push    dword [ebp-10H]                         ; 1564 _ FF. 75, F0
        push    eax                                     ; 1567 _ 50
        call    boxfill8                                ; 1568 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 156D _ 83. C4, 1C
        mov     eax, dword [ebp-0CH]                    ; 1570 _ 8B. 45, F4
        lea     ebx, [eax-1H]                           ; 1573 _ 8D. 58, FF
        mov     eax, dword [ebp-10H]                    ; 1576 _ 8B. 45, F0
        lea     ecx, [eax-1H]                           ; 1579 _ 8D. 48, FF
        mov     eax, dword [ebp-10H]                    ; 157C _ 8B. 45, F0
        lea     edx, [eax-1H]                           ; 157F _ 8D. 50, FF
        mov     eax, dword [ebp+0CH]                    ; 1582 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 1585 _ 8B. 00
        push    ebx                                     ; 1587 _ 53
        push    ecx                                     ; 1588 _ 51
        push    0                                       ; 1589 _ 6A, 00
        push    edx                                     ; 158B _ 52
        push    0                                       ; 158C _ 6A, 00
        push    dword [ebp-10H]                         ; 158E _ FF. 75, F0
        push    eax                                     ; 1591 _ 50
        call    boxfill8                                ; 1592 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 1597 _ 83. C4, 1C
        mov     eax, dword [ebp-0CH]                    ; 159A _ 8B. 45, F4
        lea     ecx, [eax-3H]                           ; 159D _ 8D. 48, FD
        mov     eax, dword [ebp-10H]                    ; 15A0 _ 8B. 45, F0
        lea     edx, [eax-3H]                           ; 15A3 _ 8D. 50, FD
        mov     eax, dword [ebp+0CH]                    ; 15A6 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 15A9 _ 8B. 00
        push    ecx                                     ; 15AB _ 51
        push    edx                                     ; 15AC _ 52
        push    2                                       ; 15AD _ 6A, 02
        push    2                                       ; 15AF _ 6A, 02
        push    8                                       ; 15B1 _ 6A, 08
        push    dword [ebp-10H]                         ; 15B3 _ FF. 75, F0
        push    eax                                     ; 15B6 _ 50
        call    boxfill8                                ; 15B7 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 15BC _ 83. C4, 1C
        mov     eax, dword [ebp-10H]                    ; 15BF _ 8B. 45, F0
        lea     edx, [eax-4H]                           ; 15C2 _ 8D. 50, FC
        mov     eax, dword [ebp+0CH]                    ; 15C5 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 15C8 _ 8B. 00
        push    20                                      ; 15CA _ 6A, 14
        push    edx                                     ; 15CC _ 52
        push    3                                       ; 15CD _ 6A, 03
        push    3                                       ; 15CF _ 6A, 03
        push    12                                      ; 15D1 _ 6A, 0C
        push    dword [ebp-10H]                         ; 15D3 _ FF. 75, F0
        push    eax                                     ; 15D6 _ 50
        call    boxfill8                                ; 15D7 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 15DC _ 83. C4, 1C
        mov     eax, dword [ebp-0CH]                    ; 15DF _ 8B. 45, F4
        lea     ebx, [eax-2H]                           ; 15E2 _ 8D. 58, FE
        mov     eax, dword [ebp-10H]                    ; 15E5 _ 8B. 45, F0
        lea     ecx, [eax-2H]                           ; 15E8 _ 8D. 48, FE
        mov     eax, dword [ebp-0CH]                    ; 15EB _ 8B. 45, F4
        lea     edx, [eax-2H]                           ; 15EE _ 8D. 50, FE
        mov     eax, dword [ebp+0CH]                    ; 15F1 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 15F4 _ 8B. 00
        push    ebx                                     ; 15F6 _ 53
        push    ecx                                     ; 15F7 _ 51
        push    edx                                     ; 15F8 _ 52
        push    1                                       ; 15F9 _ 6A, 01
        push    15                                      ; 15FB _ 6A, 0F
        push    dword [ebp-10H]                         ; 15FD _ FF. 75, F0
        push    eax                                     ; 1600 _ 50
        call    boxfill8                                ; 1601 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 1606 _ 83. C4, 1C
        mov     eax, dword [ebp-0CH]                    ; 1609 _ 8B. 45, F4
        lea     ebx, [eax-1H]                           ; 160C _ 8D. 58, FF
        mov     eax, dword [ebp-10H]                    ; 160F _ 8B. 45, F0
        lea     ecx, [eax-1H]                           ; 1612 _ 8D. 48, FF
        mov     eax, dword [ebp-0CH]                    ; 1615 _ 8B. 45, F4
        lea     edx, [eax-1H]                           ; 1618 _ 8D. 50, FF
        mov     eax, dword [ebp+0CH]                    ; 161B _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 161E _ 8B. 00
        push    ebx                                     ; 1620 _ 53
        push    ecx                                     ; 1621 _ 51
        push    edx                                     ; 1622 _ 52
        push    0                                       ; 1623 _ 6A, 00
        push    0                                       ; 1625 _ 6A, 00
        push    dword [ebp-10H]                         ; 1627 _ FF. 75, F0
        push    eax                                     ; 162A _ 50
        call    boxfill8                                ; 162B _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 1630 _ 83. C4, 1C
        sub     esp, 8                                  ; 1633 _ 83. EC, 08
        push    dword [ebp+10H]                         ; 1636 _ FF. 75, 10
        push    7                                       ; 1639 _ 6A, 07
        push    4                                       ; 163B _ 6A, 04
        push    8                                       ; 163D _ 6A, 08
        push    dword [ebp+0CH]                         ; 163F _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1642 _ FF. 75, 08
        call    showString                              ; 1645 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 164A _ 83. C4, 20
        mov     dword [ebp-18H], 0                      ; 164D _ C7. 45, E8, 00000000
        jmp     ?_072                                   ; 1654 _ EB, 7D

?_066:  mov     dword [ebp-14H], 0                      ; 1656 _ C7. 45, EC, 00000000
        jmp     ?_071                                   ; 165D _ EB, 6A

?_067:  mov     eax, dword [ebp-18H]                    ; 165F _ 8B. 45, E8
        shl     eax, 4                                  ; 1662 _ C1. E0, 04
        mov     edx, eax                                ; 1665 _ 89. C2
        mov     eax, dword [ebp-14H]                    ; 1667 _ 8B. 45, EC
        add     eax, edx                                ; 166A _ 01. D0
        add     eax, closebtn.1872                      ; 166C _ 05, 00000160(d)
        movzx   eax, byte [eax]                         ; 1671 _ 0F B6. 00
        mov     byte [ebp-19H], al                      ; 1674 _ 88. 45, E7
        cmp     byte [ebp-19H], 64                      ; 1677 _ 80. 7D, E7, 40
        jnz     ?_068                                   ; 167B _ 75, 06
        mov     byte [ebp-19H], 0                       ; 167D _ C6. 45, E7, 00
        jmp     ?_070                                   ; 1681 _ EB, 16

?_068:  cmp     byte [ebp-19H], 36                      ; 1683 _ 80. 7D, E7, 24
        jnz     ?_069                                   ; 1687 _ 75, 06
        mov     byte [ebp-19H], 15                      ; 1689 _ C6. 45, E7, 0F
        jmp     ?_070                                   ; 168D _ EB, 0A

?_069:  cmp     byte [ebp-19H], 81                      ; 168F _ 80. 7D, E7, 51
        jnz     ?_070                                   ; 1693 _ 75, 04
        mov     byte [ebp-19H], 8                       ; 1695 _ C6. 45, E7, 08
?_070:  mov     eax, dword [ebp+0CH]                    ; 1699 _ 8B. 45, 0C
        mov     edx, dword [eax]                        ; 169C _ 8B. 10
        mov     eax, dword [ebp-18H]                    ; 169E _ 8B. 45, E8
        lea     ecx, [eax+5H]                           ; 16A1 _ 8D. 48, 05
        mov     eax, dword [ebp+0CH]                    ; 16A4 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 16A7 _ 8B. 40, 04
        imul    ecx, eax                                ; 16AA _ 0F AF. C8
        mov     eax, dword [ebp+0CH]                    ; 16AD _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 16B0 _ 8B. 40, 04
        lea     ebx, [eax-15H]                          ; 16B3 _ 8D. 58, EB
        mov     eax, dword [ebp-14H]                    ; 16B6 _ 8B. 45, EC
        add     eax, ebx                                ; 16B9 _ 01. D8
        add     eax, ecx                                ; 16BB _ 01. C8
        add     edx, eax                                ; 16BD _ 01. C2
        movzx   eax, byte [ebp-19H]                     ; 16BF _ 0F B6. 45, E7
        mov     byte [edx], al                          ; 16C3 _ 88. 02
        add     dword [ebp-14H], 1                      ; 16C5 _ 83. 45, EC, 01
?_071:  cmp     dword [ebp-14H], 15                     ; 16C9 _ 83. 7D, EC, 0F
        jle     ?_067                                   ; 16CD _ 7E, 90
        add     dword [ebp-18H], 1                      ; 16CF _ 83. 45, E8, 01
?_072:  cmp     dword [ebp-18H], 13                     ; 16D3 _ 83. 7D, E8, 0D
        jle     ?_066                                   ; 16D7 _ 0F 8E, FFFFFF79
        nop                                             ; 16DD _ 90
        mov     ebx, dword [ebp-4H]                     ; 16DE _ 8B. 5D, FC
        leave                                           ; 16E1 _ C9
        ret                                             ; 16E2 _ C3
; make_window8 End of function

memman_init:; Function begin
        push    ebp                                     ; 16E3 _ 55
        mov     ebp, esp                                ; 16E4 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 16E6 _ 8B. 45, 08
        mov     dword [eax], 0                          ; 16E9 _ C7. 00, 00000000
        mov     eax, dword [ebp+8H]                     ; 16EF _ 8B. 45, 08
        mov     dword [eax+4H], 0                       ; 16F2 _ C7. 40, 04, 00000000
        mov     eax, dword [ebp+8H]                     ; 16F9 _ 8B. 45, 08
        mov     dword [eax+8H], 0                       ; 16FC _ C7. 40, 08, 00000000
        mov     eax, dword [ebp+8H]                     ; 1703 _ 8B. 45, 08
        mov     dword [eax+0CH], 0                      ; 1706 _ C7. 40, 0C, 00000000
        nop                                             ; 170D _ 90
        pop     ebp                                     ; 170E _ 5D
        ret                                             ; 170F _ C3
; memman_init End of function

memman_total:; Function begin
        push    ebp                                     ; 1710 _ 55
        mov     ebp, esp                                ; 1711 _ 89. E5
        sub     esp, 16                                 ; 1713 _ 83. EC, 10
        mov     dword [ebp-8H], 0                       ; 1716 _ C7. 45, F8, 00000000
        mov     dword [ebp-4H], 0                       ; 171D _ C7. 45, FC, 00000000
        jmp     ?_074                                   ; 1724 _ EB, 14

?_073:  mov     eax, dword [ebp+8H]                     ; 1726 _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 1729 _ 8B. 55, FC
        add     edx, 2                                  ; 172C _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 172F _ 8B. 44 D0, 04
        add     dword [ebp-8H], eax                     ; 1733 _ 01. 45, F8
        add     dword [ebp-4H], 1                       ; 1736 _ 83. 45, FC, 01
?_074:  mov     eax, dword [ebp+8H]                     ; 173A _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 173D _ 8B. 00
        cmp     dword [ebp-4H], eax                     ; 173F _ 39. 45, FC
        jl      ?_073                                   ; 1742 _ 7C, E2
        mov     eax, dword [ebp-8H]                     ; 1744 _ 8B. 45, F8
        leave                                           ; 1747 _ C9
        ret                                             ; 1748 _ C3
; memman_total End of function

memman_alloc_FF:; Function begin
        push    ebp                                     ; 1749 _ 55
        mov     ebp, esp                                ; 174A _ 89. E5
        sub     esp, 16                                 ; 174C _ 83. EC, 10
        mov     dword [ebp-8H], 0                       ; 174F _ C7. 45, F8, 00000000
        jmp     ?_078                                   ; 1756 _ E9, 00000085

?_075:  mov     eax, dword [ebp+8H]                     ; 175B _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 175E _ 8B. 55, F8
        add     edx, 2                                  ; 1761 _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 1764 _ 8B. 44 D0, 04
        cmp     dword [ebp+0CH], eax                    ; 1768 _ 39. 45, 0C
        ja      ?_077                                   ; 176B _ 77, 6F
        mov     eax, dword [ebp+8H]                     ; 176D _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 1770 _ 8B. 55, F8
        add     edx, 2                                  ; 1773 _ 83. C2, 02
        mov     eax, dword [eax+edx*8]                  ; 1776 _ 8B. 04 D0
        mov     dword [ebp-4H], eax                     ; 1779 _ 89. 45, FC
        mov     eax, dword [ebp+8H]                     ; 177C _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 177F _ 8B. 55, F8
        add     edx, 2                                  ; 1782 _ 83. C2, 02
        mov     edx, dword [eax+edx*8]                  ; 1785 _ 8B. 14 D0
        mov     eax, dword [ebp+0CH]                    ; 1788 _ 8B. 45, 0C
        lea     ecx, [edx+eax]                          ; 178B _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 178E _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 1791 _ 8B. 55, F8
        add     edx, 2                                  ; 1794 _ 83. C2, 02
        mov     dword [eax+edx*8], ecx                  ; 1797 _ 89. 0C D0
        mov     eax, dword [ebp+8H]                     ; 179A _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 179D _ 8B. 55, F8
        add     edx, 2                                  ; 17A0 _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 17A3 _ 8B. 44 D0, 04
        sub     eax, dword [ebp+0CH]                    ; 17A7 _ 2B. 45, 0C
        mov     edx, eax                                ; 17AA _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 17AC _ 8B. 45, 08
        mov     ecx, dword [ebp-8H]                     ; 17AF _ 8B. 4D, F8
        add     ecx, 2                                  ; 17B2 _ 83. C1, 02
        mov     dword [eax+ecx*8+4H], edx               ; 17B5 _ 89. 54 C8, 04
        mov     eax, dword [ebp+8H]                     ; 17B9 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 17BC _ 8B. 55, F8
        add     edx, 2                                  ; 17BF _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 17C2 _ 8B. 44 D0, 04
        test    eax, eax                                ; 17C6 _ 85. C0
        jnz     ?_076                                   ; 17C8 _ 75, 0D
        mov     eax, dword [ebp+8H]                     ; 17CA _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 17CD _ 8B. 00
        lea     edx, [eax-1H]                           ; 17CF _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 17D2 _ 8B. 45, 08
        mov     dword [eax], edx                        ; 17D5 _ 89. 10
?_076:  mov     eax, dword [ebp-4H]                     ; 17D7 _ 8B. 45, FC
        jmp     ?_079                                   ; 17DA _ EB, 17

?_077:  add     dword [ebp-8H], 1                       ; 17DC _ 83. 45, F8, 01
?_078:  mov     eax, dword [ebp+8H]                     ; 17E0 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 17E3 _ 8B. 00
        cmp     dword [ebp-8H], eax                     ; 17E5 _ 39. 45, F8
        jl      ?_075                                   ; 17E8 _ 0F 8C, FFFFFF6D
        mov     eax, 0                                  ; 17EE _ B8, 00000000
?_079:  leave                                           ; 17F3 _ C9
        ret                                             ; 17F4 _ C3
; memman_alloc_FF End of function

memman_alloc_4K:; Function begin
        push    ebp                                     ; 17F5 _ 55
        mov     ebp, esp                                ; 17F6 _ 89. E5
        sub     esp, 16                                 ; 17F8 _ 83. EC, 10
        mov     eax, dword [ebp+0CH]                    ; 17FB _ 8B. 45, 0C
        add     eax, 4095                               ; 17FE _ 05, 00000FFF
        and     eax, 0FFFFF000H                         ; 1803 _ 25, FFFFF000
        mov     dword [ebp+0CH], eax                    ; 1808 _ 89. 45, 0C
        push    dword [ebp+0CH]                         ; 180B _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 180E _ FF. 75, 08
        call    memman_alloc_FF                         ; 1811 _ E8, FFFFFFFC(rel)
        add     esp, 8                                  ; 1816 _ 83. C4, 08
        mov     dword [ebp-4H], eax                     ; 1819 _ 89. 45, FC
        mov     eax, dword [ebp-4H]                     ; 181C _ 8B. 45, FC
        leave                                           ; 181F _ C9
        ret                                             ; 1820 _ C3
; memman_alloc_4K End of function

memman_free:; Function begin
        push    ebp                                     ; 1821 _ 55
        mov     ebp, esp                                ; 1822 _ 89. E5
        push    ebx                                     ; 1824 _ 53
        sub     esp, 16                                 ; 1825 _ 83. EC, 10
        mov     dword [ebp-0CH], 0                      ; 1828 _ C7. 45, F4, 00000000
        jmp     ?_081                                   ; 182F _ EB, 15

?_080:  mov     eax, dword [ebp+8H]                     ; 1831 _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 1834 _ 8B. 55, F4
        add     edx, 2                                  ; 1837 _ 83. C2, 02
        mov     eax, dword [eax+edx*8]                  ; 183A _ 8B. 04 D0
        cmp     dword [ebp+0CH], eax                    ; 183D _ 39. 45, 0C
        jc      ?_082                                   ; 1840 _ 72, 10
        add     dword [ebp-0CH], 1                      ; 1842 _ 83. 45, F4, 01
?_081:  mov     eax, dword [ebp+8H]                     ; 1846 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 1849 _ 8B. 00
        cmp     dword [ebp-0CH], eax                    ; 184B _ 39. 45, F4
        jl      ?_080                                   ; 184E _ 7C, E1
        jmp     ?_083                                   ; 1850 _ EB, 01

?_082:  nop                                             ; 1852 _ 90
?_083:  cmp     dword [ebp-0CH], 0                      ; 1853 _ 83. 7D, F4, 00
        jle     ?_085                                   ; 1857 _ 0F 8E, 000000BA
        mov     eax, dword [ebp-0CH]                    ; 185D _ 8B. 45, F4
        lea     edx, [eax-1H]                           ; 1860 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 1863 _ 8B. 45, 08
        add     edx, 2                                  ; 1866 _ 83. C2, 02
        mov     edx, dword [eax+edx*8]                  ; 1869 _ 8B. 14 D0
        mov     eax, dword [ebp-0CH]                    ; 186C _ 8B. 45, F4
        lea     ecx, [eax-1H]                           ; 186F _ 8D. 48, FF
        mov     eax, dword [ebp+8H]                     ; 1872 _ 8B. 45, 08
        add     ecx, 2                                  ; 1875 _ 83. C1, 02
        mov     eax, dword [eax+ecx*8+4H]               ; 1878 _ 8B. 44 C8, 04
        add     eax, edx                                ; 187C _ 01. D0
        cmp     dword [ebp+0CH], eax                    ; 187E _ 39. 45, 0C
        jne     ?_085                                   ; 1881 _ 0F 85, 00000090
        mov     eax, dword [ebp-0CH]                    ; 1887 _ 8B. 45, F4
        lea     edx, [eax-1H]                           ; 188A _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 188D _ 8B. 45, 08
        add     edx, 2                                  ; 1890 _ 83. C2, 02
        mov     edx, dword [eax+edx*8+4H]               ; 1893 _ 8B. 54 D0, 04
        mov     eax, dword [ebp-0CH]                    ; 1897 _ 8B. 45, F4
        lea     ebx, [eax-1H]                           ; 189A _ 8D. 58, FF
        mov     eax, dword [ebp+10H]                    ; 189D _ 8B. 45, 10
        lea     ecx, [edx+eax]                          ; 18A0 _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 18A3 _ 8B. 45, 08
        lea     edx, [ebx+2H]                           ; 18A6 _ 8D. 53, 02
        mov     dword [eax+edx*8+4H], ecx               ; 18A9 _ 89. 4C D0, 04
        mov     eax, dword [ebp+8H]                     ; 18AD _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 18B0 _ 8B. 00
        cmp     dword [ebp-0CH], eax                    ; 18B2 _ 39. 45, F4
        jge     ?_084                                   ; 18B5 _ 7D, 56
        mov     edx, dword [ebp+0CH]                    ; 18B7 _ 8B. 55, 0C
        mov     eax, dword [ebp+10H]                    ; 18BA _ 8B. 45, 10
        lea     ecx, [edx+eax]                          ; 18BD _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 18C0 _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 18C3 _ 8B. 55, F4
        add     edx, 2                                  ; 18C6 _ 83. C2, 02
        mov     eax, dword [eax+edx*8]                  ; 18C9 _ 8B. 04 D0
        cmp     ecx, eax                                ; 18CC _ 39. C1
        jnz     ?_084                                   ; 18CE _ 75, 3D
        mov     eax, dword [ebp-0CH]                    ; 18D0 _ 8B. 45, F4
        lea     edx, [eax-1H]                           ; 18D3 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 18D6 _ 8B. 45, 08
        add     edx, 2                                  ; 18D9 _ 83. C2, 02
        mov     edx, dword [eax+edx*8+4H]               ; 18DC _ 8B. 54 D0, 04
        mov     eax, dword [ebp+8H]                     ; 18E0 _ 8B. 45, 08
        mov     ecx, dword [ebp-0CH]                    ; 18E3 _ 8B. 4D, F4
        add     ecx, 2                                  ; 18E6 _ 83. C1, 02
        mov     eax, dword [eax+ecx*8+4H]               ; 18E9 _ 8B. 44 C8, 04
        mov     ecx, dword [ebp-0CH]                    ; 18ED _ 8B. 4D, F4
        lea     ebx, [ecx-1H]                           ; 18F0 _ 8D. 59, FF
        lea     ecx, [edx+eax]                          ; 18F3 _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 18F6 _ 8B. 45, 08
        lea     edx, [ebx+2H]                           ; 18F9 _ 8D. 53, 02
        mov     dword [eax+edx*8+4H], ecx               ; 18FC _ 89. 4C D0, 04
        mov     eax, dword [ebp+8H]                     ; 1900 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 1903 _ 8B. 00
        lea     edx, [eax-1H]                           ; 1905 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 1908 _ 8B. 45, 08
        mov     dword [eax], edx                        ; 190B _ 89. 10
?_084:  mov     eax, 0                                  ; 190D _ B8, 00000000
        jmp     ?_091                                   ; 1912 _ E9, 0000011C

?_085:  mov     eax, dword [ebp+8H]                     ; 1917 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 191A _ 8B. 00
        cmp     dword [ebp-0CH], eax                    ; 191C _ 39. 45, F4
        jge     ?_086                                   ; 191F _ 7D, 52
        mov     edx, dword [ebp+0CH]                    ; 1921 _ 8B. 55, 0C
        mov     eax, dword [ebp+10H]                    ; 1924 _ 8B. 45, 10
        lea     ecx, [edx+eax]                          ; 1927 _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 192A _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 192D _ 8B. 55, F4
        add     edx, 2                                  ; 1930 _ 83. C2, 02
        mov     eax, dword [eax+edx*8]                  ; 1933 _ 8B. 04 D0
        cmp     ecx, eax                                ; 1936 _ 39. C1
        jnz     ?_086                                   ; 1938 _ 75, 39
        mov     eax, dword [ebp+8H]                     ; 193A _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 193D _ 8B. 55, F4
        lea     ecx, [edx+2H]                           ; 1940 _ 8D. 4A, 02
        mov     edx, dword [ebp+0CH]                    ; 1943 _ 8B. 55, 0C
        mov     dword [eax+ecx*8], edx                  ; 1946 _ 89. 14 C8
        mov     eax, dword [ebp+8H]                     ; 1949 _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 194C _ 8B. 55, F4
        add     edx, 2                                  ; 194F _ 83. C2, 02
        mov     edx, dword [eax+edx*8+4H]               ; 1952 _ 8B. 54 D0, 04
        mov     eax, dword [ebp+10H]                    ; 1956 _ 8B. 45, 10
        lea     ecx, [edx+eax]                          ; 1959 _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 195C _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 195F _ 8B. 55, F4
        add     edx, 2                                  ; 1962 _ 83. C2, 02
        mov     dword [eax+edx*8+4H], ecx               ; 1965 _ 89. 4C D0, 04
        mov     eax, 0                                  ; 1969 _ B8, 00000000
        jmp     ?_091                                   ; 196E _ E9, 000000C0

?_086:  mov     eax, dword [ebp+8H]                     ; 1973 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 1976 _ 8B. 00
        cmp     eax, 4095                               ; 1978 _ 3D, 00000FFF
        jg      ?_090                                   ; 197D _ 0F 8F, 00000087
        mov     eax, dword [ebp+8H]                     ; 1983 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 1986 _ 8B. 00
        mov     dword [ebp-8H], eax                     ; 1988 _ 89. 45, F8
        jmp     ?_088                                   ; 198B _ EB, 28

?_087:  mov     eax, dword [ebp-8H]                     ; 198D _ 8B. 45, F8
        lea     edx, [eax-1H]                           ; 1990 _ 8D. 50, FF
        mov     ecx, dword [ebp+8H]                     ; 1993 _ 8B. 4D, 08
        mov     eax, dword [ebp-8H]                     ; 1996 _ 8B. 45, F8
        lea     ebx, [eax+2H]                           ; 1999 _ 8D. 58, 02
        mov     eax, dword [ebp+8H]                     ; 199C _ 8B. 45, 08
        add     edx, 2                                  ; 199F _ 83. C2, 02
        lea     edx, [eax+edx*8]                        ; 19A2 _ 8D. 14 D0
        mov     eax, dword [edx]                        ; 19A5 _ 8B. 02
        mov     edx, dword [edx+4H]                     ; 19A7 _ 8B. 52, 04
        mov     dword [ecx+ebx*8], eax                  ; 19AA _ 89. 04 D9
        mov     dword [ecx+ebx*8+4H], edx               ; 19AD _ 89. 54 D9, 04
        sub     dword [ebp-8H], 1                       ; 19B1 _ 83. 6D, F8, 01
?_088:  mov     eax, dword [ebp-8H]                     ; 19B5 _ 8B. 45, F8
        cmp     eax, dword [ebp-0CH]                    ; 19B8 _ 3B. 45, F4
        jg      ?_087                                   ; 19BB _ 7F, D0
        mov     eax, dword [ebp+8H]                     ; 19BD _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 19C0 _ 8B. 00
        lea     edx, [eax+1H]                           ; 19C2 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 19C5 _ 8B. 45, 08
        mov     dword [eax], edx                        ; 19C8 _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 19CA _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 19CD _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 19D0 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 19D3 _ 8B. 00
        cmp     edx, eax                                ; 19D5 _ 39. C2
        jge     ?_089                                   ; 19D7 _ 7D, 0B
        mov     eax, dword [ebp+8H]                     ; 19D9 _ 8B. 45, 08
        mov     edx, dword [eax]                        ; 19DC _ 8B. 10
        mov     eax, dword [ebp+8H]                     ; 19DE _ 8B. 45, 08
        mov     dword [eax+4H], edx                     ; 19E1 _ 89. 50, 04
?_089:  mov     eax, dword [ebp+8H]                     ; 19E4 _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 19E7 _ 8B. 55, F4
        lea     ecx, [edx+2H]                           ; 19EA _ 8D. 4A, 02
        mov     edx, dword [ebp+0CH]                    ; 19ED _ 8B. 55, 0C
        mov     dword [eax+ecx*8], edx                  ; 19F0 _ 89. 14 C8
        mov     eax, dword [ebp+8H]                     ; 19F3 _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 19F6 _ 8B. 55, F4
        lea     ecx, [edx+2H]                           ; 19F9 _ 8D. 4A, 02
        mov     edx, dword [ebp+10H]                    ; 19FC _ 8B. 55, 10
        mov     dword [eax+ecx*8+4H], edx               ; 19FF _ 89. 54 C8, 04
        mov     eax, 0                                  ; 1A03 _ B8, 00000000
        jmp     ?_091                                   ; 1A08 _ EB, 29

?_090:  mov     eax, dword [ebp+8H]                     ; 1A0A _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 1A0D _ 8B. 40, 0C
        lea     edx, [eax+1H]                           ; 1A10 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 1A13 _ 8B. 45, 08
        mov     dword [eax+0CH], edx                    ; 1A16 _ 89. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 1A19 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 1A1C _ 8B. 40, 08
        mov     edx, eax                                ; 1A1F _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 1A21 _ 8B. 45, 10
        add     eax, edx                                ; 1A24 _ 01. D0
        mov     edx, eax                                ; 1A26 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 1A28 _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 1A2B _ 89. 50, 08
        mov     eax, 4294967295                         ; 1A2E _ B8, FFFFFFFF
?_091:  add     esp, 16                                 ; 1A33 _ 83. C4, 10
        pop     ebx                                     ; 1A36 _ 5B
        pop     ebp                                     ; 1A37 _ 5D
        ret                                             ; 1A38 _ C3
; memman_free End of function

memman_free_4K:; Function begin
        push    ebp                                     ; 1A39 _ 55
        mov     ebp, esp                                ; 1A3A _ 89. E5
        sub     esp, 16                                 ; 1A3C _ 83. EC, 10
        mov     eax, dword [ebp+10H]                    ; 1A3F _ 8B. 45, 10
        add     eax, 4095                               ; 1A42 _ 05, 00000FFF
        and     eax, 0FFFFF000H                         ; 1A47 _ 25, FFFFF000
        mov     dword [ebp+10H], eax                    ; 1A4C _ 89. 45, 10
        push    dword [ebp+10H]                         ; 1A4F _ FF. 75, 10
        push    dword [ebp+0CH]                         ; 1A52 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1A55 _ FF. 75, 08
        call    memman_free                             ; 1A58 _ E8, FFFFFFFC(rel)
        add     esp, 12                                 ; 1A5D _ 83. C4, 0C
        mov     dword [ebp-4H], eax                     ; 1A60 _ 89. 45, FC
        mov     eax, dword [ebp-4H]                     ; 1A63 _ 8B. 45, FC
        leave                                           ; 1A66 _ C9
        ret                                             ; 1A67 _ C3
; memman_free_4K End of function

shtctl_init:; Function begin
        push    ebp                                     ; 1A68 _ 55
        mov     ebp, esp                                ; 1A69 _ 89. E5
        sub     esp, 24                                 ; 1A6B _ 83. EC, 18
        sub     esp, 8                                  ; 1A6E _ 83. EC, 08
        push    9232                                    ; 1A71 _ 68, 00002410
        push    dword [ebp+8H]                          ; 1A76 _ FF. 75, 08
        call    memman_alloc_4K                         ; 1A79 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1A7E _ 83. C4, 10
        mov     dword [ebp-0CH], eax                    ; 1A81 _ 89. 45, F4
        cmp     dword [ebp-0CH], 0                      ; 1A84 _ 83. 7D, F4, 00
        jnz     ?_092                                   ; 1A88 _ 75, 07
        mov     eax, 0                                  ; 1A8A _ B8, 00000000
        jmp     ?_095                                   ; 1A8F _ EB, 54

?_092:  mov     eax, dword [ebp-0CH]                    ; 1A91 _ 8B. 45, F4
        mov     edx, dword [ebp+0CH]                    ; 1A94 _ 8B. 55, 0C
        mov     dword [eax], edx                        ; 1A97 _ 89. 10
        mov     eax, dword [ebp-0CH]                    ; 1A99 _ 8B. 45, F4
        mov     edx, dword [ebp+10H]                    ; 1A9C _ 8B. 55, 10
        mov     dword [eax+4H], edx                     ; 1A9F _ 89. 50, 04
        mov     eax, dword [ebp-0CH]                    ; 1AA2 _ 8B. 45, F4
        mov     edx, dword [ebp+14H]                    ; 1AA5 _ 8B. 55, 14
        mov     dword [eax+8H], edx                     ; 1AA8 _ 89. 50, 08
        mov     eax, dword [ebp-0CH]                    ; 1AAB _ 8B. 45, F4
        mov     dword [eax+0CH], -1                     ; 1AAE _ C7. 40, 0C, FFFFFFFF
        mov     dword [ebp-10H], 0                      ; 1AB5 _ C7. 45, F0, 00000000
        jmp     ?_094                                   ; 1ABC _ EB, 1B

?_093:  mov     eax, dword [ebp-0CH]                    ; 1ABE _ 8B. 45, F4
        mov     edx, dword [ebp-10H]                    ; 1AC1 _ 8B. 55, F0
        add     edx, 33                                 ; 1AC4 _ 83. C2, 21
        shl     edx, 5                                  ; 1AC7 _ C1. E2, 05
        add     eax, edx                                ; 1ACA _ 01. D0
        add     eax, 12                                 ; 1ACC _ 83. C0, 0C
        mov     dword [eax], 0                          ; 1ACF _ C7. 00, 00000000
        add     dword [ebp-10H], 1                      ; 1AD5 _ 83. 45, F0, 01
?_094:  cmp     dword [ebp-10H], 255                    ; 1AD9 _ 81. 7D, F0, 000000FF
        jle     ?_093                                   ; 1AE0 _ 7E, DC
        mov     eax, dword [ebp-0CH]                    ; 1AE2 _ 8B. 45, F4
?_095:  leave                                           ; 1AE5 _ C9
        ret                                             ; 1AE6 _ C3
; shtctl_init End of function

sheet_alloc:; Function begin
        push    ebp                                     ; 1AE7 _ 55
        mov     ebp, esp                                ; 1AE8 _ 89. E5
        sub     esp, 16                                 ; 1AEA _ 83. EC, 10
        mov     dword [ebp-8H], 0                       ; 1AED _ C7. 45, F8, 00000000
        jmp     ?_098                                   ; 1AF4 _ EB, 48

?_096:  mov     eax, dword [ebp+8H]                     ; 1AF6 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 1AF9 _ 8B. 55, F8
        add     edx, 33                                 ; 1AFC _ 83. C2, 21
        shl     edx, 5                                  ; 1AFF _ C1. E2, 05
        add     eax, edx                                ; 1B02 _ 01. D0
        add     eax, 12                                 ; 1B04 _ 83. C0, 0C
        mov     eax, dword [eax]                        ; 1B07 _ 8B. 00
        test    eax, eax                                ; 1B09 _ 85. C0
        jnz     ?_097                                   ; 1B0B _ 75, 2D
        mov     eax, dword [ebp-8H]                     ; 1B0D _ 8B. 45, F8
        shl     eax, 5                                  ; 1B10 _ C1. E0, 05
        lea     edx, [eax+410H]                         ; 1B13 _ 8D. 90, 00000410
        mov     eax, dword [ebp+8H]                     ; 1B19 _ 8B. 45, 08
        add     eax, edx                                ; 1B1C _ 01. D0
        mov     dword [ebp-4H], eax                     ; 1B1E _ 89. 45, FC
        mov     eax, dword [ebp-4H]                     ; 1B21 _ 8B. 45, FC
        mov     dword [eax+1CH], 1                      ; 1B24 _ C7. 40, 1C, 00000001
        mov     eax, dword [ebp-4H]                     ; 1B2B _ 8B. 45, FC
        mov     dword [eax+18H], -1                     ; 1B2E _ C7. 40, 18, FFFFFFFF
        mov     eax, dword [ebp-4H]                     ; 1B35 _ 8B. 45, FC
        jmp     ?_099                                   ; 1B38 _ EB, 12

?_097:  add     dword [ebp-8H], 1                       ; 1B3A _ 83. 45, F8, 01
?_098:  cmp     dword [ebp-8H], 255                     ; 1B3E _ 81. 7D, F8, 000000FF
        jle     ?_096                                   ; 1B45 _ 7E, AF
        mov     eax, 0                                  ; 1B47 _ B8, 00000000
?_099:  leave                                           ; 1B4C _ C9
        ret                                             ; 1B4D _ C3
; sheet_alloc End of function

sheet_setbuf:; Function begin
        push    ebp                                     ; 1B4E _ 55
        mov     ebp, esp                                ; 1B4F _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 1B51 _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 1B54 _ 8B. 55, 0C
        mov     dword [eax], edx                        ; 1B57 _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 1B59 _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 1B5C _ 8B. 55, 10
        mov     dword [eax+4H], edx                     ; 1B5F _ 89. 50, 04
        mov     eax, dword [ebp+8H]                     ; 1B62 _ 8B. 45, 08
        mov     edx, dword [ebp+14H]                    ; 1B65 _ 8B. 55, 14
        mov     dword [eax+8H], edx                     ; 1B68 _ 89. 50, 08
        mov     eax, dword [ebp+8H]                     ; 1B6B _ 8B. 45, 08
        mov     edx, dword [ebp+18H]                    ; 1B6E _ 8B. 55, 18
        mov     dword [eax+14H], edx                    ; 1B71 _ 89. 50, 14
        nop                                             ; 1B74 _ 90
        pop     ebp                                     ; 1B75 _ 5D
        ret                                             ; 1B76 _ C3
; sheet_setbuf End of function

sheet_level_updown:; Function begin
        push    ebp                                     ; 1B77 _ 55
        mov     ebp, esp                                ; 1B78 _ 89. E5
        push    ebx                                     ; 1B7A _ 53
        sub     esp, 36                                 ; 1B7B _ 83. EC, 24
        mov     eax, dword [ebp+0CH]                    ; 1B7E _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 1B81 _ 8B. 40, 18
        mov     dword [ebp-0CH], eax                    ; 1B84 _ 89. 45, F4
        mov     eax, dword [ebp+8H]                     ; 1B87 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 1B8A _ 8B. 40, 0C
        add     eax, 1                                  ; 1B8D _ 83. C0, 01
        cmp     dword [ebp+10H], eax                    ; 1B90 _ 39. 45, 10
        jle     ?_100                                   ; 1B93 _ 7E, 0C
        mov     eax, dword [ebp+8H]                     ; 1B95 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 1B98 _ 8B. 40, 0C
        add     eax, 1                                  ; 1B9B _ 83. C0, 01
        mov     dword [ebp+10H], eax                    ; 1B9E _ 89. 45, 10
?_100:  cmp     dword [ebp+10H], -1                     ; 1BA1 _ 83. 7D, 10, FF
        jge     ?_101                                   ; 1BA5 _ 7D, 07
        mov     dword [ebp+10H], -1                     ; 1BA7 _ C7. 45, 10, FFFFFFFF
?_101:  mov     eax, dword [ebp+0CH]                    ; 1BAE _ 8B. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 1BB1 _ 8B. 55, 10
        mov     dword [eax+18H], edx                    ; 1BB4 _ 89. 50, 18
        mov     eax, dword [ebp-0CH]                    ; 1BB7 _ 8B. 45, F4
        cmp     eax, dword [ebp+10H]                    ; 1BBA _ 3B. 45, 10
        jle     ?_109                                   ; 1BBD _ 0F 8E, 000000F7
        cmp     dword [ebp+10H], 0                      ; 1BC3 _ 83. 7D, 10, 00
        js      ?_104                                   ; 1BC7 _ 78, 52
        mov     eax, dword [ebp-0CH]                    ; 1BC9 _ 8B. 45, F4
        mov     dword [ebp-1CH], eax                    ; 1BCC _ 89. 45, E4
        jmp     ?_103                                   ; 1BCF _ EB, 31

?_102:  mov     eax, dword [ebp-1CH]                    ; 1BD1 _ 8B. 45, E4
        lea     edx, [eax-1H]                           ; 1BD4 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 1BD7 _ 8B. 45, 08
        add     edx, 4                                  ; 1BDA _ 83. C2, 04
        mov     edx, dword [eax+edx*4]                  ; 1BDD _ 8B. 14 90
        mov     eax, dword [ebp+8H]                     ; 1BE0 _ 8B. 45, 08
        mov     ecx, dword [ebp-1CH]                    ; 1BE3 _ 8B. 4D, E4
        add     ecx, 4                                  ; 1BE6 _ 83. C1, 04
        mov     dword [eax+ecx*4], edx                  ; 1BE9 _ 89. 14 88
        mov     eax, dword [ebp+8H]                     ; 1BEC _ 8B. 45, 08
        mov     edx, dword [ebp-1CH]                    ; 1BEF _ 8B. 55, E4
        add     edx, 4                                  ; 1BF2 _ 83. C2, 04
        mov     eax, dword [eax+edx*4]                  ; 1BF5 _ 8B. 04 90
        mov     edx, dword [ebp-1CH]                    ; 1BF8 _ 8B. 55, E4
        mov     dword [eax+18H], edx                    ; 1BFB _ 89. 50, 18
        sub     dword [ebp-1CH], 1                      ; 1BFE _ 83. 6D, E4, 01
?_103:  mov     eax, dword [ebp-1CH]                    ; 1C02 _ 8B. 45, E4
        cmp     eax, dword [ebp+10H]                    ; 1C05 _ 3B. 45, 10
        jg      ?_102                                   ; 1C08 _ 7F, C7
        mov     eax, dword [ebp+8H]                     ; 1C0A _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 1C0D _ 8B. 55, 10
        lea     ecx, [edx+4H]                           ; 1C10 _ 8D. 4A, 04
        mov     edx, dword [ebp+0CH]                    ; 1C13 _ 8B. 55, 0C
        mov     dword [eax+ecx*4], edx                  ; 1C16 _ 89. 14 88
        jmp     ?_108                                   ; 1C19 _ EB, 5E

?_104:  mov     eax, dword [ebp+8H]                     ; 1C1B _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 1C1E _ 8B. 40, 0C
        cmp     dword [ebp-0CH], eax                    ; 1C21 _ 39. 45, F4
        jge     ?_107                                   ; 1C24 _ 7D, 44
        mov     eax, dword [ebp-0CH]                    ; 1C26 _ 8B. 45, F4
        mov     dword [ebp-18H], eax                    ; 1C29 _ 89. 45, E8
        jmp     ?_106                                   ; 1C2C _ EB, 31

?_105:  mov     eax, dword [ebp-18H]                    ; 1C2E _ 8B. 45, E8
        lea     edx, [eax+1H]                           ; 1C31 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 1C34 _ 8B. 45, 08
        add     edx, 4                                  ; 1C37 _ 83. C2, 04
        mov     edx, dword [eax+edx*4]                  ; 1C3A _ 8B. 14 90
        mov     eax, dword [ebp+8H]                     ; 1C3D _ 8B. 45, 08
        mov     ecx, dword [ebp-18H]                    ; 1C40 _ 8B. 4D, E8
        add     ecx, 4                                  ; 1C43 _ 83. C1, 04
        mov     dword [eax+ecx*4], edx                  ; 1C46 _ 89. 14 88
        mov     eax, dword [ebp+8H]                     ; 1C49 _ 8B. 45, 08
        mov     edx, dword [ebp-18H]                    ; 1C4C _ 8B. 55, E8
        add     edx, 4                                  ; 1C4F _ 83. C2, 04
        mov     eax, dword [eax+edx*4]                  ; 1C52 _ 8B. 04 90
        mov     edx, dword [ebp-18H]                    ; 1C55 _ 8B. 55, E8
        mov     dword [eax+18H], edx                    ; 1C58 _ 89. 50, 18
        add     dword [ebp-18H], 1                      ; 1C5B _ 83. 45, E8, 01
?_106:  mov     eax, dword [ebp+8H]                     ; 1C5F _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 1C62 _ 8B. 40, 0C
        cmp     dword [ebp-18H], eax                    ; 1C65 _ 39. 45, E8
        jl      ?_105                                   ; 1C68 _ 7C, C4
?_107:  mov     eax, dword [ebp+8H]                     ; 1C6A _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 1C6D _ 8B. 40, 0C
        lea     edx, [eax-1H]                           ; 1C70 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 1C73 _ 8B. 45, 08
        mov     dword [eax+0CH], edx                    ; 1C76 _ 89. 50, 0C
?_108:  mov     eax, dword [ebp+0CH]                    ; 1C79 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 1C7C _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 1C7F _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 1C82 _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 1C85 _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 1C88 _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 1C8B _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 1C8E _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 1C91 _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 1C94 _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 1C97 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 1C9A _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 1C9D _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 1CA0 _ 8B. 40, 0C
        sub     esp, 12                                 ; 1CA3 _ 83. EC, 0C
        push    ebx                                     ; 1CA6 _ 53
        push    ecx                                     ; 1CA7 _ 51
        push    edx                                     ; 1CA8 _ 52
        push    eax                                     ; 1CA9 _ 50
        push    dword [ebp+8H]                          ; 1CAA _ FF. 75, 08
        call    sheet_refresh_new                       ; 1CAD _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1CB2 _ 83. C4, 20
        jmp     ?_116                                   ; 1CB5 _ E9, 0000010E

?_109:  mov     eax, dword [ebp-0CH]                    ; 1CBA _ 8B. 45, F4
        cmp     eax, dword [ebp+10H]                    ; 1CBD _ 3B. 45, 10
        jge     ?_116                                   ; 1CC0 _ 0F 8D, 00000102
        cmp     dword [ebp-0CH], 0                      ; 1CC6 _ 83. 7D, F4, 00
        js      ?_112                                   ; 1CCA _ 78, 52
        mov     eax, dword [ebp-0CH]                    ; 1CCC _ 8B. 45, F4
        mov     dword [ebp-14H], eax                    ; 1CCF _ 89. 45, EC
        jmp     ?_111                                   ; 1CD2 _ EB, 31

?_110:  mov     eax, dword [ebp-14H]                    ; 1CD4 _ 8B. 45, EC
        lea     edx, [eax+1H]                           ; 1CD7 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 1CDA _ 8B. 45, 08
        add     edx, 4                                  ; 1CDD _ 83. C2, 04
        mov     edx, dword [eax+edx*4]                  ; 1CE0 _ 8B. 14 90
        mov     eax, dword [ebp+8H]                     ; 1CE3 _ 8B. 45, 08
        mov     ecx, dword [ebp-14H]                    ; 1CE6 _ 8B. 4D, EC
        add     ecx, 4                                  ; 1CE9 _ 83. C1, 04
        mov     dword [eax+ecx*4], edx                  ; 1CEC _ 89. 14 88
        mov     eax, dword [ebp+8H]                     ; 1CEF _ 8B. 45, 08
        mov     edx, dword [ebp-14H]                    ; 1CF2 _ 8B. 55, EC
        add     edx, 4                                  ; 1CF5 _ 83. C2, 04
        mov     eax, dword [eax+edx*4]                  ; 1CF8 _ 8B. 04 90
        mov     edx, dword [ebp-14H]                    ; 1CFB _ 8B. 55, EC
        mov     dword [eax+18H], edx                    ; 1CFE _ 89. 50, 18
        add     dword [ebp-14H], 1                      ; 1D01 _ 83. 45, EC, 01
?_111:  mov     eax, dword [ebp-14H]                    ; 1D05 _ 8B. 45, EC
        cmp     eax, dword [ebp+10H]                    ; 1D08 _ 3B. 45, 10
        jl      ?_110                                   ; 1D0B _ 7C, C7
        mov     eax, dword [ebp+8H]                     ; 1D0D _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 1D10 _ 8B. 55, 10
        lea     ecx, [edx+4H]                           ; 1D13 _ 8D. 4A, 04
        mov     edx, dword [ebp+0CH]                    ; 1D16 _ 8B. 55, 0C
        mov     dword [eax+ecx*4], edx                  ; 1D19 _ 89. 14 88
        jmp     ?_115                                   ; 1D1C _ EB, 6E

?_112:  cmp     dword [ebp-0CH], 0                      ; 1D1E _ 83. 7D, F4, 00
        jns     ?_115                                   ; 1D22 _ 79, 68
        mov     eax, dword [ebp+8H]                     ; 1D24 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 1D27 _ 8B. 40, 0C
        mov     dword [ebp-10H], eax                    ; 1D2A _ 89. 45, F0
        jmp     ?_114                                   ; 1D2D _ EB, 37

?_113:  mov     eax, dword [ebp-10H]                    ; 1D2F _ 8B. 45, F0
        lea     ecx, [eax+1H]                           ; 1D32 _ 8D. 48, 01
        mov     eax, dword [ebp+8H]                     ; 1D35 _ 8B. 45, 08
        mov     edx, dword [ebp-10H]                    ; 1D38 _ 8B. 55, F0
        add     edx, 4                                  ; 1D3B _ 83. C2, 04
        mov     edx, dword [eax+edx*4]                  ; 1D3E _ 8B. 14 90
        mov     eax, dword [ebp+8H]                     ; 1D41 _ 8B. 45, 08
        add     ecx, 4                                  ; 1D44 _ 83. C1, 04
        mov     dword [eax+ecx*4], edx                  ; 1D47 _ 89. 14 88
        mov     eax, dword [ebp-10H]                    ; 1D4A _ 8B. 45, F0
        lea     edx, [eax+1H]                           ; 1D4D _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 1D50 _ 8B. 45, 08
        add     edx, 4                                  ; 1D53 _ 83. C2, 04
        mov     eax, dword [eax+edx*4]                  ; 1D56 _ 8B. 04 90
        mov     edx, dword [ebp-10H]                    ; 1D59 _ 8B. 55, F0
        add     edx, 1                                  ; 1D5C _ 83. C2, 01
        mov     dword [eax+18H], edx                    ; 1D5F _ 89. 50, 18
        sub     dword [ebp-10H], 1                      ; 1D62 _ 83. 6D, F0, 01
?_114:  mov     eax, dword [ebp-10H]                    ; 1D66 _ 8B. 45, F0
        cmp     eax, dword [ebp+10H]                    ; 1D69 _ 3B. 45, 10
        jge     ?_113                                   ; 1D6C _ 7D, C1
        mov     eax, dword [ebp+8H]                     ; 1D6E _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 1D71 _ 8B. 55, 10
        lea     ecx, [edx+4H]                           ; 1D74 _ 8D. 4A, 04
        mov     edx, dword [ebp+0CH]                    ; 1D77 _ 8B. 55, 0C
        mov     dword [eax+ecx*4], edx                  ; 1D7A _ 89. 14 88
        mov     eax, dword [ebp+8H]                     ; 1D7D _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 1D80 _ 8B. 40, 0C
        lea     edx, [eax+1H]                           ; 1D83 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 1D86 _ 8B. 45, 08
        mov     dword [eax+0CH], edx                    ; 1D89 _ 89. 50, 0C
?_115:  mov     eax, dword [ebp+0CH]                    ; 1D8C _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 1D8F _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 1D92 _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 1D95 _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 1D98 _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 1D9B _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 1D9E _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 1DA1 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 1DA4 _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 1DA7 _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 1DAA _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 1DAD _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 1DB0 _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 1DB3 _ 8B. 40, 0C
        sub     esp, 12                                 ; 1DB6 _ 83. EC, 0C
        push    ebx                                     ; 1DB9 _ 53
        push    ecx                                     ; 1DBA _ 51
        push    edx                                     ; 1DBB _ 52
        push    eax                                     ; 1DBC _ 50
        push    dword [ebp+8H]                          ; 1DBD _ FF. 75, 08
        call    sheet_refresh_new                       ; 1DC0 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1DC5 _ 83. C4, 20
?_116:  nop                                             ; 1DC8 _ 90
        mov     ebx, dword [ebp-4H]                     ; 1DC9 _ 8B. 5D, FC
        leave                                           ; 1DCC _ C9
        ret                                             ; 1DCD _ C3
; sheet_level_updown End of function

sheet_refresh:; Function begin
        push    ebp                                     ; 1DCE _ 55
        mov     ebp, esp                                ; 1DCF _ 89. E5
        push    esi                                     ; 1DD1 _ 56
        push    ebx                                     ; 1DD2 _ 53
        mov     eax, dword [ebp+0CH]                    ; 1DD3 _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 1DD6 _ 8B. 40, 18
        test    eax, eax                                ; 1DD9 _ 85. C0
        js      ?_117                                   ; 1DDB _ 78, 40
        mov     eax, dword [ebp+0CH]                    ; 1DDD _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 1DE0 _ 8B. 50, 10
        mov     eax, dword [ebp+1CH]                    ; 1DE3 _ 8B. 45, 1C
        lea     ebx, [edx+eax]                          ; 1DE6 _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 1DE9 _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 1DEC _ 8B. 50, 0C
        mov     eax, dword [ebp+18H]                    ; 1DEF _ 8B. 45, 18
        lea     ecx, [edx+eax]                          ; 1DF2 _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 1DF5 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 1DF8 _ 8B. 50, 10
        mov     eax, dword [ebp+14H]                    ; 1DFB _ 8B. 45, 14
        add     edx, eax                                ; 1DFE _ 01. C2
        mov     eax, dword [ebp+0CH]                    ; 1E00 _ 8B. 45, 0C
        mov     esi, dword [eax+0CH]                    ; 1E03 _ 8B. 70, 0C
        mov     eax, dword [ebp+10H]                    ; 1E06 _ 8B. 45, 10
        add     eax, esi                                ; 1E09 _ 01. F0
        sub     esp, 12                                 ; 1E0B _ 83. EC, 0C
        push    ebx                                     ; 1E0E _ 53
        push    ecx                                     ; 1E0F _ 51
        push    edx                                     ; 1E10 _ 52
        push    eax                                     ; 1E11 _ 50
        push    dword [ebp+8H]                          ; 1E12 _ FF. 75, 08
        call    sheet_refresh_new                       ; 1E15 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1E1A _ 83. C4, 20
?_117:  mov     eax, 0                                  ; 1E1D _ B8, 00000000
        lea     esp, [ebp-8H]                           ; 1E22 _ 8D. 65, F8
        pop     ebx                                     ; 1E25 _ 5B
        pop     esi                                     ; 1E26 _ 5E
        pop     ebp                                     ; 1E27 _ 5D
        ret                                             ; 1E28 _ C3
; sheet_refresh End of function

sheet_slide:; Function begin
        push    ebp                                     ; 1E29 _ 55
        mov     ebp, esp                                ; 1E2A _ 89. E5
        sub     esp, 24                                 ; 1E2C _ 83. EC, 18
        mov     eax, dword [ebp+0CH]                    ; 1E2F _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 1E32 _ 8B. 40, 0C
        mov     dword [ebp-10H], eax                    ; 1E35 _ 89. 45, F0
        mov     eax, dword [ebp+0CH]                    ; 1E38 _ 8B. 45, 0C
        mov     eax, dword [eax+10H]                    ; 1E3B _ 8B. 40, 10
        mov     dword [ebp-0CH], eax                    ; 1E3E _ 89. 45, F4
        mov     eax, dword [ebp+0CH]                    ; 1E41 _ 8B. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 1E44 _ 8B. 55, 10
        mov     dword [eax+0CH], edx                    ; 1E47 _ 89. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 1E4A _ 8B. 45, 0C
        mov     edx, dword [ebp+14H]                    ; 1E4D _ 8B. 55, 14
        mov     dword [eax+10H], edx                    ; 1E50 _ 89. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 1E53 _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 1E56 _ 8B. 40, 18
        test    eax, eax                                ; 1E59 _ 85. C0
        js      ?_118                                   ; 1E5B _ 78, 58
        mov     eax, dword [ebp+0CH]                    ; 1E5D _ 8B. 45, 0C
        mov     edx, dword [eax+8H]                     ; 1E60 _ 8B. 50, 08
        mov     eax, dword [ebp-0CH]                    ; 1E63 _ 8B. 45, F4
        add     edx, eax                                ; 1E66 _ 01. C2
        mov     eax, dword [ebp+0CH]                    ; 1E68 _ 8B. 45, 0C
        mov     ecx, dword [eax+4H]                     ; 1E6B _ 8B. 48, 04
        mov     eax, dword [ebp-10H]                    ; 1E6E _ 8B. 45, F0
        add     eax, ecx                                ; 1E71 _ 01. C8
        sub     esp, 12                                 ; 1E73 _ 83. EC, 0C
        push    edx                                     ; 1E76 _ 52
        push    eax                                     ; 1E77 _ 50
        push    dword [ebp-0CH]                         ; 1E78 _ FF. 75, F4
        push    dword [ebp-10H]                         ; 1E7B _ FF. 75, F0
        push    dword [ebp+8H]                          ; 1E7E _ FF. 75, 08
        call    sheet_refresh_new                       ; 1E81 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1E86 _ 83. C4, 20
        mov     eax, dword [ebp+0CH]                    ; 1E89 _ 8B. 45, 0C
        mov     edx, dword [eax+8H]                     ; 1E8C _ 8B. 50, 08
        mov     eax, dword [ebp+14H]                    ; 1E8F _ 8B. 45, 14
        add     edx, eax                                ; 1E92 _ 01. C2
        mov     eax, dword [ebp+0CH]                    ; 1E94 _ 8B. 45, 0C
        mov     ecx, dword [eax+4H]                     ; 1E97 _ 8B. 48, 04
        mov     eax, dword [ebp+10H]                    ; 1E9A _ 8B. 45, 10
        add     eax, ecx                                ; 1E9D _ 01. C8
        sub     esp, 12                                 ; 1E9F _ 83. EC, 0C
        push    edx                                     ; 1EA2 _ 52
        push    eax                                     ; 1EA3 _ 50
        push    dword [ebp+14H]                         ; 1EA4 _ FF. 75, 14
        push    dword [ebp+10H]                         ; 1EA7 _ FF. 75, 10
        push    dword [ebp+8H]                          ; 1EAA _ FF. 75, 08
        call    sheet_refresh_new                       ; 1EAD _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1EB2 _ 83. C4, 20
?_118:  nop                                             ; 1EB5 _ 90
        leave                                           ; 1EB6 _ C9
        ret                                             ; 1EB7 _ C3
; sheet_slide End of function

sheet_refresh_new:; Function begin
        push    ebp                                     ; 1EB8 _ 55
        mov     ebp, esp                                ; 1EB9 _ 89. E5
        sub     esp, 48                                 ; 1EBB _ 83. EC, 30
        mov     eax, dword [ebp+8H]                     ; 1EBE _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 1EC1 _ 8B. 00
        mov     dword [ebp-14H], eax                    ; 1EC3 _ 89. 45, EC
        mov     dword [ebp-20H], 0                      ; 1EC6 _ C7. 45, E0, 00000000
        jmp     ?_125                                   ; 1ECD _ E9, 000000DC

?_119:  mov     eax, dword [ebp+8H]                     ; 1ED2 _ 8B. 45, 08
        mov     edx, dword [ebp-20H]                    ; 1ED5 _ 8B. 55, E0
        add     edx, 4                                  ; 1ED8 _ 83. C2, 04
        mov     eax, dword [eax+edx*4]                  ; 1EDB _ 8B. 04 90
        mov     dword [ebp-10H], eax                    ; 1EDE _ 89. 45, F0
        mov     eax, dword [ebp-10H]                    ; 1EE1 _ 8B. 45, F0
        mov     eax, dword [eax]                        ; 1EE4 _ 8B. 00
        mov     dword [ebp-0CH], eax                    ; 1EE6 _ 89. 45, F4
        mov     dword [ebp-1CH], 0                      ; 1EE9 _ C7. 45, E4, 00000000
        jmp     ?_124                                   ; 1EF0 _ E9, 000000A6

?_120:  mov     eax, dword [ebp-10H]                    ; 1EF5 _ 8B. 45, F0
        mov     edx, dword [eax+10H]                    ; 1EF8 _ 8B. 50, 10
        mov     eax, dword [ebp-1CH]                    ; 1EFB _ 8B. 45, E4
        add     eax, edx                                ; 1EFE _ 01. D0
        mov     dword [ebp-8H], eax                     ; 1F00 _ 89. 45, F8
        mov     dword [ebp-18H], 0                      ; 1F03 _ C7. 45, E8, 00000000
        jmp     ?_123                                   ; 1F0A _ EB, 7C

?_121:  mov     eax, dword [ebp-10H]                    ; 1F0C _ 8B. 45, F0
        mov     edx, dword [eax+0CH]                    ; 1F0F _ 8B. 50, 0C
        mov     eax, dword [ebp-18H]                    ; 1F12 _ 8B. 45, E8
        add     eax, edx                                ; 1F15 _ 01. D0
        mov     dword [ebp-4H], eax                     ; 1F17 _ 89. 45, FC
        mov     eax, dword [ebp+0CH]                    ; 1F1A _ 8B. 45, 0C
        cmp     eax, dword [ebp-4H]                     ; 1F1D _ 3B. 45, FC
        jg      ?_122                                   ; 1F20 _ 7F, 62
        mov     eax, dword [ebp-4H]                     ; 1F22 _ 8B. 45, FC
        cmp     eax, dword [ebp+14H]                    ; 1F25 _ 3B. 45, 14
        jge     ?_122                                   ; 1F28 _ 7D, 5A
        mov     eax, dword [ebp+10H]                    ; 1F2A _ 8B. 45, 10
        cmp     eax, dword [ebp-8H]                     ; 1F2D _ 3B. 45, F8
        jg      ?_122                                   ; 1F30 _ 7F, 52
        mov     eax, dword [ebp-8H]                     ; 1F32 _ 8B. 45, F8
        cmp     eax, dword [ebp+18H]                    ; 1F35 _ 3B. 45, 18
        jge     ?_122                                   ; 1F38 _ 7D, 4A
        mov     eax, dword [ebp-10H]                    ; 1F3A _ 8B. 45, F0
        mov     eax, dword [eax+4H]                     ; 1F3D _ 8B. 40, 04
        imul    eax, dword [ebp-1CH]                    ; 1F40 _ 0F AF. 45, E4
        mov     edx, eax                                ; 1F44 _ 89. C2
        mov     eax, dword [ebp-18H]                    ; 1F46 _ 8B. 45, E8
        add     eax, edx                                ; 1F49 _ 01. D0
        mov     edx, eax                                ; 1F4B _ 89. C2
        mov     eax, dword [ebp-0CH]                    ; 1F4D _ 8B. 45, F4
        add     eax, edx                                ; 1F50 _ 01. D0
        movzx   eax, byte [eax]                         ; 1F52 _ 0F B6. 00
        mov     byte [ebp-21H], al                      ; 1F55 _ 88. 45, DF
        movzx   edx, byte [ebp-21H]                     ; 1F58 _ 0F B6. 55, DF
        mov     eax, dword [ebp-10H]                    ; 1F5C _ 8B. 45, F0
        mov     eax, dword [eax+14H]                    ; 1F5F _ 8B. 40, 14
        cmp     edx, eax                                ; 1F62 _ 39. C2
        jz      ?_122                                   ; 1F64 _ 74, 1E
        mov     eax, dword [ebp+8H]                     ; 1F66 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 1F69 _ 8B. 40, 04
        imul    eax, dword [ebp-8H]                     ; 1F6C _ 0F AF. 45, F8
        mov     edx, eax                                ; 1F70 _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 1F72 _ 8B. 45, FC
        add     eax, edx                                ; 1F75 _ 01. D0
        mov     edx, eax                                ; 1F77 _ 89. C2
        mov     eax, dword [ebp-14H]                    ; 1F79 _ 8B. 45, EC
        add     edx, eax                                ; 1F7C _ 01. C2
        movzx   eax, byte [ebp-21H]                     ; 1F7E _ 0F B6. 45, DF
        mov     byte [edx], al                          ; 1F82 _ 88. 02
?_122:  add     dword [ebp-18H], 1                      ; 1F84 _ 83. 45, E8, 01
?_123:  mov     eax, dword [ebp-10H]                    ; 1F88 _ 8B. 45, F0
        mov     eax, dword [eax+4H]                     ; 1F8B _ 8B. 40, 04
        cmp     dword [ebp-18H], eax                    ; 1F8E _ 39. 45, E8
        jl      ?_121                                   ; 1F91 _ 0F 8C, FFFFFF75
        add     dword [ebp-1CH], 1                      ; 1F97 _ 83. 45, E4, 01
?_124:  mov     eax, dword [ebp-10H]                    ; 1F9B _ 8B. 45, F0
        mov     eax, dword [eax+8H]                     ; 1F9E _ 8B. 40, 08
        cmp     dword [ebp-1CH], eax                    ; 1FA1 _ 39. 45, E4
        jl      ?_120                                   ; 1FA4 _ 0F 8C, FFFFFF4B
        add     dword [ebp-20H], 1                      ; 1FAA _ 83. 45, E0, 01
?_125:  mov     eax, dword [ebp+8H]                     ; 1FAE _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 1FB1 _ 8B. 40, 0C
        cmp     dword [ebp-20H], eax                    ; 1FB4 _ 39. 45, E0
        jle     ?_119                                   ; 1FB7 _ 0F 8E, FFFFFF15
        nop                                             ; 1FBD _ 90
        leave                                           ; 1FBE _ C9
        ret                                             ; 1FBF _ C3
; sheet_refresh_new End of function



?_126:                                                  ; byte
        db 54H, 6FH, 74H, 61H, 6CH, 20H, 4DH, 65H       ; 0000 _ Total Me
        db 6DH, 20H, 53H, 69H, 7AH, 65H, 20H, 69H       ; 0008 _ m Size i
        db 73H, 3AH, 20H, 00H                           ; 0010 _ s: .

?_127:                                                  ; byte
        db 4DH, 42H, 00H                                ; 0014 _ MB.

?_128:                                                  ; byte
        db 43H, 6FH, 75H, 6EH, 74H, 65H, 72H, 00H       ; 0017 _ Counter.

?_129:                                                  ; byte
        db 54H, 68H, 65H, 20H, 6DH, 6FH, 75H, 73H       ; 001F _ The mous
        db 65H, 20H, 69H, 73H, 20H, 6DH, 6FH, 76H       ; 0027 _ e is mov
        db 69H, 6EH, 67H, 2EH, 2EH, 2EH, 00H            ; 002F _ ing....

?_130:                                                  ; byte
        db 50H, 61H, 67H, 65H, 20H, 69H, 73H, 3AH       ; 0036 _ Page is:
        db 20H, 00H                                     ; 003E _  .

?_131:                                                  ; byte
        db 42H, 61H, 73H, 65H, 41H, 64H, 64H, 72H       ; 0040 _ BaseAddr
        db 4CH, 6FH, 77H, 3AH, 20H, 00H                 ; 0048 _ Low: .

?_132:                                                  ; byte
        db 42H, 61H, 73H, 65H, 41H, 64H, 64H, 72H       ; 004E _ BaseAddr
        db 48H, 69H, 67H, 68H, 3AH, 20H, 00H            ; 0056 _ High: .

?_133:                                                  ; byte
        db 4CH, 65H, 6EH, 67H, 74H, 68H, 4CH, 6FH       ; 005D _ LengthLo
        db 77H, 3AH, 20H, 00H                           ; 0065 _ w: .

?_134:                                                  ; byte
        db 4CH, 65H, 6EH, 67H, 74H, 68H, 48H, 69H       ; 0069 _ LengthHi
        db 67H, 68H, 3AH, 20H, 00H                      ; 0071 _ gh: .

?_135:                                                  ; byte
        db 54H, 79H, 70H, 65H, 3AH, 20H, 00H            ; 0076 _ Type: .



keyVal:                                                 ; byte
        db 30H, 78H                                     ; 0000 _ 0x

?_136:  db 00H                                          ; 0002 _ .

?_137:  db 00H, 00H, 00H, 00H, 00H                      ; 0003 _ .....

memman: dd 00100000H, 00000000H                         ; 0008 _ 1048576 0 
        dd 00000000H, 00000000H                         ; 0010 _ 0 0 
        dd 00000000H, 00000000H                         ; 0018 _ 0 0 

table_rgb.1687:                                         ; byte
        db 00H, 00H, 00H, 0FFH, 00H, 00H, 00H, 0FFH     ; 0020 _ ........
        db 00H, 0FFH, 0FFH, 00H, 00H, 00H, 0FFH, 0FFH   ; 0028 _ ........
        db 00H, 0FFH, 00H, 0FFH, 0FFH, 0FFH, 0FFH, 0FFH ; 0030 _ ........
        db 0C6H, 0C6H, 0C6H, 84H, 00H, 00H, 00H, 84H    ; 0038 _ ........
        db 00H, 84H, 84H, 00H, 00H, 00H, 84H, 84H       ; 0040 _ ........
        db 00H, 84H, 00H, 78H, 0D7H, 84H, 84H, 84H      ; 0048 _ ...x....
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0050 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0058 _ ........

cursor.1732:                                            ; byte
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

closebtn.1872:                                          ; byte
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

?_138:  resw    1                                       ; 0004

?_139:  resw    1                                       ; 0006

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

str.1775:                                               ; byte
        resb    1                                       ; 0200

?_140:  resb    9                                       ; 0201

?_141:  resb    2                                       ; 020A

line.1824:                                              ; dword
        resd    1                                       ; 020C

pos.1823: resd  1                                       ; 0210


