; Disassembly of file: write_vga_desktop.o
; Fri Feb  5 23:09:48 2021
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
        movzx   eax, word [?_032]                       ; 001F _ 0F B7. 05, 00000104(d)
        cwde                                            ; 0026 _ 98
        mov     dword [ebp-10H], eax                    ; 0027 _ 89. 45, F0
        movzx   eax, word [?_033]                       ; 002A _ 0F B7. 05, 00000106(d)
        cwde                                            ; 0031 _ 98
        mov     dword [ebp-0CH], eax                    ; 0032 _ 89. 45, F4
        call    init_palette                            ; 0035 _ E8, FFFFFFFC(rel)
        mov     eax, dword [ebp-0CH]                    ; 003A _ 8B. 45, F4
        lea     edx, [eax-1DH]                          ; 003D _ 8D. 50, E3
        mov     eax, dword [ebp-10H]                    ; 0040 _ 8B. 45, F0
        sub     eax, 1                                  ; 0043 _ 83. E8, 01
        sub     esp, 4                                  ; 0046 _ 83. EC, 04
        push    edx                                     ; 0049 _ 52
        push    eax                                     ; 004A _ 50
        push    0                                       ; 004B _ 6A, 00
        push    0                                       ; 004D _ 6A, 00
        push    14                                      ; 004F _ 6A, 0E
        push    dword [ebp-10H]                         ; 0051 _ FF. 75, F0
        push    dword [ebp-14H]                         ; 0054 _ FF. 75, EC
        call    boxfill8                                ; 0057 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 005C _ 83. C4, 20
        mov     eax, dword [ebp-0CH]                    ; 005F _ 8B. 45, F4
        lea     ecx, [eax-1CH]                          ; 0062 _ 8D. 48, E4
        mov     eax, dword [ebp-10H]                    ; 0065 _ 8B. 45, F0
        lea     edx, [eax-1H]                           ; 0068 _ 8D. 50, FF
        mov     eax, dword [ebp-0CH]                    ; 006B _ 8B. 45, F4
        sub     eax, 28                                 ; 006E _ 83. E8, 1C
        sub     esp, 4                                  ; 0071 _ 83. EC, 04
        push    ecx                                     ; 0074 _ 51
        push    edx                                     ; 0075 _ 52
        push    eax                                     ; 0076 _ 50
        push    0                                       ; 0077 _ 6A, 00
        push    8                                       ; 0079 _ 6A, 08
        push    dword [ebp-10H]                         ; 007B _ FF. 75, F0
        push    dword [ebp-14H]                         ; 007E _ FF. 75, EC
        call    boxfill8                                ; 0081 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0086 _ 83. C4, 20
        mov     eax, dword [ebp-0CH]                    ; 0089 _ 8B. 45, F4
        lea     ecx, [eax-1BH]                          ; 008C _ 8D. 48, E5
        mov     eax, dword [ebp-10H]                    ; 008F _ 8B. 45, F0
        lea     edx, [eax-1H]                           ; 0092 _ 8D. 50, FF
        mov     eax, dword [ebp-0CH]                    ; 0095 _ 8B. 45, F4
        sub     eax, 27                                 ; 0098 _ 83. E8, 1B
        sub     esp, 4                                  ; 009B _ 83. EC, 04
        push    ecx                                     ; 009E _ 51
        push    edx                                     ; 009F _ 52
        push    eax                                     ; 00A0 _ 50
        push    0                                       ; 00A1 _ 6A, 00
        push    7                                       ; 00A3 _ 6A, 07
        push    dword [ebp-10H]                         ; 00A5 _ FF. 75, F0
        push    dword [ebp-14H]                         ; 00A8 _ FF. 75, EC
        call    boxfill8                                ; 00AB _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 00B0 _ 83. C4, 20
        mov     eax, dword [ebp-0CH]                    ; 00B3 _ 8B. 45, F4
        lea     ecx, [eax-1H]                           ; 00B6 _ 8D. 48, FF
        mov     eax, dword [ebp-10H]                    ; 00B9 _ 8B. 45, F0
        lea     edx, [eax-1H]                           ; 00BC _ 8D. 50, FF
        mov     eax, dword [ebp-0CH]                    ; 00BF _ 8B. 45, F4
        sub     eax, 26                                 ; 00C2 _ 83. E8, 1A
        sub     esp, 4                                  ; 00C5 _ 83. EC, 04
        push    ecx                                     ; 00C8 _ 51
        push    edx                                     ; 00C9 _ 52
        push    eax                                     ; 00CA _ 50
        push    0                                       ; 00CB _ 6A, 00
        push    8                                       ; 00CD _ 6A, 08
        push    dword [ebp-10H]                         ; 00CF _ FF. 75, F0
        push    dword [ebp-14H]                         ; 00D2 _ FF. 75, EC
        call    boxfill8                                ; 00D5 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 00DA _ 83. C4, 20
        mov     eax, dword [ebp-0CH]                    ; 00DD _ 8B. 45, F4
        lea     edx, [eax-18H]                          ; 00E0 _ 8D. 50, E8
        mov     eax, dword [ebp-0CH]                    ; 00E3 _ 8B. 45, F4
        sub     eax, 24                                 ; 00E6 _ 83. E8, 18
        sub     esp, 4                                  ; 00E9 _ 83. EC, 04
        push    edx                                     ; 00EC _ 52
        push    59                                      ; 00ED _ 6A, 3B
        push    eax                                     ; 00EF _ 50
        push    3                                       ; 00F0 _ 6A, 03
        push    7                                       ; 00F2 _ 6A, 07
        push    dword [ebp-10H]                         ; 00F4 _ FF. 75, F0
        push    dword [ebp-14H]                         ; 00F7 _ FF. 75, EC
        call    boxfill8                                ; 00FA _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 00FF _ 83. C4, 20
        mov     eax, dword [ebp-0CH]                    ; 0102 _ 8B. 45, F4
        lea     edx, [eax-4H]                           ; 0105 _ 8D. 50, FC
        mov     eax, dword [ebp-0CH]                    ; 0108 _ 8B. 45, F4
        sub     eax, 24                                 ; 010B _ 83. E8, 18
        sub     esp, 4                                  ; 010E _ 83. EC, 04
        push    edx                                     ; 0111 _ 52
        push    2                                       ; 0112 _ 6A, 02
        push    eax                                     ; 0114 _ 50
        push    2                                       ; 0115 _ 6A, 02
        push    7                                       ; 0117 _ 6A, 07
        push    dword [ebp-10H]                         ; 0119 _ FF. 75, F0
        push    dword [ebp-14H]                         ; 011C _ FF. 75, EC
        call    boxfill8                                ; 011F _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0124 _ 83. C4, 20
        mov     eax, dword [ebp-0CH]                    ; 0127 _ 8B. 45, F4
        lea     edx, [eax-4H]                           ; 012A _ 8D. 50, FC
        mov     eax, dword [ebp-0CH]                    ; 012D _ 8B. 45, F4
        sub     eax, 4                                  ; 0130 _ 83. E8, 04
        sub     esp, 4                                  ; 0133 _ 83. EC, 04
        push    edx                                     ; 0136 _ 52
        push    59                                      ; 0137 _ 6A, 3B
        push    eax                                     ; 0139 _ 50
        push    3                                       ; 013A _ 6A, 03
        push    15                                      ; 013C _ 6A, 0F
        push    dword [ebp-10H]                         ; 013E _ FF. 75, F0
        push    dword [ebp-14H]                         ; 0141 _ FF. 75, EC
        call    boxfill8                                ; 0144 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0149 _ 83. C4, 20
        mov     eax, dword [ebp-0CH]                    ; 014C _ 8B. 45, F4
        lea     edx, [eax-5H]                           ; 014F _ 8D. 50, FB
        mov     eax, dword [ebp-0CH]                    ; 0152 _ 8B. 45, F4
        sub     eax, 23                                 ; 0155 _ 83. E8, 17
        sub     esp, 4                                  ; 0158 _ 83. EC, 04
        push    edx                                     ; 015B _ 52
        push    59                                      ; 015C _ 6A, 3B
        push    eax                                     ; 015E _ 50
        push    59                                      ; 015F _ 6A, 3B
        push    15                                      ; 0161 _ 6A, 0F
        push    dword [ebp-10H]                         ; 0163 _ FF. 75, F0
        push    dword [ebp-14H]                         ; 0166 _ FF. 75, EC
        call    boxfill8                                ; 0169 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 016E _ 83. C4, 20
        mov     eax, dword [ebp-0CH]                    ; 0171 _ 8B. 45, F4
        lea     edx, [eax-3H]                           ; 0174 _ 8D. 50, FD
        mov     eax, dword [ebp-0CH]                    ; 0177 _ 8B. 45, F4
        sub     eax, 3                                  ; 017A _ 83. E8, 03
        sub     esp, 4                                  ; 017D _ 83. EC, 04
        push    edx                                     ; 0180 _ 52
        push    59                                      ; 0181 _ 6A, 3B
        push    eax                                     ; 0183 _ 50
        push    2                                       ; 0184 _ 6A, 02
        push    0                                       ; 0186 _ 6A, 00
        push    dword [ebp-10H]                         ; 0188 _ FF. 75, F0
        push    dword [ebp-14H]                         ; 018B _ FF. 75, EC
        call    boxfill8                                ; 018E _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0193 _ 83. C4, 20
        mov     eax, dword [ebp-0CH]                    ; 0196 _ 8B. 45, F4
        lea     edx, [eax-3H]                           ; 0199 _ 8D. 50, FD
        mov     eax, dword [ebp-0CH]                    ; 019C _ 8B. 45, F4
        sub     eax, 24                                 ; 019F _ 83. E8, 18
        sub     esp, 4                                  ; 01A2 _ 83. EC, 04
        push    edx                                     ; 01A5 _ 52
        push    60                                      ; 01A6 _ 6A, 3C
        push    eax                                     ; 01A8 _ 50
        push    60                                      ; 01A9 _ 6A, 3C
        push    0                                       ; 01AB _ 6A, 00
        push    dword [ebp-10H]                         ; 01AD _ FF. 75, F0
        push    dword [ebp-14H]                         ; 01B0 _ FF. 75, EC
        call    boxfill8                                ; 01B3 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 01B8 _ 83. C4, 20
        mov     eax, dword [ebp-0CH]                    ; 01BB _ 8B. 45, F4
        lea     ebx, [eax-18H]                          ; 01BE _ 8D. 58, E8
        mov     eax, dword [ebp-10H]                    ; 01C1 _ 8B. 45, F0
        lea     ecx, [eax-4H]                           ; 01C4 _ 8D. 48, FC
        mov     eax, dword [ebp-0CH]                    ; 01C7 _ 8B. 45, F4
        lea     edx, [eax-18H]                          ; 01CA _ 8D. 50, E8
        mov     eax, dword [ebp-10H]                    ; 01CD _ 8B. 45, F0
        sub     eax, 47                                 ; 01D0 _ 83. E8, 2F
        sub     esp, 4                                  ; 01D3 _ 83. EC, 04
        push    ebx                                     ; 01D6 _ 53
        push    ecx                                     ; 01D7 _ 51
        push    edx                                     ; 01D8 _ 52
        push    eax                                     ; 01D9 _ 50
        push    15                                      ; 01DA _ 6A, 0F
        push    dword [ebp-10H]                         ; 01DC _ FF. 75, F0
        push    dword [ebp-14H]                         ; 01DF _ FF. 75, EC
        call    boxfill8                                ; 01E2 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 01E7 _ 83. C4, 20
        mov     eax, dword [ebp-0CH]                    ; 01EA _ 8B. 45, F4
        lea     ebx, [eax-4H]                           ; 01ED _ 8D. 58, FC
        mov     eax, dword [ebp-10H]                    ; 01F0 _ 8B. 45, F0
        lea     ecx, [eax-2FH]                          ; 01F3 _ 8D. 48, D1
        mov     eax, dword [ebp-0CH]                    ; 01F6 _ 8B. 45, F4
        lea     edx, [eax-17H]                          ; 01F9 _ 8D. 50, E9
        mov     eax, dword [ebp-10H]                    ; 01FC _ 8B. 45, F0
        sub     eax, 47                                 ; 01FF _ 83. E8, 2F
        sub     esp, 4                                  ; 0202 _ 83. EC, 04
        push    ebx                                     ; 0205 _ 53
        push    ecx                                     ; 0206 _ 51
        push    edx                                     ; 0207 _ 52
        push    eax                                     ; 0208 _ 50
        push    15                                      ; 0209 _ 6A, 0F
        push    dword [ebp-10H]                         ; 020B _ FF. 75, F0
        push    dword [ebp-14H]                         ; 020E _ FF. 75, EC
        call    boxfill8                                ; 0211 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0216 _ 83. C4, 20
        mov     eax, dword [ebp-0CH]                    ; 0219 _ 8B. 45, F4
        lea     ebx, [eax-3H]                           ; 021C _ 8D. 58, FD
        mov     eax, dword [ebp-10H]                    ; 021F _ 8B. 45, F0
        lea     ecx, [eax-4H]                           ; 0222 _ 8D. 48, FC
        mov     eax, dword [ebp-0CH]                    ; 0225 _ 8B. 45, F4
        lea     edx, [eax-3H]                           ; 0228 _ 8D. 50, FD
        mov     eax, dword [ebp-10H]                    ; 022B _ 8B. 45, F0
        sub     eax, 47                                 ; 022E _ 83. E8, 2F
        sub     esp, 4                                  ; 0231 _ 83. EC, 04
        push    ebx                                     ; 0234 _ 53
        push    ecx                                     ; 0235 _ 51
        push    edx                                     ; 0236 _ 52
        push    eax                                     ; 0237 _ 50
        push    7                                       ; 0238 _ 6A, 07
        push    dword [ebp-10H]                         ; 023A _ FF. 75, F0
        push    dword [ebp-14H]                         ; 023D _ FF. 75, EC
        call    boxfill8                                ; 0240 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0245 _ 83. C4, 20
        mov     eax, dword [ebp-0CH]                    ; 0248 _ 8B. 45, F4
        lea     ebx, [eax-3H]                           ; 024B _ 8D. 58, FD
        mov     eax, dword [ebp-10H]                    ; 024E _ 8B. 45, F0
        lea     ecx, [eax-3H]                           ; 0251 _ 8D. 48, FD
        mov     eax, dword [ebp-0CH]                    ; 0254 _ 8B. 45, F4
        lea     edx, [eax-18H]                          ; 0257 _ 8D. 50, E8
        mov     eax, dword [ebp-10H]                    ; 025A _ 8B. 45, F0
        sub     eax, 3                                  ; 025D _ 83. E8, 03
        sub     esp, 4                                  ; 0260 _ 83. EC, 04
        push    ebx                                     ; 0263 _ 53
        push    ecx                                     ; 0264 _ 51
        push    edx                                     ; 0265 _ 52
        push    eax                                     ; 0266 _ 50
        push    7                                       ; 0267 _ 6A, 07
        push    dword [ebp-10H]                         ; 0269 _ FF. 75, F0
        push    dword [ebp-14H]                         ; 026C _ FF. 75, EC
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
        push    dword [ebp-10H]                         ; 0298 _ FF. 75, F0
        push    dword [ebp-14H]                         ; 029B _ FF. 75, EC
        call    putblock                                ; 029E _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 02A3 _ 83. C4, 20
        call    io_sti                                  ; 02A6 _ E8, FFFFFFFC(rel)
?_001:  call    io_hlt                                  ; 02AB _ E8, FFFFFFFC(rel)
        jmp     ?_001                                   ; 02B0 _ EB, F9
; CMain End of function

initBootInfo:; Function begin
        push    ebp                                     ; 02B2 _ 55
        mov     ebp, esp                                ; 02B3 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 02B5 _ 8B. 45, 08
        mov     dword [eax], 655360                     ; 02B8 _ C7. 00, 000A0000
        mov     eax, dword [ebp+8H]                     ; 02BE _ 8B. 45, 08
; Note: Length-changing prefix causes delay on Intel processors
        mov     word [eax+4H], 320                      ; 02C1 _ 66: C7. 40, 04, 0140
        mov     eax, dword [ebp+8H]                     ; 02C7 _ 8B. 45, 08
; Note: Length-changing prefix causes delay on Intel processors
        mov     word [eax+6H], 200                      ; 02CA _ 66: C7. 40, 06, 00C8
        nop                                             ; 02D0 _ 90
        pop     ebp                                     ; 02D1 _ 5D
        ret                                             ; 02D2 _ C3
; initBootInfo End of function

showString:; Function begin
        push    ebp                                     ; 02D3 _ 55
        mov     ebp, esp                                ; 02D4 _ 89. E5
        sub     esp, 24                                 ; 02D6 _ 83. EC, 18
        mov     eax, dword [ebp+18H]                    ; 02D9 _ 8B. 45, 18
        mov     byte [ebp-0CH], al                      ; 02DC _ 88. 45, F4
        jmp     ?_003                                   ; 02DF _ EB, 37

?_002:  mov     eax, dword [ebp+1CH]                    ; 02E1 _ 8B. 45, 1C
        movzx   eax, byte [eax]                         ; 02E4 _ 0F B6. 00
        movzx   eax, al                                 ; 02E7 _ 0F B6. C0
        shl     eax, 4                                  ; 02EA _ C1. E0, 04
        lea     edx, [systemFont+eax]                   ; 02ED _ 8D. 90, 00000000(d)
        movsx   eax, byte [ebp-0CH]                     ; 02F3 _ 0F BE. 45, F4
        sub     esp, 8                                  ; 02F7 _ 83. EC, 08
        push    edx                                     ; 02FA _ 52
        push    eax                                     ; 02FB _ 50
        push    dword [ebp+14H]                         ; 02FC _ FF. 75, 14
        push    dword [ebp+10H]                         ; 02FF _ FF. 75, 10
        push    dword [ebp+0CH]                         ; 0302 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 0305 _ FF. 75, 08
        call    showFont8                               ; 0308 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 030D _ 83. C4, 20
        add     dword [ebp+10H], 8                      ; 0310 _ 83. 45, 10, 08
        add     dword [ebp+1CH], 1                      ; 0314 _ 83. 45, 1C, 01
?_003:  mov     eax, dword [ebp+1CH]                    ; 0318 _ 8B. 45, 1C
        movzx   eax, byte [eax]                         ; 031B _ 0F B6. 00
        test    al, al                                  ; 031E _ 84. C0
        jnz     ?_002                                   ; 0320 _ 75, BF
        nop                                             ; 0322 _ 90
        leave                                           ; 0323 _ C9
        ret                                             ; 0324 _ C3
; showString End of function

init_palette:; Function begin
        push    ebp                                     ; 0325 _ 55
        mov     ebp, esp                                ; 0326 _ 89. E5
        sub     esp, 8                                  ; 0328 _ 83. EC, 08
        sub     esp, 4                                  ; 032B _ 83. EC, 04
        push    table_rgb.1500                          ; 032E _ 68, 00000020(d)
        push    15                                      ; 0333 _ 6A, 0F
        push    0                                       ; 0335 _ 6A, 00
        call    set_palette                             ; 0337 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 033C _ 83. C4, 10
        nop                                             ; 033F _ 90
        leave                                           ; 0340 _ C9
        ret                                             ; 0341 _ C3
; init_palette End of function

set_palette:; Function begin
        push    ebp                                     ; 0342 _ 55
        mov     ebp, esp                                ; 0343 _ 89. E5
        sub     esp, 24                                 ; 0345 _ 83. EC, 18
        call    io_load_eflags                          ; 0348 _ E8, FFFFFFFC(rel)
        mov     dword [ebp-0CH], eax                    ; 034D _ 89. 45, F4
        call    io_cli                                  ; 0350 _ E8, FFFFFFFC(rel)
        sub     esp, 8                                  ; 0355 _ 83. EC, 08
        push    dword [ebp+8H]                          ; 0358 _ FF. 75, 08
        push    968                                     ; 035B _ 68, 000003C8
        call    io_out8                                 ; 0360 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0365 _ 83. C4, 10
        mov     eax, dword [ebp+8H]                     ; 0368 _ 8B. 45, 08
        mov     dword [ebp-10H], eax                    ; 036B _ 89. 45, F0
        jmp     ?_005                                   ; 036E _ EB, 65

?_004:  mov     eax, dword [ebp+10H]                    ; 0370 _ 8B. 45, 10
        movzx   eax, byte [eax]                         ; 0373 _ 0F B6. 00
        shr     al, 2                                   ; 0376 _ C0. E8, 02
        movzx   eax, al                                 ; 0379 _ 0F B6. C0
        sub     esp, 8                                  ; 037C _ 83. EC, 08
        push    eax                                     ; 037F _ 50
        push    969                                     ; 0380 _ 68, 000003C9
        call    io_out8                                 ; 0385 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 038A _ 83. C4, 10
        mov     eax, dword [ebp+10H]                    ; 038D _ 8B. 45, 10
        add     eax, 1                                  ; 0390 _ 83. C0, 01
        movzx   eax, byte [eax]                         ; 0393 _ 0F B6. 00
        shr     al, 2                                   ; 0396 _ C0. E8, 02
        movzx   eax, al                                 ; 0399 _ 0F B6. C0
        sub     esp, 8                                  ; 039C _ 83. EC, 08
        push    eax                                     ; 039F _ 50
        push    969                                     ; 03A0 _ 68, 000003C9
        call    io_out8                                 ; 03A5 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 03AA _ 83. C4, 10
        mov     eax, dword [ebp+10H]                    ; 03AD _ 8B. 45, 10
        add     eax, 2                                  ; 03B0 _ 83. C0, 02
        movzx   eax, byte [eax]                         ; 03B3 _ 0F B6. 00
        shr     al, 2                                   ; 03B6 _ C0. E8, 02
        movzx   eax, al                                 ; 03B9 _ 0F B6. C0
        sub     esp, 8                                  ; 03BC _ 83. EC, 08
        push    eax                                     ; 03BF _ 50
        push    969                                     ; 03C0 _ 68, 000003C9
        call    io_out8                                 ; 03C5 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 03CA _ 83. C4, 10
        add     dword [ebp+10H], 3                      ; 03CD _ 83. 45, 10, 03
        add     dword [ebp-10H], 1                      ; 03D1 _ 83. 45, F0, 01
?_005:  mov     eax, dword [ebp-10H]                    ; 03D5 _ 8B. 45, F0
        cmp     eax, dword [ebp+0CH]                    ; 03D8 _ 3B. 45, 0C
        jle     ?_004                                   ; 03DB _ 7E, 93
        sub     esp, 12                                 ; 03DD _ 83. EC, 0C
        push    dword [ebp-0CH]                         ; 03E0 _ FF. 75, F4
        call    io_store_eflags                         ; 03E3 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 03E8 _ 83. C4, 10
        nop                                             ; 03EB _ 90
        leave                                           ; 03EC _ C9
        ret                                             ; 03ED _ C3
; set_palette End of function

boxfill8:; Function begin
        push    ebp                                     ; 03EE _ 55
        mov     ebp, esp                                ; 03EF _ 89. E5
        sub     esp, 20                                 ; 03F1 _ 83. EC, 14
        mov     eax, dword [ebp+10H]                    ; 03F4 _ 8B. 45, 10
        mov     byte [ebp-14H], al                      ; 03F7 _ 88. 45, EC
        mov     eax, dword [ebp+18H]                    ; 03FA _ 8B. 45, 18
        mov     dword [ebp-4H], eax                     ; 03FD _ 89. 45, FC
        jmp     ?_009                                   ; 0400 _ EB, 33

?_006:  mov     eax, dword [ebp+14H]                    ; 0402 _ 8B. 45, 14
        mov     dword [ebp-8H], eax                     ; 0405 _ 89. 45, F8
        jmp     ?_008                                   ; 0408 _ EB, 1F

?_007:  mov     eax, dword [ebp-4H]                     ; 040A _ 8B. 45, FC
        imul    eax, dword [ebp+0CH]                    ; 040D _ 0F AF. 45, 0C
        mov     edx, eax                                ; 0411 _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 0413 _ 8B. 45, F8
        add     eax, edx                                ; 0416 _ 01. D0
        mov     edx, eax                                ; 0418 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 041A _ 8B. 45, 08
        add     edx, eax                                ; 041D _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 041F _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0423 _ 88. 02
        add     dword [ebp-8H], 1                       ; 0425 _ 83. 45, F8, 01
?_008:  mov     eax, dword [ebp-8H]                     ; 0429 _ 8B. 45, F8
        cmp     eax, dword [ebp+1CH]                    ; 042C _ 3B. 45, 1C
        jle     ?_007                                   ; 042F _ 7E, D9
        add     dword [ebp-4H], 1                       ; 0431 _ 83. 45, FC, 01
?_009:  mov     eax, dword [ebp-4H]                     ; 0435 _ 8B. 45, FC
        cmp     eax, dword [ebp+20H]                    ; 0438 _ 3B. 45, 20
        jle     ?_006                                   ; 043B _ 7E, C5
        nop                                             ; 043D _ 90
        leave                                           ; 043E _ C9
        ret                                             ; 043F _ C3
; boxfill8 End of function

showFont8:; Function begin
        push    ebp                                     ; 0440 _ 55
        mov     ebp, esp                                ; 0441 _ 89. E5
        sub     esp, 20                                 ; 0443 _ 83. EC, 14
        mov     eax, dword [ebp+18H]                    ; 0446 _ 8B. 45, 18
        mov     byte [ebp-14H], al                      ; 0449 _ 88. 45, EC
        mov     dword [ebp-4H], 0                       ; 044C _ C7. 45, FC, 00000000
        jmp     ?_019                                   ; 0453 _ E9, 0000016C

?_010:  mov     edx, dword [ebp-4H]                     ; 0458 _ 8B. 55, FC
        mov     eax, dword [ebp+1CH]                    ; 045B _ 8B. 45, 1C
        add     eax, edx                                ; 045E _ 01. D0
        movzx   eax, byte [eax]                         ; 0460 _ 0F B6. 00
        mov     byte [ebp-5H], al                       ; 0463 _ 88. 45, FB
        cmp     byte [ebp-5H], 0                        ; 0466 _ 80. 7D, FB, 00
        jns     ?_011                                   ; 046A _ 79, 20
        mov     edx, dword [ebp+14H]                    ; 046C _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 046F _ 8B. 45, FC
        add     eax, edx                                ; 0472 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 0474 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 0478 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 047A _ 8B. 45, 10
        add     eax, edx                                ; 047D _ 01. D0
        mov     edx, eax                                ; 047F _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 0481 _ 8B. 45, 08
        add     edx, eax                                ; 0484 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0486 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 048A _ 88. 02
?_011:  movsx   eax, byte [ebp-5H]                      ; 048C _ 0F BE. 45, FB
        and     eax, 40H                                ; 0490 _ 83. E0, 40
        test    eax, eax                                ; 0493 _ 85. C0
        jz      ?_012                                   ; 0495 _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 0497 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 049A _ 8B. 45, FC
        add     eax, edx                                ; 049D _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 049F _ 0F AF. 45, 0C
        mov     edx, eax                                ; 04A3 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 04A5 _ 8B. 45, 10
        add     eax, edx                                ; 04A8 _ 01. D0
        lea     edx, [eax+1H]                           ; 04AA _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 04AD _ 8B. 45, 08
        add     edx, eax                                ; 04B0 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 04B2 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 04B6 _ 88. 02
?_012:  movsx   eax, byte [ebp-5H]                      ; 04B8 _ 0F BE. 45, FB
        and     eax, 20H                                ; 04BC _ 83. E0, 20
        test    eax, eax                                ; 04BF _ 85. C0
        jz      ?_013                                   ; 04C1 _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 04C3 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 04C6 _ 8B. 45, FC
        add     eax, edx                                ; 04C9 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 04CB _ 0F AF. 45, 0C
        mov     edx, eax                                ; 04CF _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 04D1 _ 8B. 45, 10
        add     eax, edx                                ; 04D4 _ 01. D0
        lea     edx, [eax+2H]                           ; 04D6 _ 8D. 50, 02
        mov     eax, dword [ebp+8H]                     ; 04D9 _ 8B. 45, 08
        add     edx, eax                                ; 04DC _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 04DE _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 04E2 _ 88. 02
?_013:  movsx   eax, byte [ebp-5H]                      ; 04E4 _ 0F BE. 45, FB
        and     eax, 10H                                ; 04E8 _ 83. E0, 10
        test    eax, eax                                ; 04EB _ 85. C0
        jz      ?_014                                   ; 04ED _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 04EF _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 04F2 _ 8B. 45, FC
        add     eax, edx                                ; 04F5 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 04F7 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 04FB _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 04FD _ 8B. 45, 10
        add     eax, edx                                ; 0500 _ 01. D0
        lea     edx, [eax+3H]                           ; 0502 _ 8D. 50, 03
        mov     eax, dword [ebp+8H]                     ; 0505 _ 8B. 45, 08
        add     edx, eax                                ; 0508 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 050A _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 050E _ 88. 02
?_014:  movsx   eax, byte [ebp-5H]                      ; 0510 _ 0F BE. 45, FB
        and     eax, 08H                                ; 0514 _ 83. E0, 08
        test    eax, eax                                ; 0517 _ 85. C0
        jz      ?_015                                   ; 0519 _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 051B _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 051E _ 8B. 45, FC
        add     eax, edx                                ; 0521 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 0523 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 0527 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 0529 _ 8B. 45, 10
        add     eax, edx                                ; 052C _ 01. D0
        lea     edx, [eax+4H]                           ; 052E _ 8D. 50, 04
        mov     eax, dword [ebp+8H]                     ; 0531 _ 8B. 45, 08
        add     edx, eax                                ; 0534 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0536 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 053A _ 88. 02
?_015:  movsx   eax, byte [ebp-5H]                      ; 053C _ 0F BE. 45, FB
        and     eax, 04H                                ; 0540 _ 83. E0, 04
        test    eax, eax                                ; 0543 _ 85. C0
        jz      ?_016                                   ; 0545 _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 0547 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 054A _ 8B. 45, FC
        add     eax, edx                                ; 054D _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 054F _ 0F AF. 45, 0C
        mov     edx, eax                                ; 0553 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 0555 _ 8B. 45, 10
        add     eax, edx                                ; 0558 _ 01. D0
        lea     edx, [eax+5H]                           ; 055A _ 8D. 50, 05
        mov     eax, dword [ebp+8H]                     ; 055D _ 8B. 45, 08
        add     edx, eax                                ; 0560 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0562 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0566 _ 88. 02
?_016:  movsx   eax, byte [ebp-5H]                      ; 0568 _ 0F BE. 45, FB
        and     eax, 02H                                ; 056C _ 83. E0, 02
        test    eax, eax                                ; 056F _ 85. C0
        jz      ?_017                                   ; 0571 _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 0573 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 0576 _ 8B. 45, FC
        add     eax, edx                                ; 0579 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 057B _ 0F AF. 45, 0C
        mov     edx, eax                                ; 057F _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 0581 _ 8B. 45, 10
        add     eax, edx                                ; 0584 _ 01. D0
        lea     edx, [eax+6H]                           ; 0586 _ 8D. 50, 06
        mov     eax, dword [ebp+8H]                     ; 0589 _ 8B. 45, 08
        add     edx, eax                                ; 058C _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 058E _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0592 _ 88. 02
?_017:  movsx   eax, byte [ebp-5H]                      ; 0594 _ 0F BE. 45, FB
        and     eax, 01H                                ; 0598 _ 83. E0, 01
        test    eax, eax                                ; 059B _ 85. C0
        jz      ?_018                                   ; 059D _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 059F _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 05A2 _ 8B. 45, FC
        add     eax, edx                                ; 05A5 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 05A7 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 05AB _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 05AD _ 8B. 45, 10
        add     eax, edx                                ; 05B0 _ 01. D0
        lea     edx, [eax+7H]                           ; 05B2 _ 8D. 50, 07
        mov     eax, dword [ebp+8H]                     ; 05B5 _ 8B. 45, 08
        add     edx, eax                                ; 05B8 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 05BA _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 05BE _ 88. 02
?_018:  add     dword [ebp-4H], 1                       ; 05C0 _ 83. 45, FC, 01
?_019:  cmp     dword [ebp-4H], 15                      ; 05C4 _ 83. 7D, FC, 0F
        jle     ?_010                                   ; 05C8 _ 0F 8E, FFFFFE8A
        nop                                             ; 05CE _ 90
        leave                                           ; 05CF _ C9
        ret                                             ; 05D0 _ C3
; showFont8 End of function

init_mouse_cursor:; Function begin
        push    ebp                                     ; 05D1 _ 55
        mov     ebp, esp                                ; 05D2 _ 89. E5
        sub     esp, 20                                 ; 05D4 _ 83. EC, 14
        mov     eax, dword [ebp+0CH]                    ; 05D7 _ 8B. 45, 0C
        mov     byte [ebp-14H], al                      ; 05DA _ 88. 45, EC
        mov     dword [ebp-4H], 0                       ; 05DD _ C7. 45, FC, 00000000
        jmp     ?_026                                   ; 05E4 _ E9, 000000B1

?_020:  mov     dword [ebp-8H], 0                       ; 05E9 _ C7. 45, F8, 00000000
        jmp     ?_025                                   ; 05F0 _ E9, 00000097

?_021:  mov     eax, dword [ebp-4H]                     ; 05F5 _ 8B. 45, FC
        shl     eax, 4                                  ; 05F8 _ C1. E0, 04
        mov     edx, eax                                ; 05FB _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 05FD _ 8B. 45, F8
        add     eax, edx                                ; 0600 _ 01. D0
        add     eax, cursor.1545                        ; 0602 _ 05, 00000060(d)
        movzx   eax, byte [eax]                         ; 0607 _ 0F B6. 00
        cmp     al, 42                                  ; 060A _ 3C, 2A
        jnz     ?_022                                   ; 060C _ 75, 17
        mov     eax, dword [ebp-4H]                     ; 060E _ 8B. 45, FC
        shl     eax, 4                                  ; 0611 _ C1. E0, 04
        mov     edx, eax                                ; 0614 _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 0616 _ 8B. 45, F8
        add     eax, edx                                ; 0619 _ 01. D0
        mov     edx, eax                                ; 061B _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 061D _ 8B. 45, 08
        add     eax, edx                                ; 0620 _ 01. D0
        mov     byte [eax], 0                           ; 0622 _ C6. 00, 00
?_022:  mov     eax, dword [ebp-4H]                     ; 0625 _ 8B. 45, FC
        shl     eax, 4                                  ; 0628 _ C1. E0, 04
        mov     edx, eax                                ; 062B _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 062D _ 8B. 45, F8
        add     eax, edx                                ; 0630 _ 01. D0
        add     eax, cursor.1545                        ; 0632 _ 05, 00000060(d)
        movzx   eax, byte [eax]                         ; 0637 _ 0F B6. 00
        cmp     al, 79                                  ; 063A _ 3C, 4F
        jnz     ?_023                                   ; 063C _ 75, 17
        mov     eax, dword [ebp-4H]                     ; 063E _ 8B. 45, FC
        shl     eax, 4                                  ; 0641 _ C1. E0, 04
        mov     edx, eax                                ; 0644 _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 0646 _ 8B. 45, F8
        add     eax, edx                                ; 0649 _ 01. D0
        mov     edx, eax                                ; 064B _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 064D _ 8B. 45, 08
        add     eax, edx                                ; 0650 _ 01. D0
        mov     byte [eax], 7                           ; 0652 _ C6. 00, 07
?_023:  mov     eax, dword [ebp-4H]                     ; 0655 _ 8B. 45, FC
        shl     eax, 4                                  ; 0658 _ C1. E0, 04
        mov     edx, eax                                ; 065B _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 065D _ 8B. 45, F8
        add     eax, edx                                ; 0660 _ 01. D0
        add     eax, cursor.1545                        ; 0662 _ 05, 00000060(d)
        movzx   eax, byte [eax]                         ; 0667 _ 0F B6. 00
        cmp     al, 46                                  ; 066A _ 3C, 2E
        jnz     ?_024                                   ; 066C _ 75, 1A
        mov     eax, dword [ebp-4H]                     ; 066E _ 8B. 45, FC
        shl     eax, 4                                  ; 0671 _ C1. E0, 04
        mov     edx, eax                                ; 0674 _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 0676 _ 8B. 45, F8
        add     eax, edx                                ; 0679 _ 01. D0
        mov     edx, eax                                ; 067B _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 067D _ 8B. 45, 08
        add     edx, eax                                ; 0680 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0682 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0686 _ 88. 02
?_024:  add     dword [ebp-8H], 1                       ; 0688 _ 83. 45, F8, 01
?_025:  cmp     dword [ebp-8H], 15                      ; 068C _ 83. 7D, F8, 0F
        jle     ?_021                                   ; 0690 _ 0F 8E, FFFFFF5F
        add     dword [ebp-4H], 1                       ; 0696 _ 83. 45, FC, 01
?_026:  cmp     dword [ebp-4H], 15                      ; 069A _ 83. 7D, FC, 0F
        jle     ?_020                                   ; 069E _ 0F 8E, FFFFFF45
        nop                                             ; 06A4 _ 90
        leave                                           ; 06A5 _ C9
        ret                                             ; 06A6 _ C3
; init_mouse_cursor End of function

putblock:; Function begin
        push    ebp                                     ; 06A7 _ 55
        mov     ebp, esp                                ; 06A8 _ 89. E5
        push    ebx                                     ; 06AA _ 53
        sub     esp, 16                                 ; 06AB _ 83. EC, 10
        mov     dword [ebp-8H], 0                       ; 06AE _ C7. 45, F8, 00000000
        jmp     ?_030                                   ; 06B5 _ EB, 50

?_027:  mov     dword [ebp-0CH], 0                      ; 06B7 _ C7. 45, F4, 00000000
        jmp     ?_029                                   ; 06BE _ EB, 3B

?_028:  mov     eax, dword [ebp-8H]                     ; 06C0 _ 8B. 45, F8
        imul    eax, dword [ebp+24H]                    ; 06C3 _ 0F AF. 45, 24
        mov     edx, eax                                ; 06C7 _ 89. C2
        mov     eax, dword [ebp-0CH]                    ; 06C9 _ 8B. 45, F4
        add     eax, edx                                ; 06CC _ 01. D0
        mov     edx, eax                                ; 06CE _ 89. C2
        mov     eax, dword [ebp+20H]                    ; 06D0 _ 8B. 45, 20
        add     eax, edx                                ; 06D3 _ 01. D0
        mov     ecx, dword [ebp+1CH]                    ; 06D5 _ 8B. 4D, 1C
        mov     edx, dword [ebp-8H]                     ; 06D8 _ 8B. 55, F8
        add     edx, ecx                                ; 06DB _ 01. CA
        imul    edx, dword [ebp+0CH]                    ; 06DD _ 0F AF. 55, 0C
        mov     ebx, dword [ebp+18H]                    ; 06E1 _ 8B. 5D, 18
        mov     ecx, dword [ebp-0CH]                    ; 06E4 _ 8B. 4D, F4
        add     ecx, ebx                                ; 06E7 _ 01. D9
        add     edx, ecx                                ; 06E9 _ 01. CA
        mov     ecx, edx                                ; 06EB _ 89. D1
        mov     edx, dword [ebp+8H]                     ; 06ED _ 8B. 55, 08
        add     edx, ecx                                ; 06F0 _ 01. CA
        movzx   eax, byte [eax]                         ; 06F2 _ 0F B6. 00
        mov     byte [edx], al                          ; 06F5 _ 88. 02
        add     dword [ebp-0CH], 1                      ; 06F7 _ 83. 45, F4, 01
?_029:  mov     eax, dword [ebp-0CH]                    ; 06FB _ 8B. 45, F4
        cmp     eax, dword [ebp+10H]                    ; 06FE _ 3B. 45, 10
        jl      ?_028                                   ; 0701 _ 7C, BD
        add     dword [ebp-8H], 1                       ; 0703 _ 83. 45, F8, 01
?_030:  mov     eax, dword [ebp-8H]                     ; 0707 _ 8B. 45, F8
        cmp     eax, dword [ebp+14H]                    ; 070A _ 3B. 45, 14
        jl      ?_027                                   ; 070D _ 7C, A8
        nop                                             ; 070F _ 90
        add     esp, 16                                 ; 0710 _ 83. C4, 10
        pop     ebx                                     ; 0713 _ 5B
        pop     ebp                                     ; 0714 _ 5D
        ret                                             ; 0715 _ C3
; putblock End of function

intHandlerFromC:; Function begin
        push    ebp                                     ; 0716 _ 55
        mov     ebp, esp                                ; 0717 _ 89. E5
        sub     esp, 24                                 ; 0719 _ 83. EC, 18
        mov     eax, dword [bootInfo]                   ; 071C _ A1, 00000100(d)
        mov     dword [ebp-14H], eax                    ; 0721 _ 89. 45, EC
        movzx   eax, word [?_032]                       ; 0724 _ 0F B7. 05, 00000104(d)
        cwde                                            ; 072B _ 98
        mov     dword [ebp-10H], eax                    ; 072C _ 89. 45, F0
        movzx   eax, word [?_033]                       ; 072F _ 0F B7. 05, 00000106(d)
        cwde                                            ; 0736 _ 98
        mov     dword [ebp-0CH], eax                    ; 0737 _ 89. 45, F4
        mov     eax, dword [ebp-10H]                    ; 073A _ 8B. 45, F0
        sub     eax, 1                                  ; 073D _ 83. E8, 01
        push    15                                      ; 0740 _ 6A, 0F
        push    eax                                     ; 0742 _ 50
        push    0                                       ; 0743 _ 6A, 00
        push    0                                       ; 0745 _ 6A, 00
        push    0                                       ; 0747 _ 6A, 00
        push    dword [ebp-10H]                         ; 0749 _ FF. 75, F0
        push    dword [ebp-14H]                         ; 074C _ FF. 75, EC
        call    boxfill8                                ; 074F _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 0754 _ 83. C4, 1C
        sub     esp, 8                                  ; 0757 _ 83. EC, 08
        push    ?_034                                   ; 075A _ 68, 00000000(d)
        push    6                                       ; 075F _ 6A, 06
        push    0                                       ; 0761 _ 6A, 00
        push    0                                       ; 0763 _ 6A, 00
        push    dword [ebp-10H]                         ; 0765 _ FF. 75, F0
        push    dword [ebp-14H]                         ; 0768 _ FF. 75, EC
        call    showString                              ; 076B _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0770 _ 83. C4, 20
?_031:  call    io_hlt                                  ; 0773 _ E8, FFFFFFFC(rel)
        jmp     ?_031                                   ; 0778 _ EB, F9
; intHandlerFromC End of function



fontA:                                                  ; oword
        db 00H, 18H, 18H, 18H, 18H, 24H, 24H, 24H       ; 0000 _ .....$$$
        db 24H, 7EH, 42H, 42H, 42H, 0E7H, 00H, 00H      ; 0008 _ $~BBB...
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0010 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0018 _ ........

table_rgb.1500:                                         ; byte
        db 00H, 00H, 00H, 0FFH, 00H, 00H, 00H, 0FFH     ; 0020 _ ........
        db 00H, 0FFH, 0FFH, 00H, 00H, 00H, 0FFH, 0FFH   ; 0028 _ ........
        db 00H, 0FFH, 00H, 0FFH, 0FFH, 0FFH, 0FFH, 0FFH ; 0030 _ ........
        db 0C6H, 0C6H, 0C6H, 84H, 00H, 00H, 00H, 84H    ; 0038 _ ........
        db 00H, 84H, 84H, 00H, 00H, 00H, 84H, 84H       ; 0040 _ ........
        db 00H, 84H, 00H, 84H, 84H, 84H, 84H, 84H       ; 0048 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0050 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0058 _ ........

cursor.1545:                                            ; byte
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

?_032:  resw    1                                       ; 0104

?_033:  resw    1                                       ; 0106



?_034:                                                  ; byte
        db 4BH, 65H, 79H, 62H, 6FH, 61H, 72H, 64H       ; 0000 _ Keyboard
        db 20H, 69H, 6EH, 70H, 75H, 74H, 3AH, 00H       ; 0008 _  input:.


