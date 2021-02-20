; Disassembly of file: write_vga_cursor.o
; Thu Jan 28 17:47:09 2021
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
        mov     eax, systemFont+420H                    ; 0279 _ B8, 00000420(d)
        sub     esp, 8                                  ; 027E _ 83. EC, 08
        push    eax                                     ; 0281 _ 50
        push    7                                       ; 0282 _ 6A, 07
        push    8                                       ; 0284 _ 6A, 08
        push    8                                       ; 0286 _ 6A, 08
        push    dword [ebp-1CH]                         ; 0288 _ FF. 75, E4
        push    dword [ebp-20H]                         ; 028B _ FF. 75, E0
        call    showFont8                               ; 028E _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0293 _ 83. C4, 20
        mov     eax, systemFont+4D0H                    ; 0296 _ B8, 000004D0(d)
        sub     esp, 8                                  ; 029B _ 83. EC, 08
        push    eax                                     ; 029E _ 50
        push    7                                       ; 029F _ 6A, 07
        push    8                                       ; 02A1 _ 6A, 08
        push    16                                      ; 02A3 _ 6A, 10
        push    dword [ebp-1CH]                         ; 02A5 _ FF. 75, E4
        push    dword [ebp-20H]                         ; 02A8 _ FF. 75, E0
        call    showFont8                               ; 02AB _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 02B0 _ 83. C4, 20
        mov     eax, systemFont+590H                    ; 02B3 _ B8, 00000590(d)
        sub     esp, 8                                  ; 02B8 _ 83. EC, 08
        push    eax                                     ; 02BB _ 50
        push    7                                       ; 02BC _ 6A, 07
        push    8                                       ; 02BE _ 6A, 08
        push    24                                      ; 02C0 _ 6A, 18
        push    dword [ebp-1CH]                         ; 02C2 _ FF. 75, E4
        push    dword [ebp-20H]                         ; 02C5 _ FF. 75, E0
        call    showFont8                               ; 02C8 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 02CD _ 83. C4, 20
        mov     eax, systemFont+320H                    ; 02D0 _ B8, 00000320(d)
        sub     esp, 8                                  ; 02D5 _ 83. EC, 08
        push    eax                                     ; 02D8 _ 50
        push    7                                       ; 02D9 _ 6A, 07
        push    8                                       ; 02DB _ 6A, 08
        push    32                                      ; 02DD _ 6A, 20
        push    dword [ebp-1CH]                         ; 02DF _ FF. 75, E4
        push    dword [ebp-20H]                         ; 02E2 _ FF. 75, E0
        call    showFont8                               ; 02E5 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 02EA _ 83. C4, 20
        mov     eax, systemFont+300H                    ; 02ED _ B8, 00000300(d)
        sub     esp, 8                                  ; 02F2 _ 83. EC, 08
        push    eax                                     ; 02F5 _ 50
        push    7                                       ; 02F6 _ 6A, 07
        push    8                                       ; 02F8 _ 6A, 08
        push    40                                      ; 02FA _ 6A, 28
        push    dword [ebp-1CH]                         ; 02FC _ FF. 75, E4
        push    dword [ebp-20H]                         ; 02FF _ FF. 75, E0
        call    showFont8                               ; 0302 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0307 _ 83. C4, 20
        mov     eax, systemFont+310H                    ; 030A _ B8, 00000310(d)
        sub     esp, 8                                  ; 030F _ 83. EC, 08
        push    eax                                     ; 0312 _ 50
        push    7                                       ; 0313 _ 6A, 07
        push    8                                       ; 0315 _ 6A, 08
        push    48                                      ; 0317 _ 6A, 30
        push    dword [ebp-1CH]                         ; 0319 _ FF. 75, E4
        push    dword [ebp-20H]                         ; 031C _ FF. 75, E0
        call    showFont8                               ; 031F _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0324 _ 83. C4, 20
        mov     eax, systemFont+370H                    ; 0327 _ B8, 00000370(d)
        sub     esp, 8                                  ; 032C _ 83. EC, 08
        push    eax                                     ; 032F _ 50
        push    7                                       ; 0330 _ 6A, 07
        push    8                                       ; 0332 _ 6A, 08
        push    56                                      ; 0334 _ 6A, 38
        push    dword [ebp-1CH]                         ; 0336 _ FF. 75, E4
        push    dword [ebp-20H]                         ; 0339 _ FF. 75, E0
        call    showFont8                               ; 033C _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0341 _ 83. C4, 20
        mov     eax, systemFont+380H                    ; 0344 _ B8, 00000380(d)
        sub     esp, 8                                  ; 0349 _ 83. EC, 08
        push    eax                                     ; 034C _ 50
        push    7                                       ; 034D _ 6A, 07
        push    8                                       ; 034F _ 6A, 08
        push    64                                      ; 0351 _ 6A, 40
        push    dword [ebp-1CH]                         ; 0353 _ FF. 75, E4
        push    dword [ebp-20H]                         ; 0356 _ FF. 75, E0
        call    showFont8                               ; 0359 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 035E _ 83. C4, 20
        mov     eax, systemFont+300H                    ; 0361 _ B8, 00000300(d)
        sub     esp, 8                                  ; 0366 _ 83. EC, 08
        push    eax                                     ; 0369 _ 50
        push    7                                       ; 036A _ 6A, 07
        push    8                                       ; 036C _ 6A, 08
        push    72                                      ; 036E _ 6A, 48
        push    dword [ebp-1CH]                         ; 0370 _ FF. 75, E4
        push    dword [ebp-20H]                         ; 0373 _ FF. 75, E0
        call    showFont8                               ; 0376 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 037B _ 83. C4, 20
        mov     eax, systemFont+310H                    ; 037E _ B8, 00000310(d)
        sub     esp, 8                                  ; 0383 _ 83. EC, 08
        push    eax                                     ; 0386 _ 50
        push    7                                       ; 0387 _ 6A, 07
        push    8                                       ; 0389 _ 6A, 08
        push    80                                      ; 038B _ 6A, 50
        push    dword [ebp-1CH]                         ; 038D _ FF. 75, E4
        push    dword [ebp-20H]                         ; 0390 _ FF. 75, E0
        call    showFont8                               ; 0393 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0398 _ 83. C4, 20
        mov     eax, systemFont+330H                    ; 039B _ B8, 00000330(d)
        sub     esp, 8                                  ; 03A0 _ 83. EC, 08
        push    eax                                     ; 03A3 _ 50
        push    7                                       ; 03A4 _ 6A, 07
        push    8                                       ; 03A6 _ 6A, 08
        push    88                                      ; 03A8 _ 6A, 58
        push    dword [ebp-1CH]                         ; 03AA _ FF. 75, E4
        push    dword [ebp-20H]                         ; 03AD _ FF. 75, E0
        call    showFont8                               ; 03B0 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 03B5 _ 83. C4, 20
        sub     esp, 8                                  ; 03B8 _ 83. EC, 08
        push    ?_031                                   ; 03BB _ 68, 00000000(d)
        push    7                                       ; 03C0 _ 6A, 07
        push    8                                       ; 03C2 _ 6A, 08
        push    104                                     ; 03C4 _ 6A, 68
        push    dword [ebp-1CH]                         ; 03C6 _ FF. 75, E4
        push    dword [ebp-20H]                         ; 03C9 _ FF. 75, E0
        call    showString                              ; 03CC _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 03D1 _ 83. C4, 20
        sub     esp, 8                                  ; 03D4 _ 83. EC, 08
        push    14                                      ; 03D7 _ 6A, 0E
        push    mcursor                                 ; 03D9 _ 68, 00000000(d)
        call    init_mouse_cursor                       ; 03DE _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 03E3 _ 83. C4, 10
        push    16                                      ; 03E6 _ 6A, 10
        push    mcursor                                 ; 03E8 _ 68, 00000000(d)
        push    80                                      ; 03ED _ 6A, 50
        push    80                                      ; 03EF _ 6A, 50
        push    16                                      ; 03F1 _ 6A, 10
        push    16                                      ; 03F3 _ 6A, 10
        push    dword [ebp-1CH]                         ; 03F5 _ FF. 75, E4
        push    dword [ebp-20H]                         ; 03F8 _ FF. 75, E0
        call    putblock                                ; 03FB _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0400 _ 83. C4, 20
?_001:  call    io_hlt                                  ; 0403 _ E8, FFFFFFFC(rel)
        jmp     ?_001                                   ; 0408 _ EB, F9
; CMain End of function

initBootInfo:; Function begin
        push    ebp                                     ; 040A _ 55
        mov     ebp, esp                                ; 040B _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 040D _ 8B. 45, 08
        mov     dword [eax], 655360                     ; 0410 _ C7. 00, 000A0000
        mov     eax, dword [ebp+8H]                     ; 0416 _ 8B. 45, 08
; Note: Length-changing prefix causes delay on Intel processors
        mov     word [eax+4H], 320                      ; 0419 _ 66: C7. 40, 04, 0140
        mov     eax, dword [ebp+8H]                     ; 041F _ 8B. 45, 08
; Note: Length-changing prefix causes delay on Intel processors
        mov     word [eax+6H], 200                      ; 0422 _ 66: C7. 40, 06, 00C8
        nop                                             ; 0428 _ 90
        pop     ebp                                     ; 0429 _ 5D
        ret                                             ; 042A _ C3
; initBootInfo End of function

showString:; Function begin
        push    ebp                                     ; 042B _ 55
        mov     ebp, esp                                ; 042C _ 89. E5
        sub     esp, 24                                 ; 042E _ 83. EC, 18
        mov     eax, dword [ebp+18H]                    ; 0431 _ 8B. 45, 18
        mov     byte [ebp-0CH], al                      ; 0434 _ 88. 45, F4
        jmp     ?_003                                   ; 0437 _ EB, 37

?_002:  mov     eax, dword [ebp+1CH]                    ; 0439 _ 8B. 45, 1C
        movzx   eax, byte [eax]                         ; 043C _ 0F B6. 00
        movzx   eax, al                                 ; 043F _ 0F B6. C0
        shl     eax, 4                                  ; 0442 _ C1. E0, 04
        lea     edx, [systemFont+eax]                   ; 0445 _ 8D. 90, 00000000(d)
        movsx   eax, byte [ebp-0CH]                     ; 044B _ 0F BE. 45, F4
        sub     esp, 8                                  ; 044F _ 83. EC, 08
        push    edx                                     ; 0452 _ 52
        push    eax                                     ; 0453 _ 50
        push    dword [ebp+14H]                         ; 0454 _ FF. 75, 14
        push    dword [ebp+10H]                         ; 0457 _ FF. 75, 10
        push    dword [ebp+0CH]                         ; 045A _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 045D _ FF. 75, 08
        call    showFont8                               ; 0460 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0465 _ 83. C4, 20
        add     dword [ebp+10H], 8                      ; 0468 _ 83. 45, 10, 08
        add     dword [ebp+1CH], 1                      ; 046C _ 83. 45, 1C, 01
?_003:  mov     eax, dword [ebp+1CH]                    ; 0470 _ 8B. 45, 1C
        movzx   eax, byte [eax]                         ; 0473 _ 0F B6. 00
        test    al, al                                  ; 0476 _ 84. C0
        jnz     ?_002                                   ; 0478 _ 75, BF
        nop                                             ; 047A _ 90
        leave                                           ; 047B _ C9
        ret                                             ; 047C _ C3
; showString End of function

init_palette:; Function begin
        push    ebp                                     ; 047D _ 55
        mov     ebp, esp                                ; 047E _ 89. E5
        sub     esp, 8                                  ; 0480 _ 83. EC, 08
        sub     esp, 4                                  ; 0483 _ 83. EC, 04
        push    table_rgb.1494                          ; 0486 _ 68, 00000020(d)
        push    15                                      ; 048B _ 6A, 0F
        push    0                                       ; 048D _ 6A, 00
        call    set_palette                             ; 048F _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0494 _ 83. C4, 10
        nop                                             ; 0497 _ 90
        leave                                           ; 0498 _ C9
        ret                                             ; 0499 _ C3
; init_palette End of function

set_palette:; Function begin
        push    ebp                                     ; 049A _ 55
        mov     ebp, esp                                ; 049B _ 89. E5
        sub     esp, 24                                 ; 049D _ 83. EC, 18
        call    io_load_eflags                          ; 04A0 _ E8, FFFFFFFC(rel)
        mov     dword [ebp-0CH], eax                    ; 04A5 _ 89. 45, F4
        call    io_cli                                  ; 04A8 _ E8, FFFFFFFC(rel)
        sub     esp, 8                                  ; 04AD _ 83. EC, 08
        push    dword [ebp+8H]                          ; 04B0 _ FF. 75, 08
        push    968                                     ; 04B3 _ 68, 000003C8
        call    io_out8                                 ; 04B8 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 04BD _ 83. C4, 10
        mov     eax, dword [ebp+8H]                     ; 04C0 _ 8B. 45, 08
        mov     dword [ebp-10H], eax                    ; 04C3 _ 89. 45, F0
        jmp     ?_005                                   ; 04C6 _ EB, 65

?_004:  mov     eax, dword [ebp+10H]                    ; 04C8 _ 8B. 45, 10
        movzx   eax, byte [eax]                         ; 04CB _ 0F B6. 00
        shr     al, 2                                   ; 04CE _ C0. E8, 02
        movzx   eax, al                                 ; 04D1 _ 0F B6. C0
        sub     esp, 8                                  ; 04D4 _ 83. EC, 08
        push    eax                                     ; 04D7 _ 50
        push    969                                     ; 04D8 _ 68, 000003C9
        call    io_out8                                 ; 04DD _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 04E2 _ 83. C4, 10
        mov     eax, dword [ebp+10H]                    ; 04E5 _ 8B. 45, 10
        add     eax, 1                                  ; 04E8 _ 83. C0, 01
        movzx   eax, byte [eax]                         ; 04EB _ 0F B6. 00
        shr     al, 2                                   ; 04EE _ C0. E8, 02
        movzx   eax, al                                 ; 04F1 _ 0F B6. C0
        sub     esp, 8                                  ; 04F4 _ 83. EC, 08
        push    eax                                     ; 04F7 _ 50
        push    969                                     ; 04F8 _ 68, 000003C9
        call    io_out8                                 ; 04FD _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0502 _ 83. C4, 10
        mov     eax, dword [ebp+10H]                    ; 0505 _ 8B. 45, 10
        add     eax, 2                                  ; 0508 _ 83. C0, 02
        movzx   eax, byte [eax]                         ; 050B _ 0F B6. 00
        shr     al, 2                                   ; 050E _ C0. E8, 02
        movzx   eax, al                                 ; 0511 _ 0F B6. C0
        sub     esp, 8                                  ; 0514 _ 83. EC, 08
        push    eax                                     ; 0517 _ 50
        push    969                                     ; 0518 _ 68, 000003C9
        call    io_out8                                 ; 051D _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0522 _ 83. C4, 10
        add     dword [ebp+10H], 3                      ; 0525 _ 83. 45, 10, 03
        add     dword [ebp-10H], 1                      ; 0529 _ 83. 45, F0, 01
?_005:  mov     eax, dword [ebp-10H]                    ; 052D _ 8B. 45, F0
        cmp     eax, dword [ebp+0CH]                    ; 0530 _ 3B. 45, 0C
        jle     ?_004                                   ; 0533 _ 7E, 93
        sub     esp, 12                                 ; 0535 _ 83. EC, 0C
        push    dword [ebp-0CH]                         ; 0538 _ FF. 75, F4
        call    io_store_eflags                         ; 053B _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0540 _ 83. C4, 10
        nop                                             ; 0543 _ 90
        leave                                           ; 0544 _ C9
        ret                                             ; 0545 _ C3
; set_palette End of function

boxfill8:; Function begin
        push    ebp                                     ; 0546 _ 55
        mov     ebp, esp                                ; 0547 _ 89. E5
        sub     esp, 20                                 ; 0549 _ 83. EC, 14
        mov     eax, dword [ebp+10H]                    ; 054C _ 8B. 45, 10
        mov     byte [ebp-14H], al                      ; 054F _ 88. 45, EC
        mov     eax, dword [ebp+18H]                    ; 0552 _ 8B. 45, 18
        mov     dword [ebp-4H], eax                     ; 0555 _ 89. 45, FC
        jmp     ?_009                                   ; 0558 _ EB, 33

?_006:  mov     eax, dword [ebp+14H]                    ; 055A _ 8B. 45, 14
        mov     dword [ebp-8H], eax                     ; 055D _ 89. 45, F8
        jmp     ?_008                                   ; 0560 _ EB, 1F

?_007:  mov     eax, dword [ebp-4H]                     ; 0562 _ 8B. 45, FC
        imul    eax, dword [ebp+0CH]                    ; 0565 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 0569 _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 056B _ 8B. 45, F8
        add     eax, edx                                ; 056E _ 01. D0
        mov     edx, eax                                ; 0570 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 0572 _ 8B. 45, 08
        add     edx, eax                                ; 0575 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0577 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 057B _ 88. 02
        add     dword [ebp-8H], 1                       ; 057D _ 83. 45, F8, 01
?_008:  mov     eax, dword [ebp-8H]                     ; 0581 _ 8B. 45, F8
        cmp     eax, dword [ebp+1CH]                    ; 0584 _ 3B. 45, 1C
        jle     ?_007                                   ; 0587 _ 7E, D9
        add     dword [ebp-4H], 1                       ; 0589 _ 83. 45, FC, 01
?_009:  mov     eax, dword [ebp-4H]                     ; 058D _ 8B. 45, FC
        cmp     eax, dword [ebp+20H]                    ; 0590 _ 3B. 45, 20
        jle     ?_006                                   ; 0593 _ 7E, C5
        nop                                             ; 0595 _ 90
        leave                                           ; 0596 _ C9
        ret                                             ; 0597 _ C3
; boxfill8 End of function

showFont8:; Function begin
        push    ebp                                     ; 0598 _ 55
        mov     ebp, esp                                ; 0599 _ 89. E5
        sub     esp, 20                                 ; 059B _ 83. EC, 14
        mov     eax, dword [ebp+18H]                    ; 059E _ 8B. 45, 18
        mov     byte [ebp-14H], al                      ; 05A1 _ 88. 45, EC
        mov     dword [ebp-4H], 0                       ; 05A4 _ C7. 45, FC, 00000000
        jmp     ?_019                                   ; 05AB _ E9, 0000016C

?_010:  mov     edx, dword [ebp-4H]                     ; 05B0 _ 8B. 55, FC
        mov     eax, dword [ebp+1CH]                    ; 05B3 _ 8B. 45, 1C
        add     eax, edx                                ; 05B6 _ 01. D0
        movzx   eax, byte [eax]                         ; 05B8 _ 0F B6. 00
        mov     byte [ebp-5H], al                       ; 05BB _ 88. 45, FB
        cmp     byte [ebp-5H], 0                        ; 05BE _ 80. 7D, FB, 00
        jns     ?_011                                   ; 05C2 _ 79, 20
        mov     edx, dword [ebp+14H]                    ; 05C4 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 05C7 _ 8B. 45, FC
        add     eax, edx                                ; 05CA _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 05CC _ 0F AF. 45, 0C
        mov     edx, eax                                ; 05D0 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 05D2 _ 8B. 45, 10
        add     eax, edx                                ; 05D5 _ 01. D0
        mov     edx, eax                                ; 05D7 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 05D9 _ 8B. 45, 08
        add     edx, eax                                ; 05DC _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 05DE _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 05E2 _ 88. 02
?_011:  movsx   eax, byte [ebp-5H]                      ; 05E4 _ 0F BE. 45, FB
        and     eax, 40H                                ; 05E8 _ 83. E0, 40
        test    eax, eax                                ; 05EB _ 85. C0
        jz      ?_012                                   ; 05ED _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 05EF _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 05F2 _ 8B. 45, FC
        add     eax, edx                                ; 05F5 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 05F7 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 05FB _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 05FD _ 8B. 45, 10
        add     eax, edx                                ; 0600 _ 01. D0
        lea     edx, [eax+1H]                           ; 0602 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 0605 _ 8B. 45, 08
        add     edx, eax                                ; 0608 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 060A _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 060E _ 88. 02
?_012:  movsx   eax, byte [ebp-5H]                      ; 0610 _ 0F BE. 45, FB
        and     eax, 20H                                ; 0614 _ 83. E0, 20
        test    eax, eax                                ; 0617 _ 85. C0
        jz      ?_013                                   ; 0619 _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 061B _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 061E _ 8B. 45, FC
        add     eax, edx                                ; 0621 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 0623 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 0627 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 0629 _ 8B. 45, 10
        add     eax, edx                                ; 062C _ 01. D0
        lea     edx, [eax+2H]                           ; 062E _ 8D. 50, 02
        mov     eax, dword [ebp+8H]                     ; 0631 _ 8B. 45, 08
        add     edx, eax                                ; 0634 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0636 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 063A _ 88. 02
?_013:  movsx   eax, byte [ebp-5H]                      ; 063C _ 0F BE. 45, FB
        and     eax, 10H                                ; 0640 _ 83. E0, 10
        test    eax, eax                                ; 0643 _ 85. C0
        jz      ?_014                                   ; 0645 _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 0647 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 064A _ 8B. 45, FC
        add     eax, edx                                ; 064D _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 064F _ 0F AF. 45, 0C
        mov     edx, eax                                ; 0653 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 0655 _ 8B. 45, 10
        add     eax, edx                                ; 0658 _ 01. D0
        lea     edx, [eax+3H]                           ; 065A _ 8D. 50, 03
        mov     eax, dword [ebp+8H]                     ; 065D _ 8B. 45, 08
        add     edx, eax                                ; 0660 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0662 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0666 _ 88. 02
?_014:  movsx   eax, byte [ebp-5H]                      ; 0668 _ 0F BE. 45, FB
        and     eax, 08H                                ; 066C _ 83. E0, 08
        test    eax, eax                                ; 066F _ 85. C0
        jz      ?_015                                   ; 0671 _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 0673 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 0676 _ 8B. 45, FC
        add     eax, edx                                ; 0679 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 067B _ 0F AF. 45, 0C
        mov     edx, eax                                ; 067F _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 0681 _ 8B. 45, 10
        add     eax, edx                                ; 0684 _ 01. D0
        lea     edx, [eax+4H]                           ; 0686 _ 8D. 50, 04
        mov     eax, dword [ebp+8H]                     ; 0689 _ 8B. 45, 08
        add     edx, eax                                ; 068C _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 068E _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0692 _ 88. 02
?_015:  movsx   eax, byte [ebp-5H]                      ; 0694 _ 0F BE. 45, FB
        and     eax, 04H                                ; 0698 _ 83. E0, 04
        test    eax, eax                                ; 069B _ 85. C0
        jz      ?_016                                   ; 069D _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 069F _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 06A2 _ 8B. 45, FC
        add     eax, edx                                ; 06A5 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 06A7 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 06AB _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 06AD _ 8B. 45, 10
        add     eax, edx                                ; 06B0 _ 01. D0
        lea     edx, [eax+5H]                           ; 06B2 _ 8D. 50, 05
        mov     eax, dword [ebp+8H]                     ; 06B5 _ 8B. 45, 08
        add     edx, eax                                ; 06B8 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 06BA _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 06BE _ 88. 02
?_016:  movsx   eax, byte [ebp-5H]                      ; 06C0 _ 0F BE. 45, FB
        and     eax, 02H                                ; 06C4 _ 83. E0, 02
        test    eax, eax                                ; 06C7 _ 85. C0
        jz      ?_017                                   ; 06C9 _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 06CB _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 06CE _ 8B. 45, FC
        add     eax, edx                                ; 06D1 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 06D3 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 06D7 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 06D9 _ 8B. 45, 10
        add     eax, edx                                ; 06DC _ 01. D0
        lea     edx, [eax+6H]                           ; 06DE _ 8D. 50, 06
        mov     eax, dword [ebp+8H]                     ; 06E1 _ 8B. 45, 08
        add     edx, eax                                ; 06E4 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 06E6 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 06EA _ 88. 02
?_017:  movsx   eax, byte [ebp-5H]                      ; 06EC _ 0F BE. 45, FB
        and     eax, 01H                                ; 06F0 _ 83. E0, 01
        test    eax, eax                                ; 06F3 _ 85. C0
        jz      ?_018                                   ; 06F5 _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 06F7 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 06FA _ 8B. 45, FC
        add     eax, edx                                ; 06FD _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 06FF _ 0F AF. 45, 0C
        mov     edx, eax                                ; 0703 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 0705 _ 8B. 45, 10
        add     eax, edx                                ; 0708 _ 01. D0
        lea     edx, [eax+7H]                           ; 070A _ 8D. 50, 07
        mov     eax, dword [ebp+8H]                     ; 070D _ 8B. 45, 08
        add     edx, eax                                ; 0710 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0712 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0716 _ 88. 02
?_018:  add     dword [ebp-4H], 1                       ; 0718 _ 83. 45, FC, 01
?_019:  cmp     dword [ebp-4H], 15                      ; 071C _ 83. 7D, FC, 0F
        jle     ?_010                                   ; 0720 _ 0F 8E, FFFFFE8A
        nop                                             ; 0726 _ 90
        leave                                           ; 0727 _ C9
        ret                                             ; 0728 _ C3
; showFont8 End of function

init_mouse_cursor:; Function begin
        push    ebp                                     ; 0729 _ 55
        mov     ebp, esp                                ; 072A _ 89. E5
        sub     esp, 20                                 ; 072C _ 83. EC, 14
        mov     eax, dword [ebp+0CH]                    ; 072F _ 8B. 45, 0C
        mov     byte [ebp-14H], al                      ; 0732 _ 88. 45, EC
        mov     dword [ebp-4H], 0                       ; 0735 _ C7. 45, FC, 00000000
        jmp     ?_026                                   ; 073C _ E9, 000000B1

?_020:  mov     dword [ebp-8H], 0                       ; 0741 _ C7. 45, F8, 00000000
        jmp     ?_025                                   ; 0748 _ E9, 00000097

?_021:  mov     eax, dword [ebp-4H]                     ; 074D _ 8B. 45, FC
        shl     eax, 4                                  ; 0750 _ C1. E0, 04
        mov     edx, eax                                ; 0753 _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 0755 _ 8B. 45, F8
        add     eax, edx                                ; 0758 _ 01. D0
        add     eax, cursor.1539                        ; 075A _ 05, 00000060(d)
        movzx   eax, byte [eax]                         ; 075F _ 0F B6. 00
        cmp     al, 42                                  ; 0762 _ 3C, 2A
        jnz     ?_022                                   ; 0764 _ 75, 17
        mov     eax, dword [ebp-4H]                     ; 0766 _ 8B. 45, FC
        shl     eax, 4                                  ; 0769 _ C1. E0, 04
        mov     edx, eax                                ; 076C _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 076E _ 8B. 45, F8
        add     eax, edx                                ; 0771 _ 01. D0
        mov     edx, eax                                ; 0773 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 0775 _ 8B. 45, 08
        add     eax, edx                                ; 0778 _ 01. D0
        mov     byte [eax], 0                           ; 077A _ C6. 00, 00
?_022:  mov     eax, dword [ebp-4H]                     ; 077D _ 8B. 45, FC
        shl     eax, 4                                  ; 0780 _ C1. E0, 04
        mov     edx, eax                                ; 0783 _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 0785 _ 8B. 45, F8
        add     eax, edx                                ; 0788 _ 01. D0
        add     eax, cursor.1539                        ; 078A _ 05, 00000060(d)
        movzx   eax, byte [eax]                         ; 078F _ 0F B6. 00
        cmp     al, 79                                  ; 0792 _ 3C, 4F
        jnz     ?_023                                   ; 0794 _ 75, 17
        mov     eax, dword [ebp-4H]                     ; 0796 _ 8B. 45, FC
        shl     eax, 4                                  ; 0799 _ C1. E0, 04
        mov     edx, eax                                ; 079C _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 079E _ 8B. 45, F8
        add     eax, edx                                ; 07A1 _ 01. D0
        mov     edx, eax                                ; 07A3 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 07A5 _ 8B. 45, 08
        add     eax, edx                                ; 07A8 _ 01. D0
        mov     byte [eax], 7                           ; 07AA _ C6. 00, 07
?_023:  mov     eax, dword [ebp-4H]                     ; 07AD _ 8B. 45, FC
        shl     eax, 4                                  ; 07B0 _ C1. E0, 04
        mov     edx, eax                                ; 07B3 _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 07B5 _ 8B. 45, F8
        add     eax, edx                                ; 07B8 _ 01. D0
        add     eax, cursor.1539                        ; 07BA _ 05, 00000060(d)
        movzx   eax, byte [eax]                         ; 07BF _ 0F B6. 00
        cmp     al, 46                                  ; 07C2 _ 3C, 2E
        jnz     ?_024                                   ; 07C4 _ 75, 1A
        mov     eax, dword [ebp-4H]                     ; 07C6 _ 8B. 45, FC
        shl     eax, 4                                  ; 07C9 _ C1. E0, 04
        mov     edx, eax                                ; 07CC _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 07CE _ 8B. 45, F8
        add     eax, edx                                ; 07D1 _ 01. D0
        mov     edx, eax                                ; 07D3 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 07D5 _ 8B. 45, 08
        add     edx, eax                                ; 07D8 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 07DA _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 07DE _ 88. 02
?_024:  add     dword [ebp-8H], 1                       ; 07E0 _ 83. 45, F8, 01
?_025:  cmp     dword [ebp-8H], 15                      ; 07E4 _ 83. 7D, F8, 0F
        jle     ?_021                                   ; 07E8 _ 0F 8E, FFFFFF5F
        add     dword [ebp-4H], 1                       ; 07EE _ 83. 45, FC, 01
?_026:  cmp     dword [ebp-4H], 15                      ; 07F2 _ 83. 7D, FC, 0F
        jle     ?_020                                   ; 07F6 _ 0F 8E, FFFFFF45
        nop                                             ; 07FC _ 90
        leave                                           ; 07FD _ C9
        ret                                             ; 07FE _ C3
; init_mouse_cursor End of function

putblock:; Function begin
        push    ebp                                     ; 07FF _ 55
        mov     ebp, esp                                ; 0800 _ 89. E5
        push    ebx                                     ; 0802 _ 53
        sub     esp, 16                                 ; 0803 _ 83. EC, 10
        mov     dword [ebp-8H], 0                       ; 0806 _ C7. 45, F8, 00000000
        jmp     ?_030                                   ; 080D _ EB, 50

?_027:  mov     dword [ebp-0CH], 0                      ; 080F _ C7. 45, F4, 00000000
        jmp     ?_029                                   ; 0816 _ EB, 3B

?_028:  mov     eax, dword [ebp-8H]                     ; 0818 _ 8B. 45, F8
        imul    eax, dword [ebp+24H]                    ; 081B _ 0F AF. 45, 24
        mov     edx, eax                                ; 081F _ 89. C2
        mov     eax, dword [ebp-0CH]                    ; 0821 _ 8B. 45, F4
        add     eax, edx                                ; 0824 _ 01. D0
        mov     edx, eax                                ; 0826 _ 89. C2
        mov     eax, dword [ebp+20H]                    ; 0828 _ 8B. 45, 20
        add     eax, edx                                ; 082B _ 01. D0
        mov     ecx, dword [ebp+1CH]                    ; 082D _ 8B. 4D, 1C
        mov     edx, dword [ebp-8H]                     ; 0830 _ 8B. 55, F8
        add     edx, ecx                                ; 0833 _ 01. CA
        imul    edx, dword [ebp+0CH]                    ; 0835 _ 0F AF. 55, 0C
        mov     ebx, dword [ebp+18H]                    ; 0839 _ 8B. 5D, 18
        mov     ecx, dword [ebp-0CH]                    ; 083C _ 8B. 4D, F4
        add     ecx, ebx                                ; 083F _ 01. D9
        add     edx, ecx                                ; 0841 _ 01. CA
        mov     ecx, edx                                ; 0843 _ 89. D1
        mov     edx, dword [ebp+8H]                     ; 0845 _ 8B. 55, 08
        add     edx, ecx                                ; 0848 _ 01. CA
        movzx   eax, byte [eax]                         ; 084A _ 0F B6. 00
        mov     byte [edx], al                          ; 084D _ 88. 02
        add     dword [ebp-0CH], 1                      ; 084F _ 83. 45, F4, 01
?_029:  mov     eax, dword [ebp-0CH]                    ; 0853 _ 8B. 45, F4
        cmp     eax, dword [ebp+10H]                    ; 0856 _ 3B. 45, 10
        jl      ?_028                                   ; 0859 _ 7C, BD
        add     dword [ebp-8H], 1                       ; 085B _ 83. 45, F8, 01
?_030:  mov     eax, dword [ebp-8H]                     ; 085F _ 8B. 45, F8
        cmp     eax, dword [ebp+14H]                    ; 0862 _ 3B. 45, 14
        jl      ?_027                                   ; 0865 _ 7C, A8
        nop                                             ; 0867 _ 90
        add     esp, 16                                 ; 0868 _ 83. C4, 10
        pop     ebx                                     ; 086B _ 5B
        pop     ebp                                     ; 086C _ 5D
        ret                                             ; 086D _ C3
; putblock End of function



fontA:                                                  ; oword
        db 00H, 18H, 18H, 18H, 18H, 24H, 24H, 24H       ; 0000 _ .....$$$
        db 24H, 7EH, 42H, 42H, 42H, 0E7H, 00H, 00H      ; 0008 _ $~BBB...
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0010 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0018 _ ........

table_rgb.1494:                                         ; byte
        db 00H, 00H, 00H, 0FFH, 00H, 00H, 00H, 0FFH     ; 0020 _ ........
        db 00H, 0FFH, 0FFH, 00H, 00H, 00H, 0FFH, 0FFH   ; 0028 _ ........
        db 00H, 0FFH, 00H, 0FFH, 0FFH, 0FFH, 0FFH, 0FFH ; 0030 _ ........
        db 0C6H, 0C6H, 0C6H, 84H, 00H, 00H, 00H, 84H    ; 0038 _ ........
        db 00H, 84H, 84H, 00H, 00H, 00H, 84H, 84H       ; 0040 _ ........
        db 00H, 84H, 00H, 84H, 84H, 84H, 84H, 84H       ; 0048 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0050 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0058 _ ........

cursor.1539:                                            ; byte
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
        db 2AH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH       ; 0110 _ *.......
        db 2EH, 2AH, 4FH, 4FH, 4FH, 2AH, 2EH, 2EH       ; 0118 _ .*OOO*..
        db 2EH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH       ; 0120 _ ........
        db 2EH, 2EH, 2AH, 4FH, 4FH, 4FH, 2AH, 2EH       ; 0128 _ ..*OOO*.
        db 2EH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH       ; 0130 _ ........
        db 2EH, 2EH, 2EH, 2AH, 4FH, 4FH, 4FH, 2AH       ; 0138 _ ...*OOO*
        db 2EH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH       ; 0140 _ ........
        db 2EH, 2EH, 2EH, 2EH, 2AH, 4FH, 4FH, 2AH       ; 0148 _ ....*OO*
        db 2EH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH       ; 0150 _ ........
        db 2EH, 2EH, 2EH, 2EH, 2EH, 2AH, 2AH, 2AH       ; 0158 _ .....***



mcursor:                                                ; byte
        resb    256                                     ; 0000



?_031:                                                  ; byte
        db 53H, 68H, 6FH, 77H, 20H, 63H, 75H, 72H       ; 0000 _ Show cur
        db 73H, 6FH, 72H, 20H, 62H, 65H, 6CH, 6FH       ; 0008 _ sor belo
        db 77H, 21H, 00H                                ; 0010 _ w!.


