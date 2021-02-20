; Disassembly of file: write_vga_desktop_string.o
; Thu Jan 28 17:04:36 2021
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
        push    8                                       ; 0283 _ 6A, 08
        push    8                                       ; 0285 _ 6A, 08
        push    dword [ebp-1CH]                         ; 0287 _ FF. 75, E4
        push    dword [ebp-20H]                         ; 028A _ FF. 75, E0
        call    showFont8                               ; 028D _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0292 _ 83. C4, 20
        mov     eax, systemFont+410H                    ; 0295 _ B8, 00000410(d)
        sub     esp, 8                                  ; 029A _ 83. EC, 08
        push    eax                                     ; 029D _ 50
        push    7                                       ; 029E _ 6A, 07
        push    8                                       ; 02A0 _ 6A, 08
        push    8                                       ; 02A2 _ 6A, 08
        push    dword [ebp-1CH]                         ; 02A4 _ FF. 75, E4
        push    dword [ebp-20H]                         ; 02A7 _ FF. 75, E0
        call    showFont8                               ; 02AA _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 02AF _ 83. C4, 20
        mov     eax, systemFont+420H                    ; 02B2 _ B8, 00000420(d)
        sub     esp, 8                                  ; 02B7 _ 83. EC, 08
        push    eax                                     ; 02BA _ 50
        push    7                                       ; 02BB _ 6A, 07
        push    8                                       ; 02BD _ 6A, 08
        push    16                                      ; 02BF _ 6A, 10
        push    dword [ebp-1CH]                         ; 02C1 _ FF. 75, E4
        push    dword [ebp-20H]                         ; 02C4 _ FF. 75, E0
        call    showFont8                               ; 02C7 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 02CC _ 83. C4, 20
        mov     eax, systemFont+430H                    ; 02CF _ B8, 00000430(d)
        sub     esp, 8                                  ; 02D4 _ 83. EC, 08
        push    eax                                     ; 02D7 _ 50
        push    7                                       ; 02D8 _ 6A, 07
        push    8                                       ; 02DA _ 6A, 08
        push    24                                      ; 02DC _ 6A, 18
        push    dword [ebp-1CH]                         ; 02DE _ FF. 75, E4
        push    dword [ebp-20H]                         ; 02E1 _ FF. 75, E0
        call    showFont8                               ; 02E4 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 02E9 _ 83. C4, 20
        mov     eax, systemFont+310H                    ; 02EC _ B8, 00000310(d)
        sub     esp, 8                                  ; 02F1 _ 83. EC, 08
        push    eax                                     ; 02F4 _ 50
        push    7                                       ; 02F5 _ 6A, 07
        push    8                                       ; 02F7 _ 6A, 08
        push    32                                      ; 02F9 _ 6A, 20
        push    dword [ebp-1CH]                         ; 02FB _ FF. 75, E4
        push    dword [ebp-20H]                         ; 02FE _ FF. 75, E0
        call    showFont8                               ; 0301 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0306 _ 83. C4, 20
        mov     eax, systemFont+320H                    ; 0309 _ B8, 00000320(d)
        sub     esp, 8                                  ; 030E _ 83. EC, 08
        push    eax                                     ; 0311 _ 50
        push    7                                       ; 0312 _ 6A, 07
        push    8                                       ; 0314 _ 6A, 08
        push    48                                      ; 0316 _ 6A, 30
        push    dword [ebp-1CH]                         ; 0318 _ FF. 75, E4
        push    dword [ebp-20H]                         ; 031B _ FF. 75, E0
        call    showFont8                               ; 031E _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0323 _ 83. C4, 20
        mov     eax, systemFont+330H                    ; 0326 _ B8, 00000330(d)
        sub     esp, 8                                  ; 032B _ 83. EC, 08
        push    eax                                     ; 032E _ 50
        push    7                                       ; 032F _ 6A, 07
        push    8                                       ; 0331 _ 6A, 08
        push    64                                      ; 0333 _ 6A, 40
        push    dword [ebp-1CH]                         ; 0335 _ FF. 75, E4
        push    dword [ebp-20H]                         ; 0338 _ FF. 75, E0
        call    showFont8                               ; 033B _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0340 _ 83. C4, 20
        sub     esp, 8                                  ; 0343 _ 83. EC, 08
        push    ?_020                                   ; 0346 _ 68, 00000000(d)
        push    7                                       ; 034B _ 6A, 07
        push    8                                       ; 034D _ 6A, 08
        push    72                                      ; 034F _ 6A, 48
        push    dword [ebp-1CH]                         ; 0351 _ FF. 75, E4
        push    dword [ebp-20H]                         ; 0354 _ FF. 75, E0
        call    showString                              ; 0357 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 035C _ 83. C4, 20
?_001:  call    io_hlt                                  ; 035F _ E8, FFFFFFFC(rel)
        jmp     ?_001                                   ; 0364 _ EB, F9
; CMain End of function

initBootInfo:; Function begin
        push    ebp                                     ; 0366 _ 55
        mov     ebp, esp                                ; 0367 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 0369 _ 8B. 45, 08
        mov     dword [eax], 655360                     ; 036C _ C7. 00, 000A0000
        mov     eax, dword [ebp+8H]                     ; 0372 _ 8B. 45, 08
; Note: Length-changing prefix causes delay on Intel processors
        mov     word [eax+4H], 320                      ; 0375 _ 66: C7. 40, 04, 0140
        mov     eax, dword [ebp+8H]                     ; 037B _ 8B. 45, 08
; Note: Length-changing prefix causes delay on Intel processors
        mov     word [eax+6H], 200                      ; 037E _ 66: C7. 40, 06, 00C8
        nop                                             ; 0384 _ 90
        pop     ebp                                     ; 0385 _ 5D
        ret                                             ; 0386 _ C3
; initBootInfo End of function

showString:; Function begin
        push    ebp                                     ; 0387 _ 55
        mov     ebp, esp                                ; 0388 _ 89. E5
        sub     esp, 24                                 ; 038A _ 83. EC, 18
        mov     eax, dword [ebp+18H]                    ; 038D _ 8B. 45, 18
        mov     byte [ebp-0CH], al                      ; 0390 _ 88. 45, F4
        jmp     ?_003                                   ; 0393 _ EB, 37

?_002:  mov     eax, dword [ebp+1CH]                    ; 0395 _ 8B. 45, 1C
        movzx   eax, byte [eax]                         ; 0398 _ 0F B6. 00
        movzx   eax, al                                 ; 039B _ 0F B6. C0
        shl     eax, 4                                  ; 039E _ C1. E0, 04
        lea     edx, [systemFont+eax]                   ; 03A1 _ 8D. 90, 00000000(d)
        movsx   eax, byte [ebp-0CH]                     ; 03A7 _ 0F BE. 45, F4
        sub     esp, 8                                  ; 03AB _ 83. EC, 08
        push    edx                                     ; 03AE _ 52
        push    eax                                     ; 03AF _ 50
        push    dword [ebp+14H]                         ; 03B0 _ FF. 75, 14
        push    dword [ebp+10H]                         ; 03B3 _ FF. 75, 10
        push    dword [ebp+0CH]                         ; 03B6 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 03B9 _ FF. 75, 08
        call    showFont8                               ; 03BC _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 03C1 _ 83. C4, 20
        add     dword [ebp+10H], 8                      ; 03C4 _ 83. 45, 10, 08
        add     dword [ebp+1CH], 1                      ; 03C8 _ 83. 45, 1C, 01
?_003:  mov     eax, dword [ebp+1CH]                    ; 03CC _ 8B. 45, 1C
        movzx   eax, byte [eax]                         ; 03CF _ 0F B6. 00
        test    al, al                                  ; 03D2 _ 84. C0
        jnz     ?_002                                   ; 03D4 _ 75, BF
        nop                                             ; 03D6 _ 90
        leave                                           ; 03D7 _ C9
        ret                                             ; 03D8 _ C3
; showString End of function

init_palette:; Function begin
        push    ebp                                     ; 03D9 _ 55
        mov     ebp, esp                                ; 03DA _ 89. E5
        sub     esp, 8                                  ; 03DC _ 83. EC, 08
        sub     esp, 4                                  ; 03DF _ 83. EC, 04
        push    table_rgb.1481                          ; 03E2 _ 68, 00000020(d)
        push    15                                      ; 03E7 _ 6A, 0F
        push    0                                       ; 03E9 _ 6A, 00
        call    set_palette                             ; 03EB _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 03F0 _ 83. C4, 10
        nop                                             ; 03F3 _ 90
        leave                                           ; 03F4 _ C9
        ret                                             ; 03F5 _ C3
; init_palette End of function

set_palette:; Function begin
        push    ebp                                     ; 03F6 _ 55
        mov     ebp, esp                                ; 03F7 _ 89. E5
        sub     esp, 24                                 ; 03F9 _ 83. EC, 18
        call    io_load_eflags                          ; 03FC _ E8, FFFFFFFC(rel)
        mov     dword [ebp-0CH], eax                    ; 0401 _ 89. 45, F4
        call    io_cli                                  ; 0404 _ E8, FFFFFFFC(rel)
        sub     esp, 8                                  ; 0409 _ 83. EC, 08
        push    dword [ebp+8H]                          ; 040C _ FF. 75, 08
        push    968                                     ; 040F _ 68, 000003C8
        call    io_out8                                 ; 0414 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0419 _ 83. C4, 10
        mov     eax, dword [ebp+8H]                     ; 041C _ 8B. 45, 08
        mov     dword [ebp-10H], eax                    ; 041F _ 89. 45, F0
        jmp     ?_005                                   ; 0422 _ EB, 65

?_004:  mov     eax, dword [ebp+10H]                    ; 0424 _ 8B. 45, 10
        movzx   eax, byte [eax]                         ; 0427 _ 0F B6. 00
        shr     al, 2                                   ; 042A _ C0. E8, 02
        movzx   eax, al                                 ; 042D _ 0F B6. C0
        sub     esp, 8                                  ; 0430 _ 83. EC, 08
        push    eax                                     ; 0433 _ 50
        push    969                                     ; 0434 _ 68, 000003C9
        call    io_out8                                 ; 0439 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 043E _ 83. C4, 10
        mov     eax, dword [ebp+10H]                    ; 0441 _ 8B. 45, 10
        add     eax, 1                                  ; 0444 _ 83. C0, 01
        movzx   eax, byte [eax]                         ; 0447 _ 0F B6. 00
        shr     al, 2                                   ; 044A _ C0. E8, 02
        movzx   eax, al                                 ; 044D _ 0F B6. C0
        sub     esp, 8                                  ; 0450 _ 83. EC, 08
        push    eax                                     ; 0453 _ 50
        push    969                                     ; 0454 _ 68, 000003C9
        call    io_out8                                 ; 0459 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 045E _ 83. C4, 10
        mov     eax, dword [ebp+10H]                    ; 0461 _ 8B. 45, 10
        add     eax, 2                                  ; 0464 _ 83. C0, 02
        movzx   eax, byte [eax]                         ; 0467 _ 0F B6. 00
        shr     al, 2                                   ; 046A _ C0. E8, 02
        movzx   eax, al                                 ; 046D _ 0F B6. C0
        sub     esp, 8                                  ; 0470 _ 83. EC, 08
        push    eax                                     ; 0473 _ 50
        push    969                                     ; 0474 _ 68, 000003C9
        call    io_out8                                 ; 0479 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 047E _ 83. C4, 10
        add     dword [ebp+10H], 3                      ; 0481 _ 83. 45, 10, 03
        add     dword [ebp-10H], 1                      ; 0485 _ 83. 45, F0, 01
?_005:  mov     eax, dword [ebp-10H]                    ; 0489 _ 8B. 45, F0
        cmp     eax, dword [ebp+0CH]                    ; 048C _ 3B. 45, 0C
        jle     ?_004                                   ; 048F _ 7E, 93
        sub     esp, 12                                 ; 0491 _ 83. EC, 0C
        push    dword [ebp-0CH]                         ; 0494 _ FF. 75, F4
        call    io_store_eflags                         ; 0497 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 049C _ 83. C4, 10
        nop                                             ; 049F _ 90
        leave                                           ; 04A0 _ C9
        ret                                             ; 04A1 _ C3
; set_palette End of function

boxfill8:; Function begin
        push    ebp                                     ; 04A2 _ 55
        mov     ebp, esp                                ; 04A3 _ 89. E5
        sub     esp, 20                                 ; 04A5 _ 83. EC, 14
        mov     eax, dword [ebp+10H]                    ; 04A8 _ 8B. 45, 10
        mov     byte [ebp-14H], al                      ; 04AB _ 88. 45, EC
        mov     eax, dword [ebp+18H]                    ; 04AE _ 8B. 45, 18
        mov     dword [ebp-4H], eax                     ; 04B1 _ 89. 45, FC
        jmp     ?_009                                   ; 04B4 _ EB, 33

?_006:  mov     eax, dword [ebp+14H]                    ; 04B6 _ 8B. 45, 14
        mov     dword [ebp-8H], eax                     ; 04B9 _ 89. 45, F8
        jmp     ?_008                                   ; 04BC _ EB, 1F

?_007:  mov     eax, dword [ebp-4H]                     ; 04BE _ 8B. 45, FC
        imul    eax, dword [ebp+0CH]                    ; 04C1 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 04C5 _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 04C7 _ 8B. 45, F8
        add     eax, edx                                ; 04CA _ 01. D0
        mov     edx, eax                                ; 04CC _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 04CE _ 8B. 45, 08
        add     edx, eax                                ; 04D1 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 04D3 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 04D7 _ 88. 02
        add     dword [ebp-8H], 1                       ; 04D9 _ 83. 45, F8, 01
?_008:  mov     eax, dword [ebp-8H]                     ; 04DD _ 8B. 45, F8
        cmp     eax, dword [ebp+1CH]                    ; 04E0 _ 3B. 45, 1C
        jle     ?_007                                   ; 04E3 _ 7E, D9
        add     dword [ebp-4H], 1                       ; 04E5 _ 83. 45, FC, 01
?_009:  mov     eax, dword [ebp-4H]                     ; 04E9 _ 8B. 45, FC
        cmp     eax, dword [ebp+20H]                    ; 04EC _ 3B. 45, 20
        jle     ?_006                                   ; 04EF _ 7E, C5
        nop                                             ; 04F1 _ 90
        leave                                           ; 04F2 _ C9
        ret                                             ; 04F3 _ C3
; boxfill8 End of function

showFont8:; Function begin
        push    ebp                                     ; 04F4 _ 55
        mov     ebp, esp                                ; 04F5 _ 89. E5
        sub     esp, 20                                 ; 04F7 _ 83. EC, 14
        mov     eax, dword [ebp+18H]                    ; 04FA _ 8B. 45, 18
        mov     byte [ebp-14H], al                      ; 04FD _ 88. 45, EC
        mov     dword [ebp-4H], 0                       ; 0500 _ C7. 45, FC, 00000000
        jmp     ?_019                                   ; 0507 _ E9, 0000016C

?_010:  mov     edx, dword [ebp-4H]                     ; 050C _ 8B. 55, FC
        mov     eax, dword [ebp+1CH]                    ; 050F _ 8B. 45, 1C
        add     eax, edx                                ; 0512 _ 01. D0
        movzx   eax, byte [eax]                         ; 0514 _ 0F B6. 00
        mov     byte [ebp-5H], al                       ; 0517 _ 88. 45, FB
        cmp     byte [ebp-5H], 0                        ; 051A _ 80. 7D, FB, 00
        jns     ?_011                                   ; 051E _ 79, 20
        mov     edx, dword [ebp+14H]                    ; 0520 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 0523 _ 8B. 45, FC
        add     eax, edx                                ; 0526 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 0528 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 052C _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 052E _ 8B. 45, 10
        add     eax, edx                                ; 0531 _ 01. D0
        mov     edx, eax                                ; 0533 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 0535 _ 8B. 45, 08
        add     edx, eax                                ; 0538 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 053A _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 053E _ 88. 02
?_011:  movsx   eax, byte [ebp-5H]                      ; 0540 _ 0F BE. 45, FB
        and     eax, 40H                                ; 0544 _ 83. E0, 40
        test    eax, eax                                ; 0547 _ 85. C0
        jz      ?_012                                   ; 0549 _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 054B _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 054E _ 8B. 45, FC
        add     eax, edx                                ; 0551 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 0553 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 0557 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 0559 _ 8B. 45, 10
        add     eax, edx                                ; 055C _ 01. D0
        lea     edx, [eax+1H]                           ; 055E _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 0561 _ 8B. 45, 08
        add     edx, eax                                ; 0564 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0566 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 056A _ 88. 02
?_012:  movsx   eax, byte [ebp-5H]                      ; 056C _ 0F BE. 45, FB
        and     eax, 20H                                ; 0570 _ 83. E0, 20
        test    eax, eax                                ; 0573 _ 85. C0
        jz      ?_013                                   ; 0575 _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 0577 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 057A _ 8B. 45, FC
        add     eax, edx                                ; 057D _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 057F _ 0F AF. 45, 0C
        mov     edx, eax                                ; 0583 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 0585 _ 8B. 45, 10
        add     eax, edx                                ; 0588 _ 01. D0
        lea     edx, [eax+2H]                           ; 058A _ 8D. 50, 02
        mov     eax, dword [ebp+8H]                     ; 058D _ 8B. 45, 08
        add     edx, eax                                ; 0590 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0592 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0596 _ 88. 02
?_013:  movsx   eax, byte [ebp-5H]                      ; 0598 _ 0F BE. 45, FB
        and     eax, 10H                                ; 059C _ 83. E0, 10
        test    eax, eax                                ; 059F _ 85. C0
        jz      ?_014                                   ; 05A1 _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 05A3 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 05A6 _ 8B. 45, FC
        add     eax, edx                                ; 05A9 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 05AB _ 0F AF. 45, 0C
        mov     edx, eax                                ; 05AF _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 05B1 _ 8B. 45, 10
        add     eax, edx                                ; 05B4 _ 01. D0
        lea     edx, [eax+3H]                           ; 05B6 _ 8D. 50, 03
        mov     eax, dword [ebp+8H]                     ; 05B9 _ 8B. 45, 08
        add     edx, eax                                ; 05BC _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 05BE _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 05C2 _ 88. 02
?_014:  movsx   eax, byte [ebp-5H]                      ; 05C4 _ 0F BE. 45, FB
        and     eax, 08H                                ; 05C8 _ 83. E0, 08
        test    eax, eax                                ; 05CB _ 85. C0
        jz      ?_015                                   ; 05CD _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 05CF _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 05D2 _ 8B. 45, FC
        add     eax, edx                                ; 05D5 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 05D7 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 05DB _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 05DD _ 8B. 45, 10
        add     eax, edx                                ; 05E0 _ 01. D0
        lea     edx, [eax+4H]                           ; 05E2 _ 8D. 50, 04
        mov     eax, dword [ebp+8H]                     ; 05E5 _ 8B. 45, 08
        add     edx, eax                                ; 05E8 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 05EA _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 05EE _ 88. 02
?_015:  movsx   eax, byte [ebp-5H]                      ; 05F0 _ 0F BE. 45, FB
        and     eax, 04H                                ; 05F4 _ 83. E0, 04
        test    eax, eax                                ; 05F7 _ 85. C0
        jz      ?_016                                   ; 05F9 _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 05FB _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 05FE _ 8B. 45, FC
        add     eax, edx                                ; 0601 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 0603 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 0607 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 0609 _ 8B. 45, 10
        add     eax, edx                                ; 060C _ 01. D0
        lea     edx, [eax+5H]                           ; 060E _ 8D. 50, 05
        mov     eax, dword [ebp+8H]                     ; 0611 _ 8B. 45, 08
        add     edx, eax                                ; 0614 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0616 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 061A _ 88. 02
?_016:  movsx   eax, byte [ebp-5H]                      ; 061C _ 0F BE. 45, FB
        and     eax, 02H                                ; 0620 _ 83. E0, 02
        test    eax, eax                                ; 0623 _ 85. C0
        jz      ?_017                                   ; 0625 _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 0627 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 062A _ 8B. 45, FC
        add     eax, edx                                ; 062D _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 062F _ 0F AF. 45, 0C
        mov     edx, eax                                ; 0633 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 0635 _ 8B. 45, 10
        add     eax, edx                                ; 0638 _ 01. D0
        lea     edx, [eax+6H]                           ; 063A _ 8D. 50, 06
        mov     eax, dword [ebp+8H]                     ; 063D _ 8B. 45, 08
        add     edx, eax                                ; 0640 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0642 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0646 _ 88. 02
?_017:  movsx   eax, byte [ebp-5H]                      ; 0648 _ 0F BE. 45, FB
        and     eax, 01H                                ; 064C _ 83. E0, 01
        test    eax, eax                                ; 064F _ 85. C0
        jz      ?_018                                   ; 0651 _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 0653 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 0656 _ 8B. 45, FC
        add     eax, edx                                ; 0659 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 065B _ 0F AF. 45, 0C
        mov     edx, eax                                ; 065F _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 0661 _ 8B. 45, 10
        add     eax, edx                                ; 0664 _ 01. D0
        lea     edx, [eax+7H]                           ; 0666 _ 8D. 50, 07
        mov     eax, dword [ebp+8H]                     ; 0669 _ 8B. 45, 08
        add     edx, eax                                ; 066C _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 066E _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0672 _ 88. 02
?_018:  add     dword [ebp-4H], 1                       ; 0674 _ 83. 45, FC, 01
?_019:  cmp     dword [ebp-4H], 15                      ; 0678 _ 83. 7D, FC, 0F
        jle     ?_010                                   ; 067C _ 0F 8E, FFFFFE8A
        nop                                             ; 0682 _ 90
        leave                                           ; 0683 _ C9
        ret                                             ; 0684 _ C3
; showFont8 End of function



fontA:                                                  ; oword
        db 00H, 18H, 18H, 18H, 18H, 24H, 24H, 24H       ; 0000 _ .....$$$
        db 24H, 7EH, 42H, 42H, 42H, 0E7H, 00H, 00H      ; 0008 _ $~BBB...
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0010 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0018 _ ........

table_rgb.1481:                                         ; byte
        db 00H, 00H, 00H, 0FFH, 00H, 00H, 00H, 0FFH     ; 0020 _ ........
        db 00H, 0FFH, 0FFH, 00H, 00H, 00H, 0FFH, 0FFH   ; 0028 _ ........
        db 00H, 0FFH, 00H, 0FFH, 0FFH, 0FFH, 0FFH, 0FFH ; 0030 _ ........
        db 0C6H, 0C6H, 0C6H, 84H, 00H, 00H, 00H, 84H    ; 0038 _ ........
        db 00H, 84H, 84H, 00H, 00H, 00H, 84H, 84H       ; 0040 _ ........
        db 00H, 84H, 00H, 84H, 84H, 84H, 84H, 84H       ; 0048 _ ........





?_020:                                                  ; byte
        db 53H, 68H, 6FH, 77H, 20H, 6DH, 79H, 20H       ; 0000 _ Show my 
        db 53H, 74H, 72H, 69H, 6EH, 67H, 00H            ; 0008 _ String.


