; Disassembly of file: write_vga_desktop_mouse_move.o
; Tue Feb 23 22:06:55 2021
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
        movzx   eax, word [?_062]                       ; 001F _ 0F B7. 05, 00000104(d)
        cwde                                            ; 0026 _ 98
        mov     dword [ebp-10H], eax                    ; 0027 _ 89. 45, F0
        movzx   eax, word [?_063]                       ; 002A _ 0F B7. 05, 00000106(d)
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
        sub     esp, 8                                  ; 0070 _ 83. EC, 08
        push    14                                      ; 0073 _ 6A, 0E
        push    mcursor                                 ; 0075 _ 68, 00000000(d)
        call    init_mouse_cursor                       ; 007A _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 007F _ 83. C4, 10
        call    io_sti                                  ; 0082 _ E8, FFFFFFFC(rel)
        call    enable_mouse                            ; 0087 _ E8, FFFFFFFC(rel)
?_001:  call    io_cli                                  ; 008C _ E8, FFFFFFFC(rel)
        sub     esp, 12                                 ; 0091 _ 83. EC, 0C
        push    keyInfo                                 ; 0094 _ 68, 00000108(d)
        call    fifo8_status                            ; 0099 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 009E _ 83. C4, 10
        mov     ebx, eax                                ; 00A1 _ 89. C3
        sub     esp, 12                                 ; 00A3 _ 83. EC, 0C
        push    mouseInfo                               ; 00A6 _ 68, 00000120(d)
        call    fifo8_status                            ; 00AB _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 00B0 _ 83. C4, 10
        add     eax, ebx                                ; 00B3 _ 01. D8
        test    eax, eax                                ; 00B5 _ 85. C0
        jnz     ?_002                                   ; 00B7 _ 75, 07
        call    io_stihlt                               ; 00B9 _ E8, FFFFFFFC(rel)
        jmp     ?_001                                   ; 00BE _ EB, CC

?_002:  sub     esp, 12                                 ; 00C0 _ 83. EC, 0C
        push    keyInfo                                 ; 00C3 _ 68, 00000108(d)
        call    fifo8_status                            ; 00C8 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 00CD _ 83. C4, 10
        test    eax, eax                                ; 00D0 _ 85. C0
        jz      ?_003                                   ; 00D2 _ 74, 07
        call    showKeyboardInfo                        ; 00D4 _ E8, FFFFFFFC(rel)
        jmp     ?_001                                   ; 00D9 _ EB, B1

?_003:  sub     esp, 12                                 ; 00DB _ 83. EC, 0C
        push    mouseInfo                               ; 00DE _ 68, 00000120(d)
        call    fifo8_status                            ; 00E3 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 00E8 _ 83. C4, 10
        test    eax, eax                                ; 00EB _ 85. C0
        jz      ?_001                                   ; 00ED _ 74, 9D
        call    showMouseInfo                           ; 00EF _ E8, FFFFFFFC(rel)
        jmp     ?_001                                   ; 00F4 _ EB, 96
; CMain End of function

initBootInfo:; Function begin
        push    ebp                                     ; 00F6 _ 55
        mov     ebp, esp                                ; 00F7 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 00F9 _ 8B. 45, 08
        mov     dword [eax], 655360                     ; 00FC _ C7. 00, 000A0000
        mov     eax, dword [ebp+8H]                     ; 0102 _ 8B. 45, 08
; Note: Length-changing prefix causes delay on Intel processors
        mov     word [eax+4H], 320                      ; 0105 _ 66: C7. 40, 04, 0140
        mov     eax, dword [ebp+8H]                     ; 010B _ 8B. 45, 08
; Note: Length-changing prefix causes delay on Intel processors
        mov     word [eax+6H], 200                      ; 010E _ 66: C7. 40, 06, 00C8
        nop                                             ; 0114 _ 90
        pop     ebp                                     ; 0115 _ 5D
        ret                                             ; 0116 _ C3
; initBootInfo End of function

showString:; Function begin
        push    ebp                                     ; 0117 _ 55
        mov     ebp, esp                                ; 0118 _ 89. E5
        sub     esp, 24                                 ; 011A _ 83. EC, 18
        mov     eax, dword [ebp+18H]                    ; 011D _ 8B. 45, 18
        mov     byte [ebp-0CH], al                      ; 0120 _ 88. 45, F4
        jmp     ?_005                                   ; 0123 _ EB, 37

?_004:  mov     eax, dword [ebp+1CH]                    ; 0125 _ 8B. 45, 1C
        movzx   eax, byte [eax]                         ; 0128 _ 0F B6. 00
        movzx   eax, al                                 ; 012B _ 0F B6. C0
        shl     eax, 4                                  ; 012E _ C1. E0, 04
        lea     edx, [systemFont+eax]                   ; 0131 _ 8D. 90, 00000000(d)
        movsx   eax, byte [ebp-0CH]                     ; 0137 _ 0F BE. 45, F4
        sub     esp, 8                                  ; 013B _ 83. EC, 08
        push    edx                                     ; 013E _ 52
        push    eax                                     ; 013F _ 50
        push    dword [ebp+14H]                         ; 0140 _ FF. 75, 14
        push    dword [ebp+10H]                         ; 0143 _ FF. 75, 10
        push    dword [ebp+0CH]                         ; 0146 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 0149 _ FF. 75, 08
        call    showFont8                               ; 014C _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0151 _ 83. C4, 20
        add     dword [ebp+10H], 8                      ; 0154 _ 83. 45, 10, 08
        add     dword [ebp+1CH], 1                      ; 0158 _ 83. 45, 1C, 01
?_005:  mov     eax, dword [ebp+1CH]                    ; 015C _ 8B. 45, 1C
        movzx   eax, byte [eax]                         ; 015F _ 0F B6. 00
        test    al, al                                  ; 0162 _ 84. C0
        jnz     ?_004                                   ; 0164 _ 75, BF
        nop                                             ; 0166 _ 90
        leave                                           ; 0167 _ C9
        ret                                             ; 0168 _ C3
; showString End of function

init_palette:; Function begin
        push    ebp                                     ; 0169 _ 55
        mov     ebp, esp                                ; 016A _ 89. E5
        push    ebx                                     ; 016C _ 53
        sub     esp, 20                                 ; 016D _ 83. EC, 14
        mov     eax, dword [bootInfo]                   ; 0170 _ A1, 00000100(d)
        mov     dword [ebp-14H], eax                    ; 0175 _ 89. 45, EC
        movzx   eax, word [?_062]                       ; 0178 _ 0F B7. 05, 00000104(d)
        cwde                                            ; 017F _ 98
        mov     dword [ebp-10H], eax                    ; 0180 _ 89. 45, F0
        movzx   eax, word [?_063]                       ; 0183 _ 0F B7. 05, 00000106(d)
        cwde                                            ; 018A _ 98
        mov     dword [ebp-0CH], eax                    ; 018B _ 89. 45, F4
        sub     esp, 4                                  ; 018E _ 83. EC, 04
        push    table_rgb.1553                          ; 0191 _ 68, 00000020(d)
        push    15                                      ; 0196 _ 6A, 0F
        push    0                                       ; 0198 _ 6A, 00
        call    set_palette                             ; 019A _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 019F _ 83. C4, 10
        mov     eax, dword [ebp-0CH]                    ; 01A2 _ 8B. 45, F4
        lea     edx, [eax-1DH]                          ; 01A5 _ 8D. 50, E3
        mov     eax, dword [ebp-10H]                    ; 01A8 _ 8B. 45, F0
        sub     eax, 1                                  ; 01AB _ 83. E8, 01
        sub     esp, 4                                  ; 01AE _ 83. EC, 04
        push    edx                                     ; 01B1 _ 52
        push    eax                                     ; 01B2 _ 50
        push    0                                       ; 01B3 _ 6A, 00
        push    0                                       ; 01B5 _ 6A, 00
        push    14                                      ; 01B7 _ 6A, 0E
        push    dword [ebp-10H]                         ; 01B9 _ FF. 75, F0
        push    dword [ebp-14H]                         ; 01BC _ FF. 75, EC
        call    boxfill8                                ; 01BF _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 01C4 _ 83. C4, 20
        mov     eax, dword [ebp-0CH]                    ; 01C7 _ 8B. 45, F4
        lea     ecx, [eax-1CH]                          ; 01CA _ 8D. 48, E4
        mov     eax, dword [ebp-10H]                    ; 01CD _ 8B. 45, F0
        lea     edx, [eax-1H]                           ; 01D0 _ 8D. 50, FF
        mov     eax, dword [ebp-0CH]                    ; 01D3 _ 8B. 45, F4
        sub     eax, 28                                 ; 01D6 _ 83. E8, 1C
        sub     esp, 4                                  ; 01D9 _ 83. EC, 04
        push    ecx                                     ; 01DC _ 51
        push    edx                                     ; 01DD _ 52
        push    eax                                     ; 01DE _ 50
        push    0                                       ; 01DF _ 6A, 00
        push    8                                       ; 01E1 _ 6A, 08
        push    dword [ebp-10H]                         ; 01E3 _ FF. 75, F0
        push    dword [ebp-14H]                         ; 01E6 _ FF. 75, EC
        call    boxfill8                                ; 01E9 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 01EE _ 83. C4, 20
        mov     eax, dword [ebp-0CH]                    ; 01F1 _ 8B. 45, F4
        lea     ecx, [eax-1BH]                          ; 01F4 _ 8D. 48, E5
        mov     eax, dword [ebp-10H]                    ; 01F7 _ 8B. 45, F0
        lea     edx, [eax-1H]                           ; 01FA _ 8D. 50, FF
        mov     eax, dword [ebp-0CH]                    ; 01FD _ 8B. 45, F4
        sub     eax, 27                                 ; 0200 _ 83. E8, 1B
        sub     esp, 4                                  ; 0203 _ 83. EC, 04
        push    ecx                                     ; 0206 _ 51
        push    edx                                     ; 0207 _ 52
        push    eax                                     ; 0208 _ 50
        push    0                                       ; 0209 _ 6A, 00
        push    7                                       ; 020B _ 6A, 07
        push    dword [ebp-10H]                         ; 020D _ FF. 75, F0
        push    dword [ebp-14H]                         ; 0210 _ FF. 75, EC
        call    boxfill8                                ; 0213 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0218 _ 83. C4, 20
        mov     eax, dword [ebp-0CH]                    ; 021B _ 8B. 45, F4
        lea     ecx, [eax-1H]                           ; 021E _ 8D. 48, FF
        mov     eax, dword [ebp-10H]                    ; 0221 _ 8B. 45, F0
        lea     edx, [eax-1H]                           ; 0224 _ 8D. 50, FF
        mov     eax, dword [ebp-0CH]                    ; 0227 _ 8B. 45, F4
        sub     eax, 26                                 ; 022A _ 83. E8, 1A
        sub     esp, 4                                  ; 022D _ 83. EC, 04
        push    ecx                                     ; 0230 _ 51
        push    edx                                     ; 0231 _ 52
        push    eax                                     ; 0232 _ 50
        push    0                                       ; 0233 _ 6A, 00
        push    8                                       ; 0235 _ 6A, 08
        push    dword [ebp-10H]                         ; 0237 _ FF. 75, F0
        push    dword [ebp-14H]                         ; 023A _ FF. 75, EC
        call    boxfill8                                ; 023D _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0242 _ 83. C4, 20
        mov     eax, dword [ebp-0CH]                    ; 0245 _ 8B. 45, F4
        lea     edx, [eax-18H]                          ; 0248 _ 8D. 50, E8
        mov     eax, dword [ebp-0CH]                    ; 024B _ 8B. 45, F4
        sub     eax, 24                                 ; 024E _ 83. E8, 18
        sub     esp, 4                                  ; 0251 _ 83. EC, 04
        push    edx                                     ; 0254 _ 52
        push    59                                      ; 0255 _ 6A, 3B
        push    eax                                     ; 0257 _ 50
        push    3                                       ; 0258 _ 6A, 03
        push    7                                       ; 025A _ 6A, 07
        push    dword [ebp-10H]                         ; 025C _ FF. 75, F0
        push    dword [ebp-14H]                         ; 025F _ FF. 75, EC
        call    boxfill8                                ; 0262 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0267 _ 83. C4, 20
        mov     eax, dword [ebp-0CH]                    ; 026A _ 8B. 45, F4
        lea     edx, [eax-4H]                           ; 026D _ 8D. 50, FC
        mov     eax, dword [ebp-0CH]                    ; 0270 _ 8B. 45, F4
        sub     eax, 24                                 ; 0273 _ 83. E8, 18
        sub     esp, 4                                  ; 0276 _ 83. EC, 04
        push    edx                                     ; 0279 _ 52
        push    2                                       ; 027A _ 6A, 02
        push    eax                                     ; 027C _ 50
        push    2                                       ; 027D _ 6A, 02
        push    7                                       ; 027F _ 6A, 07
        push    dword [ebp-10H]                         ; 0281 _ FF. 75, F0
        push    dword [ebp-14H]                         ; 0284 _ FF. 75, EC
        call    boxfill8                                ; 0287 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 028C _ 83. C4, 20
        mov     eax, dword [ebp-0CH]                    ; 028F _ 8B. 45, F4
        lea     edx, [eax-4H]                           ; 0292 _ 8D. 50, FC
        mov     eax, dword [ebp-0CH]                    ; 0295 _ 8B. 45, F4
        sub     eax, 4                                  ; 0298 _ 83. E8, 04
        sub     esp, 4                                  ; 029B _ 83. EC, 04
        push    edx                                     ; 029E _ 52
        push    59                                      ; 029F _ 6A, 3B
        push    eax                                     ; 02A1 _ 50
        push    3                                       ; 02A2 _ 6A, 03
        push    15                                      ; 02A4 _ 6A, 0F
        push    dword [ebp-10H]                         ; 02A6 _ FF. 75, F0
        push    dword [ebp-14H]                         ; 02A9 _ FF. 75, EC
        call    boxfill8                                ; 02AC _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 02B1 _ 83. C4, 20
        mov     eax, dword [ebp-0CH]                    ; 02B4 _ 8B. 45, F4
        lea     edx, [eax-5H]                           ; 02B7 _ 8D. 50, FB
        mov     eax, dword [ebp-0CH]                    ; 02BA _ 8B. 45, F4
        sub     eax, 23                                 ; 02BD _ 83. E8, 17
        sub     esp, 4                                  ; 02C0 _ 83. EC, 04
        push    edx                                     ; 02C3 _ 52
        push    59                                      ; 02C4 _ 6A, 3B
        push    eax                                     ; 02C6 _ 50
        push    59                                      ; 02C7 _ 6A, 3B
        push    15                                      ; 02C9 _ 6A, 0F
        push    dword [ebp-10H]                         ; 02CB _ FF. 75, F0
        push    dword [ebp-14H]                         ; 02CE _ FF. 75, EC
        call    boxfill8                                ; 02D1 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 02D6 _ 83. C4, 20
        mov     eax, dword [ebp-0CH]                    ; 02D9 _ 8B. 45, F4
        lea     edx, [eax-3H]                           ; 02DC _ 8D. 50, FD
        mov     eax, dword [ebp-0CH]                    ; 02DF _ 8B. 45, F4
        sub     eax, 3                                  ; 02E2 _ 83. E8, 03
        sub     esp, 4                                  ; 02E5 _ 83. EC, 04
        push    edx                                     ; 02E8 _ 52
        push    59                                      ; 02E9 _ 6A, 3B
        push    eax                                     ; 02EB _ 50
        push    2                                       ; 02EC _ 6A, 02
        push    0                                       ; 02EE _ 6A, 00
        push    dword [ebp-10H]                         ; 02F0 _ FF. 75, F0
        push    dword [ebp-14H]                         ; 02F3 _ FF. 75, EC
        call    boxfill8                                ; 02F6 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 02FB _ 83. C4, 20
        mov     eax, dword [ebp-0CH]                    ; 02FE _ 8B. 45, F4
        lea     edx, [eax-3H]                           ; 0301 _ 8D. 50, FD
        mov     eax, dword [ebp-0CH]                    ; 0304 _ 8B. 45, F4
        sub     eax, 24                                 ; 0307 _ 83. E8, 18
        sub     esp, 4                                  ; 030A _ 83. EC, 04
        push    edx                                     ; 030D _ 52
        push    60                                      ; 030E _ 6A, 3C
        push    eax                                     ; 0310 _ 50
        push    60                                      ; 0311 _ 6A, 3C
        push    0                                       ; 0313 _ 6A, 00
        push    dword [ebp-10H]                         ; 0315 _ FF. 75, F0
        push    dword [ebp-14H]                         ; 0318 _ FF. 75, EC
        call    boxfill8                                ; 031B _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0320 _ 83. C4, 20
        mov     eax, dword [ebp-0CH]                    ; 0323 _ 8B. 45, F4
        lea     ebx, [eax-18H]                          ; 0326 _ 8D. 58, E8
        mov     eax, dword [ebp-10H]                    ; 0329 _ 8B. 45, F0
        lea     ecx, [eax-4H]                           ; 032C _ 8D. 48, FC
        mov     eax, dword [ebp-0CH]                    ; 032F _ 8B. 45, F4
        lea     edx, [eax-18H]                          ; 0332 _ 8D. 50, E8
        mov     eax, dword [ebp-10H]                    ; 0335 _ 8B. 45, F0
        sub     eax, 47                                 ; 0338 _ 83. E8, 2F
        sub     esp, 4                                  ; 033B _ 83. EC, 04
        push    ebx                                     ; 033E _ 53
        push    ecx                                     ; 033F _ 51
        push    edx                                     ; 0340 _ 52
        push    eax                                     ; 0341 _ 50
        push    15                                      ; 0342 _ 6A, 0F
        push    dword [ebp-10H]                         ; 0344 _ FF. 75, F0
        push    dword [ebp-14H]                         ; 0347 _ FF. 75, EC
        call    boxfill8                                ; 034A _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 034F _ 83. C4, 20
        mov     eax, dword [ebp-0CH]                    ; 0352 _ 8B. 45, F4
        lea     ebx, [eax-4H]                           ; 0355 _ 8D. 58, FC
        mov     eax, dword [ebp-10H]                    ; 0358 _ 8B. 45, F0
        lea     ecx, [eax-2FH]                          ; 035B _ 8D. 48, D1
        mov     eax, dword [ebp-0CH]                    ; 035E _ 8B. 45, F4
        lea     edx, [eax-17H]                          ; 0361 _ 8D. 50, E9
        mov     eax, dword [ebp-10H]                    ; 0364 _ 8B. 45, F0
        sub     eax, 47                                 ; 0367 _ 83. E8, 2F
        sub     esp, 4                                  ; 036A _ 83. EC, 04
        push    ebx                                     ; 036D _ 53
        push    ecx                                     ; 036E _ 51
        push    edx                                     ; 036F _ 52
        push    eax                                     ; 0370 _ 50
        push    15                                      ; 0371 _ 6A, 0F
        push    dword [ebp-10H]                         ; 0373 _ FF. 75, F0
        push    dword [ebp-14H]                         ; 0376 _ FF. 75, EC
        call    boxfill8                                ; 0379 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 037E _ 83. C4, 20
        mov     eax, dword [ebp-0CH]                    ; 0381 _ 8B. 45, F4
        lea     ebx, [eax-3H]                           ; 0384 _ 8D. 58, FD
        mov     eax, dword [ebp-10H]                    ; 0387 _ 8B. 45, F0
        lea     ecx, [eax-4H]                           ; 038A _ 8D. 48, FC
        mov     eax, dword [ebp-0CH]                    ; 038D _ 8B. 45, F4
        lea     edx, [eax-3H]                           ; 0390 _ 8D. 50, FD
        mov     eax, dword [ebp-10H]                    ; 0393 _ 8B. 45, F0
        sub     eax, 47                                 ; 0396 _ 83. E8, 2F
        sub     esp, 4                                  ; 0399 _ 83. EC, 04
        push    ebx                                     ; 039C _ 53
        push    ecx                                     ; 039D _ 51
        push    edx                                     ; 039E _ 52
        push    eax                                     ; 039F _ 50
        push    7                                       ; 03A0 _ 6A, 07
        push    dword [ebp-10H]                         ; 03A2 _ FF. 75, F0
        push    dword [ebp-14H]                         ; 03A5 _ FF. 75, EC
        call    boxfill8                                ; 03A8 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 03AD _ 83. C4, 20
        mov     eax, dword [ebp-0CH]                    ; 03B0 _ 8B. 45, F4
        lea     ebx, [eax-3H]                           ; 03B3 _ 8D. 58, FD
        mov     eax, dword [ebp-10H]                    ; 03B6 _ 8B. 45, F0
        lea     ecx, [eax-3H]                           ; 03B9 _ 8D. 48, FD
        mov     eax, dword [ebp-0CH]                    ; 03BC _ 8B. 45, F4
        lea     edx, [eax-18H]                          ; 03BF _ 8D. 50, E8
        mov     eax, dword [ebp-10H]                    ; 03C2 _ 8B. 45, F0
        sub     eax, 3                                  ; 03C5 _ 83. E8, 03
        sub     esp, 4                                  ; 03C8 _ 83. EC, 04
        push    ebx                                     ; 03CB _ 53
        push    ecx                                     ; 03CC _ 51
        push    edx                                     ; 03CD _ 52
        push    eax                                     ; 03CE _ 50
        push    7                                       ; 03CF _ 6A, 07
        push    dword [ebp-10H]                         ; 03D1 _ FF. 75, F0
        push    dword [ebp-14H]                         ; 03D4 _ FF. 75, EC
        call    boxfill8                                ; 03D7 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 03DC _ 83. C4, 20
        nop                                             ; 03DF _ 90
        mov     ebx, dword [ebp-4H]                     ; 03E0 _ 8B. 5D, FC
        leave                                           ; 03E3 _ C9
        ret                                             ; 03E4 _ C3
; init_palette End of function

set_palette:; Function begin
        push    ebp                                     ; 03E5 _ 55
        mov     ebp, esp                                ; 03E6 _ 89. E5
        sub     esp, 24                                 ; 03E8 _ 83. EC, 18
        call    io_load_eflags                          ; 03EB _ E8, FFFFFFFC(rel)
        mov     dword [ebp-0CH], eax                    ; 03F0 _ 89. 45, F4
        call    io_cli                                  ; 03F3 _ E8, FFFFFFFC(rel)
        sub     esp, 8                                  ; 03F8 _ 83. EC, 08
        push    dword [ebp+8H]                          ; 03FB _ FF. 75, 08
        push    968                                     ; 03FE _ 68, 000003C8
        call    io_out8                                 ; 0403 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0408 _ 83. C4, 10
        mov     eax, dword [ebp+8H]                     ; 040B _ 8B. 45, 08
        mov     dword [ebp-10H], eax                    ; 040E _ 89. 45, F0
        jmp     ?_007                                   ; 0411 _ EB, 65

?_006:  mov     eax, dword [ebp+10H]                    ; 0413 _ 8B. 45, 10
        movzx   eax, byte [eax]                         ; 0416 _ 0F B6. 00
        shr     al, 2                                   ; 0419 _ C0. E8, 02
        movzx   eax, al                                 ; 041C _ 0F B6. C0
        sub     esp, 8                                  ; 041F _ 83. EC, 08
        push    eax                                     ; 0422 _ 50
        push    969                                     ; 0423 _ 68, 000003C9
        call    io_out8                                 ; 0428 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 042D _ 83. C4, 10
        mov     eax, dword [ebp+10H]                    ; 0430 _ 8B. 45, 10
        add     eax, 1                                  ; 0433 _ 83. C0, 01
        movzx   eax, byte [eax]                         ; 0436 _ 0F B6. 00
        shr     al, 2                                   ; 0439 _ C0. E8, 02
        movzx   eax, al                                 ; 043C _ 0F B6. C0
        sub     esp, 8                                  ; 043F _ 83. EC, 08
        push    eax                                     ; 0442 _ 50
        push    969                                     ; 0443 _ 68, 000003C9
        call    io_out8                                 ; 0448 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 044D _ 83. C4, 10
        mov     eax, dword [ebp+10H]                    ; 0450 _ 8B. 45, 10
        add     eax, 2                                  ; 0453 _ 83. C0, 02
        movzx   eax, byte [eax]                         ; 0456 _ 0F B6. 00
        shr     al, 2                                   ; 0459 _ C0. E8, 02
        movzx   eax, al                                 ; 045C _ 0F B6. C0
        sub     esp, 8                                  ; 045F _ 83. EC, 08
        push    eax                                     ; 0462 _ 50
        push    969                                     ; 0463 _ 68, 000003C9
        call    io_out8                                 ; 0468 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 046D _ 83. C4, 10
        add     dword [ebp+10H], 3                      ; 0470 _ 83. 45, 10, 03
        add     dword [ebp-10H], 1                      ; 0474 _ 83. 45, F0, 01
?_007:  mov     eax, dword [ebp-10H]                    ; 0478 _ 8B. 45, F0
        cmp     eax, dword [ebp+0CH]                    ; 047B _ 3B. 45, 0C
        jle     ?_006                                   ; 047E _ 7E, 93
        sub     esp, 12                                 ; 0480 _ 83. EC, 0C
        push    dword [ebp-0CH]                         ; 0483 _ FF. 75, F4
        call    io_store_eflags                         ; 0486 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 048B _ 83. C4, 10
        nop                                             ; 048E _ 90
        leave                                           ; 048F _ C9
        ret                                             ; 0490 _ C3
; set_palette End of function

boxfill8:; Function begin
        push    ebp                                     ; 0491 _ 55
        mov     ebp, esp                                ; 0492 _ 89. E5
        sub     esp, 20                                 ; 0494 _ 83. EC, 14
        mov     eax, dword [ebp+10H]                    ; 0497 _ 8B. 45, 10
        mov     byte [ebp-14H], al                      ; 049A _ 88. 45, EC
        mov     eax, dword [ebp+18H]                    ; 049D _ 8B. 45, 18
        mov     dword [ebp-4H], eax                     ; 04A0 _ 89. 45, FC
        jmp     ?_011                                   ; 04A3 _ EB, 33

?_008:  mov     eax, dword [ebp+14H]                    ; 04A5 _ 8B. 45, 14
        mov     dword [ebp-8H], eax                     ; 04A8 _ 89. 45, F8
        jmp     ?_010                                   ; 04AB _ EB, 1F

?_009:  mov     eax, dword [ebp-4H]                     ; 04AD _ 8B. 45, FC
        imul    eax, dword [ebp+0CH]                    ; 04B0 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 04B4 _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 04B6 _ 8B. 45, F8
        add     eax, edx                                ; 04B9 _ 01. D0
        mov     edx, eax                                ; 04BB _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 04BD _ 8B. 45, 08
        add     edx, eax                                ; 04C0 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 04C2 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 04C6 _ 88. 02
        add     dword [ebp-8H], 1                       ; 04C8 _ 83. 45, F8, 01
?_010:  mov     eax, dword [ebp-8H]                     ; 04CC _ 8B. 45, F8
        cmp     eax, dword [ebp+1CH]                    ; 04CF _ 3B. 45, 1C
        jle     ?_009                                   ; 04D2 _ 7E, D9
        add     dword [ebp-4H], 1                       ; 04D4 _ 83. 45, FC, 01
?_011:  mov     eax, dword [ebp-4H]                     ; 04D8 _ 8B. 45, FC
        cmp     eax, dword [ebp+20H]                    ; 04DB _ 3B. 45, 20
        jle     ?_008                                   ; 04DE _ 7E, C5
        nop                                             ; 04E0 _ 90
        leave                                           ; 04E1 _ C9
        ret                                             ; 04E2 _ C3
; boxfill8 End of function

showFont8:; Function begin
        push    ebp                                     ; 04E3 _ 55
        mov     ebp, esp                                ; 04E4 _ 89. E5
        sub     esp, 20                                 ; 04E6 _ 83. EC, 14
        mov     eax, dword [ebp+18H]                    ; 04E9 _ 8B. 45, 18
        mov     byte [ebp-14H], al                      ; 04EC _ 88. 45, EC
        mov     dword [ebp-4H], 0                       ; 04EF _ C7. 45, FC, 00000000
        jmp     ?_021                                   ; 04F6 _ E9, 0000016C

?_012:  mov     edx, dword [ebp-4H]                     ; 04FB _ 8B. 55, FC
        mov     eax, dword [ebp+1CH]                    ; 04FE _ 8B. 45, 1C
        add     eax, edx                                ; 0501 _ 01. D0
        movzx   eax, byte [eax]                         ; 0503 _ 0F B6. 00
        mov     byte [ebp-5H], al                       ; 0506 _ 88. 45, FB
        cmp     byte [ebp-5H], 0                        ; 0509 _ 80. 7D, FB, 00
        jns     ?_013                                   ; 050D _ 79, 20
        mov     edx, dword [ebp+14H]                    ; 050F _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 0512 _ 8B. 45, FC
        add     eax, edx                                ; 0515 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 0517 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 051B _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 051D _ 8B. 45, 10
        add     eax, edx                                ; 0520 _ 01. D0
        mov     edx, eax                                ; 0522 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 0524 _ 8B. 45, 08
        add     edx, eax                                ; 0527 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0529 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 052D _ 88. 02
?_013:  movsx   eax, byte [ebp-5H]                      ; 052F _ 0F BE. 45, FB
        and     eax, 40H                                ; 0533 _ 83. E0, 40
        test    eax, eax                                ; 0536 _ 85. C0
        jz      ?_014                                   ; 0538 _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 053A _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 053D _ 8B. 45, FC
        add     eax, edx                                ; 0540 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 0542 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 0546 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 0548 _ 8B. 45, 10
        add     eax, edx                                ; 054B _ 01. D0
        lea     edx, [eax+1H]                           ; 054D _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 0550 _ 8B. 45, 08
        add     edx, eax                                ; 0553 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0555 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0559 _ 88. 02
?_014:  movsx   eax, byte [ebp-5H]                      ; 055B _ 0F BE. 45, FB
        and     eax, 20H                                ; 055F _ 83. E0, 20
        test    eax, eax                                ; 0562 _ 85. C0
        jz      ?_015                                   ; 0564 _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 0566 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 0569 _ 8B. 45, FC
        add     eax, edx                                ; 056C _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 056E _ 0F AF. 45, 0C
        mov     edx, eax                                ; 0572 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 0574 _ 8B. 45, 10
        add     eax, edx                                ; 0577 _ 01. D0
        lea     edx, [eax+2H]                           ; 0579 _ 8D. 50, 02
        mov     eax, dword [ebp+8H]                     ; 057C _ 8B. 45, 08
        add     edx, eax                                ; 057F _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0581 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0585 _ 88. 02
?_015:  movsx   eax, byte [ebp-5H]                      ; 0587 _ 0F BE. 45, FB
        and     eax, 10H                                ; 058B _ 83. E0, 10
        test    eax, eax                                ; 058E _ 85. C0
        jz      ?_016                                   ; 0590 _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 0592 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 0595 _ 8B. 45, FC
        add     eax, edx                                ; 0598 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 059A _ 0F AF. 45, 0C
        mov     edx, eax                                ; 059E _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 05A0 _ 8B. 45, 10
        add     eax, edx                                ; 05A3 _ 01. D0
        lea     edx, [eax+3H]                           ; 05A5 _ 8D. 50, 03
        mov     eax, dword [ebp+8H]                     ; 05A8 _ 8B. 45, 08
        add     edx, eax                                ; 05AB _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 05AD _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 05B1 _ 88. 02
?_016:  movsx   eax, byte [ebp-5H]                      ; 05B3 _ 0F BE. 45, FB
        and     eax, 08H                                ; 05B7 _ 83. E0, 08
        test    eax, eax                                ; 05BA _ 85. C0
        jz      ?_017                                   ; 05BC _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 05BE _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 05C1 _ 8B. 45, FC
        add     eax, edx                                ; 05C4 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 05C6 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 05CA _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 05CC _ 8B. 45, 10
        add     eax, edx                                ; 05CF _ 01. D0
        lea     edx, [eax+4H]                           ; 05D1 _ 8D. 50, 04
        mov     eax, dword [ebp+8H]                     ; 05D4 _ 8B. 45, 08
        add     edx, eax                                ; 05D7 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 05D9 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 05DD _ 88. 02
?_017:  movsx   eax, byte [ebp-5H]                      ; 05DF _ 0F BE. 45, FB
        and     eax, 04H                                ; 05E3 _ 83. E0, 04
        test    eax, eax                                ; 05E6 _ 85. C0
        jz      ?_018                                   ; 05E8 _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 05EA _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 05ED _ 8B. 45, FC
        add     eax, edx                                ; 05F0 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 05F2 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 05F6 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 05F8 _ 8B. 45, 10
        add     eax, edx                                ; 05FB _ 01. D0
        lea     edx, [eax+5H]                           ; 05FD _ 8D. 50, 05
        mov     eax, dword [ebp+8H]                     ; 0600 _ 8B. 45, 08
        add     edx, eax                                ; 0603 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0605 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0609 _ 88. 02
?_018:  movsx   eax, byte [ebp-5H]                      ; 060B _ 0F BE. 45, FB
        and     eax, 02H                                ; 060F _ 83. E0, 02
        test    eax, eax                                ; 0612 _ 85. C0
        jz      ?_019                                   ; 0614 _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 0616 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 0619 _ 8B. 45, FC
        add     eax, edx                                ; 061C _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 061E _ 0F AF. 45, 0C
        mov     edx, eax                                ; 0622 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 0624 _ 8B. 45, 10
        add     eax, edx                                ; 0627 _ 01. D0
        lea     edx, [eax+6H]                           ; 0629 _ 8D. 50, 06
        mov     eax, dword [ebp+8H]                     ; 062C _ 8B. 45, 08
        add     edx, eax                                ; 062F _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0631 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0635 _ 88. 02
?_019:  movsx   eax, byte [ebp-5H]                      ; 0637 _ 0F BE. 45, FB
        and     eax, 01H                                ; 063B _ 83. E0, 01
        test    eax, eax                                ; 063E _ 85. C0
        jz      ?_020                                   ; 0640 _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 0642 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 0645 _ 8B. 45, FC
        add     eax, edx                                ; 0648 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 064A _ 0F AF. 45, 0C
        mov     edx, eax                                ; 064E _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 0650 _ 8B. 45, 10
        add     eax, edx                                ; 0653 _ 01. D0
        lea     edx, [eax+7H]                           ; 0655 _ 8D. 50, 07
        mov     eax, dword [ebp+8H]                     ; 0658 _ 8B. 45, 08
        add     edx, eax                                ; 065B _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 065D _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0661 _ 88. 02
?_020:  add     dword [ebp-4H], 1                       ; 0663 _ 83. 45, FC, 01
?_021:  cmp     dword [ebp-4H], 15                      ; 0667 _ 83. 7D, FC, 0F
        jle     ?_012                                   ; 066B _ 0F 8E, FFFFFE8A
        nop                                             ; 0671 _ 90
        leave                                           ; 0672 _ C9
        ret                                             ; 0673 _ C3
; showFont8 End of function

init_mouse_cursor:; Function begin
        push    ebp                                     ; 0674 _ 55
        mov     ebp, esp                                ; 0675 _ 89. E5
        sub     esp, 56                                 ; 0677 _ 83. EC, 38
        mov     eax, dword [ebp+0CH]                    ; 067A _ 8B. 45, 0C
        mov     byte [ebp-2CH], al                      ; 067D _ 88. 45, D4
        mov     eax, dword [bootInfo]                   ; 0680 _ A1, 00000100(d)
        mov     dword [ebp-14H], eax                    ; 0685 _ 89. 45, EC
        movzx   eax, word [?_062]                       ; 0688 _ 0F B7. 05, 00000104(d)
        cwde                                            ; 068F _ 98
        mov     dword [ebp-10H], eax                    ; 0690 _ 89. 45, F0
        movzx   eax, word [?_063]                       ; 0693 _ 0F B7. 05, 00000106(d)
        cwde                                            ; 069A _ 98
        mov     dword [ebp-0CH], eax                    ; 069B _ 89. 45, F4
        mov     eax, dword [ebp-10H]                    ; 069E _ 8B. 45, F0
        sub     eax, 16                                 ; 06A1 _ 83. E8, 10
        mov     edx, eax                                ; 06A4 _ 89. C2
        shr     edx, 31                                 ; 06A6 _ C1. EA, 1F
        add     eax, edx                                ; 06A9 _ 01. D0
        sar     eax, 1                                  ; 06AB _ D1. F8
        mov     dword [mx], eax                         ; 06AD _ A3, 000001F0(d)
        mov     eax, dword [ebp-0CH]                    ; 06B2 _ 8B. 45, F4
        sub     eax, 16                                 ; 06B5 _ 83. E8, 10
        mov     edx, eax                                ; 06B8 _ 89. C2
        shr     edx, 31                                 ; 06BA _ C1. EA, 1F
        add     eax, edx                                ; 06BD _ 01. D0
        sar     eax, 1                                  ; 06BF _ D1. F8
        mov     dword [my], eax                         ; 06C1 _ A3, 000001F4(d)
        mov     dword [ebp-18H], 0                      ; 06C6 _ C7. 45, E8, 00000000
        jmp     ?_028                                   ; 06CD _ E9, 000000B1

?_022:  mov     dword [ebp-1CH], 0                      ; 06D2 _ C7. 45, E4, 00000000
        jmp     ?_027                                   ; 06D9 _ E9, 00000097

?_023:  mov     eax, dword [ebp-18H]                    ; 06DE _ 8B. 45, E8
        shl     eax, 4                                  ; 06E1 _ C1. E0, 04
        mov     edx, eax                                ; 06E4 _ 89. C2
        mov     eax, dword [ebp-1CH]                    ; 06E6 _ 8B. 45, E4
        add     eax, edx                                ; 06E9 _ 01. D0
        add     eax, cursor.1601                        ; 06EB _ 05, 00000060(d)
        movzx   eax, byte [eax]                         ; 06F0 _ 0F B6. 00
        cmp     al, 42                                  ; 06F3 _ 3C, 2A
        jnz     ?_024                                   ; 06F5 _ 75, 17
        mov     eax, dword [ebp-18H]                    ; 06F7 _ 8B. 45, E8
        shl     eax, 4                                  ; 06FA _ C1. E0, 04
        mov     edx, eax                                ; 06FD _ 89. C2
        mov     eax, dword [ebp-1CH]                    ; 06FF _ 8B. 45, E4
        add     eax, edx                                ; 0702 _ 01. D0
        mov     edx, eax                                ; 0704 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 0706 _ 8B. 45, 08
        add     eax, edx                                ; 0709 _ 01. D0
        mov     byte [eax], 0                           ; 070B _ C6. 00, 00
?_024:  mov     eax, dword [ebp-18H]                    ; 070E _ 8B. 45, E8
        shl     eax, 4                                  ; 0711 _ C1. E0, 04
        mov     edx, eax                                ; 0714 _ 89. C2
        mov     eax, dword [ebp-1CH]                    ; 0716 _ 8B. 45, E4
        add     eax, edx                                ; 0719 _ 01. D0
        add     eax, cursor.1601                        ; 071B _ 05, 00000060(d)
        movzx   eax, byte [eax]                         ; 0720 _ 0F B6. 00
        cmp     al, 79                                  ; 0723 _ 3C, 4F
        jnz     ?_025                                   ; 0725 _ 75, 17
        mov     eax, dword [ebp-18H]                    ; 0727 _ 8B. 45, E8
        shl     eax, 4                                  ; 072A _ C1. E0, 04
        mov     edx, eax                                ; 072D _ 89. C2
        mov     eax, dword [ebp-1CH]                    ; 072F _ 8B. 45, E4
        add     eax, edx                                ; 0732 _ 01. D0
        mov     edx, eax                                ; 0734 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 0736 _ 8B. 45, 08
        add     eax, edx                                ; 0739 _ 01. D0
        mov     byte [eax], 7                           ; 073B _ C6. 00, 07
?_025:  mov     eax, dword [ebp-18H]                    ; 073E _ 8B. 45, E8
        shl     eax, 4                                  ; 0741 _ C1. E0, 04
        mov     edx, eax                                ; 0744 _ 89. C2
        mov     eax, dword [ebp-1CH]                    ; 0746 _ 8B. 45, E4
        add     eax, edx                                ; 0749 _ 01. D0
        add     eax, cursor.1601                        ; 074B _ 05, 00000060(d)
        movzx   eax, byte [eax]                         ; 0750 _ 0F B6. 00
        cmp     al, 46                                  ; 0753 _ 3C, 2E
        jnz     ?_026                                   ; 0755 _ 75, 1A
        mov     eax, dword [ebp-18H]                    ; 0757 _ 8B. 45, E8
        shl     eax, 4                                  ; 075A _ C1. E0, 04
        mov     edx, eax                                ; 075D _ 89. C2
        mov     eax, dword [ebp-1CH]                    ; 075F _ 8B. 45, E4
        add     eax, edx                                ; 0762 _ 01. D0
        mov     edx, eax                                ; 0764 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 0766 _ 8B. 45, 08
        add     edx, eax                                ; 0769 _ 01. C2
        movzx   eax, byte [ebp-2CH]                     ; 076B _ 0F B6. 45, D4
        mov     byte [edx], al                          ; 076F _ 88. 02
?_026:  add     dword [ebp-1CH], 1                      ; 0771 _ 83. 45, E4, 01
?_027:  cmp     dword [ebp-1CH], 15                     ; 0775 _ 83. 7D, E4, 0F
        jle     ?_023                                   ; 0779 _ 0F 8E, FFFFFF5F
        add     dword [ebp-18H], 1                      ; 077F _ 83. 45, E8, 01
?_028:  cmp     dword [ebp-18H], 15                     ; 0783 _ 83. 7D, E8, 0F
        jle     ?_022                                   ; 0787 _ 0F 8E, FFFFFF45
        mov     edx, dword [my]                         ; 078D _ 8B. 15, 000001F4(d)
        mov     eax, dword [mx]                         ; 0793 _ A1, 000001F0(d)
        push    16                                      ; 0798 _ 6A, 10
        push    mcursor                                 ; 079A _ 68, 00000000(d)
        push    edx                                     ; 079F _ 52
        push    eax                                     ; 07A0 _ 50
        push    16                                      ; 07A1 _ 6A, 10
        push    16                                      ; 07A3 _ 6A, 10
        push    dword [ebp-10H]                         ; 07A5 _ FF. 75, F0
        push    dword [ebp-14H]                         ; 07A8 _ FF. 75, EC
        call    putblock                                ; 07AB _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 07B0 _ 83. C4, 20
        nop                                             ; 07B3 _ 90
        leave                                           ; 07B4 _ C9
        ret                                             ; 07B5 _ C3
; init_mouse_cursor End of function

putblock:; Function begin
        push    ebp                                     ; 07B6 _ 55
        mov     ebp, esp                                ; 07B7 _ 89. E5
        push    ebx                                     ; 07B9 _ 53
        sub     esp, 16                                 ; 07BA _ 83. EC, 10
        mov     dword [ebp-8H], 0                       ; 07BD _ C7. 45, F8, 00000000
        jmp     ?_032                                   ; 07C4 _ EB, 50

?_029:  mov     dword [ebp-0CH], 0                      ; 07C6 _ C7. 45, F4, 00000000
        jmp     ?_031                                   ; 07CD _ EB, 3B

?_030:  mov     eax, dword [ebp-8H]                     ; 07CF _ 8B. 45, F8
        imul    eax, dword [ebp+24H]                    ; 07D2 _ 0F AF. 45, 24
        mov     edx, eax                                ; 07D6 _ 89. C2
        mov     eax, dword [ebp-0CH]                    ; 07D8 _ 8B. 45, F4
        add     eax, edx                                ; 07DB _ 01. D0
        mov     edx, eax                                ; 07DD _ 89. C2
        mov     eax, dword [ebp+20H]                    ; 07DF _ 8B. 45, 20
        add     eax, edx                                ; 07E2 _ 01. D0
        mov     ecx, dword [ebp+1CH]                    ; 07E4 _ 8B. 4D, 1C
        mov     edx, dword [ebp-8H]                     ; 07E7 _ 8B. 55, F8
        add     edx, ecx                                ; 07EA _ 01. CA
        imul    edx, dword [ebp+0CH]                    ; 07EC _ 0F AF. 55, 0C
        mov     ebx, dword [ebp+18H]                    ; 07F0 _ 8B. 5D, 18
        mov     ecx, dword [ebp-0CH]                    ; 07F3 _ 8B. 4D, F4
        add     ecx, ebx                                ; 07F6 _ 01. D9
        add     edx, ecx                                ; 07F8 _ 01. CA
        mov     ecx, edx                                ; 07FA _ 89. D1
        mov     edx, dword [ebp+8H]                     ; 07FC _ 8B. 55, 08
        add     edx, ecx                                ; 07FF _ 01. CA
        movzx   eax, byte [eax]                         ; 0801 _ 0F B6. 00
        mov     byte [edx], al                          ; 0804 _ 88. 02
        add     dword [ebp-0CH], 1                      ; 0806 _ 83. 45, F4, 01
?_031:  mov     eax, dword [ebp-0CH]                    ; 080A _ 8B. 45, F4
        cmp     eax, dword [ebp+10H]                    ; 080D _ 3B. 45, 10
        jl      ?_030                                   ; 0810 _ 7C, BD
        add     dword [ebp-8H], 1                       ; 0812 _ 83. 45, F8, 01
?_032:  mov     eax, dword [ebp-8H]                     ; 0816 _ 8B. 45, F8
        cmp     eax, dword [ebp+14H]                    ; 0819 _ 3B. 45, 14
        jl      ?_029                                   ; 081C _ 7C, A8
        nop                                             ; 081E _ 90
        add     esp, 16                                 ; 081F _ 83. C4, 10
        pop     ebx                                     ; 0822 _ 5B
        pop     ebp                                     ; 0823 _ 5D
        ret                                             ; 0824 _ C3
; putblock End of function

intHandlerFromC:; Function begin
        push    ebp                                     ; 0825 _ 55
        mov     ebp, esp                                ; 0826 _ 89. E5
        sub     esp, 24                                 ; 0828 _ 83. EC, 18
        mov     eax, dword [bootInfo]                   ; 082B _ A1, 00000100(d)
        mov     dword [ebp-14H], eax                    ; 0830 _ 89. 45, EC
        movzx   eax, word [?_062]                       ; 0833 _ 0F B7. 05, 00000104(d)
        cwde                                            ; 083A _ 98
        mov     dword [ebp-10H], eax                    ; 083B _ 89. 45, F0
        movzx   eax, word [?_063]                       ; 083E _ 0F B7. 05, 00000106(d)
        cwde                                            ; 0845 _ 98
        mov     dword [ebp-0CH], eax                    ; 0846 _ 89. 45, F4
        sub     esp, 8                                  ; 0849 _ 83. EC, 08
        push    32                                      ; 084C _ 6A, 20
        push    32                                      ; 084E _ 6A, 20
        call    io_out8                                 ; 0850 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0855 _ 83. C4, 10
        mov     byte [ebp-15H], 0                       ; 0858 _ C6. 45, EB, 00
        sub     esp, 12                                 ; 085C _ 83. EC, 0C
        push    96                                      ; 085F _ 6A, 60
        call    io_in8                                  ; 0861 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0866 _ 83. C4, 10
        mov     byte [ebp-15H], al                      ; 0869 _ 88. 45, EB
        movzx   eax, byte [ebp-15H]                     ; 086C _ 0F B6. 45, EB
        sub     esp, 8                                  ; 0870 _ 83. EC, 08
        push    eax                                     ; 0873 _ 50
        push    keyInfo                                 ; 0874 _ 68, 00000108(d)
        call    fifo8_put                               ; 0879 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 087E _ 83. C4, 10
        nop                                             ; 0881 _ 90
        leave                                           ; 0882 _ C9
        ret                                             ; 0883 _ C3
; intHandlerFromC End of function

charToHex:; Function begin
        push    ebp                                     ; 0884 _ 55
        mov     ebp, esp                                ; 0885 _ 89. E5
        sub     esp, 40                                 ; 0887 _ 83. EC, 28
        mov     eax, dword [ebp+8H]                     ; 088A _ 8B. 45, 08
        mov     byte [ebp-1CH], al                      ; 088D _ 88. 45, E4
        movzx   eax, byte [ebp-1CH]                     ; 0890 _ 0F B6. 45, E4
        and     eax, 0FH                                ; 0894 _ 83. E0, 0F
        mov     byte [ebp-9H], al                       ; 0897 _ 88. 45, F7
        movsx   eax, byte [ebp-9H]                      ; 089A _ 0F BE. 45, F7
        sub     esp, 12                                 ; 089E _ 83. EC, 0C
        push    eax                                     ; 08A1 _ 50
        call    charToVal                               ; 08A2 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 08A7 _ 83. C4, 10
        mov     byte [?_061], al                        ; 08AA _ A2, 00000013(d)
        movzx   eax, byte [ebp-1CH]                     ; 08AF _ 0F B6. 45, E4
        shr     al, 4                                   ; 08B3 _ C0. E8, 04
        mov     byte [ebp-1CH], al                      ; 08B6 _ 88. 45, E4
        movzx   eax, byte [ebp-1CH]                     ; 08B9 _ 0F B6. 45, E4
        movsx   eax, al                                 ; 08BD _ 0F BE. C0
        sub     esp, 12                                 ; 08C0 _ 83. EC, 0C
        push    eax                                     ; 08C3 _ 50
        call    charToVal                               ; 08C4 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 08C9 _ 83. C4, 10
        mov     byte [?_060], al                        ; 08CC _ A2, 00000012(d)
        mov     eax, keyVal                             ; 08D1 _ B8, 00000010(d)
        leave                                           ; 08D6 _ C9
        ret                                             ; 08D7 _ C3
; charToHex End of function

charToVal:; Function begin
        push    ebp                                     ; 08D8 _ 55
        mov     ebp, esp                                ; 08D9 _ 89. E5
        sub     esp, 4                                  ; 08DB _ 83. EC, 04
        mov     eax, dword [ebp+8H]                     ; 08DE _ 8B. 45, 08
        mov     byte [ebp-4H], al                       ; 08E1 _ 88. 45, FC
        cmp     byte [ebp-4H], 9                        ; 08E4 _ 80. 7D, FC, 09
        jle     ?_033                                   ; 08E8 _ 7E, 09
        movzx   eax, byte [ebp-4H]                      ; 08EA _ 0F B6. 45, FC
        add     eax, 55                                 ; 08EE _ 83. C0, 37
        jmp     ?_034                                   ; 08F1 _ EB, 07

?_033:  movzx   eax, byte [ebp-4H]                      ; 08F3 _ 0F B6. 45, FC
        add     eax, 48                                 ; 08F7 _ 83. C0, 30
?_034:  leave                                           ; 08FA _ C9
        ret                                             ; 08FB _ C3
; charToVal End of function

wait_KBC_sendReady:; Function begin
        push    ebp                                     ; 08FC _ 55
        mov     ebp, esp                                ; 08FD _ 89. E5
        sub     esp, 8                                  ; 08FF _ 83. EC, 08
?_035:  sub     esp, 12                                 ; 0902 _ 83. EC, 0C
        push    100                                     ; 0905 _ 6A, 64
        call    io_in8                                  ; 0907 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 090C _ 83. C4, 10
        movsx   eax, al                                 ; 090F _ 0F BE. C0
        and     eax, 02H                                ; 0912 _ 83. E0, 02
        test    eax, eax                                ; 0915 _ 85. C0
        jz      ?_036                                   ; 0917 _ 74, 02
        jmp     ?_035                                   ; 0919 _ EB, E7

?_036:  nop                                             ; 091B _ 90
        nop                                             ; 091C _ 90
        leave                                           ; 091D _ C9
        ret                                             ; 091E _ C3
; wait_KBC_sendReady End of function

init_keyboard:; Function begin
        push    ebp                                     ; 091F _ 55
        mov     ebp, esp                                ; 0920 _ 89. E5
        sub     esp, 8                                  ; 0922 _ 83. EC, 08
        call    wait_KBC_sendReady                      ; 0925 _ E8, FFFFFFFC(rel)
        sub     esp, 8                                  ; 092A _ 83. EC, 08
        push    96                                      ; 092D _ 6A, 60
        push    100                                     ; 092F _ 6A, 64
        call    io_out8                                 ; 0931 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0936 _ 83. C4, 10
        call    wait_KBC_sendReady                      ; 0939 _ E8, FFFFFFFC(rel)
        sub     esp, 8                                  ; 093E _ 83. EC, 08
        push    71                                      ; 0941 _ 6A, 47
        push    96                                      ; 0943 _ 6A, 60
        call    io_out8                                 ; 0945 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 094A _ 83. C4, 10
        nop                                             ; 094D _ 90
        leave                                           ; 094E _ C9
        ret                                             ; 094F _ C3
; init_keyboard End of function

enable_mouse:; Function begin
        push    ebp                                     ; 0950 _ 55
        mov     ebp, esp                                ; 0951 _ 89. E5
        sub     esp, 8                                  ; 0953 _ 83. EC, 08
        call    wait_KBC_sendReady                      ; 0956 _ E8, FFFFFFFC(rel)
        sub     esp, 8                                  ; 095B _ 83. EC, 08
        push    212                                     ; 095E _ 68, 000000D4
        push    100                                     ; 0963 _ 6A, 64
        call    io_out8                                 ; 0965 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 096A _ 83. C4, 10
        call    wait_KBC_sendReady                      ; 096D _ E8, FFFFFFFC(rel)
        sub     esp, 8                                  ; 0972 _ 83. EC, 08
        push    244                                     ; 0975 _ 68, 000000F4
        push    96                                      ; 097A _ 6A, 60
        call    io_out8                                 ; 097C _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0981 _ 83. C4, 10
        nop                                             ; 0984 _ 90
        leave                                           ; 0985 _ C9
        ret                                             ; 0986 _ C3
; enable_mouse End of function

intHandlerForMouse:; Function begin
        push    ebp                                     ; 0987 _ 55
        mov     ebp, esp                                ; 0988 _ 89. E5
        sub     esp, 24                                 ; 098A _ 83. EC, 18
        mov     byte [ebp-9H], 0                        ; 098D _ C6. 45, F7, 00
        sub     esp, 8                                  ; 0991 _ 83. EC, 08
        push    32                                      ; 0994 _ 6A, 20
        push    32                                      ; 0996 _ 6A, 20
        call    io_out8                                 ; 0998 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 099D _ 83. C4, 10
        sub     esp, 8                                  ; 09A0 _ 83. EC, 08
        push    32                                      ; 09A3 _ 6A, 20
        push    160                                     ; 09A5 _ 68, 000000A0
        call    io_out8                                 ; 09AA _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 09AF _ 83. C4, 10
        sub     esp, 12                                 ; 09B2 _ 83. EC, 0C
        push    96                                      ; 09B5 _ 6A, 60
        call    io_in8                                  ; 09B7 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 09BC _ 83. C4, 10
        mov     byte [ebp-9H], al                       ; 09BF _ 88. 45, F7
        movzx   eax, byte [ebp-9H]                      ; 09C2 _ 0F B6. 45, F7
        sub     esp, 8                                  ; 09C6 _ 83. EC, 08
        push    eax                                     ; 09C9 _ 50
        push    mouseInfo                               ; 09CA _ 68, 00000120(d)
        call    fifo8_put                               ; 09CF _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 09D4 _ 83. C4, 10
        nop                                             ; 09D7 _ 90
        leave                                           ; 09D8 _ C9
        ret                                             ; 09D9 _ C3
; intHandlerForMouse End of function

fifo8_init:; Function begin
        push    ebp                                     ; 09DA _ 55
        mov     ebp, esp                                ; 09DB _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 09DD _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 09E0 _ 8B. 55, 0C
        mov     dword [eax+0CH], edx                    ; 09E3 _ 89. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 09E6 _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 09E9 _ 8B. 55, 10
        mov     dword [eax], edx                        ; 09EC _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 09EE _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 09F1 _ 8B. 55, 0C
        mov     dword [eax+10H], edx                    ; 09F4 _ 89. 50, 10
        mov     eax, dword [ebp+8H]                     ; 09F7 _ 8B. 45, 08
        mov     dword [eax+4H], 0                       ; 09FA _ C7. 40, 04, 00000000
        mov     eax, dword [ebp+8H]                     ; 0A01 _ 8B. 45, 08
        mov     dword [eax+8H], 0                       ; 0A04 _ C7. 40, 08, 00000000
        mov     eax, dword [ebp+8H]                     ; 0A0B _ 8B. 45, 08
        mov     dword [eax+14H], 0                      ; 0A0E _ C7. 40, 14, 00000000
        nop                                             ; 0A15 _ 90
        pop     ebp                                     ; 0A16 _ 5D
        ret                                             ; 0A17 _ C3
; fifo8_init End of function

fifo8_put:; Function begin
        push    ebp                                     ; 0A18 _ 55
        mov     ebp, esp                                ; 0A19 _ 89. E5
        sub     esp, 4                                  ; 0A1B _ 83. EC, 04
        mov     eax, dword [ebp+0CH]                    ; 0A1E _ 8B. 45, 0C
        mov     byte [ebp-4H], al                       ; 0A21 _ 88. 45, FC
        mov     eax, dword [ebp+8H]                     ; 0A24 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 0A27 _ 8B. 40, 10
        test    eax, eax                                ; 0A2A _ 85. C0
        jnz     ?_037                                   ; 0A2C _ 75, 18
        mov     eax, dword [ebp+8H]                     ; 0A2E _ 8B. 45, 08
        mov     eax, dword [eax+14H]                    ; 0A31 _ 8B. 40, 14
        or      eax, 01H                                ; 0A34 _ 83. C8, 01
        mov     edx, eax                                ; 0A37 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 0A39 _ 8B. 45, 08
        mov     dword [eax+14H], edx                    ; 0A3C _ 89. 50, 14
        mov     eax, 4294967295                         ; 0A3F _ B8, FFFFFFFF
        jmp     ?_039                                   ; 0A44 _ EB, 50

?_037:  mov     eax, dword [ebp+8H]                     ; 0A46 _ 8B. 45, 08
        mov     edx, dword [eax]                        ; 0A49 _ 8B. 10
        mov     eax, dword [ebp+8H]                     ; 0A4B _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 0A4E _ 8B. 40, 08
        add     edx, eax                                ; 0A51 _ 01. C2
        movzx   eax, byte [ebp-4H]                      ; 0A53 _ 0F B6. 45, FC
        mov     byte [edx], al                          ; 0A57 _ 88. 02
        mov     eax, dword [ebp+8H]                     ; 0A59 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 0A5C _ 8B. 40, 08
        lea     edx, [eax+1H]                           ; 0A5F _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 0A62 _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 0A65 _ 89. 50, 08
        mov     eax, dword [ebp+8H]                     ; 0A68 _ 8B. 45, 08
        mov     edx, dword [eax+8H]                     ; 0A6B _ 8B. 50, 08
        mov     eax, dword [ebp+8H]                     ; 0A6E _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 0A71 _ 8B. 40, 0C
        cmp     edx, eax                                ; 0A74 _ 39. C2
        jnz     ?_038                                   ; 0A76 _ 75, 0A
        mov     eax, dword [ebp+8H]                     ; 0A78 _ 8B. 45, 08
        mov     dword [eax+8H], 0                       ; 0A7B _ C7. 40, 08, 00000000
?_038:  mov     eax, dword [ebp+8H]                     ; 0A82 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 0A85 _ 8B. 40, 10
        lea     edx, [eax-1H]                           ; 0A88 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 0A8B _ 8B. 45, 08
        mov     dword [eax+10H], edx                    ; 0A8E _ 89. 50, 10
        mov     eax, 1                                  ; 0A91 _ B8, 00000001
?_039:  leave                                           ; 0A96 _ C9
        ret                                             ; 0A97 _ C3
; fifo8_put End of function

fifo8_get:; Function begin
        push    ebp                                     ; 0A98 _ 55
        mov     ebp, esp                                ; 0A99 _ 89. E5
        sub     esp, 16                                 ; 0A9B _ 83. EC, 10
        mov     eax, dword [ebp+8H]                     ; 0A9E _ 8B. 45, 08
        mov     edx, dword [eax+10H]                    ; 0AA1 _ 8B. 50, 10
        mov     eax, dword [ebp+8H]                     ; 0AA4 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 0AA7 _ 8B. 40, 0C
        cmp     edx, eax                                ; 0AAA _ 39. C2
        jnz     ?_040                                   ; 0AAC _ 75, 07
        mov     eax, 4294967295                         ; 0AAE _ B8, FFFFFFFF
        jmp     ?_042                                   ; 0AB3 _ EB, 51

?_040:  mov     eax, dword [ebp+8H]                     ; 0AB5 _ 8B. 45, 08
        mov     edx, dword [eax]                        ; 0AB8 _ 8B. 10
        mov     eax, dword [ebp+8H]                     ; 0ABA _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 0ABD _ 8B. 40, 04
        add     eax, edx                                ; 0AC0 _ 01. D0
        movzx   eax, byte [eax]                         ; 0AC2 _ 0F B6. 00
        movzx   eax, al                                 ; 0AC5 _ 0F B6. C0
        mov     dword [ebp-4H], eax                     ; 0AC8 _ 89. 45, FC
        mov     eax, dword [ebp+8H]                     ; 0ACB _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 0ACE _ 8B. 40, 04
        lea     edx, [eax+1H]                           ; 0AD1 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 0AD4 _ 8B. 45, 08
        mov     dword [eax+4H], edx                     ; 0AD7 _ 89. 50, 04
        mov     eax, dword [ebp+8H]                     ; 0ADA _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 0ADD _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 0AE0 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 0AE3 _ 8B. 40, 0C
        cmp     edx, eax                                ; 0AE6 _ 39. C2
        jnz     ?_041                                   ; 0AE8 _ 75, 0A
        mov     eax, dword [ebp+8H]                     ; 0AEA _ 8B. 45, 08
        mov     dword [eax+4H], 0                       ; 0AED _ C7. 40, 04, 00000000
?_041:  mov     eax, dword [ebp+8H]                     ; 0AF4 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 0AF7 _ 8B. 40, 10
        lea     edx, [eax+1H]                           ; 0AFA _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 0AFD _ 8B. 45, 08
        mov     dword [eax+10H], edx                    ; 0B00 _ 89. 50, 10
        mov     eax, dword [ebp-4H]                     ; 0B03 _ 8B. 45, FC
?_042:  leave                                           ; 0B06 _ C9
        ret                                             ; 0B07 _ C3
; fifo8_get End of function

fifo8_status:; Function begin
        push    ebp                                     ; 0B08 _ 55
        mov     ebp, esp                                ; 0B09 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 0B0B _ 8B. 45, 08
        mov     edx, dword [eax+0CH]                    ; 0B0E _ 8B. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 0B11 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 0B14 _ 8B. 40, 10
        sub     edx, eax                                ; 0B17 _ 29. C2
        mov     eax, edx                                ; 0B19 _ 89. D0
        pop     ebp                                     ; 0B1B _ 5D
        ret                                             ; 0B1C _ C3
; fifo8_status End of function

showKeyboardInfo:; Function begin
        push    ebp                                     ; 0B1D _ 55
        mov     ebp, esp                                ; 0B1E _ 89. E5
        sub     esp, 40                                 ; 0B20 _ 83. EC, 28
        call    io_sti                                  ; 0B23 _ E8, FFFFFFFC(rel)
        mov     eax, dword [bootInfo]                   ; 0B28 _ A1, 00000100(d)
        mov     dword [ebp-18H], eax                    ; 0B2D _ 89. 45, E8
        movzx   eax, word [?_062]                       ; 0B30 _ 0F B7. 05, 00000104(d)
        cwde                                            ; 0B37 _ 98
        mov     dword [ebp-14H], eax                    ; 0B38 _ 89. 45, EC
        movzx   eax, word [?_063]                       ; 0B3B _ 0F B7. 05, 00000106(d)
        cwde                                            ; 0B42 _ 98
        mov     dword [ebp-10H], eax                    ; 0B43 _ 89. 45, F0
        mov     byte [ebp-19H], 0                       ; 0B46 _ C6. 45, E7, 00
        sub     esp, 12                                 ; 0B4A _ 83. EC, 0C
        push    keyInfo                                 ; 0B4D _ 68, 00000108(d)
        call    fifo8_get                               ; 0B52 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0B57 _ 83. C4, 10
        mov     byte [ebp-19H], al                      ; 0B5A _ 88. 45, E7
        movzx   eax, byte [ebp-19H]                     ; 0B5D _ 0F B6. 45, E7
        sub     esp, 12                                 ; 0B61 _ 83. EC, 0C
        push    eax                                     ; 0B64 _ 50
        call    charToHex                               ; 0B65 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0B6A _ 83. C4, 10
        mov     dword [ebp-0CH], eax                    ; 0B6D _ 89. 45, F4
        mov     edx, dword [line.1677]                  ; 0B70 _ 8B. 15, 000001F8(d)
        mov     eax, dword [pos.1676]                   ; 0B76 _ A1, 000001FC(d)
        sub     esp, 8                                  ; 0B7B _ 83. EC, 08
        push    dword [ebp-0CH]                         ; 0B7E _ FF. 75, F4
        push    7                                       ; 0B81 _ 6A, 07
        push    edx                                     ; 0B83 _ 52
        push    eax                                     ; 0B84 _ 50
        push    dword [ebp-14H]                         ; 0B85 _ FF. 75, EC
        push    dword [ebp-18H]                         ; 0B88 _ FF. 75, E8
        call    showString                              ; 0B8B _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0B90 _ 83. C4, 20
        mov     eax, dword [pos.1676]                   ; 0B93 _ A1, 000001FC(d)
        add     eax, 32                                 ; 0B98 _ 83. C0, 20
        mov     dword [pos.1676], eax                   ; 0B9B _ A3, 000001FC(d)
        mov     eax, dword [pos.1676]                   ; 0BA0 _ A1, 000001FC(d)
        cmp     dword [ebp-14H], eax                    ; 0BA5 _ 39. 45, EC
        jnz     ?_045                                   ; 0BA8 _ 75, 28
        mov     eax, dword [line.1677]                  ; 0BAA _ A1, 000001F8(d)
        cmp     dword [ebp-10H], eax                    ; 0BAF _ 39. 45, F0
        jz      ?_043                                   ; 0BB2 _ 74, 0A
        mov     eax, dword [line.1677]                  ; 0BB4 _ A1, 000001F8(d)
        add     eax, 16                                 ; 0BB9 _ 83. C0, 10
        jmp     ?_044                                   ; 0BBC _ EB, 05

?_043:  mov     eax, 0                                  ; 0BBE _ B8, 00000000
?_044:  mov     dword [line.1677], eax                  ; 0BC3 _ A3, 000001F8(d)
        mov     dword [pos.1676], 0                     ; 0BC8 _ C7. 05, 000001FC(d), 00000000
?_045:  nop                                             ; 0BD2 _ 90
        leave                                           ; 0BD3 _ C9
        ret                                             ; 0BD4 _ C3
; showKeyboardInfo End of function

showMouseInfo:; Function begin
        push    ebp                                     ; 0BD5 _ 55
        mov     ebp, esp                                ; 0BD6 _ 89. E5
        sub     esp, 24                                 ; 0BD8 _ 83. EC, 18
        call    io_sti                                  ; 0BDB _ E8, FFFFFFFC(rel)
        mov     eax, dword [bootInfo]                   ; 0BE0 _ A1, 00000100(d)
        mov     dword [ebp-0CH], eax                    ; 0BE5 _ 89. 45, F4
        mov     byte [ebp-0DH], 0                       ; 0BE8 _ C6. 45, F3, 00
        sub     esp, 12                                 ; 0BEC _ 83. EC, 0C
        push    mouseInfo                               ; 0BEF _ 68, 00000120(d)
        call    fifo8_get                               ; 0BF4 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0BF9 _ 83. C4, 10
        mov     byte [ebp-0DH], al                      ; 0BFC _ 88. 45, F3
        movzx   eax, byte [ebp-0DH]                     ; 0BFF _ 0F B6. 45, F3
        sub     esp, 8                                  ; 0C03 _ 83. EC, 08
        push    eax                                     ; 0C06 _ 50
        push    mouse_move                              ; 0C07 _ 68, 000001E0(d)
        call    mouse_decode                            ; 0C0C _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0C11 _ 83. C4, 10
        test    eax, eax                                ; 0C14 _ 85. C0
        jz      ?_046                                   ; 0C16 _ 74, 2C
        sub     esp, 12                                 ; 0C18 _ 83. EC, 0C
        push    dword [ebp-0CH]                         ; 0C1B _ FF. 75, F4
        call    eraseMouse                              ; 0C1E _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0C23 _ 83. C4, 10
        sub     esp, 12                                 ; 0C26 _ 83. EC, 0C
        push    mouse_move                              ; 0C29 _ 68, 000001E0(d)
        call    computeMousePos                         ; 0C2E _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0C33 _ 83. C4, 10
        sub     esp, 12                                 ; 0C36 _ 83. EC, 0C
        push    dword [ebp-0CH]                         ; 0C39 _ FF. 75, F4
        call    drawMouse                               ; 0C3C _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0C41 _ 83. C4, 10
?_046:  nop                                             ; 0C44 _ 90
        leave                                           ; 0C45 _ C9
        ret                                             ; 0C46 _ C3
; showMouseInfo End of function

mouse_decode:; Function begin
        push    ebp                                     ; 0C47 _ 55
        mov     ebp, esp                                ; 0C48 _ 89. E5
        sub     esp, 4                                  ; 0C4A _ 83. EC, 04
        mov     eax, dword [ebp+0CH]                    ; 0C4D _ 8B. 45, 0C
        mov     byte [ebp-4H], al                       ; 0C50 _ 88. 45, FC
        mov     eax, dword [ebp+8H]                     ; 0C53 _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 0C56 _ 0F B6. 40, 03
        test    al, al                                  ; 0C5A _ 84. C0
        jnz     ?_048                                   ; 0C5C _ 75, 17
        cmp     byte [ebp-4H], -6                       ; 0C5E _ 80. 7D, FC, FA
        jnz     ?_047                                   ; 0C62 _ 75, 07
        mov     eax, dword [ebp+8H]                     ; 0C64 _ 8B. 45, 08
        mov     byte [eax+3H], 1                        ; 0C67 _ C6. 40, 03, 01
?_047:  mov     eax, 1                                  ; 0C6B _ B8, 00000001
        jmp     ?_055                                   ; 0C70 _ E9, 0000010C

?_048:  mov     eax, dword [ebp+8H]                     ; 0C75 _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 0C78 _ 0F B6. 40, 03
        cmp     al, 1                                   ; 0C7C _ 3C, 01
        jnz     ?_050                                   ; 0C7E _ 75, 25
        movzx   eax, byte [ebp-4H]                      ; 0C80 _ 0F B6. 45, FC
        or      eax, 37H                                ; 0C84 _ 83. C8, 37
        cmp     al, 63                                  ; 0C87 _ 3C, 3F
        jnz     ?_049                                   ; 0C89 _ 75, 10
        mov     eax, dword [ebp+8H]                     ; 0C8B _ 8B. 45, 08
        movzx   edx, byte [ebp-4H]                      ; 0C8E _ 0F B6. 55, FC
        mov     byte [eax], dl                          ; 0C92 _ 88. 10
        mov     eax, dword [ebp+8H]                     ; 0C94 _ 8B. 45, 08
        mov     byte [eax+3H], 2                        ; 0C97 _ C6. 40, 03, 02
?_049:  mov     eax, 1                                  ; 0C9B _ B8, 00000001
        jmp     ?_055                                   ; 0CA0 _ E9, 000000DC

?_050:  mov     eax, dword [ebp+8H]                     ; 0CA5 _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 0CA8 _ 0F B6. 40, 03
        cmp     al, 2                                   ; 0CAC _ 3C, 02
        jnz     ?_051                                   ; 0CAE _ 75, 1B
        mov     eax, dword [ebp+8H]                     ; 0CB0 _ 8B. 45, 08
        movzx   edx, byte [ebp-4H]                      ; 0CB3 _ 0F B6. 55, FC
        mov     byte [eax+1H], dl                       ; 0CB7 _ 88. 50, 01
        mov     eax, dword [ebp+8H]                     ; 0CBA _ 8B. 45, 08
        mov     byte [eax+3H], 3                        ; 0CBD _ C6. 40, 03, 03
        mov     eax, 1                                  ; 0CC1 _ B8, 00000001
        jmp     ?_055                                   ; 0CC6 _ E9, 000000B6

?_051:  mov     eax, dword [ebp+8H]                     ; 0CCB _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 0CCE _ 0F B6. 40, 03
        cmp     al, 3                                   ; 0CD2 _ 3C, 03
        jne     ?_054                                   ; 0CD4 _ 0F 85, 000000A2
        mov     eax, dword [ebp+8H]                     ; 0CDA _ 8B. 45, 08
        movzx   edx, byte [ebp-4H]                      ; 0CDD _ 0F B6. 55, FC
        mov     byte [eax+2H], dl                       ; 0CE1 _ 88. 50, 02
        mov     eax, dword [ebp+8H]                     ; 0CE4 _ 8B. 45, 08
        mov     byte [eax+3H], 1                        ; 0CE7 _ C6. 40, 03, 01
        mov     eax, dword [ebp+8H]                     ; 0CEB _ 8B. 45, 08
        movzx   eax, byte [eax]                         ; 0CEE _ 0F B6. 00
        movzx   eax, al                                 ; 0CF1 _ 0F B6. C0
        and     eax, 07H                                ; 0CF4 _ 83. E0, 07
        mov     edx, eax                                ; 0CF7 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 0CF9 _ 8B. 45, 08
        mov     dword [eax+0CH], edx                    ; 0CFC _ 89. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 0CFF _ 8B. 45, 08
        movzx   eax, byte [eax+1H]                      ; 0D02 _ 0F B6. 40, 01
        movzx   edx, al                                 ; 0D06 _ 0F B6. D0
        mov     eax, dword [ebp+8H]                     ; 0D09 _ 8B. 45, 08
        mov     dword [eax+4H], edx                     ; 0D0C _ 89. 50, 04
        mov     eax, dword [ebp+8H]                     ; 0D0F _ 8B. 45, 08
        movzx   eax, byte [eax+2H]                      ; 0D12 _ 0F B6. 40, 02
        movzx   edx, al                                 ; 0D16 _ 0F B6. D0
        mov     eax, dword [ebp+8H]                     ; 0D19 _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 0D1C _ 89. 50, 08
        mov     eax, dword [ebp+8H]                     ; 0D1F _ 8B. 45, 08
        movzx   eax, byte [eax]                         ; 0D22 _ 0F B6. 00
        movzx   eax, al                                 ; 0D25 _ 0F B6. C0
        and     eax, 10H                                ; 0D28 _ 83. E0, 10
        test    eax, eax                                ; 0D2B _ 85. C0
        jz      ?_052                                   ; 0D2D _ 74, 13
        mov     eax, dword [ebp+8H]                     ; 0D2F _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 0D32 _ 8B. 40, 04
        or      eax, 0FFFFFF00H                         ; 0D35 _ 0D, FFFFFF00
        mov     edx, eax                                ; 0D3A _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 0D3C _ 8B. 45, 08
        mov     dword [eax+4H], edx                     ; 0D3F _ 89. 50, 04
?_052:  mov     eax, dword [ebp+8H]                     ; 0D42 _ 8B. 45, 08
        movzx   eax, byte [eax]                         ; 0D45 _ 0F B6. 00
        movzx   eax, al                                 ; 0D48 _ 0F B6. C0
        and     eax, 20H                                ; 0D4B _ 83. E0, 20
        test    eax, eax                                ; 0D4E _ 85. C0
        jz      ?_053                                   ; 0D50 _ 74, 13
        mov     eax, dword [ebp+8H]                     ; 0D52 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 0D55 _ 8B. 40, 08
        or      eax, 0FFFFFF00H                         ; 0D58 _ 0D, FFFFFF00
        mov     edx, eax                                ; 0D5D _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 0D5F _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 0D62 _ 89. 50, 08
?_053:  mov     eax, dword [ebp+8H]                     ; 0D65 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 0D68 _ 8B. 40, 08
        neg     eax                                     ; 0D6B _ F7. D8
        mov     edx, eax                                ; 0D6D _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 0D6F _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 0D72 _ 89. 50, 08
        mov     eax, 1                                  ; 0D75 _ B8, 00000001
        jmp     ?_055                                   ; 0D7A _ EB, 05

?_054:  mov     eax, 0                                  ; 0D7C _ B8, 00000000
?_055:  leave                                           ; 0D81 _ C9
        ret                                             ; 0D82 _ C3
; mouse_decode End of function

computeMousePos:; Function begin
        push    ebp                                     ; 0D83 _ 55
        mov     ebp, esp                                ; 0D84 _ 89. E5
        sub     esp, 16                                 ; 0D86 _ 83. EC, 10
        movzx   eax, word [?_062]                       ; 0D89 _ 0F B7. 05, 00000104(d)
        cwde                                            ; 0D90 _ 98
        mov     dword [ebp-8H], eax                     ; 0D91 _ 89. 45, F8
        movzx   eax, word [?_063]                       ; 0D94 _ 0F B7. 05, 00000106(d)
        cwde                                            ; 0D9B _ 98
        mov     dword [ebp-4H], eax                     ; 0D9C _ 89. 45, FC
        mov     eax, dword [ebp+8H]                     ; 0D9F _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 0DA2 _ 8B. 40, 04
        mov     edx, eax                                ; 0DA5 _ 89. C2
        shr     edx, 31                                 ; 0DA7 _ C1. EA, 1F
        add     eax, edx                                ; 0DAA _ 01. D0
        sar     eax, 1                                  ; 0DAC _ D1. F8
        mov     edx, eax                                ; 0DAE _ 89. C2
        mov     eax, dword [mx]                         ; 0DB0 _ A1, 000001F0(d)
        add     eax, edx                                ; 0DB5 _ 01. D0
        mov     dword [mx], eax                         ; 0DB7 _ A3, 000001F0(d)
        mov     eax, dword [ebp+8H]                     ; 0DBC _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 0DBF _ 8B. 40, 08
        mov     edx, eax                                ; 0DC2 _ 89. C2
        shr     edx, 31                                 ; 0DC4 _ C1. EA, 1F
        add     eax, edx                                ; 0DC7 _ 01. D0
        sar     eax, 1                                  ; 0DC9 _ D1. F8
        mov     edx, eax                                ; 0DCB _ 89. C2
        mov     eax, dword [my]                         ; 0DCD _ A1, 000001F4(d)
        add     eax, edx                                ; 0DD2 _ 01. D0
        mov     dword [my], eax                         ; 0DD4 _ A3, 000001F4(d)
        mov     eax, dword [mx]                         ; 0DD9 _ A1, 000001F0(d)
        test    eax, eax                                ; 0DDE _ 85. C0
        jns     ?_056                                   ; 0DE0 _ 79, 0A
        mov     dword [mx], 0                           ; 0DE2 _ C7. 05, 000001F0(d), 00000000
?_056:  mov     eax, dword [my]                         ; 0DEC _ A1, 000001F4(d)
        test    eax, eax                                ; 0DF1 _ 85. C0
        jns     ?_057                                   ; 0DF3 _ 79, 0A
        mov     dword [my], 0                           ; 0DF5 _ C7. 05, 000001F4(d), 00000000
?_057:  mov     eax, dword [ebp-8H]                     ; 0DFF _ 8B. 45, F8
        lea     edx, [eax-9H]                           ; 0E02 _ 8D. 50, F7
        mov     eax, dword [mx]                         ; 0E05 _ A1, 000001F0(d)
        cmp     edx, eax                                ; 0E0A _ 39. C2
        jge     ?_058                                   ; 0E0C _ 7D, 0B
        mov     eax, dword [ebp-8H]                     ; 0E0E _ 8B. 45, F8
        sub     eax, 9                                  ; 0E11 _ 83. E8, 09
        mov     dword [mx], eax                         ; 0E14 _ A3, 000001F0(d)
?_058:  mov     eax, dword [ebp-4H]                     ; 0E19 _ 8B. 45, FC
        lea     edx, [eax-1H]                           ; 0E1C _ 8D. 50, FF
        mov     eax, dword [my]                         ; 0E1F _ A1, 000001F4(d)
        cmp     edx, eax                                ; 0E24 _ 39. C2
        jge     ?_059                                   ; 0E26 _ 7D, 0B
        mov     eax, dword [ebp-4H]                     ; 0E28 _ 8B. 45, FC
        sub     eax, 1                                  ; 0E2B _ 83. E8, 01
        mov     dword [my], eax                         ; 0E2E _ A3, 000001F4(d)
?_059:  nop                                             ; 0E33 _ 90
        leave                                           ; 0E34 _ C9
        ret                                             ; 0E35 _ C3
; computeMousePos End of function

eraseMouse:; Function begin
        push    ebp                                     ; 0E36 _ 55
        mov     ebp, esp                                ; 0E37 _ 89. E5
        push    edi                                     ; 0E39 _ 57
        push    esi                                     ; 0E3A _ 56
        push    ebx                                     ; 0E3B _ 53
        mov     eax, dword [my]                         ; 0E3C _ A1, 000001F4(d)
        lea     edi, [eax+0FH]                          ; 0E41 _ 8D. 78, 0F
        mov     eax, dword [mx]                         ; 0E44 _ A1, 000001F0(d)
        lea     esi, [eax+0FH]                          ; 0E49 _ 8D. 70, 0F
        mov     ebx, dword [my]                         ; 0E4C _ 8B. 1D, 000001F4(d)
        mov     ecx, dword [mx]                         ; 0E52 _ 8B. 0D, 000001F0(d)
        movzx   eax, word [?_062]                       ; 0E58 _ 0F B7. 05, 00000104(d)
        movsx   edx, ax                                 ; 0E5F _ 0F BF. D0
        mov     eax, dword [bootInfo]                   ; 0E62 _ A1, 00000100(d)
        push    edi                                     ; 0E67 _ 57
        push    esi                                     ; 0E68 _ 56
        push    ebx                                     ; 0E69 _ 53
        push    ecx                                     ; 0E6A _ 51
        push    14                                      ; 0E6B _ 6A, 0E
        push    edx                                     ; 0E6D _ 52
        push    eax                                     ; 0E6E _ 50
        call    boxfill8                                ; 0E6F _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 0E74 _ 83. C4, 1C
        nop                                             ; 0E77 _ 90
        lea     esp, [ebp-0CH]                          ; 0E78 _ 8D. 65, F4
        pop     ebx                                     ; 0E7B _ 5B
        pop     esi                                     ; 0E7C _ 5E
        pop     edi                                     ; 0E7D _ 5F
        pop     ebp                                     ; 0E7E _ 5D
        ret                                             ; 0E7F _ C3
; eraseMouse End of function

drawMouse:; Function begin
        push    ebp                                     ; 0E80 _ 55
        mov     ebp, esp                                ; 0E81 _ 89. E5
        push    ebx                                     ; 0E83 _ 53
        mov     ebx, dword [my]                         ; 0E84 _ 8B. 1D, 000001F4(d)
        mov     ecx, dword [mx]                         ; 0E8A _ 8B. 0D, 000001F0(d)
        movzx   eax, word [?_062]                       ; 0E90 _ 0F B7. 05, 00000104(d)
        movsx   edx, ax                                 ; 0E97 _ 0F BF. D0
        mov     eax, dword [bootInfo]                   ; 0E9A _ A1, 00000100(d)
        push    16                                      ; 0E9F _ 6A, 10
        push    mcursor                                 ; 0EA1 _ 68, 00000000(d)
        push    ebx                                     ; 0EA6 _ 53
        push    ecx                                     ; 0EA7 _ 51
        push    16                                      ; 0EA8 _ 6A, 10
        push    16                                      ; 0EAA _ 6A, 10
        push    edx                                     ; 0EAC _ 52
        push    eax                                     ; 0EAD _ 50
        call    putblock                                ; 0EAE _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0EB3 _ 83. C4, 20
        nop                                             ; 0EB6 _ 90
        mov     ebx, dword [ebp-4H]                     ; 0EB7 _ 8B. 5D, FC
        leave                                           ; 0EBA _ C9
        ret                                             ; 0EBB _ C3
; drawMouse End of function



fontA:                                                  ; oword
        db 00H, 18H, 18H, 18H, 18H, 24H, 24H, 24H       ; 0000 _ .....$$$
        db 24H, 7EH, 42H, 42H, 42H, 0E7H, 00H, 00H      ; 0008 _ $~BBB...

keyVal:                                                 ; byte
        db 30H, 78H                                     ; 0010 _ 0x

?_060:  db 00H                                          ; 0012 _ .

?_061:  db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0013 _ ........
        db 00H, 00H, 00H, 00H, 00H                      ; 001B _ .....

table_rgb.1553:                                         ; byte
        db 00H, 00H, 00H, 0FFH, 00H, 00H, 00H, 0FFH     ; 0020 _ ........
        db 00H, 0FFH, 0FFH, 00H, 00H, 00H, 0FFH, 0FFH   ; 0028 _ ........
        db 00H, 0FFH, 00H, 0FFH, 0FFH, 0FFH, 0FFH, 0FFH ; 0030 _ ........
        db 0C6H, 0C6H, 0C6H, 84H, 00H, 00H, 00H, 84H    ; 0038 _ ........
        db 00H, 84H, 84H, 00H, 00H, 00H, 84H, 84H       ; 0040 _ ........
        db 00H, 84H, 00H, 78H, 0D7H, 84H, 84H, 84H      ; 0048 _ ...x....
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0050 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0058 _ ........

cursor.1601:                                            ; byte
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



mcursor:                                                ; byte
        resb    256                                     ; 0000

bootInfo:                                               ; qword
        resb    4                                       ; 0100

?_062:  resw    1                                       ; 0104

?_063:  resw    1                                       ; 0106

keyInfo:                                                ; byte
        resb    24                                      ; 0108

mouseInfo:                                              ; byte
        resb    32                                      ; 0120

keybuf:                                                 ; yword
        resb    32                                      ; 0140

mousebuf:                                               ; byte
        resb    128                                     ; 0160

mouse_move:                                             ; oword
        resb    16                                      ; 01E0

mx:     resd    1                                       ; 01F0

my:     resd    1                                       ; 01F4

line.1677:                                              ; dword
        resd    1                                       ; 01F8

pos.1676: resd  1                                       ; 01FC


