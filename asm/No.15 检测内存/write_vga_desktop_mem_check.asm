; Disassembly of file: write_vga_desktop_mem_check.o
; Wed Feb 24 16:08:59 2021
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
        mov     dword [ebp-1CH], eax                    ; 001C _ 89. 45, E4
        movzx   eax, word [?_068]                       ; 001F _ 0F B7. 05, 00000104(d)
        cwde                                            ; 0026 _ 98
        mov     dword [ebp-18H], eax                    ; 0027 _ 89. 45, E8
        movzx   eax, word [?_069]                       ; 002A _ 0F B7. 05, 00000106(d)
        cwde                                            ; 0031 _ 98
        mov     dword [ebp-14H], eax                    ; 0032 _ 89. 45, EC
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
        call    get_memory_block_count                  ; 008C _ E8, FFFFFFFC(rel)
        mov     dword [ebp-10H], eax                    ; 0091 _ 89. 45, F0
        mov     eax, dword [ebp-10H]                    ; 0094 _ 8B. 45, F0
        sub     esp, 12                                 ; 0097 _ 83. EC, 0C
        push    eax                                     ; 009A _ 50
        call    intToHexStr                             ; 009B _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 00A0 _ 83. C4, 10
        mov     dword [ebp-0CH], eax                    ; 00A3 _ 89. 45, F4
        sub     esp, 8                                  ; 00A6 _ 83. EC, 08
        push    dword [ebp-0CH]                         ; 00A9 _ FF. 75, F4
        push    6                                       ; 00AC _ 6A, 06
        push    0                                       ; 00AE _ 6A, 00
        push    0                                       ; 00B0 _ 6A, 00
        push    dword [ebp-18H]                         ; 00B2 _ FF. 75, E8
        push    dword [ebp-1CH]                         ; 00B5 _ FF. 75, E4
        call    showString                              ; 00B8 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 00BD _ 83. C4, 20
?_001:  call    io_cli                                  ; 00C0 _ E8, FFFFFFFC(rel)
        sub     esp, 12                                 ; 00C5 _ 83. EC, 0C
        push    keyInfo                                 ; 00C8 _ 68, 00000108(d)
        call    fifo8_status                            ; 00CD _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 00D2 _ 83. C4, 10
        mov     ebx, eax                                ; 00D5 _ 89. C3
        sub     esp, 12                                 ; 00D7 _ 83. EC, 0C
        push    mouseInfo                               ; 00DA _ 68, 00000120(d)
        call    fifo8_status                            ; 00DF _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 00E4 _ 83. C4, 10
        add     eax, ebx                                ; 00E7 _ 01. D8
        test    eax, eax                                ; 00E9 _ 85. C0
        jnz     ?_002                                   ; 00EB _ 75, 07
        call    io_stihlt                               ; 00ED _ E8, FFFFFFFC(rel)
        jmp     ?_001                                   ; 00F2 _ EB, CC

?_002:  sub     esp, 12                                 ; 00F4 _ 83. EC, 0C
        push    keyInfo                                 ; 00F7 _ 68, 00000108(d)
        call    fifo8_status                            ; 00FC _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0101 _ 83. C4, 10
        test    eax, eax                                ; 0104 _ 85. C0
        jz      ?_003                                   ; 0106 _ 74, 07
        call    showKeyboardInfo                        ; 0108 _ E8, FFFFFFFC(rel)
        jmp     ?_001                                   ; 010D _ EB, B1

?_003:  sub     esp, 12                                 ; 010F _ 83. EC, 0C
        push    mouseInfo                               ; 0112 _ 68, 00000120(d)
        call    fifo8_status                            ; 0117 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 011C _ 83. C4, 10
        test    eax, eax                                ; 011F _ 85. C0
        jz      ?_001                                   ; 0121 _ 74, 9D
        call    showMouseInfo                           ; 0123 _ E8, FFFFFFFC(rel)
        jmp     ?_001                                   ; 0128 _ EB, 96
; CMain End of function

initBootInfo:; Function begin
        push    ebp                                     ; 012A _ 55
        mov     ebp, esp                                ; 012B _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 012D _ 8B. 45, 08
        mov     dword [eax], 655360                     ; 0130 _ C7. 00, 000A0000
        mov     eax, dword [ebp+8H]                     ; 0136 _ 8B. 45, 08
; Note: Length-changing prefix causes delay on Intel processors
        mov     word [eax+4H], 320                      ; 0139 _ 66: C7. 40, 04, 0140
        mov     eax, dword [ebp+8H]                     ; 013F _ 8B. 45, 08
; Note: Length-changing prefix causes delay on Intel processors
        mov     word [eax+6H], 200                      ; 0142 _ 66: C7. 40, 06, 00C8
        nop                                             ; 0148 _ 90
        pop     ebp                                     ; 0149 _ 5D
        ret                                             ; 014A _ C3
; initBootInfo End of function

showString:; Function begin
        push    ebp                                     ; 014B _ 55
        mov     ebp, esp                                ; 014C _ 89. E5
        sub     esp, 24                                 ; 014E _ 83. EC, 18
        mov     eax, dword [ebp+18H]                    ; 0151 _ 8B. 45, 18
        mov     byte [ebp-0CH], al                      ; 0154 _ 88. 45, F4
        jmp     ?_005                                   ; 0157 _ EB, 37

?_004:  mov     eax, dword [ebp+1CH]                    ; 0159 _ 8B. 45, 1C
        movzx   eax, byte [eax]                         ; 015C _ 0F B6. 00
        movzx   eax, al                                 ; 015F _ 0F B6. C0
        shl     eax, 4                                  ; 0162 _ C1. E0, 04
        lea     edx, [systemFont+eax]                   ; 0165 _ 8D. 90, 00000000(d)
        movsx   eax, byte [ebp-0CH]                     ; 016B _ 0F BE. 45, F4
        sub     esp, 8                                  ; 016F _ 83. EC, 08
        push    edx                                     ; 0172 _ 52
        push    eax                                     ; 0173 _ 50
        push    dword [ebp+14H]                         ; 0174 _ FF. 75, 14
        push    dword [ebp+10H]                         ; 0177 _ FF. 75, 10
        push    dword [ebp+0CH]                         ; 017A _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 017D _ FF. 75, 08
        call    showFont8                               ; 0180 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0185 _ 83. C4, 20
        add     dword [ebp+10H], 8                      ; 0188 _ 83. 45, 10, 08
        add     dword [ebp+1CH], 1                      ; 018C _ 83. 45, 1C, 01
?_005:  mov     eax, dword [ebp+1CH]                    ; 0190 _ 8B. 45, 1C
        movzx   eax, byte [eax]                         ; 0193 _ 0F B6. 00
        test    al, al                                  ; 0196 _ 84. C0
        jnz     ?_004                                   ; 0198 _ 75, BF
        nop                                             ; 019A _ 90
        leave                                           ; 019B _ C9
        ret                                             ; 019C _ C3
; showString End of function

init_palette:; Function begin
        push    ebp                                     ; 019D _ 55
        mov     ebp, esp                                ; 019E _ 89. E5
        push    ebx                                     ; 01A0 _ 53
        sub     esp, 20                                 ; 01A1 _ 83. EC, 14
        mov     eax, dword [bootInfo]                   ; 01A4 _ A1, 00000100(d)
        mov     dword [ebp-14H], eax                    ; 01A9 _ 89. 45, EC
        movzx   eax, word [?_068]                       ; 01AC _ 0F B7. 05, 00000104(d)
        cwde                                            ; 01B3 _ 98
        mov     dword [ebp-10H], eax                    ; 01B4 _ 89. 45, F0
        movzx   eax, word [?_069]                       ; 01B7 _ 0F B7. 05, 00000106(d)
        cwde                                            ; 01BE _ 98
        mov     dword [ebp-0CH], eax                    ; 01BF _ 89. 45, F4
        sub     esp, 4                                  ; 01C2 _ 83. EC, 04
        push    table_rgb.1565                          ; 01C5 _ 68, 00000020(d)
        push    15                                      ; 01CA _ 6A, 0F
        push    0                                       ; 01CC _ 6A, 00
        call    set_palette                             ; 01CE _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 01D3 _ 83. C4, 10
        mov     eax, dword [ebp-0CH]                    ; 01D6 _ 8B. 45, F4
        lea     edx, [eax-1DH]                          ; 01D9 _ 8D. 50, E3
        mov     eax, dword [ebp-10H]                    ; 01DC _ 8B. 45, F0
        sub     eax, 1                                  ; 01DF _ 83. E8, 01
        sub     esp, 4                                  ; 01E2 _ 83. EC, 04
        push    edx                                     ; 01E5 _ 52
        push    eax                                     ; 01E6 _ 50
        push    0                                       ; 01E7 _ 6A, 00
        push    0                                       ; 01E9 _ 6A, 00
        push    14                                      ; 01EB _ 6A, 0E
        push    dword [ebp-10H]                         ; 01ED _ FF. 75, F0
        push    dword [ebp-14H]                         ; 01F0 _ FF. 75, EC
        call    boxfill8                                ; 01F3 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 01F8 _ 83. C4, 20
        mov     eax, dword [ebp-0CH]                    ; 01FB _ 8B. 45, F4
        lea     ecx, [eax-1CH]                          ; 01FE _ 8D. 48, E4
        mov     eax, dword [ebp-10H]                    ; 0201 _ 8B. 45, F0
        lea     edx, [eax-1H]                           ; 0204 _ 8D. 50, FF
        mov     eax, dword [ebp-0CH]                    ; 0207 _ 8B. 45, F4
        sub     eax, 28                                 ; 020A _ 83. E8, 1C
        sub     esp, 4                                  ; 020D _ 83. EC, 04
        push    ecx                                     ; 0210 _ 51
        push    edx                                     ; 0211 _ 52
        push    eax                                     ; 0212 _ 50
        push    0                                       ; 0213 _ 6A, 00
        push    8                                       ; 0215 _ 6A, 08
        push    dword [ebp-10H]                         ; 0217 _ FF. 75, F0
        push    dword [ebp-14H]                         ; 021A _ FF. 75, EC
        call    boxfill8                                ; 021D _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0222 _ 83. C4, 20
        mov     eax, dword [ebp-0CH]                    ; 0225 _ 8B. 45, F4
        lea     ecx, [eax-1BH]                          ; 0228 _ 8D. 48, E5
        mov     eax, dword [ebp-10H]                    ; 022B _ 8B. 45, F0
        lea     edx, [eax-1H]                           ; 022E _ 8D. 50, FF
        mov     eax, dword [ebp-0CH]                    ; 0231 _ 8B. 45, F4
        sub     eax, 27                                 ; 0234 _ 83. E8, 1B
        sub     esp, 4                                  ; 0237 _ 83. EC, 04
        push    ecx                                     ; 023A _ 51
        push    edx                                     ; 023B _ 52
        push    eax                                     ; 023C _ 50
        push    0                                       ; 023D _ 6A, 00
        push    7                                       ; 023F _ 6A, 07
        push    dword [ebp-10H]                         ; 0241 _ FF. 75, F0
        push    dword [ebp-14H]                         ; 0244 _ FF. 75, EC
        call    boxfill8                                ; 0247 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 024C _ 83. C4, 20
        mov     eax, dword [ebp-0CH]                    ; 024F _ 8B. 45, F4
        lea     ecx, [eax-1H]                           ; 0252 _ 8D. 48, FF
        mov     eax, dword [ebp-10H]                    ; 0255 _ 8B. 45, F0
        lea     edx, [eax-1H]                           ; 0258 _ 8D. 50, FF
        mov     eax, dword [ebp-0CH]                    ; 025B _ 8B. 45, F4
        sub     eax, 26                                 ; 025E _ 83. E8, 1A
        sub     esp, 4                                  ; 0261 _ 83. EC, 04
        push    ecx                                     ; 0264 _ 51
        push    edx                                     ; 0265 _ 52
        push    eax                                     ; 0266 _ 50
        push    0                                       ; 0267 _ 6A, 00
        push    8                                       ; 0269 _ 6A, 08
        push    dword [ebp-10H]                         ; 026B _ FF. 75, F0
        push    dword [ebp-14H]                         ; 026E _ FF. 75, EC
        call    boxfill8                                ; 0271 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0276 _ 83. C4, 20
        mov     eax, dword [ebp-0CH]                    ; 0279 _ 8B. 45, F4
        lea     edx, [eax-18H]                          ; 027C _ 8D. 50, E8
        mov     eax, dword [ebp-0CH]                    ; 027F _ 8B. 45, F4
        sub     eax, 24                                 ; 0282 _ 83. E8, 18
        sub     esp, 4                                  ; 0285 _ 83. EC, 04
        push    edx                                     ; 0288 _ 52
        push    59                                      ; 0289 _ 6A, 3B
        push    eax                                     ; 028B _ 50
        push    3                                       ; 028C _ 6A, 03
        push    7                                       ; 028E _ 6A, 07
        push    dword [ebp-10H]                         ; 0290 _ FF. 75, F0
        push    dword [ebp-14H]                         ; 0293 _ FF. 75, EC
        call    boxfill8                                ; 0296 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 029B _ 83. C4, 20
        mov     eax, dword [ebp-0CH]                    ; 029E _ 8B. 45, F4
        lea     edx, [eax-4H]                           ; 02A1 _ 8D. 50, FC
        mov     eax, dword [ebp-0CH]                    ; 02A4 _ 8B. 45, F4
        sub     eax, 24                                 ; 02A7 _ 83. E8, 18
        sub     esp, 4                                  ; 02AA _ 83. EC, 04
        push    edx                                     ; 02AD _ 52
        push    2                                       ; 02AE _ 6A, 02
        push    eax                                     ; 02B0 _ 50
        push    2                                       ; 02B1 _ 6A, 02
        push    7                                       ; 02B3 _ 6A, 07
        push    dword [ebp-10H]                         ; 02B5 _ FF. 75, F0
        push    dword [ebp-14H]                         ; 02B8 _ FF. 75, EC
        call    boxfill8                                ; 02BB _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 02C0 _ 83. C4, 20
        mov     eax, dword [ebp-0CH]                    ; 02C3 _ 8B. 45, F4
        lea     edx, [eax-4H]                           ; 02C6 _ 8D. 50, FC
        mov     eax, dword [ebp-0CH]                    ; 02C9 _ 8B. 45, F4
        sub     eax, 4                                  ; 02CC _ 83. E8, 04
        sub     esp, 4                                  ; 02CF _ 83. EC, 04
        push    edx                                     ; 02D2 _ 52
        push    59                                      ; 02D3 _ 6A, 3B
        push    eax                                     ; 02D5 _ 50
        push    3                                       ; 02D6 _ 6A, 03
        push    15                                      ; 02D8 _ 6A, 0F
        push    dword [ebp-10H]                         ; 02DA _ FF. 75, F0
        push    dword [ebp-14H]                         ; 02DD _ FF. 75, EC
        call    boxfill8                                ; 02E0 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 02E5 _ 83. C4, 20
        mov     eax, dword [ebp-0CH]                    ; 02E8 _ 8B. 45, F4
        lea     edx, [eax-5H]                           ; 02EB _ 8D. 50, FB
        mov     eax, dword [ebp-0CH]                    ; 02EE _ 8B. 45, F4
        sub     eax, 23                                 ; 02F1 _ 83. E8, 17
        sub     esp, 4                                  ; 02F4 _ 83. EC, 04
        push    edx                                     ; 02F7 _ 52
        push    59                                      ; 02F8 _ 6A, 3B
        push    eax                                     ; 02FA _ 50
        push    59                                      ; 02FB _ 6A, 3B
        push    15                                      ; 02FD _ 6A, 0F
        push    dword [ebp-10H]                         ; 02FF _ FF. 75, F0
        push    dword [ebp-14H]                         ; 0302 _ FF. 75, EC
        call    boxfill8                                ; 0305 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 030A _ 83. C4, 20
        mov     eax, dword [ebp-0CH]                    ; 030D _ 8B. 45, F4
        lea     edx, [eax-3H]                           ; 0310 _ 8D. 50, FD
        mov     eax, dword [ebp-0CH]                    ; 0313 _ 8B. 45, F4
        sub     eax, 3                                  ; 0316 _ 83. E8, 03
        sub     esp, 4                                  ; 0319 _ 83. EC, 04
        push    edx                                     ; 031C _ 52
        push    59                                      ; 031D _ 6A, 3B
        push    eax                                     ; 031F _ 50
        push    2                                       ; 0320 _ 6A, 02
        push    0                                       ; 0322 _ 6A, 00
        push    dword [ebp-10H]                         ; 0324 _ FF. 75, F0
        push    dword [ebp-14H]                         ; 0327 _ FF. 75, EC
        call    boxfill8                                ; 032A _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 032F _ 83. C4, 20
        mov     eax, dword [ebp-0CH]                    ; 0332 _ 8B. 45, F4
        lea     edx, [eax-3H]                           ; 0335 _ 8D. 50, FD
        mov     eax, dword [ebp-0CH]                    ; 0338 _ 8B. 45, F4
        sub     eax, 24                                 ; 033B _ 83. E8, 18
        sub     esp, 4                                  ; 033E _ 83. EC, 04
        push    edx                                     ; 0341 _ 52
        push    60                                      ; 0342 _ 6A, 3C
        push    eax                                     ; 0344 _ 50
        push    60                                      ; 0345 _ 6A, 3C
        push    0                                       ; 0347 _ 6A, 00
        push    dword [ebp-10H]                         ; 0349 _ FF. 75, F0
        push    dword [ebp-14H]                         ; 034C _ FF. 75, EC
        call    boxfill8                                ; 034F _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0354 _ 83. C4, 20
        mov     eax, dword [ebp-0CH]                    ; 0357 _ 8B. 45, F4
        lea     ebx, [eax-18H]                          ; 035A _ 8D. 58, E8
        mov     eax, dword [ebp-10H]                    ; 035D _ 8B. 45, F0
        lea     ecx, [eax-4H]                           ; 0360 _ 8D. 48, FC
        mov     eax, dword [ebp-0CH]                    ; 0363 _ 8B. 45, F4
        lea     edx, [eax-18H]                          ; 0366 _ 8D. 50, E8
        mov     eax, dword [ebp-10H]                    ; 0369 _ 8B. 45, F0
        sub     eax, 47                                 ; 036C _ 83. E8, 2F
        sub     esp, 4                                  ; 036F _ 83. EC, 04
        push    ebx                                     ; 0372 _ 53
        push    ecx                                     ; 0373 _ 51
        push    edx                                     ; 0374 _ 52
        push    eax                                     ; 0375 _ 50
        push    15                                      ; 0376 _ 6A, 0F
        push    dword [ebp-10H]                         ; 0378 _ FF. 75, F0
        push    dword [ebp-14H]                         ; 037B _ FF. 75, EC
        call    boxfill8                                ; 037E _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0383 _ 83. C4, 20
        mov     eax, dword [ebp-0CH]                    ; 0386 _ 8B. 45, F4
        lea     ebx, [eax-4H]                           ; 0389 _ 8D. 58, FC
        mov     eax, dword [ebp-10H]                    ; 038C _ 8B. 45, F0
        lea     ecx, [eax-2FH]                          ; 038F _ 8D. 48, D1
        mov     eax, dword [ebp-0CH]                    ; 0392 _ 8B. 45, F4
        lea     edx, [eax-17H]                          ; 0395 _ 8D. 50, E9
        mov     eax, dword [ebp-10H]                    ; 0398 _ 8B. 45, F0
        sub     eax, 47                                 ; 039B _ 83. E8, 2F
        sub     esp, 4                                  ; 039E _ 83. EC, 04
        push    ebx                                     ; 03A1 _ 53
        push    ecx                                     ; 03A2 _ 51
        push    edx                                     ; 03A3 _ 52
        push    eax                                     ; 03A4 _ 50
        push    15                                      ; 03A5 _ 6A, 0F
        push    dword [ebp-10H]                         ; 03A7 _ FF. 75, F0
        push    dword [ebp-14H]                         ; 03AA _ FF. 75, EC
        call    boxfill8                                ; 03AD _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 03B2 _ 83. C4, 20
        mov     eax, dword [ebp-0CH]                    ; 03B5 _ 8B. 45, F4
        lea     ebx, [eax-3H]                           ; 03B8 _ 8D. 58, FD
        mov     eax, dword [ebp-10H]                    ; 03BB _ 8B. 45, F0
        lea     ecx, [eax-4H]                           ; 03BE _ 8D. 48, FC
        mov     eax, dword [ebp-0CH]                    ; 03C1 _ 8B. 45, F4
        lea     edx, [eax-3H]                           ; 03C4 _ 8D. 50, FD
        mov     eax, dword [ebp-10H]                    ; 03C7 _ 8B. 45, F0
        sub     eax, 47                                 ; 03CA _ 83. E8, 2F
        sub     esp, 4                                  ; 03CD _ 83. EC, 04
        push    ebx                                     ; 03D0 _ 53
        push    ecx                                     ; 03D1 _ 51
        push    edx                                     ; 03D2 _ 52
        push    eax                                     ; 03D3 _ 50
        push    7                                       ; 03D4 _ 6A, 07
        push    dword [ebp-10H]                         ; 03D6 _ FF. 75, F0
        push    dword [ebp-14H]                         ; 03D9 _ FF. 75, EC
        call    boxfill8                                ; 03DC _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 03E1 _ 83. C4, 20
        mov     eax, dword [ebp-0CH]                    ; 03E4 _ 8B. 45, F4
        lea     ebx, [eax-3H]                           ; 03E7 _ 8D. 58, FD
        mov     eax, dword [ebp-10H]                    ; 03EA _ 8B. 45, F0
        lea     ecx, [eax-3H]                           ; 03ED _ 8D. 48, FD
        mov     eax, dword [ebp-0CH]                    ; 03F0 _ 8B. 45, F4
        lea     edx, [eax-18H]                          ; 03F3 _ 8D. 50, E8
        mov     eax, dword [ebp-10H]                    ; 03F6 _ 8B. 45, F0
        sub     eax, 3                                  ; 03F9 _ 83. E8, 03
        sub     esp, 4                                  ; 03FC _ 83. EC, 04
        push    ebx                                     ; 03FF _ 53
        push    ecx                                     ; 0400 _ 51
        push    edx                                     ; 0401 _ 52
        push    eax                                     ; 0402 _ 50
        push    7                                       ; 0403 _ 6A, 07
        push    dword [ebp-10H]                         ; 0405 _ FF. 75, F0
        push    dword [ebp-14H]                         ; 0408 _ FF. 75, EC
        call    boxfill8                                ; 040B _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0410 _ 83. C4, 20
        nop                                             ; 0413 _ 90
        mov     ebx, dword [ebp-4H]                     ; 0414 _ 8B. 5D, FC
        leave                                           ; 0417 _ C9
        ret                                             ; 0418 _ C3
; init_palette End of function

set_palette:; Function begin
        push    ebp                                     ; 0419 _ 55
        mov     ebp, esp                                ; 041A _ 89. E5
        sub     esp, 24                                 ; 041C _ 83. EC, 18
        call    io_load_eflags                          ; 041F _ E8, FFFFFFFC(rel)
        mov     dword [ebp-0CH], eax                    ; 0424 _ 89. 45, F4
        call    io_cli                                  ; 0427 _ E8, FFFFFFFC(rel)
        sub     esp, 8                                  ; 042C _ 83. EC, 08
        push    dword [ebp+8H]                          ; 042F _ FF. 75, 08
        push    968                                     ; 0432 _ 68, 000003C8
        call    io_out8                                 ; 0437 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 043C _ 83. C4, 10
        mov     eax, dword [ebp+8H]                     ; 043F _ 8B. 45, 08
        mov     dword [ebp-10H], eax                    ; 0442 _ 89. 45, F0
        jmp     ?_007                                   ; 0445 _ EB, 65

?_006:  mov     eax, dword [ebp+10H]                    ; 0447 _ 8B. 45, 10
        movzx   eax, byte [eax]                         ; 044A _ 0F B6. 00
        shr     al, 2                                   ; 044D _ C0. E8, 02
        movzx   eax, al                                 ; 0450 _ 0F B6. C0
        sub     esp, 8                                  ; 0453 _ 83. EC, 08
        push    eax                                     ; 0456 _ 50
        push    969                                     ; 0457 _ 68, 000003C9
        call    io_out8                                 ; 045C _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0461 _ 83. C4, 10
        mov     eax, dword [ebp+10H]                    ; 0464 _ 8B. 45, 10
        add     eax, 1                                  ; 0467 _ 83. C0, 01
        movzx   eax, byte [eax]                         ; 046A _ 0F B6. 00
        shr     al, 2                                   ; 046D _ C0. E8, 02
        movzx   eax, al                                 ; 0470 _ 0F B6. C0
        sub     esp, 8                                  ; 0473 _ 83. EC, 08
        push    eax                                     ; 0476 _ 50
        push    969                                     ; 0477 _ 68, 000003C9
        call    io_out8                                 ; 047C _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0481 _ 83. C4, 10
        mov     eax, dword [ebp+10H]                    ; 0484 _ 8B. 45, 10
        add     eax, 2                                  ; 0487 _ 83. C0, 02
        movzx   eax, byte [eax]                         ; 048A _ 0F B6. 00
        shr     al, 2                                   ; 048D _ C0. E8, 02
        movzx   eax, al                                 ; 0490 _ 0F B6. C0
        sub     esp, 8                                  ; 0493 _ 83. EC, 08
        push    eax                                     ; 0496 _ 50
        push    969                                     ; 0497 _ 68, 000003C9
        call    io_out8                                 ; 049C _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 04A1 _ 83. C4, 10
        add     dword [ebp+10H], 3                      ; 04A4 _ 83. 45, 10, 03
        add     dword [ebp-10H], 1                      ; 04A8 _ 83. 45, F0, 01
?_007:  mov     eax, dword [ebp-10H]                    ; 04AC _ 8B. 45, F0
        cmp     eax, dword [ebp+0CH]                    ; 04AF _ 3B. 45, 0C
        jle     ?_006                                   ; 04B2 _ 7E, 93
        sub     esp, 12                                 ; 04B4 _ 83. EC, 0C
        push    dword [ebp-0CH]                         ; 04B7 _ FF. 75, F4
        call    io_store_eflags                         ; 04BA _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 04BF _ 83. C4, 10
        nop                                             ; 04C2 _ 90
        leave                                           ; 04C3 _ C9
        ret                                             ; 04C4 _ C3
; set_palette End of function

boxfill8:; Function begin
        push    ebp                                     ; 04C5 _ 55
        mov     ebp, esp                                ; 04C6 _ 89. E5
        sub     esp, 20                                 ; 04C8 _ 83. EC, 14
        mov     eax, dword [ebp+10H]                    ; 04CB _ 8B. 45, 10
        mov     byte [ebp-14H], al                      ; 04CE _ 88. 45, EC
        mov     eax, dword [ebp+18H]                    ; 04D1 _ 8B. 45, 18
        mov     dword [ebp-4H], eax                     ; 04D4 _ 89. 45, FC
        jmp     ?_011                                   ; 04D7 _ EB, 33

?_008:  mov     eax, dword [ebp+14H]                    ; 04D9 _ 8B. 45, 14
        mov     dword [ebp-8H], eax                     ; 04DC _ 89. 45, F8
        jmp     ?_010                                   ; 04DF _ EB, 1F

?_009:  mov     eax, dword [ebp-4H]                     ; 04E1 _ 8B. 45, FC
        imul    eax, dword [ebp+0CH]                    ; 04E4 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 04E8 _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 04EA _ 8B. 45, F8
        add     eax, edx                                ; 04ED _ 01. D0
        mov     edx, eax                                ; 04EF _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 04F1 _ 8B. 45, 08
        add     edx, eax                                ; 04F4 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 04F6 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 04FA _ 88. 02
        add     dword [ebp-8H], 1                       ; 04FC _ 83. 45, F8, 01
?_010:  mov     eax, dword [ebp-8H]                     ; 0500 _ 8B. 45, F8
        cmp     eax, dword [ebp+1CH]                    ; 0503 _ 3B. 45, 1C
        jle     ?_009                                   ; 0506 _ 7E, D9
        add     dword [ebp-4H], 1                       ; 0508 _ 83. 45, FC, 01
?_011:  mov     eax, dword [ebp-4H]                     ; 050C _ 8B. 45, FC
        cmp     eax, dword [ebp+20H]                    ; 050F _ 3B. 45, 20
        jle     ?_008                                   ; 0512 _ 7E, C5
        nop                                             ; 0514 _ 90
        leave                                           ; 0515 _ C9
        ret                                             ; 0516 _ C3
; boxfill8 End of function

showFont8:; Function begin
        push    ebp                                     ; 0517 _ 55
        mov     ebp, esp                                ; 0518 _ 89. E5
        sub     esp, 20                                 ; 051A _ 83. EC, 14
        mov     eax, dword [ebp+18H]                    ; 051D _ 8B. 45, 18
        mov     byte [ebp-14H], al                      ; 0520 _ 88. 45, EC
        mov     dword [ebp-4H], 0                       ; 0523 _ C7. 45, FC, 00000000
        jmp     ?_021                                   ; 052A _ E9, 0000016C

?_012:  mov     edx, dword [ebp-4H]                     ; 052F _ 8B. 55, FC
        mov     eax, dword [ebp+1CH]                    ; 0532 _ 8B. 45, 1C
        add     eax, edx                                ; 0535 _ 01. D0
        movzx   eax, byte [eax]                         ; 0537 _ 0F B6. 00
        mov     byte [ebp-5H], al                       ; 053A _ 88. 45, FB
        cmp     byte [ebp-5H], 0                        ; 053D _ 80. 7D, FB, 00
        jns     ?_013                                   ; 0541 _ 79, 20
        mov     edx, dword [ebp+14H]                    ; 0543 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 0546 _ 8B. 45, FC
        add     eax, edx                                ; 0549 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 054B _ 0F AF. 45, 0C
        mov     edx, eax                                ; 054F _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 0551 _ 8B. 45, 10
        add     eax, edx                                ; 0554 _ 01. D0
        mov     edx, eax                                ; 0556 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 0558 _ 8B. 45, 08
        add     edx, eax                                ; 055B _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 055D _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0561 _ 88. 02
?_013:  movsx   eax, byte [ebp-5H]                      ; 0563 _ 0F BE. 45, FB
        and     eax, 40H                                ; 0567 _ 83. E0, 40
        test    eax, eax                                ; 056A _ 85. C0
        jz      ?_014                                   ; 056C _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 056E _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 0571 _ 8B. 45, FC
        add     eax, edx                                ; 0574 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 0576 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 057A _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 057C _ 8B. 45, 10
        add     eax, edx                                ; 057F _ 01. D0
        lea     edx, [eax+1H]                           ; 0581 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 0584 _ 8B. 45, 08
        add     edx, eax                                ; 0587 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0589 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 058D _ 88. 02
?_014:  movsx   eax, byte [ebp-5H]                      ; 058F _ 0F BE. 45, FB
        and     eax, 20H                                ; 0593 _ 83. E0, 20
        test    eax, eax                                ; 0596 _ 85. C0
        jz      ?_015                                   ; 0598 _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 059A _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 059D _ 8B. 45, FC
        add     eax, edx                                ; 05A0 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 05A2 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 05A6 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 05A8 _ 8B. 45, 10
        add     eax, edx                                ; 05AB _ 01. D0
        lea     edx, [eax+2H]                           ; 05AD _ 8D. 50, 02
        mov     eax, dword [ebp+8H]                     ; 05B0 _ 8B. 45, 08
        add     edx, eax                                ; 05B3 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 05B5 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 05B9 _ 88. 02
?_015:  movsx   eax, byte [ebp-5H]                      ; 05BB _ 0F BE. 45, FB
        and     eax, 10H                                ; 05BF _ 83. E0, 10
        test    eax, eax                                ; 05C2 _ 85. C0
        jz      ?_016                                   ; 05C4 _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 05C6 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 05C9 _ 8B. 45, FC
        add     eax, edx                                ; 05CC _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 05CE _ 0F AF. 45, 0C
        mov     edx, eax                                ; 05D2 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 05D4 _ 8B. 45, 10
        add     eax, edx                                ; 05D7 _ 01. D0
        lea     edx, [eax+3H]                           ; 05D9 _ 8D. 50, 03
        mov     eax, dword [ebp+8H]                     ; 05DC _ 8B. 45, 08
        add     edx, eax                                ; 05DF _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 05E1 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 05E5 _ 88. 02
?_016:  movsx   eax, byte [ebp-5H]                      ; 05E7 _ 0F BE. 45, FB
        and     eax, 08H                                ; 05EB _ 83. E0, 08
        test    eax, eax                                ; 05EE _ 85. C0
        jz      ?_017                                   ; 05F0 _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 05F2 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 05F5 _ 8B. 45, FC
        add     eax, edx                                ; 05F8 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 05FA _ 0F AF. 45, 0C
        mov     edx, eax                                ; 05FE _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 0600 _ 8B. 45, 10
        add     eax, edx                                ; 0603 _ 01. D0
        lea     edx, [eax+4H]                           ; 0605 _ 8D. 50, 04
        mov     eax, dword [ebp+8H]                     ; 0608 _ 8B. 45, 08
        add     edx, eax                                ; 060B _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 060D _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0611 _ 88. 02
?_017:  movsx   eax, byte [ebp-5H]                      ; 0613 _ 0F BE. 45, FB
        and     eax, 04H                                ; 0617 _ 83. E0, 04
        test    eax, eax                                ; 061A _ 85. C0
        jz      ?_018                                   ; 061C _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 061E _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 0621 _ 8B. 45, FC
        add     eax, edx                                ; 0624 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 0626 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 062A _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 062C _ 8B. 45, 10
        add     eax, edx                                ; 062F _ 01. D0
        lea     edx, [eax+5H]                           ; 0631 _ 8D. 50, 05
        mov     eax, dword [ebp+8H]                     ; 0634 _ 8B. 45, 08
        add     edx, eax                                ; 0637 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0639 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 063D _ 88. 02
?_018:  movsx   eax, byte [ebp-5H]                      ; 063F _ 0F BE. 45, FB
        and     eax, 02H                                ; 0643 _ 83. E0, 02
        test    eax, eax                                ; 0646 _ 85. C0
        jz      ?_019                                   ; 0648 _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 064A _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 064D _ 8B. 45, FC
        add     eax, edx                                ; 0650 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 0652 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 0656 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 0658 _ 8B. 45, 10
        add     eax, edx                                ; 065B _ 01. D0
        lea     edx, [eax+6H]                           ; 065D _ 8D. 50, 06
        mov     eax, dword [ebp+8H]                     ; 0660 _ 8B. 45, 08
        add     edx, eax                                ; 0663 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0665 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0669 _ 88. 02
?_019:  movsx   eax, byte [ebp-5H]                      ; 066B _ 0F BE. 45, FB
        and     eax, 01H                                ; 066F _ 83. E0, 01
        test    eax, eax                                ; 0672 _ 85. C0
        jz      ?_020                                   ; 0674 _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 0676 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 0679 _ 8B. 45, FC
        add     eax, edx                                ; 067C _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 067E _ 0F AF. 45, 0C
        mov     edx, eax                                ; 0682 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 0684 _ 8B. 45, 10
        add     eax, edx                                ; 0687 _ 01. D0
        lea     edx, [eax+7H]                           ; 0689 _ 8D. 50, 07
        mov     eax, dword [ebp+8H]                     ; 068C _ 8B. 45, 08
        add     edx, eax                                ; 068F _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0691 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0695 _ 88. 02
?_020:  add     dword [ebp-4H], 1                       ; 0697 _ 83. 45, FC, 01
?_021:  cmp     dword [ebp-4H], 15                      ; 069B _ 83. 7D, FC, 0F
        jle     ?_012                                   ; 069F _ 0F 8E, FFFFFE8A
        nop                                             ; 06A5 _ 90
        leave                                           ; 06A6 _ C9
        ret                                             ; 06A7 _ C3
; showFont8 End of function

init_mouse_cursor:; Function begin
        push    ebp                                     ; 06A8 _ 55
        mov     ebp, esp                                ; 06A9 _ 89. E5
        sub     esp, 56                                 ; 06AB _ 83. EC, 38
        mov     eax, dword [ebp+0CH]                    ; 06AE _ 8B. 45, 0C
        mov     byte [ebp-2CH], al                      ; 06B1 _ 88. 45, D4
        mov     eax, dword [bootInfo]                   ; 06B4 _ A1, 00000100(d)
        mov     dword [ebp-14H], eax                    ; 06B9 _ 89. 45, EC
        movzx   eax, word [?_068]                       ; 06BC _ 0F B7. 05, 00000104(d)
        cwde                                            ; 06C3 _ 98
        mov     dword [ebp-10H], eax                    ; 06C4 _ 89. 45, F0
        movzx   eax, word [?_069]                       ; 06C7 _ 0F B7. 05, 00000106(d)
        cwde                                            ; 06CE _ 98
        mov     dword [ebp-0CH], eax                    ; 06CF _ 89. 45, F4
        mov     eax, dword [ebp-10H]                    ; 06D2 _ 8B. 45, F0
        sub     eax, 16                                 ; 06D5 _ 83. E8, 10
        mov     edx, eax                                ; 06D8 _ 89. C2
        shr     edx, 31                                 ; 06DA _ C1. EA, 1F
        add     eax, edx                                ; 06DD _ 01. D0
        sar     eax, 1                                  ; 06DF _ D1. F8
        mov     dword [mx], eax                         ; 06E1 _ A3, 000001F0(d)
        mov     eax, dword [ebp-0CH]                    ; 06E6 _ 8B. 45, F4
        sub     eax, 16                                 ; 06E9 _ 83. E8, 10
        mov     edx, eax                                ; 06EC _ 89. C2
        shr     edx, 31                                 ; 06EE _ C1. EA, 1F
        add     eax, edx                                ; 06F1 _ 01. D0
        sar     eax, 1                                  ; 06F3 _ D1. F8
        mov     dword [my], eax                         ; 06F5 _ A3, 000001F4(d)
        mov     dword [ebp-18H], 0                      ; 06FA _ C7. 45, E8, 00000000
        jmp     ?_028                                   ; 0701 _ E9, 000000B1

?_022:  mov     dword [ebp-1CH], 0                      ; 0706 _ C7. 45, E4, 00000000
        jmp     ?_027                                   ; 070D _ E9, 00000097

?_023:  mov     eax, dword [ebp-18H]                    ; 0712 _ 8B. 45, E8
        shl     eax, 4                                  ; 0715 _ C1. E0, 04
        mov     edx, eax                                ; 0718 _ 89. C2
        mov     eax, dword [ebp-1CH]                    ; 071A _ 8B. 45, E4
        add     eax, edx                                ; 071D _ 01. D0
        add     eax, cursor.1613                        ; 071F _ 05, 00000060(d)
        movzx   eax, byte [eax]                         ; 0724 _ 0F B6. 00
        cmp     al, 42                                  ; 0727 _ 3C, 2A
        jnz     ?_024                                   ; 0729 _ 75, 17
        mov     eax, dword [ebp-18H]                    ; 072B _ 8B. 45, E8
        shl     eax, 4                                  ; 072E _ C1. E0, 04
        mov     edx, eax                                ; 0731 _ 89. C2
        mov     eax, dword [ebp-1CH]                    ; 0733 _ 8B. 45, E4
        add     eax, edx                                ; 0736 _ 01. D0
        mov     edx, eax                                ; 0738 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 073A _ 8B. 45, 08
        add     eax, edx                                ; 073D _ 01. D0
        mov     byte [eax], 0                           ; 073F _ C6. 00, 00
?_024:  mov     eax, dword [ebp-18H]                    ; 0742 _ 8B. 45, E8
        shl     eax, 4                                  ; 0745 _ C1. E0, 04
        mov     edx, eax                                ; 0748 _ 89. C2
        mov     eax, dword [ebp-1CH]                    ; 074A _ 8B. 45, E4
        add     eax, edx                                ; 074D _ 01. D0
        add     eax, cursor.1613                        ; 074F _ 05, 00000060(d)
        movzx   eax, byte [eax]                         ; 0754 _ 0F B6. 00
        cmp     al, 79                                  ; 0757 _ 3C, 4F
        jnz     ?_025                                   ; 0759 _ 75, 17
        mov     eax, dword [ebp-18H]                    ; 075B _ 8B. 45, E8
        shl     eax, 4                                  ; 075E _ C1. E0, 04
        mov     edx, eax                                ; 0761 _ 89. C2
        mov     eax, dword [ebp-1CH]                    ; 0763 _ 8B. 45, E4
        add     eax, edx                                ; 0766 _ 01. D0
        mov     edx, eax                                ; 0768 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 076A _ 8B. 45, 08
        add     eax, edx                                ; 076D _ 01. D0
        mov     byte [eax], 7                           ; 076F _ C6. 00, 07
?_025:  mov     eax, dword [ebp-18H]                    ; 0772 _ 8B. 45, E8
        shl     eax, 4                                  ; 0775 _ C1. E0, 04
        mov     edx, eax                                ; 0778 _ 89. C2
        mov     eax, dword [ebp-1CH]                    ; 077A _ 8B. 45, E4
        add     eax, edx                                ; 077D _ 01. D0
        add     eax, cursor.1613                        ; 077F _ 05, 00000060(d)
        movzx   eax, byte [eax]                         ; 0784 _ 0F B6. 00
        cmp     al, 46                                  ; 0787 _ 3C, 2E
        jnz     ?_026                                   ; 0789 _ 75, 1A
        mov     eax, dword [ebp-18H]                    ; 078B _ 8B. 45, E8
        shl     eax, 4                                  ; 078E _ C1. E0, 04
        mov     edx, eax                                ; 0791 _ 89. C2
        mov     eax, dword [ebp-1CH]                    ; 0793 _ 8B. 45, E4
        add     eax, edx                                ; 0796 _ 01. D0
        mov     edx, eax                                ; 0798 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 079A _ 8B. 45, 08
        add     edx, eax                                ; 079D _ 01. C2
        movzx   eax, byte [ebp-2CH]                     ; 079F _ 0F B6. 45, D4
        mov     byte [edx], al                          ; 07A3 _ 88. 02
?_026:  add     dword [ebp-1CH], 1                      ; 07A5 _ 83. 45, E4, 01
?_027:  cmp     dword [ebp-1CH], 15                     ; 07A9 _ 83. 7D, E4, 0F
        jle     ?_023                                   ; 07AD _ 0F 8E, FFFFFF5F
        add     dword [ebp-18H], 1                      ; 07B3 _ 83. 45, E8, 01
?_028:  cmp     dword [ebp-18H], 15                     ; 07B7 _ 83. 7D, E8, 0F
        jle     ?_022                                   ; 07BB _ 0F 8E, FFFFFF45
        mov     edx, dword [my]                         ; 07C1 _ 8B. 15, 000001F4(d)
        mov     eax, dword [mx]                         ; 07C7 _ A1, 000001F0(d)
        push    16                                      ; 07CC _ 6A, 10
        push    mcursor                                 ; 07CE _ 68, 00000000(d)
        push    edx                                     ; 07D3 _ 52
        push    eax                                     ; 07D4 _ 50
        push    16                                      ; 07D5 _ 6A, 10
        push    16                                      ; 07D7 _ 6A, 10
        push    dword [ebp-10H]                         ; 07D9 _ FF. 75, F0
        push    dword [ebp-14H]                         ; 07DC _ FF. 75, EC
        call    putblock                                ; 07DF _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 07E4 _ 83. C4, 20
        nop                                             ; 07E7 _ 90
        leave                                           ; 07E8 _ C9
        ret                                             ; 07E9 _ C3
; init_mouse_cursor End of function

putblock:; Function begin
        push    ebp                                     ; 07EA _ 55
        mov     ebp, esp                                ; 07EB _ 89. E5
        push    ebx                                     ; 07ED _ 53
        sub     esp, 16                                 ; 07EE _ 83. EC, 10
        mov     dword [ebp-8H], 0                       ; 07F1 _ C7. 45, F8, 00000000
        jmp     ?_032                                   ; 07F8 _ EB, 50

?_029:  mov     dword [ebp-0CH], 0                      ; 07FA _ C7. 45, F4, 00000000
        jmp     ?_031                                   ; 0801 _ EB, 3B

?_030:  mov     eax, dword [ebp-8H]                     ; 0803 _ 8B. 45, F8
        imul    eax, dword [ebp+24H]                    ; 0806 _ 0F AF. 45, 24
        mov     edx, eax                                ; 080A _ 89. C2
        mov     eax, dword [ebp-0CH]                    ; 080C _ 8B. 45, F4
        add     eax, edx                                ; 080F _ 01. D0
        mov     edx, eax                                ; 0811 _ 89. C2
        mov     eax, dword [ebp+20H]                    ; 0813 _ 8B. 45, 20
        add     eax, edx                                ; 0816 _ 01. D0
        mov     ecx, dword [ebp+1CH]                    ; 0818 _ 8B. 4D, 1C
        mov     edx, dword [ebp-8H]                     ; 081B _ 8B. 55, F8
        add     edx, ecx                                ; 081E _ 01. CA
        imul    edx, dword [ebp+0CH]                    ; 0820 _ 0F AF. 55, 0C
        mov     ebx, dword [ebp+18H]                    ; 0824 _ 8B. 5D, 18
        mov     ecx, dword [ebp-0CH]                    ; 0827 _ 8B. 4D, F4
        add     ecx, ebx                                ; 082A _ 01. D9
        add     edx, ecx                                ; 082C _ 01. CA
        mov     ecx, edx                                ; 082E _ 89. D1
        mov     edx, dword [ebp+8H]                     ; 0830 _ 8B. 55, 08
        add     edx, ecx                                ; 0833 _ 01. CA
        movzx   eax, byte [eax]                         ; 0835 _ 0F B6. 00
        mov     byte [edx], al                          ; 0838 _ 88. 02
        add     dword [ebp-0CH], 1                      ; 083A _ 83. 45, F4, 01
?_031:  mov     eax, dword [ebp-0CH]                    ; 083E _ 8B. 45, F4
        cmp     eax, dword [ebp+10H]                    ; 0841 _ 3B. 45, 10
        jl      ?_030                                   ; 0844 _ 7C, BD
        add     dword [ebp-8H], 1                       ; 0846 _ 83. 45, F8, 01
?_032:  mov     eax, dword [ebp-8H]                     ; 084A _ 8B. 45, F8
        cmp     eax, dword [ebp+14H]                    ; 084D _ 3B. 45, 14
        jl      ?_029                                   ; 0850 _ 7C, A8
        nop                                             ; 0852 _ 90
        add     esp, 16                                 ; 0853 _ 83. C4, 10
        pop     ebx                                     ; 0856 _ 5B
        pop     ebp                                     ; 0857 _ 5D
        ret                                             ; 0858 _ C3
; putblock End of function

intHandlerFromC:; Function begin
        push    ebp                                     ; 0859 _ 55
        mov     ebp, esp                                ; 085A _ 89. E5
        sub     esp, 24                                 ; 085C _ 83. EC, 18
        mov     eax, dword [bootInfo]                   ; 085F _ A1, 00000100(d)
        mov     dword [ebp-14H], eax                    ; 0864 _ 89. 45, EC
        movzx   eax, word [?_068]                       ; 0867 _ 0F B7. 05, 00000104(d)
        cwde                                            ; 086E _ 98
        mov     dword [ebp-10H], eax                    ; 086F _ 89. 45, F0
        movzx   eax, word [?_069]                       ; 0872 _ 0F B7. 05, 00000106(d)
        cwde                                            ; 0879 _ 98
        mov     dword [ebp-0CH], eax                    ; 087A _ 89. 45, F4
        sub     esp, 8                                  ; 087D _ 83. EC, 08
        push    32                                      ; 0880 _ 6A, 20
        push    32                                      ; 0882 _ 6A, 20
        call    io_out8                                 ; 0884 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0889 _ 83. C4, 10
        mov     byte [ebp-15H], 0                       ; 088C _ C6. 45, EB, 00
        sub     esp, 12                                 ; 0890 _ 83. EC, 0C
        push    96                                      ; 0893 _ 6A, 60
        call    io_in8                                  ; 0895 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 089A _ 83. C4, 10
        mov     byte [ebp-15H], al                      ; 089D _ 88. 45, EB
        movzx   eax, byte [ebp-15H]                     ; 08A0 _ 0F B6. 45, EB
        sub     esp, 8                                  ; 08A4 _ 83. EC, 08
        push    eax                                     ; 08A7 _ 50
        push    keyInfo                                 ; 08A8 _ 68, 00000108(d)
        call    fifo8_put                               ; 08AD _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 08B2 _ 83. C4, 10
        nop                                             ; 08B5 _ 90
        leave                                           ; 08B6 _ C9
        ret                                             ; 08B7 _ C3
; intHandlerFromC End of function

charToHex:; Function begin
        push    ebp                                     ; 08B8 _ 55
        mov     ebp, esp                                ; 08B9 _ 89. E5
        sub     esp, 40                                 ; 08BB _ 83. EC, 28
        mov     eax, dword [ebp+8H]                     ; 08BE _ 8B. 45, 08
        mov     byte [ebp-1CH], al                      ; 08C1 _ 88. 45, E4
        movzx   eax, byte [ebp-1CH]                     ; 08C4 _ 0F B6. 45, E4
        and     eax, 0FH                                ; 08C8 _ 83. E0, 0F
        mov     byte [ebp-9H], al                       ; 08CB _ 88. 45, F7
        movsx   eax, byte [ebp-9H]                      ; 08CE _ 0F BE. 45, F7
        sub     esp, 12                                 ; 08D2 _ 83. EC, 0C
        push    eax                                     ; 08D5 _ 50
        call    charToVal                               ; 08D6 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 08DB _ 83. C4, 10
        mov     byte [?_067], al                        ; 08DE _ A2, 00000013(d)
        movzx   eax, byte [ebp-1CH]                     ; 08E3 _ 0F B6. 45, E4
        shr     al, 4                                   ; 08E7 _ C0. E8, 04
        mov     byte [ebp-1CH], al                      ; 08EA _ 88. 45, E4
        movzx   eax, byte [ebp-1CH]                     ; 08ED _ 0F B6. 45, E4
        movsx   eax, al                                 ; 08F1 _ 0F BE. C0
        sub     esp, 12                                 ; 08F4 _ 83. EC, 0C
        push    eax                                     ; 08F7 _ 50
        call    charToVal                               ; 08F8 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 08FD _ 83. C4, 10
        mov     byte [?_066], al                        ; 0900 _ A2, 00000012(d)
        mov     eax, keyVal                             ; 0905 _ B8, 00000010(d)
        leave                                           ; 090A _ C9
        ret                                             ; 090B _ C3
; charToHex End of function

charToVal:; Function begin
        push    ebp                                     ; 090C _ 55
        mov     ebp, esp                                ; 090D _ 89. E5
        sub     esp, 4                                  ; 090F _ 83. EC, 04
        mov     eax, dword [ebp+8H]                     ; 0912 _ 8B. 45, 08
        mov     byte [ebp-4H], al                       ; 0915 _ 88. 45, FC
        cmp     byte [ebp-4H], 9                        ; 0918 _ 80. 7D, FC, 09
        jle     ?_033                                   ; 091C _ 7E, 09
        movzx   eax, byte [ebp-4H]                      ; 091E _ 0F B6. 45, FC
        add     eax, 55                                 ; 0922 _ 83. C0, 37
        jmp     ?_034                                   ; 0925 _ EB, 07

?_033:  movzx   eax, byte [ebp-4H]                      ; 0927 _ 0F B6. 45, FC
        add     eax, 48                                 ; 092B _ 83. C0, 30
?_034:  leave                                           ; 092E _ C9
        ret                                             ; 092F _ C3
; charToVal End of function

intToHexStr:; Function begin
        push    ebp                                     ; 0930 _ 55
        mov     ebp, esp                                ; 0931 _ 89. E5
        sub     esp, 16                                 ; 0933 _ 83. EC, 10
        mov     byte [str.1656], 48                     ; 0936 _ C6. 05, 0000020C(d), 30
        mov     byte [?_070], 120                       ; 093D _ C6. 05, 0000020D(d), 78
        mov     byte [?_071], 0                         ; 0944 _ C6. 05, 00000216(d), 00
        mov     dword [ebp-0CH], 2                      ; 094B _ C7. 45, F4, 00000002
        jmp     ?_036                                   ; 0952 _ EB, 0F

?_035:  mov     eax, dword [ebp-0CH]                    ; 0954 _ 8B. 45, F4
        add     eax, str.1656                           ; 0957 _ 05, 0000020C(d)
        mov     byte [eax], 48                          ; 095C _ C6. 00, 30
        add     dword [ebp-0CH], 1                      ; 095F _ 83. 45, F4, 01
?_036:  cmp     dword [ebp-0CH], 9                      ; 0963 _ 83. 7D, F4, 09
        jle     ?_035                                   ; 0967 _ 7E, EB
        mov     dword [ebp-8H], 9                       ; 0969 _ C7. 45, F8, 00000009
        jmp     ?_039                                   ; 0970 _ EB, 48

?_037:  mov     eax, dword [ebp+8H]                     ; 0972 _ 8B. 45, 08
        and     eax, 0FH                                ; 0975 _ 83. E0, 0F
        mov     dword [ebp-4H], eax                     ; 0978 _ 89. 45, FC
        mov     eax, dword [ebp+8H]                     ; 097B _ 8B. 45, 08
        shr     eax, 4                                  ; 097E _ C1. E8, 04
        mov     dword [ebp+8H], eax                     ; 0981 _ 89. 45, 08
        cmp     dword [ebp-4H], 9                       ; 0984 _ 83. 7D, FC, 09
        jle     ?_038                                   ; 0988 _ 7E, 19
        mov     eax, dword [ebp-4H]                     ; 098A _ 8B. 45, FC
        lea     ecx, [eax+37H]                          ; 098D _ 8D. 48, 37
        mov     eax, dword [ebp-8H]                     ; 0990 _ 8B. 45, F8
        lea     edx, [eax-1H]                           ; 0993 _ 8D. 50, FF
        mov     dword [ebp-8H], edx                     ; 0996 _ 89. 55, F8
        mov     edx, ecx                                ; 0999 _ 89. CA
        mov     byte [str.1656+eax], dl                 ; 099B _ 88. 90, 0000020C(d)
        jmp     ?_039                                   ; 09A1 _ EB, 17

?_038:  mov     eax, dword [ebp-4H]                     ; 09A3 _ 8B. 45, FC
        lea     ecx, [eax+30H]                          ; 09A6 _ 8D. 48, 30
        mov     eax, dword [ebp-8H]                     ; 09A9 _ 8B. 45, F8
        lea     edx, [eax-1H]                           ; 09AC _ 8D. 50, FF
        mov     dword [ebp-8H], edx                     ; 09AF _ 89. 55, F8
        mov     edx, ecx                                ; 09B2 _ 89. CA
        mov     byte [str.1656+eax], dl                 ; 09B4 _ 88. 90, 0000020C(d)
?_039:  cmp     dword [ebp-8H], 1                       ; 09BA _ 83. 7D, F8, 01
        jle     ?_040                                   ; 09BE _ 7E, 06
        cmp     dword [ebp+8H], 0                       ; 09C0 _ 83. 7D, 08, 00
        jnz     ?_037                                   ; 09C4 _ 75, AC
?_040:  mov     eax, str.1656                           ; 09C6 _ B8, 0000020C(d)
        leave                                           ; 09CB _ C9
        ret                                             ; 09CC _ C3
; intToHexStr End of function

wait_KBC_sendReady:; Function begin
        push    ebp                                     ; 09CD _ 55
        mov     ebp, esp                                ; 09CE _ 89. E5
        sub     esp, 8                                  ; 09D0 _ 83. EC, 08
?_041:  sub     esp, 12                                 ; 09D3 _ 83. EC, 0C
        push    100                                     ; 09D6 _ 6A, 64
        call    io_in8                                  ; 09D8 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 09DD _ 83. C4, 10
        movsx   eax, al                                 ; 09E0 _ 0F BE. C0
        and     eax, 02H                                ; 09E3 _ 83. E0, 02
        test    eax, eax                                ; 09E6 _ 85. C0
        jz      ?_042                                   ; 09E8 _ 74, 02
        jmp     ?_041                                   ; 09EA _ EB, E7

?_042:  nop                                             ; 09EC _ 90
        nop                                             ; 09ED _ 90
        leave                                           ; 09EE _ C9
        ret                                             ; 09EF _ C3
; wait_KBC_sendReady End of function

init_keyboard:; Function begin
        push    ebp                                     ; 09F0 _ 55
        mov     ebp, esp                                ; 09F1 _ 89. E5
        sub     esp, 8                                  ; 09F3 _ 83. EC, 08
        call    wait_KBC_sendReady                      ; 09F6 _ E8, FFFFFFFC(rel)
        sub     esp, 8                                  ; 09FB _ 83. EC, 08
        push    96                                      ; 09FE _ 6A, 60
        push    100                                     ; 0A00 _ 6A, 64
        call    io_out8                                 ; 0A02 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0A07 _ 83. C4, 10
        call    wait_KBC_sendReady                      ; 0A0A _ E8, FFFFFFFC(rel)
        sub     esp, 8                                  ; 0A0F _ 83. EC, 08
        push    71                                      ; 0A12 _ 6A, 47
        push    96                                      ; 0A14 _ 6A, 60
        call    io_out8                                 ; 0A16 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0A1B _ 83. C4, 10
        nop                                             ; 0A1E _ 90
        leave                                           ; 0A1F _ C9
        ret                                             ; 0A20 _ C3
; init_keyboard End of function

enable_mouse:; Function begin
        push    ebp                                     ; 0A21 _ 55
        mov     ebp, esp                                ; 0A22 _ 89. E5
        sub     esp, 8                                  ; 0A24 _ 83. EC, 08
        call    wait_KBC_sendReady                      ; 0A27 _ E8, FFFFFFFC(rel)
        sub     esp, 8                                  ; 0A2C _ 83. EC, 08
        push    212                                     ; 0A2F _ 68, 000000D4
        push    100                                     ; 0A34 _ 6A, 64
        call    io_out8                                 ; 0A36 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0A3B _ 83. C4, 10
        call    wait_KBC_sendReady                      ; 0A3E _ E8, FFFFFFFC(rel)
        sub     esp, 8                                  ; 0A43 _ 83. EC, 08
        push    244                                     ; 0A46 _ 68, 000000F4
        push    96                                      ; 0A4B _ 6A, 60
        call    io_out8                                 ; 0A4D _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0A52 _ 83. C4, 10
        nop                                             ; 0A55 _ 90
        leave                                           ; 0A56 _ C9
        ret                                             ; 0A57 _ C3
; enable_mouse End of function

intHandlerForMouse:; Function begin
        push    ebp                                     ; 0A58 _ 55
        mov     ebp, esp                                ; 0A59 _ 89. E5
        sub     esp, 24                                 ; 0A5B _ 83. EC, 18
        mov     byte [ebp-9H], 0                        ; 0A5E _ C6. 45, F7, 00
        sub     esp, 8                                  ; 0A62 _ 83. EC, 08
        push    32                                      ; 0A65 _ 6A, 20
        push    32                                      ; 0A67 _ 6A, 20
        call    io_out8                                 ; 0A69 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0A6E _ 83. C4, 10
        sub     esp, 8                                  ; 0A71 _ 83. EC, 08
        push    32                                      ; 0A74 _ 6A, 20
        push    160                                     ; 0A76 _ 68, 000000A0
        call    io_out8                                 ; 0A7B _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0A80 _ 83. C4, 10
        sub     esp, 12                                 ; 0A83 _ 83. EC, 0C
        push    96                                      ; 0A86 _ 6A, 60
        call    io_in8                                  ; 0A88 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0A8D _ 83. C4, 10
        mov     byte [ebp-9H], al                       ; 0A90 _ 88. 45, F7
        movzx   eax, byte [ebp-9H]                      ; 0A93 _ 0F B6. 45, F7
        sub     esp, 8                                  ; 0A97 _ 83. EC, 08
        push    eax                                     ; 0A9A _ 50
        push    mouseInfo                               ; 0A9B _ 68, 00000120(d)
        call    fifo8_put                               ; 0AA0 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0AA5 _ 83. C4, 10
        nop                                             ; 0AA8 _ 90
        leave                                           ; 0AA9 _ C9
        ret                                             ; 0AAA _ C3
; intHandlerForMouse End of function

fifo8_init:; Function begin
        push    ebp                                     ; 0AAB _ 55
        mov     ebp, esp                                ; 0AAC _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 0AAE _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 0AB1 _ 8B. 55, 0C
        mov     dword [eax+0CH], edx                    ; 0AB4 _ 89. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 0AB7 _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 0ABA _ 8B. 55, 10
        mov     dword [eax], edx                        ; 0ABD _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 0ABF _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 0AC2 _ 8B. 55, 0C
        mov     dword [eax+10H], edx                    ; 0AC5 _ 89. 50, 10
        mov     eax, dword [ebp+8H]                     ; 0AC8 _ 8B. 45, 08
        mov     dword [eax+4H], 0                       ; 0ACB _ C7. 40, 04, 00000000
        mov     eax, dword [ebp+8H]                     ; 0AD2 _ 8B. 45, 08
        mov     dword [eax+8H], 0                       ; 0AD5 _ C7. 40, 08, 00000000
        mov     eax, dword [ebp+8H]                     ; 0ADC _ 8B. 45, 08
        mov     dword [eax+14H], 0                      ; 0ADF _ C7. 40, 14, 00000000
        nop                                             ; 0AE6 _ 90
        pop     ebp                                     ; 0AE7 _ 5D
        ret                                             ; 0AE8 _ C3
; fifo8_init End of function

fifo8_put:; Function begin
        push    ebp                                     ; 0AE9 _ 55
        mov     ebp, esp                                ; 0AEA _ 89. E5
        sub     esp, 4                                  ; 0AEC _ 83. EC, 04
        mov     eax, dword [ebp+0CH]                    ; 0AEF _ 8B. 45, 0C
        mov     byte [ebp-4H], al                       ; 0AF2 _ 88. 45, FC
        mov     eax, dword [ebp+8H]                     ; 0AF5 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 0AF8 _ 8B. 40, 10
        test    eax, eax                                ; 0AFB _ 85. C0
        jnz     ?_043                                   ; 0AFD _ 75, 18
        mov     eax, dword [ebp+8H]                     ; 0AFF _ 8B. 45, 08
        mov     eax, dword [eax+14H]                    ; 0B02 _ 8B. 40, 14
        or      eax, 01H                                ; 0B05 _ 83. C8, 01
        mov     edx, eax                                ; 0B08 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 0B0A _ 8B. 45, 08
        mov     dword [eax+14H], edx                    ; 0B0D _ 89. 50, 14
        mov     eax, 4294967295                         ; 0B10 _ B8, FFFFFFFF
        jmp     ?_045                                   ; 0B15 _ EB, 50

?_043:  mov     eax, dword [ebp+8H]                     ; 0B17 _ 8B. 45, 08
        mov     edx, dword [eax]                        ; 0B1A _ 8B. 10
        mov     eax, dword [ebp+8H]                     ; 0B1C _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 0B1F _ 8B. 40, 08
        add     edx, eax                                ; 0B22 _ 01. C2
        movzx   eax, byte [ebp-4H]                      ; 0B24 _ 0F B6. 45, FC
        mov     byte [edx], al                          ; 0B28 _ 88. 02
        mov     eax, dword [ebp+8H]                     ; 0B2A _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 0B2D _ 8B. 40, 08
        lea     edx, [eax+1H]                           ; 0B30 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 0B33 _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 0B36 _ 89. 50, 08
        mov     eax, dword [ebp+8H]                     ; 0B39 _ 8B. 45, 08
        mov     edx, dword [eax+8H]                     ; 0B3C _ 8B. 50, 08
        mov     eax, dword [ebp+8H]                     ; 0B3F _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 0B42 _ 8B. 40, 0C
        cmp     edx, eax                                ; 0B45 _ 39. C2
        jnz     ?_044                                   ; 0B47 _ 75, 0A
        mov     eax, dword [ebp+8H]                     ; 0B49 _ 8B. 45, 08
        mov     dword [eax+8H], 0                       ; 0B4C _ C7. 40, 08, 00000000
?_044:  mov     eax, dword [ebp+8H]                     ; 0B53 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 0B56 _ 8B. 40, 10
        lea     edx, [eax-1H]                           ; 0B59 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 0B5C _ 8B. 45, 08
        mov     dword [eax+10H], edx                    ; 0B5F _ 89. 50, 10
        mov     eax, 1                                  ; 0B62 _ B8, 00000001
?_045:  leave                                           ; 0B67 _ C9
        ret                                             ; 0B68 _ C3
; fifo8_put End of function

fifo8_get:; Function begin
        push    ebp                                     ; 0B69 _ 55
        mov     ebp, esp                                ; 0B6A _ 89. E5
        sub     esp, 16                                 ; 0B6C _ 83. EC, 10
        mov     eax, dword [ebp+8H]                     ; 0B6F _ 8B. 45, 08
        mov     edx, dword [eax+10H]                    ; 0B72 _ 8B. 50, 10
        mov     eax, dword [ebp+8H]                     ; 0B75 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 0B78 _ 8B. 40, 0C
        cmp     edx, eax                                ; 0B7B _ 39. C2
        jnz     ?_046                                   ; 0B7D _ 75, 07
        mov     eax, 4294967295                         ; 0B7F _ B8, FFFFFFFF
        jmp     ?_048                                   ; 0B84 _ EB, 51

?_046:  mov     eax, dword [ebp+8H]                     ; 0B86 _ 8B. 45, 08
        mov     edx, dword [eax]                        ; 0B89 _ 8B. 10
        mov     eax, dword [ebp+8H]                     ; 0B8B _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 0B8E _ 8B. 40, 04
        add     eax, edx                                ; 0B91 _ 01. D0
        movzx   eax, byte [eax]                         ; 0B93 _ 0F B6. 00
        movzx   eax, al                                 ; 0B96 _ 0F B6. C0
        mov     dword [ebp-4H], eax                     ; 0B99 _ 89. 45, FC
        mov     eax, dword [ebp+8H]                     ; 0B9C _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 0B9F _ 8B. 40, 04
        lea     edx, [eax+1H]                           ; 0BA2 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 0BA5 _ 8B. 45, 08
        mov     dword [eax+4H], edx                     ; 0BA8 _ 89. 50, 04
        mov     eax, dword [ebp+8H]                     ; 0BAB _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 0BAE _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 0BB1 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 0BB4 _ 8B. 40, 0C
        cmp     edx, eax                                ; 0BB7 _ 39. C2
        jnz     ?_047                                   ; 0BB9 _ 75, 0A
        mov     eax, dword [ebp+8H]                     ; 0BBB _ 8B. 45, 08
        mov     dword [eax+4H], 0                       ; 0BBE _ C7. 40, 04, 00000000
?_047:  mov     eax, dword [ebp+8H]                     ; 0BC5 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 0BC8 _ 8B. 40, 10
        lea     edx, [eax+1H]                           ; 0BCB _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 0BCE _ 8B. 45, 08
        mov     dword [eax+10H], edx                    ; 0BD1 _ 89. 50, 10
        mov     eax, dword [ebp-4H]                     ; 0BD4 _ 8B. 45, FC
?_048:  leave                                           ; 0BD7 _ C9
        ret                                             ; 0BD8 _ C3
; fifo8_get End of function

fifo8_status:; Function begin
        push    ebp                                     ; 0BD9 _ 55
        mov     ebp, esp                                ; 0BDA _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 0BDC _ 8B. 45, 08
        mov     edx, dword [eax+0CH]                    ; 0BDF _ 8B. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 0BE2 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 0BE5 _ 8B. 40, 10
        sub     edx, eax                                ; 0BE8 _ 29. C2
        mov     eax, edx                                ; 0BEA _ 89. D0
        pop     ebp                                     ; 0BEC _ 5D
        ret                                             ; 0BED _ C3
; fifo8_status End of function

showKeyboardInfo:; Function begin
        push    ebp                                     ; 0BEE _ 55
        mov     ebp, esp                                ; 0BEF _ 89. E5
        sub     esp, 40                                 ; 0BF1 _ 83. EC, 28
        call    io_sti                                  ; 0BF4 _ E8, FFFFFFFC(rel)
        mov     eax, dword [bootInfo]                   ; 0BF9 _ A1, 00000100(d)
        mov     dword [ebp-18H], eax                    ; 0BFE _ 89. 45, E8
        movzx   eax, word [?_068]                       ; 0C01 _ 0F B7. 05, 00000104(d)
        cwde                                            ; 0C08 _ 98
        mov     dword [ebp-14H], eax                    ; 0C09 _ 89. 45, EC
        movzx   eax, word [?_069]                       ; 0C0C _ 0F B7. 05, 00000106(d)
        cwde                                            ; 0C13 _ 98
        mov     dword [ebp-10H], eax                    ; 0C14 _ 89. 45, F0
        mov     byte [ebp-19H], 0                       ; 0C17 _ C6. 45, E7, 00
        sub     esp, 12                                 ; 0C1B _ 83. EC, 0C
        push    keyInfo                                 ; 0C1E _ 68, 00000108(d)
        call    fifo8_get                               ; 0C23 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0C28 _ 83. C4, 10
        mov     byte [ebp-19H], al                      ; 0C2B _ 88. 45, E7
        movzx   eax, byte [ebp-19H]                     ; 0C2E _ 0F B6. 45, E7
        sub     esp, 12                                 ; 0C32 _ 83. EC, 0C
        push    eax                                     ; 0C35 _ 50
        call    charToHex                               ; 0C36 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0C3B _ 83. C4, 10
        mov     dword [ebp-0CH], eax                    ; 0C3E _ 89. 45, F4
        mov     edx, dword [line.1702]                  ; 0C41 _ 8B. 15, 00000218(d)
        mov     eax, dword [pos.1701]                   ; 0C47 _ A1, 0000021C(d)
        sub     esp, 8                                  ; 0C4C _ 83. EC, 08
        push    dword [ebp-0CH]                         ; 0C4F _ FF. 75, F4
        push    7                                       ; 0C52 _ 6A, 07
        push    edx                                     ; 0C54 _ 52
        push    eax                                     ; 0C55 _ 50
        push    dword [ebp-14H]                         ; 0C56 _ FF. 75, EC
        push    dword [ebp-18H]                         ; 0C59 _ FF. 75, E8
        call    showString                              ; 0C5C _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0C61 _ 83. C4, 20
        mov     eax, dword [pos.1701]                   ; 0C64 _ A1, 0000021C(d)
        add     eax, 32                                 ; 0C69 _ 83. C0, 20
        mov     dword [pos.1701], eax                   ; 0C6C _ A3, 0000021C(d)
        mov     eax, dword [pos.1701]                   ; 0C71 _ A1, 0000021C(d)
        cmp     dword [ebp-14H], eax                    ; 0C76 _ 39. 45, EC
        jnz     ?_051                                   ; 0C79 _ 75, 28
        mov     eax, dword [line.1702]                  ; 0C7B _ A1, 00000218(d)
        cmp     dword [ebp-10H], eax                    ; 0C80 _ 39. 45, F0
        jz      ?_049                                   ; 0C83 _ 74, 0A
        mov     eax, dword [line.1702]                  ; 0C85 _ A1, 00000218(d)
        add     eax, 16                                 ; 0C8A _ 83. C0, 10
        jmp     ?_050                                   ; 0C8D _ EB, 05

?_049:  mov     eax, 0                                  ; 0C8F _ B8, 00000000
?_050:  mov     dword [line.1702], eax                  ; 0C94 _ A3, 00000218(d)
        mov     dword [pos.1701], 0                     ; 0C99 _ C7. 05, 0000021C(d), 00000000
?_051:  nop                                             ; 0CA3 _ 90
        leave                                           ; 0CA4 _ C9
        ret                                             ; 0CA5 _ C3
; showKeyboardInfo End of function

showMouseInfo:; Function begin
        push    ebp                                     ; 0CA6 _ 55
        mov     ebp, esp                                ; 0CA7 _ 89. E5
        sub     esp, 24                                 ; 0CA9 _ 83. EC, 18
        call    io_sti                                  ; 0CAC _ E8, FFFFFFFC(rel)
        mov     eax, dword [bootInfo]                   ; 0CB1 _ A1, 00000100(d)
        mov     dword [ebp-0CH], eax                    ; 0CB6 _ 89. 45, F4
        mov     byte [ebp-0DH], 0                       ; 0CB9 _ C6. 45, F3, 00
        sub     esp, 12                                 ; 0CBD _ 83. EC, 0C
        push    mouseInfo                               ; 0CC0 _ 68, 00000120(d)
        call    fifo8_get                               ; 0CC5 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0CCA _ 83. C4, 10
        mov     byte [ebp-0DH], al                      ; 0CCD _ 88. 45, F3
        movzx   eax, byte [ebp-0DH]                     ; 0CD0 _ 0F B6. 45, F3
        sub     esp, 8                                  ; 0CD4 _ 83. EC, 08
        push    eax                                     ; 0CD7 _ 50
        push    mouse_move                              ; 0CD8 _ 68, 000001E0(d)
        call    mouse_decode                            ; 0CDD _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0CE2 _ 83. C4, 10
        test    eax, eax                                ; 0CE5 _ 85. C0
        jz      ?_052                                   ; 0CE7 _ 74, 2C
        sub     esp, 12                                 ; 0CE9 _ 83. EC, 0C
        push    dword [ebp-0CH]                         ; 0CEC _ FF. 75, F4
        call    eraseMouse                              ; 0CEF _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0CF4 _ 83. C4, 10
        sub     esp, 12                                 ; 0CF7 _ 83. EC, 0C
        push    mouse_move                              ; 0CFA _ 68, 000001E0(d)
        call    computeMousePos                         ; 0CFF _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0D04 _ 83. C4, 10
        sub     esp, 12                                 ; 0D07 _ 83. EC, 0C
        push    dword [ebp-0CH]                         ; 0D0A _ FF. 75, F4
        call    drawMouse                               ; 0D0D _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0D12 _ 83. C4, 10
?_052:  nop                                             ; 0D15 _ 90
        leave                                           ; 0D16 _ C9
        ret                                             ; 0D17 _ C3
; showMouseInfo End of function

mouse_decode:; Function begin
        push    ebp                                     ; 0D18 _ 55
        mov     ebp, esp                                ; 0D19 _ 89. E5
        sub     esp, 4                                  ; 0D1B _ 83. EC, 04
        mov     eax, dword [ebp+0CH]                    ; 0D1E _ 8B. 45, 0C
        mov     byte [ebp-4H], al                       ; 0D21 _ 88. 45, FC
        mov     eax, dword [ebp+8H]                     ; 0D24 _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 0D27 _ 0F B6. 40, 03
        test    al, al                                  ; 0D2B _ 84. C0
        jnz     ?_054                                   ; 0D2D _ 75, 17
        cmp     byte [ebp-4H], -6                       ; 0D2F _ 80. 7D, FC, FA
        jnz     ?_053                                   ; 0D33 _ 75, 07
        mov     eax, dword [ebp+8H]                     ; 0D35 _ 8B. 45, 08
        mov     byte [eax+3H], 1                        ; 0D38 _ C6. 40, 03, 01
?_053:  mov     eax, 1                                  ; 0D3C _ B8, 00000001
        jmp     ?_061                                   ; 0D41 _ E9, 0000010C

?_054:  mov     eax, dword [ebp+8H]                     ; 0D46 _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 0D49 _ 0F B6. 40, 03
        cmp     al, 1                                   ; 0D4D _ 3C, 01
        jnz     ?_056                                   ; 0D4F _ 75, 25
        movzx   eax, byte [ebp-4H]                      ; 0D51 _ 0F B6. 45, FC
        or      eax, 37H                                ; 0D55 _ 83. C8, 37
        cmp     al, 63                                  ; 0D58 _ 3C, 3F
        jnz     ?_055                                   ; 0D5A _ 75, 10
        mov     eax, dword [ebp+8H]                     ; 0D5C _ 8B. 45, 08
        movzx   edx, byte [ebp-4H]                      ; 0D5F _ 0F B6. 55, FC
        mov     byte [eax], dl                          ; 0D63 _ 88. 10
        mov     eax, dword [ebp+8H]                     ; 0D65 _ 8B. 45, 08
        mov     byte [eax+3H], 2                        ; 0D68 _ C6. 40, 03, 02
?_055:  mov     eax, 1                                  ; 0D6C _ B8, 00000001
        jmp     ?_061                                   ; 0D71 _ E9, 000000DC

?_056:  mov     eax, dword [ebp+8H]                     ; 0D76 _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 0D79 _ 0F B6. 40, 03
        cmp     al, 2                                   ; 0D7D _ 3C, 02
        jnz     ?_057                                   ; 0D7F _ 75, 1B
        mov     eax, dword [ebp+8H]                     ; 0D81 _ 8B. 45, 08
        movzx   edx, byte [ebp-4H]                      ; 0D84 _ 0F B6. 55, FC
        mov     byte [eax+1H], dl                       ; 0D88 _ 88. 50, 01
        mov     eax, dword [ebp+8H]                     ; 0D8B _ 8B. 45, 08
        mov     byte [eax+3H], 3                        ; 0D8E _ C6. 40, 03, 03
        mov     eax, 1                                  ; 0D92 _ B8, 00000001
        jmp     ?_061                                   ; 0D97 _ E9, 000000B6

?_057:  mov     eax, dword [ebp+8H]                     ; 0D9C _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 0D9F _ 0F B6. 40, 03
        cmp     al, 3                                   ; 0DA3 _ 3C, 03
        jne     ?_060                                   ; 0DA5 _ 0F 85, 000000A2
        mov     eax, dword [ebp+8H]                     ; 0DAB _ 8B. 45, 08
        movzx   edx, byte [ebp-4H]                      ; 0DAE _ 0F B6. 55, FC
        mov     byte [eax+2H], dl                       ; 0DB2 _ 88. 50, 02
        mov     eax, dword [ebp+8H]                     ; 0DB5 _ 8B. 45, 08
        mov     byte [eax+3H], 1                        ; 0DB8 _ C6. 40, 03, 01
        mov     eax, dword [ebp+8H]                     ; 0DBC _ 8B. 45, 08
        movzx   eax, byte [eax]                         ; 0DBF _ 0F B6. 00
        movzx   eax, al                                 ; 0DC2 _ 0F B6. C0
        and     eax, 07H                                ; 0DC5 _ 83. E0, 07
        mov     edx, eax                                ; 0DC8 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 0DCA _ 8B. 45, 08
        mov     dword [eax+0CH], edx                    ; 0DCD _ 89. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 0DD0 _ 8B. 45, 08
        movzx   eax, byte [eax+1H]                      ; 0DD3 _ 0F B6. 40, 01
        movzx   edx, al                                 ; 0DD7 _ 0F B6. D0
        mov     eax, dword [ebp+8H]                     ; 0DDA _ 8B. 45, 08
        mov     dword [eax+4H], edx                     ; 0DDD _ 89. 50, 04
        mov     eax, dword [ebp+8H]                     ; 0DE0 _ 8B. 45, 08
        movzx   eax, byte [eax+2H]                      ; 0DE3 _ 0F B6. 40, 02
        movzx   edx, al                                 ; 0DE7 _ 0F B6. D0
        mov     eax, dword [ebp+8H]                     ; 0DEA _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 0DED _ 89. 50, 08
        mov     eax, dword [ebp+8H]                     ; 0DF0 _ 8B. 45, 08
        movzx   eax, byte [eax]                         ; 0DF3 _ 0F B6. 00
        movzx   eax, al                                 ; 0DF6 _ 0F B6. C0
        and     eax, 10H                                ; 0DF9 _ 83. E0, 10
        test    eax, eax                                ; 0DFC _ 85. C0
        jz      ?_058                                   ; 0DFE _ 74, 13
        mov     eax, dword [ebp+8H]                     ; 0E00 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 0E03 _ 8B. 40, 04
        or      eax, 0FFFFFF00H                         ; 0E06 _ 0D, FFFFFF00
        mov     edx, eax                                ; 0E0B _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 0E0D _ 8B. 45, 08
        mov     dword [eax+4H], edx                     ; 0E10 _ 89. 50, 04
?_058:  mov     eax, dword [ebp+8H]                     ; 0E13 _ 8B. 45, 08
        movzx   eax, byte [eax]                         ; 0E16 _ 0F B6. 00
        movzx   eax, al                                 ; 0E19 _ 0F B6. C0
        and     eax, 20H                                ; 0E1C _ 83. E0, 20
        test    eax, eax                                ; 0E1F _ 85. C0
        jz      ?_059                                   ; 0E21 _ 74, 13
        mov     eax, dword [ebp+8H]                     ; 0E23 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 0E26 _ 8B. 40, 08
        or      eax, 0FFFFFF00H                         ; 0E29 _ 0D, FFFFFF00
        mov     edx, eax                                ; 0E2E _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 0E30 _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 0E33 _ 89. 50, 08
?_059:  mov     eax, dword [ebp+8H]                     ; 0E36 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 0E39 _ 8B. 40, 08
        neg     eax                                     ; 0E3C _ F7. D8
        mov     edx, eax                                ; 0E3E _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 0E40 _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 0E43 _ 89. 50, 08
        mov     eax, 1                                  ; 0E46 _ B8, 00000001
        jmp     ?_061                                   ; 0E4B _ EB, 05

?_060:  mov     eax, 0                                  ; 0E4D _ B8, 00000000
?_061:  leave                                           ; 0E52 _ C9
        ret                                             ; 0E53 _ C3
; mouse_decode End of function

computeMousePos:; Function begin
        push    ebp                                     ; 0E54 _ 55
        mov     ebp, esp                                ; 0E55 _ 89. E5
        sub     esp, 16                                 ; 0E57 _ 83. EC, 10
        movzx   eax, word [?_068]                       ; 0E5A _ 0F B7. 05, 00000104(d)
        cwde                                            ; 0E61 _ 98
        mov     dword [ebp-8H], eax                     ; 0E62 _ 89. 45, F8
        movzx   eax, word [?_069]                       ; 0E65 _ 0F B7. 05, 00000106(d)
        cwde                                            ; 0E6C _ 98
        mov     dword [ebp-4H], eax                     ; 0E6D _ 89. 45, FC
        mov     eax, dword [ebp+8H]                     ; 0E70 _ 8B. 45, 08
        mov     ecx, dword [eax+4H]                     ; 0E73 _ 8B. 48, 04
        mov     edx, 1431655766                         ; 0E76 _ BA, 55555556
        mov     eax, ecx                                ; 0E7B _ 89. C8
        imul    edx                                     ; 0E7D _ F7. EA
        mov     eax, ecx                                ; 0E7F _ 89. C8
        sar     eax, 31                                 ; 0E81 _ C1. F8, 1F
        sub     edx, eax                                ; 0E84 _ 29. C2
        mov     eax, dword [mx]                         ; 0E86 _ A1, 000001F0(d)
        add     eax, edx                                ; 0E8B _ 01. D0
        mov     dword [mx], eax                         ; 0E8D _ A3, 000001F0(d)
        mov     eax, dword [ebp+8H]                     ; 0E92 _ 8B. 45, 08
        mov     ecx, dword [eax+8H]                     ; 0E95 _ 8B. 48, 08
        mov     edx, 1431655766                         ; 0E98 _ BA, 55555556
        mov     eax, ecx                                ; 0E9D _ 89. C8
        imul    edx                                     ; 0E9F _ F7. EA
        mov     eax, ecx                                ; 0EA1 _ 89. C8
        sar     eax, 31                                 ; 0EA3 _ C1. F8, 1F
        sub     edx, eax                                ; 0EA6 _ 29. C2
        mov     eax, dword [my]                         ; 0EA8 _ A1, 000001F4(d)
        add     eax, edx                                ; 0EAD _ 01. D0
        mov     dword [my], eax                         ; 0EAF _ A3, 000001F4(d)
        mov     eax, dword [mx]                         ; 0EB4 _ A1, 000001F0(d)
        test    eax, eax                                ; 0EB9 _ 85. C0
        jns     ?_062                                   ; 0EBB _ 79, 0A
        mov     dword [mx], 0                           ; 0EBD _ C7. 05, 000001F0(d), 00000000
?_062:  mov     eax, dword [my]                         ; 0EC7 _ A1, 000001F4(d)
        test    eax, eax                                ; 0ECC _ 85. C0
        jns     ?_063                                   ; 0ECE _ 79, 0A
        mov     dword [my], 0                           ; 0ED0 _ C7. 05, 000001F4(d), 00000000
?_063:  mov     eax, dword [ebp-8H]                     ; 0EDA _ 8B. 45, F8
        lea     edx, [eax-9H]                           ; 0EDD _ 8D. 50, F7
        mov     eax, dword [mx]                         ; 0EE0 _ A1, 000001F0(d)
        cmp     edx, eax                                ; 0EE5 _ 39. C2
        jge     ?_064                                   ; 0EE7 _ 7D, 0B
        mov     eax, dword [ebp-8H]                     ; 0EE9 _ 8B. 45, F8
        sub     eax, 9                                  ; 0EEC _ 83. E8, 09
        mov     dword [mx], eax                         ; 0EEF _ A3, 000001F0(d)
?_064:  mov     eax, dword [ebp-4H]                     ; 0EF4 _ 8B. 45, FC
        lea     edx, [eax-1H]                           ; 0EF7 _ 8D. 50, FF
        mov     eax, dword [my]                         ; 0EFA _ A1, 000001F4(d)
        cmp     edx, eax                                ; 0EFF _ 39. C2
        jge     ?_065                                   ; 0F01 _ 7D, 0B
        mov     eax, dword [ebp-4H]                     ; 0F03 _ 8B. 45, FC
        sub     eax, 1                                  ; 0F06 _ 83. E8, 01
        mov     dword [my], eax                         ; 0F09 _ A3, 000001F4(d)
?_065:  nop                                             ; 0F0E _ 90
        leave                                           ; 0F0F _ C9
        ret                                             ; 0F10 _ C3
; computeMousePos End of function

eraseMouse:; Function begin
        push    ebp                                     ; 0F11 _ 55
        mov     ebp, esp                                ; 0F12 _ 89. E5
        push    edi                                     ; 0F14 _ 57
        push    esi                                     ; 0F15 _ 56
        push    ebx                                     ; 0F16 _ 53
        mov     eax, dword [my]                         ; 0F17 _ A1, 000001F4(d)
        lea     edi, [eax+0FH]                          ; 0F1C _ 8D. 78, 0F
        mov     eax, dword [mx]                         ; 0F1F _ A1, 000001F0(d)
        lea     esi, [eax+0FH]                          ; 0F24 _ 8D. 70, 0F
        mov     ebx, dword [my]                         ; 0F27 _ 8B. 1D, 000001F4(d)
        mov     ecx, dword [mx]                         ; 0F2D _ 8B. 0D, 000001F0(d)
        movzx   eax, word [?_068]                       ; 0F33 _ 0F B7. 05, 00000104(d)
        movsx   edx, ax                                 ; 0F3A _ 0F BF. D0
        mov     eax, dword [bootInfo]                   ; 0F3D _ A1, 00000100(d)
        push    edi                                     ; 0F42 _ 57
        push    esi                                     ; 0F43 _ 56
        push    ebx                                     ; 0F44 _ 53
        push    ecx                                     ; 0F45 _ 51
        push    14                                      ; 0F46 _ 6A, 0E
        push    edx                                     ; 0F48 _ 52
        push    eax                                     ; 0F49 _ 50
        call    boxfill8                                ; 0F4A _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 0F4F _ 83. C4, 1C
        nop                                             ; 0F52 _ 90
        lea     esp, [ebp-0CH]                          ; 0F53 _ 8D. 65, F4
        pop     ebx                                     ; 0F56 _ 5B
        pop     esi                                     ; 0F57 _ 5E
        pop     edi                                     ; 0F58 _ 5F
        pop     ebp                                     ; 0F59 _ 5D
        ret                                             ; 0F5A _ C3
; eraseMouse End of function

drawMouse:; Function begin
        push    ebp                                     ; 0F5B _ 55
        mov     ebp, esp                                ; 0F5C _ 89. E5
        push    ebx                                     ; 0F5E _ 53
        mov     ebx, dword [my]                         ; 0F5F _ 8B. 1D, 000001F4(d)
        mov     ecx, dword [mx]                         ; 0F65 _ 8B. 0D, 000001F0(d)
        movzx   eax, word [?_068]                       ; 0F6B _ 0F B7. 05, 00000104(d)
        movsx   edx, ax                                 ; 0F72 _ 0F BF. D0
        mov     eax, dword [bootInfo]                   ; 0F75 _ A1, 00000100(d)
        push    16                                      ; 0F7A _ 6A, 10
        push    mcursor                                 ; 0F7C _ 68, 00000000(d)
        push    ebx                                     ; 0F81 _ 53
        push    ecx                                     ; 0F82 _ 51
        push    16                                      ; 0F83 _ 6A, 10
        push    16                                      ; 0F85 _ 6A, 10
        push    edx                                     ; 0F87 _ 52
        push    eax                                     ; 0F88 _ 50
        call    putblock                                ; 0F89 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0F8E _ 83. C4, 20
        nop                                             ; 0F91 _ 90
        mov     ebx, dword [ebp-4H]                     ; 0F92 _ 8B. 5D, FC
        leave                                           ; 0F95 _ C9
        ret                                             ; 0F96 _ C3
; drawMouse End of function



fontA:                                                  ; oword
        db 00H, 18H, 18H, 18H, 18H, 24H, 24H, 24H       ; 0000 _ .....$$$
        db 24H, 7EH, 42H, 42H, 42H, 0E7H, 00H, 00H      ; 0008 _ $~BBB...

keyVal:                                                 ; byte
        db 30H, 78H                                     ; 0010 _ 0x

?_066:  db 00H                                          ; 0012 _ .

?_067:  db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0013 _ ........
        db 00H, 00H, 00H, 00H, 00H                      ; 001B _ .....

table_rgb.1565:                                         ; byte
        db 00H, 00H, 00H, 0FFH, 00H, 00H, 00H, 0FFH     ; 0020 _ ........
        db 00H, 0FFH, 0FFH, 00H, 00H, 00H, 0FFH, 0FFH   ; 0028 _ ........
        db 00H, 0FFH, 00H, 0FFH, 0FFH, 0FFH, 0FFH, 0FFH ; 0030 _ ........
        db 0C6H, 0C6H, 0C6H, 84H, 00H, 00H, 00H, 84H    ; 0038 _ ........
        db 00H, 84H, 84H, 00H, 00H, 00H, 84H, 84H       ; 0040 _ ........
        db 00H, 84H, 00H, 78H, 0D7H, 84H, 84H, 84H      ; 0048 _ ...x....
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0050 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0058 _ ........

cursor.1613:                                            ; byte
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

?_068:  resw    1                                       ; 0104

?_069:  resw    1                                       ; 0106

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

Mem:                                                    ; byte
        resb    20                                      ; 01F8

str.1656:                                               ; byte
        resb    1                                       ; 020C

?_070:  resb    9                                       ; 020D

?_071:  resb    2                                       ; 0216

line.1702:                                              ; dword
        resd    1                                       ; 0218

pos.1701: resd  1                                       ; 021C


