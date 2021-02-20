; Disassembly of file: write_vga_desktop_systemFont.o
; Tue Jan 26 16:23:13 2021
; Mode: 32 bits
; Syntax: YASM/NASM
; Instruction set: 80386


global CMain: function
global initBootInfo: function
global init_palette: function
global set_palette: function
global boxfill8: function
global showFont8: function

extern io_store_eflags                                  ; near
extern io_out8                                          ; near
extern io_cli                                           ; near
extern io_load_eflags                                   ; near
extern io_hlt                                           ; near
extern systemFont                                       ; byte


SECTION .text   align=1 execute                         ; section number 1, code

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
        mov     eax, systemFont+410H                    ; 0279 _ B8, 00000410(d)
        sub     esp, 8                                  ; 027E _ 83. EC, 08
        push    eax                                     ; 0281 _ 50
        push    7                                       ; 0282 _ 6A, 07
        push    8                                       ; 0284 _ 6A, 08
        push    8                                       ; 0286 _ 6A, 08
        push    dword [ebp-1CH]                         ; 0288 _ FF. 75, E4
        push    dword [ebp-20H]                         ; 028B _ FF. 75, E0
        call    showFont8                               ; 028E _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0293 _ 83. C4, 20
        mov     eax, systemFont+420H                    ; 0296 _ B8, 00000420(d)
        sub     esp, 8                                  ; 029B _ 83. EC, 08
        push    eax                                     ; 029E _ 50
        push    7                                       ; 029F _ 6A, 07
        push    8                                       ; 02A1 _ 6A, 08
        push    16                                      ; 02A3 _ 6A, 10
        push    dword [ebp-1CH]                         ; 02A5 _ FF. 75, E4
        push    dword [ebp-20H]                         ; 02A8 _ FF. 75, E0
        call    showFont8                               ; 02AB _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 02B0 _ 83. C4, 20
        mov     eax, systemFont+430H                    ; 02B3 _ B8, 00000430(d)
        sub     esp, 8                                  ; 02B8 _ 83. EC, 08
        push    eax                                     ; 02BB _ 50
        push    7                                       ; 02BC _ 6A, 07
        push    8                                       ; 02BE _ 6A, 08
        push    24                                      ; 02C0 _ 6A, 18
        push    dword [ebp-1CH]                         ; 02C2 _ FF. 75, E4
        push    dword [ebp-20H]                         ; 02C5 _ FF. 75, E0
        call    showFont8                               ; 02C8 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 02CD _ 83. C4, 20
        mov     eax, systemFont+310H                    ; 02D0 _ B8, 00000310(d)
        sub     esp, 8                                  ; 02D5 _ 83. EC, 08
        push    eax                                     ; 02D8 _ 50
        push    7                                       ; 02D9 _ 6A, 07
        push    8                                       ; 02DB _ 6A, 08
        push    32                                      ; 02DD _ 6A, 20
        push    dword [ebp-1CH]                         ; 02DF _ FF. 75, E4
        push    dword [ebp-20H]                         ; 02E2 _ FF. 75, E0
        call    showFont8                               ; 02E5 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 02EA _ 83. C4, 20
        mov     eax, systemFont+320H                    ; 02ED _ B8, 00000320(d)
        sub     esp, 8                                  ; 02F2 _ 83. EC, 08
        push    eax                                     ; 02F5 _ 50
        push    7                                       ; 02F6 _ 6A, 07
        push    8                                       ; 02F8 _ 6A, 08
        push    48                                      ; 02FA _ 6A, 30
        push    dword [ebp-1CH]                         ; 02FC _ FF. 75, E4
        push    dword [ebp-20H]                         ; 02FF _ FF. 75, E0
        call    showFont8                               ; 0302 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0307 _ 83. C4, 20
        mov     eax, systemFont+330H                    ; 030A _ B8, 00000330(d)
        sub     esp, 8                                  ; 030F _ 83. EC, 08
        push    eax                                     ; 0312 _ 50
        push    7                                       ; 0313 _ 6A, 07
        push    8                                       ; 0315 _ 6A, 08
        push    64                                      ; 0317 _ 6A, 40
        push    dword [ebp-1CH]                         ; 0319 _ FF. 75, E4
        push    dword [ebp-20H]                         ; 031C _ FF. 75, E0
        call    showFont8                               ; 031F _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0324 _ 83. C4, 20
?_001:  call    io_hlt                                  ; 0327 _ E8, FFFFFFFC(rel)
        jmp     ?_001                                   ; 032C _ EB, F9
; CMain End of function

initBootInfo:; Function begin
        push    ebp                                     ; 032E _ 55
        mov     ebp, esp                                ; 032F _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 0331 _ 8B. 45, 08
        mov     dword [eax], 655360                     ; 0334 _ C7. 00, 000A0000
        mov     eax, dword [ebp+8H]                     ; 033A _ 8B. 45, 08
; Note: Length-changing prefix causes delay on Intel processors
        mov     word [eax+4H], 320                      ; 033D _ 66: C7. 40, 04, 0140
        mov     eax, dword [ebp+8H]                     ; 0343 _ 8B. 45, 08
; Note: Length-changing prefix causes delay on Intel processors
        mov     word [eax+6H], 200                      ; 0346 _ 66: C7. 40, 06, 00C8
        nop                                             ; 034C _ 90
        pop     ebp                                     ; 034D _ 5D
        ret                                             ; 034E _ C3
; initBootInfo End of function

init_palette:; Function begin
        push    ebp                                     ; 034F _ 55
        mov     ebp, esp                                ; 0350 _ 89. E5
        sub     esp, 8                                  ; 0352 _ 83. EC, 08
        sub     esp, 4                                  ; 0355 _ 83. EC, 04
        push    table_rgb.1463                          ; 0358 _ 68, 00000020(d)
        push    15                                      ; 035D _ 6A, 0F
        push    0                                       ; 035F _ 6A, 00
        call    set_palette                             ; 0361 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0366 _ 83. C4, 10
        nop                                             ; 0369 _ 90
        leave                                           ; 036A _ C9
        ret                                             ; 036B _ C3
; init_palette End of function

set_palette:; Function begin
        push    ebp                                     ; 036C _ 55
        mov     ebp, esp                                ; 036D _ 89. E5
        sub     esp, 24                                 ; 036F _ 83. EC, 18
        call    io_load_eflags                          ; 0372 _ E8, FFFFFFFC(rel)
        mov     dword [ebp-0CH], eax                    ; 0377 _ 89. 45, F4
        call    io_cli                                  ; 037A _ E8, FFFFFFFC(rel)
        sub     esp, 8                                  ; 037F _ 83. EC, 08
        push    dword [ebp+8H]                          ; 0382 _ FF. 75, 08
        push    968                                     ; 0385 _ 68, 000003C8
        call    io_out8                                 ; 038A _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 038F _ 83. C4, 10
        mov     eax, dword [ebp+8H]                     ; 0392 _ 8B. 45, 08
        mov     dword [ebp-10H], eax                    ; 0395 _ 89. 45, F0
        jmp     ?_003                                   ; 0398 _ EB, 65

?_002:  mov     eax, dword [ebp+10H]                    ; 039A _ 8B. 45, 10
        movzx   eax, byte [eax]                         ; 039D _ 0F B6. 00
        shr     al, 2                                   ; 03A0 _ C0. E8, 02
        movzx   eax, al                                 ; 03A3 _ 0F B6. C0
        sub     esp, 8                                  ; 03A6 _ 83. EC, 08
        push    eax                                     ; 03A9 _ 50
        push    969                                     ; 03AA _ 68, 000003C9
        call    io_out8                                 ; 03AF _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 03B4 _ 83. C4, 10
        mov     eax, dword [ebp+10H]                    ; 03B7 _ 8B. 45, 10
        add     eax, 1                                  ; 03BA _ 83. C0, 01
        movzx   eax, byte [eax]                         ; 03BD _ 0F B6. 00
        shr     al, 2                                   ; 03C0 _ C0. E8, 02
        movzx   eax, al                                 ; 03C3 _ 0F B6. C0
        sub     esp, 8                                  ; 03C6 _ 83. EC, 08
        push    eax                                     ; 03C9 _ 50
        push    969                                     ; 03CA _ 68, 000003C9
        call    io_out8                                 ; 03CF _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 03D4 _ 83. C4, 10
        mov     eax, dword [ebp+10H]                    ; 03D7 _ 8B. 45, 10
        add     eax, 2                                  ; 03DA _ 83. C0, 02
        movzx   eax, byte [eax]                         ; 03DD _ 0F B6. 00
        shr     al, 2                                   ; 03E0 _ C0. E8, 02
        movzx   eax, al                                 ; 03E3 _ 0F B6. C0
        sub     esp, 8                                  ; 03E6 _ 83. EC, 08
        push    eax                                     ; 03E9 _ 50
        push    969                                     ; 03EA _ 68, 000003C9
        call    io_out8                                 ; 03EF _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 03F4 _ 83. C4, 10
        add     dword [ebp+10H], 3                      ; 03F7 _ 83. 45, 10, 03
        add     dword [ebp-10H], 1                      ; 03FB _ 83. 45, F0, 01
?_003:  mov     eax, dword [ebp-10H]                    ; 03FF _ 8B. 45, F0
        cmp     eax, dword [ebp+0CH]                    ; 0402 _ 3B. 45, 0C
        jle     ?_002                                   ; 0405 _ 7E, 93
        sub     esp, 12                                 ; 0407 _ 83. EC, 0C
        push    dword [ebp-0CH]                         ; 040A _ FF. 75, F4
        call    io_store_eflags                         ; 040D _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0412 _ 83. C4, 10
        nop                                             ; 0415 _ 90
        leave                                           ; 0416 _ C9
        ret                                             ; 0417 _ C3
; set_palette End of function

boxfill8:; Function begin
        push    ebp                                     ; 0418 _ 55
        mov     ebp, esp                                ; 0419 _ 89. E5
        sub     esp, 20                                 ; 041B _ 83. EC, 14
        mov     eax, dword [ebp+10H]                    ; 041E _ 8B. 45, 10
        mov     byte [ebp-14H], al                      ; 0421 _ 88. 45, EC
        mov     eax, dword [ebp+18H]                    ; 0424 _ 8B. 45, 18
        mov     dword [ebp-4H], eax                     ; 0427 _ 89. 45, FC
        jmp     ?_007                                   ; 042A _ EB, 33

?_004:  mov     eax, dword [ebp+14H]                    ; 042C _ 8B. 45, 14
        mov     dword [ebp-8H], eax                     ; 042F _ 89. 45, F8
        jmp     ?_006                                   ; 0432 _ EB, 1F

?_005:  mov     eax, dword [ebp-4H]                     ; 0434 _ 8B. 45, FC
        imul    eax, dword [ebp+0CH]                    ; 0437 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 043B _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 043D _ 8B. 45, F8
        add     eax, edx                                ; 0440 _ 01. D0
        mov     edx, eax                                ; 0442 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 0444 _ 8B. 45, 08
        add     edx, eax                                ; 0447 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0449 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 044D _ 88. 02
        add     dword [ebp-8H], 1                       ; 044F _ 83. 45, F8, 01
?_006:  mov     eax, dword [ebp-8H]                     ; 0453 _ 8B. 45, F8
        cmp     eax, dword [ebp+1CH]                    ; 0456 _ 3B. 45, 1C
        jle     ?_005                                   ; 0459 _ 7E, D9
        add     dword [ebp-4H], 1                       ; 045B _ 83. 45, FC, 01
?_007:  mov     eax, dword [ebp-4H]                     ; 045F _ 8B. 45, FC
        cmp     eax, dword [ebp+20H]                    ; 0462 _ 3B. 45, 20
        jle     ?_004                                   ; 0465 _ 7E, C5
        nop                                             ; 0467 _ 90
        leave                                           ; 0468 _ C9
        ret                                             ; 0469 _ C3
; boxfill8 End of function

showFont8:; Function begin
        push    ebp                                     ; 046A _ 55
        mov     ebp, esp                                ; 046B _ 89. E5
        sub     esp, 20                                 ; 046D _ 83. EC, 14
        mov     eax, dword [ebp+18H]                    ; 0470 _ 8B. 45, 18
        mov     byte [ebp-14H], al                      ; 0473 _ 88. 45, EC
        mov     dword [ebp-4H], 0                       ; 0476 _ C7. 45, FC, 00000000
        jmp     ?_017                                   ; 047D _ E9, 0000016C

?_008:  mov     edx, dword [ebp-4H]                     ; 0482 _ 8B. 55, FC
        mov     eax, dword [ebp+1CH]                    ; 0485 _ 8B. 45, 1C
        add     eax, edx                                ; 0488 _ 01. D0
        movzx   eax, byte [eax]                         ; 048A _ 0F B6. 00
        mov     byte [ebp-5H], al                       ; 048D _ 88. 45, FB
        cmp     byte [ebp-5H], 0                        ; 0490 _ 80. 7D, FB, 00
        jns     ?_009                                   ; 0494 _ 79, 20
        mov     edx, dword [ebp+14H]                    ; 0496 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 0499 _ 8B. 45, FC
        add     eax, edx                                ; 049C _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 049E _ 0F AF. 45, 0C
        mov     edx, eax                                ; 04A2 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 04A4 _ 8B. 45, 10
        add     eax, edx                                ; 04A7 _ 01. D0
        mov     edx, eax                                ; 04A9 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 04AB _ 8B. 45, 08
        add     edx, eax                                ; 04AE _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 04B0 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 04B4 _ 88. 02
?_009:  movsx   eax, byte [ebp-5H]                      ; 04B6 _ 0F BE. 45, FB
        and     eax, 40H                                ; 04BA _ 83. E0, 40
        test    eax, eax                                ; 04BD _ 85. C0
        jz      ?_010                                   ; 04BF _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 04C1 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 04C4 _ 8B. 45, FC
        add     eax, edx                                ; 04C7 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 04C9 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 04CD _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 04CF _ 8B. 45, 10
        add     eax, edx                                ; 04D2 _ 01. D0
        lea     edx, [eax+1H]                           ; 04D4 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 04D7 _ 8B. 45, 08
        add     edx, eax                                ; 04DA _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 04DC _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 04E0 _ 88. 02
?_010:  movsx   eax, byte [ebp-5H]                      ; 04E2 _ 0F BE. 45, FB
        and     eax, 20H                                ; 04E6 _ 83. E0, 20
        test    eax, eax                                ; 04E9 _ 85. C0
        jz      ?_011                                   ; 04EB _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 04ED _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 04F0 _ 8B. 45, FC
        add     eax, edx                                ; 04F3 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 04F5 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 04F9 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 04FB _ 8B. 45, 10
        add     eax, edx                                ; 04FE _ 01. D0
        lea     edx, [eax+2H]                           ; 0500 _ 8D. 50, 02
        mov     eax, dword [ebp+8H]                     ; 0503 _ 8B. 45, 08
        add     edx, eax                                ; 0506 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0508 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 050C _ 88. 02
?_011:  movsx   eax, byte [ebp-5H]                      ; 050E _ 0F BE. 45, FB
        and     eax, 10H                                ; 0512 _ 83. E0, 10
        test    eax, eax                                ; 0515 _ 85. C0
        jz      ?_012                                   ; 0517 _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 0519 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 051C _ 8B. 45, FC
        add     eax, edx                                ; 051F _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 0521 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 0525 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 0527 _ 8B. 45, 10
        add     eax, edx                                ; 052A _ 01. D0
        lea     edx, [eax+3H]                           ; 052C _ 8D. 50, 03
        mov     eax, dword [ebp+8H]                     ; 052F _ 8B. 45, 08
        add     edx, eax                                ; 0532 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0534 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0538 _ 88. 02
?_012:  movsx   eax, byte [ebp-5H]                      ; 053A _ 0F BE. 45, FB
        and     eax, 08H                                ; 053E _ 83. E0, 08
        test    eax, eax                                ; 0541 _ 85. C0
        jz      ?_013                                   ; 0543 _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 0545 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 0548 _ 8B. 45, FC
        add     eax, edx                                ; 054B _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 054D _ 0F AF. 45, 0C
        mov     edx, eax                                ; 0551 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 0553 _ 8B. 45, 10
        add     eax, edx                                ; 0556 _ 01. D0
        lea     edx, [eax+4H]                           ; 0558 _ 8D. 50, 04
        mov     eax, dword [ebp+8H]                     ; 055B _ 8B. 45, 08
        add     edx, eax                                ; 055E _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0560 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0564 _ 88. 02
?_013:  movsx   eax, byte [ebp-5H]                      ; 0566 _ 0F BE. 45, FB
        and     eax, 04H                                ; 056A _ 83. E0, 04
        test    eax, eax                                ; 056D _ 85. C0
        jz      ?_014                                   ; 056F _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 0571 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 0574 _ 8B. 45, FC
        add     eax, edx                                ; 0577 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 0579 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 057D _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 057F _ 8B. 45, 10
        add     eax, edx                                ; 0582 _ 01. D0
        lea     edx, [eax+5H]                           ; 0584 _ 8D. 50, 05
        mov     eax, dword [ebp+8H]                     ; 0587 _ 8B. 45, 08
        add     edx, eax                                ; 058A _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 058C _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0590 _ 88. 02
?_014:  movsx   eax, byte [ebp-5H]                      ; 0592 _ 0F BE. 45, FB
        and     eax, 02H                                ; 0596 _ 83. E0, 02
        test    eax, eax                                ; 0599 _ 85. C0
        jz      ?_015                                   ; 059B _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 059D _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 05A0 _ 8B. 45, FC
        add     eax, edx                                ; 05A3 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 05A5 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 05A9 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 05AB _ 8B. 45, 10
        add     eax, edx                                ; 05AE _ 01. D0
        lea     edx, [eax+6H]                           ; 05B0 _ 8D. 50, 06
        mov     eax, dword [ebp+8H]                     ; 05B3 _ 8B. 45, 08
        add     edx, eax                                ; 05B6 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 05B8 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 05BC _ 88. 02
?_015:  movsx   eax, byte [ebp-5H]                      ; 05BE _ 0F BE. 45, FB
        and     eax, 01H                                ; 05C2 _ 83. E0, 01
        test    eax, eax                                ; 05C5 _ 85. C0
        jz      ?_016                                   ; 05C7 _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 05C9 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 05CC _ 8B. 45, FC
        add     eax, edx                                ; 05CF _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 05D1 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 05D5 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 05D7 _ 8B. 45, 10
        add     eax, edx                                ; 05DA _ 01. D0
        lea     edx, [eax+7H]                           ; 05DC _ 8D. 50, 07
        mov     eax, dword [ebp+8H]                     ; 05DF _ 8B. 45, 08
        add     edx, eax                                ; 05E2 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 05E4 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 05E8 _ 88. 02
?_016:  add     dword [ebp-4H], 1                       ; 05EA _ 83. 45, FC, 01
?_017:  cmp     dword [ebp-4H], 15                      ; 05EE _ 83. 7D, FC, 0F
        jle     ?_008                                   ; 05F2 _ 0F 8E, FFFFFE8A
        nop                                             ; 05F8 _ 90
        leave                                           ; 05F9 _ C9
        ret                                             ; 05FA _ C3
; showFont8 End of function


SECTION .data   align=32 noexecute                      ; section number 2, data

fontA:                                                  ; oword
        db 00H, 18H, 18H, 18H, 18H, 24H, 24H, 24H       ; 0000 _ .....$$$
        db 24H, 7EH, 42H, 42H, 42H, 0E7H, 00H, 00H      ; 0008 _ $~BBB...
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0010 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0018 _ ........

table_rgb.1463:                                         ; byte
        db 00H, 00H, 00H, 0FFH, 00H, 00H, 00H, 0FFH     ; 0020 _ ........
        db 00H, 0FFH, 0FFH, 00H, 00H, 00H, 0FFH, 0FFH   ; 0028 _ ........
        db 00H, 0FFH, 00H, 0FFH, 0FFH, 0FFH, 0FFH, 0FFH ; 0030 _ ........
        db 0C6H, 0C6H, 0C6H, 84H, 00H, 00H, 00H, 84H    ; 0038 _ ........
        db 00H, 84H, 84H, 00H, 00H, 00H, 84H, 84H       ; 0040 _ ........
        db 00H, 84H, 00H, 84H, 84H, 84H, 84H, 84H       ; 0048 _ ........


SECTION .bss    align=1 noexecute                       ; section number 3, bss


