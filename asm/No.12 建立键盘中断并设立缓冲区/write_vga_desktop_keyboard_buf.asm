; Disassembly of file: write_vga_desktop_keyboard_buf.o
; Thu Feb 18 15:15:36 2021
; Mode: 32 bits
; Syntax: YASM/NASM
; Instruction set: 80386






CMain:  ; Function begin
        push    ebp                                     ; 0000 _ 55
        mov     ebp, esp                                ; 0001 _ 89. E5
        push    ebx                                     ; 0003 _ 53
        sub     esp, 36                                 ; 0004 _ 83. EC, 24
        sub     esp, 12                                 ; 0007 _ 83. EC, 0C
        push    bootInfo                                ; 000A _ 68, 00000100(d)
        call    initBootInfo                            ; 000F _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0014 _ 83. C4, 10
        mov     eax, dword [bootInfo]                   ; 0017 _ A1, 00000100(d)
        mov     dword [ebp-18H], eax                    ; 001C _ 89. 45, E8
        movzx   eax, word [?_039]                       ; 001F _ 0F B7. 05, 00000104(d)
        cwde                                            ; 0026 _ 98
        mov     dword [ebp-14H], eax                    ; 0027 _ 89. 45, EC
        movzx   eax, word [?_040]                       ; 002A _ 0F B7. 05, 00000106(d)
        cwde                                            ; 0031 _ 98
        mov     dword [ebp-10H], eax                    ; 0032 _ 89. 45, F0
        call    init_palette                            ; 0035 _ E8, FFFFFFFC(rel)
        mov     eax, dword [ebp-10H]                    ; 003A _ 8B. 45, F0
        lea     edx, [eax-1DH]                          ; 003D _ 8D. 50, E3
        mov     eax, dword [ebp-14H]                    ; 0040 _ 8B. 45, EC
        sub     eax, 1                                  ; 0043 _ 83. E8, 01
        sub     esp, 4                                  ; 0046 _ 83. EC, 04
        push    edx                                     ; 0049 _ 52
        push    eax                                     ; 004A _ 50
        push    0                                       ; 004B _ 6A, 00
        push    0                                       ; 004D _ 6A, 00
        push    14                                      ; 004F _ 6A, 0E
        push    dword [ebp-14H]                         ; 0051 _ FF. 75, EC
        push    dword [ebp-18H]                         ; 0054 _ FF. 75, E8
        call    boxfill8                                ; 0057 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 005C _ 83. C4, 20
        mov     eax, dword [ebp-10H]                    ; 005F _ 8B. 45, F0
        lea     ecx, [eax-1CH]                          ; 0062 _ 8D. 48, E4
        mov     eax, dword [ebp-14H]                    ; 0065 _ 8B. 45, EC
        lea     edx, [eax-1H]                           ; 0068 _ 8D. 50, FF
        mov     eax, dword [ebp-10H]                    ; 006B _ 8B. 45, F0
        sub     eax, 28                                 ; 006E _ 83. E8, 1C
        sub     esp, 4                                  ; 0071 _ 83. EC, 04
        push    ecx                                     ; 0074 _ 51
        push    edx                                     ; 0075 _ 52
        push    eax                                     ; 0076 _ 50
        push    0                                       ; 0077 _ 6A, 00
        push    8                                       ; 0079 _ 6A, 08
        push    dword [ebp-14H]                         ; 007B _ FF. 75, EC
        push    dword [ebp-18H]                         ; 007E _ FF. 75, E8
        call    boxfill8                                ; 0081 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0086 _ 83. C4, 20
        mov     eax, dword [ebp-10H]                    ; 0089 _ 8B. 45, F0
        lea     ecx, [eax-1BH]                          ; 008C _ 8D. 48, E5
        mov     eax, dword [ebp-14H]                    ; 008F _ 8B. 45, EC
        lea     edx, [eax-1H]                           ; 0092 _ 8D. 50, FF
        mov     eax, dword [ebp-10H]                    ; 0095 _ 8B. 45, F0
        sub     eax, 27                                 ; 0098 _ 83. E8, 1B
        sub     esp, 4                                  ; 009B _ 83. EC, 04
        push    ecx                                     ; 009E _ 51
        push    edx                                     ; 009F _ 52
        push    eax                                     ; 00A0 _ 50
        push    0                                       ; 00A1 _ 6A, 00
        push    7                                       ; 00A3 _ 6A, 07
        push    dword [ebp-14H]                         ; 00A5 _ FF. 75, EC
        push    dword [ebp-18H]                         ; 00A8 _ FF. 75, E8
        call    boxfill8                                ; 00AB _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 00B0 _ 83. C4, 20
        mov     eax, dword [ebp-10H]                    ; 00B3 _ 8B. 45, F0
        lea     ecx, [eax-1H]                           ; 00B6 _ 8D. 48, FF
        mov     eax, dword [ebp-14H]                    ; 00B9 _ 8B. 45, EC
        lea     edx, [eax-1H]                           ; 00BC _ 8D. 50, FF
        mov     eax, dword [ebp-10H]                    ; 00BF _ 8B. 45, F0
        sub     eax, 26                                 ; 00C2 _ 83. E8, 1A
        sub     esp, 4                                  ; 00C5 _ 83. EC, 04
        push    ecx                                     ; 00C8 _ 51
        push    edx                                     ; 00C9 _ 52
        push    eax                                     ; 00CA _ 50
        push    0                                       ; 00CB _ 6A, 00
        push    8                                       ; 00CD _ 6A, 08
        push    dword [ebp-14H]                         ; 00CF _ FF. 75, EC
        push    dword [ebp-18H]                         ; 00D2 _ FF. 75, E8
        call    boxfill8                                ; 00D5 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 00DA _ 83. C4, 20
        mov     eax, dword [ebp-10H]                    ; 00DD _ 8B. 45, F0
        lea     edx, [eax-18H]                          ; 00E0 _ 8D. 50, E8
        mov     eax, dword [ebp-10H]                    ; 00E3 _ 8B. 45, F0
        sub     eax, 24                                 ; 00E6 _ 83. E8, 18
        sub     esp, 4                                  ; 00E9 _ 83. EC, 04
        push    edx                                     ; 00EC _ 52
        push    59                                      ; 00ED _ 6A, 3B
        push    eax                                     ; 00EF _ 50
        push    3                                       ; 00F0 _ 6A, 03
        push    7                                       ; 00F2 _ 6A, 07
        push    dword [ebp-14H]                         ; 00F4 _ FF. 75, EC
        push    dword [ebp-18H]                         ; 00F7 _ FF. 75, E8
        call    boxfill8                                ; 00FA _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 00FF _ 83. C4, 20
        mov     eax, dword [ebp-10H]                    ; 0102 _ 8B. 45, F0
        lea     edx, [eax-4H]                           ; 0105 _ 8D. 50, FC
        mov     eax, dword [ebp-10H]                    ; 0108 _ 8B. 45, F0
        sub     eax, 24                                 ; 010B _ 83. E8, 18
        sub     esp, 4                                  ; 010E _ 83. EC, 04
        push    edx                                     ; 0111 _ 52
        push    2                                       ; 0112 _ 6A, 02
        push    eax                                     ; 0114 _ 50
        push    2                                       ; 0115 _ 6A, 02
        push    7                                       ; 0117 _ 6A, 07
        push    dword [ebp-14H]                         ; 0119 _ FF. 75, EC
        push    dword [ebp-18H]                         ; 011C _ FF. 75, E8
        call    boxfill8                                ; 011F _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0124 _ 83. C4, 20
        mov     eax, dword [ebp-10H]                    ; 0127 _ 8B. 45, F0
        lea     edx, [eax-4H]                           ; 012A _ 8D. 50, FC
        mov     eax, dword [ebp-10H]                    ; 012D _ 8B. 45, F0
        sub     eax, 4                                  ; 0130 _ 83. E8, 04
        sub     esp, 4                                  ; 0133 _ 83. EC, 04
        push    edx                                     ; 0136 _ 52
        push    59                                      ; 0137 _ 6A, 3B
        push    eax                                     ; 0139 _ 50
        push    3                                       ; 013A _ 6A, 03
        push    15                                      ; 013C _ 6A, 0F
        push    dword [ebp-14H]                         ; 013E _ FF. 75, EC
        push    dword [ebp-18H]                         ; 0141 _ FF. 75, E8
        call    boxfill8                                ; 0144 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0149 _ 83. C4, 20
        mov     eax, dword [ebp-10H]                    ; 014C _ 8B. 45, F0
        lea     edx, [eax-5H]                           ; 014F _ 8D. 50, FB
        mov     eax, dword [ebp-10H]                    ; 0152 _ 8B. 45, F0
        sub     eax, 23                                 ; 0155 _ 83. E8, 17
        sub     esp, 4                                  ; 0158 _ 83. EC, 04
        push    edx                                     ; 015B _ 52
        push    59                                      ; 015C _ 6A, 3B
        push    eax                                     ; 015E _ 50
        push    59                                      ; 015F _ 6A, 3B
        push    15                                      ; 0161 _ 6A, 0F
        push    dword [ebp-14H]                         ; 0163 _ FF. 75, EC
        push    dword [ebp-18H]                         ; 0166 _ FF. 75, E8
        call    boxfill8                                ; 0169 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 016E _ 83. C4, 20
        mov     eax, dword [ebp-10H]                    ; 0171 _ 8B. 45, F0
        lea     edx, [eax-3H]                           ; 0174 _ 8D. 50, FD
        mov     eax, dword [ebp-10H]                    ; 0177 _ 8B. 45, F0
        sub     eax, 3                                  ; 017A _ 83. E8, 03
        sub     esp, 4                                  ; 017D _ 83. EC, 04
        push    edx                                     ; 0180 _ 52
        push    59                                      ; 0181 _ 6A, 3B
        push    eax                                     ; 0183 _ 50
        push    2                                       ; 0184 _ 6A, 02
        push    0                                       ; 0186 _ 6A, 00
        push    dword [ebp-14H]                         ; 0188 _ FF. 75, EC
        push    dword [ebp-18H]                         ; 018B _ FF. 75, E8
        call    boxfill8                                ; 018E _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0193 _ 83. C4, 20
        mov     eax, dword [ebp-10H]                    ; 0196 _ 8B. 45, F0
        lea     edx, [eax-3H]                           ; 0199 _ 8D. 50, FD
        mov     eax, dword [ebp-10H]                    ; 019C _ 8B. 45, F0
        sub     eax, 24                                 ; 019F _ 83. E8, 18
        sub     esp, 4                                  ; 01A2 _ 83. EC, 04
        push    edx                                     ; 01A5 _ 52
        push    60                                      ; 01A6 _ 6A, 3C
        push    eax                                     ; 01A8 _ 50
        push    60                                      ; 01A9 _ 6A, 3C
        push    0                                       ; 01AB _ 6A, 00
        push    dword [ebp-14H]                         ; 01AD _ FF. 75, EC
        push    dword [ebp-18H]                         ; 01B0 _ FF. 75, E8
        call    boxfill8                                ; 01B3 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 01B8 _ 83. C4, 20
        mov     eax, dword [ebp-10H]                    ; 01BB _ 8B. 45, F0
        lea     ebx, [eax-18H]                          ; 01BE _ 8D. 58, E8
        mov     eax, dword [ebp-14H]                    ; 01C1 _ 8B. 45, EC
        lea     ecx, [eax-4H]                           ; 01C4 _ 8D. 48, FC
        mov     eax, dword [ebp-10H]                    ; 01C7 _ 8B. 45, F0
        lea     edx, [eax-18H]                          ; 01CA _ 8D. 50, E8
        mov     eax, dword [ebp-14H]                    ; 01CD _ 8B. 45, EC
        sub     eax, 47                                 ; 01D0 _ 83. E8, 2F
        sub     esp, 4                                  ; 01D3 _ 83. EC, 04
        push    ebx                                     ; 01D6 _ 53
        push    ecx                                     ; 01D7 _ 51
        push    edx                                     ; 01D8 _ 52
        push    eax                                     ; 01D9 _ 50
        push    15                                      ; 01DA _ 6A, 0F
        push    dword [ebp-14H]                         ; 01DC _ FF. 75, EC
        push    dword [ebp-18H]                         ; 01DF _ FF. 75, E8
        call    boxfill8                                ; 01E2 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 01E7 _ 83. C4, 20
        mov     eax, dword [ebp-10H]                    ; 01EA _ 8B. 45, F0
        lea     ebx, [eax-4H]                           ; 01ED _ 8D. 58, FC
        mov     eax, dword [ebp-14H]                    ; 01F0 _ 8B. 45, EC
        lea     ecx, [eax-2FH]                          ; 01F3 _ 8D. 48, D1
        mov     eax, dword [ebp-10H]                    ; 01F6 _ 8B. 45, F0
        lea     edx, [eax-17H]                          ; 01F9 _ 8D. 50, E9
        mov     eax, dword [ebp-14H]                    ; 01FC _ 8B. 45, EC
        sub     eax, 47                                 ; 01FF _ 83. E8, 2F
        sub     esp, 4                                  ; 0202 _ 83. EC, 04
        push    ebx                                     ; 0205 _ 53
        push    ecx                                     ; 0206 _ 51
        push    edx                                     ; 0207 _ 52
        push    eax                                     ; 0208 _ 50
        push    15                                      ; 0209 _ 6A, 0F
        push    dword [ebp-14H]                         ; 020B _ FF. 75, EC
        push    dword [ebp-18H]                         ; 020E _ FF. 75, E8
        call    boxfill8                                ; 0211 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0216 _ 83. C4, 20
        mov     eax, dword [ebp-10H]                    ; 0219 _ 8B. 45, F0
        lea     ebx, [eax-3H]                           ; 021C _ 8D. 58, FD
        mov     eax, dword [ebp-14H]                    ; 021F _ 8B. 45, EC
        lea     ecx, [eax-4H]                           ; 0222 _ 8D. 48, FC
        mov     eax, dword [ebp-10H]                    ; 0225 _ 8B. 45, F0
        lea     edx, [eax-3H]                           ; 0228 _ 8D. 50, FD
        mov     eax, dword [ebp-14H]                    ; 022B _ 8B. 45, EC
        sub     eax, 47                                 ; 022E _ 83. E8, 2F
        sub     esp, 4                                  ; 0231 _ 83. EC, 04
        push    ebx                                     ; 0234 _ 53
        push    ecx                                     ; 0235 _ 51
        push    edx                                     ; 0236 _ 52
        push    eax                                     ; 0237 _ 50
        push    7                                       ; 0238 _ 6A, 07
        push    dword [ebp-14H]                         ; 023A _ FF. 75, EC
        push    dword [ebp-18H]                         ; 023D _ FF. 75, E8
        call    boxfill8                                ; 0240 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0245 _ 83. C4, 20
        mov     eax, dword [ebp-10H]                    ; 0248 _ 8B. 45, F0
        lea     ebx, [eax-3H]                           ; 024B _ 8D. 58, FD
        mov     eax, dword [ebp-14H]                    ; 024E _ 8B. 45, EC
        lea     ecx, [eax-3H]                           ; 0251 _ 8D. 48, FD
        mov     eax, dword [ebp-10H]                    ; 0254 _ 8B. 45, F0
        lea     edx, [eax-18H]                          ; 0257 _ 8D. 50, E8
        mov     eax, dword [ebp-14H]                    ; 025A _ 8B. 45, EC
        sub     eax, 3                                  ; 025D _ 83. E8, 03
        sub     esp, 4                                  ; 0260 _ 83. EC, 04
        push    ebx                                     ; 0263 _ 53
        push    ecx                                     ; 0264 _ 51
        push    edx                                     ; 0265 _ 52
        push    eax                                     ; 0266 _ 50
        push    7                                       ; 0267 _ 6A, 07
        push    dword [ebp-14H]                         ; 0269 _ FF. 75, EC
        push    dword [ebp-18H]                         ; 026C _ FF. 75, E8
        call    boxfill8                                ; 026F _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0274 _ 83. C4, 20
        sub     esp, 8                                  ; 0277 _ 83. EC, 08
        push    14                                      ; 027A _ 6A, 0E
        push    mcursor                                 ; 027C _ 68, 00000000(d)
        call    init_mouse_cursor                       ; 0281 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0286 _ 83. C4, 10
        push    16                                      ; 0289 _ 6A, 10
        push    mcursor                                 ; 028B _ 68, 00000000(d)
        push    80                                      ; 0290 _ 6A, 50
        push    80                                      ; 0292 _ 6A, 50
        push    16                                      ; 0294 _ 6A, 10
        push    16                                      ; 0296 _ 6A, 10
        push    dword [ebp-14H]                         ; 0298 _ FF. 75, EC
        push    dword [ebp-18H]                         ; 029B _ FF. 75, E8
        call    putblock                                ; 029E _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 02A3 _ 83. C4, 20
        call    io_sti                                  ; 02A6 _ E8, FFFFFFFC(rel)
        mov     byte [ebp-19H], 0                       ; 02AB _ C6. 45, E7, 00
?_001:  call    io_cli                                  ; 02AF _ E8, FFFFFFFC(rel)
        mov     eax, dword [?_043]                      ; 02B4 _ A1, 00000148(d)
        test    eax, eax                                ; 02B9 _ 85. C0
        jnz     ?_002                                   ; 02BB _ 75, 0C
        call    io_sti                                  ; 02BD _ E8, FFFFFFFC(rel)
        call    io_hlt                                  ; 02C2 _ E8, FFFFFFFC(rel)
        jmp     ?_001                                   ; 02C7 _ EB, E6

?_002:  mov     eax, dword [?_041]                      ; 02C9 _ A1, 00000140(d)
        movzx   eax, byte [keybuf+eax]                  ; 02CE _ 0F B6. 80, 00000120(d)
        mov     byte [ebp-19H], al                      ; 02D5 _ 88. 45, E7
        mov     eax, dword [?_041]                      ; 02D8 _ A1, 00000140(d)
        lea     edx, [eax+1H]                           ; 02DD _ 8D. 50, 01
        mov     eax, edx                                ; 02E0 _ 89. D0
        sar     eax, 31                                 ; 02E2 _ C1. F8, 1F
        shr     eax, 27                                 ; 02E5 _ C1. E8, 1B
        add     edx, eax                                ; 02E8 _ 01. C2
        and     edx, 1FH                                ; 02EA _ 83. E2, 1F
        sub     edx, eax                                ; 02ED _ 29. C2
        mov     eax, edx                                ; 02EF _ 89. D0
        mov     dword [?_041], eax                      ; 02F1 _ A3, 00000140(d)
        mov     eax, dword [?_043]                      ; 02F6 _ A1, 00000148(d)
        sub     eax, 1                                  ; 02FB _ 83. E8, 01
        mov     dword [?_043], eax                      ; 02FE _ A3, 00000148(d)
        call    io_sti                                  ; 0303 _ E8, FFFFFFFC(rel)
        movzx   eax, byte [ebp-19H]                     ; 0308 _ 0F B6. 45, E7
        sub     esp, 12                                 ; 030C _ 83. EC, 0C
        push    eax                                     ; 030F _ 50
        call    charToHex                               ; 0310 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0315 _ 83. C4, 10
        mov     dword [ebp-0CH], eax                    ; 0318 _ 89. 45, F4
        mov     edx, dword [line.1500]                  ; 031B _ 8B. 15, 0000014C(d)
        mov     eax, dword [pos.1499]                   ; 0321 _ A1, 00000150(d)
        sub     esp, 8                                  ; 0326 _ 83. EC, 08
        push    dword [ebp-0CH]                         ; 0329 _ FF. 75, F4
        push    7                                       ; 032C _ 6A, 07
        push    edx                                     ; 032E _ 52
        push    eax                                     ; 032F _ 50
        push    dword [ebp-14H]                         ; 0330 _ FF. 75, EC
        push    dword [ebp-18H]                         ; 0333 _ FF. 75, E8
        call    showString                              ; 0336 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 033B _ 83. C4, 20
        mov     eax, dword [pos.1499]                   ; 033E _ A1, 00000150(d)
        add     eax, 32                                 ; 0343 _ 83. C0, 20
        mov     dword [pos.1499], eax                   ; 0346 _ A3, 00000150(d)
        mov     eax, dword [pos.1499]                   ; 034B _ A1, 00000150(d)
        cmp     eax, 320                                ; 0350 _ 3D, 00000140
        jne     ?_001                                   ; 0355 _ 0F 85, FFFFFF54
        mov     eax, dword [line.1500]                  ; 035B _ A1, 0000014C(d)
        cmp     eax, 240                                ; 0360 _ 3D, 000000F0
        jz      ?_003                                   ; 0365 _ 74, 0A
        mov     eax, dword [line.1500]                  ; 0367 _ A1, 0000014C(d)
        add     eax, 16                                 ; 036C _ 83. C0, 10
        jmp     ?_004                                   ; 036F _ EB, 05

?_003:  mov     eax, 0                                  ; 0371 _ B8, 00000000
?_004:  mov     dword [line.1500], eax                  ; 0376 _ A3, 0000014C(d)
        mov     dword [pos.1499], 0                     ; 037B _ C7. 05, 00000150(d), 00000000
        jmp     ?_001                                   ; 0385 _ E9, FFFFFF25
; CMain End of function

initBootInfo:; Function begin
        push    ebp                                     ; 038A _ 55
        mov     ebp, esp                                ; 038B _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 038D _ 8B. 45, 08
        mov     dword [eax], 655360                     ; 0390 _ C7. 00, 000A0000
        mov     eax, dword [ebp+8H]                     ; 0396 _ 8B. 45, 08
; Note: Length-changing prefix causes delay on Intel processors
        mov     word [eax+4H], 320                      ; 0399 _ 66: C7. 40, 04, 0140
        mov     eax, dword [ebp+8H]                     ; 039F _ 8B. 45, 08
; Note: Length-changing prefix causes delay on Intel processors
        mov     word [eax+6H], 200                      ; 03A2 _ 66: C7. 40, 06, 00C8
        mov     dword [?_043], 0                        ; 03A8 _ C7. 05, 00000148(d), 00000000
        mov     dword [?_041], 0                        ; 03B2 _ C7. 05, 00000140(d), 00000000
        mov     dword [?_042], 0                        ; 03BC _ C7. 05, 00000144(d), 00000000
        nop                                             ; 03C6 _ 90
        pop     ebp                                     ; 03C7 _ 5D
        ret                                             ; 03C8 _ C3
; initBootInfo End of function

showString:; Function begin
        push    ebp                                     ; 03C9 _ 55
        mov     ebp, esp                                ; 03CA _ 89. E5
        sub     esp, 24                                 ; 03CC _ 83. EC, 18
        mov     eax, dword [ebp+18H]                    ; 03CF _ 8B. 45, 18
        mov     byte [ebp-0CH], al                      ; 03D2 _ 88. 45, F4
        jmp     ?_006                                   ; 03D5 _ EB, 37

?_005:  mov     eax, dword [ebp+1CH]                    ; 03D7 _ 8B. 45, 1C
        movzx   eax, byte [eax]                         ; 03DA _ 0F B6. 00
        movzx   eax, al                                 ; 03DD _ 0F B6. C0
        shl     eax, 4                                  ; 03E0 _ C1. E0, 04
        lea     edx, [systemFont+eax]                   ; 03E3 _ 8D. 90, 00000000(d)
        movsx   eax, byte [ebp-0CH]                     ; 03E9 _ 0F BE. 45, F4
        sub     esp, 8                                  ; 03ED _ 83. EC, 08
        push    edx                                     ; 03F0 _ 52
        push    eax                                     ; 03F1 _ 50
        push    dword [ebp+14H]                         ; 03F2 _ FF. 75, 14
        push    dword [ebp+10H]                         ; 03F5 _ FF. 75, 10
        push    dword [ebp+0CH]                         ; 03F8 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 03FB _ FF. 75, 08
        call    showFont8                               ; 03FE _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0403 _ 83. C4, 20
        add     dword [ebp+10H], 8                      ; 0406 _ 83. 45, 10, 08
        add     dword [ebp+1CH], 1                      ; 040A _ 83. 45, 1C, 01
?_006:  mov     eax, dword [ebp+1CH]                    ; 040E _ 8B. 45, 1C
        movzx   eax, byte [eax]                         ; 0411 _ 0F B6. 00
        test    al, al                                  ; 0414 _ 84. C0
        jnz     ?_005                                   ; 0416 _ 75, BF
        nop                                             ; 0418 _ 90
        leave                                           ; 0419 _ C9
        ret                                             ; 041A _ C3
; showString End of function

init_palette:; Function begin
        push    ebp                                     ; 041B _ 55
        mov     ebp, esp                                ; 041C _ 89. E5
        sub     esp, 8                                  ; 041E _ 83. EC, 08
        sub     esp, 4                                  ; 0421 _ 83. EC, 04
        push    table_rgb.1519                          ; 0424 _ 68, 00000020(d)
        push    15                                      ; 0429 _ 6A, 0F
        push    0                                       ; 042B _ 6A, 00
        call    set_palette                             ; 042D _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0432 _ 83. C4, 10
        nop                                             ; 0435 _ 90
        leave                                           ; 0436 _ C9
        ret                                             ; 0437 _ C3
; init_palette End of function

set_palette:; Function begin
        push    ebp                                     ; 0438 _ 55
        mov     ebp, esp                                ; 0439 _ 89. E5
        sub     esp, 24                                 ; 043B _ 83. EC, 18
        call    io_load_eflags                          ; 043E _ E8, FFFFFFFC(rel)
        mov     dword [ebp-0CH], eax                    ; 0443 _ 89. 45, F4
        call    io_cli                                  ; 0446 _ E8, FFFFFFFC(rel)
        sub     esp, 8                                  ; 044B _ 83. EC, 08
        push    dword [ebp+8H]                          ; 044E _ FF. 75, 08
        push    968                                     ; 0451 _ 68, 000003C8
        call    io_out8                                 ; 0456 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 045B _ 83. C4, 10
        mov     eax, dword [ebp+8H]                     ; 045E _ 8B. 45, 08
        mov     dword [ebp-10H], eax                    ; 0461 _ 89. 45, F0
        jmp     ?_008                                   ; 0464 _ EB, 65

?_007:  mov     eax, dword [ebp+10H]                    ; 0466 _ 8B. 45, 10
        movzx   eax, byte [eax]                         ; 0469 _ 0F B6. 00
        shr     al, 2                                   ; 046C _ C0. E8, 02
        movzx   eax, al                                 ; 046F _ 0F B6. C0
        sub     esp, 8                                  ; 0472 _ 83. EC, 08
        push    eax                                     ; 0475 _ 50
        push    969                                     ; 0476 _ 68, 000003C9
        call    io_out8                                 ; 047B _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0480 _ 83. C4, 10
        mov     eax, dword [ebp+10H]                    ; 0483 _ 8B. 45, 10
        add     eax, 1                                  ; 0486 _ 83. C0, 01
        movzx   eax, byte [eax]                         ; 0489 _ 0F B6. 00
        shr     al, 2                                   ; 048C _ C0. E8, 02
        movzx   eax, al                                 ; 048F _ 0F B6. C0
        sub     esp, 8                                  ; 0492 _ 83. EC, 08
        push    eax                                     ; 0495 _ 50
        push    969                                     ; 0496 _ 68, 000003C9
        call    io_out8                                 ; 049B _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 04A0 _ 83. C4, 10
        mov     eax, dword [ebp+10H]                    ; 04A3 _ 8B. 45, 10
        add     eax, 2                                  ; 04A6 _ 83. C0, 02
        movzx   eax, byte [eax]                         ; 04A9 _ 0F B6. 00
        shr     al, 2                                   ; 04AC _ C0. E8, 02
        movzx   eax, al                                 ; 04AF _ 0F B6. C0
        sub     esp, 8                                  ; 04B2 _ 83. EC, 08
        push    eax                                     ; 04B5 _ 50
        push    969                                     ; 04B6 _ 68, 000003C9
        call    io_out8                                 ; 04BB _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 04C0 _ 83. C4, 10
        add     dword [ebp+10H], 3                      ; 04C3 _ 83. 45, 10, 03
        add     dword [ebp-10H], 1                      ; 04C7 _ 83. 45, F0, 01
?_008:  mov     eax, dword [ebp-10H]                    ; 04CB _ 8B. 45, F0
        cmp     eax, dword [ebp+0CH]                    ; 04CE _ 3B. 45, 0C
        jle     ?_007                                   ; 04D1 _ 7E, 93
        sub     esp, 12                                 ; 04D3 _ 83. EC, 0C
        push    dword [ebp-0CH]                         ; 04D6 _ FF. 75, F4
        call    io_store_eflags                         ; 04D9 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 04DE _ 83. C4, 10
        nop                                             ; 04E1 _ 90
        leave                                           ; 04E2 _ C9
        ret                                             ; 04E3 _ C3
; set_palette End of function

boxfill8:; Function begin
        push    ebp                                     ; 04E4 _ 55
        mov     ebp, esp                                ; 04E5 _ 89. E5
        sub     esp, 20                                 ; 04E7 _ 83. EC, 14
        mov     eax, dword [ebp+10H]                    ; 04EA _ 8B. 45, 10
        mov     byte [ebp-14H], al                      ; 04ED _ 88. 45, EC
        mov     eax, dword [ebp+18H]                    ; 04F0 _ 8B. 45, 18
        mov     dword [ebp-4H], eax                     ; 04F3 _ 89. 45, FC
        jmp     ?_012                                   ; 04F6 _ EB, 33

?_009:  mov     eax, dword [ebp+14H]                    ; 04F8 _ 8B. 45, 14
        mov     dword [ebp-8H], eax                     ; 04FB _ 89. 45, F8
        jmp     ?_011                                   ; 04FE _ EB, 1F

?_010:  mov     eax, dword [ebp-4H]                     ; 0500 _ 8B. 45, FC
        imul    eax, dword [ebp+0CH]                    ; 0503 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 0507 _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 0509 _ 8B. 45, F8
        add     eax, edx                                ; 050C _ 01. D0
        mov     edx, eax                                ; 050E _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 0510 _ 8B. 45, 08
        add     edx, eax                                ; 0513 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0515 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0519 _ 88. 02
        add     dword [ebp-8H], 1                       ; 051B _ 83. 45, F8, 01
?_011:  mov     eax, dword [ebp-8H]                     ; 051F _ 8B. 45, F8
        cmp     eax, dword [ebp+1CH]                    ; 0522 _ 3B. 45, 1C
        jle     ?_010                                   ; 0525 _ 7E, D9
        add     dword [ebp-4H], 1                       ; 0527 _ 83. 45, FC, 01
?_012:  mov     eax, dword [ebp-4H]                     ; 052B _ 8B. 45, FC
        cmp     eax, dword [ebp+20H]                    ; 052E _ 3B. 45, 20
        jle     ?_009                                   ; 0531 _ 7E, C5
        nop                                             ; 0533 _ 90
        leave                                           ; 0534 _ C9
        ret                                             ; 0535 _ C3
; boxfill8 End of function

showFont8:; Function begin
        push    ebp                                     ; 0536 _ 55
        mov     ebp, esp                                ; 0537 _ 89. E5
        sub     esp, 20                                 ; 0539 _ 83. EC, 14
        mov     eax, dword [ebp+18H]                    ; 053C _ 8B. 45, 18
        mov     byte [ebp-14H], al                      ; 053F _ 88. 45, EC
        mov     dword [ebp-4H], 0                       ; 0542 _ C7. 45, FC, 00000000
        jmp     ?_022                                   ; 0549 _ E9, 0000016C

?_013:  mov     edx, dword [ebp-4H]                     ; 054E _ 8B. 55, FC
        mov     eax, dword [ebp+1CH]                    ; 0551 _ 8B. 45, 1C
        add     eax, edx                                ; 0554 _ 01. D0
        movzx   eax, byte [eax]                         ; 0556 _ 0F B6. 00
        mov     byte [ebp-5H], al                       ; 0559 _ 88. 45, FB
        cmp     byte [ebp-5H], 0                        ; 055C _ 80. 7D, FB, 00
        jns     ?_014                                   ; 0560 _ 79, 20
        mov     edx, dword [ebp+14H]                    ; 0562 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 0565 _ 8B. 45, FC
        add     eax, edx                                ; 0568 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 056A _ 0F AF. 45, 0C
        mov     edx, eax                                ; 056E _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 0570 _ 8B. 45, 10
        add     eax, edx                                ; 0573 _ 01. D0
        mov     edx, eax                                ; 0575 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 0577 _ 8B. 45, 08
        add     edx, eax                                ; 057A _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 057C _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0580 _ 88. 02
?_014:  movsx   eax, byte [ebp-5H]                      ; 0582 _ 0F BE. 45, FB
        and     eax, 40H                                ; 0586 _ 83. E0, 40
        test    eax, eax                                ; 0589 _ 85. C0
        jz      ?_015                                   ; 058B _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 058D _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 0590 _ 8B. 45, FC
        add     eax, edx                                ; 0593 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 0595 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 0599 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 059B _ 8B. 45, 10
        add     eax, edx                                ; 059E _ 01. D0
        lea     edx, [eax+1H]                           ; 05A0 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 05A3 _ 8B. 45, 08
        add     edx, eax                                ; 05A6 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 05A8 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 05AC _ 88. 02
?_015:  movsx   eax, byte [ebp-5H]                      ; 05AE _ 0F BE. 45, FB
        and     eax, 20H                                ; 05B2 _ 83. E0, 20
        test    eax, eax                                ; 05B5 _ 85. C0
        jz      ?_016                                   ; 05B7 _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 05B9 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 05BC _ 8B. 45, FC
        add     eax, edx                                ; 05BF _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 05C1 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 05C5 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 05C7 _ 8B. 45, 10
        add     eax, edx                                ; 05CA _ 01. D0
        lea     edx, [eax+2H]                           ; 05CC _ 8D. 50, 02
        mov     eax, dword [ebp+8H]                     ; 05CF _ 8B. 45, 08
        add     edx, eax                                ; 05D2 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 05D4 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 05D8 _ 88. 02
?_016:  movsx   eax, byte [ebp-5H]                      ; 05DA _ 0F BE. 45, FB
        and     eax, 10H                                ; 05DE _ 83. E0, 10
        test    eax, eax                                ; 05E1 _ 85. C0
        jz      ?_017                                   ; 05E3 _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 05E5 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 05E8 _ 8B. 45, FC
        add     eax, edx                                ; 05EB _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 05ED _ 0F AF. 45, 0C
        mov     edx, eax                                ; 05F1 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 05F3 _ 8B. 45, 10
        add     eax, edx                                ; 05F6 _ 01. D0
        lea     edx, [eax+3H]                           ; 05F8 _ 8D. 50, 03
        mov     eax, dword [ebp+8H]                     ; 05FB _ 8B. 45, 08
        add     edx, eax                                ; 05FE _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0600 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0604 _ 88. 02
?_017:  movsx   eax, byte [ebp-5H]                      ; 0606 _ 0F BE. 45, FB
        and     eax, 08H                                ; 060A _ 83. E0, 08
        test    eax, eax                                ; 060D _ 85. C0
        jz      ?_018                                   ; 060F _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 0611 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 0614 _ 8B. 45, FC
        add     eax, edx                                ; 0617 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 0619 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 061D _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 061F _ 8B. 45, 10
        add     eax, edx                                ; 0622 _ 01. D0
        lea     edx, [eax+4H]                           ; 0624 _ 8D. 50, 04
        mov     eax, dword [ebp+8H]                     ; 0627 _ 8B. 45, 08
        add     edx, eax                                ; 062A _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 062C _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0630 _ 88. 02
?_018:  movsx   eax, byte [ebp-5H]                      ; 0632 _ 0F BE. 45, FB
        and     eax, 04H                                ; 0636 _ 83. E0, 04
        test    eax, eax                                ; 0639 _ 85. C0
        jz      ?_019                                   ; 063B _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 063D _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 0640 _ 8B. 45, FC
        add     eax, edx                                ; 0643 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 0645 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 0649 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 064B _ 8B. 45, 10
        add     eax, edx                                ; 064E _ 01. D0
        lea     edx, [eax+5H]                           ; 0650 _ 8D. 50, 05
        mov     eax, dword [ebp+8H]                     ; 0653 _ 8B. 45, 08
        add     edx, eax                                ; 0656 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0658 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 065C _ 88. 02
?_019:  movsx   eax, byte [ebp-5H]                      ; 065E _ 0F BE. 45, FB
        and     eax, 02H                                ; 0662 _ 83. E0, 02
        test    eax, eax                                ; 0665 _ 85. C0
        jz      ?_020                                   ; 0667 _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 0669 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 066C _ 8B. 45, FC
        add     eax, edx                                ; 066F _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 0671 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 0675 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 0677 _ 8B. 45, 10
        add     eax, edx                                ; 067A _ 01. D0
        lea     edx, [eax+6H]                           ; 067C _ 8D. 50, 06
        mov     eax, dword [ebp+8H]                     ; 067F _ 8B. 45, 08
        add     edx, eax                                ; 0682 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0684 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0688 _ 88. 02
?_020:  movsx   eax, byte [ebp-5H]                      ; 068A _ 0F BE. 45, FB
        and     eax, 01H                                ; 068E _ 83. E0, 01
        test    eax, eax                                ; 0691 _ 85. C0
        jz      ?_021                                   ; 0693 _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 0695 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 0698 _ 8B. 45, FC
        add     eax, edx                                ; 069B _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 069D _ 0F AF. 45, 0C
        mov     edx, eax                                ; 06A1 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 06A3 _ 8B. 45, 10
        add     eax, edx                                ; 06A6 _ 01. D0
        lea     edx, [eax+7H]                           ; 06A8 _ 8D. 50, 07
        mov     eax, dword [ebp+8H]                     ; 06AB _ 8B. 45, 08
        add     edx, eax                                ; 06AE _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 06B0 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 06B4 _ 88. 02
?_021:  add     dword [ebp-4H], 1                       ; 06B6 _ 83. 45, FC, 01
?_022:  cmp     dword [ebp-4H], 15                      ; 06BA _ 83. 7D, FC, 0F
        jle     ?_013                                   ; 06BE _ 0F 8E, FFFFFE8A
        nop                                             ; 06C4 _ 90
        leave                                           ; 06C5 _ C9
        ret                                             ; 06C6 _ C3
; showFont8 End of function

init_mouse_cursor:; Function begin
        push    ebp                                     ; 06C7 _ 55
        mov     ebp, esp                                ; 06C8 _ 89. E5
        sub     esp, 20                                 ; 06CA _ 83. EC, 14
        mov     eax, dword [ebp+0CH]                    ; 06CD _ 8B. 45, 0C
        mov     byte [ebp-14H], al                      ; 06D0 _ 88. 45, EC
        mov     dword [ebp-4H], 0                       ; 06D3 _ C7. 45, FC, 00000000
        jmp     ?_029                                   ; 06DA _ E9, 000000B1

?_023:  mov     dword [ebp-8H], 0                       ; 06DF _ C7. 45, F8, 00000000
        jmp     ?_028                                   ; 06E6 _ E9, 00000097

?_024:  mov     eax, dword [ebp-4H]                     ; 06EB _ 8B. 45, FC
        shl     eax, 4                                  ; 06EE _ C1. E0, 04
        mov     edx, eax                                ; 06F1 _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 06F3 _ 8B. 45, F8
        add     eax, edx                                ; 06F6 _ 01. D0
        add     eax, cursor.1564                        ; 06F8 _ 05, 00000060(d)
        movzx   eax, byte [eax]                         ; 06FD _ 0F B6. 00
        cmp     al, 42                                  ; 0700 _ 3C, 2A
        jnz     ?_025                                   ; 0702 _ 75, 17
        mov     eax, dword [ebp-4H]                     ; 0704 _ 8B. 45, FC
        shl     eax, 4                                  ; 0707 _ C1. E0, 04
        mov     edx, eax                                ; 070A _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 070C _ 8B. 45, F8
        add     eax, edx                                ; 070F _ 01. D0
        mov     edx, eax                                ; 0711 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 0713 _ 8B. 45, 08
        add     eax, edx                                ; 0716 _ 01. D0
        mov     byte [eax], 0                           ; 0718 _ C6. 00, 00
?_025:  mov     eax, dword [ebp-4H]                     ; 071B _ 8B. 45, FC
        shl     eax, 4                                  ; 071E _ C1. E0, 04
        mov     edx, eax                                ; 0721 _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 0723 _ 8B. 45, F8
        add     eax, edx                                ; 0726 _ 01. D0
        add     eax, cursor.1564                        ; 0728 _ 05, 00000060(d)
        movzx   eax, byte [eax]                         ; 072D _ 0F B6. 00
        cmp     al, 79                                  ; 0730 _ 3C, 4F
        jnz     ?_026                                   ; 0732 _ 75, 17
        mov     eax, dword [ebp-4H]                     ; 0734 _ 8B. 45, FC
        shl     eax, 4                                  ; 0737 _ C1. E0, 04
        mov     edx, eax                                ; 073A _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 073C _ 8B. 45, F8
        add     eax, edx                                ; 073F _ 01. D0
        mov     edx, eax                                ; 0741 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 0743 _ 8B. 45, 08
        add     eax, edx                                ; 0746 _ 01. D0
        mov     byte [eax], 7                           ; 0748 _ C6. 00, 07
?_026:  mov     eax, dword [ebp-4H]                     ; 074B _ 8B. 45, FC
        shl     eax, 4                                  ; 074E _ C1. E0, 04
        mov     edx, eax                                ; 0751 _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 0753 _ 8B. 45, F8
        add     eax, edx                                ; 0756 _ 01. D0
        add     eax, cursor.1564                        ; 0758 _ 05, 00000060(d)
        movzx   eax, byte [eax]                         ; 075D _ 0F B6. 00
        cmp     al, 46                                  ; 0760 _ 3C, 2E
        jnz     ?_027                                   ; 0762 _ 75, 1A
        mov     eax, dword [ebp-4H]                     ; 0764 _ 8B. 45, FC
        shl     eax, 4                                  ; 0767 _ C1. E0, 04
        mov     edx, eax                                ; 076A _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 076C _ 8B. 45, F8
        add     eax, edx                                ; 076F _ 01. D0
        mov     edx, eax                                ; 0771 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 0773 _ 8B. 45, 08
        add     edx, eax                                ; 0776 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0778 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 077C _ 88. 02
?_027:  add     dword [ebp-8H], 1                       ; 077E _ 83. 45, F8, 01
?_028:  cmp     dword [ebp-8H], 15                      ; 0782 _ 83. 7D, F8, 0F
        jle     ?_024                                   ; 0786 _ 0F 8E, FFFFFF5F
        add     dword [ebp-4H], 1                       ; 078C _ 83. 45, FC, 01
?_029:  cmp     dword [ebp-4H], 15                      ; 0790 _ 83. 7D, FC, 0F
        jle     ?_023                                   ; 0794 _ 0F 8E, FFFFFF45
        nop                                             ; 079A _ 90
        leave                                           ; 079B _ C9
        ret                                             ; 079C _ C3
; init_mouse_cursor End of function

putblock:; Function begin
        push    ebp                                     ; 079D _ 55
        mov     ebp, esp                                ; 079E _ 89. E5
        push    ebx                                     ; 07A0 _ 53
        sub     esp, 16                                 ; 07A1 _ 83. EC, 10
        mov     dword [ebp-8H], 0                       ; 07A4 _ C7. 45, F8, 00000000
        jmp     ?_033                                   ; 07AB _ EB, 50

?_030:  mov     dword [ebp-0CH], 0                      ; 07AD _ C7. 45, F4, 00000000
        jmp     ?_032                                   ; 07B4 _ EB, 3B

?_031:  mov     eax, dword [ebp-8H]                     ; 07B6 _ 8B. 45, F8
        imul    eax, dword [ebp+24H]                    ; 07B9 _ 0F AF. 45, 24
        mov     edx, eax                                ; 07BD _ 89. C2
        mov     eax, dword [ebp-0CH]                    ; 07BF _ 8B. 45, F4
        add     eax, edx                                ; 07C2 _ 01. D0
        mov     edx, eax                                ; 07C4 _ 89. C2
        mov     eax, dword [ebp+20H]                    ; 07C6 _ 8B. 45, 20
        add     eax, edx                                ; 07C9 _ 01. D0
        mov     ecx, dword [ebp+1CH]                    ; 07CB _ 8B. 4D, 1C
        mov     edx, dword [ebp-8H]                     ; 07CE _ 8B. 55, F8
        add     edx, ecx                                ; 07D1 _ 01. CA
        imul    edx, dword [ebp+0CH]                    ; 07D3 _ 0F AF. 55, 0C
        mov     ebx, dword [ebp+18H]                    ; 07D7 _ 8B. 5D, 18
        mov     ecx, dword [ebp-0CH]                    ; 07DA _ 8B. 4D, F4
        add     ecx, ebx                                ; 07DD _ 01. D9
        add     edx, ecx                                ; 07DF _ 01. CA
        mov     ecx, edx                                ; 07E1 _ 89. D1
        mov     edx, dword [ebp+8H]                     ; 07E3 _ 8B. 55, 08
        add     edx, ecx                                ; 07E6 _ 01. CA
        movzx   eax, byte [eax]                         ; 07E8 _ 0F B6. 00
        mov     byte [edx], al                          ; 07EB _ 88. 02
        add     dword [ebp-0CH], 1                      ; 07ED _ 83. 45, F4, 01
?_032:  mov     eax, dword [ebp-0CH]                    ; 07F1 _ 8B. 45, F4
        cmp     eax, dword [ebp+10H]                    ; 07F4 _ 3B. 45, 10
        jl      ?_031                                   ; 07F7 _ 7C, BD
        add     dword [ebp-8H], 1                       ; 07F9 _ 83. 45, F8, 01
?_033:  mov     eax, dword [ebp-8H]                     ; 07FD _ 8B. 45, F8
        cmp     eax, dword [ebp+14H]                    ; 0800 _ 3B. 45, 14
        jl      ?_030                                   ; 0803 _ 7C, A8
        nop                                             ; 0805 _ 90
        add     esp, 16                                 ; 0806 _ 83. C4, 10
        pop     ebx                                     ; 0809 _ 5B
        pop     ebp                                     ; 080A _ 5D
        ret                                             ; 080B _ C3
; putblock End of function

intHandlerFromC:; Function begin
        push    ebp                                     ; 080C _ 55
        mov     ebp, esp                                ; 080D _ 89. E5
        sub     esp, 24                                 ; 080F _ 83. EC, 18
        mov     eax, dword [bootInfo]                   ; 0812 _ A1, 00000100(d)
        mov     dword [ebp-14H], eax                    ; 0817 _ 89. 45, EC
        movzx   eax, word [?_039]                       ; 081A _ 0F B7. 05, 00000104(d)
        cwde                                            ; 0821 _ 98
        mov     dword [ebp-10H], eax                    ; 0822 _ 89. 45, F0
        movzx   eax, word [?_040]                       ; 0825 _ 0F B7. 05, 00000106(d)
        cwde                                            ; 082C _ 98
        mov     dword [ebp-0CH], eax                    ; 082D _ 89. 45, F4
        sub     esp, 8                                  ; 0830 _ 83. EC, 08
        push    33                                      ; 0833 _ 6A, 21
        push    32                                      ; 0835 _ 6A, 20
        call    io_out8                                 ; 0837 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 083C _ 83. C4, 10
        mov     byte [ebp-15H], 0                       ; 083F _ C6. 45, EB, 00
        sub     esp, 12                                 ; 0843 _ 83. EC, 0C
        push    96                                      ; 0846 _ 6A, 60
        call    io_in8                                  ; 0848 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 084D _ 83. C4, 10
        mov     byte [ebp-15H], al                      ; 0850 _ 88. 45, EB
        mov     eax, dword [?_043]                      ; 0853 _ A1, 00000148(d)
        cmp     eax, 31                                 ; 0858 _ 83. F8, 1F
        jg      ?_034                                   ; 085B _ 7F, 3A
        mov     eax, dword [?_042]                      ; 085D _ A1, 00000144(d)
        movzx   edx, byte [ebp-15H]                     ; 0862 _ 0F B6. 55, EB
        mov     byte [keybuf+eax], dl                   ; 0866 _ 88. 90, 00000120(d)
        mov     eax, dword [?_043]                      ; 086C _ A1, 00000148(d)
        add     eax, 1                                  ; 0871 _ 83. C0, 01
        mov     dword [?_043], eax                      ; 0874 _ A3, 00000148(d)
        mov     eax, dword [?_042]                      ; 0879 _ A1, 00000144(d)
        lea     edx, [eax+1H]                           ; 087E _ 8D. 50, 01
        mov     eax, edx                                ; 0881 _ 89. D0
        sar     eax, 31                                 ; 0883 _ C1. F8, 1F
        shr     eax, 27                                 ; 0886 _ C1. E8, 1B
        add     edx, eax                                ; 0889 _ 01. C2
        and     edx, 1FH                                ; 088B _ 83. E2, 1F
        sub     edx, eax                                ; 088E _ 29. C2
        mov     eax, edx                                ; 0890 _ 89. D0
        mov     dword [?_042], eax                      ; 0892 _ A3, 00000144(d)
?_034:  nop                                             ; 0897 _ 90
        leave                                           ; 0898 _ C9
        ret                                             ; 0899 _ C3
; intHandlerFromC End of function

charToHex:; Function begin
        push    ebp                                     ; 089A _ 55
        mov     ebp, esp                                ; 089B _ 89. E5
        sub     esp, 40                                 ; 089D _ 83. EC, 28
        mov     eax, dword [ebp+8H]                     ; 08A0 _ 8B. 45, 08
        mov     byte [ebp-1CH], al                      ; 08A3 _ 88. 45, E4
        movzx   eax, byte [ebp-1CH]                     ; 08A6 _ 0F B6. 45, E4
        and     eax, 0FH                                ; 08AA _ 83. E0, 0F
        mov     byte [ebp-9H], al                       ; 08AD _ 88. 45, F7
        movsx   eax, byte [ebp-9H]                      ; 08B0 _ 0F BE. 45, F7
        sub     esp, 12                                 ; 08B4 _ 83. EC, 0C
        push    eax                                     ; 08B7 _ 50
        call    charToVal                               ; 08B8 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 08BD _ 83. C4, 10
        mov     byte [?_038], al                        ; 08C0 _ A2, 00000013(d)
        movzx   eax, byte [ebp-1CH]                     ; 08C5 _ 0F B6. 45, E4
        shr     al, 4                                   ; 08C9 _ C0. E8, 04
        mov     byte [ebp-1CH], al                      ; 08CC _ 88. 45, E4
        movzx   eax, byte [ebp-1CH]                     ; 08CF _ 0F B6. 45, E4
        movsx   eax, al                                 ; 08D3 _ 0F BE. C0
        sub     esp, 12                                 ; 08D6 _ 83. EC, 0C
        push    eax                                     ; 08D9 _ 50
        call    charToVal                               ; 08DA _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 08DF _ 83. C4, 10
        mov     byte [?_037], al                        ; 08E2 _ A2, 00000012(d)
        mov     eax, keyVal                             ; 08E7 _ B8, 00000010(d)
        leave                                           ; 08EC _ C9
        ret                                             ; 08ED _ C3
; charToHex End of function

charToVal:; Function begin
        push    ebp                                     ; 08EE _ 55
        mov     ebp, esp                                ; 08EF _ 89. E5
        sub     esp, 4                                  ; 08F1 _ 83. EC, 04
        mov     eax, dword [ebp+8H]                     ; 08F4 _ 8B. 45, 08
        mov     byte [ebp-4H], al                       ; 08F7 _ 88. 45, FC
        cmp     byte [ebp-4H], 9                        ; 08FA _ 80. 7D, FC, 09
        jle     ?_035                                   ; 08FE _ 7E, 09
        movzx   eax, byte [ebp-4H]                      ; 0900 _ 0F B6. 45, FC
        add     eax, 55                                 ; 0904 _ 83. C0, 37
        jmp     ?_036                                   ; 0907 _ EB, 07

?_035:  movzx   eax, byte [ebp-4H]                      ; 0909 _ 0F B6. 45, FC
        add     eax, 48                                 ; 090D _ 83. C0, 30
?_036:  leave                                           ; 0910 _ C9
        ret                                             ; 0911 _ C3
; charToVal End of function



fontA:                                                  ; oword
        db 00H, 18H, 18H, 18H, 18H, 24H, 24H, 24H       ; 0000 _ .....$$$
        db 24H, 7EH, 42H, 42H, 42H, 0E7H, 00H, 00H      ; 0008 _ $~BBB...

keyVal:                                                 ; byte
        db 30H, 78H                                     ; 0010 _ 0x

?_037:  db 00H                                          ; 0012 _ .

?_038:  db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0013 _ ........
        db 00H, 00H, 00H, 00H, 00H                      ; 001B _ .....

table_rgb.1519:                                         ; byte
        db 00H, 00H, 00H, 0FFH, 00H, 00H, 00H, 0FFH     ; 0020 _ ........
        db 00H, 0FFH, 0FFH, 00H, 00H, 00H, 0FFH, 0FFH   ; 0028 _ ........
        db 00H, 0FFH, 00H, 0FFH, 0FFH, 0FFH, 0FFH, 0FFH ; 0030 _ ........
        db 0C6H, 0C6H, 0C6H, 84H, 00H, 00H, 00H, 84H    ; 0038 _ ........
        db 00H, 84H, 84H, 00H, 00H, 00H, 84H, 84H       ; 0040 _ ........
        db 00H, 84H, 00H, 84H, 84H, 84H, 84H, 84H       ; 0048 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0050 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0058 _ ........

cursor.1564:                                            ; byte
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



mcursor:                                                ; byte
        resb    256                                     ; 0000

bootInfo:                                               ; qword
        resb    4                                       ; 0100

?_039:  resw    1                                       ; 0104

?_040:  resw    13                                      ; 0106

keybuf:                                                 ; byte
        resb    32                                      ; 0120

?_041:  resd    1                                       ; 0140

?_042:  resd    1                                       ; 0144

?_043:  resd    1                                       ; 0148

line.1500:                                              ; dword
        resd    1                                       ; 014C

pos.1499: resd  1                                       ; 0150


