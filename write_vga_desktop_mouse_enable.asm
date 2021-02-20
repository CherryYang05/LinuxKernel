; Disassembly of file: write_vga_desktop_mouse_enable.o
; Sat Feb 20 18:33:31 2021
; Mode: 32 bits
; Syntax: YASM/NASM
; Instruction set: 80386






CMain:  ; Function begin
        push    ebp                                     ; 0000 _ 55
        mov     ebp, esp                                ; 0001 _ 89. E5
        push    ebx                                     ; 0003 _ 53
        sub     esp, 20                                 ; 0004 _ 83. EC, 14
        sub     esp, 12                                 ; 0007 _ 83. EC, 0C
        push    bootInfo                                ; 000A _ 68, 00000100(d)
        call    initBootInfo                            ; 000F _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0014 _ 83. C4, 10
        mov     eax, dword [bootInfo]                   ; 0017 _ A1, 00000100(d)
        mov     dword [ebp-14H], eax                    ; 001C _ 89. 45, EC
        movzx   eax, word [?_051]                       ; 001F _ 0F B7. 05, 00000104(d)
        cwde                                            ; 0026 _ 98
        mov     dword [ebp-10H], eax                    ; 0027 _ 89. 45, F0
        movzx   eax, word [?_052]                       ; 002A _ 0F B7. 05, 00000106(d)
        cwde                                            ; 0031 _ 98
        mov     dword [ebp-0CH], eax                    ; 0032 _ 89. 45, F4
        call    init_palette                            ; 0035 _ E8, FFFFFFFC(rel)
        call    init_keyboard                           ; 003A _ E8, FFFFFFFC(rel)
        sub     esp, 4                                  ; 003F _ 83. EC, 04
        push    mousebuf                                ; 0042 _ 68, 00000160(d)
        push    128                                     ; 0047 _ 68, 00000080
        push    mouseInfo                               ; 004C _ 68, 00000120(d)
        call    fifo8_init                              ; 0051 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0056 _ 83. C4, 10
        sub     esp, 4                                  ; 0059 _ 83. EC, 04
        push    keybuf                                  ; 005C _ 68, 00000140(d)
        push    32                                      ; 0061 _ 6A, 20
        push    keyInfo                                 ; 0063 _ 68, 00000108(d)
        call    fifo8_init                              ; 0068 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 006D _ 83. C4, 10
        call    io_sti                                  ; 0070 _ E8, FFFFFFFC(rel)
        call    enable_mouse                            ; 0075 _ E8, FFFFFFFC(rel)
?_001:  call    io_cli                                  ; 007A _ E8, FFFFFFFC(rel)
        sub     esp, 12                                 ; 007F _ 83. EC, 0C
        push    keyInfo                                 ; 0082 _ 68, 00000108(d)
        call    fifo8_status                            ; 0087 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 008C _ 83. C4, 10
        mov     ebx, eax                                ; 008F _ 89. C3
        sub     esp, 12                                 ; 0091 _ 83. EC, 0C
        push    mouseInfo                               ; 0094 _ 68, 00000120(d)
        call    fifo8_status                            ; 0099 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 009E _ 83. C4, 10
        add     eax, ebx                                ; 00A1 _ 01. D8
        test    eax, eax                                ; 00A3 _ 85. C0
        jnz     ?_002                                   ; 00A5 _ 75, 07
        call    io_stihlt                               ; 00A7 _ E8, FFFFFFFC(rel)
        jmp     ?_001                                   ; 00AC _ EB, CC

?_002:  sub     esp, 12                                 ; 00AE _ 83. EC, 0C
        push    keyInfo                                 ; 00B1 _ 68, 00000108(d)
        call    fifo8_status                            ; 00B6 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 00BB _ 83. C4, 10
        test    eax, eax                                ; 00BE _ 85. C0
        jz      ?_003                                   ; 00C0 _ 74, 07
        call    showKeyboardInfo                        ; 00C2 _ E8, FFFFFFFC(rel)
        jmp     ?_001                                   ; 00C7 _ EB, B1

?_003:  sub     esp, 12                                 ; 00C9 _ 83. EC, 0C
        push    mouseInfo                               ; 00CC _ 68, 00000120(d)
        call    fifo8_status                            ; 00D1 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 00D6 _ 83. C4, 10
        test    eax, eax                                ; 00D9 _ 85. C0
        jz      ?_001                                   ; 00DB _ 74, 9D
        call    showMouseInfo                           ; 00DD _ E8, FFFFFFFC(rel)
        jmp     ?_001                                   ; 00E2 _ EB, 96
; CMain End of function

initBootInfo:; Function begin
        push    ebp                                     ; 00E4 _ 55
        mov     ebp, esp                                ; 00E5 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 00E7 _ 8B. 45, 08
        mov     dword [eax], 655360                     ; 00EA _ C7. 00, 000A0000
        mov     eax, dword [ebp+8H]                     ; 00F0 _ 8B. 45, 08
; Note: Length-changing prefix causes delay on Intel processors
        mov     word [eax+4H], 320                      ; 00F3 _ 66: C7. 40, 04, 0140
        mov     eax, dword [ebp+8H]                     ; 00F9 _ 8B. 45, 08
; Note: Length-changing prefix causes delay on Intel processors
        mov     word [eax+6H], 200                      ; 00FC _ 66: C7. 40, 06, 00C8
        nop                                             ; 0102 _ 90
        pop     ebp                                     ; 0103 _ 5D
        ret                                             ; 0104 _ C3
; initBootInfo End of function

showString:; Function begin
        push    ebp                                     ; 0105 _ 55
        mov     ebp, esp                                ; 0106 _ 89. E5
        sub     esp, 24                                 ; 0108 _ 83. EC, 18
        mov     eax, dword [ebp+18H]                    ; 010B _ 8B. 45, 18
        mov     byte [ebp-0CH], al                      ; 010E _ 88. 45, F4
        jmp     ?_005                                   ; 0111 _ EB, 37

?_004:  mov     eax, dword [ebp+1CH]                    ; 0113 _ 8B. 45, 1C
        movzx   eax, byte [eax]                         ; 0116 _ 0F B6. 00
        movzx   eax, al                                 ; 0119 _ 0F B6. C0
        shl     eax, 4                                  ; 011C _ C1. E0, 04
        lea     edx, [systemFont+eax]                   ; 011F _ 8D. 90, 00000000(d)
        movsx   eax, byte [ebp-0CH]                     ; 0125 _ 0F BE. 45, F4
        sub     esp, 8                                  ; 0129 _ 83. EC, 08
        push    edx                                     ; 012C _ 52
        push    eax                                     ; 012D _ 50
        push    dword [ebp+14H]                         ; 012E _ FF. 75, 14
        push    dword [ebp+10H]                         ; 0131 _ FF. 75, 10
        push    dword [ebp+0CH]                         ; 0134 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 0137 _ FF. 75, 08
        call    showFont8                               ; 013A _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 013F _ 83. C4, 20
        add     dword [ebp+10H], 8                      ; 0142 _ 83. 45, 10, 08
        add     dword [ebp+1CH], 1                      ; 0146 _ 83. 45, 1C, 01
?_005:  mov     eax, dword [ebp+1CH]                    ; 014A _ 8B. 45, 1C
        movzx   eax, byte [eax]                         ; 014D _ 0F B6. 00
        test    al, al                                  ; 0150 _ 84. C0
        jnz     ?_004                                   ; 0152 _ 75, BF
        nop                                             ; 0154 _ 90
        leave                                           ; 0155 _ C9
        ret                                             ; 0156 _ C3
; showString End of function

init_palette:; Function begin
        push    ebp                                     ; 0157 _ 55
        mov     ebp, esp                                ; 0158 _ 89. E5
        push    ebx                                     ; 015A _ 53
        sub     esp, 20                                 ; 015B _ 83. EC, 14
        mov     eax, dword [bootInfo]                   ; 015E _ A1, 00000100(d)
        mov     dword [ebp-14H], eax                    ; 0163 _ 89. 45, EC
        movzx   eax, word [?_051]                       ; 0166 _ 0F B7. 05, 00000104(d)
        cwde                                            ; 016D _ 98
        mov     dword [ebp-10H], eax                    ; 016E _ 89. 45, F0
        movzx   eax, word [?_052]                       ; 0171 _ 0F B7. 05, 00000106(d)
        cwde                                            ; 0178 _ 98
        mov     dword [ebp-0CH], eax                    ; 0179 _ 89. 45, F4
        sub     esp, 4                                  ; 017C _ 83. EC, 04
        push    table_rgb.1535                          ; 017F _ 68, 00000020(d)
        push    15                                      ; 0184 _ 6A, 0F
        push    0                                       ; 0186 _ 6A, 00
        call    set_palette                             ; 0188 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 018D _ 83. C4, 10
        mov     eax, dword [ebp-0CH]                    ; 0190 _ 8B. 45, F4
        lea     edx, [eax-1DH]                          ; 0193 _ 8D. 50, E3
        mov     eax, dword [ebp-10H]                    ; 0196 _ 8B. 45, F0
        sub     eax, 1                                  ; 0199 _ 83. E8, 01
        sub     esp, 4                                  ; 019C _ 83. EC, 04
        push    edx                                     ; 019F _ 52
        push    eax                                     ; 01A0 _ 50
        push    0                                       ; 01A1 _ 6A, 00
        push    0                                       ; 01A3 _ 6A, 00
        push    14                                      ; 01A5 _ 6A, 0E
        push    dword [ebp-10H]                         ; 01A7 _ FF. 75, F0
        push    dword [ebp-14H]                         ; 01AA _ FF. 75, EC
        call    boxfill8                                ; 01AD _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 01B2 _ 83. C4, 20
        mov     eax, dword [ebp-0CH]                    ; 01B5 _ 8B. 45, F4
        lea     ecx, [eax-1CH]                          ; 01B8 _ 8D. 48, E4
        mov     eax, dword [ebp-10H]                    ; 01BB _ 8B. 45, F0
        lea     edx, [eax-1H]                           ; 01BE _ 8D. 50, FF
        mov     eax, dword [ebp-0CH]                    ; 01C1 _ 8B. 45, F4
        sub     eax, 28                                 ; 01C4 _ 83. E8, 1C
        sub     esp, 4                                  ; 01C7 _ 83. EC, 04
        push    ecx                                     ; 01CA _ 51
        push    edx                                     ; 01CB _ 52
        push    eax                                     ; 01CC _ 50
        push    0                                       ; 01CD _ 6A, 00
        push    8                                       ; 01CF _ 6A, 08
        push    dword [ebp-10H]                         ; 01D1 _ FF. 75, F0
        push    dword [ebp-14H]                         ; 01D4 _ FF. 75, EC
        call    boxfill8                                ; 01D7 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 01DC _ 83. C4, 20
        mov     eax, dword [ebp-0CH]                    ; 01DF _ 8B. 45, F4
        lea     ecx, [eax-1BH]                          ; 01E2 _ 8D. 48, E5
        mov     eax, dword [ebp-10H]                    ; 01E5 _ 8B. 45, F0
        lea     edx, [eax-1H]                           ; 01E8 _ 8D. 50, FF
        mov     eax, dword [ebp-0CH]                    ; 01EB _ 8B. 45, F4
        sub     eax, 27                                 ; 01EE _ 83. E8, 1B
        sub     esp, 4                                  ; 01F1 _ 83. EC, 04
        push    ecx                                     ; 01F4 _ 51
        push    edx                                     ; 01F5 _ 52
        push    eax                                     ; 01F6 _ 50
        push    0                                       ; 01F7 _ 6A, 00
        push    7                                       ; 01F9 _ 6A, 07
        push    dword [ebp-10H]                         ; 01FB _ FF. 75, F0
        push    dword [ebp-14H]                         ; 01FE _ FF. 75, EC
        call    boxfill8                                ; 0201 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0206 _ 83. C4, 20
        mov     eax, dword [ebp-0CH]                    ; 0209 _ 8B. 45, F4
        lea     ecx, [eax-1H]                           ; 020C _ 8D. 48, FF
        mov     eax, dword [ebp-10H]                    ; 020F _ 8B. 45, F0
        lea     edx, [eax-1H]                           ; 0212 _ 8D. 50, FF
        mov     eax, dword [ebp-0CH]                    ; 0215 _ 8B. 45, F4
        sub     eax, 26                                 ; 0218 _ 83. E8, 1A
        sub     esp, 4                                  ; 021B _ 83. EC, 04
        push    ecx                                     ; 021E _ 51
        push    edx                                     ; 021F _ 52
        push    eax                                     ; 0220 _ 50
        push    0                                       ; 0221 _ 6A, 00
        push    8                                       ; 0223 _ 6A, 08
        push    dword [ebp-10H]                         ; 0225 _ FF. 75, F0
        push    dword [ebp-14H]                         ; 0228 _ FF. 75, EC
        call    boxfill8                                ; 022B _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0230 _ 83. C4, 20
        mov     eax, dword [ebp-0CH]                    ; 0233 _ 8B. 45, F4
        lea     edx, [eax-18H]                          ; 0236 _ 8D. 50, E8
        mov     eax, dword [ebp-0CH]                    ; 0239 _ 8B. 45, F4
        sub     eax, 24                                 ; 023C _ 83. E8, 18
        sub     esp, 4                                  ; 023F _ 83. EC, 04
        push    edx                                     ; 0242 _ 52
        push    59                                      ; 0243 _ 6A, 3B
        push    eax                                     ; 0245 _ 50
        push    3                                       ; 0246 _ 6A, 03
        push    7                                       ; 0248 _ 6A, 07
        push    dword [ebp-10H]                         ; 024A _ FF. 75, F0
        push    dword [ebp-14H]                         ; 024D _ FF. 75, EC
        call    boxfill8                                ; 0250 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0255 _ 83. C4, 20
        mov     eax, dword [ebp-0CH]                    ; 0258 _ 8B. 45, F4
        lea     edx, [eax-4H]                           ; 025B _ 8D. 50, FC
        mov     eax, dword [ebp-0CH]                    ; 025E _ 8B. 45, F4
        sub     eax, 24                                 ; 0261 _ 83. E8, 18
        sub     esp, 4                                  ; 0264 _ 83. EC, 04
        push    edx                                     ; 0267 _ 52
        push    2                                       ; 0268 _ 6A, 02
        push    eax                                     ; 026A _ 50
        push    2                                       ; 026B _ 6A, 02
        push    7                                       ; 026D _ 6A, 07
        push    dword [ebp-10H]                         ; 026F _ FF. 75, F0
        push    dword [ebp-14H]                         ; 0272 _ FF. 75, EC
        call    boxfill8                                ; 0275 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 027A _ 83. C4, 20
        mov     eax, dword [ebp-0CH]                    ; 027D _ 8B. 45, F4
        lea     edx, [eax-4H]                           ; 0280 _ 8D. 50, FC
        mov     eax, dword [ebp-0CH]                    ; 0283 _ 8B. 45, F4
        sub     eax, 4                                  ; 0286 _ 83. E8, 04
        sub     esp, 4                                  ; 0289 _ 83. EC, 04
        push    edx                                     ; 028C _ 52
        push    59                                      ; 028D _ 6A, 3B
        push    eax                                     ; 028F _ 50
        push    3                                       ; 0290 _ 6A, 03
        push    15                                      ; 0292 _ 6A, 0F
        push    dword [ebp-10H]                         ; 0294 _ FF. 75, F0
        push    dword [ebp-14H]                         ; 0297 _ FF. 75, EC
        call    boxfill8                                ; 029A _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 029F _ 83. C4, 20
        mov     eax, dword [ebp-0CH]                    ; 02A2 _ 8B. 45, F4
        lea     edx, [eax-5H]                           ; 02A5 _ 8D. 50, FB
        mov     eax, dword [ebp-0CH]                    ; 02A8 _ 8B. 45, F4
        sub     eax, 23                                 ; 02AB _ 83. E8, 17
        sub     esp, 4                                  ; 02AE _ 83. EC, 04
        push    edx                                     ; 02B1 _ 52
        push    59                                      ; 02B2 _ 6A, 3B
        push    eax                                     ; 02B4 _ 50
        push    59                                      ; 02B5 _ 6A, 3B
        push    15                                      ; 02B7 _ 6A, 0F
        push    dword [ebp-10H]                         ; 02B9 _ FF. 75, F0
        push    dword [ebp-14H]                         ; 02BC _ FF. 75, EC
        call    boxfill8                                ; 02BF _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 02C4 _ 83. C4, 20
        mov     eax, dword [ebp-0CH]                    ; 02C7 _ 8B. 45, F4
        lea     edx, [eax-3H]                           ; 02CA _ 8D. 50, FD
        mov     eax, dword [ebp-0CH]                    ; 02CD _ 8B. 45, F4
        sub     eax, 3                                  ; 02D0 _ 83. E8, 03
        sub     esp, 4                                  ; 02D3 _ 83. EC, 04
        push    edx                                     ; 02D6 _ 52
        push    59                                      ; 02D7 _ 6A, 3B
        push    eax                                     ; 02D9 _ 50
        push    2                                       ; 02DA _ 6A, 02
        push    0                                       ; 02DC _ 6A, 00
        push    dword [ebp-10H]                         ; 02DE _ FF. 75, F0
        push    dword [ebp-14H]                         ; 02E1 _ FF. 75, EC
        call    boxfill8                                ; 02E4 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 02E9 _ 83. C4, 20
        mov     eax, dword [ebp-0CH]                    ; 02EC _ 8B. 45, F4
        lea     edx, [eax-3H]                           ; 02EF _ 8D. 50, FD
        mov     eax, dword [ebp-0CH]                    ; 02F2 _ 8B. 45, F4
        sub     eax, 24                                 ; 02F5 _ 83. E8, 18
        sub     esp, 4                                  ; 02F8 _ 83. EC, 04
        push    edx                                     ; 02FB _ 52
        push    60                                      ; 02FC _ 6A, 3C
        push    eax                                     ; 02FE _ 50
        push    60                                      ; 02FF _ 6A, 3C
        push    0                                       ; 0301 _ 6A, 00
        push    dword [ebp-10H]                         ; 0303 _ FF. 75, F0
        push    dword [ebp-14H]                         ; 0306 _ FF. 75, EC
        call    boxfill8                                ; 0309 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 030E _ 83. C4, 20
        mov     eax, dword [ebp-0CH]                    ; 0311 _ 8B. 45, F4
        lea     ebx, [eax-18H]                          ; 0314 _ 8D. 58, E8
        mov     eax, dword [ebp-10H]                    ; 0317 _ 8B. 45, F0
        lea     ecx, [eax-4H]                           ; 031A _ 8D. 48, FC
        mov     eax, dword [ebp-0CH]                    ; 031D _ 8B. 45, F4
        lea     edx, [eax-18H]                          ; 0320 _ 8D. 50, E8
        mov     eax, dword [ebp-10H]                    ; 0323 _ 8B. 45, F0
        sub     eax, 47                                 ; 0326 _ 83. E8, 2F
        sub     esp, 4                                  ; 0329 _ 83. EC, 04
        push    ebx                                     ; 032C _ 53
        push    ecx                                     ; 032D _ 51
        push    edx                                     ; 032E _ 52
        push    eax                                     ; 032F _ 50
        push    15                                      ; 0330 _ 6A, 0F
        push    dword [ebp-10H]                         ; 0332 _ FF. 75, F0
        push    dword [ebp-14H]                         ; 0335 _ FF. 75, EC
        call    boxfill8                                ; 0338 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 033D _ 83. C4, 20
        mov     eax, dword [ebp-0CH]                    ; 0340 _ 8B. 45, F4
        lea     ebx, [eax-4H]                           ; 0343 _ 8D. 58, FC
        mov     eax, dword [ebp-10H]                    ; 0346 _ 8B. 45, F0
        lea     ecx, [eax-2FH]                          ; 0349 _ 8D. 48, D1
        mov     eax, dword [ebp-0CH]                    ; 034C _ 8B. 45, F4
        lea     edx, [eax-17H]                          ; 034F _ 8D. 50, E9
        mov     eax, dword [ebp-10H]                    ; 0352 _ 8B. 45, F0
        sub     eax, 47                                 ; 0355 _ 83. E8, 2F
        sub     esp, 4                                  ; 0358 _ 83. EC, 04
        push    ebx                                     ; 035B _ 53
        push    ecx                                     ; 035C _ 51
        push    edx                                     ; 035D _ 52
        push    eax                                     ; 035E _ 50
        push    15                                      ; 035F _ 6A, 0F
        push    dword [ebp-10H]                         ; 0361 _ FF. 75, F0
        push    dword [ebp-14H]                         ; 0364 _ FF. 75, EC
        call    boxfill8                                ; 0367 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 036C _ 83. C4, 20
        mov     eax, dword [ebp-0CH]                    ; 036F _ 8B. 45, F4
        lea     ebx, [eax-3H]                           ; 0372 _ 8D. 58, FD
        mov     eax, dword [ebp-10H]                    ; 0375 _ 8B. 45, F0
        lea     ecx, [eax-4H]                           ; 0378 _ 8D. 48, FC
        mov     eax, dword [ebp-0CH]                    ; 037B _ 8B. 45, F4
        lea     edx, [eax-3H]                           ; 037E _ 8D. 50, FD
        mov     eax, dword [ebp-10H]                    ; 0381 _ 8B. 45, F0
        sub     eax, 47                                 ; 0384 _ 83. E8, 2F
        sub     esp, 4                                  ; 0387 _ 83. EC, 04
        push    ebx                                     ; 038A _ 53
        push    ecx                                     ; 038B _ 51
        push    edx                                     ; 038C _ 52
        push    eax                                     ; 038D _ 50
        push    7                                       ; 038E _ 6A, 07
        push    dword [ebp-10H]                         ; 0390 _ FF. 75, F0
        push    dword [ebp-14H]                         ; 0393 _ FF. 75, EC
        call    boxfill8                                ; 0396 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 039B _ 83. C4, 20
        mov     eax, dword [ebp-0CH]                    ; 039E _ 8B. 45, F4
        lea     ebx, [eax-3H]                           ; 03A1 _ 8D. 58, FD
        mov     eax, dword [ebp-10H]                    ; 03A4 _ 8B. 45, F0
        lea     ecx, [eax-3H]                           ; 03A7 _ 8D. 48, FD
        mov     eax, dword [ebp-0CH]                    ; 03AA _ 8B. 45, F4
        lea     edx, [eax-18H]                          ; 03AD _ 8D. 50, E8
        mov     eax, dword [ebp-10H]                    ; 03B0 _ 8B. 45, F0
        sub     eax, 3                                  ; 03B3 _ 83. E8, 03
        sub     esp, 4                                  ; 03B6 _ 83. EC, 04
        push    ebx                                     ; 03B9 _ 53
        push    ecx                                     ; 03BA _ 51
        push    edx                                     ; 03BB _ 52
        push    eax                                     ; 03BC _ 50
        push    7                                       ; 03BD _ 6A, 07
        push    dword [ebp-10H]                         ; 03BF _ FF. 75, F0
        push    dword [ebp-14H]                         ; 03C2 _ FF. 75, EC
        call    boxfill8                                ; 03C5 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 03CA _ 83. C4, 20
        sub     esp, 8                                  ; 03CD _ 83. EC, 08
        push    14                                      ; 03D0 _ 6A, 0E
        push    mcursor                                 ; 03D2 _ 68, 00000000(d)
        call    init_mouse_cursor                       ; 03D7 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 03DC _ 83. C4, 10
        push    16                                      ; 03DF _ 6A, 10
        push    mcursor                                 ; 03E1 _ 68, 00000000(d)
        push    80                                      ; 03E6 _ 6A, 50
        push    80                                      ; 03E8 _ 6A, 50
        push    16                                      ; 03EA _ 6A, 10
        push    16                                      ; 03EC _ 6A, 10
        push    dword [ebp-10H]                         ; 03EE _ FF. 75, F0
        push    dword [ebp-14H]                         ; 03F1 _ FF. 75, EC
        call    putblock                                ; 03F4 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 03F9 _ 83. C4, 20
        nop                                             ; 03FC _ 90
        mov     ebx, dword [ebp-4H]                     ; 03FD _ 8B. 5D, FC
        leave                                           ; 0400 _ C9
        ret                                             ; 0401 _ C3
; init_palette End of function

set_palette:; Function begin
        push    ebp                                     ; 0402 _ 55
        mov     ebp, esp                                ; 0403 _ 89. E5
        sub     esp, 24                                 ; 0405 _ 83. EC, 18
        call    io_load_eflags                          ; 0408 _ E8, FFFFFFFC(rel)
        mov     dword [ebp-0CH], eax                    ; 040D _ 89. 45, F4
        call    io_cli                                  ; 0410 _ E8, FFFFFFFC(rel)
        sub     esp, 8                                  ; 0415 _ 83. EC, 08
        push    dword [ebp+8H]                          ; 0418 _ FF. 75, 08
        push    968                                     ; 041B _ 68, 000003C8
        call    io_out8                                 ; 0420 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0425 _ 83. C4, 10
        mov     eax, dword [ebp+8H]                     ; 0428 _ 8B. 45, 08
        mov     dword [ebp-10H], eax                    ; 042B _ 89. 45, F0
        jmp     ?_007                                   ; 042E _ EB, 65

?_006:  mov     eax, dword [ebp+10H]                    ; 0430 _ 8B. 45, 10
        movzx   eax, byte [eax]                         ; 0433 _ 0F B6. 00
        shr     al, 2                                   ; 0436 _ C0. E8, 02
        movzx   eax, al                                 ; 0439 _ 0F B6. C0
        sub     esp, 8                                  ; 043C _ 83. EC, 08
        push    eax                                     ; 043F _ 50
        push    969                                     ; 0440 _ 68, 000003C9
        call    io_out8                                 ; 0445 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 044A _ 83. C4, 10
        mov     eax, dword [ebp+10H]                    ; 044D _ 8B. 45, 10
        add     eax, 1                                  ; 0450 _ 83. C0, 01
        movzx   eax, byte [eax]                         ; 0453 _ 0F B6. 00
        shr     al, 2                                   ; 0456 _ C0. E8, 02
        movzx   eax, al                                 ; 0459 _ 0F B6. C0
        sub     esp, 8                                  ; 045C _ 83. EC, 08
        push    eax                                     ; 045F _ 50
        push    969                                     ; 0460 _ 68, 000003C9
        call    io_out8                                 ; 0465 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 046A _ 83. C4, 10
        mov     eax, dword [ebp+10H]                    ; 046D _ 8B. 45, 10
        add     eax, 2                                  ; 0470 _ 83. C0, 02
        movzx   eax, byte [eax]                         ; 0473 _ 0F B6. 00
        shr     al, 2                                   ; 0476 _ C0. E8, 02
        movzx   eax, al                                 ; 0479 _ 0F B6. C0
        sub     esp, 8                                  ; 047C _ 83. EC, 08
        push    eax                                     ; 047F _ 50
        push    969                                     ; 0480 _ 68, 000003C9
        call    io_out8                                 ; 0485 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 048A _ 83. C4, 10
        add     dword [ebp+10H], 3                      ; 048D _ 83. 45, 10, 03
        add     dword [ebp-10H], 1                      ; 0491 _ 83. 45, F0, 01
?_007:  mov     eax, dword [ebp-10H]                    ; 0495 _ 8B. 45, F0
        cmp     eax, dword [ebp+0CH]                    ; 0498 _ 3B. 45, 0C
        jle     ?_006                                   ; 049B _ 7E, 93
        sub     esp, 12                                 ; 049D _ 83. EC, 0C
        push    dword [ebp-0CH]                         ; 04A0 _ FF. 75, F4
        call    io_store_eflags                         ; 04A3 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 04A8 _ 83. C4, 10
        nop                                             ; 04AB _ 90
        leave                                           ; 04AC _ C9
        ret                                             ; 04AD _ C3
; set_palette End of function

boxfill8:; Function begin
        push    ebp                                     ; 04AE _ 55
        mov     ebp, esp                                ; 04AF _ 89. E5
        sub     esp, 20                                 ; 04B1 _ 83. EC, 14
        mov     eax, dword [ebp+10H]                    ; 04B4 _ 8B. 45, 10
        mov     byte [ebp-14H], al                      ; 04B7 _ 88. 45, EC
        mov     eax, dword [ebp+18H]                    ; 04BA _ 8B. 45, 18
        mov     dword [ebp-4H], eax                     ; 04BD _ 89. 45, FC
        jmp     ?_011                                   ; 04C0 _ EB, 33

?_008:  mov     eax, dword [ebp+14H]                    ; 04C2 _ 8B. 45, 14
        mov     dword [ebp-8H], eax                     ; 04C5 _ 89. 45, F8
        jmp     ?_010                                   ; 04C8 _ EB, 1F

?_009:  mov     eax, dword [ebp-4H]                     ; 04CA _ 8B. 45, FC
        imul    eax, dword [ebp+0CH]                    ; 04CD _ 0F AF. 45, 0C
        mov     edx, eax                                ; 04D1 _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 04D3 _ 8B. 45, F8
        add     eax, edx                                ; 04D6 _ 01. D0
        mov     edx, eax                                ; 04D8 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 04DA _ 8B. 45, 08
        add     edx, eax                                ; 04DD _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 04DF _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 04E3 _ 88. 02
        add     dword [ebp-8H], 1                       ; 04E5 _ 83. 45, F8, 01
?_010:  mov     eax, dword [ebp-8H]                     ; 04E9 _ 8B. 45, F8
        cmp     eax, dword [ebp+1CH]                    ; 04EC _ 3B. 45, 1C
        jle     ?_009                                   ; 04EF _ 7E, D9
        add     dword [ebp-4H], 1                       ; 04F1 _ 83. 45, FC, 01
?_011:  mov     eax, dword [ebp-4H]                     ; 04F5 _ 8B. 45, FC
        cmp     eax, dword [ebp+20H]                    ; 04F8 _ 3B. 45, 20
        jle     ?_008                                   ; 04FB _ 7E, C5
        nop                                             ; 04FD _ 90
        leave                                           ; 04FE _ C9
        ret                                             ; 04FF _ C3
; boxfill8 End of function

showFont8:; Function begin
        push    ebp                                     ; 0500 _ 55
        mov     ebp, esp                                ; 0501 _ 89. E5
        sub     esp, 20                                 ; 0503 _ 83. EC, 14
        mov     eax, dword [ebp+18H]                    ; 0506 _ 8B. 45, 18
        mov     byte [ebp-14H], al                      ; 0509 _ 88. 45, EC
        mov     dword [ebp-4H], 0                       ; 050C _ C7. 45, FC, 00000000
        jmp     ?_021                                   ; 0513 _ E9, 0000016C

?_012:  mov     edx, dword [ebp-4H]                     ; 0518 _ 8B. 55, FC
        mov     eax, dword [ebp+1CH]                    ; 051B _ 8B. 45, 1C
        add     eax, edx                                ; 051E _ 01. D0
        movzx   eax, byte [eax]                         ; 0520 _ 0F B6. 00
        mov     byte [ebp-5H], al                       ; 0523 _ 88. 45, FB
        cmp     byte [ebp-5H], 0                        ; 0526 _ 80. 7D, FB, 00
        jns     ?_013                                   ; 052A _ 79, 20
        mov     edx, dword [ebp+14H]                    ; 052C _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 052F _ 8B. 45, FC
        add     eax, edx                                ; 0532 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 0534 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 0538 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 053A _ 8B. 45, 10
        add     eax, edx                                ; 053D _ 01. D0
        mov     edx, eax                                ; 053F _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 0541 _ 8B. 45, 08
        add     edx, eax                                ; 0544 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0546 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 054A _ 88. 02
?_013:  movsx   eax, byte [ebp-5H]                      ; 054C _ 0F BE. 45, FB
        and     eax, 40H                                ; 0550 _ 83. E0, 40
        test    eax, eax                                ; 0553 _ 85. C0
        jz      ?_014                                   ; 0555 _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 0557 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 055A _ 8B. 45, FC
        add     eax, edx                                ; 055D _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 055F _ 0F AF. 45, 0C
        mov     edx, eax                                ; 0563 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 0565 _ 8B. 45, 10
        add     eax, edx                                ; 0568 _ 01. D0
        lea     edx, [eax+1H]                           ; 056A _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 056D _ 8B. 45, 08
        add     edx, eax                                ; 0570 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0572 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0576 _ 88. 02
?_014:  movsx   eax, byte [ebp-5H]                      ; 0578 _ 0F BE. 45, FB
        and     eax, 20H                                ; 057C _ 83. E0, 20
        test    eax, eax                                ; 057F _ 85. C0
        jz      ?_015                                   ; 0581 _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 0583 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 0586 _ 8B. 45, FC
        add     eax, edx                                ; 0589 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 058B _ 0F AF. 45, 0C
        mov     edx, eax                                ; 058F _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 0591 _ 8B. 45, 10
        add     eax, edx                                ; 0594 _ 01. D0
        lea     edx, [eax+2H]                           ; 0596 _ 8D. 50, 02
        mov     eax, dword [ebp+8H]                     ; 0599 _ 8B. 45, 08
        add     edx, eax                                ; 059C _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 059E _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 05A2 _ 88. 02
?_015:  movsx   eax, byte [ebp-5H]                      ; 05A4 _ 0F BE. 45, FB
        and     eax, 10H                                ; 05A8 _ 83. E0, 10
        test    eax, eax                                ; 05AB _ 85. C0
        jz      ?_016                                   ; 05AD _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 05AF _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 05B2 _ 8B. 45, FC
        add     eax, edx                                ; 05B5 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 05B7 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 05BB _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 05BD _ 8B. 45, 10
        add     eax, edx                                ; 05C0 _ 01. D0
        lea     edx, [eax+3H]                           ; 05C2 _ 8D. 50, 03
        mov     eax, dword [ebp+8H]                     ; 05C5 _ 8B. 45, 08
        add     edx, eax                                ; 05C8 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 05CA _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 05CE _ 88. 02
?_016:  movsx   eax, byte [ebp-5H]                      ; 05D0 _ 0F BE. 45, FB
        and     eax, 08H                                ; 05D4 _ 83. E0, 08
        test    eax, eax                                ; 05D7 _ 85. C0
        jz      ?_017                                   ; 05D9 _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 05DB _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 05DE _ 8B. 45, FC
        add     eax, edx                                ; 05E1 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 05E3 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 05E7 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 05E9 _ 8B. 45, 10
        add     eax, edx                                ; 05EC _ 01. D0
        lea     edx, [eax+4H]                           ; 05EE _ 8D. 50, 04
        mov     eax, dword [ebp+8H]                     ; 05F1 _ 8B. 45, 08
        add     edx, eax                                ; 05F4 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 05F6 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 05FA _ 88. 02
?_017:  movsx   eax, byte [ebp-5H]                      ; 05FC _ 0F BE. 45, FB
        and     eax, 04H                                ; 0600 _ 83. E0, 04
        test    eax, eax                                ; 0603 _ 85. C0
        jz      ?_018                                   ; 0605 _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 0607 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 060A _ 8B. 45, FC
        add     eax, edx                                ; 060D _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 060F _ 0F AF. 45, 0C
        mov     edx, eax                                ; 0613 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 0615 _ 8B. 45, 10
        add     eax, edx                                ; 0618 _ 01. D0
        lea     edx, [eax+5H]                           ; 061A _ 8D. 50, 05
        mov     eax, dword [ebp+8H]                     ; 061D _ 8B. 45, 08
        add     edx, eax                                ; 0620 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0622 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0626 _ 88. 02
?_018:  movsx   eax, byte [ebp-5H]                      ; 0628 _ 0F BE. 45, FB
        and     eax, 02H                                ; 062C _ 83. E0, 02
        test    eax, eax                                ; 062F _ 85. C0
        jz      ?_019                                   ; 0631 _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 0633 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 0636 _ 8B. 45, FC
        add     eax, edx                                ; 0639 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 063B _ 0F AF. 45, 0C
        mov     edx, eax                                ; 063F _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 0641 _ 8B. 45, 10
        add     eax, edx                                ; 0644 _ 01. D0
        lea     edx, [eax+6H]                           ; 0646 _ 8D. 50, 06
        mov     eax, dword [ebp+8H]                     ; 0649 _ 8B. 45, 08
        add     edx, eax                                ; 064C _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 064E _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0652 _ 88. 02
?_019:  movsx   eax, byte [ebp-5H]                      ; 0654 _ 0F BE. 45, FB
        and     eax, 01H                                ; 0658 _ 83. E0, 01
        test    eax, eax                                ; 065B _ 85. C0
        jz      ?_020                                   ; 065D _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 065F _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 0662 _ 8B. 45, FC
        add     eax, edx                                ; 0665 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 0667 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 066B _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 066D _ 8B. 45, 10
        add     eax, edx                                ; 0670 _ 01. D0
        lea     edx, [eax+7H]                           ; 0672 _ 8D. 50, 07
        mov     eax, dword [ebp+8H]                     ; 0675 _ 8B. 45, 08
        add     edx, eax                                ; 0678 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 067A _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 067E _ 88. 02
?_020:  add     dword [ebp-4H], 1                       ; 0680 _ 83. 45, FC, 01
?_021:  cmp     dword [ebp-4H], 15                      ; 0684 _ 83. 7D, FC, 0F
        jle     ?_012                                   ; 0688 _ 0F 8E, FFFFFE8A
        nop                                             ; 068E _ 90
        leave                                           ; 068F _ C9
        ret                                             ; 0690 _ C3
; showFont8 End of function

init_mouse_cursor:; Function begin
        push    ebp                                     ; 0691 _ 55
        mov     ebp, esp                                ; 0692 _ 89. E5
        sub     esp, 20                                 ; 0694 _ 83. EC, 14
        mov     eax, dword [ebp+0CH]                    ; 0697 _ 8B. 45, 0C
        mov     byte [ebp-14H], al                      ; 069A _ 88. 45, EC
        mov     dword [ebp-4H], 0                       ; 069D _ C7. 45, FC, 00000000
        jmp     ?_028                                   ; 06A4 _ E9, 000000B1

?_022:  mov     dword [ebp-8H], 0                       ; 06A9 _ C7. 45, F8, 00000000
        jmp     ?_027                                   ; 06B0 _ E9, 00000097

?_023:  mov     eax, dword [ebp-4H]                     ; 06B5 _ 8B. 45, FC
        shl     eax, 4                                  ; 06B8 _ C1. E0, 04
        mov     edx, eax                                ; 06BB _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 06BD _ 8B. 45, F8
        add     eax, edx                                ; 06C0 _ 01. D0
        add     eax, cursor.1580                        ; 06C2 _ 05, 00000060(d)
        movzx   eax, byte [eax]                         ; 06C7 _ 0F B6. 00
        cmp     al, 42                                  ; 06CA _ 3C, 2A
        jnz     ?_024                                   ; 06CC _ 75, 17
        mov     eax, dword [ebp-4H]                     ; 06CE _ 8B. 45, FC
        shl     eax, 4                                  ; 06D1 _ C1. E0, 04
        mov     edx, eax                                ; 06D4 _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 06D6 _ 8B. 45, F8
        add     eax, edx                                ; 06D9 _ 01. D0
        mov     edx, eax                                ; 06DB _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 06DD _ 8B. 45, 08
        add     eax, edx                                ; 06E0 _ 01. D0
        mov     byte [eax], 0                           ; 06E2 _ C6. 00, 00
?_024:  mov     eax, dword [ebp-4H]                     ; 06E5 _ 8B. 45, FC
        shl     eax, 4                                  ; 06E8 _ C1. E0, 04
        mov     edx, eax                                ; 06EB _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 06ED _ 8B. 45, F8
        add     eax, edx                                ; 06F0 _ 01. D0
        add     eax, cursor.1580                        ; 06F2 _ 05, 00000060(d)
        movzx   eax, byte [eax]                         ; 06F7 _ 0F B6. 00
        cmp     al, 79                                  ; 06FA _ 3C, 4F
        jnz     ?_025                                   ; 06FC _ 75, 17
        mov     eax, dword [ebp-4H]                     ; 06FE _ 8B. 45, FC
        shl     eax, 4                                  ; 0701 _ C1. E0, 04
        mov     edx, eax                                ; 0704 _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 0706 _ 8B. 45, F8
        add     eax, edx                                ; 0709 _ 01. D0
        mov     edx, eax                                ; 070B _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 070D _ 8B. 45, 08
        add     eax, edx                                ; 0710 _ 01. D0
        mov     byte [eax], 7                           ; 0712 _ C6. 00, 07
?_025:  mov     eax, dword [ebp-4H]                     ; 0715 _ 8B. 45, FC
        shl     eax, 4                                  ; 0718 _ C1. E0, 04
        mov     edx, eax                                ; 071B _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 071D _ 8B. 45, F8
        add     eax, edx                                ; 0720 _ 01. D0
        add     eax, cursor.1580                        ; 0722 _ 05, 00000060(d)
        movzx   eax, byte [eax]                         ; 0727 _ 0F B6. 00
        cmp     al, 46                                  ; 072A _ 3C, 2E
        jnz     ?_026                                   ; 072C _ 75, 1A
        mov     eax, dword [ebp-4H]                     ; 072E _ 8B. 45, FC
        shl     eax, 4                                  ; 0731 _ C1. E0, 04
        mov     edx, eax                                ; 0734 _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 0736 _ 8B. 45, F8
        add     eax, edx                                ; 0739 _ 01. D0
        mov     edx, eax                                ; 073B _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 073D _ 8B. 45, 08
        add     edx, eax                                ; 0740 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0742 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0746 _ 88. 02
?_026:  add     dword [ebp-8H], 1                       ; 0748 _ 83. 45, F8, 01
?_027:  cmp     dword [ebp-8H], 15                      ; 074C _ 83. 7D, F8, 0F
        jle     ?_023                                   ; 0750 _ 0F 8E, FFFFFF5F
        add     dword [ebp-4H], 1                       ; 0756 _ 83. 45, FC, 01
?_028:  cmp     dword [ebp-4H], 15                      ; 075A _ 83. 7D, FC, 0F
        jle     ?_022                                   ; 075E _ 0F 8E, FFFFFF45
        nop                                             ; 0764 _ 90
        leave                                           ; 0765 _ C9
        ret                                             ; 0766 _ C3
; init_mouse_cursor End of function

putblock:; Function begin
        push    ebp                                     ; 0767 _ 55
        mov     ebp, esp                                ; 0768 _ 89. E5
        push    ebx                                     ; 076A _ 53
        sub     esp, 16                                 ; 076B _ 83. EC, 10
        mov     dword [ebp-8H], 0                       ; 076E _ C7. 45, F8, 00000000
        jmp     ?_032                                   ; 0775 _ EB, 50

?_029:  mov     dword [ebp-0CH], 0                      ; 0777 _ C7. 45, F4, 00000000
        jmp     ?_031                                   ; 077E _ EB, 3B

?_030:  mov     eax, dword [ebp-8H]                     ; 0780 _ 8B. 45, F8
        imul    eax, dword [ebp+24H]                    ; 0783 _ 0F AF. 45, 24
        mov     edx, eax                                ; 0787 _ 89. C2
        mov     eax, dword [ebp-0CH]                    ; 0789 _ 8B. 45, F4
        add     eax, edx                                ; 078C _ 01. D0
        mov     edx, eax                                ; 078E _ 89. C2
        mov     eax, dword [ebp+20H]                    ; 0790 _ 8B. 45, 20
        add     eax, edx                                ; 0793 _ 01. D0
        mov     ecx, dword [ebp+1CH]                    ; 0795 _ 8B. 4D, 1C
        mov     edx, dword [ebp-8H]                     ; 0798 _ 8B. 55, F8
        add     edx, ecx                                ; 079B _ 01. CA
        imul    edx, dword [ebp+0CH]                    ; 079D _ 0F AF. 55, 0C
        mov     ebx, dword [ebp+18H]                    ; 07A1 _ 8B. 5D, 18
        mov     ecx, dword [ebp-0CH]                    ; 07A4 _ 8B. 4D, F4
        add     ecx, ebx                                ; 07A7 _ 01. D9
        add     edx, ecx                                ; 07A9 _ 01. CA
        mov     ecx, edx                                ; 07AB _ 89. D1
        mov     edx, dword [ebp+8H]                     ; 07AD _ 8B. 55, 08
        add     edx, ecx                                ; 07B0 _ 01. CA
        movzx   eax, byte [eax]                         ; 07B2 _ 0F B6. 00
        mov     byte [edx], al                          ; 07B5 _ 88. 02
        add     dword [ebp-0CH], 1                      ; 07B7 _ 83. 45, F4, 01
?_031:  mov     eax, dword [ebp-0CH]                    ; 07BB _ 8B. 45, F4
        cmp     eax, dword [ebp+10H]                    ; 07BE _ 3B. 45, 10
        jl      ?_030                                   ; 07C1 _ 7C, BD
        add     dword [ebp-8H], 1                       ; 07C3 _ 83. 45, F8, 01
?_032:  mov     eax, dword [ebp-8H]                     ; 07C7 _ 8B. 45, F8
        cmp     eax, dword [ebp+14H]                    ; 07CA _ 3B. 45, 14
        jl      ?_029                                   ; 07CD _ 7C, A8
        nop                                             ; 07CF _ 90
        add     esp, 16                                 ; 07D0 _ 83. C4, 10
        pop     ebx                                     ; 07D3 _ 5B
        pop     ebp                                     ; 07D4 _ 5D
        ret                                             ; 07D5 _ C3
; putblock End of function

intHandlerFromC:; Function begin
        push    ebp                                     ; 07D6 _ 55
        mov     ebp, esp                                ; 07D7 _ 89. E5
        sub     esp, 24                                 ; 07D9 _ 83. EC, 18
        mov     eax, dword [bootInfo]                   ; 07DC _ A1, 00000100(d)
        mov     dword [ebp-14H], eax                    ; 07E1 _ 89. 45, EC
        movzx   eax, word [?_051]                       ; 07E4 _ 0F B7. 05, 00000104(d)
        cwde                                            ; 07EB _ 98
        mov     dword [ebp-10H], eax                    ; 07EC _ 89. 45, F0
        movzx   eax, word [?_052]                       ; 07EF _ 0F B7. 05, 00000106(d)
        cwde                                            ; 07F6 _ 98
        mov     dword [ebp-0CH], eax                    ; 07F7 _ 89. 45, F4
        sub     esp, 8                                  ; 07FA _ 83. EC, 08
        push    33                                      ; 07FD _ 6A, 21
        push    32                                      ; 07FF _ 6A, 20
        call    io_out8                                 ; 0801 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0806 _ 83. C4, 10
        mov     byte [ebp-15H], 0                       ; 0809 _ C6. 45, EB, 00
        sub     esp, 12                                 ; 080D _ 83. EC, 0C
        push    96                                      ; 0810 _ 6A, 60
        call    io_in8                                  ; 0812 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0817 _ 83. C4, 10
        mov     byte [ebp-15H], al                      ; 081A _ 88. 45, EB
        movzx   eax, byte [ebp-15H]                     ; 081D _ 0F B6. 45, EB
        sub     esp, 8                                  ; 0821 _ 83. EC, 08
        push    eax                                     ; 0824 _ 50
        push    keyInfo                                 ; 0825 _ 68, 00000108(d)
        call    fifo8_put                               ; 082A _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 082F _ 83. C4, 10
        nop                                             ; 0832 _ 90
        leave                                           ; 0833 _ C9
        ret                                             ; 0834 _ C3
; intHandlerFromC End of function

charToHex:; Function begin
        push    ebp                                     ; 0835 _ 55
        mov     ebp, esp                                ; 0836 _ 89. E5
        sub     esp, 40                                 ; 0838 _ 83. EC, 28
        mov     eax, dword [ebp+8H]                     ; 083B _ 8B. 45, 08
        mov     byte [ebp-1CH], al                      ; 083E _ 88. 45, E4
        movzx   eax, byte [ebp-1CH]                     ; 0841 _ 0F B6. 45, E4
        and     eax, 0FH                                ; 0845 _ 83. E0, 0F
        mov     byte [ebp-9H], al                       ; 0848 _ 88. 45, F7
        movsx   eax, byte [ebp-9H]                      ; 084B _ 0F BE. 45, F7
        sub     esp, 12                                 ; 084F _ 83. EC, 0C
        push    eax                                     ; 0852 _ 50
        call    charToVal                               ; 0853 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0858 _ 83. C4, 10
        mov     byte [?_050], al                        ; 085B _ A2, 00000013(d)
        movzx   eax, byte [ebp-1CH]                     ; 0860 _ 0F B6. 45, E4
        shr     al, 4                                   ; 0864 _ C0. E8, 04
        mov     byte [ebp-1CH], al                      ; 0867 _ 88. 45, E4
        movzx   eax, byte [ebp-1CH]                     ; 086A _ 0F B6. 45, E4
        movsx   eax, al                                 ; 086E _ 0F BE. C0
        sub     esp, 12                                 ; 0871 _ 83. EC, 0C
        push    eax                                     ; 0874 _ 50
        call    charToVal                               ; 0875 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 087A _ 83. C4, 10
        mov     byte [?_049], al                        ; 087D _ A2, 00000012(d)
        mov     eax, keyVal                             ; 0882 _ B8, 00000010(d)
        leave                                           ; 0887 _ C9
        ret                                             ; 0888 _ C3
; charToHex End of function

charToVal:; Function begin
        push    ebp                                     ; 0889 _ 55
        mov     ebp, esp                                ; 088A _ 89. E5
        sub     esp, 4                                  ; 088C _ 83. EC, 04
        mov     eax, dword [ebp+8H]                     ; 088F _ 8B. 45, 08
        mov     byte [ebp-4H], al                       ; 0892 _ 88. 45, FC
        cmp     byte [ebp-4H], 9                        ; 0895 _ 80. 7D, FC, 09
        jle     ?_033                                   ; 0899 _ 7E, 09
        movzx   eax, byte [ebp-4H]                      ; 089B _ 0F B6. 45, FC
        add     eax, 55                                 ; 089F _ 83. C0, 37
        jmp     ?_034                                   ; 08A2 _ EB, 07

?_033:  movzx   eax, byte [ebp-4H]                      ; 08A4 _ 0F B6. 45, FC
        add     eax, 48                                 ; 08A8 _ 83. C0, 30
?_034:  leave                                           ; 08AB _ C9
        ret                                             ; 08AC _ C3
; charToVal End of function

wait_KBC_sendReady:; Function begin
        push    ebp                                     ; 08AD _ 55
        mov     ebp, esp                                ; 08AE _ 89. E5
        sub     esp, 8                                  ; 08B0 _ 83. EC, 08
?_035:  sub     esp, 12                                 ; 08B3 _ 83. EC, 0C
        push    100                                     ; 08B6 _ 6A, 64
        call    io_in8                                  ; 08B8 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 08BD _ 83. C4, 10
        movsx   eax, al                                 ; 08C0 _ 0F BE. C0
        and     eax, 02H                                ; 08C3 _ 83. E0, 02
        test    eax, eax                                ; 08C6 _ 85. C0
        jz      ?_036                                   ; 08C8 _ 74, 02
        jmp     ?_035                                   ; 08CA _ EB, E7

?_036:  nop                                             ; 08CC _ 90
        nop                                             ; 08CD _ 90
        leave                                           ; 08CE _ C9
        ret                                             ; 08CF _ C3
; wait_KBC_sendReady End of function

init_keyboard:; Function begin
        push    ebp                                     ; 08D0 _ 55
        mov     ebp, esp                                ; 08D1 _ 89. E5
        sub     esp, 8                                  ; 08D3 _ 83. EC, 08
        call    wait_KBC_sendReady                      ; 08D6 _ E8, FFFFFFFC(rel)
        sub     esp, 8                                  ; 08DB _ 83. EC, 08
        push    96                                      ; 08DE _ 6A, 60
        push    100                                     ; 08E0 _ 6A, 64
        call    io_out8                                 ; 08E2 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 08E7 _ 83. C4, 10
        call    wait_KBC_sendReady                      ; 08EA _ E8, FFFFFFFC(rel)
        sub     esp, 8                                  ; 08EF _ 83. EC, 08
        push    71                                      ; 08F2 _ 6A, 47
        push    96                                      ; 08F4 _ 6A, 60
        call    io_out8                                 ; 08F6 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 08FB _ 83. C4, 10
        nop                                             ; 08FE _ 90
        leave                                           ; 08FF _ C9
        ret                                             ; 0900 _ C3
; init_keyboard End of function

enable_mouse:; Function begin
        push    ebp                                     ; 0901 _ 55
        mov     ebp, esp                                ; 0902 _ 89. E5
        sub     esp, 8                                  ; 0904 _ 83. EC, 08
        call    wait_KBC_sendReady                      ; 0907 _ E8, FFFFFFFC(rel)
        sub     esp, 8                                  ; 090C _ 83. EC, 08
        push    212                                     ; 090F _ 68, 000000D4
        push    100                                     ; 0914 _ 6A, 64
        call    io_out8                                 ; 0916 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 091B _ 83. C4, 10
        call    wait_KBC_sendReady                      ; 091E _ E8, FFFFFFFC(rel)
        sub     esp, 8                                  ; 0923 _ 83. EC, 08
        push    244                                     ; 0926 _ 68, 000000F4
        push    96                                      ; 092B _ 6A, 60
        call    io_out8                                 ; 092D _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0932 _ 83. C4, 10
        nop                                             ; 0935 _ 90
        leave                                           ; 0936 _ C9
        ret                                             ; 0937 _ C3
; enable_mouse End of function

intHandlerForMouse:; Function begin
        push    ebp                                     ; 0938 _ 55
        mov     ebp, esp                                ; 0939 _ 89. E5
        sub     esp, 24                                 ; 093B _ 83. EC, 18
        mov     eax, dword [bootInfo]                   ; 093E _ A1, 00000100(d)
        mov     dword [ebp-14H], eax                    ; 0943 _ 89. 45, EC
        movzx   eax, word [?_051]                       ; 0946 _ 0F B7. 05, 00000104(d)
        cwde                                            ; 094D _ 98
        mov     dword [ebp-10H], eax                    ; 094E _ 89. 45, F0
        movzx   eax, word [?_052]                       ; 0951 _ 0F B7. 05, 00000106(d)
        cwde                                            ; 0958 _ 98
        mov     dword [ebp-0CH], eax                    ; 0959 _ 89. 45, F4
        mov     byte [ebp-15H], 0                       ; 095C _ C6. 45, EB, 00
        sub     esp, 8                                  ; 0960 _ 83. EC, 08
        push    32                                      ; 0963 _ 6A, 20
        push    32                                      ; 0965 _ 6A, 20
        call    io_out8                                 ; 0967 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 096C _ 83. C4, 10
        sub     esp, 8                                  ; 096F _ 83. EC, 08
        push    32                                      ; 0972 _ 6A, 20
        push    160                                     ; 0974 _ 68, 000000A0
        call    io_out8                                 ; 0979 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 097E _ 83. C4, 10
        sub     esp, 12                                 ; 0981 _ 83. EC, 0C
        push    96                                      ; 0984 _ 6A, 60
        call    io_in8                                  ; 0986 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 098B _ 83. C4, 10
        mov     byte [ebp-15H], al                      ; 098E _ 88. 45, EB
        movzx   eax, byte [ebp-15H]                     ; 0991 _ 0F B6. 45, EB
        sub     esp, 8                                  ; 0995 _ 83. EC, 08
        push    eax                                     ; 0998 _ 50
        push    mouseInfo                               ; 0999 _ 68, 00000120(d)
        call    fifo8_put                               ; 099E _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 09A3 _ 83. C4, 10
        nop                                             ; 09A6 _ 90
        leave                                           ; 09A7 _ C9
        ret                                             ; 09A8 _ C3
; intHandlerForMouse End of function

fifo8_init:; Function begin
        push    ebp                                     ; 09A9 _ 55
        mov     ebp, esp                                ; 09AA _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 09AC _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 09AF _ 8B. 55, 0C
        mov     dword [eax+0CH], edx                    ; 09B2 _ 89. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 09B5 _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 09B8 _ 8B. 55, 10
        mov     dword [eax], edx                        ; 09BB _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 09BD _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 09C0 _ 8B. 55, 0C
        mov     dword [eax+10H], edx                    ; 09C3 _ 89. 50, 10
        mov     eax, dword [ebp+8H]                     ; 09C6 _ 8B. 45, 08
        mov     dword [eax+4H], 0                       ; 09C9 _ C7. 40, 04, 00000000
        mov     eax, dword [ebp+8H]                     ; 09D0 _ 8B. 45, 08
        mov     dword [eax+8H], 0                       ; 09D3 _ C7. 40, 08, 00000000
        mov     eax, dword [ebp+8H]                     ; 09DA _ 8B. 45, 08
        mov     dword [eax+14H], 0                      ; 09DD _ C7. 40, 14, 00000000
        nop                                             ; 09E4 _ 90
        pop     ebp                                     ; 09E5 _ 5D
        ret                                             ; 09E6 _ C3
; fifo8_init End of function

fifo8_put:; Function begin
        push    ebp                                     ; 09E7 _ 55
        mov     ebp, esp                                ; 09E8 _ 89. E5
        sub     esp, 4                                  ; 09EA _ 83. EC, 04
        mov     eax, dword [ebp+0CH]                    ; 09ED _ 8B. 45, 0C
        mov     byte [ebp-4H], al                       ; 09F0 _ 88. 45, FC
        mov     eax, dword [ebp+8H]                     ; 09F3 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 09F6 _ 8B. 40, 10
        test    eax, eax                                ; 09F9 _ 85. C0
        jnz     ?_037                                   ; 09FB _ 75, 18
        mov     eax, dword [ebp+8H]                     ; 09FD _ 8B. 45, 08
        mov     eax, dword [eax+14H]                    ; 0A00 _ 8B. 40, 14
        or      eax, 01H                                ; 0A03 _ 83. C8, 01
        mov     edx, eax                                ; 0A06 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 0A08 _ 8B. 45, 08
        mov     dword [eax+14H], edx                    ; 0A0B _ 89. 50, 14
        mov     eax, 4294967295                         ; 0A0E _ B8, FFFFFFFF
        jmp     ?_039                                   ; 0A13 _ EB, 50

?_037:  mov     eax, dword [ebp+8H]                     ; 0A15 _ 8B. 45, 08
        mov     edx, dword [eax]                        ; 0A18 _ 8B. 10
        mov     eax, dword [ebp+8H]                     ; 0A1A _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 0A1D _ 8B. 40, 08
        add     edx, eax                                ; 0A20 _ 01. C2
        movzx   eax, byte [ebp-4H]                      ; 0A22 _ 0F B6. 45, FC
        mov     byte [edx], al                          ; 0A26 _ 88. 02
        mov     eax, dword [ebp+8H]                     ; 0A28 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 0A2B _ 8B. 40, 08
        lea     edx, [eax+1H]                           ; 0A2E _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 0A31 _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 0A34 _ 89. 50, 08
        mov     eax, dword [ebp+8H]                     ; 0A37 _ 8B. 45, 08
        mov     edx, dword [eax+8H]                     ; 0A3A _ 8B. 50, 08
        mov     eax, dword [ebp+8H]                     ; 0A3D _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 0A40 _ 8B. 40, 0C
        cmp     edx, eax                                ; 0A43 _ 39. C2
        jnz     ?_038                                   ; 0A45 _ 75, 0A
        mov     eax, dword [ebp+8H]                     ; 0A47 _ 8B. 45, 08
        mov     dword [eax+8H], 0                       ; 0A4A _ C7. 40, 08, 00000000
?_038:  mov     eax, dword [ebp+8H]                     ; 0A51 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 0A54 _ 8B. 40, 10
        lea     edx, [eax-1H]                           ; 0A57 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 0A5A _ 8B. 45, 08
        mov     dword [eax+10H], edx                    ; 0A5D _ 89. 50, 10
        mov     eax, 0                                  ; 0A60 _ B8, 00000000
?_039:  leave                                           ; 0A65 _ C9
        ret                                             ; 0A66 _ C3
; fifo8_put End of function

fifo8_get:; Function begin
        push    ebp                                     ; 0A67 _ 55
        mov     ebp, esp                                ; 0A68 _ 89. E5
        sub     esp, 16                                 ; 0A6A _ 83. EC, 10
        mov     eax, dword [ebp+8H]                     ; 0A6D _ 8B. 45, 08
        mov     edx, dword [eax+10H]                    ; 0A70 _ 8B. 50, 10
        mov     eax, dword [ebp+8H]                     ; 0A73 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 0A76 _ 8B. 40, 0C
        cmp     edx, eax                                ; 0A79 _ 39. C2
        jnz     ?_040                                   ; 0A7B _ 75, 07
        mov     eax, 4294967295                         ; 0A7D _ B8, FFFFFFFF
        jmp     ?_042                                   ; 0A82 _ EB, 51

?_040:  mov     eax, dword [ebp+8H]                     ; 0A84 _ 8B. 45, 08
        mov     edx, dword [eax]                        ; 0A87 _ 8B. 10
        mov     eax, dword [ebp+8H]                     ; 0A89 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 0A8C _ 8B. 40, 04
        add     eax, edx                                ; 0A8F _ 01. D0
        movzx   eax, byte [eax]                         ; 0A91 _ 0F B6. 00
        movzx   eax, al                                 ; 0A94 _ 0F B6. C0
        mov     dword [ebp-4H], eax                     ; 0A97 _ 89. 45, FC
        mov     eax, dword [ebp+8H]                     ; 0A9A _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 0A9D _ 8B. 40, 04
        lea     edx, [eax+1H]                           ; 0AA0 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 0AA3 _ 8B. 45, 08
        mov     dword [eax+4H], edx                     ; 0AA6 _ 89. 50, 04
        mov     eax, dword [ebp+8H]                     ; 0AA9 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 0AAC _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 0AAF _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 0AB2 _ 8B. 40, 0C
        cmp     edx, eax                                ; 0AB5 _ 39. C2
        jnz     ?_041                                   ; 0AB7 _ 75, 0A
        mov     eax, dword [ebp+8H]                     ; 0AB9 _ 8B. 45, 08
        mov     dword [eax+4H], 0                       ; 0ABC _ C7. 40, 04, 00000000
?_041:  mov     eax, dword [ebp+8H]                     ; 0AC3 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 0AC6 _ 8B. 40, 10
        lea     edx, [eax+1H]                           ; 0AC9 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 0ACC _ 8B. 45, 08
        mov     dword [eax+10H], edx                    ; 0ACF _ 89. 50, 10
        mov     eax, dword [ebp-4H]                     ; 0AD2 _ 8B. 45, FC
?_042:  leave                                           ; 0AD5 _ C9
        ret                                             ; 0AD6 _ C3
; fifo8_get End of function

fifo8_status:; Function begin
        push    ebp                                     ; 0AD7 _ 55
        mov     ebp, esp                                ; 0AD8 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 0ADA _ 8B. 45, 08
        mov     edx, dword [eax+0CH]                    ; 0ADD _ 8B. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 0AE0 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 0AE3 _ 8B. 40, 10
        sub     edx, eax                                ; 0AE6 _ 29. C2
        mov     eax, edx                                ; 0AE8 _ 89. D0
        pop     ebp                                     ; 0AEA _ 5D
        ret                                             ; 0AEB _ C3
; fifo8_status End of function

showKeyboardInfo:; Function begin
        push    ebp                                     ; 0AEC _ 55
        mov     ebp, esp                                ; 0AED _ 89. E5
        sub     esp, 40                                 ; 0AEF _ 83. EC, 28
        call    io_sti                                  ; 0AF2 _ E8, FFFFFFFC(rel)
        mov     eax, dword [bootInfo]                   ; 0AF7 _ A1, 00000100(d)
        mov     dword [ebp-18H], eax                    ; 0AFC _ 89. 45, E8
        movzx   eax, word [?_051]                       ; 0AFF _ 0F B7. 05, 00000104(d)
        cwde                                            ; 0B06 _ 98
        mov     dword [ebp-14H], eax                    ; 0B07 _ 89. 45, EC
        movzx   eax, word [?_052]                       ; 0B0A _ 0F B7. 05, 00000106(d)
        cwde                                            ; 0B11 _ 98
        mov     dword [ebp-10H], eax                    ; 0B12 _ 89. 45, F0
        mov     byte [ebp-19H], 0                       ; 0B15 _ C6. 45, E7, 00
        sub     esp, 12                                 ; 0B19 _ 83. EC, 0C
        push    keyInfo                                 ; 0B1C _ 68, 00000108(d)
        call    fifo8_get                               ; 0B21 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0B26 _ 83. C4, 10
        mov     byte [ebp-19H], al                      ; 0B29 _ 88. 45, E7
        movzx   eax, byte [ebp-19H]                     ; 0B2C _ 0F B6. 45, E7
        sub     esp, 12                                 ; 0B30 _ 83. EC, 0C
        push    eax                                     ; 0B33 _ 50
        call    charToHex                               ; 0B34 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0B39 _ 83. C4, 10
        mov     dword [ebp-0CH], eax                    ; 0B3C _ 89. 45, F4
        mov     edx, dword [line.1659]                  ; 0B3F _ 8B. 15, 000001E0(d)
        mov     eax, dword [pos.1658]                   ; 0B45 _ A1, 000001E4(d)
        sub     esp, 8                                  ; 0B4A _ 83. EC, 08
        push    dword [ebp-0CH]                         ; 0B4D _ FF. 75, F4
        push    7                                       ; 0B50 _ 6A, 07
        push    edx                                     ; 0B52 _ 52
        push    eax                                     ; 0B53 _ 50
        push    dword [ebp-14H]                         ; 0B54 _ FF. 75, EC
        push    dword [ebp-18H]                         ; 0B57 _ FF. 75, E8
        call    showString                              ; 0B5A _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0B5F _ 83. C4, 20
        mov     eax, dword [pos.1658]                   ; 0B62 _ A1, 000001E4(d)
        add     eax, 32                                 ; 0B67 _ 83. C0, 20
        mov     dword [pos.1658], eax                   ; 0B6A _ A3, 000001E4(d)
        mov     eax, dword [pos.1658]                   ; 0B6F _ A1, 000001E4(d)
        cmp     dword [ebp-14H], eax                    ; 0B74 _ 39. 45, EC
        jnz     ?_045                                   ; 0B77 _ 75, 28
        mov     eax, dword [line.1659]                  ; 0B79 _ A1, 000001E0(d)
        cmp     dword [ebp-10H], eax                    ; 0B7E _ 39. 45, F0
        jz      ?_043                                   ; 0B81 _ 74, 0A
        mov     eax, dword [line.1659]                  ; 0B83 _ A1, 000001E0(d)
        add     eax, 16                                 ; 0B88 _ 83. C0, 10
        jmp     ?_044                                   ; 0B8B _ EB, 05

?_043:  mov     eax, 0                                  ; 0B8D _ B8, 00000000
?_044:  mov     dword [line.1659], eax                  ; 0B92 _ A3, 000001E0(d)
        mov     dword [pos.1658], 0                     ; 0B97 _ C7. 05, 000001E4(d), 00000000
?_045:  nop                                             ; 0BA1 _ 90
        leave                                           ; 0BA2 _ C9
        ret                                             ; 0BA3 _ C3
; showKeyboardInfo End of function

showMouseInfo:; Function begin
        push    ebp                                     ; 0BA4 _ 55
        mov     ebp, esp                                ; 0BA5 _ 89. E5
        sub     esp, 40                                 ; 0BA7 _ 83. EC, 28
        call    io_sti                                  ; 0BAA _ E8, FFFFFFFC(rel)
        mov     eax, dword [bootInfo]                   ; 0BAF _ A1, 00000100(d)
        mov     dword [ebp-18H], eax                    ; 0BB4 _ 89. 45, E8
        movzx   eax, word [?_051]                       ; 0BB7 _ 0F B7. 05, 00000104(d)
        cwde                                            ; 0BBE _ 98
        mov     dword [ebp-14H], eax                    ; 0BBF _ 89. 45, EC
        movzx   eax, word [?_052]                       ; 0BC2 _ 0F B7. 05, 00000106(d)
        cwde                                            ; 0BC9 _ 98
        mov     dword [ebp-10H], eax                    ; 0BCA _ 89. 45, F0
        mov     byte [ebp-19H], 0                       ; 0BCD _ C6. 45, E7, 00
        sub     esp, 12                                 ; 0BD1 _ 83. EC, 0C
        push    mouseInfo                               ; 0BD4 _ 68, 00000120(d)
        call    fifo8_get                               ; 0BD9 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0BDE _ 83. C4, 10
        mov     byte [ebp-19H], al                      ; 0BE1 _ 88. 45, E7
        movzx   eax, byte [ebp-19H]                     ; 0BE4 _ 0F B6. 45, E7
        sub     esp, 12                                 ; 0BE8 _ 83. EC, 0C
        push    eax                                     ; 0BEB _ 50
        call    charToHex                               ; 0BEC _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0BF1 _ 83. C4, 10
        mov     dword [ebp-0CH], eax                    ; 0BF4 _ 89. 45, F4
        mov     edx, dword [mouseLine.1668]             ; 0BF7 _ 8B. 15, 00000160(d)
        mov     eax, dword [mousePos.1667]              ; 0BFD _ A1, 000001E8(d)
        sub     esp, 8                                  ; 0C02 _ 83. EC, 08
        push    dword [ebp-0CH]                         ; 0C05 _ FF. 75, F4
        push    1                                       ; 0C08 _ 6A, 01
        push    edx                                     ; 0C0A _ 52
        push    eax                                     ; 0C0B _ 50
        push    dword [ebp-14H]                         ; 0C0C _ FF. 75, EC
        push    dword [ebp-18H]                         ; 0C0F _ FF. 75, E8
        call    showString                              ; 0C12 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0C17 _ 83. C4, 20
        mov     eax, dword [mousePos.1667]              ; 0C1A _ A1, 000001E8(d)
        add     eax, 32                                 ; 0C1F _ 83. C0, 20
        mov     dword [mousePos.1667], eax              ; 0C22 _ A3, 000001E8(d)
        mov     eax, dword [mousePos.1667]              ; 0C27 _ A1, 000001E8(d)
        cmp     dword [ebp-14H], eax                    ; 0C2C _ 39. 45, EC
        jnz     ?_048                                   ; 0C2F _ 75, 28
        mov     eax, dword [mouseLine.1668]             ; 0C31 _ A1, 00000160(d)
        cmp     dword [ebp-10H], eax                    ; 0C36 _ 39. 45, F0
        jz      ?_046                                   ; 0C39 _ 74, 0A
        mov     eax, dword [mouseLine.1668]             ; 0C3B _ A1, 00000160(d)
        add     eax, 16                                 ; 0C40 _ 83. C0, 10
        jmp     ?_047                                   ; 0C43 _ EB, 05

?_046:  mov     eax, 0                                  ; 0C45 _ B8, 00000000
?_047:  mov     dword [mouseLine.1668], eax             ; 0C4A _ A3, 00000160(d)
        mov     dword [mousePos.1667], 0                ; 0C4F _ C7. 05, 000001E8(d), 00000000
?_048:  nop                                             ; 0C59 _ 90
        leave                                           ; 0C5A _ C9
        ret                                             ; 0C5B _ C3
; showMouseInfo End of function



fontA:                                                  ; oword
        db 00H, 18H, 18H, 18H, 18H, 24H, 24H, 24H       ; 0000 _ .....$$$
        db 24H, 7EH, 42H, 42H, 42H, 0E7H, 00H, 00H      ; 0008 _ $~BBB...

keyVal:                                                 ; byte
        db 30H, 78H                                     ; 0010 _ 0x

?_049:  db 00H                                          ; 0012 _ .

?_050:  db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0013 _ ........
        db 00H, 00H, 00H, 00H, 00H                      ; 001B _ .....

table_rgb.1535:                                         ; byte
        db 00H, 00H, 00H, 0FFH, 00H, 00H, 00H, 0FFH     ; 0020 _ ........
        db 00H, 0FFH, 0FFH, 00H, 00H, 00H, 0FFH, 0FFH   ; 0028 _ ........
        db 00H, 0FFH, 00H, 0FFH, 0FFH, 0FFH, 0FFH, 0FFH ; 0030 _ ........
        db 0C6H, 0C6H, 0C6H, 84H, 00H, 00H, 00H, 84H    ; 0038 _ ........
        db 00H, 84H, 84H, 00H, 00H, 00H, 84H, 84H       ; 0040 _ ........
        db 00H, 84H, 00H, 84H, 84H, 84H, 84H, 84H       ; 0048 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0050 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0058 _ ........

cursor.1580:                                            ; byte
        db 2AH, 2AH, 2AH, 2AH, 2AH, 2AH, 2AH, 2AH       ; 0060 _ ********
        db 2AH, 2AH, 2AH, 2AH, 2AH, 2EH, 2EH, 2EH       ; 0068 _ *****...
        db 2AH, 4FH, 4FH, 4FH, 4FH, 4FH, 4FH, 4FH       ; 0070 _ *OOOOOOO
        db 4FH, 4FH, 4FH, 2AH, 2EH, 2EH, 2EH, 2EH       ; 0078 _ OOO*....
        db 2AH, 4FH, 4FH, 4FH, 4FH, 4FH, 4FH, 4FH       ; 0080 _ *OOOOOOO
        db 4FH, 4FH, 2AH, 2EH, 2EH, 2EH, 2EH, 2EH       ; 0088 _ OO*.....
        db 2AH, 4FH, 4FH, 4FH, 4FH, 4FH, 4FH, 4FH       ; 0090 _ *OOOOOOO
        db 4FH, 2AH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH       ; 0098 _ O*......
        db 2AH, 4FH, 4FH, 4FH, 4FH, 4FH, 4FH, 4FH       ; 00A0 _ *OOOOOOO
        db 2AH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH       ; 00A8 _ *.......
        db 2AH, 4FH, 4FH, 4FH, 4FH, 4FH, 4FH, 2AH       ; 00B0 _ *OOOOOO*
        db 2EH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH       ; 00B8 _ ........
        db 2AH, 4FH, 4FH, 4FH, 4FH, 4FH, 4FH, 4FH       ; 00C0 _ *OOOOOOO
        db 2AH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH       ; 00C8 _ *.......
        db 2AH, 4FH, 4FH, 4FH, 4FH, 4FH, 4FH, 4FH       ; 00D0 _ *OOOOOOO
        db 4FH, 2AH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH       ; 00D8 _ O*......
        db 2AH, 4FH, 4FH, 4FH, 2AH, 2AH, 2AH, 4FH       ; 00E0 _ *OOO***O
        db 4FH, 4FH, 2AH, 2EH, 2EH, 2EH, 2EH, 2EH       ; 00E8 _ OO*.....
        db 2AH, 4FH, 4FH, 2AH, 2EH, 2EH, 2EH, 2AH       ; 00F0 _ *OO*...*
        db 4FH, 4FH, 4FH, 2AH, 2EH, 2EH, 2EH, 2EH       ; 00F8 _ OOO*....
        db 2AH, 4FH, 2AH, 2EH, 2EH, 2EH, 2EH, 2EH       ; 0100 _ *O*.....
        db 2AH, 4FH, 4FH, 4FH, 2AH, 2EH, 2EH, 2EH       ; 0108 _ *OOO*...
        db 2AH, 2AH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH       ; 0110 _ **......
        db 2EH, 2AH, 4FH, 4FH, 4FH, 2AH, 2EH, 2EH       ; 0118 _ .*OOO*..
        db 2AH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH       ; 0120 _ *.......
        db 2EH, 2EH, 2AH, 4FH, 4FH, 4FH, 2AH, 2EH       ; 0128 _ ..*OOO*.
        db 2EH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH       ; 0130 _ ........
        db 2EH, 2EH, 2EH, 2AH, 4FH, 4FH, 4FH, 2AH       ; 0138 _ ...*OOO*
        db 2EH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH       ; 0140 _ ........
        db 2EH, 2EH, 2EH, 2EH, 2AH, 4FH, 4FH, 2AH       ; 0148 _ ....*OO*
        db 2EH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH       ; 0150 _ ........
        db 2EH, 2EH, 2EH, 2EH, 2EH, 2AH, 2AH, 2AH       ; 0158 _ .....***

mouseLine.1668:                                         ; dword
        dd 00000010H                                    ; 0160 _ 16 



mcursor:                                                ; byte
        resb    256                                     ; 0000

bootInfo:                                               ; qword
        resb    4                                       ; 0100

?_051:  resw    1                                       ; 0104

?_052:  resw    1                                       ; 0106

keyInfo:                                                ; byte
        resb    24                                      ; 0108

mouseInfo:                                              ; byte
        resb    32                                      ; 0120

keybuf:                                                 ; yword
        resb    32                                      ; 0140

mousebuf:                                               ; byte
        resb    128                                     ; 0160

line.1659:                                              ; dword
        resd    1                                       ; 01E0

pos.1658: resd  1                                       ; 01E4

mousePos.1667:                                          ; dword
        resd    1                                       ; 01E8


