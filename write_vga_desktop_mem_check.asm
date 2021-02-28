; Disassembly of file: write_vga_desktop_mem_check.o
; Sun Feb 28 17:34:33 2021
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
        mov     dword [ebp-20H], eax                    ; 001C _ 89. 45, E0
        movzx   eax, word [?_068]                       ; 001F _ 0F B7. 05, 00000104(d)
        cwde                                            ; 0026 _ 98
        mov     dword [ebp-1CH], eax                    ; 0027 _ 89. 45, E4
        movzx   eax, word [?_069]                       ; 002A _ 0F B7. 05, 00000106(d)
        cwde                                            ; 0031 _ 98
        mov     dword [ebp-18H], eax                    ; 0032 _ 89. 45, E8
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
        sub     esp, 12                                 ; 0087 _ 83. EC, 0C
        push    mouse_move                              ; 008A _ 68, 000001E0(d)
        call    enable_mouse                            ; 008F _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0094 _ 83. C4, 10
        call    get_addr_buffer                         ; 0097 _ E8, FFFFFFFC(rel)
        mov     dword [ebp-14H], eax                    ; 009C _ 89. 45, EC
        call    get_memory_block_count                  ; 009F _ E8, FFFFFFFC(rel)
        mov     dword [ebp-10H], eax                    ; 00A4 _ 89. 45, F0
        mov     eax, dword [ebp-10H]                    ; 00A7 _ 8B. 45, F0
        sub     esp, 12                                 ; 00AA _ 83. EC, 0C
        push    eax                                     ; 00AD _ 50
        call    intToHexStr                             ; 00AE _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 00B3 _ 83. C4, 10
        mov     dword [ebp-0CH], eax                    ; 00B6 _ 89. 45, F4
        mov     dword [ebp-24H], 0                      ; 00B9 _ C7. 45, DC, 00000000
        mov     byte [ebp-25H], 0                       ; 00C0 _ C6. 45, DB, 00
?_001:  call    io_cli                                  ; 00C4 _ E8, FFFFFFFC(rel)
        sub     esp, 12                                 ; 00C9 _ 83. EC, 0C
        push    keyInfo                                 ; 00CC _ 68, 00000108(d)
        call    fifo8_status                            ; 00D1 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 00D6 _ 83. C4, 10
        mov     ebx, eax                                ; 00D9 _ 89. C3
        sub     esp, 12                                 ; 00DB _ 83. EC, 0C
        push    mouseInfo                               ; 00DE _ 68, 00000120(d)
        call    fifo8_status                            ; 00E3 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 00E8 _ 83. C4, 10
        add     eax, ebx                                ; 00EB _ 01. D8
        test    eax, eax                                ; 00ED _ 85. C0
        jnz     ?_002                                   ; 00EF _ 75, 07
        call    io_stihlt                               ; 00F1 _ E8, FFFFFFFC(rel)
        jmp     ?_001                                   ; 00F6 _ EB, CC

?_002:  sub     esp, 12                                 ; 00F8 _ 83. EC, 0C
        push    keyInfo                                 ; 00FB _ 68, 00000108(d)
        call    fifo8_status                            ; 0100 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0105 _ 83. C4, 10
        test    eax, eax                                ; 0108 _ 85. C0
        jz      ?_003                                   ; 010A _ 74, 65
        call    io_sti                                  ; 010C _ E8, FFFFFFFC(rel)
        sub     esp, 12                                 ; 0111 _ 83. EC, 0C
        push    keyInfo                                 ; 0114 _ 68, 00000108(d)
        call    fifo8_get                               ; 0119 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 011E _ 83. C4, 10
        mov     byte [ebp-25H], al                      ; 0121 _ 88. 45, DB
        cmp     byte [ebp-25H], 28                      ; 0124 _ 80. 7D, DB, 1C
        jnz     ?_001                                   ; 0128 _ 75, 9A
        mov     edx, dword [ebp-24H]                    ; 012A _ 8B. 55, DC
        mov     eax, edx                                ; 012D _ 89. D0
        shl     eax, 2                                  ; 012F _ C1. E0, 02
        add     eax, edx                                ; 0132 _ 01. D0
        shl     eax, 2                                  ; 0134 _ C1. E0, 02
        mov     edx, eax                                ; 0137 _ 89. C2
        mov     eax, dword [ebp-14H]                    ; 0139 _ 8B. 45, EC
        add     eax, edx                                ; 013C _ 01. D0
        sub     esp, 12                                 ; 013E _ 83. EC, 0C
        push    7                                       ; 0141 _ 6A, 07
        push    dword [ebp-1CH]                         ; 0143 _ FF. 75, E4
        push    dword [ebp-24H]                         ; 0146 _ FF. 75, DC
        push    dword [ebp-20H]                         ; 0149 _ FF. 75, E0
        push    eax                                     ; 014C _ 50
        call    showMemInfo                             ; 014D _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0152 _ 83. C4, 20
        add     dword [ebp-24H], 1                      ; 0155 _ 83. 45, DC, 01
        mov     eax, dword [ebp-24H]                    ; 0159 _ 8B. 45, DC
        cmp     eax, dword [ebp-10H]                    ; 015C _ 3B. 45, F0
        jl      ?_001                                   ; 015F _ 0F 8C, FFFFFF5F
        mov     dword [ebp-24H], 0                      ; 0165 _ C7. 45, DC, 00000000
        jmp     ?_001                                   ; 016C _ E9, FFFFFF53

?_003:  sub     esp, 12                                 ; 0171 _ 83. EC, 0C
        push    mouseInfo                               ; 0174 _ 68, 00000120(d)
        call    fifo8_status                            ; 0179 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 017E _ 83. C4, 10
        test    eax, eax                                ; 0181 _ 85. C0
        je      ?_001                                   ; 0183 _ 0F 84, FFFFFF3B
        call    showMouseInfo                           ; 0189 _ E8, FFFFFFFC(rel)
        jmp     ?_001                                   ; 018E _ E9, FFFFFF31
; CMain End of function

initBootInfo:; Function begin
        push    ebp                                     ; 0193 _ 55
        mov     ebp, esp                                ; 0194 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 0196 _ 8B. 45, 08
        mov     dword [eax], 655360                     ; 0199 _ C7. 00, 000A0000
        mov     eax, dword [ebp+8H]                     ; 019F _ 8B. 45, 08
; Note: Length-changing prefix causes delay on Intel processors
        mov     word [eax+4H], 320                      ; 01A2 _ 66: C7. 40, 04, 0140
        mov     eax, dword [ebp+8H]                     ; 01A8 _ 8B. 45, 08
; Note: Length-changing prefix causes delay on Intel processors
        mov     word [eax+6H], 200                      ; 01AB _ 66: C7. 40, 06, 00C8
        nop                                             ; 01B1 _ 90
        pop     ebp                                     ; 01B2 _ 5D
        ret                                             ; 01B3 _ C3
; initBootInfo End of function

showString:; Function begin
        push    ebp                                     ; 01B4 _ 55
        mov     ebp, esp                                ; 01B5 _ 89. E5
        sub     esp, 24                                 ; 01B7 _ 83. EC, 18
        mov     eax, dword [ebp+18H]                    ; 01BA _ 8B. 45, 18
        mov     byte [ebp-0CH], al                      ; 01BD _ 88. 45, F4
        jmp     ?_005                                   ; 01C0 _ EB, 37

?_004:  mov     eax, dword [ebp+1CH]                    ; 01C2 _ 8B. 45, 1C
        movzx   eax, byte [eax]                         ; 01C5 _ 0F B6. 00
        movzx   eax, al                                 ; 01C8 _ 0F B6. C0
        shl     eax, 4                                  ; 01CB _ C1. E0, 04
        lea     edx, [systemFont+eax]                   ; 01CE _ 8D. 90, 00000000(d)
        movsx   eax, byte [ebp-0CH]                     ; 01D4 _ 0F BE. 45, F4
        sub     esp, 8                                  ; 01D8 _ 83. EC, 08
        push    edx                                     ; 01DB _ 52
        push    eax                                     ; 01DC _ 50
        push    dword [ebp+14H]                         ; 01DD _ FF. 75, 14
        push    dword [ebp+10H]                         ; 01E0 _ FF. 75, 10
        push    dword [ebp+0CH]                         ; 01E3 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 01E6 _ FF. 75, 08
        call    showFont8                               ; 01E9 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 01EE _ 83. C4, 20
        add     dword [ebp+10H], 8                      ; 01F1 _ 83. 45, 10, 08
        add     dword [ebp+1CH], 1                      ; 01F5 _ 83. 45, 1C, 01
?_005:  mov     eax, dword [ebp+1CH]                    ; 01F9 _ 8B. 45, 1C
        movzx   eax, byte [eax]                         ; 01FC _ 0F B6. 00
        test    al, al                                  ; 01FF _ 84. C0
        jnz     ?_004                                   ; 0201 _ 75, BF
        nop                                             ; 0203 _ 90
        leave                                           ; 0204 _ C9
        ret                                             ; 0205 _ C3
; showString End of function

init_palette:; Function begin
        push    ebp                                     ; 0206 _ 55
        mov     ebp, esp                                ; 0207 _ 89. E5
        push    ebx                                     ; 0209 _ 53
        sub     esp, 20                                 ; 020A _ 83. EC, 14
        mov     eax, dword [bootInfo]                   ; 020D _ A1, 00000100(d)
        mov     dword [ebp-14H], eax                    ; 0212 _ 89. 45, EC
        movzx   eax, word [?_068]                       ; 0215 _ 0F B7. 05, 00000104(d)
        cwde                                            ; 021C _ 98
        mov     dword [ebp-10H], eax                    ; 021D _ 89. 45, F0
        movzx   eax, word [?_069]                       ; 0220 _ 0F B7. 05, 00000106(d)
        cwde                                            ; 0227 _ 98
        mov     dword [ebp-0CH], eax                    ; 0228 _ 89. 45, F4
        sub     esp, 4                                  ; 022B _ 83. EC, 04
        push    table_rgb.1574                          ; 022E _ 68, 00000020(d)
        push    15                                      ; 0233 _ 6A, 0F
        push    0                                       ; 0235 _ 6A, 00
        call    set_palette                             ; 0237 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 023C _ 83. C4, 10
        mov     eax, dword [ebp-0CH]                    ; 023F _ 8B. 45, F4
        lea     edx, [eax-1DH]                          ; 0242 _ 8D. 50, E3
        mov     eax, dword [ebp-10H]                    ; 0245 _ 8B. 45, F0
        sub     eax, 1                                  ; 0248 _ 83. E8, 01
        sub     esp, 4                                  ; 024B _ 83. EC, 04
        push    edx                                     ; 024E _ 52
        push    eax                                     ; 024F _ 50
        push    0                                       ; 0250 _ 6A, 00
        push    0                                       ; 0252 _ 6A, 00
        push    14                                      ; 0254 _ 6A, 0E
        push    dword [ebp-10H]                         ; 0256 _ FF. 75, F0
        push    dword [ebp-14H]                         ; 0259 _ FF. 75, EC
        call    boxfill8                                ; 025C _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0261 _ 83. C4, 20
        mov     eax, dword [ebp-0CH]                    ; 0264 _ 8B. 45, F4
        lea     ecx, [eax-1CH]                          ; 0267 _ 8D. 48, E4
        mov     eax, dword [ebp-10H]                    ; 026A _ 8B. 45, F0
        lea     edx, [eax-1H]                           ; 026D _ 8D. 50, FF
        mov     eax, dword [ebp-0CH]                    ; 0270 _ 8B. 45, F4
        sub     eax, 28                                 ; 0273 _ 83. E8, 1C
        sub     esp, 4                                  ; 0276 _ 83. EC, 04
        push    ecx                                     ; 0279 _ 51
        push    edx                                     ; 027A _ 52
        push    eax                                     ; 027B _ 50
        push    0                                       ; 027C _ 6A, 00
        push    8                                       ; 027E _ 6A, 08
        push    dword [ebp-10H]                         ; 0280 _ FF. 75, F0
        push    dword [ebp-14H]                         ; 0283 _ FF. 75, EC
        call    boxfill8                                ; 0286 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 028B _ 83. C4, 20
        mov     eax, dword [ebp-0CH]                    ; 028E _ 8B. 45, F4
        lea     ecx, [eax-1BH]                          ; 0291 _ 8D. 48, E5
        mov     eax, dword [ebp-10H]                    ; 0294 _ 8B. 45, F0
        lea     edx, [eax-1H]                           ; 0297 _ 8D. 50, FF
        mov     eax, dword [ebp-0CH]                    ; 029A _ 8B. 45, F4
        sub     eax, 27                                 ; 029D _ 83. E8, 1B
        sub     esp, 4                                  ; 02A0 _ 83. EC, 04
        push    ecx                                     ; 02A3 _ 51
        push    edx                                     ; 02A4 _ 52
        push    eax                                     ; 02A5 _ 50
        push    0                                       ; 02A6 _ 6A, 00
        push    7                                       ; 02A8 _ 6A, 07
        push    dword [ebp-10H]                         ; 02AA _ FF. 75, F0
        push    dword [ebp-14H]                         ; 02AD _ FF. 75, EC
        call    boxfill8                                ; 02B0 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 02B5 _ 83. C4, 20
        mov     eax, dword [ebp-0CH]                    ; 02B8 _ 8B. 45, F4
        lea     ecx, [eax-1H]                           ; 02BB _ 8D. 48, FF
        mov     eax, dword [ebp-10H]                    ; 02BE _ 8B. 45, F0
        lea     edx, [eax-1H]                           ; 02C1 _ 8D. 50, FF
        mov     eax, dword [ebp-0CH]                    ; 02C4 _ 8B. 45, F4
        sub     eax, 26                                 ; 02C7 _ 83. E8, 1A
        sub     esp, 4                                  ; 02CA _ 83. EC, 04
        push    ecx                                     ; 02CD _ 51
        push    edx                                     ; 02CE _ 52
        push    eax                                     ; 02CF _ 50
        push    0                                       ; 02D0 _ 6A, 00
        push    8                                       ; 02D2 _ 6A, 08
        push    dword [ebp-10H]                         ; 02D4 _ FF. 75, F0
        push    dword [ebp-14H]                         ; 02D7 _ FF. 75, EC
        call    boxfill8                                ; 02DA _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 02DF _ 83. C4, 20
        mov     eax, dword [ebp-0CH]                    ; 02E2 _ 8B. 45, F4
        lea     edx, [eax-18H]                          ; 02E5 _ 8D. 50, E8
        mov     eax, dword [ebp-0CH]                    ; 02E8 _ 8B. 45, F4
        sub     eax, 24                                 ; 02EB _ 83. E8, 18
        sub     esp, 4                                  ; 02EE _ 83. EC, 04
        push    edx                                     ; 02F1 _ 52
        push    59                                      ; 02F2 _ 6A, 3B
        push    eax                                     ; 02F4 _ 50
        push    3                                       ; 02F5 _ 6A, 03
        push    7                                       ; 02F7 _ 6A, 07
        push    dword [ebp-10H]                         ; 02F9 _ FF. 75, F0
        push    dword [ebp-14H]                         ; 02FC _ FF. 75, EC
        call    boxfill8                                ; 02FF _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0304 _ 83. C4, 20
        mov     eax, dword [ebp-0CH]                    ; 0307 _ 8B. 45, F4
        lea     edx, [eax-4H]                           ; 030A _ 8D. 50, FC
        mov     eax, dword [ebp-0CH]                    ; 030D _ 8B. 45, F4
        sub     eax, 24                                 ; 0310 _ 83. E8, 18
        sub     esp, 4                                  ; 0313 _ 83. EC, 04
        push    edx                                     ; 0316 _ 52
        push    2                                       ; 0317 _ 6A, 02
        push    eax                                     ; 0319 _ 50
        push    2                                       ; 031A _ 6A, 02
        push    7                                       ; 031C _ 6A, 07
        push    dword [ebp-10H]                         ; 031E _ FF. 75, F0
        push    dword [ebp-14H]                         ; 0321 _ FF. 75, EC
        call    boxfill8                                ; 0324 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0329 _ 83. C4, 20
        mov     eax, dword [ebp-0CH]                    ; 032C _ 8B. 45, F4
        lea     edx, [eax-4H]                           ; 032F _ 8D. 50, FC
        mov     eax, dword [ebp-0CH]                    ; 0332 _ 8B. 45, F4
        sub     eax, 4                                  ; 0335 _ 83. E8, 04
        sub     esp, 4                                  ; 0338 _ 83. EC, 04
        push    edx                                     ; 033B _ 52
        push    59                                      ; 033C _ 6A, 3B
        push    eax                                     ; 033E _ 50
        push    3                                       ; 033F _ 6A, 03
        push    15                                      ; 0341 _ 6A, 0F
        push    dword [ebp-10H]                         ; 0343 _ FF. 75, F0
        push    dword [ebp-14H]                         ; 0346 _ FF. 75, EC
        call    boxfill8                                ; 0349 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 034E _ 83. C4, 20
        mov     eax, dword [ebp-0CH]                    ; 0351 _ 8B. 45, F4
        lea     edx, [eax-5H]                           ; 0354 _ 8D. 50, FB
        mov     eax, dword [ebp-0CH]                    ; 0357 _ 8B. 45, F4
        sub     eax, 23                                 ; 035A _ 83. E8, 17
        sub     esp, 4                                  ; 035D _ 83. EC, 04
        push    edx                                     ; 0360 _ 52
        push    59                                      ; 0361 _ 6A, 3B
        push    eax                                     ; 0363 _ 50
        push    59                                      ; 0364 _ 6A, 3B
        push    15                                      ; 0366 _ 6A, 0F
        push    dword [ebp-10H]                         ; 0368 _ FF. 75, F0
        push    dword [ebp-14H]                         ; 036B _ FF. 75, EC
        call    boxfill8                                ; 036E _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0373 _ 83. C4, 20
        mov     eax, dword [ebp-0CH]                    ; 0376 _ 8B. 45, F4
        lea     edx, [eax-3H]                           ; 0379 _ 8D. 50, FD
        mov     eax, dword [ebp-0CH]                    ; 037C _ 8B. 45, F4
        sub     eax, 3                                  ; 037F _ 83. E8, 03
        sub     esp, 4                                  ; 0382 _ 83. EC, 04
        push    edx                                     ; 0385 _ 52
        push    59                                      ; 0386 _ 6A, 3B
        push    eax                                     ; 0388 _ 50
        push    2                                       ; 0389 _ 6A, 02
        push    0                                       ; 038B _ 6A, 00
        push    dword [ebp-10H]                         ; 038D _ FF. 75, F0
        push    dword [ebp-14H]                         ; 0390 _ FF. 75, EC
        call    boxfill8                                ; 0393 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0398 _ 83. C4, 20
        mov     eax, dword [ebp-0CH]                    ; 039B _ 8B. 45, F4
        lea     edx, [eax-3H]                           ; 039E _ 8D. 50, FD
        mov     eax, dword [ebp-0CH]                    ; 03A1 _ 8B. 45, F4
        sub     eax, 24                                 ; 03A4 _ 83. E8, 18
        sub     esp, 4                                  ; 03A7 _ 83. EC, 04
        push    edx                                     ; 03AA _ 52
        push    60                                      ; 03AB _ 6A, 3C
        push    eax                                     ; 03AD _ 50
        push    60                                      ; 03AE _ 6A, 3C
        push    0                                       ; 03B0 _ 6A, 00
        push    dword [ebp-10H]                         ; 03B2 _ FF. 75, F0
        push    dword [ebp-14H]                         ; 03B5 _ FF. 75, EC
        call    boxfill8                                ; 03B8 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 03BD _ 83. C4, 20
        mov     eax, dword [ebp-0CH]                    ; 03C0 _ 8B. 45, F4
        lea     ebx, [eax-18H]                          ; 03C3 _ 8D. 58, E8
        mov     eax, dword [ebp-10H]                    ; 03C6 _ 8B. 45, F0
        lea     ecx, [eax-4H]                           ; 03C9 _ 8D. 48, FC
        mov     eax, dword [ebp-0CH]                    ; 03CC _ 8B. 45, F4
        lea     edx, [eax-18H]                          ; 03CF _ 8D. 50, E8
        mov     eax, dword [ebp-10H]                    ; 03D2 _ 8B. 45, F0
        sub     eax, 47                                 ; 03D5 _ 83. E8, 2F
        sub     esp, 4                                  ; 03D8 _ 83. EC, 04
        push    ebx                                     ; 03DB _ 53
        push    ecx                                     ; 03DC _ 51
        push    edx                                     ; 03DD _ 52
        push    eax                                     ; 03DE _ 50
        push    15                                      ; 03DF _ 6A, 0F
        push    dword [ebp-10H]                         ; 03E1 _ FF. 75, F0
        push    dword [ebp-14H]                         ; 03E4 _ FF. 75, EC
        call    boxfill8                                ; 03E7 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 03EC _ 83. C4, 20
        mov     eax, dword [ebp-0CH]                    ; 03EF _ 8B. 45, F4
        lea     ebx, [eax-4H]                           ; 03F2 _ 8D. 58, FC
        mov     eax, dword [ebp-10H]                    ; 03F5 _ 8B. 45, F0
        lea     ecx, [eax-2FH]                          ; 03F8 _ 8D. 48, D1
        mov     eax, dword [ebp-0CH]                    ; 03FB _ 8B. 45, F4
        lea     edx, [eax-17H]                          ; 03FE _ 8D. 50, E9
        mov     eax, dword [ebp-10H]                    ; 0401 _ 8B. 45, F0
        sub     eax, 47                                 ; 0404 _ 83. E8, 2F
        sub     esp, 4                                  ; 0407 _ 83. EC, 04
        push    ebx                                     ; 040A _ 53
        push    ecx                                     ; 040B _ 51
        push    edx                                     ; 040C _ 52
        push    eax                                     ; 040D _ 50
        push    15                                      ; 040E _ 6A, 0F
        push    dword [ebp-10H]                         ; 0410 _ FF. 75, F0
        push    dword [ebp-14H]                         ; 0413 _ FF. 75, EC
        call    boxfill8                                ; 0416 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 041B _ 83. C4, 20
        mov     eax, dword [ebp-0CH]                    ; 041E _ 8B. 45, F4
        lea     ebx, [eax-3H]                           ; 0421 _ 8D. 58, FD
        mov     eax, dword [ebp-10H]                    ; 0424 _ 8B. 45, F0
        lea     ecx, [eax-4H]                           ; 0427 _ 8D. 48, FC
        mov     eax, dword [ebp-0CH]                    ; 042A _ 8B. 45, F4
        lea     edx, [eax-3H]                           ; 042D _ 8D. 50, FD
        mov     eax, dword [ebp-10H]                    ; 0430 _ 8B. 45, F0
        sub     eax, 47                                 ; 0433 _ 83. E8, 2F
        sub     esp, 4                                  ; 0436 _ 83. EC, 04
        push    ebx                                     ; 0439 _ 53
        push    ecx                                     ; 043A _ 51
        push    edx                                     ; 043B _ 52
        push    eax                                     ; 043C _ 50
        push    7                                       ; 043D _ 6A, 07
        push    dword [ebp-10H]                         ; 043F _ FF. 75, F0
        push    dword [ebp-14H]                         ; 0442 _ FF. 75, EC
        call    boxfill8                                ; 0445 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 044A _ 83. C4, 20
        mov     eax, dword [ebp-0CH]                    ; 044D _ 8B. 45, F4
        lea     ebx, [eax-3H]                           ; 0450 _ 8D. 58, FD
        mov     eax, dword [ebp-10H]                    ; 0453 _ 8B. 45, F0
        lea     ecx, [eax-3H]                           ; 0456 _ 8D. 48, FD
        mov     eax, dword [ebp-0CH]                    ; 0459 _ 8B. 45, F4
        lea     edx, [eax-18H]                          ; 045C _ 8D. 50, E8
        mov     eax, dword [ebp-10H]                    ; 045F _ 8B. 45, F0
        sub     eax, 3                                  ; 0462 _ 83. E8, 03
        sub     esp, 4                                  ; 0465 _ 83. EC, 04
        push    ebx                                     ; 0468 _ 53
        push    ecx                                     ; 0469 _ 51
        push    edx                                     ; 046A _ 52
        push    eax                                     ; 046B _ 50
        push    7                                       ; 046C _ 6A, 07
        push    dword [ebp-10H]                         ; 046E _ FF. 75, F0
        push    dword [ebp-14H]                         ; 0471 _ FF. 75, EC
        call    boxfill8                                ; 0474 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0479 _ 83. C4, 20
        nop                                             ; 047C _ 90
        mov     ebx, dword [ebp-4H]                     ; 047D _ 8B. 5D, FC
        leave                                           ; 0480 _ C9
        ret                                             ; 0481 _ C3
; init_palette End of function

set_palette:; Function begin
        push    ebp                                     ; 0482 _ 55
        mov     ebp, esp                                ; 0483 _ 89. E5
        sub     esp, 24                                 ; 0485 _ 83. EC, 18
        call    io_load_eflags                          ; 0488 _ E8, FFFFFFFC(rel)
        mov     dword [ebp-0CH], eax                    ; 048D _ 89. 45, F4
        call    io_cli                                  ; 0490 _ E8, FFFFFFFC(rel)
        sub     esp, 8                                  ; 0495 _ 83. EC, 08
        push    dword [ebp+8H]                          ; 0498 _ FF. 75, 08
        push    968                                     ; 049B _ 68, 000003C8
        call    io_out8                                 ; 04A0 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 04A5 _ 83. C4, 10
        mov     eax, dword [ebp+8H]                     ; 04A8 _ 8B. 45, 08
        mov     dword [ebp-10H], eax                    ; 04AB _ 89. 45, F0
        jmp     ?_007                                   ; 04AE _ EB, 65

?_006:  mov     eax, dword [ebp+10H]                    ; 04B0 _ 8B. 45, 10
        movzx   eax, byte [eax]                         ; 04B3 _ 0F B6. 00
        shr     al, 2                                   ; 04B6 _ C0. E8, 02
        movzx   eax, al                                 ; 04B9 _ 0F B6. C0
        sub     esp, 8                                  ; 04BC _ 83. EC, 08
        push    eax                                     ; 04BF _ 50
        push    969                                     ; 04C0 _ 68, 000003C9
        call    io_out8                                 ; 04C5 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 04CA _ 83. C4, 10
        mov     eax, dword [ebp+10H]                    ; 04CD _ 8B. 45, 10
        add     eax, 1                                  ; 04D0 _ 83. C0, 01
        movzx   eax, byte [eax]                         ; 04D3 _ 0F B6. 00
        shr     al, 2                                   ; 04D6 _ C0. E8, 02
        movzx   eax, al                                 ; 04D9 _ 0F B6. C0
        sub     esp, 8                                  ; 04DC _ 83. EC, 08
        push    eax                                     ; 04DF _ 50
        push    969                                     ; 04E0 _ 68, 000003C9
        call    io_out8                                 ; 04E5 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 04EA _ 83. C4, 10
        mov     eax, dword [ebp+10H]                    ; 04ED _ 8B. 45, 10
        add     eax, 2                                  ; 04F0 _ 83. C0, 02
        movzx   eax, byte [eax]                         ; 04F3 _ 0F B6. 00
        shr     al, 2                                   ; 04F6 _ C0. E8, 02
        movzx   eax, al                                 ; 04F9 _ 0F B6. C0
        sub     esp, 8                                  ; 04FC _ 83. EC, 08
        push    eax                                     ; 04FF _ 50
        push    969                                     ; 0500 _ 68, 000003C9
        call    io_out8                                 ; 0505 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 050A _ 83. C4, 10
        add     dword [ebp+10H], 3                      ; 050D _ 83. 45, 10, 03
        add     dword [ebp-10H], 1                      ; 0511 _ 83. 45, F0, 01
?_007:  mov     eax, dword [ebp-10H]                    ; 0515 _ 8B. 45, F0
        cmp     eax, dword [ebp+0CH]                    ; 0518 _ 3B. 45, 0C
        jle     ?_006                                   ; 051B _ 7E, 93
        sub     esp, 12                                 ; 051D _ 83. EC, 0C
        push    dword [ebp-0CH]                         ; 0520 _ FF. 75, F4
        call    io_store_eflags                         ; 0523 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0528 _ 83. C4, 10
        nop                                             ; 052B _ 90
        leave                                           ; 052C _ C9
        ret                                             ; 052D _ C3
; set_palette End of function

boxfill8:; Function begin
        push    ebp                                     ; 052E _ 55
        mov     ebp, esp                                ; 052F _ 89. E5
        sub     esp, 20                                 ; 0531 _ 83. EC, 14
        mov     eax, dword [ebp+10H]                    ; 0534 _ 8B. 45, 10
        mov     byte [ebp-14H], al                      ; 0537 _ 88. 45, EC
        mov     eax, dword [ebp+18H]                    ; 053A _ 8B. 45, 18
        mov     dword [ebp-4H], eax                     ; 053D _ 89. 45, FC
        jmp     ?_011                                   ; 0540 _ EB, 33

?_008:  mov     eax, dword [ebp+14H]                    ; 0542 _ 8B. 45, 14
        mov     dword [ebp-8H], eax                     ; 0545 _ 89. 45, F8
        jmp     ?_010                                   ; 0548 _ EB, 1F

?_009:  mov     eax, dword [ebp-4H]                     ; 054A _ 8B. 45, FC
        imul    eax, dword [ebp+0CH]                    ; 054D _ 0F AF. 45, 0C
        mov     edx, eax                                ; 0551 _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 0553 _ 8B. 45, F8
        add     eax, edx                                ; 0556 _ 01. D0
        mov     edx, eax                                ; 0558 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 055A _ 8B. 45, 08
        add     edx, eax                                ; 055D _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 055F _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0563 _ 88. 02
        add     dword [ebp-8H], 1                       ; 0565 _ 83. 45, F8, 01
?_010:  mov     eax, dword [ebp-8H]                     ; 0569 _ 8B. 45, F8
        cmp     eax, dword [ebp+1CH]                    ; 056C _ 3B. 45, 1C
        jle     ?_009                                   ; 056F _ 7E, D9
        add     dword [ebp-4H], 1                       ; 0571 _ 83. 45, FC, 01
?_011:  mov     eax, dword [ebp-4H]                     ; 0575 _ 8B. 45, FC
        cmp     eax, dword [ebp+20H]                    ; 0578 _ 3B. 45, 20
        jle     ?_008                                   ; 057B _ 7E, C5
        nop                                             ; 057D _ 90
        leave                                           ; 057E _ C9
        ret                                             ; 057F _ C3
; boxfill8 End of function

showFont8:; Function begin
        push    ebp                                     ; 0580 _ 55
        mov     ebp, esp                                ; 0581 _ 89. E5
        sub     esp, 20                                 ; 0583 _ 83. EC, 14
        mov     eax, dword [ebp+18H]                    ; 0586 _ 8B. 45, 18
        mov     byte [ebp-14H], al                      ; 0589 _ 88. 45, EC
        mov     dword [ebp-4H], 0                       ; 058C _ C7. 45, FC, 00000000
        jmp     ?_021                                   ; 0593 _ E9, 0000016C

?_012:  mov     edx, dword [ebp-4H]                     ; 0598 _ 8B. 55, FC
        mov     eax, dword [ebp+1CH]                    ; 059B _ 8B. 45, 1C
        add     eax, edx                                ; 059E _ 01. D0
        movzx   eax, byte [eax]                         ; 05A0 _ 0F B6. 00
        mov     byte [ebp-5H], al                       ; 05A3 _ 88. 45, FB
        cmp     byte [ebp-5H], 0                        ; 05A6 _ 80. 7D, FB, 00
        jns     ?_013                                   ; 05AA _ 79, 20
        mov     edx, dword [ebp+14H]                    ; 05AC _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 05AF _ 8B. 45, FC
        add     eax, edx                                ; 05B2 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 05B4 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 05B8 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 05BA _ 8B. 45, 10
        add     eax, edx                                ; 05BD _ 01. D0
        mov     edx, eax                                ; 05BF _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 05C1 _ 8B. 45, 08
        add     edx, eax                                ; 05C4 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 05C6 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 05CA _ 88. 02
?_013:  movsx   eax, byte [ebp-5H]                      ; 05CC _ 0F BE. 45, FB
        and     eax, 40H                                ; 05D0 _ 83. E0, 40
        test    eax, eax                                ; 05D3 _ 85. C0
        jz      ?_014                                   ; 05D5 _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 05D7 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 05DA _ 8B. 45, FC
        add     eax, edx                                ; 05DD _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 05DF _ 0F AF. 45, 0C
        mov     edx, eax                                ; 05E3 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 05E5 _ 8B. 45, 10
        add     eax, edx                                ; 05E8 _ 01. D0
        lea     edx, [eax+1H]                           ; 05EA _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 05ED _ 8B. 45, 08
        add     edx, eax                                ; 05F0 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 05F2 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 05F6 _ 88. 02
?_014:  movsx   eax, byte [ebp-5H]                      ; 05F8 _ 0F BE. 45, FB
        and     eax, 20H                                ; 05FC _ 83. E0, 20
        test    eax, eax                                ; 05FF _ 85. C0
        jz      ?_015                                   ; 0601 _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 0603 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 0606 _ 8B. 45, FC
        add     eax, edx                                ; 0609 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 060B _ 0F AF. 45, 0C
        mov     edx, eax                                ; 060F _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 0611 _ 8B. 45, 10
        add     eax, edx                                ; 0614 _ 01. D0
        lea     edx, [eax+2H]                           ; 0616 _ 8D. 50, 02
        mov     eax, dword [ebp+8H]                     ; 0619 _ 8B. 45, 08
        add     edx, eax                                ; 061C _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 061E _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0622 _ 88. 02
?_015:  movsx   eax, byte [ebp-5H]                      ; 0624 _ 0F BE. 45, FB
        and     eax, 10H                                ; 0628 _ 83. E0, 10
        test    eax, eax                                ; 062B _ 85. C0
        jz      ?_016                                   ; 062D _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 062F _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 0632 _ 8B. 45, FC
        add     eax, edx                                ; 0635 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 0637 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 063B _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 063D _ 8B. 45, 10
        add     eax, edx                                ; 0640 _ 01. D0
        lea     edx, [eax+3H]                           ; 0642 _ 8D. 50, 03
        mov     eax, dword [ebp+8H]                     ; 0645 _ 8B. 45, 08
        add     edx, eax                                ; 0648 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 064A _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 064E _ 88. 02
?_016:  movsx   eax, byte [ebp-5H]                      ; 0650 _ 0F BE. 45, FB
        and     eax, 08H                                ; 0654 _ 83. E0, 08
        test    eax, eax                                ; 0657 _ 85. C0
        jz      ?_017                                   ; 0659 _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 065B _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 065E _ 8B. 45, FC
        add     eax, edx                                ; 0661 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 0663 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 0667 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 0669 _ 8B. 45, 10
        add     eax, edx                                ; 066C _ 01. D0
        lea     edx, [eax+4H]                           ; 066E _ 8D. 50, 04
        mov     eax, dword [ebp+8H]                     ; 0671 _ 8B. 45, 08
        add     edx, eax                                ; 0674 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0676 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 067A _ 88. 02
?_017:  movsx   eax, byte [ebp-5H]                      ; 067C _ 0F BE. 45, FB
        and     eax, 04H                                ; 0680 _ 83. E0, 04
        test    eax, eax                                ; 0683 _ 85. C0
        jz      ?_018                                   ; 0685 _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 0687 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 068A _ 8B. 45, FC
        add     eax, edx                                ; 068D _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 068F _ 0F AF. 45, 0C
        mov     edx, eax                                ; 0693 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 0695 _ 8B. 45, 10
        add     eax, edx                                ; 0698 _ 01. D0
        lea     edx, [eax+5H]                           ; 069A _ 8D. 50, 05
        mov     eax, dword [ebp+8H]                     ; 069D _ 8B. 45, 08
        add     edx, eax                                ; 06A0 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 06A2 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 06A6 _ 88. 02
?_018:  movsx   eax, byte [ebp-5H]                      ; 06A8 _ 0F BE. 45, FB
        and     eax, 02H                                ; 06AC _ 83. E0, 02
        test    eax, eax                                ; 06AF _ 85. C0
        jz      ?_019                                   ; 06B1 _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 06B3 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 06B6 _ 8B. 45, FC
        add     eax, edx                                ; 06B9 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 06BB _ 0F AF. 45, 0C
        mov     edx, eax                                ; 06BF _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 06C1 _ 8B. 45, 10
        add     eax, edx                                ; 06C4 _ 01. D0
        lea     edx, [eax+6H]                           ; 06C6 _ 8D. 50, 06
        mov     eax, dword [ebp+8H]                     ; 06C9 _ 8B. 45, 08
        add     edx, eax                                ; 06CC _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 06CE _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 06D2 _ 88. 02
?_019:  movsx   eax, byte [ebp-5H]                      ; 06D4 _ 0F BE. 45, FB
        and     eax, 01H                                ; 06D8 _ 83. E0, 01
        test    eax, eax                                ; 06DB _ 85. C0
        jz      ?_020                                   ; 06DD _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 06DF _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 06E2 _ 8B. 45, FC
        add     eax, edx                                ; 06E5 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 06E7 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 06EB _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 06ED _ 8B. 45, 10
        add     eax, edx                                ; 06F0 _ 01. D0
        lea     edx, [eax+7H]                           ; 06F2 _ 8D. 50, 07
        mov     eax, dword [ebp+8H]                     ; 06F5 _ 8B. 45, 08
        add     edx, eax                                ; 06F8 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 06FA _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 06FE _ 88. 02
?_020:  add     dword [ebp-4H], 1                       ; 0700 _ 83. 45, FC, 01
?_021:  cmp     dword [ebp-4H], 15                      ; 0704 _ 83. 7D, FC, 0F
        jle     ?_012                                   ; 0708 _ 0F 8E, FFFFFE8A
        nop                                             ; 070E _ 90
        leave                                           ; 070F _ C9
        ret                                             ; 0710 _ C3
; showFont8 End of function

init_mouse_cursor:; Function begin
        push    ebp                                     ; 0711 _ 55
        mov     ebp, esp                                ; 0712 _ 89. E5
        sub     esp, 56                                 ; 0714 _ 83. EC, 38
        mov     eax, dword [ebp+0CH]                    ; 0717 _ 8B. 45, 0C
        mov     byte [ebp-2CH], al                      ; 071A _ 88. 45, D4
        mov     eax, dword [bootInfo]                   ; 071D _ A1, 00000100(d)
        mov     dword [ebp-14H], eax                    ; 0722 _ 89. 45, EC
        movzx   eax, word [?_068]                       ; 0725 _ 0F B7. 05, 00000104(d)
        cwde                                            ; 072C _ 98
        mov     dword [ebp-10H], eax                    ; 072D _ 89. 45, F0
        movzx   eax, word [?_069]                       ; 0730 _ 0F B7. 05, 00000106(d)
        cwde                                            ; 0737 _ 98
        mov     dword [ebp-0CH], eax                    ; 0738 _ 89. 45, F4
        mov     eax, dword [ebp-10H]                    ; 073B _ 8B. 45, F0
        sub     eax, 16                                 ; 073E _ 83. E8, 10
        mov     dword [mx], eax                         ; 0741 _ A3, 000001F0(d)
        mov     eax, dword [ebp-0CH]                    ; 0746 _ 8B. 45, F4
        sub     eax, 16                                 ; 0749 _ 83. E8, 10
        mov     dword [my], eax                         ; 074C _ A3, 000001F4(d)
        mov     dword [ebp-18H], 0                      ; 0751 _ C7. 45, E8, 00000000
        jmp     ?_028                                   ; 0758 _ E9, 000000B1

?_022:  mov     dword [ebp-1CH], 0                      ; 075D _ C7. 45, E4, 00000000
        jmp     ?_027                                   ; 0764 _ E9, 00000097

?_023:  mov     eax, dword [ebp-18H]                    ; 0769 _ 8B. 45, E8
        shl     eax, 4                                  ; 076C _ C1. E0, 04
        mov     edx, eax                                ; 076F _ 89. C2
        mov     eax, dword [ebp-1CH]                    ; 0771 _ 8B. 45, E4
        add     eax, edx                                ; 0774 _ 01. D0
        add     eax, cursor.1622                        ; 0776 _ 05, 00000060(d)
        movzx   eax, byte [eax]                         ; 077B _ 0F B6. 00
        cmp     al, 42                                  ; 077E _ 3C, 2A
        jnz     ?_024                                   ; 0780 _ 75, 17
        mov     eax, dword [ebp-18H]                    ; 0782 _ 8B. 45, E8
        shl     eax, 4                                  ; 0785 _ C1. E0, 04
        mov     edx, eax                                ; 0788 _ 89. C2
        mov     eax, dword [ebp-1CH]                    ; 078A _ 8B. 45, E4
        add     eax, edx                                ; 078D _ 01. D0
        mov     edx, eax                                ; 078F _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 0791 _ 8B. 45, 08
        add     eax, edx                                ; 0794 _ 01. D0
        mov     byte [eax], 0                           ; 0796 _ C6. 00, 00
?_024:  mov     eax, dword [ebp-18H]                    ; 0799 _ 8B. 45, E8
        shl     eax, 4                                  ; 079C _ C1. E0, 04
        mov     edx, eax                                ; 079F _ 89. C2
        mov     eax, dword [ebp-1CH]                    ; 07A1 _ 8B. 45, E4
        add     eax, edx                                ; 07A4 _ 01. D0
        add     eax, cursor.1622                        ; 07A6 _ 05, 00000060(d)
        movzx   eax, byte [eax]                         ; 07AB _ 0F B6. 00
        cmp     al, 79                                  ; 07AE _ 3C, 4F
        jnz     ?_025                                   ; 07B0 _ 75, 17
        mov     eax, dword [ebp-18H]                    ; 07B2 _ 8B. 45, E8
        shl     eax, 4                                  ; 07B5 _ C1. E0, 04
        mov     edx, eax                                ; 07B8 _ 89. C2
        mov     eax, dword [ebp-1CH]                    ; 07BA _ 8B. 45, E4
        add     eax, edx                                ; 07BD _ 01. D0
        mov     edx, eax                                ; 07BF _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 07C1 _ 8B. 45, 08
        add     eax, edx                                ; 07C4 _ 01. D0
        mov     byte [eax], 7                           ; 07C6 _ C6. 00, 07
?_025:  mov     eax, dword [ebp-18H]                    ; 07C9 _ 8B. 45, E8
        shl     eax, 4                                  ; 07CC _ C1. E0, 04
        mov     edx, eax                                ; 07CF _ 89. C2
        mov     eax, dword [ebp-1CH]                    ; 07D1 _ 8B. 45, E4
        add     eax, edx                                ; 07D4 _ 01. D0
        add     eax, cursor.1622                        ; 07D6 _ 05, 00000060(d)
        movzx   eax, byte [eax]                         ; 07DB _ 0F B6. 00
        cmp     al, 46                                  ; 07DE _ 3C, 2E
        jnz     ?_026                                   ; 07E0 _ 75, 1A
        mov     eax, dword [ebp-18H]                    ; 07E2 _ 8B. 45, E8
        shl     eax, 4                                  ; 07E5 _ C1. E0, 04
        mov     edx, eax                                ; 07E8 _ 89. C2
        mov     eax, dword [ebp-1CH]                    ; 07EA _ 8B. 45, E4
        add     eax, edx                                ; 07ED _ 01. D0
        mov     edx, eax                                ; 07EF _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 07F1 _ 8B. 45, 08
        add     edx, eax                                ; 07F4 _ 01. C2
        movzx   eax, byte [ebp-2CH]                     ; 07F6 _ 0F B6. 45, D4
        mov     byte [edx], al                          ; 07FA _ 88. 02
?_026:  add     dword [ebp-1CH], 1                      ; 07FC _ 83. 45, E4, 01
?_027:  cmp     dword [ebp-1CH], 15                     ; 0800 _ 83. 7D, E4, 0F
        jle     ?_023                                   ; 0804 _ 0F 8E, FFFFFF5F
        add     dword [ebp-18H], 1                      ; 080A _ 83. 45, E8, 01
?_028:  cmp     dword [ebp-18H], 15                     ; 080E _ 83. 7D, E8, 0F
        jle     ?_022                                   ; 0812 _ 0F 8E, FFFFFF45
        mov     edx, dword [my]                         ; 0818 _ 8B. 15, 000001F4(d)
        mov     eax, dword [mx]                         ; 081E _ A1, 000001F0(d)
        push    16                                      ; 0823 _ 6A, 10
        push    mcursor                                 ; 0825 _ 68, 00000000(d)
        push    edx                                     ; 082A _ 52
        push    eax                                     ; 082B _ 50
        push    16                                      ; 082C _ 6A, 10
        push    16                                      ; 082E _ 6A, 10
        push    dword [ebp-10H]                         ; 0830 _ FF. 75, F0
        push    dword [ebp-14H]                         ; 0833 _ FF. 75, EC
        call    putblock                                ; 0836 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 083B _ 83. C4, 20
        nop                                             ; 083E _ 90
        leave                                           ; 083F _ C9
        ret                                             ; 0840 _ C3
; init_mouse_cursor End of function

putblock:; Function begin
        push    ebp                                     ; 0841 _ 55
        mov     ebp, esp                                ; 0842 _ 89. E5
        push    ebx                                     ; 0844 _ 53
        sub     esp, 16                                 ; 0845 _ 83. EC, 10
        mov     dword [ebp-8H], 0                       ; 0848 _ C7. 45, F8, 00000000
        jmp     ?_032                                   ; 084F _ EB, 50

?_029:  mov     dword [ebp-0CH], 0                      ; 0851 _ C7. 45, F4, 00000000
        jmp     ?_031                                   ; 0858 _ EB, 3B

?_030:  mov     eax, dword [ebp-8H]                     ; 085A _ 8B. 45, F8
        imul    eax, dword [ebp+24H]                    ; 085D _ 0F AF. 45, 24
        mov     edx, eax                                ; 0861 _ 89. C2
        mov     eax, dword [ebp-0CH]                    ; 0863 _ 8B. 45, F4
        add     eax, edx                                ; 0866 _ 01. D0
        mov     edx, eax                                ; 0868 _ 89. C2
        mov     eax, dword [ebp+20H]                    ; 086A _ 8B. 45, 20
        add     eax, edx                                ; 086D _ 01. D0
        mov     ecx, dword [ebp+1CH]                    ; 086F _ 8B. 4D, 1C
        mov     edx, dword [ebp-8H]                     ; 0872 _ 8B. 55, F8
        add     edx, ecx                                ; 0875 _ 01. CA
        imul    edx, dword [ebp+0CH]                    ; 0877 _ 0F AF. 55, 0C
        mov     ebx, dword [ebp+18H]                    ; 087B _ 8B. 5D, 18
        mov     ecx, dword [ebp-0CH]                    ; 087E _ 8B. 4D, F4
        add     ecx, ebx                                ; 0881 _ 01. D9
        add     edx, ecx                                ; 0883 _ 01. CA
        mov     ecx, edx                                ; 0885 _ 89. D1
        mov     edx, dword [ebp+8H]                     ; 0887 _ 8B. 55, 08
        add     edx, ecx                                ; 088A _ 01. CA
        movzx   eax, byte [eax]                         ; 088C _ 0F B6. 00
        mov     byte [edx], al                          ; 088F _ 88. 02
        add     dword [ebp-0CH], 1                      ; 0891 _ 83. 45, F4, 01
?_031:  mov     eax, dword [ebp-0CH]                    ; 0895 _ 8B. 45, F4
        cmp     eax, dword [ebp+10H]                    ; 0898 _ 3B. 45, 10
        jl      ?_030                                   ; 089B _ 7C, BD
        add     dword [ebp-8H], 1                       ; 089D _ 83. 45, F8, 01
?_032:  mov     eax, dword [ebp-8H]                     ; 08A1 _ 8B. 45, F8
        cmp     eax, dword [ebp+14H]                    ; 08A4 _ 3B. 45, 14
        jl      ?_029                                   ; 08A7 _ 7C, A8
        nop                                             ; 08A9 _ 90
        add     esp, 16                                 ; 08AA _ 83. C4, 10
        pop     ebx                                     ; 08AD _ 5B
        pop     ebp                                     ; 08AE _ 5D
        ret                                             ; 08AF _ C3
; putblock End of function

intHandlerFromC:; Function begin
        push    ebp                                     ; 08B0 _ 55
        mov     ebp, esp                                ; 08B1 _ 89. E5
        sub     esp, 24                                 ; 08B3 _ 83. EC, 18
        mov     eax, dword [bootInfo]                   ; 08B6 _ A1, 00000100(d)
        mov     dword [ebp-14H], eax                    ; 08BB _ 89. 45, EC
        movzx   eax, word [?_068]                       ; 08BE _ 0F B7. 05, 00000104(d)
        cwde                                            ; 08C5 _ 98
        mov     dword [ebp-10H], eax                    ; 08C6 _ 89. 45, F0
        movzx   eax, word [?_069]                       ; 08C9 _ 0F B7. 05, 00000106(d)
        cwde                                            ; 08D0 _ 98
        mov     dword [ebp-0CH], eax                    ; 08D1 _ 89. 45, F4
        sub     esp, 8                                  ; 08D4 _ 83. EC, 08
        push    32                                      ; 08D7 _ 6A, 20
        push    32                                      ; 08D9 _ 6A, 20
        call    io_out8                                 ; 08DB _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 08E0 _ 83. C4, 10
        mov     byte [ebp-15H], 0                       ; 08E3 _ C6. 45, EB, 00
        sub     esp, 12                                 ; 08E7 _ 83. EC, 0C
        push    96                                      ; 08EA _ 6A, 60
        call    io_in8                                  ; 08EC _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 08F1 _ 83. C4, 10
        mov     byte [ebp-15H], al                      ; 08F4 _ 88. 45, EB
        movzx   eax, byte [ebp-15H]                     ; 08F7 _ 0F B6. 45, EB
        sub     esp, 8                                  ; 08FB _ 83. EC, 08
        push    eax                                     ; 08FE _ 50
        push    keyInfo                                 ; 08FF _ 68, 00000108(d)
        call    fifo8_put                               ; 0904 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0909 _ 83. C4, 10
        nop                                             ; 090C _ 90
        leave                                           ; 090D _ C9
        ret                                             ; 090E _ C3
; intHandlerFromC End of function

charToHex:; Function begin
        push    ebp                                     ; 090F _ 55
        mov     ebp, esp                                ; 0910 _ 89. E5
        sub     esp, 40                                 ; 0912 _ 83. EC, 28
        mov     eax, dword [ebp+8H]                     ; 0915 _ 8B. 45, 08
        mov     byte [ebp-1CH], al                      ; 0918 _ 88. 45, E4
        movzx   eax, byte [ebp-1CH]                     ; 091B _ 0F B6. 45, E4
        and     eax, 0FH                                ; 091F _ 83. E0, 0F
        mov     byte [ebp-9H], al                       ; 0922 _ 88. 45, F7
        movsx   eax, byte [ebp-9H]                      ; 0925 _ 0F BE. 45, F7
        sub     esp, 12                                 ; 0929 _ 83. EC, 0C
        push    eax                                     ; 092C _ 50
        call    charToVal                               ; 092D _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0932 _ 83. C4, 10
        mov     byte [?_067], al                        ; 0935 _ A2, 00000013(d)
        movzx   eax, byte [ebp-1CH]                     ; 093A _ 0F B6. 45, E4
        shr     al, 4                                   ; 093E _ C0. E8, 04
        mov     byte [ebp-1CH], al                      ; 0941 _ 88. 45, E4
        movzx   eax, byte [ebp-1CH]                     ; 0944 _ 0F B6. 45, E4
        movsx   eax, al                                 ; 0948 _ 0F BE. C0
        sub     esp, 12                                 ; 094B _ 83. EC, 0C
        push    eax                                     ; 094E _ 50
        call    charToVal                               ; 094F _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0954 _ 83. C4, 10
        mov     byte [?_066], al                        ; 0957 _ A2, 00000012(d)
        mov     eax, keyVal                             ; 095C _ B8, 00000010(d)
        leave                                           ; 0961 _ C9
        ret                                             ; 0962 _ C3
; charToHex End of function

charToVal:; Function begin
        push    ebp                                     ; 0963 _ 55
        mov     ebp, esp                                ; 0964 _ 89. E5
        sub     esp, 4                                  ; 0966 _ 83. EC, 04
        mov     eax, dword [ebp+8H]                     ; 0969 _ 8B. 45, 08
        mov     byte [ebp-4H], al                       ; 096C _ 88. 45, FC
        cmp     byte [ebp-4H], 9                        ; 096F _ 80. 7D, FC, 09
        jle     ?_033                                   ; 0973 _ 7E, 09
        movzx   eax, byte [ebp-4H]                      ; 0975 _ 0F B6. 45, FC
        add     eax, 55                                 ; 0979 _ 83. C0, 37
        jmp     ?_034                                   ; 097C _ EB, 07

?_033:  movzx   eax, byte [ebp-4H]                      ; 097E _ 0F B6. 45, FC
        add     eax, 48                                 ; 0982 _ 83. C0, 30
?_034:  leave                                           ; 0985 _ C9
        ret                                             ; 0986 _ C3
; charToVal End of function

intToHexStr:; Function begin
        push    ebp                                     ; 0987 _ 55
        mov     ebp, esp                                ; 0988 _ 89. E5
        sub     esp, 16                                 ; 098A _ 83. EC, 10
        mov     byte [str.1665], 48                     ; 098D _ C6. 05, 000001F8(d), 30
        mov     byte [?_070], 120                       ; 0994 _ C6. 05, 000001F9(d), 78
        mov     byte [?_071], 0                         ; 099B _ C6. 05, 00000202(d), 00
        mov     dword [ebp-0CH], 2                      ; 09A2 _ C7. 45, F4, 00000002
        jmp     ?_036                                   ; 09A9 _ EB, 0F

?_035:  mov     eax, dword [ebp-0CH]                    ; 09AB _ 8B. 45, F4
        add     eax, str.1665                           ; 09AE _ 05, 000001F8(d)
        mov     byte [eax], 48                          ; 09B3 _ C6. 00, 30
        add     dword [ebp-0CH], 1                      ; 09B6 _ 83. 45, F4, 01
?_036:  cmp     dword [ebp-0CH], 9                      ; 09BA _ 83. 7D, F4, 09
        jle     ?_035                                   ; 09BE _ 7E, EB
        mov     dword [ebp-8H], 9                       ; 09C0 _ C7. 45, F8, 00000009
        jmp     ?_039                                   ; 09C7 _ EB, 48

?_037:  mov     eax, dword [ebp+8H]                     ; 09C9 _ 8B. 45, 08
        and     eax, 0FH                                ; 09CC _ 83. E0, 0F
        mov     dword [ebp-4H], eax                     ; 09CF _ 89. 45, FC
        mov     eax, dword [ebp+8H]                     ; 09D2 _ 8B. 45, 08
        shr     eax, 4                                  ; 09D5 _ C1. E8, 04
        mov     dword [ebp+8H], eax                     ; 09D8 _ 89. 45, 08
        cmp     dword [ebp-4H], 9                       ; 09DB _ 83. 7D, FC, 09
        jle     ?_038                                   ; 09DF _ 7E, 19
        mov     eax, dword [ebp-4H]                     ; 09E1 _ 8B. 45, FC
        lea     ecx, [eax+37H]                          ; 09E4 _ 8D. 48, 37
        mov     eax, dword [ebp-8H]                     ; 09E7 _ 8B. 45, F8
        lea     edx, [eax-1H]                           ; 09EA _ 8D. 50, FF
        mov     dword [ebp-8H], edx                     ; 09ED _ 89. 55, F8
        mov     edx, ecx                                ; 09F0 _ 89. CA
        mov     byte [str.1665+eax], dl                 ; 09F2 _ 88. 90, 000001F8(d)
        jmp     ?_039                                   ; 09F8 _ EB, 17

?_038:  mov     eax, dword [ebp-4H]                     ; 09FA _ 8B. 45, FC
        lea     ecx, [eax+30H]                          ; 09FD _ 8D. 48, 30
        mov     eax, dword [ebp-8H]                     ; 0A00 _ 8B. 45, F8
        lea     edx, [eax-1H]                           ; 0A03 _ 8D. 50, FF
        mov     dword [ebp-8H], edx                     ; 0A06 _ 89. 55, F8
        mov     edx, ecx                                ; 0A09 _ 89. CA
        mov     byte [str.1665+eax], dl                 ; 0A0B _ 88. 90, 000001F8(d)
?_039:  cmp     dword [ebp-8H], 1                       ; 0A11 _ 83. 7D, F8, 01
        jle     ?_040                                   ; 0A15 _ 7E, 06
        cmp     dword [ebp+8H], 0                       ; 0A17 _ 83. 7D, 08, 00
        jnz     ?_037                                   ; 0A1B _ 75, AC
?_040:  mov     eax, str.1665                           ; 0A1D _ B8, 000001F8(d)
        leave                                           ; 0A22 _ C9
        ret                                             ; 0A23 _ C3
; intToHexStr End of function

wait_KBC_sendReady:; Function begin
        push    ebp                                     ; 0A24 _ 55
        mov     ebp, esp                                ; 0A25 _ 89. E5
        sub     esp, 8                                  ; 0A27 _ 83. EC, 08
?_041:  sub     esp, 12                                 ; 0A2A _ 83. EC, 0C
        push    100                                     ; 0A2D _ 6A, 64
        call    io_in8                                  ; 0A2F _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0A34 _ 83. C4, 10
        movsx   eax, al                                 ; 0A37 _ 0F BE. C0
        and     eax, 02H                                ; 0A3A _ 83. E0, 02
        test    eax, eax                                ; 0A3D _ 85. C0
        jz      ?_042                                   ; 0A3F _ 74, 02
        jmp     ?_041                                   ; 0A41 _ EB, E7

?_042:  nop                                             ; 0A43 _ 90
        nop                                             ; 0A44 _ 90
        leave                                           ; 0A45 _ C9
        ret                                             ; 0A46 _ C3
; wait_KBC_sendReady End of function

init_keyboard:; Function begin
        push    ebp                                     ; 0A47 _ 55
        mov     ebp, esp                                ; 0A48 _ 89. E5
        sub     esp, 8                                  ; 0A4A _ 83. EC, 08
        call    wait_KBC_sendReady                      ; 0A4D _ E8, FFFFFFFC(rel)
        sub     esp, 8                                  ; 0A52 _ 83. EC, 08
        push    96                                      ; 0A55 _ 6A, 60
        push    100                                     ; 0A57 _ 6A, 64
        call    io_out8                                 ; 0A59 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0A5E _ 83. C4, 10
        call    wait_KBC_sendReady                      ; 0A61 _ E8, FFFFFFFC(rel)
        sub     esp, 8                                  ; 0A66 _ 83. EC, 08
        push    71                                      ; 0A69 _ 6A, 47
        push    96                                      ; 0A6B _ 6A, 60
        call    io_out8                                 ; 0A6D _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0A72 _ 83. C4, 10
        nop                                             ; 0A75 _ 90
        leave                                           ; 0A76 _ C9
        ret                                             ; 0A77 _ C3
; init_keyboard End of function

enable_mouse:; Function begin
        push    ebp                                     ; 0A78 _ 55
        mov     ebp, esp                                ; 0A79 _ 89. E5
        sub     esp, 8                                  ; 0A7B _ 83. EC, 08
        call    wait_KBC_sendReady                      ; 0A7E _ E8, FFFFFFFC(rel)
        sub     esp, 8                                  ; 0A83 _ 83. EC, 08
        push    212                                     ; 0A86 _ 68, 000000D4
        push    100                                     ; 0A8B _ 6A, 64
        call    io_out8                                 ; 0A8D _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0A92 _ 83. C4, 10
        call    wait_KBC_sendReady                      ; 0A95 _ E8, FFFFFFFC(rel)
        sub     esp, 8                                  ; 0A9A _ 83. EC, 08
        push    244                                     ; 0A9D _ 68, 000000F4
        push    96                                      ; 0AA2 _ 6A, 60
        call    io_out8                                 ; 0AA4 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0AA9 _ 83. C4, 10
        mov     eax, dword [ebp+8H]                     ; 0AAC _ 8B. 45, 08
        mov     byte [eax+3H], 0                        ; 0AAF _ C6. 40, 03, 00
        nop                                             ; 0AB3 _ 90
        leave                                           ; 0AB4 _ C9
        ret                                             ; 0AB5 _ C3
; enable_mouse End of function

intHandlerForMouse:; Function begin
        push    ebp                                     ; 0AB6 _ 55
        mov     ebp, esp                                ; 0AB7 _ 89. E5
        sub     esp, 24                                 ; 0AB9 _ 83. EC, 18
        mov     byte [ebp-9H], 0                        ; 0ABC _ C6. 45, F7, 00
        sub     esp, 8                                  ; 0AC0 _ 83. EC, 08
        push    32                                      ; 0AC3 _ 6A, 20
        push    160                                     ; 0AC5 _ 68, 000000A0
        call    io_out8                                 ; 0ACA _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0ACF _ 83. C4, 10
        sub     esp, 8                                  ; 0AD2 _ 83. EC, 08
        push    32                                      ; 0AD5 _ 6A, 20
        push    32                                      ; 0AD7 _ 6A, 20
        call    io_out8                                 ; 0AD9 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0ADE _ 83. C4, 10
        sub     esp, 12                                 ; 0AE1 _ 83. EC, 0C
        push    96                                      ; 0AE4 _ 6A, 60
        call    io_in8                                  ; 0AE6 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0AEB _ 83. C4, 10
        mov     byte [ebp-9H], al                       ; 0AEE _ 88. 45, F7
        movzx   eax, byte [ebp-9H]                      ; 0AF1 _ 0F B6. 45, F7
        sub     esp, 8                                  ; 0AF5 _ 83. EC, 08
        push    eax                                     ; 0AF8 _ 50
        push    mouseInfo                               ; 0AF9 _ 68, 00000120(d)
        call    fifo8_put                               ; 0AFE _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0B03 _ 83. C4, 10
        nop                                             ; 0B06 _ 90
        leave                                           ; 0B07 _ C9
        ret                                             ; 0B08 _ C3
; intHandlerForMouse End of function

fifo8_init:; Function begin
        push    ebp                                     ; 0B09 _ 55
        mov     ebp, esp                                ; 0B0A _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 0B0C _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 0B0F _ 8B. 55, 0C
        mov     dword [eax+0CH], edx                    ; 0B12 _ 89. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 0B15 _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 0B18 _ 8B. 55, 10
        mov     dword [eax], edx                        ; 0B1B _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 0B1D _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 0B20 _ 8B. 55, 0C
        mov     dword [eax+10H], edx                    ; 0B23 _ 89. 50, 10
        mov     eax, dword [ebp+8H]                     ; 0B26 _ 8B. 45, 08
        mov     dword [eax+4H], 0                       ; 0B29 _ C7. 40, 04, 00000000
        mov     eax, dword [ebp+8H]                     ; 0B30 _ 8B. 45, 08
        mov     dword [eax+8H], 0                       ; 0B33 _ C7. 40, 08, 00000000
        mov     eax, dword [ebp+8H]                     ; 0B3A _ 8B. 45, 08
        mov     dword [eax+14H], 0                      ; 0B3D _ C7. 40, 14, 00000000
        nop                                             ; 0B44 _ 90
        pop     ebp                                     ; 0B45 _ 5D
        ret                                             ; 0B46 _ C3
; fifo8_init End of function

fifo8_put:; Function begin
        push    ebp                                     ; 0B47 _ 55
        mov     ebp, esp                                ; 0B48 _ 89. E5
        sub     esp, 4                                  ; 0B4A _ 83. EC, 04
        mov     eax, dword [ebp+0CH]                    ; 0B4D _ 8B. 45, 0C
        mov     byte [ebp-4H], al                       ; 0B50 _ 88. 45, FC
        mov     eax, dword [ebp+8H]                     ; 0B53 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 0B56 _ 8B. 40, 10
        test    eax, eax                                ; 0B59 _ 85. C0
        jnz     ?_043                                   ; 0B5B _ 75, 18
        mov     eax, dword [ebp+8H]                     ; 0B5D _ 8B. 45, 08
        mov     eax, dword [eax+14H]                    ; 0B60 _ 8B. 40, 14
        or      eax, 01H                                ; 0B63 _ 83. C8, 01
        mov     edx, eax                                ; 0B66 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 0B68 _ 8B. 45, 08
        mov     dword [eax+14H], edx                    ; 0B6B _ 89. 50, 14
        mov     eax, 4294967295                         ; 0B6E _ B8, FFFFFFFF
        jmp     ?_045                                   ; 0B73 _ EB, 50

?_043:  mov     eax, dword [ebp+8H]                     ; 0B75 _ 8B. 45, 08
        mov     edx, dword [eax]                        ; 0B78 _ 8B. 10
        mov     eax, dword [ebp+8H]                     ; 0B7A _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 0B7D _ 8B. 40, 08
        add     edx, eax                                ; 0B80 _ 01. C2
        movzx   eax, byte [ebp-4H]                      ; 0B82 _ 0F B6. 45, FC
        mov     byte [edx], al                          ; 0B86 _ 88. 02
        mov     eax, dword [ebp+8H]                     ; 0B88 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 0B8B _ 8B. 40, 08
        lea     edx, [eax+1H]                           ; 0B8E _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 0B91 _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 0B94 _ 89. 50, 08
        mov     eax, dword [ebp+8H]                     ; 0B97 _ 8B. 45, 08
        mov     edx, dword [eax+8H]                     ; 0B9A _ 8B. 50, 08
        mov     eax, dword [ebp+8H]                     ; 0B9D _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 0BA0 _ 8B. 40, 0C
        cmp     edx, eax                                ; 0BA3 _ 39. C2
        jnz     ?_044                                   ; 0BA5 _ 75, 0A
        mov     eax, dword [ebp+8H]                     ; 0BA7 _ 8B. 45, 08
        mov     dword [eax+8H], 0                       ; 0BAA _ C7. 40, 08, 00000000
?_044:  mov     eax, dword [ebp+8H]                     ; 0BB1 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 0BB4 _ 8B. 40, 10
        lea     edx, [eax-1H]                           ; 0BB7 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 0BBA _ 8B. 45, 08
        mov     dword [eax+10H], edx                    ; 0BBD _ 89. 50, 10
        mov     eax, 1                                  ; 0BC0 _ B8, 00000001
?_045:  leave                                           ; 0BC5 _ C9
        ret                                             ; 0BC6 _ C3
; fifo8_put End of function

fifo8_get:; Function begin
        push    ebp                                     ; 0BC7 _ 55
        mov     ebp, esp                                ; 0BC8 _ 89. E5
        sub     esp, 16                                 ; 0BCA _ 83. EC, 10
        mov     eax, dword [ebp+8H]                     ; 0BCD _ 8B. 45, 08
        mov     edx, dword [eax+10H]                    ; 0BD0 _ 8B. 50, 10
        mov     eax, dword [ebp+8H]                     ; 0BD3 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 0BD6 _ 8B. 40, 0C
        cmp     edx, eax                                ; 0BD9 _ 39. C2
        jnz     ?_046                                   ; 0BDB _ 75, 07
        mov     eax, 4294967295                         ; 0BDD _ B8, FFFFFFFF
        jmp     ?_048                                   ; 0BE2 _ EB, 51

?_046:  mov     eax, dword [ebp+8H]                     ; 0BE4 _ 8B. 45, 08
        mov     edx, dword [eax]                        ; 0BE7 _ 8B. 10
        mov     eax, dword [ebp+8H]                     ; 0BE9 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 0BEC _ 8B. 40, 04
        add     eax, edx                                ; 0BEF _ 01. D0
        movzx   eax, byte [eax]                         ; 0BF1 _ 0F B6. 00
        movzx   eax, al                                 ; 0BF4 _ 0F B6. C0
        mov     dword [ebp-4H], eax                     ; 0BF7 _ 89. 45, FC
        mov     eax, dword [ebp+8H]                     ; 0BFA _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 0BFD _ 8B. 40, 04
        lea     edx, [eax+1H]                           ; 0C00 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 0C03 _ 8B. 45, 08
        mov     dword [eax+4H], edx                     ; 0C06 _ 89. 50, 04
        mov     eax, dword [ebp+8H]                     ; 0C09 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 0C0C _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 0C0F _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 0C12 _ 8B. 40, 0C
        cmp     edx, eax                                ; 0C15 _ 39. C2
        jnz     ?_047                                   ; 0C17 _ 75, 0A
        mov     eax, dword [ebp+8H]                     ; 0C19 _ 8B. 45, 08
        mov     dword [eax+4H], 0                       ; 0C1C _ C7. 40, 04, 00000000
?_047:  mov     eax, dword [ebp+8H]                     ; 0C23 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 0C26 _ 8B. 40, 10
        lea     edx, [eax+1H]                           ; 0C29 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 0C2C _ 8B. 45, 08
        mov     dword [eax+10H], edx                    ; 0C2F _ 89. 50, 10
        mov     eax, dword [ebp-4H]                     ; 0C32 _ 8B. 45, FC
?_048:  leave                                           ; 0C35 _ C9
        ret                                             ; 0C36 _ C3
; fifo8_get End of function

fifo8_status:; Function begin
        push    ebp                                     ; 0C37 _ 55
        mov     ebp, esp                                ; 0C38 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 0C3A _ 8B. 45, 08
        mov     edx, dword [eax+0CH]                    ; 0C3D _ 8B. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 0C40 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 0C43 _ 8B. 40, 10
        sub     edx, eax                                ; 0C46 _ 29. C2
        mov     eax, edx                                ; 0C48 _ 89. D0
        pop     ebp                                     ; 0C4A _ 5D
        ret                                             ; 0C4B _ C3
; fifo8_status End of function

showKeyboardInfo:; Function begin
        push    ebp                                     ; 0C4C _ 55
        mov     ebp, esp                                ; 0C4D _ 89. E5
        sub     esp, 40                                 ; 0C4F _ 83. EC, 28
        call    io_sti                                  ; 0C52 _ E8, FFFFFFFC(rel)
        mov     eax, dword [bootInfo]                   ; 0C57 _ A1, 00000100(d)
        mov     dword [ebp-18H], eax                    ; 0C5C _ 89. 45, E8
        movzx   eax, word [?_068]                       ; 0C5F _ 0F B7. 05, 00000104(d)
        cwde                                            ; 0C66 _ 98
        mov     dword [ebp-14H], eax                    ; 0C67 _ 89. 45, EC
        movzx   eax, word [?_069]                       ; 0C6A _ 0F B7. 05, 00000106(d)
        cwde                                            ; 0C71 _ 98
        mov     dword [ebp-10H], eax                    ; 0C72 _ 89. 45, F0
        mov     byte [ebp-19H], 0                       ; 0C75 _ C6. 45, E7, 00
        sub     esp, 12                                 ; 0C79 _ 83. EC, 0C
        push    keyInfo                                 ; 0C7C _ 68, 00000108(d)
        call    fifo8_get                               ; 0C81 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0C86 _ 83. C4, 10
        mov     byte [ebp-19H], al                      ; 0C89 _ 88. 45, E7
        movzx   eax, byte [ebp-19H]                     ; 0C8C _ 0F B6. 45, E7
        sub     esp, 12                                 ; 0C90 _ 83. EC, 0C
        push    eax                                     ; 0C93 _ 50
        call    charToHex                               ; 0C94 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0C99 _ 83. C4, 10
        mov     dword [ebp-0CH], eax                    ; 0C9C _ 89. 45, F4
        mov     edx, dword [line.1712]                  ; 0C9F _ 8B. 15, 00000204(d)
        mov     eax, dword [pos.1711]                   ; 0CA5 _ A1, 00000208(d)
        sub     esp, 8                                  ; 0CAA _ 83. EC, 08
        push    dword [ebp-0CH]                         ; 0CAD _ FF. 75, F4
        push    7                                       ; 0CB0 _ 6A, 07
        push    edx                                     ; 0CB2 _ 52
        push    eax                                     ; 0CB3 _ 50
        push    dword [ebp-14H]                         ; 0CB4 _ FF. 75, EC
        push    dword [ebp-18H]                         ; 0CB7 _ FF. 75, E8
        call    showString                              ; 0CBA _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0CBF _ 83. C4, 20
        mov     eax, dword [pos.1711]                   ; 0CC2 _ A1, 00000208(d)
        add     eax, 32                                 ; 0CC7 _ 83. C0, 20
        mov     dword [pos.1711], eax                   ; 0CCA _ A3, 00000208(d)
        mov     eax, dword [pos.1711]                   ; 0CCF _ A1, 00000208(d)
        cmp     dword [ebp-14H], eax                    ; 0CD4 _ 39. 45, EC
        jnz     ?_051                                   ; 0CD7 _ 75, 28
        mov     eax, dword [line.1712]                  ; 0CD9 _ A1, 00000204(d)
        cmp     dword [ebp-10H], eax                    ; 0CDE _ 39. 45, F0
        jz      ?_049                                   ; 0CE1 _ 74, 0A
        mov     eax, dword [line.1712]                  ; 0CE3 _ A1, 00000204(d)
        add     eax, 16                                 ; 0CE8 _ 83. C0, 10
        jmp     ?_050                                   ; 0CEB _ EB, 05

?_049:  mov     eax, 0                                  ; 0CED _ B8, 00000000
?_050:  mov     dword [line.1712], eax                  ; 0CF2 _ A3, 00000204(d)
        mov     dword [pos.1711], 0                     ; 0CF7 _ C7. 05, 00000208(d), 00000000
?_051:  nop                                             ; 0D01 _ 90
        leave                                           ; 0D02 _ C9
        ret                                             ; 0D03 _ C3
; showKeyboardInfo End of function

showMouseInfo:; Function begin
        push    ebp                                     ; 0D04 _ 55
        mov     ebp, esp                                ; 0D05 _ 89. E5
        sub     esp, 24                                 ; 0D07 _ 83. EC, 18
        call    io_sti                                  ; 0D0A _ E8, FFFFFFFC(rel)
        mov     eax, dword [bootInfo]                   ; 0D0F _ A1, 00000100(d)
        mov     dword [ebp-0CH], eax                    ; 0D14 _ 89. 45, F4
        mov     byte [ebp-0DH], 0                       ; 0D17 _ C6. 45, F3, 00
        sub     esp, 12                                 ; 0D1B _ 83. EC, 0C
        push    mouseInfo                               ; 0D1E _ 68, 00000120(d)
        call    fifo8_get                               ; 0D23 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0D28 _ 83. C4, 10
        mov     byte [ebp-0DH], al                      ; 0D2B _ 88. 45, F3
        movzx   eax, byte [ebp-0DH]                     ; 0D2E _ 0F B6. 45, F3
        sub     esp, 8                                  ; 0D32 _ 83. EC, 08
        push    eax                                     ; 0D35 _ 50
        push    mouse_move                              ; 0D36 _ 68, 000001E0(d)
        call    mouse_decode                            ; 0D3B _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0D40 _ 83. C4, 10
        test    eax, eax                                ; 0D43 _ 85. C0
        jz      ?_052                                   ; 0D45 _ 74, 2C
        sub     esp, 12                                 ; 0D47 _ 83. EC, 0C
        push    dword [ebp-0CH]                         ; 0D4A _ FF. 75, F4
        call    eraseMouse                              ; 0D4D _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0D52 _ 83. C4, 10
        sub     esp, 12                                 ; 0D55 _ 83. EC, 0C
        push    mouse_move                              ; 0D58 _ 68, 000001E0(d)
        call    computeMousePos                         ; 0D5D _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0D62 _ 83. C4, 10
        sub     esp, 12                                 ; 0D65 _ 83. EC, 0C
        push    dword [ebp-0CH]                         ; 0D68 _ FF. 75, F4
        call    drawMouse                               ; 0D6B _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0D70 _ 83. C4, 10
?_052:  nop                                             ; 0D73 _ 90
        leave                                           ; 0D74 _ C9
        ret                                             ; 0D75 _ C3
; showMouseInfo End of function

mouse_decode:; Function begin
        push    ebp                                     ; 0D76 _ 55
        mov     ebp, esp                                ; 0D77 _ 89. E5
        sub     esp, 4                                  ; 0D79 _ 83. EC, 04
        mov     eax, dword [ebp+0CH]                    ; 0D7C _ 8B. 45, 0C
        mov     byte [ebp-4H], al                       ; 0D7F _ 88. 45, FC
        mov     eax, dword [ebp+8H]                     ; 0D82 _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 0D85 _ 0F B6. 40, 03
        test    al, al                                  ; 0D89 _ 84. C0
        jnz     ?_054                                   ; 0D8B _ 75, 17
        cmp     byte [ebp-4H], -6                       ; 0D8D _ 80. 7D, FC, FA
        jnz     ?_053                                   ; 0D91 _ 75, 07
        mov     eax, dword [ebp+8H]                     ; 0D93 _ 8B. 45, 08
        mov     byte [eax+3H], 1                        ; 0D96 _ C6. 40, 03, 01
?_053:  mov     eax, 1                                  ; 0D9A _ B8, 00000001
        jmp     ?_061                                   ; 0D9F _ E9, 0000010C

?_054:  mov     eax, dword [ebp+8H]                     ; 0DA4 _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 0DA7 _ 0F B6. 40, 03
        cmp     al, 1                                   ; 0DAB _ 3C, 01
        jnz     ?_056                                   ; 0DAD _ 75, 25
        movzx   eax, byte [ebp-4H]                      ; 0DAF _ 0F B6. 45, FC
        or      eax, 37H                                ; 0DB3 _ 83. C8, 37
        cmp     al, 63                                  ; 0DB6 _ 3C, 3F
        jnz     ?_055                                   ; 0DB8 _ 75, 10
        mov     eax, dword [ebp+8H]                     ; 0DBA _ 8B. 45, 08
        movzx   edx, byte [ebp-4H]                      ; 0DBD _ 0F B6. 55, FC
        mov     byte [eax], dl                          ; 0DC1 _ 88. 10
        mov     eax, dword [ebp+8H]                     ; 0DC3 _ 8B. 45, 08
        mov     byte [eax+3H], 2                        ; 0DC6 _ C6. 40, 03, 02
?_055:  mov     eax, 1                                  ; 0DCA _ B8, 00000001
        jmp     ?_061                                   ; 0DCF _ E9, 000000DC

?_056:  mov     eax, dword [ebp+8H]                     ; 0DD4 _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 0DD7 _ 0F B6. 40, 03
        cmp     al, 2                                   ; 0DDB _ 3C, 02
        jnz     ?_057                                   ; 0DDD _ 75, 1B
        mov     eax, dword [ebp+8H]                     ; 0DDF _ 8B. 45, 08
        movzx   edx, byte [ebp-4H]                      ; 0DE2 _ 0F B6. 55, FC
        mov     byte [eax+1H], dl                       ; 0DE6 _ 88. 50, 01
        mov     eax, dword [ebp+8H]                     ; 0DE9 _ 8B. 45, 08
        mov     byte [eax+3H], 3                        ; 0DEC _ C6. 40, 03, 03
        mov     eax, 1                                  ; 0DF0 _ B8, 00000001
        jmp     ?_061                                   ; 0DF5 _ E9, 000000B6

?_057:  mov     eax, dword [ebp+8H]                     ; 0DFA _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 0DFD _ 0F B6. 40, 03
        cmp     al, 3                                   ; 0E01 _ 3C, 03
        jne     ?_060                                   ; 0E03 _ 0F 85, 000000A2
        mov     eax, dword [ebp+8H]                     ; 0E09 _ 8B. 45, 08
        movzx   edx, byte [ebp-4H]                      ; 0E0C _ 0F B6. 55, FC
        mov     byte [eax+2H], dl                       ; 0E10 _ 88. 50, 02
        mov     eax, dword [ebp+8H]                     ; 0E13 _ 8B. 45, 08
        mov     byte [eax+3H], 1                        ; 0E16 _ C6. 40, 03, 01
        mov     eax, dword [ebp+8H]                     ; 0E1A _ 8B. 45, 08
        movzx   eax, byte [eax]                         ; 0E1D _ 0F B6. 00
        movzx   eax, al                                 ; 0E20 _ 0F B6. C0
        and     eax, 07H                                ; 0E23 _ 83. E0, 07
        mov     edx, eax                                ; 0E26 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 0E28 _ 8B. 45, 08
        mov     dword [eax+0CH], edx                    ; 0E2B _ 89. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 0E2E _ 8B. 45, 08
        movzx   eax, byte [eax+1H]                      ; 0E31 _ 0F B6. 40, 01
        movzx   edx, al                                 ; 0E35 _ 0F B6. D0
        mov     eax, dword [ebp+8H]                     ; 0E38 _ 8B. 45, 08
        mov     dword [eax+4H], edx                     ; 0E3B _ 89. 50, 04
        mov     eax, dword [ebp+8H]                     ; 0E3E _ 8B. 45, 08
        movzx   eax, byte [eax+2H]                      ; 0E41 _ 0F B6. 40, 02
        movzx   edx, al                                 ; 0E45 _ 0F B6. D0
        mov     eax, dword [ebp+8H]                     ; 0E48 _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 0E4B _ 89. 50, 08
        mov     eax, dword [ebp+8H]                     ; 0E4E _ 8B. 45, 08
        movzx   eax, byte [eax]                         ; 0E51 _ 0F B6. 00
        movzx   eax, al                                 ; 0E54 _ 0F B6. C0
        and     eax, 10H                                ; 0E57 _ 83. E0, 10
        test    eax, eax                                ; 0E5A _ 85. C0
        jz      ?_058                                   ; 0E5C _ 74, 13
        mov     eax, dword [ebp+8H]                     ; 0E5E _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 0E61 _ 8B. 40, 04
        or      eax, 0FFFFFF00H                         ; 0E64 _ 0D, FFFFFF00
        mov     edx, eax                                ; 0E69 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 0E6B _ 8B. 45, 08
        mov     dword [eax+4H], edx                     ; 0E6E _ 89. 50, 04
?_058:  mov     eax, dword [ebp+8H]                     ; 0E71 _ 8B. 45, 08
        movzx   eax, byte [eax]                         ; 0E74 _ 0F B6. 00
        movzx   eax, al                                 ; 0E77 _ 0F B6. C0
        and     eax, 20H                                ; 0E7A _ 83. E0, 20
        test    eax, eax                                ; 0E7D _ 85. C0
        jz      ?_059                                   ; 0E7F _ 74, 13
        mov     eax, dword [ebp+8H]                     ; 0E81 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 0E84 _ 8B. 40, 08
        or      eax, 0FFFFFF00H                         ; 0E87 _ 0D, FFFFFF00
        mov     edx, eax                                ; 0E8C _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 0E8E _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 0E91 _ 89. 50, 08
?_059:  mov     eax, dword [ebp+8H]                     ; 0E94 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 0E97 _ 8B. 40, 08
        neg     eax                                     ; 0E9A _ F7. D8
        mov     edx, eax                                ; 0E9C _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 0E9E _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 0EA1 _ 89. 50, 08
        mov     eax, 1                                  ; 0EA4 _ B8, 00000001
        jmp     ?_061                                   ; 0EA9 _ EB, 05

?_060:  mov     eax, 0                                  ; 0EAB _ B8, 00000000
?_061:  leave                                           ; 0EB0 _ C9
        ret                                             ; 0EB1 _ C3
; mouse_decode End of function

computeMousePos:; Function begin
        push    ebp                                     ; 0EB2 _ 55
        mov     ebp, esp                                ; 0EB3 _ 89. E5
        sub     esp, 16                                 ; 0EB5 _ 83. EC, 10
        movzx   eax, word [?_068]                       ; 0EB8 _ 0F B7. 05, 00000104(d)
        cwde                                            ; 0EBF _ 98
        mov     dword [ebp-8H], eax                     ; 0EC0 _ 89. 45, F8
        movzx   eax, word [?_069]                       ; 0EC3 _ 0F B7. 05, 00000106(d)
        cwde                                            ; 0ECA _ 98
        mov     dword [ebp-4H], eax                     ; 0ECB _ 89. 45, FC
        mov     eax, dword [ebp+8H]                     ; 0ECE _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 0ED1 _ 8B. 40, 04
        mov     edx, eax                                ; 0ED4 _ 89. C2
        shr     edx, 31                                 ; 0ED6 _ C1. EA, 1F
        add     eax, edx                                ; 0ED9 _ 01. D0
        sar     eax, 1                                  ; 0EDB _ D1. F8
        mov     edx, eax                                ; 0EDD _ 89. C2
        mov     eax, dword [mx]                         ; 0EDF _ A1, 000001F0(d)
        add     eax, edx                                ; 0EE4 _ 01. D0
        mov     dword [mx], eax                         ; 0EE6 _ A3, 000001F0(d)
        mov     eax, dword [ebp+8H]                     ; 0EEB _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 0EEE _ 8B. 40, 08
        mov     edx, eax                                ; 0EF1 _ 89. C2
        shr     edx, 31                                 ; 0EF3 _ C1. EA, 1F
        add     eax, edx                                ; 0EF6 _ 01. D0
        sar     eax, 1                                  ; 0EF8 _ D1. F8
        mov     edx, eax                                ; 0EFA _ 89. C2
        mov     eax, dword [my]                         ; 0EFC _ A1, 000001F4(d)
        add     eax, edx                                ; 0F01 _ 01. D0
        mov     dword [my], eax                         ; 0F03 _ A3, 000001F4(d)
        mov     eax, dword [mx]                         ; 0F08 _ A1, 000001F0(d)
        test    eax, eax                                ; 0F0D _ 85. C0
        jns     ?_062                                   ; 0F0F _ 79, 0A
        mov     dword [mx], 0                           ; 0F11 _ C7. 05, 000001F0(d), 00000000
?_062:  mov     eax, dword [my]                         ; 0F1B _ A1, 000001F4(d)
        test    eax, eax                                ; 0F20 _ 85. C0
        jns     ?_063                                   ; 0F22 _ 79, 0A
        mov     dword [my], 0                           ; 0F24 _ C7. 05, 000001F4(d), 00000000
?_063:  mov     eax, dword [ebp-8H]                     ; 0F2E _ 8B. 45, F8
        lea     edx, [eax-9H]                           ; 0F31 _ 8D. 50, F7
        mov     eax, dword [mx]                         ; 0F34 _ A1, 000001F0(d)
        cmp     edx, eax                                ; 0F39 _ 39. C2
        jge     ?_064                                   ; 0F3B _ 7D, 0B
        mov     eax, dword [ebp-8H]                     ; 0F3D _ 8B. 45, F8
        sub     eax, 9                                  ; 0F40 _ 83. E8, 09
        mov     dword [mx], eax                         ; 0F43 _ A3, 000001F0(d)
?_064:  mov     eax, dword [ebp-4H]                     ; 0F48 _ 8B. 45, FC
        lea     edx, [eax-1H]                           ; 0F4B _ 8D. 50, FF
        mov     eax, dword [my]                         ; 0F4E _ A1, 000001F4(d)
        cmp     edx, eax                                ; 0F53 _ 39. C2
        jge     ?_065                                   ; 0F55 _ 7D, 0B
        mov     eax, dword [ebp-4H]                     ; 0F57 _ 8B. 45, FC
        sub     eax, 1                                  ; 0F5A _ 83. E8, 01
        mov     dword [my], eax                         ; 0F5D _ A3, 000001F4(d)
?_065:  nop                                             ; 0F62 _ 90
        leave                                           ; 0F63 _ C9
        ret                                             ; 0F64 _ C3
; computeMousePos End of function

eraseMouse:; Function begin
        push    ebp                                     ; 0F65 _ 55
        mov     ebp, esp                                ; 0F66 _ 89. E5
        push    edi                                     ; 0F68 _ 57
        push    esi                                     ; 0F69 _ 56
        push    ebx                                     ; 0F6A _ 53
        mov     eax, dword [my]                         ; 0F6B _ A1, 000001F4(d)
        lea     edi, [eax+0FH]                          ; 0F70 _ 8D. 78, 0F
        mov     eax, dword [mx]                         ; 0F73 _ A1, 000001F0(d)
        lea     esi, [eax+0FH]                          ; 0F78 _ 8D. 70, 0F
        mov     ebx, dword [my]                         ; 0F7B _ 8B. 1D, 000001F4(d)
        mov     ecx, dword [mx]                         ; 0F81 _ 8B. 0D, 000001F0(d)
        movzx   eax, word [?_068]                       ; 0F87 _ 0F B7. 05, 00000104(d)
        movsx   edx, ax                                 ; 0F8E _ 0F BF. D0
        mov     eax, dword [bootInfo]                   ; 0F91 _ A1, 00000100(d)
        push    edi                                     ; 0F96 _ 57
        push    esi                                     ; 0F97 _ 56
        push    ebx                                     ; 0F98 _ 53
        push    ecx                                     ; 0F99 _ 51
        push    14                                      ; 0F9A _ 6A, 0E
        push    edx                                     ; 0F9C _ 52
        push    eax                                     ; 0F9D _ 50
        call    boxfill8                                ; 0F9E _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 0FA3 _ 83. C4, 1C
        nop                                             ; 0FA6 _ 90
        lea     esp, [ebp-0CH]                          ; 0FA7 _ 8D. 65, F4
        pop     ebx                                     ; 0FAA _ 5B
        pop     esi                                     ; 0FAB _ 5E
        pop     edi                                     ; 0FAC _ 5F
        pop     ebp                                     ; 0FAD _ 5D
        ret                                             ; 0FAE _ C3
; eraseMouse End of function

drawMouse:; Function begin
        push    ebp                                     ; 0FAF _ 55
        mov     ebp, esp                                ; 0FB0 _ 89. E5
        push    ebx                                     ; 0FB2 _ 53
        mov     ebx, dword [my]                         ; 0FB3 _ 8B. 1D, 000001F4(d)
        mov     ecx, dword [mx]                         ; 0FB9 _ 8B. 0D, 000001F0(d)
        movzx   eax, word [?_068]                       ; 0FBF _ 0F B7. 05, 00000104(d)
        movsx   edx, ax                                 ; 0FC6 _ 0F BF. D0
        mov     eax, dword [bootInfo]                   ; 0FC9 _ A1, 00000100(d)
        push    16                                      ; 0FCE _ 6A, 10
        push    mcursor                                 ; 0FD0 _ 68, 00000000(d)
        push    ebx                                     ; 0FD5 _ 53
        push    ecx                                     ; 0FD6 _ 51
        push    16                                      ; 0FD7 _ 6A, 10
        push    16                                      ; 0FD9 _ 6A, 10
        push    edx                                     ; 0FDB _ 52
        push    eax                                     ; 0FDC _ 50
        call    putblock                                ; 0FDD _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0FE2 _ 83. C4, 20
        nop                                             ; 0FE5 _ 90
        mov     ebx, dword [ebp-4H]                     ; 0FE6 _ 8B. 5D, FC
        leave                                           ; 0FE9 _ C9
        ret                                             ; 0FEA _ C3
; drawMouse End of function

showMemInfo:; Function begin
        push    ebp                                     ; 0FEB _ 55
        mov     ebp, esp                                ; 0FEC _ 89. E5
        sub     esp, 56                                 ; 0FEE _ 83. EC, 38
        mov     dword [ebp-30H], 0                      ; 0FF1 _ C7. 45, D0, 00000000
        mov     dword [ebp-2CH], 0                      ; 0FF8 _ C7. 45, D4, 00000000
        mov     dword [ebp-28H], 112                    ; 0FFF _ C7. 45, D8, 00000070
        mov     dword [ebp-24H], 80                     ; 1006 _ C7. 45, DC, 00000050
        push    100                                     ; 100D _ 6A, 64
        push    dword [ebp+14H]                         ; 100F _ FF. 75, 14
        push    0                                       ; 1012 _ 6A, 00
        push    0                                       ; 1014 _ 6A, 00
        push    14                                      ; 1016 _ 6A, 0E
        push    dword [ebp+14H]                         ; 1018 _ FF. 75, 14
        push    dword [ebp+0CH]                         ; 101B _ FF. 75, 0C
        call    boxfill8                                ; 101E _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 1023 _ 83. C4, 1C
        mov     eax, dword [ebp+18H]                    ; 1026 _ 8B. 45, 18
        movsx   eax, al                                 ; 1029 _ 0F BE. C0
        sub     esp, 8                                  ; 102C _ 83. EC, 08
        push    ?_072                                   ; 102F _ 68, 00000000(d)
        push    eax                                     ; 1034 _ 50
        push    dword [ebp-2CH]                         ; 1035 _ FF. 75, D4
        push    dword [ebp-30H]                         ; 1038 _ FF. 75, D0
        push    dword [ebp+14H]                         ; 103B _ FF. 75, 14
        push    dword [ebp+0CH]                         ; 103E _ FF. 75, 0C
        call    showString                              ; 1041 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1046 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 1049 _ 8B. 45, 10
        sub     esp, 12                                 ; 104C _ 83. EC, 0C
        push    eax                                     ; 104F _ 50
        call    intToHexStr                             ; 1050 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1055 _ 83. C4, 10
        mov     dword [ebp-20H], eax                    ; 1058 _ 89. 45, E0
        mov     eax, dword [ebp+18H]                    ; 105B _ 8B. 45, 18
        movsx   eax, al                                 ; 105E _ 0F BE. C0
        sub     esp, 8                                  ; 1061 _ 83. EC, 08
        push    dword [ebp-20H]                         ; 1064 _ FF. 75, E0
        push    eax                                     ; 1067 _ 50
        push    dword [ebp-2CH]                         ; 1068 _ FF. 75, D4
        push    dword [ebp-28H]                         ; 106B _ FF. 75, D8
        push    dword [ebp+14H]                         ; 106E _ FF. 75, 14
        push    dword [ebp+0CH]                         ; 1071 _ FF. 75, 0C
        call    showString                              ; 1074 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1079 _ 83. C4, 20
        add     dword [ebp-2CH], 16                     ; 107C _ 83. 45, D4, 10
        mov     eax, dword [ebp+18H]                    ; 1080 _ 8B. 45, 18
        movsx   eax, al                                 ; 1083 _ 0F BE. C0
        sub     esp, 8                                  ; 1086 _ 83. EC, 08
        push    ?_073                                   ; 1089 _ 68, 0000000A(d)
        push    eax                                     ; 108E _ 50
        push    dword [ebp-2CH]                         ; 108F _ FF. 75, D4
        push    dword [ebp-30H]                         ; 1092 _ FF. 75, D0
        push    dword [ebp+14H]                         ; 1095 _ FF. 75, 14
        push    dword [ebp+0CH]                         ; 1098 _ FF. 75, 0C
        call    showString                              ; 109B _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 10A0 _ 83. C4, 20
        mov     eax, dword [ebp+8H]                     ; 10A3 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 10A6 _ 8B. 00
        sub     esp, 12                                 ; 10A8 _ 83. EC, 0C
        push    eax                                     ; 10AB _ 50
        call    intToHexStr                             ; 10AC _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 10B1 _ 83. C4, 10
        mov     dword [ebp-1CH], eax                    ; 10B4 _ 89. 45, E4
        mov     eax, dword [ebp+18H]                    ; 10B7 _ 8B. 45, 18
        movsx   eax, al                                 ; 10BA _ 0F BE. C0
        sub     esp, 8                                  ; 10BD _ 83. EC, 08
        push    dword [ebp-1CH]                         ; 10C0 _ FF. 75, E4
        push    eax                                     ; 10C3 _ 50
        push    dword [ebp-2CH]                         ; 10C4 _ FF. 75, D4
        push    dword [ebp-28H]                         ; 10C7 _ FF. 75, D8
        push    dword [ebp+14H]                         ; 10CA _ FF. 75, 14
        push    dword [ebp+0CH]                         ; 10CD _ FF. 75, 0C
        call    showString                              ; 10D0 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 10D5 _ 83. C4, 20
        add     dword [ebp-2CH], 16                     ; 10D8 _ 83. 45, D4, 10
        mov     eax, dword [ebp+18H]                    ; 10DC _ 8B. 45, 18
        movsx   eax, al                                 ; 10DF _ 0F BE. C0
        sub     esp, 8                                  ; 10E2 _ 83. EC, 08
        push    ?_074                                   ; 10E5 _ 68, 00000018(d)
        push    eax                                     ; 10EA _ 50
        push    dword [ebp-2CH]                         ; 10EB _ FF. 75, D4
        push    dword [ebp-30H]                         ; 10EE _ FF. 75, D0
        push    dword [ebp+14H]                         ; 10F1 _ FF. 75, 14
        push    dword [ebp+0CH]                         ; 10F4 _ FF. 75, 0C
        call    showString                              ; 10F7 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 10FC _ 83. C4, 20
        mov     eax, dword [ebp+8H]                     ; 10FF _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 1102 _ 8B. 40, 04
        sub     esp, 12                                 ; 1105 _ 83. EC, 0C
        push    eax                                     ; 1108 _ 50
        call    intToHexStr                             ; 1109 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 110E _ 83. C4, 10
        mov     dword [ebp-18H], eax                    ; 1111 _ 89. 45, E8
        mov     eax, dword [ebp+18H]                    ; 1114 _ 8B. 45, 18
        movsx   eax, al                                 ; 1117 _ 0F BE. C0
        sub     esp, 8                                  ; 111A _ 83. EC, 08
        push    dword [ebp-18H]                         ; 111D _ FF. 75, E8
        push    eax                                     ; 1120 _ 50
        push    dword [ebp-2CH]                         ; 1121 _ FF. 75, D4
        push    dword [ebp-28H]                         ; 1124 _ FF. 75, D8
        push    dword [ebp+14H]                         ; 1127 _ FF. 75, 14
        push    dword [ebp+0CH]                         ; 112A _ FF. 75, 0C
        call    showString                              ; 112D _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1132 _ 83. C4, 20
        add     dword [ebp-2CH], 16                     ; 1135 _ 83. 45, D4, 10
        mov     eax, dword [ebp+18H]                    ; 1139 _ 8B. 45, 18
        movsx   eax, al                                 ; 113C _ 0F BE. C0
        sub     esp, 8                                  ; 113F _ 83. EC, 08
        push    ?_075                                   ; 1142 _ 68, 00000027(d)
        push    eax                                     ; 1147 _ 50
        push    dword [ebp-2CH]                         ; 1148 _ FF. 75, D4
        push    dword [ebp-30H]                         ; 114B _ FF. 75, D0
        push    dword [ebp+14H]                         ; 114E _ FF. 75, 14
        push    dword [ebp+0CH]                         ; 1151 _ FF. 75, 0C
        call    showString                              ; 1154 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1159 _ 83. C4, 20
        mov     eax, dword [ebp+8H]                     ; 115C _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 115F _ 8B. 40, 08
        sub     esp, 12                                 ; 1162 _ 83. EC, 0C
        push    eax                                     ; 1165 _ 50
        call    intToHexStr                             ; 1166 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 116B _ 83. C4, 10
        mov     dword [ebp-14H], eax                    ; 116E _ 89. 45, EC
        mov     eax, dword [ebp+18H]                    ; 1171 _ 8B. 45, 18
        movsx   eax, al                                 ; 1174 _ 0F BE. C0
        sub     esp, 8                                  ; 1177 _ 83. EC, 08
        push    dword [ebp-14H]                         ; 117A _ FF. 75, EC
        push    eax                                     ; 117D _ 50
        push    dword [ebp-2CH]                         ; 117E _ FF. 75, D4
        push    dword [ebp-28H]                         ; 1181 _ FF. 75, D8
        push    dword [ebp+14H]                         ; 1184 _ FF. 75, 14
        push    dword [ebp+0CH]                         ; 1187 _ FF. 75, 0C
        call    showString                              ; 118A _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 118F _ 83. C4, 20
        add     dword [ebp-2CH], 16                     ; 1192 _ 83. 45, D4, 10
        mov     eax, dword [ebp+18H]                    ; 1196 _ 8B. 45, 18
        movsx   eax, al                                 ; 1199 _ 0F BE. C0
        sub     esp, 8                                  ; 119C _ 83. EC, 08
        push    ?_076                                   ; 119F _ 68, 00000033(d)
        push    eax                                     ; 11A4 _ 50
        push    dword [ebp-2CH]                         ; 11A5 _ FF. 75, D4
        push    dword [ebp-30H]                         ; 11A8 _ FF. 75, D0
        push    dword [ebp+14H]                         ; 11AB _ FF. 75, 14
        push    dword [ebp+0CH]                         ; 11AE _ FF. 75, 0C
        call    showString                              ; 11B1 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 11B6 _ 83. C4, 20
        mov     eax, dword [ebp+8H]                     ; 11B9 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 11BC _ 8B. 40, 0C
        sub     esp, 12                                 ; 11BF _ 83. EC, 0C
        push    eax                                     ; 11C2 _ 50
        call    intToHexStr                             ; 11C3 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 11C8 _ 83. C4, 10
        mov     dword [ebp-10H], eax                    ; 11CB _ 89. 45, F0
        mov     eax, dword [ebp+18H]                    ; 11CE _ 8B. 45, 18
        movsx   eax, al                                 ; 11D1 _ 0F BE. C0
        sub     esp, 8                                  ; 11D4 _ 83. EC, 08
        push    dword [ebp-10H]                         ; 11D7 _ FF. 75, F0
        push    eax                                     ; 11DA _ 50
        push    dword [ebp-2CH]                         ; 11DB _ FF. 75, D4
        push    dword [ebp-28H]                         ; 11DE _ FF. 75, D8
        push    dword [ebp+14H]                         ; 11E1 _ FF. 75, 14
        push    dword [ebp+0CH]                         ; 11E4 _ FF. 75, 0C
        call    showString                              ; 11E7 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 11EC _ 83. C4, 20
        add     dword [ebp-2CH], 16                     ; 11EF _ 83. 45, D4, 10
        mov     eax, dword [ebp+18H]                    ; 11F3 _ 8B. 45, 18
        movsx   eax, al                                 ; 11F6 _ 0F BE. C0
        sub     esp, 8                                  ; 11F9 _ 83. EC, 08
        push    ?_077                                   ; 11FC _ 68, 00000040(d)
        push    eax                                     ; 1201 _ 50
        push    dword [ebp-2CH]                         ; 1202 _ FF. 75, D4
        push    dword [ebp-30H]                         ; 1205 _ FF. 75, D0
        push    dword [ebp+14H]                         ; 1208 _ FF. 75, 14
        push    dword [ebp+0CH]                         ; 120B _ FF. 75, 0C
        call    showString                              ; 120E _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1213 _ 83. C4, 20
        mov     eax, dword [ebp+8H]                     ; 1216 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 1219 _ 8B. 40, 10
        sub     esp, 12                                 ; 121C _ 83. EC, 0C
        push    eax                                     ; 121F _ 50
        call    intToHexStr                             ; 1220 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1225 _ 83. C4, 10
        mov     dword [ebp-0CH], eax                    ; 1228 _ 89. 45, F4
        mov     eax, dword [ebp+18H]                    ; 122B _ 8B. 45, 18
        movsx   eax, al                                 ; 122E _ 0F BE. C0
        sub     esp, 8                                  ; 1231 _ 83. EC, 08
        push    dword [ebp-0CH]                         ; 1234 _ FF. 75, F4
        push    eax                                     ; 1237 _ 50
        push    dword [ebp-2CH]                         ; 1238 _ FF. 75, D4
        push    dword [ebp-28H]                         ; 123B _ FF. 75, D8
        push    dword [ebp+14H]                         ; 123E _ FF. 75, 14
        push    dword [ebp+0CH]                         ; 1241 _ FF. 75, 0C
        call    showString                              ; 1244 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1249 _ 83. C4, 20
        add     dword [ebp-2CH], 16                     ; 124C _ 83. 45, D4, 10
        nop                                             ; 1250 _ 90
        leave                                           ; 1251 _ C9
        ret                                             ; 1252 _ C3
; showMemInfo End of function



fontA:                                                  ; oword
        db 00H, 18H, 18H, 18H, 18H, 24H, 24H, 24H       ; 0000 _ .....$$$
        db 24H, 7EH, 42H, 42H, 42H, 0E7H, 00H, 00H      ; 0008 _ $~BBB...

keyVal:                                                 ; byte
        db 30H, 78H                                     ; 0010 _ 0x

?_066:  db 00H                                          ; 0012 _ .

?_067:  db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0013 _ ........
        db 00H, 00H, 00H, 00H, 00H                      ; 001B _ .....

table_rgb.1574:                                         ; byte
        db 00H, 00H, 00H, 0FFH, 00H, 00H, 00H, 0FFH     ; 0020 _ ........
        db 00H, 0FFH, 0FFH, 00H, 00H, 00H, 0FFH, 0FFH   ; 0028 _ ........
        db 00H, 0FFH, 00H, 0FFH, 0FFH, 0FFH, 0FFH, 0FFH ; 0030 _ ........
        db 0C6H, 0C6H, 0C6H, 84H, 00H, 00H, 00H, 84H    ; 0038 _ ........
        db 00H, 84H, 84H, 00H, 00H, 00H, 84H, 84H       ; 0040 _ ........
        db 00H, 84H, 00H, 78H, 0D7H, 84H, 84H, 84H      ; 0048 _ ...x....
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0050 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0058 _ ........

cursor.1622:                                            ; byte
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

str.1665:                                               ; byte
        resb    1                                       ; 01F8

?_070:  resb    9                                       ; 01F9

?_071:  resb    2                                       ; 0202

line.1712:                                              ; dword
        resd    1                                       ; 0204

pos.1711: resd  1                                       ; 0208



?_072:                                                  ; byte
        db 50H, 61H, 67H, 65H, 20H, 69H, 73H, 3AH       ; 0000 _ Page is:
        db 20H, 00H                                     ; 0008 _  .

?_073:                                                  ; byte
        db 42H, 61H, 73H, 65H, 41H, 64H, 64H, 72H       ; 000A _ BaseAddr
        db 4CH, 6FH, 77H, 3AH, 20H, 00H                 ; 0012 _ Low: .

?_074:                                                  ; byte
        db 42H, 61H, 73H, 65H, 41H, 64H, 64H, 72H       ; 0018 _ BaseAddr
        db 48H, 69H, 67H, 68H, 3AH, 20H, 00H            ; 0020 _ High: .

?_075:                                                  ; byte
        db 4CH, 65H, 6EH, 67H, 74H, 68H, 4CH, 6FH       ; 0027 _ LengthLo
        db 77H, 3AH, 20H, 00H                           ; 002F _ w: .

?_076:                                                  ; byte
        db 4CH, 65H, 6EH, 67H, 74H, 68H, 48H, 69H       ; 0033 _ LengthHi
        db 67H, 68H, 3AH, 20H, 00H                      ; 003B _ gh: .

?_077:                                                  ; byte
        db 54H, 79H, 70H, 65H, 3AH, 20H, 00H            ; 0040 _ Type: .


