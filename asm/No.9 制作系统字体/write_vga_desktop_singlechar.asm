; Disassembly of file: write_vga_desktop_singlechar.o
; Tue Jan 26 16:02:43 2021
; Mode: 32 bits
; Syntax: YASM/NASM
; Instruction set: 80386


CMain:  ; Function begin
        push    ebp                                     ; 0000 _ 55
        mov     ebp, esp                                ; 0001 _ 89. E5
        push    ebx                                     ; 0003 _ 53
        sub     esp, 36                                 ; 0004 _ 83. EC, 24
; Note: Absolute memory address without relocation
        mov     eax, dword [gs:14H]                     ; 0007 _ 65: A1, 00000014
        mov     dword [ebp-0CH], eax                    ; 000D _ 89. 45, F4
        xor     eax, eax                                ; 0010 _ 31. C0
        sub     esp, 12                                 ; 0012 _ 83. EC, 0C
        lea     eax, [ebp-14H]                          ; 0015 _ 8D. 45, EC
        push    eax                                     ; 0018 _ 50
        call    initBootInfo                            ; 0019 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 001E _ 83. C4, 10
        mov     eax, dword [ebp-14H]                    ; 0021 _ 8B. 45, EC
        mov     dword [ebp-20H], eax                    ; 0024 _ 89. 45, E0
        movzx   eax, word [ebp-10H]                     ; 0027 _ 0F B7. 45, F0
        cwde                                            ; 002B _ 98
        mov     dword [ebp-1CH], eax                    ; 002C _ 89. 45, E4
        movzx   eax, word [ebp-0EH]                     ; 002F _ 0F B7. 45, F2
        cwde                                            ; 0033 _ 98
        mov     dword [ebp-18H], eax                    ; 0034 _ 89. 45, E8
        call    init_palette                            ; 0037 _ E8, FFFFFFFC(rel)
        mov     eax, dword [ebp-18H]                    ; 003C _ 8B. 45, E8
        lea     edx, [eax-1DH]                          ; 003F _ 8D. 50, E3
        mov     eax, dword [ebp-1CH]                    ; 0042 _ 8B. 45, E4
        sub     eax, 1                                  ; 0045 _ 83. E8, 01
        sub     esp, 4                                  ; 0048 _ 83. EC, 04
        push    edx                                     ; 004B _ 52
        push    eax                                     ; 004C _ 50
        push    0                                       ; 004D _ 6A, 00
        push    0                                       ; 004F _ 6A, 00
        push    14                                      ; 0051 _ 6A, 0E
        push    dword [ebp-1CH]                         ; 0053 _ FF. 75, E4
        push    dword [ebp-20H]                         ; 0056 _ FF. 75, E0
        call    boxfill8                                ; 0059 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 005E _ 83. C4, 20
        mov     eax, dword [ebp-18H]                    ; 0061 _ 8B. 45, E8
        lea     ecx, [eax-1CH]                          ; 0064 _ 8D. 48, E4
        mov     eax, dword [ebp-1CH]                    ; 0067 _ 8B. 45, E4
        lea     edx, [eax-1H]                           ; 006A _ 8D. 50, FF
        mov     eax, dword [ebp-18H]                    ; 006D _ 8B. 45, E8
        sub     eax, 28                                 ; 0070 _ 83. E8, 1C
        sub     esp, 4                                  ; 0073 _ 83. EC, 04
        push    ecx                                     ; 0076 _ 51
        push    edx                                     ; 0077 _ 52
        push    eax                                     ; 0078 _ 50
        push    0                                       ; 0079 _ 6A, 00
        push    8                                       ; 007B _ 6A, 08
        push    dword [ebp-1CH]                         ; 007D _ FF. 75, E4
        push    dword [ebp-20H]                         ; 0080 _ FF. 75, E0
        call    boxfill8                                ; 0083 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0088 _ 83. C4, 20
        mov     eax, dword [ebp-18H]                    ; 008B _ 8B. 45, E8
        lea     ecx, [eax-1BH]                          ; 008E _ 8D. 48, E5
        mov     eax, dword [ebp-1CH]                    ; 0091 _ 8B. 45, E4
        lea     edx, [eax-1H]                           ; 0094 _ 8D. 50, FF
        mov     eax, dword [ebp-18H]                    ; 0097 _ 8B. 45, E8
        sub     eax, 27                                 ; 009A _ 83. E8, 1B
        sub     esp, 4                                  ; 009D _ 83. EC, 04
        push    ecx                                     ; 00A0 _ 51
        push    edx                                     ; 00A1 _ 52
        push    eax                                     ; 00A2 _ 50
        push    0                                       ; 00A3 _ 6A, 00
        push    7                                       ; 00A5 _ 6A, 07
        push    dword [ebp-1CH]                         ; 00A7 _ FF. 75, E4
        push    dword [ebp-20H]                         ; 00AA _ FF. 75, E0
        call    boxfill8                                ; 00AD _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 00B2 _ 83. C4, 20
        mov     eax, dword [ebp-18H]                    ; 00B5 _ 8B. 45, E8
        lea     ecx, [eax-1H]                           ; 00B8 _ 8D. 48, FF
        mov     eax, dword [ebp-1CH]                    ; 00BB _ 8B. 45, E4
        lea     edx, [eax-1H]                           ; 00BE _ 8D. 50, FF
        mov     eax, dword [ebp-18H]                    ; 00C1 _ 8B. 45, E8
        sub     eax, 26                                 ; 00C4 _ 83. E8, 1A
        sub     esp, 4                                  ; 00C7 _ 83. EC, 04
        push    ecx                                     ; 00CA _ 51
        push    edx                                     ; 00CB _ 52
        push    eax                                     ; 00CC _ 50
        push    0                                       ; 00CD _ 6A, 00
        push    8                                       ; 00CF _ 6A, 08
        push    dword [ebp-1CH]                         ; 00D1 _ FF. 75, E4
        push    dword [ebp-20H]                         ; 00D4 _ FF. 75, E0
        call    boxfill8                                ; 00D7 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 00DC _ 83. C4, 20
        mov     eax, dword [ebp-18H]                    ; 00DF _ 8B. 45, E8
        lea     edx, [eax-18H]                          ; 00E2 _ 8D. 50, E8
        mov     eax, dword [ebp-18H]                    ; 00E5 _ 8B. 45, E8
        sub     eax, 24                                 ; 00E8 _ 83. E8, 18
        sub     esp, 4                                  ; 00EB _ 83. EC, 04
        push    edx                                     ; 00EE _ 52
        push    59                                      ; 00EF _ 6A, 3B
        push    eax                                     ; 00F1 _ 50
        push    3                                       ; 00F2 _ 6A, 03
        push    7                                       ; 00F4 _ 6A, 07
        push    dword [ebp-1CH]                         ; 00F6 _ FF. 75, E4
        push    dword [ebp-20H]                         ; 00F9 _ FF. 75, E0
        call    boxfill8                                ; 00FC _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0101 _ 83. C4, 20
        mov     eax, dword [ebp-18H]                    ; 0104 _ 8B. 45, E8
        lea     edx, [eax-4H]                           ; 0107 _ 8D. 50, FC
        mov     eax, dword [ebp-18H]                    ; 010A _ 8B. 45, E8
        sub     eax, 24                                 ; 010D _ 83. E8, 18
        sub     esp, 4                                  ; 0110 _ 83. EC, 04
        push    edx                                     ; 0113 _ 52
        push    2                                       ; 0114 _ 6A, 02
        push    eax                                     ; 0116 _ 50
        push    2                                       ; 0117 _ 6A, 02
        push    7                                       ; 0119 _ 6A, 07
        push    dword [ebp-1CH]                         ; 011B _ FF. 75, E4
        push    dword [ebp-20H]                         ; 011E _ FF. 75, E0
        call    boxfill8                                ; 0121 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0126 _ 83. C4, 20
        mov     eax, dword [ebp-18H]                    ; 0129 _ 8B. 45, E8
        lea     edx, [eax-4H]                           ; 012C _ 8D. 50, FC
        mov     eax, dword [ebp-18H]                    ; 012F _ 8B. 45, E8
        sub     eax, 4                                  ; 0132 _ 83. E8, 04
        sub     esp, 4                                  ; 0135 _ 83. EC, 04
        push    edx                                     ; 0138 _ 52
        push    59                                      ; 0139 _ 6A, 3B
        push    eax                                     ; 013B _ 50
        push    3                                       ; 013C _ 6A, 03
        push    15                                      ; 013E _ 6A, 0F
        push    dword [ebp-1CH]                         ; 0140 _ FF. 75, E4
        push    dword [ebp-20H]                         ; 0143 _ FF. 75, E0
        call    boxfill8                                ; 0146 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 014B _ 83. C4, 20
        mov     eax, dword [ebp-18H]                    ; 014E _ 8B. 45, E8
        lea     edx, [eax-5H]                           ; 0151 _ 8D. 50, FB
        mov     eax, dword [ebp-18H]                    ; 0154 _ 8B. 45, E8
        sub     eax, 23                                 ; 0157 _ 83. E8, 17
        sub     esp, 4                                  ; 015A _ 83. EC, 04
        push    edx                                     ; 015D _ 52
        push    59                                      ; 015E _ 6A, 3B
        push    eax                                     ; 0160 _ 50
        push    59                                      ; 0161 _ 6A, 3B
        push    15                                      ; 0163 _ 6A, 0F
        push    dword [ebp-1CH]                         ; 0165 _ FF. 75, E4
        push    dword [ebp-20H]                         ; 0168 _ FF. 75, E0
        call    boxfill8                                ; 016B _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0170 _ 83. C4, 20
        mov     eax, dword [ebp-18H]                    ; 0173 _ 8B. 45, E8
        lea     edx, [eax-3H]                           ; 0176 _ 8D. 50, FD
        mov     eax, dword [ebp-18H]                    ; 0179 _ 8B. 45, E8
        sub     eax, 3                                  ; 017C _ 83. E8, 03
        sub     esp, 4                                  ; 017F _ 83. EC, 04
        push    edx                                     ; 0182 _ 52
        push    59                                      ; 0183 _ 6A, 3B
        push    eax                                     ; 0185 _ 50
        push    2                                       ; 0186 _ 6A, 02
        push    0                                       ; 0188 _ 6A, 00
        push    dword [ebp-1CH]                         ; 018A _ FF. 75, E4
        push    dword [ebp-20H]                         ; 018D _ FF. 75, E0
        call    boxfill8                                ; 0190 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0195 _ 83. C4, 20
        mov     eax, dword [ebp-18H]                    ; 0198 _ 8B. 45, E8
        lea     edx, [eax-3H]                           ; 019B _ 8D. 50, FD
        mov     eax, dword [ebp-18H]                    ; 019E _ 8B. 45, E8
        sub     eax, 24                                 ; 01A1 _ 83. E8, 18
        sub     esp, 4                                  ; 01A4 _ 83. EC, 04
        push    edx                                     ; 01A7 _ 52
        push    60                                      ; 01A8 _ 6A, 3C
        push    eax                                     ; 01AA _ 50
        push    60                                      ; 01AB _ 6A, 3C
        push    0                                       ; 01AD _ 6A, 00
        push    dword [ebp-1CH]                         ; 01AF _ FF. 75, E4
        push    dword [ebp-20H]                         ; 01B2 _ FF. 75, E0
        call    boxfill8                                ; 01B5 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 01BA _ 83. C4, 20
        mov     eax, dword [ebp-18H]                    ; 01BD _ 8B. 45, E8
        lea     ebx, [eax-18H]                          ; 01C0 _ 8D. 58, E8
        mov     eax, dword [ebp-1CH]                    ; 01C3 _ 8B. 45, E4
        lea     ecx, [eax-4H]                           ; 01C6 _ 8D. 48, FC
        mov     eax, dword [ebp-18H]                    ; 01C9 _ 8B. 45, E8
        lea     edx, [eax-18H]                          ; 01CC _ 8D. 50, E8
        mov     eax, dword [ebp-1CH]                    ; 01CF _ 8B. 45, E4
        sub     eax, 47                                 ; 01D2 _ 83. E8, 2F
        sub     esp, 4                                  ; 01D5 _ 83. EC, 04
        push    ebx                                     ; 01D8 _ 53
        push    ecx                                     ; 01D9 _ 51
        push    edx                                     ; 01DA _ 52
        push    eax                                     ; 01DB _ 50
        push    15                                      ; 01DC _ 6A, 0F
        push    dword [ebp-1CH]                         ; 01DE _ FF. 75, E4
        push    dword [ebp-20H]                         ; 01E1 _ FF. 75, E0
        call    boxfill8                                ; 01E4 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 01E9 _ 83. C4, 20
        mov     eax, dword [ebp-18H]                    ; 01EC _ 8B. 45, E8
        lea     ebx, [eax-4H]                           ; 01EF _ 8D. 58, FC
        mov     eax, dword [ebp-1CH]                    ; 01F2 _ 8B. 45, E4
        lea     ecx, [eax-2FH]                          ; 01F5 _ 8D. 48, D1
        mov     eax, dword [ebp-18H]                    ; 01F8 _ 8B. 45, E8
        lea     edx, [eax-17H]                          ; 01FB _ 8D. 50, E9
        mov     eax, dword [ebp-1CH]                    ; 01FE _ 8B. 45, E4
        sub     eax, 47                                 ; 0201 _ 83. E8, 2F
        sub     esp, 4                                  ; 0204 _ 83. EC, 04
        push    ebx                                     ; 0207 _ 53
        push    ecx                                     ; 0208 _ 51
        push    edx                                     ; 0209 _ 52
        push    eax                                     ; 020A _ 50
        push    15                                      ; 020B _ 6A, 0F
        push    dword [ebp-1CH]                         ; 020D _ FF. 75, E4
        push    dword [ebp-20H]                         ; 0210 _ FF. 75, E0
        call    boxfill8                                ; 0213 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0218 _ 83. C4, 20
        mov     eax, dword [ebp-18H]                    ; 021B _ 8B. 45, E8
        lea     ebx, [eax-3H]                           ; 021E _ 8D. 58, FD
        mov     eax, dword [ebp-1CH]                    ; 0221 _ 8B. 45, E4
        lea     ecx, [eax-4H]                           ; 0224 _ 8D. 48, FC
        mov     eax, dword [ebp-18H]                    ; 0227 _ 8B. 45, E8
        lea     edx, [eax-3H]                           ; 022A _ 8D. 50, FD
        mov     eax, dword [ebp-1CH]                    ; 022D _ 8B. 45, E4
        sub     eax, 47                                 ; 0230 _ 83. E8, 2F
        sub     esp, 4                                  ; 0233 _ 83. EC, 04
        push    ebx                                     ; 0236 _ 53
        push    ecx                                     ; 0237 _ 51
        push    edx                                     ; 0238 _ 52
        push    eax                                     ; 0239 _ 50
        push    7                                       ; 023A _ 6A, 07
        push    dword [ebp-1CH]                         ; 023C _ FF. 75, E4
        push    dword [ebp-20H]                         ; 023F _ FF. 75, E0
        call    boxfill8                                ; 0242 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0247 _ 83. C4, 20
        mov     eax, dword [ebp-18H]                    ; 024A _ 8B. 45, E8
        lea     ebx, [eax-3H]                           ; 024D _ 8D. 58, FD
        mov     eax, dword [ebp-1CH]                    ; 0250 _ 8B. 45, E4
        lea     ecx, [eax-3H]                           ; 0253 _ 8D. 48, FD
        mov     eax, dword [ebp-18H]                    ; 0256 _ 8B. 45, E8
        lea     edx, [eax-18H]                          ; 0259 _ 8D. 50, E8
        mov     eax, dword [ebp-1CH]                    ; 025C _ 8B. 45, E4
        sub     eax, 3                                  ; 025F _ 83. E8, 03
        sub     esp, 4                                  ; 0262 _ 83. EC, 04
        push    ebx                                     ; 0265 _ 53
        push    ecx                                     ; 0266 _ 51
        push    edx                                     ; 0267 _ 52
        push    eax                                     ; 0268 _ 50
        push    7                                       ; 0269 _ 6A, 07
        push    dword [ebp-1CH]                         ; 026B _ FF. 75, E4
        push    dword [ebp-20H]                         ; 026E _ FF. 75, E0
        call    boxfill8                                ; 0271 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0276 _ 83. C4, 20
        sub     esp, 8                                  ; 0279 _ 83. EC, 08
        push    fontA                                   ; 027C _ 68, 00000000(d)
        push    7                                       ; 0281 _ 6A, 07
        push    20                                      ; 0283 _ 6A, 14
        push    20                                      ; 0285 _ 6A, 14
        push    dword [ebp-1CH]                         ; 0287 _ FF. 75, E4
        push    dword [ebp-20H]                         ; 028A _ FF. 75, E0
        call    showFont8                               ; 028D _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0292 _ 83. C4, 20
?_001:  call    io_hlt                                  ; 0295 _ E8, FFFFFFFC(rel)
        jmp     ?_001                                   ; 029A _ EB, F9
; CMain End of function

initBootInfo:; Function begin
        push    ebp                                     ; 029C _ 55
        mov     ebp, esp                                ; 029D _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 029F _ 8B. 45, 08
        mov     dword [eax], 655360                     ; 02A2 _ C7. 00, 000A0000
        mov     eax, dword [ebp+8H]                     ; 02A8 _ 8B. 45, 08
; Note: Length-changing prefix causes delay on Intel processors
        mov     word [eax+4H], 320                      ; 02AB _ 66: C7. 40, 04, 0140
        mov     eax, dword [ebp+8H]                     ; 02B1 _ 8B. 45, 08
; Note: Length-changing prefix causes delay on Intel processors
        mov     word [eax+6H], 200                      ; 02B4 _ 66: C7. 40, 06, 00C8
        nop                                             ; 02BA _ 90
        pop     ebp                                     ; 02BB _ 5D
        ret                                             ; 02BC _ C3
; initBootInfo End of function

init_palette:; Function begin
        push    ebp                                     ; 02BD _ 55
        mov     ebp, esp                                ; 02BE _ 89. E5
        sub     esp, 8                                  ; 02C0 _ 83. EC, 08
        sub     esp, 4                                  ; 02C3 _ 83. EC, 04
        push    table_rgb.1462                          ; 02C6 _ 68, 00000020(d)
        push    15                                      ; 02CB _ 6A, 0F
        push    0                                       ; 02CD _ 6A, 00
        call    set_palette                             ; 02CF _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 02D4 _ 83. C4, 10
        nop                                             ; 02D7 _ 90
        leave                                           ; 02D8 _ C9
        ret                                             ; 02D9 _ C3
; init_palette End of function

set_palette:; Function begin
        push    ebp                                     ; 02DA _ 55
        mov     ebp, esp                                ; 02DB _ 89. E5
        sub     esp, 24                                 ; 02DD _ 83. EC, 18
        call    io_load_eflags                          ; 02E0 _ E8, FFFFFFFC(rel)
        mov     dword [ebp-0CH], eax                    ; 02E5 _ 89. 45, F4
        call    io_cli                                  ; 02E8 _ E8, FFFFFFFC(rel)
        sub     esp, 8                                  ; 02ED _ 83. EC, 08
        push    dword [ebp+8H]                          ; 02F0 _ FF. 75, 08
        push    968                                     ; 02F3 _ 68, 000003C8
        call    io_out8                                 ; 02F8 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 02FD _ 83. C4, 10
        mov     eax, dword [ebp+8H]                     ; 0300 _ 8B. 45, 08
        mov     dword [ebp-10H], eax                    ; 0303 _ 89. 45, F0
        jmp     ?_003                                   ; 0306 _ EB, 65

?_002:  mov     eax, dword [ebp+10H]                    ; 0308 _ 8B. 45, 10
        movzx   eax, byte [eax]                         ; 030B _ 0F B6. 00
        shr     al, 2                                   ; 030E _ C0. E8, 02
        movzx   eax, al                                 ; 0311 _ 0F B6. C0
        sub     esp, 8                                  ; 0314 _ 83. EC, 08
        push    eax                                     ; 0317 _ 50
        push    969                                     ; 0318 _ 68, 000003C9
        call    io_out8                                 ; 031D _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0322 _ 83. C4, 10
        mov     eax, dword [ebp+10H]                    ; 0325 _ 8B. 45, 10
        add     eax, 1                                  ; 0328 _ 83. C0, 01
        movzx   eax, byte [eax]                         ; 032B _ 0F B6. 00
        shr     al, 2                                   ; 032E _ C0. E8, 02
        movzx   eax, al                                 ; 0331 _ 0F B6. C0
        sub     esp, 8                                  ; 0334 _ 83. EC, 08
        push    eax                                     ; 0337 _ 50
        push    969                                     ; 0338 _ 68, 000003C9
        call    io_out8                                 ; 033D _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0342 _ 83. C4, 10
        mov     eax, dword [ebp+10H]                    ; 0345 _ 8B. 45, 10
        add     eax, 2                                  ; 0348 _ 83. C0, 02
        movzx   eax, byte [eax]                         ; 034B _ 0F B6. 00
        shr     al, 2                                   ; 034E _ C0. E8, 02
        movzx   eax, al                                 ; 0351 _ 0F B6. C0
        sub     esp, 8                                  ; 0354 _ 83. EC, 08
        push    eax                                     ; 0357 _ 50
        push    969                                     ; 0358 _ 68, 000003C9
        call    io_out8                                 ; 035D _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0362 _ 83. C4, 10
        add     dword [ebp+10H], 3                      ; 0365 _ 83. 45, 10, 03
        add     dword [ebp-10H], 1                      ; 0369 _ 83. 45, F0, 01
?_003:  mov     eax, dword [ebp-10H]                    ; 036D _ 8B. 45, F0
        cmp     eax, dword [ebp+0CH]                    ; 0370 _ 3B. 45, 0C
        jle     ?_002                                   ; 0373 _ 7E, 93
        sub     esp, 12                                 ; 0375 _ 83. EC, 0C
        push    dword [ebp-0CH]                         ; 0378 _ FF. 75, F4
        call    io_store_eflags                         ; 037B _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0380 _ 83. C4, 10
        nop                                             ; 0383 _ 90
        leave                                           ; 0384 _ C9
        ret                                             ; 0385 _ C3
; set_palette End of function

boxfill8:; Function begin
        push    ebp                                     ; 0386 _ 55
        mov     ebp, esp                                ; 0387 _ 89. E5
        sub     esp, 20                                 ; 0389 _ 83. EC, 14
        mov     eax, dword [ebp+10H]                    ; 038C _ 8B. 45, 10
        mov     byte [ebp-14H], al                      ; 038F _ 88. 45, EC
        mov     eax, dword [ebp+18H]                    ; 0392 _ 8B. 45, 18
        mov     dword [ebp-4H], eax                     ; 0395 _ 89. 45, FC
        jmp     ?_007                                   ; 0398 _ EB, 33

?_004:  mov     eax, dword [ebp+14H]                    ; 039A _ 8B. 45, 14
        mov     dword [ebp-8H], eax                     ; 039D _ 89. 45, F8
        jmp     ?_006                                   ; 03A0 _ EB, 1F

?_005:  mov     eax, dword [ebp-4H]                     ; 03A2 _ 8B. 45, FC
        imul    eax, dword [ebp+0CH]                    ; 03A5 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 03A9 _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 03AB _ 8B. 45, F8
        add     eax, edx                                ; 03AE _ 01. D0
        mov     edx, eax                                ; 03B0 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 03B2 _ 8B. 45, 08
        add     edx, eax                                ; 03B5 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 03B7 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 03BB _ 88. 02
        add     dword [ebp-8H], 1                       ; 03BD _ 83. 45, F8, 01
?_006:  mov     eax, dword [ebp-8H]                     ; 03C1 _ 8B. 45, F8
        cmp     eax, dword [ebp+1CH]                    ; 03C4 _ 3B. 45, 1C
        jle     ?_005                                   ; 03C7 _ 7E, D9
        add     dword [ebp-4H], 1                       ; 03C9 _ 83. 45, FC, 01
?_007:  mov     eax, dword [ebp-4H]                     ; 03CD _ 8B. 45, FC
        cmp     eax, dword [ebp+20H]                    ; 03D0 _ 3B. 45, 20
        jle     ?_004                                   ; 03D3 _ 7E, C5
        nop                                             ; 03D5 _ 90
        leave                                           ; 03D6 _ C9
        ret                                             ; 03D7 _ C3
; boxfill8 End of function

showFont8:; Function begin
        push    ebp                                     ; 03D8 _ 55
        mov     ebp, esp                                ; 03D9 _ 89. E5
        sub     esp, 20                                 ; 03DB _ 83. EC, 14
        mov     eax, dword [ebp+18H]                    ; 03DE _ 8B. 45, 18
        mov     byte [ebp-14H], al                      ; 03E1 _ 88. 45, EC
        mov     dword [ebp-4H], 0                       ; 03E4 _ C7. 45, FC, 00000000
        jmp     ?_017                                   ; 03EB _ E9, 0000016C

?_008:  mov     edx, dword [ebp-4H]                     ; 03F0 _ 8B. 55, FC
        mov     eax, dword [ebp+1CH]                    ; 03F3 _ 8B. 45, 1C
        add     eax, edx                                ; 03F6 _ 01. D0
        movzx   eax, byte [eax]                         ; 03F8 _ 0F B6. 00
        mov     byte [ebp-5H], al                       ; 03FB _ 88. 45, FB
        cmp     byte [ebp-5H], 0                        ; 03FE _ 80. 7D, FB, 00
        jns     ?_009                                   ; 0402 _ 79, 20
        mov     edx, dword [ebp+14H]                    ; 0404 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 0407 _ 8B. 45, FC
        add     eax, edx                                ; 040A _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 040C _ 0F AF. 45, 0C
        mov     edx, eax                                ; 0410 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 0412 _ 8B. 45, 10
        add     eax, edx                                ; 0415 _ 01. D0
        mov     edx, eax                                ; 0417 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 0419 _ 8B. 45, 08
        add     edx, eax                                ; 041C _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 041E _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0422 _ 88. 02
?_009:  movsx   eax, byte [ebp-5H]                      ; 0424 _ 0F BE. 45, FB
        and     eax, 40H                                ; 0428 _ 83. E0, 40
        test    eax, eax                                ; 042B _ 85. C0
        jz      ?_010                                   ; 042D _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 042F _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 0432 _ 8B. 45, FC
        add     eax, edx                                ; 0435 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 0437 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 043B _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 043D _ 8B. 45, 10
        add     eax, edx                                ; 0440 _ 01. D0
        lea     edx, [eax+1H]                           ; 0442 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 0445 _ 8B. 45, 08
        add     edx, eax                                ; 0448 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 044A _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 044E _ 88. 02
?_010:  movsx   eax, byte [ebp-5H]                      ; 0450 _ 0F BE. 45, FB
        and     eax, 20H                                ; 0454 _ 83. E0, 20
        test    eax, eax                                ; 0457 _ 85. C0
        jz      ?_011                                   ; 0459 _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 045B _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 045E _ 8B. 45, FC
        add     eax, edx                                ; 0461 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 0463 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 0467 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 0469 _ 8B. 45, 10
        add     eax, edx                                ; 046C _ 01. D0
        lea     edx, [eax+2H]                           ; 046E _ 8D. 50, 02
        mov     eax, dword [ebp+8H]                     ; 0471 _ 8B. 45, 08
        add     edx, eax                                ; 0474 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0476 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 047A _ 88. 02
?_011:  movsx   eax, byte [ebp-5H]                      ; 047C _ 0F BE. 45, FB
        and     eax, 10H                                ; 0480 _ 83. E0, 10
        test    eax, eax                                ; 0483 _ 85. C0
        jz      ?_012                                   ; 0485 _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 0487 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 048A _ 8B. 45, FC
        add     eax, edx                                ; 048D _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 048F _ 0F AF. 45, 0C
        mov     edx, eax                                ; 0493 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 0495 _ 8B. 45, 10
        add     eax, edx                                ; 0498 _ 01. D0
        lea     edx, [eax+3H]                           ; 049A _ 8D. 50, 03
        mov     eax, dword [ebp+8H]                     ; 049D _ 8B. 45, 08
        add     edx, eax                                ; 04A0 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 04A2 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 04A6 _ 88. 02
?_012:  movsx   eax, byte [ebp-5H]                      ; 04A8 _ 0F BE. 45, FB
        and     eax, 08H                                ; 04AC _ 83. E0, 08
        test    eax, eax                                ; 04AF _ 85. C0
        jz      ?_013                                   ; 04B1 _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 04B3 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 04B6 _ 8B. 45, FC
        add     eax, edx                                ; 04B9 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 04BB _ 0F AF. 45, 0C
        mov     edx, eax                                ; 04BF _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 04C1 _ 8B. 45, 10
        add     eax, edx                                ; 04C4 _ 01. D0
        lea     edx, [eax+4H]                           ; 04C6 _ 8D. 50, 04
        mov     eax, dword [ebp+8H]                     ; 04C9 _ 8B. 45, 08
        add     edx, eax                                ; 04CC _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 04CE _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 04D2 _ 88. 02
?_013:  movsx   eax, byte [ebp-5H]                      ; 04D4 _ 0F BE. 45, FB
        and     eax, 04H                                ; 04D8 _ 83. E0, 04
        test    eax, eax                                ; 04DB _ 85. C0
        jz      ?_014                                   ; 04DD _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 04DF _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 04E2 _ 8B. 45, FC
        add     eax, edx                                ; 04E5 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 04E7 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 04EB _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 04ED _ 8B. 45, 10
        add     eax, edx                                ; 04F0 _ 01. D0
        lea     edx, [eax+5H]                           ; 04F2 _ 8D. 50, 05
        mov     eax, dword [ebp+8H]                     ; 04F5 _ 8B. 45, 08
        add     edx, eax                                ; 04F8 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 04FA _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 04FE _ 88. 02
?_014:  movsx   eax, byte [ebp-5H]                      ; 0500 _ 0F BE. 45, FB
        and     eax, 02H                                ; 0504 _ 83. E0, 02
        test    eax, eax                                ; 0507 _ 85. C0
        jz      ?_015                                   ; 0509 _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 050B _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 050E _ 8B. 45, FC
        add     eax, edx                                ; 0511 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 0513 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 0517 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 0519 _ 8B. 45, 10
        add     eax, edx                                ; 051C _ 01. D0
        lea     edx, [eax+6H]                           ; 051E _ 8D. 50, 06
        mov     eax, dword [ebp+8H]                     ; 0521 _ 8B. 45, 08
        add     edx, eax                                ; 0524 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0526 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 052A _ 88. 02
?_015:  movsx   eax, byte [ebp-5H]                      ; 052C _ 0F BE. 45, FB
        and     eax, 01H                                ; 0530 _ 83. E0, 01
        test    eax, eax                                ; 0533 _ 85. C0
        jz      ?_016                                   ; 0535 _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 0537 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 053A _ 8B. 45, FC
        add     eax, edx                                ; 053D _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 053F _ 0F AF. 45, 0C
        mov     edx, eax                                ; 0543 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 0545 _ 8B. 45, 10
        add     eax, edx                                ; 0548 _ 01. D0
        lea     edx, [eax+7H]                           ; 054A _ 8D. 50, 07
        mov     eax, dword [ebp+8H]                     ; 054D _ 8B. 45, 08
        add     edx, eax                                ; 0550 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0552 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0556 _ 88. 02
?_016:  add     dword [ebp-4H], 1                       ; 0558 _ 83. 45, FC, 01
?_017:  cmp     dword [ebp-4H], 15                      ; 055C _ 83. 7D, FC, 0F
        jle     ?_008                                   ; 0560 _ 0F 8E, FFFFFE8A
        nop                                             ; 0566 _ 90
        leave                                           ; 0567 _ C9
        ret                                             ; 0568 _ C3
; showFont8 End of function


fontA:                                                  ; oword
        db 00H, 18H, 18H, 18H, 18H, 24H, 24H, 24H       ; 0000 _ .....$$$
        db 24H, 7EH, 42H, 42H, 42H, 0E7H, 00H, 00H      ; 0008 _ $~BBB...
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0010 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0018 _ ........

table_rgb.1462:                                         ; byte
        db 00H, 00H, 00H, 0FFH, 00H, 00H, 00H, 0FFH     ; 0020 _ ........
        db 00H, 0FFH, 0FFH, 00H, 00H, 00H, 0FFH, 0FFH   ; 0028 _ ........
        db 00H, 0FFH, 00H, 0FFH, 0FFH, 0FFH, 0FFH, 0FFH ; 0030 _ ........
        db 0C6H, 0C6H, 0C6H, 84H, 00H, 00H, 00H, 84H    ; 0038 _ ........
        db 00H, 84H, 84H, 00H, 00H, 00H, 84H, 84H       ; 0040 _ ........
        db 00H, 84H, 00H, 84H, 84H, 84H, 84H, 84H       ; 0048 _ ........

