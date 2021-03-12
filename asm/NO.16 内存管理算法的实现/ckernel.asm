; Disassembly of file: ckernel.o
; Thu Mar 11 18:20:09 2021
; Mode: 32 bits
; Syntax: YASM/NASM
; Instruction set: 80386






CMain:  ; Function begin
        push    ebp                                     ; 0000 _ 55
        mov     ebp, esp                                ; 0001 _ 89. E5
        push    ebx                                     ; 0003 _ 53
        sub     esp, 52                                 ; 0004 _ 83. EC, 34
        sub     esp, 12                                 ; 0007 _ 83. EC, 0C
        push    bootInfo                                ; 000A _ 68, 00000100(d)
        call    initBootInfo                            ; 000F _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0014 _ 83. C4, 10
        mov     eax, dword [bootInfo]                   ; 0017 _ A1, 00000100(d)
        mov     dword [ebp-28H], eax                    ; 001C _ 89. 45, D8
        movzx   eax, word [?_095]                       ; 001F _ 0F B7. 05, 00000104(d)
        cwde                                            ; 0026 _ 98
        mov     dword [ebp-24H], eax                    ; 0027 _ 89. 45, DC
        movzx   eax, word [?_096]                       ; 002A _ 0F B7. 05, 00000106(d)
        cwde                                            ; 0031 _ 98
        mov     dword [ebp-20H], eax                    ; 0032 _ 89. 45, E0
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
        mov     dword [ebp-1CH], eax                    ; 009C _ 89. 45, E4
        call    get_memory_block_count                  ; 009F _ E8, FFFFFFFC(rel)
        mov     dword [ebp-18H], eax                    ; 00A4 _ 89. 45, E8
        mov     eax, dword [ebp-18H]                    ; 00A7 _ 8B. 45, E8
        sub     esp, 12                                 ; 00AA _ 83. EC, 0C
        push    eax                                     ; 00AD _ 50
        call    intToHexStr                             ; 00AE _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 00B3 _ 83. C4, 10
        mov     dword [ebp-14H], eax                    ; 00B6 _ 89. 45, EC
        mov     eax, dword [memman]                     ; 00B9 _ A1, 00000018(d)
        sub     esp, 12                                 ; 00BE _ 83. EC, 0C
        push    eax                                     ; 00C1 _ 50
        call    memman_init                             ; 00C2 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 00C7 _ 83. C4, 10
        mov     eax, dword [memman]                     ; 00CA _ A1, 00000018(d)
        sub     esp, 4                                  ; 00CF _ 83. EC, 04
        push    1072594944                              ; 00D2 _ 68, 3FEE8000
        push    1081344                                 ; 00D7 _ 68, 00108000
        push    eax                                     ; 00DC _ 50
        call    memman_free                             ; 00DD _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 00E2 _ 83. C4, 10
        mov     eax, dword [memman]                     ; 00E5 _ A1, 00000018(d)
        sub     esp, 12                                 ; 00EA _ 83. EC, 0C
        push    eax                                     ; 00ED _ 50
        call    memman_total                            ; 00EE _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 00F3 _ 83. C4, 10
        shr     eax, 20                                 ; 00F6 _ C1. E8, 14
        mov     dword [ebp-10H], eax                    ; 00F9 _ 89. 45, F0
        mov     eax, dword [ebp-10H]                    ; 00FC _ 8B. 45, F0
        sub     esp, 12                                 ; 00FF _ 83. EC, 0C
        push    eax                                     ; 0102 _ 50
        call    intToHexStr                             ; 0103 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0108 _ 83. C4, 10
        mov     dword [ebp-0CH], eax                    ; 010B _ 89. 45, F4
        sub     esp, 8                                  ; 010E _ 83. EC, 08
        push    ?_085                                   ; 0111 _ 68, 00000000(d)
        push    3                                       ; 0116 _ 6A, 03
        push    0                                       ; 0118 _ 6A, 00
        push    0                                       ; 011A _ 6A, 00
        push    dword [ebp-24H]                         ; 011C _ FF. 75, DC
        push    dword [ebp-28H]                         ; 011F _ FF. 75, D8
        call    showString                              ; 0122 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0127 _ 83. C4, 20
        sub     esp, 8                                  ; 012A _ 83. EC, 08
        push    dword [ebp-0CH]                         ; 012D _ FF. 75, F4
        push    3                                       ; 0130 _ 6A, 03
        push    0                                       ; 0132 _ 6A, 00
        push    152                                     ; 0134 _ 68, 00000098
        push    dword [ebp-24H]                         ; 0139 _ FF. 75, DC
        push    dword [ebp-28H]                         ; 013C _ FF. 75, D8
        call    showString                              ; 013F _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0144 _ 83. C4, 20
        sub     esp, 8                                  ; 0147 _ 83. EC, 08
        push    ?_086                                   ; 014A _ 68, 00000014(d)
        push    3                                       ; 014F _ 6A, 03
        push    0                                       ; 0151 _ 6A, 00
        push    240                                     ; 0153 _ 68, 000000F0
        push    dword [ebp-24H]                         ; 0158 _ FF. 75, DC
        push    dword [ebp-28H]                         ; 015B _ FF. 75, D8
        call    showString                              ; 015E _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0163 _ 83. C4, 20
        mov     dword [ebp-2CH], 0                      ; 0166 _ C7. 45, D4, 00000000
        mov     byte [ebp-2DH], 0                       ; 016D _ C6. 45, D3, 00
?_001:  call    io_cli                                  ; 0171 _ E8, FFFFFFFC(rel)
        sub     esp, 12                                 ; 0176 _ 83. EC, 0C
        push    keyInfo                                 ; 0179 _ 68, 00000108(d)
        call    fifo8_status                            ; 017E _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0183 _ 83. C4, 10
        mov     ebx, eax                                ; 0186 _ 89. C3
        sub     esp, 12                                 ; 0188 _ 83. EC, 0C
        push    mouseInfo                               ; 018B _ 68, 00000120(d)
        call    fifo8_status                            ; 0190 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0195 _ 83. C4, 10
        add     eax, ebx                                ; 0198 _ 01. D8
        test    eax, eax                                ; 019A _ 85. C0
        jnz     ?_002                                   ; 019C _ 75, 07
        call    io_stihlt                               ; 019E _ E8, FFFFFFFC(rel)
        jmp     ?_001                                   ; 01A3 _ EB, CC

?_002:  sub     esp, 12                                 ; 01A5 _ 83. EC, 0C
        push    keyInfo                                 ; 01A8 _ 68, 00000108(d)
        call    fifo8_status                            ; 01AD _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 01B2 _ 83. C4, 10
        test    eax, eax                                ; 01B5 _ 85. C0
        jz      ?_003                                   ; 01B7 _ 74, 65
        call    io_sti                                  ; 01B9 _ E8, FFFFFFFC(rel)
        sub     esp, 12                                 ; 01BE _ 83. EC, 0C
        push    keyInfo                                 ; 01C1 _ 68, 00000108(d)
        call    fifo8_get                               ; 01C6 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 01CB _ 83. C4, 10
        mov     byte [ebp-2DH], al                      ; 01CE _ 88. 45, D3
        cmp     byte [ebp-2DH], 28                      ; 01D1 _ 80. 7D, D3, 1C
        jnz     ?_001                                   ; 01D5 _ 75, 9A
        mov     edx, dword [ebp-2CH]                    ; 01D7 _ 8B. 55, D4
        mov     eax, edx                                ; 01DA _ 89. D0
        shl     eax, 2                                  ; 01DC _ C1. E0, 02
        add     eax, edx                                ; 01DF _ 01. D0
        shl     eax, 2                                  ; 01E1 _ C1. E0, 02
        mov     edx, eax                                ; 01E4 _ 89. C2
        mov     eax, dword [ebp-1CH]                    ; 01E6 _ 8B. 45, E4
        add     eax, edx                                ; 01E9 _ 01. D0
        sub     esp, 12                                 ; 01EB _ 83. EC, 0C
        push    7                                       ; 01EE _ 6A, 07
        push    dword [ebp-24H]                         ; 01F0 _ FF. 75, DC
        push    dword [ebp-2CH]                         ; 01F3 _ FF. 75, D4
        push    dword [ebp-28H]                         ; 01F6 _ FF. 75, D8
        push    eax                                     ; 01F9 _ 50
        call    showMemInfo                             ; 01FA _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 01FF _ 83. C4, 20
        add     dword [ebp-2CH], 1                      ; 0202 _ 83. 45, D4, 01
        mov     eax, dword [ebp-2CH]                    ; 0206 _ 8B. 45, D4
        cmp     eax, dword [ebp-18H]                    ; 0209 _ 3B. 45, E8
        jl      ?_001                                   ; 020C _ 0F 8C, FFFFFF5F
        mov     dword [ebp-2CH], 0                      ; 0212 _ C7. 45, D4, 00000000
        jmp     ?_001                                   ; 0219 _ E9, FFFFFF53

?_003:  sub     esp, 12                                 ; 021E _ 83. EC, 0C
        push    mouseInfo                               ; 0221 _ 68, 00000120(d)
        call    fifo8_status                            ; 0226 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 022B _ 83. C4, 10
        test    eax, eax                                ; 022E _ 85. C0
        je      ?_001                                   ; 0230 _ 0F 84, FFFFFF3B
        call    showMouseInfo                           ; 0236 _ E8, FFFFFFFC(rel)
        jmp     ?_001                                   ; 023B _ E9, FFFFFF31
; CMain End of function

initBootInfo:; Function begin
        push    ebp                                     ; 0240 _ 55
        mov     ebp, esp                                ; 0241 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 0243 _ 8B. 45, 08
        mov     dword [eax], 655360                     ; 0246 _ C7. 00, 000A0000
        mov     eax, dword [ebp+8H]                     ; 024C _ 8B. 45, 08
; Note: Length-changing prefix causes delay on Intel processors
        mov     word [eax+4H], 320                      ; 024F _ 66: C7. 40, 04, 0140
        mov     eax, dword [ebp+8H]                     ; 0255 _ 8B. 45, 08
; Note: Length-changing prefix causes delay on Intel processors
        mov     word [eax+6H], 200                      ; 0258 _ 66: C7. 40, 06, 00C8
        nop                                             ; 025E _ 90
        pop     ebp                                     ; 025F _ 5D
        ret                                             ; 0260 _ C3
; initBootInfo End of function

showString:; Function begin
        push    ebp                                     ; 0261 _ 55
        mov     ebp, esp                                ; 0262 _ 89. E5
        sub     esp, 24                                 ; 0264 _ 83. EC, 18
        mov     eax, dword [ebp+18H]                    ; 0267 _ 8B. 45, 18
        mov     byte [ebp-0CH], al                      ; 026A _ 88. 45, F4
        jmp     ?_005                                   ; 026D _ EB, 37

?_004:  mov     eax, dword [ebp+1CH]                    ; 026F _ 8B. 45, 1C
        movzx   eax, byte [eax]                         ; 0272 _ 0F B6. 00
        movzx   eax, al                                 ; 0275 _ 0F B6. C0
        shl     eax, 4                                  ; 0278 _ C1. E0, 04
        lea     edx, [systemFont+eax]                   ; 027B _ 8D. 90, 00000000(d)
        movsx   eax, byte [ebp-0CH]                     ; 0281 _ 0F BE. 45, F4
        sub     esp, 8                                  ; 0285 _ 83. EC, 08
        push    edx                                     ; 0288 _ 52
        push    eax                                     ; 0289 _ 50
        push    dword [ebp+14H]                         ; 028A _ FF. 75, 14
        push    dword [ebp+10H]                         ; 028D _ FF. 75, 10
        push    dword [ebp+0CH]                         ; 0290 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 0293 _ FF. 75, 08
        call    showFont8                               ; 0296 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 029B _ 83. C4, 20
        add     dword [ebp+10H], 8                      ; 029E _ 83. 45, 10, 08
        add     dword [ebp+1CH], 1                      ; 02A2 _ 83. 45, 1C, 01
?_005:  mov     eax, dword [ebp+1CH]                    ; 02A6 _ 8B. 45, 1C
        movzx   eax, byte [eax]                         ; 02A9 _ 0F B6. 00
        test    al, al                                  ; 02AC _ 84. C0
        jnz     ?_004                                   ; 02AE _ 75, BF
        nop                                             ; 02B0 _ 90
        leave                                           ; 02B1 _ C9
        ret                                             ; 02B2 _ C3
; showString End of function

init_palette:; Function begin
        push    ebp                                     ; 02B3 _ 55
        mov     ebp, esp                                ; 02B4 _ 89. E5
        push    ebx                                     ; 02B6 _ 53
        sub     esp, 20                                 ; 02B7 _ 83. EC, 14
        mov     eax, dword [bootInfo]                   ; 02BA _ A1, 00000100(d)
        mov     dword [ebp-14H], eax                    ; 02BF _ 89. 45, EC
        movzx   eax, word [?_095]                       ; 02C2 _ 0F B7. 05, 00000104(d)
        cwde                                            ; 02C9 _ 98
        mov     dword [ebp-10H], eax                    ; 02CA _ 89. 45, F0
        movzx   eax, word [?_096]                       ; 02CD _ 0F B7. 05, 00000106(d)
        cwde                                            ; 02D4 _ 98
        mov     dword [ebp-0CH], eax                    ; 02D5 _ 89. 45, F4
        sub     esp, 4                                  ; 02D8 _ 83. EC, 04
        push    table_rgb.1598                          ; 02DB _ 68, 00000020(d)
        push    15                                      ; 02E0 _ 6A, 0F
        push    0                                       ; 02E2 _ 6A, 00
        call    set_palette                             ; 02E4 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 02E9 _ 83. C4, 10
        mov     eax, dword [ebp-0CH]                    ; 02EC _ 8B. 45, F4
        lea     edx, [eax-1DH]                          ; 02EF _ 8D. 50, E3
        mov     eax, dword [ebp-10H]                    ; 02F2 _ 8B. 45, F0
        sub     eax, 1                                  ; 02F5 _ 83. E8, 01
        sub     esp, 4                                  ; 02F8 _ 83. EC, 04
        push    edx                                     ; 02FB _ 52
        push    eax                                     ; 02FC _ 50
        push    0                                       ; 02FD _ 6A, 00
        push    0                                       ; 02FF _ 6A, 00
        push    14                                      ; 0301 _ 6A, 0E
        push    dword [ebp-10H]                         ; 0303 _ FF. 75, F0
        push    dword [ebp-14H]                         ; 0306 _ FF. 75, EC
        call    boxfill8                                ; 0309 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 030E _ 83. C4, 20
        mov     eax, dword [ebp-0CH]                    ; 0311 _ 8B. 45, F4
        lea     ecx, [eax-1CH]                          ; 0314 _ 8D. 48, E4
        mov     eax, dword [ebp-10H]                    ; 0317 _ 8B. 45, F0
        lea     edx, [eax-1H]                           ; 031A _ 8D. 50, FF
        mov     eax, dword [ebp-0CH]                    ; 031D _ 8B. 45, F4
        sub     eax, 28                                 ; 0320 _ 83. E8, 1C
        sub     esp, 4                                  ; 0323 _ 83. EC, 04
        push    ecx                                     ; 0326 _ 51
        push    edx                                     ; 0327 _ 52
        push    eax                                     ; 0328 _ 50
        push    0                                       ; 0329 _ 6A, 00
        push    8                                       ; 032B _ 6A, 08
        push    dword [ebp-10H]                         ; 032D _ FF. 75, F0
        push    dword [ebp-14H]                         ; 0330 _ FF. 75, EC
        call    boxfill8                                ; 0333 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0338 _ 83. C4, 20
        mov     eax, dword [ebp-0CH]                    ; 033B _ 8B. 45, F4
        lea     ecx, [eax-1BH]                          ; 033E _ 8D. 48, E5
        mov     eax, dword [ebp-10H]                    ; 0341 _ 8B. 45, F0
        lea     edx, [eax-1H]                           ; 0344 _ 8D. 50, FF
        mov     eax, dword [ebp-0CH]                    ; 0347 _ 8B. 45, F4
        sub     eax, 27                                 ; 034A _ 83. E8, 1B
        sub     esp, 4                                  ; 034D _ 83. EC, 04
        push    ecx                                     ; 0350 _ 51
        push    edx                                     ; 0351 _ 52
        push    eax                                     ; 0352 _ 50
        push    0                                       ; 0353 _ 6A, 00
        push    7                                       ; 0355 _ 6A, 07
        push    dword [ebp-10H]                         ; 0357 _ FF. 75, F0
        push    dword [ebp-14H]                         ; 035A _ FF. 75, EC
        call    boxfill8                                ; 035D _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0362 _ 83. C4, 20
        mov     eax, dword [ebp-0CH]                    ; 0365 _ 8B. 45, F4
        lea     ecx, [eax-1H]                           ; 0368 _ 8D. 48, FF
        mov     eax, dword [ebp-10H]                    ; 036B _ 8B. 45, F0
        lea     edx, [eax-1H]                           ; 036E _ 8D. 50, FF
        mov     eax, dword [ebp-0CH]                    ; 0371 _ 8B. 45, F4
        sub     eax, 26                                 ; 0374 _ 83. E8, 1A
        sub     esp, 4                                  ; 0377 _ 83. EC, 04
        push    ecx                                     ; 037A _ 51
        push    edx                                     ; 037B _ 52
        push    eax                                     ; 037C _ 50
        push    0                                       ; 037D _ 6A, 00
        push    8                                       ; 037F _ 6A, 08
        push    dword [ebp-10H]                         ; 0381 _ FF. 75, F0
        push    dword [ebp-14H]                         ; 0384 _ FF. 75, EC
        call    boxfill8                                ; 0387 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 038C _ 83. C4, 20
        mov     eax, dword [ebp-0CH]                    ; 038F _ 8B. 45, F4
        lea     edx, [eax-18H]                          ; 0392 _ 8D. 50, E8
        mov     eax, dword [ebp-0CH]                    ; 0395 _ 8B. 45, F4
        sub     eax, 24                                 ; 0398 _ 83. E8, 18
        sub     esp, 4                                  ; 039B _ 83. EC, 04
        push    edx                                     ; 039E _ 52
        push    59                                      ; 039F _ 6A, 3B
        push    eax                                     ; 03A1 _ 50
        push    3                                       ; 03A2 _ 6A, 03
        push    7                                       ; 03A4 _ 6A, 07
        push    dword [ebp-10H]                         ; 03A6 _ FF. 75, F0
        push    dword [ebp-14H]                         ; 03A9 _ FF. 75, EC
        call    boxfill8                                ; 03AC _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 03B1 _ 83. C4, 20
        mov     eax, dword [ebp-0CH]                    ; 03B4 _ 8B. 45, F4
        lea     edx, [eax-4H]                           ; 03B7 _ 8D. 50, FC
        mov     eax, dword [ebp-0CH]                    ; 03BA _ 8B. 45, F4
        sub     eax, 24                                 ; 03BD _ 83. E8, 18
        sub     esp, 4                                  ; 03C0 _ 83. EC, 04
        push    edx                                     ; 03C3 _ 52
        push    2                                       ; 03C4 _ 6A, 02
        push    eax                                     ; 03C6 _ 50
        push    2                                       ; 03C7 _ 6A, 02
        push    7                                       ; 03C9 _ 6A, 07
        push    dword [ebp-10H]                         ; 03CB _ FF. 75, F0
        push    dword [ebp-14H]                         ; 03CE _ FF. 75, EC
        call    boxfill8                                ; 03D1 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 03D6 _ 83. C4, 20
        mov     eax, dword [ebp-0CH]                    ; 03D9 _ 8B. 45, F4
        lea     edx, [eax-4H]                           ; 03DC _ 8D. 50, FC
        mov     eax, dword [ebp-0CH]                    ; 03DF _ 8B. 45, F4
        sub     eax, 4                                  ; 03E2 _ 83. E8, 04
        sub     esp, 4                                  ; 03E5 _ 83. EC, 04
        push    edx                                     ; 03E8 _ 52
        push    59                                      ; 03E9 _ 6A, 3B
        push    eax                                     ; 03EB _ 50
        push    3                                       ; 03EC _ 6A, 03
        push    15                                      ; 03EE _ 6A, 0F
        push    dword [ebp-10H]                         ; 03F0 _ FF. 75, F0
        push    dword [ebp-14H]                         ; 03F3 _ FF. 75, EC
        call    boxfill8                                ; 03F6 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 03FB _ 83. C4, 20
        mov     eax, dword [ebp-0CH]                    ; 03FE _ 8B. 45, F4
        lea     edx, [eax-5H]                           ; 0401 _ 8D. 50, FB
        mov     eax, dword [ebp-0CH]                    ; 0404 _ 8B. 45, F4
        sub     eax, 23                                 ; 0407 _ 83. E8, 17
        sub     esp, 4                                  ; 040A _ 83. EC, 04
        push    edx                                     ; 040D _ 52
        push    59                                      ; 040E _ 6A, 3B
        push    eax                                     ; 0410 _ 50
        push    59                                      ; 0411 _ 6A, 3B
        push    15                                      ; 0413 _ 6A, 0F
        push    dword [ebp-10H]                         ; 0415 _ FF. 75, F0
        push    dword [ebp-14H]                         ; 0418 _ FF. 75, EC
        call    boxfill8                                ; 041B _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0420 _ 83. C4, 20
        mov     eax, dword [ebp-0CH]                    ; 0423 _ 8B. 45, F4
        lea     edx, [eax-3H]                           ; 0426 _ 8D. 50, FD
        mov     eax, dword [ebp-0CH]                    ; 0429 _ 8B. 45, F4
        sub     eax, 3                                  ; 042C _ 83. E8, 03
        sub     esp, 4                                  ; 042F _ 83. EC, 04
        push    edx                                     ; 0432 _ 52
        push    59                                      ; 0433 _ 6A, 3B
        push    eax                                     ; 0435 _ 50
        push    2                                       ; 0436 _ 6A, 02
        push    0                                       ; 0438 _ 6A, 00
        push    dword [ebp-10H]                         ; 043A _ FF. 75, F0
        push    dword [ebp-14H]                         ; 043D _ FF. 75, EC
        call    boxfill8                                ; 0440 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0445 _ 83. C4, 20
        mov     eax, dword [ebp-0CH]                    ; 0448 _ 8B. 45, F4
        lea     edx, [eax-3H]                           ; 044B _ 8D. 50, FD
        mov     eax, dword [ebp-0CH]                    ; 044E _ 8B. 45, F4
        sub     eax, 24                                 ; 0451 _ 83. E8, 18
        sub     esp, 4                                  ; 0454 _ 83. EC, 04
        push    edx                                     ; 0457 _ 52
        push    60                                      ; 0458 _ 6A, 3C
        push    eax                                     ; 045A _ 50
        push    60                                      ; 045B _ 6A, 3C
        push    0                                       ; 045D _ 6A, 00
        push    dword [ebp-10H]                         ; 045F _ FF. 75, F0
        push    dword [ebp-14H]                         ; 0462 _ FF. 75, EC
        call    boxfill8                                ; 0465 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 046A _ 83. C4, 20
        mov     eax, dword [ebp-0CH]                    ; 046D _ 8B. 45, F4
        lea     ebx, [eax-18H]                          ; 0470 _ 8D. 58, E8
        mov     eax, dword [ebp-10H]                    ; 0473 _ 8B. 45, F0
        lea     ecx, [eax-4H]                           ; 0476 _ 8D. 48, FC
        mov     eax, dword [ebp-0CH]                    ; 0479 _ 8B. 45, F4
        lea     edx, [eax-18H]                          ; 047C _ 8D. 50, E8
        mov     eax, dword [ebp-10H]                    ; 047F _ 8B. 45, F0
        sub     eax, 47                                 ; 0482 _ 83. E8, 2F
        sub     esp, 4                                  ; 0485 _ 83. EC, 04
        push    ebx                                     ; 0488 _ 53
        push    ecx                                     ; 0489 _ 51
        push    edx                                     ; 048A _ 52
        push    eax                                     ; 048B _ 50
        push    15                                      ; 048C _ 6A, 0F
        push    dword [ebp-10H]                         ; 048E _ FF. 75, F0
        push    dword [ebp-14H]                         ; 0491 _ FF. 75, EC
        call    boxfill8                                ; 0494 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0499 _ 83. C4, 20
        mov     eax, dword [ebp-0CH]                    ; 049C _ 8B. 45, F4
        lea     ebx, [eax-4H]                           ; 049F _ 8D. 58, FC
        mov     eax, dword [ebp-10H]                    ; 04A2 _ 8B. 45, F0
        lea     ecx, [eax-2FH]                          ; 04A5 _ 8D. 48, D1
        mov     eax, dword [ebp-0CH]                    ; 04A8 _ 8B. 45, F4
        lea     edx, [eax-17H]                          ; 04AB _ 8D. 50, E9
        mov     eax, dword [ebp-10H]                    ; 04AE _ 8B. 45, F0
        sub     eax, 47                                 ; 04B1 _ 83. E8, 2F
        sub     esp, 4                                  ; 04B4 _ 83. EC, 04
        push    ebx                                     ; 04B7 _ 53
        push    ecx                                     ; 04B8 _ 51
        push    edx                                     ; 04B9 _ 52
        push    eax                                     ; 04BA _ 50
        push    15                                      ; 04BB _ 6A, 0F
        push    dword [ebp-10H]                         ; 04BD _ FF. 75, F0
        push    dword [ebp-14H]                         ; 04C0 _ FF. 75, EC
        call    boxfill8                                ; 04C3 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 04C8 _ 83. C4, 20
        mov     eax, dword [ebp-0CH]                    ; 04CB _ 8B. 45, F4
        lea     ebx, [eax-3H]                           ; 04CE _ 8D. 58, FD
        mov     eax, dword [ebp-10H]                    ; 04D1 _ 8B. 45, F0
        lea     ecx, [eax-4H]                           ; 04D4 _ 8D. 48, FC
        mov     eax, dword [ebp-0CH]                    ; 04D7 _ 8B. 45, F4
        lea     edx, [eax-3H]                           ; 04DA _ 8D. 50, FD
        mov     eax, dword [ebp-10H]                    ; 04DD _ 8B. 45, F0
        sub     eax, 47                                 ; 04E0 _ 83. E8, 2F
        sub     esp, 4                                  ; 04E3 _ 83. EC, 04
        push    ebx                                     ; 04E6 _ 53
        push    ecx                                     ; 04E7 _ 51
        push    edx                                     ; 04E8 _ 52
        push    eax                                     ; 04E9 _ 50
        push    7                                       ; 04EA _ 6A, 07
        push    dword [ebp-10H]                         ; 04EC _ FF. 75, F0
        push    dword [ebp-14H]                         ; 04EF _ FF. 75, EC
        call    boxfill8                                ; 04F2 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 04F7 _ 83. C4, 20
        mov     eax, dword [ebp-0CH]                    ; 04FA _ 8B. 45, F4
        lea     ebx, [eax-3H]                           ; 04FD _ 8D. 58, FD
        mov     eax, dword [ebp-10H]                    ; 0500 _ 8B. 45, F0
        lea     ecx, [eax-3H]                           ; 0503 _ 8D. 48, FD
        mov     eax, dword [ebp-0CH]                    ; 0506 _ 8B. 45, F4
        lea     edx, [eax-18H]                          ; 0509 _ 8D. 50, E8
        mov     eax, dword [ebp-10H]                    ; 050C _ 8B. 45, F0
        sub     eax, 3                                  ; 050F _ 83. E8, 03
        sub     esp, 4                                  ; 0512 _ 83. EC, 04
        push    ebx                                     ; 0515 _ 53
        push    ecx                                     ; 0516 _ 51
        push    edx                                     ; 0517 _ 52
        push    eax                                     ; 0518 _ 50
        push    7                                       ; 0519 _ 6A, 07
        push    dword [ebp-10H]                         ; 051B _ FF. 75, F0
        push    dword [ebp-14H]                         ; 051E _ FF. 75, EC
        call    boxfill8                                ; 0521 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0526 _ 83. C4, 20
        nop                                             ; 0529 _ 90
        mov     ebx, dword [ebp-4H]                     ; 052A _ 8B. 5D, FC
        leave                                           ; 052D _ C9
        ret                                             ; 052E _ C3
; init_palette End of function

set_palette:; Function begin
        push    ebp                                     ; 052F _ 55
        mov     ebp, esp                                ; 0530 _ 89. E5
        sub     esp, 24                                 ; 0532 _ 83. EC, 18
        call    io_load_eflags                          ; 0535 _ E8, FFFFFFFC(rel)
        mov     dword [ebp-0CH], eax                    ; 053A _ 89. 45, F4
        call    io_cli                                  ; 053D _ E8, FFFFFFFC(rel)
        sub     esp, 8                                  ; 0542 _ 83. EC, 08
        push    dword [ebp+8H]                          ; 0545 _ FF. 75, 08
        push    968                                     ; 0548 _ 68, 000003C8
        call    io_out8                                 ; 054D _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0552 _ 83. C4, 10
        mov     eax, dword [ebp+8H]                     ; 0555 _ 8B. 45, 08
        mov     dword [ebp-10H], eax                    ; 0558 _ 89. 45, F0
        jmp     ?_007                                   ; 055B _ EB, 65

?_006:  mov     eax, dword [ebp+10H]                    ; 055D _ 8B. 45, 10
        movzx   eax, byte [eax]                         ; 0560 _ 0F B6. 00
        shr     al, 2                                   ; 0563 _ C0. E8, 02
        movzx   eax, al                                 ; 0566 _ 0F B6. C0
        sub     esp, 8                                  ; 0569 _ 83. EC, 08
        push    eax                                     ; 056C _ 50
        push    969                                     ; 056D _ 68, 000003C9
        call    io_out8                                 ; 0572 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0577 _ 83. C4, 10
        mov     eax, dword [ebp+10H]                    ; 057A _ 8B. 45, 10
        add     eax, 1                                  ; 057D _ 83. C0, 01
        movzx   eax, byte [eax]                         ; 0580 _ 0F B6. 00
        shr     al, 2                                   ; 0583 _ C0. E8, 02
        movzx   eax, al                                 ; 0586 _ 0F B6. C0
        sub     esp, 8                                  ; 0589 _ 83. EC, 08
        push    eax                                     ; 058C _ 50
        push    969                                     ; 058D _ 68, 000003C9
        call    io_out8                                 ; 0592 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0597 _ 83. C4, 10
        mov     eax, dword [ebp+10H]                    ; 059A _ 8B. 45, 10
        add     eax, 2                                  ; 059D _ 83. C0, 02
        movzx   eax, byte [eax]                         ; 05A0 _ 0F B6. 00
        shr     al, 2                                   ; 05A3 _ C0. E8, 02
        movzx   eax, al                                 ; 05A6 _ 0F B6. C0
        sub     esp, 8                                  ; 05A9 _ 83. EC, 08
        push    eax                                     ; 05AC _ 50
        push    969                                     ; 05AD _ 68, 000003C9
        call    io_out8                                 ; 05B2 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 05B7 _ 83. C4, 10
        add     dword [ebp+10H], 3                      ; 05BA _ 83. 45, 10, 03
        add     dword [ebp-10H], 1                      ; 05BE _ 83. 45, F0, 01
?_007:  mov     eax, dword [ebp-10H]                    ; 05C2 _ 8B. 45, F0
        cmp     eax, dword [ebp+0CH]                    ; 05C5 _ 3B. 45, 0C
        jle     ?_006                                   ; 05C8 _ 7E, 93
        sub     esp, 12                                 ; 05CA _ 83. EC, 0C
        push    dword [ebp-0CH]                         ; 05CD _ FF. 75, F4
        call    io_store_eflags                         ; 05D0 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 05D5 _ 83. C4, 10
        nop                                             ; 05D8 _ 90
        leave                                           ; 05D9 _ C9
        ret                                             ; 05DA _ C3
; set_palette End of function

boxfill8:; Function begin
        push    ebp                                     ; 05DB _ 55
        mov     ebp, esp                                ; 05DC _ 89. E5
        sub     esp, 20                                 ; 05DE _ 83. EC, 14
        mov     eax, dword [ebp+10H]                    ; 05E1 _ 8B. 45, 10
        mov     byte [ebp-14H], al                      ; 05E4 _ 88. 45, EC
        mov     eax, dword [ebp+18H]                    ; 05E7 _ 8B. 45, 18
        mov     dword [ebp-4H], eax                     ; 05EA _ 89. 45, FC
        jmp     ?_011                                   ; 05ED _ EB, 33

?_008:  mov     eax, dword [ebp+14H]                    ; 05EF _ 8B. 45, 14
        mov     dword [ebp-8H], eax                     ; 05F2 _ 89. 45, F8
        jmp     ?_010                                   ; 05F5 _ EB, 1F

?_009:  mov     eax, dword [ebp-4H]                     ; 05F7 _ 8B. 45, FC
        imul    eax, dword [ebp+0CH]                    ; 05FA _ 0F AF. 45, 0C
        mov     edx, eax                                ; 05FE _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 0600 _ 8B. 45, F8
        add     eax, edx                                ; 0603 _ 01. D0
        mov     edx, eax                                ; 0605 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 0607 _ 8B. 45, 08
        add     edx, eax                                ; 060A _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 060C _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0610 _ 88. 02
        add     dword [ebp-8H], 1                       ; 0612 _ 83. 45, F8, 01
?_010:  mov     eax, dword [ebp-8H]                     ; 0616 _ 8B. 45, F8
        cmp     eax, dword [ebp+1CH]                    ; 0619 _ 3B. 45, 1C
        jle     ?_009                                   ; 061C _ 7E, D9
        add     dword [ebp-4H], 1                       ; 061E _ 83. 45, FC, 01
?_011:  mov     eax, dword [ebp-4H]                     ; 0622 _ 8B. 45, FC
        cmp     eax, dword [ebp+20H]                    ; 0625 _ 3B. 45, 20
        jle     ?_008                                   ; 0628 _ 7E, C5
        nop                                             ; 062A _ 90
        leave                                           ; 062B _ C9
        ret                                             ; 062C _ C3
; boxfill8 End of function

showFont8:; Function begin
        push    ebp                                     ; 062D _ 55
        mov     ebp, esp                                ; 062E _ 89. E5
        sub     esp, 20                                 ; 0630 _ 83. EC, 14
        mov     eax, dword [ebp+18H]                    ; 0633 _ 8B. 45, 18
        mov     byte [ebp-14H], al                      ; 0636 _ 88. 45, EC
        mov     dword [ebp-4H], 0                       ; 0639 _ C7. 45, FC, 00000000
        jmp     ?_021                                   ; 0640 _ E9, 0000016C

?_012:  mov     edx, dword [ebp-4H]                     ; 0645 _ 8B. 55, FC
        mov     eax, dword [ebp+1CH]                    ; 0648 _ 8B. 45, 1C
        add     eax, edx                                ; 064B _ 01. D0
        movzx   eax, byte [eax]                         ; 064D _ 0F B6. 00
        mov     byte [ebp-5H], al                       ; 0650 _ 88. 45, FB
        cmp     byte [ebp-5H], 0                        ; 0653 _ 80. 7D, FB, 00
        jns     ?_013                                   ; 0657 _ 79, 20
        mov     edx, dword [ebp+14H]                    ; 0659 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 065C _ 8B. 45, FC
        add     eax, edx                                ; 065F _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 0661 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 0665 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 0667 _ 8B. 45, 10
        add     eax, edx                                ; 066A _ 01. D0
        mov     edx, eax                                ; 066C _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 066E _ 8B. 45, 08
        add     edx, eax                                ; 0671 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0673 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0677 _ 88. 02
?_013:  movsx   eax, byte [ebp-5H]                      ; 0679 _ 0F BE. 45, FB
        and     eax, 40H                                ; 067D _ 83. E0, 40
        test    eax, eax                                ; 0680 _ 85. C0
        jz      ?_014                                   ; 0682 _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 0684 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 0687 _ 8B. 45, FC
        add     eax, edx                                ; 068A _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 068C _ 0F AF. 45, 0C
        mov     edx, eax                                ; 0690 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 0692 _ 8B. 45, 10
        add     eax, edx                                ; 0695 _ 01. D0
        lea     edx, [eax+1H]                           ; 0697 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 069A _ 8B. 45, 08
        add     edx, eax                                ; 069D _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 069F _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 06A3 _ 88. 02
?_014:  movsx   eax, byte [ebp-5H]                      ; 06A5 _ 0F BE. 45, FB
        and     eax, 20H                                ; 06A9 _ 83. E0, 20
        test    eax, eax                                ; 06AC _ 85. C0
        jz      ?_015                                   ; 06AE _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 06B0 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 06B3 _ 8B. 45, FC
        add     eax, edx                                ; 06B6 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 06B8 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 06BC _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 06BE _ 8B. 45, 10
        add     eax, edx                                ; 06C1 _ 01. D0
        lea     edx, [eax+2H]                           ; 06C3 _ 8D. 50, 02
        mov     eax, dword [ebp+8H]                     ; 06C6 _ 8B. 45, 08
        add     edx, eax                                ; 06C9 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 06CB _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 06CF _ 88. 02
?_015:  movsx   eax, byte [ebp-5H]                      ; 06D1 _ 0F BE. 45, FB
        and     eax, 10H                                ; 06D5 _ 83. E0, 10
        test    eax, eax                                ; 06D8 _ 85. C0
        jz      ?_016                                   ; 06DA _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 06DC _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 06DF _ 8B. 45, FC
        add     eax, edx                                ; 06E2 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 06E4 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 06E8 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 06EA _ 8B. 45, 10
        add     eax, edx                                ; 06ED _ 01. D0
        lea     edx, [eax+3H]                           ; 06EF _ 8D. 50, 03
        mov     eax, dword [ebp+8H]                     ; 06F2 _ 8B. 45, 08
        add     edx, eax                                ; 06F5 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 06F7 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 06FB _ 88. 02
?_016:  movsx   eax, byte [ebp-5H]                      ; 06FD _ 0F BE. 45, FB
        and     eax, 08H                                ; 0701 _ 83. E0, 08
        test    eax, eax                                ; 0704 _ 85. C0
        jz      ?_017                                   ; 0706 _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 0708 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 070B _ 8B. 45, FC
        add     eax, edx                                ; 070E _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 0710 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 0714 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 0716 _ 8B. 45, 10
        add     eax, edx                                ; 0719 _ 01. D0
        lea     edx, [eax+4H]                           ; 071B _ 8D. 50, 04
        mov     eax, dword [ebp+8H]                     ; 071E _ 8B. 45, 08
        add     edx, eax                                ; 0721 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0723 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0727 _ 88. 02
?_017:  movsx   eax, byte [ebp-5H]                      ; 0729 _ 0F BE. 45, FB
        and     eax, 04H                                ; 072D _ 83. E0, 04
        test    eax, eax                                ; 0730 _ 85. C0
        jz      ?_018                                   ; 0732 _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 0734 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 0737 _ 8B. 45, FC
        add     eax, edx                                ; 073A _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 073C _ 0F AF. 45, 0C
        mov     edx, eax                                ; 0740 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 0742 _ 8B. 45, 10
        add     eax, edx                                ; 0745 _ 01. D0
        lea     edx, [eax+5H]                           ; 0747 _ 8D. 50, 05
        mov     eax, dword [ebp+8H]                     ; 074A _ 8B. 45, 08
        add     edx, eax                                ; 074D _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 074F _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0753 _ 88. 02
?_018:  movsx   eax, byte [ebp-5H]                      ; 0755 _ 0F BE. 45, FB
        and     eax, 02H                                ; 0759 _ 83. E0, 02
        test    eax, eax                                ; 075C _ 85. C0
        jz      ?_019                                   ; 075E _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 0760 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 0763 _ 8B. 45, FC
        add     eax, edx                                ; 0766 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 0768 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 076C _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 076E _ 8B. 45, 10
        add     eax, edx                                ; 0771 _ 01. D0
        lea     edx, [eax+6H]                           ; 0773 _ 8D. 50, 06
        mov     eax, dword [ebp+8H]                     ; 0776 _ 8B. 45, 08
        add     edx, eax                                ; 0779 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 077B _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 077F _ 88. 02
?_019:  movsx   eax, byte [ebp-5H]                      ; 0781 _ 0F BE. 45, FB
        and     eax, 01H                                ; 0785 _ 83. E0, 01
        test    eax, eax                                ; 0788 _ 85. C0
        jz      ?_020                                   ; 078A _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 078C _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 078F _ 8B. 45, FC
        add     eax, edx                                ; 0792 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 0794 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 0798 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 079A _ 8B. 45, 10
        add     eax, edx                                ; 079D _ 01. D0
        lea     edx, [eax+7H]                           ; 079F _ 8D. 50, 07
        mov     eax, dword [ebp+8H]                     ; 07A2 _ 8B. 45, 08
        add     edx, eax                                ; 07A5 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 07A7 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 07AB _ 88. 02
?_020:  add     dword [ebp-4H], 1                       ; 07AD _ 83. 45, FC, 01
?_021:  cmp     dword [ebp-4H], 15                      ; 07B1 _ 83. 7D, FC, 0F
        jle     ?_012                                   ; 07B5 _ 0F 8E, FFFFFE8A
        nop                                             ; 07BB _ 90
        leave                                           ; 07BC _ C9
        ret                                             ; 07BD _ C3
; showFont8 End of function

init_mouse_cursor:; Function begin
        push    ebp                                     ; 07BE _ 55
        mov     ebp, esp                                ; 07BF _ 89. E5
        sub     esp, 56                                 ; 07C1 _ 83. EC, 38
        mov     eax, dword [ebp+0CH]                    ; 07C4 _ 8B. 45, 0C
        mov     byte [ebp-2CH], al                      ; 07C7 _ 88. 45, D4
        mov     eax, dword [bootInfo]                   ; 07CA _ A1, 00000100(d)
        mov     dword [ebp-14H], eax                    ; 07CF _ 89. 45, EC
        movzx   eax, word [?_095]                       ; 07D2 _ 0F B7. 05, 00000104(d)
        cwde                                            ; 07D9 _ 98
        mov     dword [ebp-10H], eax                    ; 07DA _ 89. 45, F0
        movzx   eax, word [?_096]                       ; 07DD _ 0F B7. 05, 00000106(d)
        cwde                                            ; 07E4 _ 98
        mov     dword [ebp-0CH], eax                    ; 07E5 _ 89. 45, F4
        mov     eax, dword [ebp-10H]                    ; 07E8 _ 8B. 45, F0
        sub     eax, 16                                 ; 07EB _ 83. E8, 10
        mov     edx, eax                                ; 07EE _ 89. C2
        shr     edx, 31                                 ; 07F0 _ C1. EA, 1F
        add     eax, edx                                ; 07F3 _ 01. D0
        sar     eax, 1                                  ; 07F5 _ D1. F8
        mov     dword [mx], eax                         ; 07F7 _ A3, 000001F0(d)
        mov     eax, dword [ebp-0CH]                    ; 07FC _ 8B. 45, F4
        sub     eax, 16                                 ; 07FF _ 83. E8, 10
        mov     edx, eax                                ; 0802 _ 89. C2
        shr     edx, 31                                 ; 0804 _ C1. EA, 1F
        add     eax, edx                                ; 0807 _ 01. D0
        sar     eax, 1                                  ; 0809 _ D1. F8
        mov     dword [my], eax                         ; 080B _ A3, 000001F4(d)
        mov     dword [ebp-18H], 0                      ; 0810 _ C7. 45, E8, 00000000
        jmp     ?_028                                   ; 0817 _ E9, 000000B1

?_022:  mov     dword [ebp-1CH], 0                      ; 081C _ C7. 45, E4, 00000000
        jmp     ?_027                                   ; 0823 _ E9, 00000097

?_023:  mov     eax, dword [ebp-18H]                    ; 0828 _ 8B. 45, E8
        shl     eax, 4                                  ; 082B _ C1. E0, 04
        mov     edx, eax                                ; 082E _ 89. C2
        mov     eax, dword [ebp-1CH]                    ; 0830 _ 8B. 45, E4
        add     eax, edx                                ; 0833 _ 01. D0
        add     eax, cursor.1646                        ; 0835 _ 05, 00000060(d)
        movzx   eax, byte [eax]                         ; 083A _ 0F B6. 00
        cmp     al, 42                                  ; 083D _ 3C, 2A
        jnz     ?_024                                   ; 083F _ 75, 17
        mov     eax, dword [ebp-18H]                    ; 0841 _ 8B. 45, E8
        shl     eax, 4                                  ; 0844 _ C1. E0, 04
        mov     edx, eax                                ; 0847 _ 89. C2
        mov     eax, dword [ebp-1CH]                    ; 0849 _ 8B. 45, E4
        add     eax, edx                                ; 084C _ 01. D0
        mov     edx, eax                                ; 084E _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 0850 _ 8B. 45, 08
        add     eax, edx                                ; 0853 _ 01. D0
        mov     byte [eax], 0                           ; 0855 _ C6. 00, 00
?_024:  mov     eax, dword [ebp-18H]                    ; 0858 _ 8B. 45, E8
        shl     eax, 4                                  ; 085B _ C1. E0, 04
        mov     edx, eax                                ; 085E _ 89. C2
        mov     eax, dword [ebp-1CH]                    ; 0860 _ 8B. 45, E4
        add     eax, edx                                ; 0863 _ 01. D0
        add     eax, cursor.1646                        ; 0865 _ 05, 00000060(d)
        movzx   eax, byte [eax]                         ; 086A _ 0F B6. 00
        cmp     al, 79                                  ; 086D _ 3C, 4F
        jnz     ?_025                                   ; 086F _ 75, 17
        mov     eax, dword [ebp-18H]                    ; 0871 _ 8B. 45, E8
        shl     eax, 4                                  ; 0874 _ C1. E0, 04
        mov     edx, eax                                ; 0877 _ 89. C2
        mov     eax, dword [ebp-1CH]                    ; 0879 _ 8B. 45, E4
        add     eax, edx                                ; 087C _ 01. D0
        mov     edx, eax                                ; 087E _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 0880 _ 8B. 45, 08
        add     eax, edx                                ; 0883 _ 01. D0
        mov     byte [eax], 7                           ; 0885 _ C6. 00, 07
?_025:  mov     eax, dword [ebp-18H]                    ; 0888 _ 8B. 45, E8
        shl     eax, 4                                  ; 088B _ C1. E0, 04
        mov     edx, eax                                ; 088E _ 89. C2
        mov     eax, dword [ebp-1CH]                    ; 0890 _ 8B. 45, E4
        add     eax, edx                                ; 0893 _ 01. D0
        add     eax, cursor.1646                        ; 0895 _ 05, 00000060(d)
        movzx   eax, byte [eax]                         ; 089A _ 0F B6. 00
        cmp     al, 46                                  ; 089D _ 3C, 2E
        jnz     ?_026                                   ; 089F _ 75, 1A
        mov     eax, dword [ebp-18H]                    ; 08A1 _ 8B. 45, E8
        shl     eax, 4                                  ; 08A4 _ C1. E0, 04
        mov     edx, eax                                ; 08A7 _ 89. C2
        mov     eax, dword [ebp-1CH]                    ; 08A9 _ 8B. 45, E4
        add     eax, edx                                ; 08AC _ 01. D0
        mov     edx, eax                                ; 08AE _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 08B0 _ 8B. 45, 08
        add     edx, eax                                ; 08B3 _ 01. C2
        movzx   eax, byte [ebp-2CH]                     ; 08B5 _ 0F B6. 45, D4
        mov     byte [edx], al                          ; 08B9 _ 88. 02
?_026:  add     dword [ebp-1CH], 1                      ; 08BB _ 83. 45, E4, 01
?_027:  cmp     dword [ebp-1CH], 15                     ; 08BF _ 83. 7D, E4, 0F
        jle     ?_023                                   ; 08C3 _ 0F 8E, FFFFFF5F
        add     dword [ebp-18H], 1                      ; 08C9 _ 83. 45, E8, 01
?_028:  cmp     dword [ebp-18H], 15                     ; 08CD _ 83. 7D, E8, 0F
        jle     ?_022                                   ; 08D1 _ 0F 8E, FFFFFF45
        mov     edx, dword [my]                         ; 08D7 _ 8B. 15, 000001F4(d)
        mov     eax, dword [mx]                         ; 08DD _ A1, 000001F0(d)
        push    16                                      ; 08E2 _ 6A, 10
        push    mcursor                                 ; 08E4 _ 68, 00000000(d)
        push    edx                                     ; 08E9 _ 52
        push    eax                                     ; 08EA _ 50
        push    16                                      ; 08EB _ 6A, 10
        push    16                                      ; 08ED _ 6A, 10
        push    dword [ebp-10H]                         ; 08EF _ FF. 75, F0
        push    dword [ebp-14H]                         ; 08F2 _ FF. 75, EC
        call    putblock                                ; 08F5 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 08FA _ 83. C4, 20
        nop                                             ; 08FD _ 90
        leave                                           ; 08FE _ C9
        ret                                             ; 08FF _ C3
; init_mouse_cursor End of function

putblock:; Function begin
        push    ebp                                     ; 0900 _ 55
        mov     ebp, esp                                ; 0901 _ 89. E5
        push    ebx                                     ; 0903 _ 53
        sub     esp, 16                                 ; 0904 _ 83. EC, 10
        mov     dword [ebp-8H], 0                       ; 0907 _ C7. 45, F8, 00000000
        jmp     ?_032                                   ; 090E _ EB, 50

?_029:  mov     dword [ebp-0CH], 0                      ; 0910 _ C7. 45, F4, 00000000
        jmp     ?_031                                   ; 0917 _ EB, 3B

?_030:  mov     eax, dword [ebp-8H]                     ; 0919 _ 8B. 45, F8
        imul    eax, dword [ebp+24H]                    ; 091C _ 0F AF. 45, 24
        mov     edx, eax                                ; 0920 _ 89. C2
        mov     eax, dword [ebp-0CH]                    ; 0922 _ 8B. 45, F4
        add     eax, edx                                ; 0925 _ 01. D0
        mov     edx, eax                                ; 0927 _ 89. C2
        mov     eax, dword [ebp+20H]                    ; 0929 _ 8B. 45, 20
        add     eax, edx                                ; 092C _ 01. D0
        mov     ecx, dword [ebp+1CH]                    ; 092E _ 8B. 4D, 1C
        mov     edx, dword [ebp-8H]                     ; 0931 _ 8B. 55, F8
        add     edx, ecx                                ; 0934 _ 01. CA
        imul    edx, dword [ebp+0CH]                    ; 0936 _ 0F AF. 55, 0C
        mov     ebx, dword [ebp+18H]                    ; 093A _ 8B. 5D, 18
        mov     ecx, dword [ebp-0CH]                    ; 093D _ 8B. 4D, F4
        add     ecx, ebx                                ; 0940 _ 01. D9
        add     edx, ecx                                ; 0942 _ 01. CA
        mov     ecx, edx                                ; 0944 _ 89. D1
        mov     edx, dword [ebp+8H]                     ; 0946 _ 8B. 55, 08
        add     edx, ecx                                ; 0949 _ 01. CA
        movzx   eax, byte [eax]                         ; 094B _ 0F B6. 00
        mov     byte [edx], al                          ; 094E _ 88. 02
        add     dword [ebp-0CH], 1                      ; 0950 _ 83. 45, F4, 01
?_031:  mov     eax, dword [ebp-0CH]                    ; 0954 _ 8B. 45, F4
        cmp     eax, dword [ebp+10H]                    ; 0957 _ 3B. 45, 10
        jl      ?_030                                   ; 095A _ 7C, BD
        add     dword [ebp-8H], 1                       ; 095C _ 83. 45, F8, 01
?_032:  mov     eax, dword [ebp-8H]                     ; 0960 _ 8B. 45, F8
        cmp     eax, dword [ebp+14H]                    ; 0963 _ 3B. 45, 14
        jl      ?_029                                   ; 0966 _ 7C, A8
        nop                                             ; 0968 _ 90
        add     esp, 16                                 ; 0969 _ 83. C4, 10
        pop     ebx                                     ; 096C _ 5B
        pop     ebp                                     ; 096D _ 5D
        ret                                             ; 096E _ C3
; putblock End of function

intHandlerFromC:; Function begin
        push    ebp                                     ; 096F _ 55
        mov     ebp, esp                                ; 0970 _ 89. E5
        sub     esp, 24                                 ; 0972 _ 83. EC, 18
        mov     eax, dword [bootInfo]                   ; 0975 _ A1, 00000100(d)
        mov     dword [ebp-14H], eax                    ; 097A _ 89. 45, EC
        movzx   eax, word [?_095]                       ; 097D _ 0F B7. 05, 00000104(d)
        cwde                                            ; 0984 _ 98
        mov     dword [ebp-10H], eax                    ; 0985 _ 89. 45, F0
        movzx   eax, word [?_096]                       ; 0988 _ 0F B7. 05, 00000106(d)
        cwde                                            ; 098F _ 98
        mov     dword [ebp-0CH], eax                    ; 0990 _ 89. 45, F4
        sub     esp, 8                                  ; 0993 _ 83. EC, 08
        push    32                                      ; 0996 _ 6A, 20
        push    32                                      ; 0998 _ 6A, 20
        call    io_out8                                 ; 099A _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 099F _ 83. C4, 10
        mov     byte [ebp-15H], 0                       ; 09A2 _ C6. 45, EB, 00
        sub     esp, 12                                 ; 09A6 _ 83. EC, 0C
        push    96                                      ; 09A9 _ 6A, 60
        call    io_in8                                  ; 09AB _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 09B0 _ 83. C4, 10
        mov     byte [ebp-15H], al                      ; 09B3 _ 88. 45, EB
        movzx   eax, byte [ebp-15H]                     ; 09B6 _ 0F B6. 45, EB
        sub     esp, 8                                  ; 09BA _ 83. EC, 08
        push    eax                                     ; 09BD _ 50
        push    keyInfo                                 ; 09BE _ 68, 00000108(d)
        call    fifo8_put                               ; 09C3 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 09C8 _ 83. C4, 10
        nop                                             ; 09CB _ 90
        leave                                           ; 09CC _ C9
        ret                                             ; 09CD _ C3
; intHandlerFromC End of function

charToHex:; Function begin
        push    ebp                                     ; 09CE _ 55
        mov     ebp, esp                                ; 09CF _ 89. E5
        sub     esp, 40                                 ; 09D1 _ 83. EC, 28
        mov     eax, dword [ebp+8H]                     ; 09D4 _ 8B. 45, 08
        mov     byte [ebp-1CH], al                      ; 09D7 _ 88. 45, E4
        movzx   eax, byte [ebp-1CH]                     ; 09DA _ 0F B6. 45, E4
        and     eax, 0FH                                ; 09DE _ 83. E0, 0F
        mov     byte [ebp-9H], al                       ; 09E1 _ 88. 45, F7
        movsx   eax, byte [ebp-9H]                      ; 09E4 _ 0F BE. 45, F7
        sub     esp, 12                                 ; 09E8 _ 83. EC, 0C
        push    eax                                     ; 09EB _ 50
        call    charToVal                               ; 09EC _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 09F1 _ 83. C4, 10
        mov     byte [?_094], al                        ; 09F4 _ A2, 00000013(d)
        movzx   eax, byte [ebp-1CH]                     ; 09F9 _ 0F B6. 45, E4
        shr     al, 4                                   ; 09FD _ C0. E8, 04
        mov     byte [ebp-1CH], al                      ; 0A00 _ 88. 45, E4
        movzx   eax, byte [ebp-1CH]                     ; 0A03 _ 0F B6. 45, E4
        movsx   eax, al                                 ; 0A07 _ 0F BE. C0
        sub     esp, 12                                 ; 0A0A _ 83. EC, 0C
        push    eax                                     ; 0A0D _ 50
        call    charToVal                               ; 0A0E _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0A13 _ 83. C4, 10
        mov     byte [?_093], al                        ; 0A16 _ A2, 00000012(d)
        mov     eax, keyVal                             ; 0A1B _ B8, 00000010(d)
        leave                                           ; 0A20 _ C9
        ret                                             ; 0A21 _ C3
; charToHex End of function

charToVal:; Function begin
        push    ebp                                     ; 0A22 _ 55
        mov     ebp, esp                                ; 0A23 _ 89. E5
        sub     esp, 4                                  ; 0A25 _ 83. EC, 04
        mov     eax, dword [ebp+8H]                     ; 0A28 _ 8B. 45, 08
        mov     byte [ebp-4H], al                       ; 0A2B _ 88. 45, FC
        cmp     byte [ebp-4H], 9                        ; 0A2E _ 80. 7D, FC, 09
        jle     ?_033                                   ; 0A32 _ 7E, 09
        movzx   eax, byte [ebp-4H]                      ; 0A34 _ 0F B6. 45, FC
        add     eax, 55                                 ; 0A38 _ 83. C0, 37
        jmp     ?_034                                   ; 0A3B _ EB, 07

?_033:  movzx   eax, byte [ebp-4H]                      ; 0A3D _ 0F B6. 45, FC
        add     eax, 48                                 ; 0A41 _ 83. C0, 30
?_034:  leave                                           ; 0A44 _ C9
        ret                                             ; 0A45 _ C3
; charToVal End of function

intToHexStr:; Function begin
        push    ebp                                     ; 0A46 _ 55
        mov     ebp, esp                                ; 0A47 _ 89. E5
        sub     esp, 16                                 ; 0A49 _ 83. EC, 10
        mov     byte [str.1689], 48                     ; 0A4C _ C6. 05, 000001F8(d), 30
        mov     byte [?_097], 120                       ; 0A53 _ C6. 05, 000001F9(d), 78
        mov     byte [?_098], 0                         ; 0A5A _ C6. 05, 00000202(d), 00
        mov     dword [ebp-0CH], 2                      ; 0A61 _ C7. 45, F4, 00000002
        jmp     ?_036                                   ; 0A68 _ EB, 0F

?_035:  mov     eax, dword [ebp-0CH]                    ; 0A6A _ 8B. 45, F4
        add     eax, str.1689                           ; 0A6D _ 05, 000001F8(d)
        mov     byte [eax], 48                          ; 0A72 _ C6. 00, 30
        add     dword [ebp-0CH], 1                      ; 0A75 _ 83. 45, F4, 01
?_036:  cmp     dword [ebp-0CH], 9                      ; 0A79 _ 83. 7D, F4, 09
        jle     ?_035                                   ; 0A7D _ 7E, EB
        mov     dword [ebp-8H], 9                       ; 0A7F _ C7. 45, F8, 00000009
        jmp     ?_039                                   ; 0A86 _ EB, 48

?_037:  mov     eax, dword [ebp+8H]                     ; 0A88 _ 8B. 45, 08
        and     eax, 0FH                                ; 0A8B _ 83. E0, 0F
        mov     dword [ebp-4H], eax                     ; 0A8E _ 89. 45, FC
        mov     eax, dword [ebp+8H]                     ; 0A91 _ 8B. 45, 08
        shr     eax, 4                                  ; 0A94 _ C1. E8, 04
        mov     dword [ebp+8H], eax                     ; 0A97 _ 89. 45, 08
        cmp     dword [ebp-4H], 9                       ; 0A9A _ 83. 7D, FC, 09
        jle     ?_038                                   ; 0A9E _ 7E, 19
        mov     eax, dword [ebp-4H]                     ; 0AA0 _ 8B. 45, FC
        lea     ecx, [eax+37H]                          ; 0AA3 _ 8D. 48, 37
        mov     eax, dword [ebp-8H]                     ; 0AA6 _ 8B. 45, F8
        lea     edx, [eax-1H]                           ; 0AA9 _ 8D. 50, FF
        mov     dword [ebp-8H], edx                     ; 0AAC _ 89. 55, F8
        mov     edx, ecx                                ; 0AAF _ 89. CA
        mov     byte [str.1689+eax], dl                 ; 0AB1 _ 88. 90, 000001F8(d)
        jmp     ?_039                                   ; 0AB7 _ EB, 17

?_038:  mov     eax, dword [ebp-4H]                     ; 0AB9 _ 8B. 45, FC
        lea     ecx, [eax+30H]                          ; 0ABC _ 8D. 48, 30
        mov     eax, dword [ebp-8H]                     ; 0ABF _ 8B. 45, F8
        lea     edx, [eax-1H]                           ; 0AC2 _ 8D. 50, FF
        mov     dword [ebp-8H], edx                     ; 0AC5 _ 89. 55, F8
        mov     edx, ecx                                ; 0AC8 _ 89. CA
        mov     byte [str.1689+eax], dl                 ; 0ACA _ 88. 90, 000001F8(d)
?_039:  cmp     dword [ebp-8H], 1                       ; 0AD0 _ 83. 7D, F8, 01
        jle     ?_040                                   ; 0AD4 _ 7E, 06
        cmp     dword [ebp+8H], 0                       ; 0AD6 _ 83. 7D, 08, 00
        jnz     ?_037                                   ; 0ADA _ 75, AC
?_040:  mov     eax, str.1689                           ; 0ADC _ B8, 000001F8(d)
        leave                                           ; 0AE1 _ C9
        ret                                             ; 0AE2 _ C3
; intToHexStr End of function

wait_KBC_sendReady:; Function begin
        push    ebp                                     ; 0AE3 _ 55
        mov     ebp, esp                                ; 0AE4 _ 89. E5
        sub     esp, 8                                  ; 0AE6 _ 83. EC, 08
?_041:  sub     esp, 12                                 ; 0AE9 _ 83. EC, 0C
        push    100                                     ; 0AEC _ 6A, 64
        call    io_in8                                  ; 0AEE _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0AF3 _ 83. C4, 10
        movsx   eax, al                                 ; 0AF6 _ 0F BE. C0
        and     eax, 02H                                ; 0AF9 _ 83. E0, 02
        test    eax, eax                                ; 0AFC _ 85. C0
        jz      ?_042                                   ; 0AFE _ 74, 02
        jmp     ?_041                                   ; 0B00 _ EB, E7

?_042:  nop                                             ; 0B02 _ 90
        nop                                             ; 0B03 _ 90
        leave                                           ; 0B04 _ C9
        ret                                             ; 0B05 _ C3
; wait_KBC_sendReady End of function

init_keyboard:; Function begin
        push    ebp                                     ; 0B06 _ 55
        mov     ebp, esp                                ; 0B07 _ 89. E5
        sub     esp, 8                                  ; 0B09 _ 83. EC, 08
        call    wait_KBC_sendReady                      ; 0B0C _ E8, FFFFFFFC(rel)
        sub     esp, 8                                  ; 0B11 _ 83. EC, 08
        push    96                                      ; 0B14 _ 6A, 60
        push    100                                     ; 0B16 _ 6A, 64
        call    io_out8                                 ; 0B18 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0B1D _ 83. C4, 10
        call    wait_KBC_sendReady                      ; 0B20 _ E8, FFFFFFFC(rel)
        sub     esp, 8                                  ; 0B25 _ 83. EC, 08
        push    71                                      ; 0B28 _ 6A, 47
        push    96                                      ; 0B2A _ 6A, 60
        call    io_out8                                 ; 0B2C _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0B31 _ 83. C4, 10
        nop                                             ; 0B34 _ 90
        leave                                           ; 0B35 _ C9
        ret                                             ; 0B36 _ C3
; init_keyboard End of function

enable_mouse:; Function begin
        push    ebp                                     ; 0B37 _ 55
        mov     ebp, esp                                ; 0B38 _ 89. E5
        sub     esp, 8                                  ; 0B3A _ 83. EC, 08
        call    wait_KBC_sendReady                      ; 0B3D _ E8, FFFFFFFC(rel)
        sub     esp, 8                                  ; 0B42 _ 83. EC, 08
        push    212                                     ; 0B45 _ 68, 000000D4
        push    100                                     ; 0B4A _ 6A, 64
        call    io_out8                                 ; 0B4C _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0B51 _ 83. C4, 10
        call    wait_KBC_sendReady                      ; 0B54 _ E8, FFFFFFFC(rel)
        sub     esp, 8                                  ; 0B59 _ 83. EC, 08
        push    244                                     ; 0B5C _ 68, 000000F4
        push    96                                      ; 0B61 _ 6A, 60
        call    io_out8                                 ; 0B63 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0B68 _ 83. C4, 10
        mov     eax, dword [ebp+8H]                     ; 0B6B _ 8B. 45, 08
        mov     byte [eax+3H], 0                        ; 0B6E _ C6. 40, 03, 00
        nop                                             ; 0B72 _ 90
        leave                                           ; 0B73 _ C9
        ret                                             ; 0B74 _ C3
; enable_mouse End of function

intHandlerForMouse:; Function begin
        push    ebp                                     ; 0B75 _ 55
        mov     ebp, esp                                ; 0B76 _ 89. E5
        sub     esp, 24                                 ; 0B78 _ 83. EC, 18
        mov     byte [ebp-9H], 0                        ; 0B7B _ C6. 45, F7, 00
        sub     esp, 8                                  ; 0B7F _ 83. EC, 08
        push    32                                      ; 0B82 _ 6A, 20
        push    160                                     ; 0B84 _ 68, 000000A0
        call    io_out8                                 ; 0B89 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0B8E _ 83. C4, 10
        sub     esp, 8                                  ; 0B91 _ 83. EC, 08
        push    32                                      ; 0B94 _ 6A, 20
        push    32                                      ; 0B96 _ 6A, 20
        call    io_out8                                 ; 0B98 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0B9D _ 83. C4, 10
        sub     esp, 12                                 ; 0BA0 _ 83. EC, 0C
        push    96                                      ; 0BA3 _ 6A, 60
        call    io_in8                                  ; 0BA5 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0BAA _ 83. C4, 10
        mov     byte [ebp-9H], al                       ; 0BAD _ 88. 45, F7
        movzx   eax, byte [ebp-9H]                      ; 0BB0 _ 0F B6. 45, F7
        sub     esp, 8                                  ; 0BB4 _ 83. EC, 08
        push    eax                                     ; 0BB7 _ 50
        push    mouseInfo                               ; 0BB8 _ 68, 00000120(d)
        call    fifo8_put                               ; 0BBD _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0BC2 _ 83. C4, 10
        nop                                             ; 0BC5 _ 90
        leave                                           ; 0BC6 _ C9
        ret                                             ; 0BC7 _ C3
; intHandlerForMouse End of function

fifo8_init:; Function begin
        push    ebp                                     ; 0BC8 _ 55
        mov     ebp, esp                                ; 0BC9 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 0BCB _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 0BCE _ 8B. 55, 0C
        mov     dword [eax+0CH], edx                    ; 0BD1 _ 89. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 0BD4 _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 0BD7 _ 8B. 55, 10
        mov     dword [eax], edx                        ; 0BDA _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 0BDC _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 0BDF _ 8B. 55, 0C
        mov     dword [eax+10H], edx                    ; 0BE2 _ 89. 50, 10
        mov     eax, dword [ebp+8H]                     ; 0BE5 _ 8B. 45, 08
        mov     dword [eax+4H], 0                       ; 0BE8 _ C7. 40, 04, 00000000
        mov     eax, dword [ebp+8H]                     ; 0BEF _ 8B. 45, 08
        mov     dword [eax+8H], 0                       ; 0BF2 _ C7. 40, 08, 00000000
        mov     eax, dword [ebp+8H]                     ; 0BF9 _ 8B. 45, 08
        mov     dword [eax+14H], 0                      ; 0BFC _ C7. 40, 14, 00000000
        nop                                             ; 0C03 _ 90
        pop     ebp                                     ; 0C04 _ 5D
        ret                                             ; 0C05 _ C3
; fifo8_init End of function

fifo8_put:; Function begin
        push    ebp                                     ; 0C06 _ 55
        mov     ebp, esp                                ; 0C07 _ 89. E5
        sub     esp, 4                                  ; 0C09 _ 83. EC, 04
        mov     eax, dword [ebp+0CH]                    ; 0C0C _ 8B. 45, 0C
        mov     byte [ebp-4H], al                       ; 0C0F _ 88. 45, FC
        mov     eax, dword [ebp+8H]                     ; 0C12 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 0C15 _ 8B. 40, 10
        test    eax, eax                                ; 0C18 _ 85. C0
        jnz     ?_043                                   ; 0C1A _ 75, 18
        mov     eax, dword [ebp+8H]                     ; 0C1C _ 8B. 45, 08
        mov     eax, dword [eax+14H]                    ; 0C1F _ 8B. 40, 14
        or      eax, 01H                                ; 0C22 _ 83. C8, 01
        mov     edx, eax                                ; 0C25 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 0C27 _ 8B. 45, 08
        mov     dword [eax+14H], edx                    ; 0C2A _ 89. 50, 14
        mov     eax, 4294967295                         ; 0C2D _ B8, FFFFFFFF
        jmp     ?_045                                   ; 0C32 _ EB, 50

?_043:  mov     eax, dword [ebp+8H]                     ; 0C34 _ 8B. 45, 08
        mov     edx, dword [eax]                        ; 0C37 _ 8B. 10
        mov     eax, dword [ebp+8H]                     ; 0C39 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 0C3C _ 8B. 40, 08
        add     edx, eax                                ; 0C3F _ 01. C2
        movzx   eax, byte [ebp-4H]                      ; 0C41 _ 0F B6. 45, FC
        mov     byte [edx], al                          ; 0C45 _ 88. 02
        mov     eax, dword [ebp+8H]                     ; 0C47 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 0C4A _ 8B. 40, 08
        lea     edx, [eax+1H]                           ; 0C4D _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 0C50 _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 0C53 _ 89. 50, 08
        mov     eax, dword [ebp+8H]                     ; 0C56 _ 8B. 45, 08
        mov     edx, dword [eax+8H]                     ; 0C59 _ 8B. 50, 08
        mov     eax, dword [ebp+8H]                     ; 0C5C _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 0C5F _ 8B. 40, 0C
        cmp     edx, eax                                ; 0C62 _ 39. C2
        jnz     ?_044                                   ; 0C64 _ 75, 0A
        mov     eax, dword [ebp+8H]                     ; 0C66 _ 8B. 45, 08
        mov     dword [eax+8H], 0                       ; 0C69 _ C7. 40, 08, 00000000
?_044:  mov     eax, dword [ebp+8H]                     ; 0C70 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 0C73 _ 8B. 40, 10
        lea     edx, [eax-1H]                           ; 0C76 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 0C79 _ 8B. 45, 08
        mov     dword [eax+10H], edx                    ; 0C7C _ 89. 50, 10
        mov     eax, 1                                  ; 0C7F _ B8, 00000001
?_045:  leave                                           ; 0C84 _ C9
        ret                                             ; 0C85 _ C3
; fifo8_put End of function

fifo8_get:; Function begin
        push    ebp                                     ; 0C86 _ 55
        mov     ebp, esp                                ; 0C87 _ 89. E5
        sub     esp, 16                                 ; 0C89 _ 83. EC, 10
        mov     eax, dword [ebp+8H]                     ; 0C8C _ 8B. 45, 08
        mov     edx, dword [eax+10H]                    ; 0C8F _ 8B. 50, 10
        mov     eax, dword [ebp+8H]                     ; 0C92 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 0C95 _ 8B. 40, 0C
        cmp     edx, eax                                ; 0C98 _ 39. C2
        jnz     ?_046                                   ; 0C9A _ 75, 07
        mov     eax, 4294967295                         ; 0C9C _ B8, FFFFFFFF
        jmp     ?_048                                   ; 0CA1 _ EB, 51

?_046:  mov     eax, dword [ebp+8H]                     ; 0CA3 _ 8B. 45, 08
        mov     edx, dword [eax]                        ; 0CA6 _ 8B. 10
        mov     eax, dword [ebp+8H]                     ; 0CA8 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 0CAB _ 8B. 40, 04
        add     eax, edx                                ; 0CAE _ 01. D0
        movzx   eax, byte [eax]                         ; 0CB0 _ 0F B6. 00
        movzx   eax, al                                 ; 0CB3 _ 0F B6. C0
        mov     dword [ebp-4H], eax                     ; 0CB6 _ 89. 45, FC
        mov     eax, dword [ebp+8H]                     ; 0CB9 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 0CBC _ 8B. 40, 04
        lea     edx, [eax+1H]                           ; 0CBF _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 0CC2 _ 8B. 45, 08
        mov     dword [eax+4H], edx                     ; 0CC5 _ 89. 50, 04
        mov     eax, dword [ebp+8H]                     ; 0CC8 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 0CCB _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 0CCE _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 0CD1 _ 8B. 40, 0C
        cmp     edx, eax                                ; 0CD4 _ 39. C2
        jnz     ?_047                                   ; 0CD6 _ 75, 0A
        mov     eax, dword [ebp+8H]                     ; 0CD8 _ 8B. 45, 08
        mov     dword [eax+4H], 0                       ; 0CDB _ C7. 40, 04, 00000000
?_047:  mov     eax, dword [ebp+8H]                     ; 0CE2 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 0CE5 _ 8B. 40, 10
        lea     edx, [eax+1H]                           ; 0CE8 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 0CEB _ 8B. 45, 08
        mov     dword [eax+10H], edx                    ; 0CEE _ 89. 50, 10
        mov     eax, dword [ebp-4H]                     ; 0CF1 _ 8B. 45, FC
?_048:  leave                                           ; 0CF4 _ C9
        ret                                             ; 0CF5 _ C3
; fifo8_get End of function

fifo8_status:; Function begin
        push    ebp                                     ; 0CF6 _ 55
        mov     ebp, esp                                ; 0CF7 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 0CF9 _ 8B. 45, 08
        mov     edx, dword [eax+0CH]                    ; 0CFC _ 8B. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 0CFF _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 0D02 _ 8B. 40, 10
        sub     edx, eax                                ; 0D05 _ 29. C2
        mov     eax, edx                                ; 0D07 _ 89. D0
        pop     ebp                                     ; 0D09 _ 5D
        ret                                             ; 0D0A _ C3
; fifo8_status End of function

showKeyboardInfo:; Function begin
        push    ebp                                     ; 0D0B _ 55
        mov     ebp, esp                                ; 0D0C _ 89. E5
        sub     esp, 40                                 ; 0D0E _ 83. EC, 28
        call    io_sti                                  ; 0D11 _ E8, FFFFFFFC(rel)
        mov     eax, dword [bootInfo]                   ; 0D16 _ A1, 00000100(d)
        mov     dword [ebp-18H], eax                    ; 0D1B _ 89. 45, E8
        movzx   eax, word [?_095]                       ; 0D1E _ 0F B7. 05, 00000104(d)
        cwde                                            ; 0D25 _ 98
        mov     dword [ebp-14H], eax                    ; 0D26 _ 89. 45, EC
        movzx   eax, word [?_096]                       ; 0D29 _ 0F B7. 05, 00000106(d)
        cwde                                            ; 0D30 _ 98
        mov     dword [ebp-10H], eax                    ; 0D31 _ 89. 45, F0
        mov     byte [ebp-19H], 0                       ; 0D34 _ C6. 45, E7, 00
        sub     esp, 12                                 ; 0D38 _ 83. EC, 0C
        push    keyInfo                                 ; 0D3B _ 68, 00000108(d)
        call    fifo8_get                               ; 0D40 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0D45 _ 83. C4, 10
        mov     byte [ebp-19H], al                      ; 0D48 _ 88. 45, E7
        movzx   eax, byte [ebp-19H]                     ; 0D4B _ 0F B6. 45, E7
        sub     esp, 12                                 ; 0D4F _ 83. EC, 0C
        push    eax                                     ; 0D52 _ 50
        call    charToHex                               ; 0D53 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0D58 _ 83. C4, 10
        mov     dword [ebp-0CH], eax                    ; 0D5B _ 89. 45, F4
        mov     edx, dword [line.1736]                  ; 0D5E _ 8B. 15, 00000204(d)
        mov     eax, dword [pos.1735]                   ; 0D64 _ A1, 00000208(d)
        sub     esp, 8                                  ; 0D69 _ 83. EC, 08
        push    dword [ebp-0CH]                         ; 0D6C _ FF. 75, F4
        push    7                                       ; 0D6F _ 6A, 07
        push    edx                                     ; 0D71 _ 52
        push    eax                                     ; 0D72 _ 50
        push    dword [ebp-14H]                         ; 0D73 _ FF. 75, EC
        push    dword [ebp-18H]                         ; 0D76 _ FF. 75, E8
        call    showString                              ; 0D79 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0D7E _ 83. C4, 20
        mov     eax, dword [pos.1735]                   ; 0D81 _ A1, 00000208(d)
        add     eax, 32                                 ; 0D86 _ 83. C0, 20
        mov     dword [pos.1735], eax                   ; 0D89 _ A3, 00000208(d)
        mov     eax, dword [pos.1735]                   ; 0D8E _ A1, 00000208(d)
        cmp     dword [ebp-14H], eax                    ; 0D93 _ 39. 45, EC
        jnz     ?_051                                   ; 0D96 _ 75, 28
        mov     eax, dword [line.1736]                  ; 0D98 _ A1, 00000204(d)
        cmp     dword [ebp-10H], eax                    ; 0D9D _ 39. 45, F0
        jz      ?_049                                   ; 0DA0 _ 74, 0A
        mov     eax, dword [line.1736]                  ; 0DA2 _ A1, 00000204(d)
        add     eax, 16                                 ; 0DA7 _ 83. C0, 10
        jmp     ?_050                                   ; 0DAA _ EB, 05

?_049:  mov     eax, 0                                  ; 0DAC _ B8, 00000000
?_050:  mov     dword [line.1736], eax                  ; 0DB1 _ A3, 00000204(d)
        mov     dword [pos.1735], 0                     ; 0DB6 _ C7. 05, 00000208(d), 00000000
?_051:  nop                                             ; 0DC0 _ 90
        leave                                           ; 0DC1 _ C9
        ret                                             ; 0DC2 _ C3
; showKeyboardInfo End of function

showMouseInfo:; Function begin
        push    ebp                                     ; 0DC3 _ 55
        mov     ebp, esp                                ; 0DC4 _ 89. E5
        sub     esp, 24                                 ; 0DC6 _ 83. EC, 18
        call    io_sti                                  ; 0DC9 _ E8, FFFFFFFC(rel)
        mov     eax, dword [bootInfo]                   ; 0DCE _ A1, 00000100(d)
        mov     dword [ebp-0CH], eax                    ; 0DD3 _ 89. 45, F4
        mov     byte [ebp-0DH], 0                       ; 0DD6 _ C6. 45, F3, 00
        sub     esp, 12                                 ; 0DDA _ 83. EC, 0C
        push    mouseInfo                               ; 0DDD _ 68, 00000120(d)
        call    fifo8_get                               ; 0DE2 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0DE7 _ 83. C4, 10
        mov     byte [ebp-0DH], al                      ; 0DEA _ 88. 45, F3
        movzx   eax, byte [ebp-0DH]                     ; 0DED _ 0F B6. 45, F3
        sub     esp, 8                                  ; 0DF1 _ 83. EC, 08
        push    eax                                     ; 0DF4 _ 50
        push    mouse_move                              ; 0DF5 _ 68, 000001E0(d)
        call    mouse_decode                            ; 0DFA _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0DFF _ 83. C4, 10
        test    eax, eax                                ; 0E02 _ 85. C0
        jz      ?_052                                   ; 0E04 _ 74, 2C
        sub     esp, 12                                 ; 0E06 _ 83. EC, 0C
        push    dword [ebp-0CH]                         ; 0E09 _ FF. 75, F4
        call    eraseMouse                              ; 0E0C _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0E11 _ 83. C4, 10
        sub     esp, 12                                 ; 0E14 _ 83. EC, 0C
        push    mouse_move                              ; 0E17 _ 68, 000001E0(d)
        call    computeMousePos                         ; 0E1C _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0E21 _ 83. C4, 10
        sub     esp, 12                                 ; 0E24 _ 83. EC, 0C
        push    dword [ebp-0CH]                         ; 0E27 _ FF. 75, F4
        call    drawMouse                               ; 0E2A _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0E2F _ 83. C4, 10
?_052:  nop                                             ; 0E32 _ 90
        leave                                           ; 0E33 _ C9
        ret                                             ; 0E34 _ C3
; showMouseInfo End of function

mouse_decode:; Function begin
        push    ebp                                     ; 0E35 _ 55
        mov     ebp, esp                                ; 0E36 _ 89. E5
        sub     esp, 4                                  ; 0E38 _ 83. EC, 04
        mov     eax, dword [ebp+0CH]                    ; 0E3B _ 8B. 45, 0C
        mov     byte [ebp-4H], al                       ; 0E3E _ 88. 45, FC
        mov     eax, dword [ebp+8H]                     ; 0E41 _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 0E44 _ 0F B6. 40, 03
        test    al, al                                  ; 0E48 _ 84. C0
        jnz     ?_054                                   ; 0E4A _ 75, 17
        cmp     byte [ebp-4H], -6                       ; 0E4C _ 80. 7D, FC, FA
        jnz     ?_053                                   ; 0E50 _ 75, 07
        mov     eax, dword [ebp+8H]                     ; 0E52 _ 8B. 45, 08
        mov     byte [eax+3H], 1                        ; 0E55 _ C6. 40, 03, 01
?_053:  mov     eax, 1                                  ; 0E59 _ B8, 00000001
        jmp     ?_061                                   ; 0E5E _ E9, 0000010C

?_054:  mov     eax, dword [ebp+8H]                     ; 0E63 _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 0E66 _ 0F B6. 40, 03
        cmp     al, 1                                   ; 0E6A _ 3C, 01
        jnz     ?_056                                   ; 0E6C _ 75, 25
        movzx   eax, byte [ebp-4H]                      ; 0E6E _ 0F B6. 45, FC
        or      eax, 37H                                ; 0E72 _ 83. C8, 37
        cmp     al, 63                                  ; 0E75 _ 3C, 3F
        jnz     ?_055                                   ; 0E77 _ 75, 10
        mov     eax, dword [ebp+8H]                     ; 0E79 _ 8B. 45, 08
        movzx   edx, byte [ebp-4H]                      ; 0E7C _ 0F B6. 55, FC
        mov     byte [eax], dl                          ; 0E80 _ 88. 10
        mov     eax, dword [ebp+8H]                     ; 0E82 _ 8B. 45, 08
        mov     byte [eax+3H], 2                        ; 0E85 _ C6. 40, 03, 02
?_055:  mov     eax, 1                                  ; 0E89 _ B8, 00000001
        jmp     ?_061                                   ; 0E8E _ E9, 000000DC

?_056:  mov     eax, dword [ebp+8H]                     ; 0E93 _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 0E96 _ 0F B6. 40, 03
        cmp     al, 2                                   ; 0E9A _ 3C, 02
        jnz     ?_057                                   ; 0E9C _ 75, 1B
        mov     eax, dword [ebp+8H]                     ; 0E9E _ 8B. 45, 08
        movzx   edx, byte [ebp-4H]                      ; 0EA1 _ 0F B6. 55, FC
        mov     byte [eax+1H], dl                       ; 0EA5 _ 88. 50, 01
        mov     eax, dword [ebp+8H]                     ; 0EA8 _ 8B. 45, 08
        mov     byte [eax+3H], 3                        ; 0EAB _ C6. 40, 03, 03
        mov     eax, 1                                  ; 0EAF _ B8, 00000001
        jmp     ?_061                                   ; 0EB4 _ E9, 000000B6

?_057:  mov     eax, dword [ebp+8H]                     ; 0EB9 _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 0EBC _ 0F B6. 40, 03
        cmp     al, 3                                   ; 0EC0 _ 3C, 03
        jne     ?_060                                   ; 0EC2 _ 0F 85, 000000A2
        mov     eax, dword [ebp+8H]                     ; 0EC8 _ 8B. 45, 08
        movzx   edx, byte [ebp-4H]                      ; 0ECB _ 0F B6. 55, FC
        mov     byte [eax+2H], dl                       ; 0ECF _ 88. 50, 02
        mov     eax, dword [ebp+8H]                     ; 0ED2 _ 8B. 45, 08
        mov     byte [eax+3H], 1                        ; 0ED5 _ C6. 40, 03, 01
        mov     eax, dword [ebp+8H]                     ; 0ED9 _ 8B. 45, 08
        movzx   eax, byte [eax]                         ; 0EDC _ 0F B6. 00
        movzx   eax, al                                 ; 0EDF _ 0F B6. C0
        and     eax, 07H                                ; 0EE2 _ 83. E0, 07
        mov     edx, eax                                ; 0EE5 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 0EE7 _ 8B. 45, 08
        mov     dword [eax+0CH], edx                    ; 0EEA _ 89. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 0EED _ 8B. 45, 08
        movzx   eax, byte [eax+1H]                      ; 0EF0 _ 0F B6. 40, 01
        movzx   edx, al                                 ; 0EF4 _ 0F B6. D0
        mov     eax, dword [ebp+8H]                     ; 0EF7 _ 8B. 45, 08
        mov     dword [eax+4H], edx                     ; 0EFA _ 89. 50, 04
        mov     eax, dword [ebp+8H]                     ; 0EFD _ 8B. 45, 08
        movzx   eax, byte [eax+2H]                      ; 0F00 _ 0F B6. 40, 02
        movzx   edx, al                                 ; 0F04 _ 0F B6. D0
        mov     eax, dword [ebp+8H]                     ; 0F07 _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 0F0A _ 89. 50, 08
        mov     eax, dword [ebp+8H]                     ; 0F0D _ 8B. 45, 08
        movzx   eax, byte [eax]                         ; 0F10 _ 0F B6. 00
        movzx   eax, al                                 ; 0F13 _ 0F B6. C0
        and     eax, 10H                                ; 0F16 _ 83. E0, 10
        test    eax, eax                                ; 0F19 _ 85. C0
        jz      ?_058                                   ; 0F1B _ 74, 13
        mov     eax, dword [ebp+8H]                     ; 0F1D _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 0F20 _ 8B. 40, 04
        or      eax, 0FFFFFF00H                         ; 0F23 _ 0D, FFFFFF00
        mov     edx, eax                                ; 0F28 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 0F2A _ 8B. 45, 08
        mov     dword [eax+4H], edx                     ; 0F2D _ 89. 50, 04
?_058:  mov     eax, dword [ebp+8H]                     ; 0F30 _ 8B. 45, 08
        movzx   eax, byte [eax]                         ; 0F33 _ 0F B6. 00
        movzx   eax, al                                 ; 0F36 _ 0F B6. C0
        and     eax, 20H                                ; 0F39 _ 83. E0, 20
        test    eax, eax                                ; 0F3C _ 85. C0
        jz      ?_059                                   ; 0F3E _ 74, 13
        mov     eax, dword [ebp+8H]                     ; 0F40 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 0F43 _ 8B. 40, 08
        or      eax, 0FFFFFF00H                         ; 0F46 _ 0D, FFFFFF00
        mov     edx, eax                                ; 0F4B _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 0F4D _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 0F50 _ 89. 50, 08
?_059:  mov     eax, dword [ebp+8H]                     ; 0F53 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 0F56 _ 8B. 40, 08
        neg     eax                                     ; 0F59 _ F7. D8
        mov     edx, eax                                ; 0F5B _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 0F5D _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 0F60 _ 89. 50, 08
        mov     eax, 1                                  ; 0F63 _ B8, 00000001
        jmp     ?_061                                   ; 0F68 _ EB, 05

?_060:  mov     eax, 0                                  ; 0F6A _ B8, 00000000
?_061:  leave                                           ; 0F6F _ C9
        ret                                             ; 0F70 _ C3
; mouse_decode End of function

computeMousePos:; Function begin
        push    ebp                                     ; 0F71 _ 55
        mov     ebp, esp                                ; 0F72 _ 89. E5
        sub     esp, 16                                 ; 0F74 _ 83. EC, 10
        movzx   eax, word [?_095]                       ; 0F77 _ 0F B7. 05, 00000104(d)
        cwde                                            ; 0F7E _ 98
        mov     dword [ebp-8H], eax                     ; 0F7F _ 89. 45, F8
        movzx   eax, word [?_096]                       ; 0F82 _ 0F B7. 05, 00000106(d)
        cwde                                            ; 0F89 _ 98
        mov     dword [ebp-4H], eax                     ; 0F8A _ 89. 45, FC
        mov     eax, dword [ebp+8H]                     ; 0F8D _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 0F90 _ 8B. 50, 04
        mov     eax, dword [mx]                         ; 0F93 _ A1, 000001F0(d)
        add     eax, edx                                ; 0F98 _ 01. D0
        mov     dword [mx], eax                         ; 0F9A _ A3, 000001F0(d)
        mov     eax, dword [ebp+8H]                     ; 0F9F _ 8B. 45, 08
        mov     edx, dword [eax+8H]                     ; 0FA2 _ 8B. 50, 08
        mov     eax, dword [my]                         ; 0FA5 _ A1, 000001F4(d)
        add     eax, edx                                ; 0FAA _ 01. D0
        mov     dword [my], eax                         ; 0FAC _ A3, 000001F4(d)
        mov     eax, dword [mx]                         ; 0FB1 _ A1, 000001F0(d)
        test    eax, eax                                ; 0FB6 _ 85. C0
        jns     ?_062                                   ; 0FB8 _ 79, 0A
        mov     dword [mx], 0                           ; 0FBA _ C7. 05, 000001F0(d), 00000000
?_062:  mov     eax, dword [my]                         ; 0FC4 _ A1, 000001F4(d)
        test    eax, eax                                ; 0FC9 _ 85. C0
        jns     ?_063                                   ; 0FCB _ 79, 0A
        mov     dword [my], 0                           ; 0FCD _ C7. 05, 000001F4(d), 00000000
?_063:  mov     eax, dword [ebp-8H]                     ; 0FD7 _ 8B. 45, F8
        lea     edx, [eax-9H]                           ; 0FDA _ 8D. 50, F7
        mov     eax, dword [mx]                         ; 0FDD _ A1, 000001F0(d)
        cmp     edx, eax                                ; 0FE2 _ 39. C2
        jge     ?_064                                   ; 0FE4 _ 7D, 0B
        mov     eax, dword [ebp-8H]                     ; 0FE6 _ 8B. 45, F8
        sub     eax, 9                                  ; 0FE9 _ 83. E8, 09
        mov     dword [mx], eax                         ; 0FEC _ A3, 000001F0(d)
?_064:  mov     eax, dword [ebp-4H]                     ; 0FF1 _ 8B. 45, FC
        lea     edx, [eax-1H]                           ; 0FF4 _ 8D. 50, FF
        mov     eax, dword [my]                         ; 0FF7 _ A1, 000001F4(d)
        cmp     edx, eax                                ; 0FFC _ 39. C2
        jge     ?_065                                   ; 0FFE _ 7D, 0B
        mov     eax, dword [ebp-4H]                     ; 1000 _ 8B. 45, FC
        sub     eax, 1                                  ; 1003 _ 83. E8, 01
        mov     dword [my], eax                         ; 1006 _ A3, 000001F4(d)
?_065:  nop                                             ; 100B _ 90
        leave                                           ; 100C _ C9
        ret                                             ; 100D _ C3
; computeMousePos End of function

eraseMouse:; Function begin
        push    ebp                                     ; 100E _ 55
        mov     ebp, esp                                ; 100F _ 89. E5
        push    edi                                     ; 1011 _ 57
        push    esi                                     ; 1012 _ 56
        push    ebx                                     ; 1013 _ 53
        mov     eax, dword [my]                         ; 1014 _ A1, 000001F4(d)
        lea     edi, [eax+0FH]                          ; 1019 _ 8D. 78, 0F
        mov     eax, dword [mx]                         ; 101C _ A1, 000001F0(d)
        lea     esi, [eax+0FH]                          ; 1021 _ 8D. 70, 0F
        mov     ebx, dword [my]                         ; 1024 _ 8B. 1D, 000001F4(d)
        mov     ecx, dword [mx]                         ; 102A _ 8B. 0D, 000001F0(d)
        movzx   eax, word [?_095]                       ; 1030 _ 0F B7. 05, 00000104(d)
        movsx   edx, ax                                 ; 1037 _ 0F BF. D0
        mov     eax, dword [bootInfo]                   ; 103A _ A1, 00000100(d)
        push    edi                                     ; 103F _ 57
        push    esi                                     ; 1040 _ 56
        push    ebx                                     ; 1041 _ 53
        push    ecx                                     ; 1042 _ 51
        push    14                                      ; 1043 _ 6A, 0E
        push    edx                                     ; 1045 _ 52
        push    eax                                     ; 1046 _ 50
        call    boxfill8                                ; 1047 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 104C _ 83. C4, 1C
        nop                                             ; 104F _ 90
        lea     esp, [ebp-0CH]                          ; 1050 _ 8D. 65, F4
        pop     ebx                                     ; 1053 _ 5B
        pop     esi                                     ; 1054 _ 5E
        pop     edi                                     ; 1055 _ 5F
        pop     ebp                                     ; 1056 _ 5D
        ret                                             ; 1057 _ C3
; eraseMouse End of function

drawMouse:; Function begin
        push    ebp                                     ; 1058 _ 55
        mov     ebp, esp                                ; 1059 _ 89. E5
        push    ebx                                     ; 105B _ 53
        mov     ebx, dword [my]                         ; 105C _ 8B. 1D, 000001F4(d)
        mov     ecx, dword [mx]                         ; 1062 _ 8B. 0D, 000001F0(d)
        movzx   eax, word [?_095]                       ; 1068 _ 0F B7. 05, 00000104(d)
        movsx   edx, ax                                 ; 106F _ 0F BF. D0
        mov     eax, dword [bootInfo]                   ; 1072 _ A1, 00000100(d)
        push    16                                      ; 1077 _ 6A, 10
        push    mcursor                                 ; 1079 _ 68, 00000000(d)
        push    ebx                                     ; 107E _ 53
        push    ecx                                     ; 107F _ 51
        push    16                                      ; 1080 _ 6A, 10
        push    16                                      ; 1082 _ 6A, 10
        push    edx                                     ; 1084 _ 52
        push    eax                                     ; 1085 _ 50
        call    putblock                                ; 1086 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 108B _ 83. C4, 20
        nop                                             ; 108E _ 90
        mov     ebx, dword [ebp-4H]                     ; 108F _ 8B. 5D, FC
        leave                                           ; 1092 _ C9
        ret                                             ; 1093 _ C3
; drawMouse End of function

showMemInfo:; Function begin
        push    ebp                                     ; 1094 _ 55
        mov     ebp, esp                                ; 1095 _ 89. E5
        sub     esp, 56                                 ; 1097 _ 83. EC, 38
        mov     dword [ebp-30H], 0                      ; 109A _ C7. 45, D0, 00000000
        mov     dword [ebp-2CH], 0                      ; 10A1 _ C7. 45, D4, 00000000
        mov     dword [ebp-28H], 112                    ; 10A8 _ C7. 45, D8, 00000070
        mov     dword [ebp-24H], 80                     ; 10AF _ C7. 45, DC, 00000050
        push    100                                     ; 10B6 _ 6A, 64
        push    dword [ebp+14H]                         ; 10B8 _ FF. 75, 14
        push    0                                       ; 10BB _ 6A, 00
        push    0                                       ; 10BD _ 6A, 00
        push    14                                      ; 10BF _ 6A, 0E
        push    dword [ebp+14H]                         ; 10C1 _ FF. 75, 14
        push    dword [ebp+0CH]                         ; 10C4 _ FF. 75, 0C
        call    boxfill8                                ; 10C7 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 10CC _ 83. C4, 1C
        mov     eax, dword [ebp+18H]                    ; 10CF _ 8B. 45, 18
        movsx   eax, al                                 ; 10D2 _ 0F BE. C0
        sub     esp, 8                                  ; 10D5 _ 83. EC, 08
        push    ?_087                                   ; 10D8 _ 68, 00000017(d)
        push    eax                                     ; 10DD _ 50
        push    dword [ebp-2CH]                         ; 10DE _ FF. 75, D4
        push    dword [ebp-30H]                         ; 10E1 _ FF. 75, D0
        push    dword [ebp+14H]                         ; 10E4 _ FF. 75, 14
        push    dword [ebp+0CH]                         ; 10E7 _ FF. 75, 0C
        call    showString                              ; 10EA _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 10EF _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 10F2 _ 8B. 45, 10
        sub     esp, 12                                 ; 10F5 _ 83. EC, 0C
        push    eax                                     ; 10F8 _ 50
        call    intToHexStr                             ; 10F9 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 10FE _ 83. C4, 10
        mov     dword [ebp-20H], eax                    ; 1101 _ 89. 45, E0
        mov     eax, dword [ebp+18H]                    ; 1104 _ 8B. 45, 18
        movsx   eax, al                                 ; 1107 _ 0F BE. C0
        sub     esp, 8                                  ; 110A _ 83. EC, 08
        push    dword [ebp-20H]                         ; 110D _ FF. 75, E0
        push    eax                                     ; 1110 _ 50
        push    dword [ebp-2CH]                         ; 1111 _ FF. 75, D4
        push    dword [ebp-28H]                         ; 1114 _ FF. 75, D8
        push    dword [ebp+14H]                         ; 1117 _ FF. 75, 14
        push    dword [ebp+0CH]                         ; 111A _ FF. 75, 0C
        call    showString                              ; 111D _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1122 _ 83. C4, 20
        add     dword [ebp-2CH], 16                     ; 1125 _ 83. 45, D4, 10
        mov     eax, dword [ebp+18H]                    ; 1129 _ 8B. 45, 18
        movsx   eax, al                                 ; 112C _ 0F BE. C0
        sub     esp, 8                                  ; 112F _ 83. EC, 08
        push    ?_088                                   ; 1132 _ 68, 00000021(d)
        push    eax                                     ; 1137 _ 50
        push    dword [ebp-2CH]                         ; 1138 _ FF. 75, D4
        push    dword [ebp-30H]                         ; 113B _ FF. 75, D0
        push    dword [ebp+14H]                         ; 113E _ FF. 75, 14
        push    dword [ebp+0CH]                         ; 1141 _ FF. 75, 0C
        call    showString                              ; 1144 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1149 _ 83. C4, 20
        mov     eax, dword [ebp+8H]                     ; 114C _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 114F _ 8B. 00
        sub     esp, 12                                 ; 1151 _ 83. EC, 0C
        push    eax                                     ; 1154 _ 50
        call    intToHexStr                             ; 1155 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 115A _ 83. C4, 10
        mov     dword [ebp-1CH], eax                    ; 115D _ 89. 45, E4
        mov     eax, dword [ebp+18H]                    ; 1160 _ 8B. 45, 18
        movsx   eax, al                                 ; 1163 _ 0F BE. C0
        sub     esp, 8                                  ; 1166 _ 83. EC, 08
        push    dword [ebp-1CH]                         ; 1169 _ FF. 75, E4
        push    eax                                     ; 116C _ 50
        push    dword [ebp-2CH]                         ; 116D _ FF. 75, D4
        push    dword [ebp-28H]                         ; 1170 _ FF. 75, D8
        push    dword [ebp+14H]                         ; 1173 _ FF. 75, 14
        push    dword [ebp+0CH]                         ; 1176 _ FF. 75, 0C
        call    showString                              ; 1179 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 117E _ 83. C4, 20
        add     dword [ebp-2CH], 16                     ; 1181 _ 83. 45, D4, 10
        mov     eax, dword [ebp+18H]                    ; 1185 _ 8B. 45, 18
        movsx   eax, al                                 ; 1188 _ 0F BE. C0
        sub     esp, 8                                  ; 118B _ 83. EC, 08
        push    ?_089                                   ; 118E _ 68, 0000002F(d)
        push    eax                                     ; 1193 _ 50
        push    dword [ebp-2CH]                         ; 1194 _ FF. 75, D4
        push    dword [ebp-30H]                         ; 1197 _ FF. 75, D0
        push    dword [ebp+14H]                         ; 119A _ FF. 75, 14
        push    dword [ebp+0CH]                         ; 119D _ FF. 75, 0C
        call    showString                              ; 11A0 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 11A5 _ 83. C4, 20
        mov     eax, dword [ebp+8H]                     ; 11A8 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 11AB _ 8B. 40, 04
        sub     esp, 12                                 ; 11AE _ 83. EC, 0C
        push    eax                                     ; 11B1 _ 50
        call    intToHexStr                             ; 11B2 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 11B7 _ 83. C4, 10
        mov     dword [ebp-18H], eax                    ; 11BA _ 89. 45, E8
        mov     eax, dword [ebp+18H]                    ; 11BD _ 8B. 45, 18
        movsx   eax, al                                 ; 11C0 _ 0F BE. C0
        sub     esp, 8                                  ; 11C3 _ 83. EC, 08
        push    dword [ebp-18H]                         ; 11C6 _ FF. 75, E8
        push    eax                                     ; 11C9 _ 50
        push    dword [ebp-2CH]                         ; 11CA _ FF. 75, D4
        push    dword [ebp-28H]                         ; 11CD _ FF. 75, D8
        push    dword [ebp+14H]                         ; 11D0 _ FF. 75, 14
        push    dword [ebp+0CH]                         ; 11D3 _ FF. 75, 0C
        call    showString                              ; 11D6 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 11DB _ 83. C4, 20
        add     dword [ebp-2CH], 16                     ; 11DE _ 83. 45, D4, 10
        mov     eax, dword [ebp+18H]                    ; 11E2 _ 8B. 45, 18
        movsx   eax, al                                 ; 11E5 _ 0F BE. C0
        sub     esp, 8                                  ; 11E8 _ 83. EC, 08
        push    ?_090                                   ; 11EB _ 68, 0000003E(d)
        push    eax                                     ; 11F0 _ 50
        push    dword [ebp-2CH]                         ; 11F1 _ FF. 75, D4
        push    dword [ebp-30H]                         ; 11F4 _ FF. 75, D0
        push    dword [ebp+14H]                         ; 11F7 _ FF. 75, 14
        push    dword [ebp+0CH]                         ; 11FA _ FF. 75, 0C
        call    showString                              ; 11FD _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1202 _ 83. C4, 20
        mov     eax, dword [ebp+8H]                     ; 1205 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 1208 _ 8B. 40, 08
        sub     esp, 12                                 ; 120B _ 83. EC, 0C
        push    eax                                     ; 120E _ 50
        call    intToHexStr                             ; 120F _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1214 _ 83. C4, 10
        mov     dword [ebp-14H], eax                    ; 1217 _ 89. 45, EC
        mov     eax, dword [ebp+18H]                    ; 121A _ 8B. 45, 18
        movsx   eax, al                                 ; 121D _ 0F BE. C0
        sub     esp, 8                                  ; 1220 _ 83. EC, 08
        push    dword [ebp-14H]                         ; 1223 _ FF. 75, EC
        push    eax                                     ; 1226 _ 50
        push    dword [ebp-2CH]                         ; 1227 _ FF. 75, D4
        push    dword [ebp-28H]                         ; 122A _ FF. 75, D8
        push    dword [ebp+14H]                         ; 122D _ FF. 75, 14
        push    dword [ebp+0CH]                         ; 1230 _ FF. 75, 0C
        call    showString                              ; 1233 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1238 _ 83. C4, 20
        add     dword [ebp-2CH], 16                     ; 123B _ 83. 45, D4, 10
        mov     eax, dword [ebp+18H]                    ; 123F _ 8B. 45, 18
        movsx   eax, al                                 ; 1242 _ 0F BE. C0
        sub     esp, 8                                  ; 1245 _ 83. EC, 08
        push    ?_091                                   ; 1248 _ 68, 0000004A(d)
        push    eax                                     ; 124D _ 50
        push    dword [ebp-2CH]                         ; 124E _ FF. 75, D4
        push    dword [ebp-30H]                         ; 1251 _ FF. 75, D0
        push    dword [ebp+14H]                         ; 1254 _ FF. 75, 14
        push    dword [ebp+0CH]                         ; 1257 _ FF. 75, 0C
        call    showString                              ; 125A _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 125F _ 83. C4, 20
        mov     eax, dword [ebp+8H]                     ; 1262 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 1265 _ 8B. 40, 0C
        sub     esp, 12                                 ; 1268 _ 83. EC, 0C
        push    eax                                     ; 126B _ 50
        call    intToHexStr                             ; 126C _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1271 _ 83. C4, 10
        mov     dword [ebp-10H], eax                    ; 1274 _ 89. 45, F0
        mov     eax, dword [ebp+18H]                    ; 1277 _ 8B. 45, 18
        movsx   eax, al                                 ; 127A _ 0F BE. C0
        sub     esp, 8                                  ; 127D _ 83. EC, 08
        push    dword [ebp-10H]                         ; 1280 _ FF. 75, F0
        push    eax                                     ; 1283 _ 50
        push    dword [ebp-2CH]                         ; 1284 _ FF. 75, D4
        push    dword [ebp-28H]                         ; 1287 _ FF. 75, D8
        push    dword [ebp+14H]                         ; 128A _ FF. 75, 14
        push    dword [ebp+0CH]                         ; 128D _ FF. 75, 0C
        call    showString                              ; 1290 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1295 _ 83. C4, 20
        add     dword [ebp-2CH], 16                     ; 1298 _ 83. 45, D4, 10
        mov     eax, dword [ebp+18H]                    ; 129C _ 8B. 45, 18
        movsx   eax, al                                 ; 129F _ 0F BE. C0
        sub     esp, 8                                  ; 12A2 _ 83. EC, 08
        push    ?_092                                   ; 12A5 _ 68, 00000057(d)
        push    eax                                     ; 12AA _ 50
        push    dword [ebp-2CH]                         ; 12AB _ FF. 75, D4
        push    dword [ebp-30H]                         ; 12AE _ FF. 75, D0
        push    dword [ebp+14H]                         ; 12B1 _ FF. 75, 14
        push    dword [ebp+0CH]                         ; 12B4 _ FF. 75, 0C
        call    showString                              ; 12B7 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 12BC _ 83. C4, 20
        mov     eax, dword [ebp+8H]                     ; 12BF _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 12C2 _ 8B. 40, 10
        sub     esp, 12                                 ; 12C5 _ 83. EC, 0C
        push    eax                                     ; 12C8 _ 50
        call    intToHexStr                             ; 12C9 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 12CE _ 83. C4, 10
        mov     dword [ebp-0CH], eax                    ; 12D1 _ 89. 45, F4
        mov     eax, dword [ebp+18H]                    ; 12D4 _ 8B. 45, 18
        movsx   eax, al                                 ; 12D7 _ 0F BE. C0
        sub     esp, 8                                  ; 12DA _ 83. EC, 08
        push    dword [ebp-0CH]                         ; 12DD _ FF. 75, F4
        push    eax                                     ; 12E0 _ 50
        push    dword [ebp-2CH]                         ; 12E1 _ FF. 75, D4
        push    dword [ebp-28H]                         ; 12E4 _ FF. 75, D8
        push    dword [ebp+14H]                         ; 12E7 _ FF. 75, 14
        push    dword [ebp+0CH]                         ; 12EA _ FF. 75, 0C
        call    showString                              ; 12ED _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 12F2 _ 83. C4, 20
        add     dword [ebp-2CH], 16                     ; 12F5 _ 83. 45, D4, 10
        nop                                             ; 12F9 _ 90
        leave                                           ; 12FA _ C9
        ret                                             ; 12FB _ C3
; showMemInfo End of function

memman_init:; Function begin
        push    ebp                                     ; 12FC _ 55
        mov     ebp, esp                                ; 12FD _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 12FF _ 8B. 45, 08
        mov     dword [eax], 0                          ; 1302 _ C7. 00, 00000000
        mov     eax, dword [ebp+8H]                     ; 1308 _ 8B. 45, 08
        mov     dword [eax+4H], 0                       ; 130B _ C7. 40, 04, 00000000
        mov     eax, dword [ebp+8H]                     ; 1312 _ 8B. 45, 08
        mov     dword [eax+8H], 0                       ; 1315 _ C7. 40, 08, 00000000
        mov     eax, dword [ebp+8H]                     ; 131C _ 8B. 45, 08
        mov     dword [eax+0CH], 0                      ; 131F _ C7. 40, 0C, 00000000
        nop                                             ; 1326 _ 90
        pop     ebp                                     ; 1327 _ 5D
        ret                                             ; 1328 _ C3
; memman_init End of function

memman_total:; Function begin
        push    ebp                                     ; 1329 _ 55
        mov     ebp, esp                                ; 132A _ 89. E5
        sub     esp, 16                                 ; 132C _ 83. EC, 10
        mov     dword [ebp-8H], 0                       ; 132F _ C7. 45, F8, 00000000
        mov     dword [ebp-4H], 0                       ; 1336 _ C7. 45, FC, 00000000
        jmp     ?_067                                   ; 133D _ EB, 14

?_066:  mov     eax, dword [ebp+8H]                     ; 133F _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 1342 _ 8B. 55, FC
        add     edx, 2                                  ; 1345 _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 1348 _ 8B. 44 D0, 04
        add     dword [ebp-8H], eax                     ; 134C _ 01. 45, F8
        add     dword [ebp-4H], 1                       ; 134F _ 83. 45, FC, 01
?_067:  mov     eax, dword [ebp+8H]                     ; 1353 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 1356 _ 8B. 00
        cmp     dword [ebp-4H], eax                     ; 1358 _ 39. 45, FC
        jl      ?_066                                   ; 135B _ 7C, E2
        mov     eax, dword [ebp-8H]                     ; 135D _ 8B. 45, F8
        leave                                           ; 1360 _ C9
        ret                                             ; 1361 _ C3
; memman_total End of function

memman_alloc_FF:; Function begin
        push    ebp                                     ; 1362 _ 55
        mov     ebp, esp                                ; 1363 _ 89. E5
        sub     esp, 16                                 ; 1365 _ 83. EC, 10
        mov     dword [ebp-4H], 0                       ; 1368 _ C7. 45, FC, 00000000
        mov     dword [ebp-8H], 0                       ; 136F _ C7. 45, F8, 00000000
        jmp     ?_071                                   ; 1376 _ EB, 67

?_068:  mov     eax, dword [ebp+8H]                     ; 1378 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 137B _ 8B. 55, F8
        add     edx, 2                                  ; 137E _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 1381 _ 8B. 44 D0, 04
        cmp     dword [ebp+0CH], eax                    ; 1385 _ 39. 45, 0C
        ja      ?_070                                   ; 1388 _ 77, 51
        mov     eax, dword [ebp+8H]                     ; 138A _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 138D _ 8B. 55, F8
        add     edx, 2                                  ; 1390 _ 83. C2, 02
        mov     eax, dword [eax+edx*8]                  ; 1393 _ 8B. 04 D0
        mov     dword [ebp-4H], eax                     ; 1396 _ 89. 45, FC
        mov     eax, dword [ebp+8H]                     ; 1399 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 139C _ 8B. 55, F8
        add     edx, 2                                  ; 139F _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 13A2 _ 8B. 44 D0, 04
        sub     eax, dword [ebp+0CH]                    ; 13A6 _ 2B. 45, 0C
        mov     edx, eax                                ; 13A9 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 13AB _ 8B. 45, 08
        mov     ecx, dword [ebp-8H]                     ; 13AE _ 8B. 4D, F8
        add     ecx, 2                                  ; 13B1 _ 83. C1, 02
        mov     dword [eax+ecx*8+4H], edx               ; 13B4 _ 89. 54 C8, 04
        mov     eax, dword [ebp+8H]                     ; 13B8 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 13BB _ 8B. 55, F8
        add     edx, 2                                  ; 13BE _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 13C1 _ 8B. 44 D0, 04
        test    eax, eax                                ; 13C5 _ 85. C0
        jnz     ?_069                                   ; 13C7 _ 75, 0D
        mov     eax, dword [ebp+8H]                     ; 13C9 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 13CC _ 8B. 00
        lea     edx, [eax-1H]                           ; 13CE _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 13D1 _ 8B. 45, 08
        mov     dword [eax], edx                        ; 13D4 _ 89. 10
?_069:  mov     eax, dword [ebp-4H]                     ; 13D6 _ 8B. 45, FC
        jmp     ?_072                                   ; 13D9 _ EB, 13

?_070:  add     dword [ebp-8H], 1                       ; 13DB _ 83. 45, F8, 01
?_071:  mov     eax, dword [ebp+8H]                     ; 13DF _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 13E2 _ 8B. 00
        cmp     dword [ebp-8H], eax                     ; 13E4 _ 39. 45, F8
        jl      ?_068                                   ; 13E7 _ 7C, 8F
        mov     eax, 0                                  ; 13E9 _ B8, 00000000
?_072:  leave                                           ; 13EE _ C9
        ret                                             ; 13EF _ C3
; memman_alloc_FF End of function

memman_free:; Function begin
        push    ebp                                     ; 13F0 _ 55
        mov     ebp, esp                                ; 13F1 _ 89. E5
        push    ebx                                     ; 13F3 _ 53
        sub     esp, 16                                 ; 13F4 _ 83. EC, 10
        mov     dword [ebp-0CH], 0                      ; 13F7 _ C7. 45, F4, 00000000
        jmp     ?_074                                   ; 13FE _ EB, 15

?_073:  mov     eax, dword [ebp+8H]                     ; 1400 _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 1403 _ 8B. 55, F4
        add     edx, 2                                  ; 1406 _ 83. C2, 02
        mov     eax, dword [eax+edx*8]                  ; 1409 _ 8B. 04 D0
        cmp     dword [ebp+0CH], eax                    ; 140C _ 39. 45, 0C
        jc      ?_075                                   ; 140F _ 72, 10
        add     dword [ebp-0CH], 1                      ; 1411 _ 83. 45, F4, 01
?_074:  mov     eax, dword [ebp+8H]                     ; 1415 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 1418 _ 8B. 00
        cmp     dword [ebp-0CH], eax                    ; 141A _ 39. 45, F4
        jl      ?_073                                   ; 141D _ 7C, E1
        jmp     ?_076                                   ; 141F _ EB, 01

?_075:  nop                                             ; 1421 _ 90
?_076:  cmp     dword [ebp-0CH], 0                      ; 1422 _ 83. 7D, F4, 00
        jle     ?_078                                   ; 1426 _ 0F 8E, 000000BA
        mov     eax, dword [ebp-0CH]                    ; 142C _ 8B. 45, F4
        lea     edx, [eax-1H]                           ; 142F _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 1432 _ 8B. 45, 08
        add     edx, 2                                  ; 1435 _ 83. C2, 02
        mov     edx, dword [eax+edx*8]                  ; 1438 _ 8B. 14 D0
        mov     eax, dword [ebp-0CH]                    ; 143B _ 8B. 45, F4
        lea     ecx, [eax-1H]                           ; 143E _ 8D. 48, FF
        mov     eax, dword [ebp+8H]                     ; 1441 _ 8B. 45, 08
        add     ecx, 2                                  ; 1444 _ 83. C1, 02
        mov     eax, dword [eax+ecx*8+4H]               ; 1447 _ 8B. 44 C8, 04
        add     eax, edx                                ; 144B _ 01. D0
        cmp     dword [ebp+0CH], eax                    ; 144D _ 39. 45, 0C
        jne     ?_078                                   ; 1450 _ 0F 85, 00000090
        mov     eax, dword [ebp-0CH]                    ; 1456 _ 8B. 45, F4
        lea     edx, [eax-1H]                           ; 1459 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 145C _ 8B. 45, 08
        add     edx, 2                                  ; 145F _ 83. C2, 02
        mov     edx, dword [eax+edx*8+4H]               ; 1462 _ 8B. 54 D0, 04
        mov     eax, dword [ebp-0CH]                    ; 1466 _ 8B. 45, F4
        lea     ebx, [eax-1H]                           ; 1469 _ 8D. 58, FF
        mov     eax, dword [ebp+10H]                    ; 146C _ 8B. 45, 10
        lea     ecx, [edx+eax]                          ; 146F _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 1472 _ 8B. 45, 08
        lea     edx, [ebx+2H]                           ; 1475 _ 8D. 53, 02
        mov     dword [eax+edx*8+4H], ecx               ; 1478 _ 89. 4C D0, 04
        mov     eax, dword [ebp+8H]                     ; 147C _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 147F _ 8B. 00
        cmp     dword [ebp-0CH], eax                    ; 1481 _ 39. 45, F4
        jge     ?_077                                   ; 1484 _ 7D, 56
        mov     edx, dword [ebp+0CH]                    ; 1486 _ 8B. 55, 0C
        mov     eax, dword [ebp+10H]                    ; 1489 _ 8B. 45, 10
        lea     ecx, [edx+eax]                          ; 148C _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 148F _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 1492 _ 8B. 55, F4
        add     edx, 2                                  ; 1495 _ 83. C2, 02
        mov     eax, dword [eax+edx*8]                  ; 1498 _ 8B. 04 D0
        cmp     ecx, eax                                ; 149B _ 39. C1
        jnz     ?_077                                   ; 149D _ 75, 3D
        mov     eax, dword [ebp-0CH]                    ; 149F _ 8B. 45, F4
        lea     edx, [eax-1H]                           ; 14A2 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 14A5 _ 8B. 45, 08
        add     edx, 2                                  ; 14A8 _ 83. C2, 02
        mov     edx, dword [eax+edx*8+4H]               ; 14AB _ 8B. 54 D0, 04
        mov     eax, dword [ebp+8H]                     ; 14AF _ 8B. 45, 08
        mov     ecx, dword [ebp-0CH]                    ; 14B2 _ 8B. 4D, F4
        add     ecx, 2                                  ; 14B5 _ 83. C1, 02
        mov     eax, dword [eax+ecx*8+4H]               ; 14B8 _ 8B. 44 C8, 04
        mov     ecx, dword [ebp-0CH]                    ; 14BC _ 8B. 4D, F4
        lea     ebx, [ecx-1H]                           ; 14BF _ 8D. 59, FF
        lea     ecx, [edx+eax]                          ; 14C2 _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 14C5 _ 8B. 45, 08
        lea     edx, [ebx+2H]                           ; 14C8 _ 8D. 53, 02
        mov     dword [eax+edx*8+4H], ecx               ; 14CB _ 89. 4C D0, 04
        mov     eax, dword [ebp+8H]                     ; 14CF _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 14D2 _ 8B. 00
        lea     edx, [eax-1H]                           ; 14D4 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 14D7 _ 8B. 45, 08
        mov     dword [eax], edx                        ; 14DA _ 89. 10
?_077:  mov     eax, 0                                  ; 14DC _ B8, 00000000
        jmp     ?_084                                   ; 14E1 _ E9, 0000011C

?_078:  mov     eax, dword [ebp+8H]                     ; 14E6 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 14E9 _ 8B. 00
        cmp     dword [ebp-0CH], eax                    ; 14EB _ 39. 45, F4
        jge     ?_079                                   ; 14EE _ 7D, 52
        mov     edx, dword [ebp+0CH]                    ; 14F0 _ 8B. 55, 0C
        mov     eax, dword [ebp+10H]                    ; 14F3 _ 8B. 45, 10
        lea     ecx, [edx+eax]                          ; 14F6 _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 14F9 _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 14FC _ 8B. 55, F4
        add     edx, 2                                  ; 14FF _ 83. C2, 02
        mov     eax, dword [eax+edx*8]                  ; 1502 _ 8B. 04 D0
        cmp     ecx, eax                                ; 1505 _ 39. C1
        jnz     ?_079                                   ; 1507 _ 75, 39
        mov     eax, dword [ebp+8H]                     ; 1509 _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 150C _ 8B. 55, F4
        lea     ecx, [edx+2H]                           ; 150F _ 8D. 4A, 02
        mov     edx, dword [ebp+0CH]                    ; 1512 _ 8B. 55, 0C
        mov     dword [eax+ecx*8], edx                  ; 1515 _ 89. 14 C8
        mov     eax, dword [ebp+8H]                     ; 1518 _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 151B _ 8B. 55, F4
        add     edx, 2                                  ; 151E _ 83. C2, 02
        mov     edx, dword [eax+edx*8+4H]               ; 1521 _ 8B. 54 D0, 04
        mov     eax, dword [ebp+10H]                    ; 1525 _ 8B. 45, 10
        lea     ecx, [edx+eax]                          ; 1528 _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 152B _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 152E _ 8B. 55, F4
        add     edx, 2                                  ; 1531 _ 83. C2, 02
        mov     dword [eax+edx*8+4H], ecx               ; 1534 _ 89. 4C D0, 04
        mov     eax, 0                                  ; 1538 _ B8, 00000000
        jmp     ?_084                                   ; 153D _ E9, 000000C0

?_079:  mov     eax, dword [ebp+8H]                     ; 1542 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 1545 _ 8B. 00
        cmp     eax, 4095                               ; 1547 _ 3D, 00000FFF
        jg      ?_083                                   ; 154C _ 0F 8F, 00000087
        mov     eax, dword [ebp+8H]                     ; 1552 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 1555 _ 8B. 00
        mov     dword [ebp-8H], eax                     ; 1557 _ 89. 45, F8
        jmp     ?_081                                   ; 155A _ EB, 28

?_080:  mov     eax, dword [ebp-8H]                     ; 155C _ 8B. 45, F8
        lea     edx, [eax-1H]                           ; 155F _ 8D. 50, FF
        mov     ecx, dword [ebp+8H]                     ; 1562 _ 8B. 4D, 08
        mov     eax, dword [ebp-8H]                     ; 1565 _ 8B. 45, F8
        lea     ebx, [eax+2H]                           ; 1568 _ 8D. 58, 02
        mov     eax, dword [ebp+8H]                     ; 156B _ 8B. 45, 08
        add     edx, 2                                  ; 156E _ 83. C2, 02
        lea     edx, [eax+edx*8]                        ; 1571 _ 8D. 14 D0
        mov     eax, dword [edx]                        ; 1574 _ 8B. 02
        mov     edx, dword [edx+4H]                     ; 1576 _ 8B. 52, 04
        mov     dword [ecx+ebx*8], eax                  ; 1579 _ 89. 04 D9
        mov     dword [ecx+ebx*8+4H], edx               ; 157C _ 89. 54 D9, 04
        sub     dword [ebp-8H], 1                       ; 1580 _ 83. 6D, F8, 01
?_081:  mov     eax, dword [ebp-8H]                     ; 1584 _ 8B. 45, F8
        cmp     eax, dword [ebp-0CH]                    ; 1587 _ 3B. 45, F4
        jg      ?_080                                   ; 158A _ 7F, D0
        mov     eax, dword [ebp+8H]                     ; 158C _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 158F _ 8B. 00
        lea     edx, [eax+1H]                           ; 1591 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 1594 _ 8B. 45, 08
        mov     dword [eax], edx                        ; 1597 _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 1599 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 159C _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 159F _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 15A2 _ 8B. 00
        cmp     edx, eax                                ; 15A4 _ 39. C2
        jge     ?_082                                   ; 15A6 _ 7D, 0B
        mov     eax, dword [ebp+8H]                     ; 15A8 _ 8B. 45, 08
        mov     edx, dword [eax]                        ; 15AB _ 8B. 10
        mov     eax, dword [ebp+8H]                     ; 15AD _ 8B. 45, 08
        mov     dword [eax+4H], edx                     ; 15B0 _ 89. 50, 04
?_082:  mov     eax, dword [ebp+8H]                     ; 15B3 _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 15B6 _ 8B. 55, F4
        lea     ecx, [edx+2H]                           ; 15B9 _ 8D. 4A, 02
        mov     edx, dword [ebp+0CH]                    ; 15BC _ 8B. 55, 0C
        mov     dword [eax+ecx*8], edx                  ; 15BF _ 89. 14 C8
        mov     eax, dword [ebp+8H]                     ; 15C2 _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 15C5 _ 8B. 55, F4
        lea     ecx, [edx+2H]                           ; 15C8 _ 8D. 4A, 02
        mov     edx, dword [ebp+10H]                    ; 15CB _ 8B. 55, 10
        mov     dword [eax+ecx*8+4H], edx               ; 15CE _ 89. 54 C8, 04
        mov     eax, 0                                  ; 15D2 _ B8, 00000000
        jmp     ?_084                                   ; 15D7 _ EB, 29

?_083:  mov     eax, dword [ebp+8H]                     ; 15D9 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 15DC _ 8B. 40, 0C
        lea     edx, [eax+1H]                           ; 15DF _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 15E2 _ 8B. 45, 08
        mov     dword [eax+0CH], edx                    ; 15E5 _ 89. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 15E8 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 15EB _ 8B. 40, 08
        mov     edx, eax                                ; 15EE _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 15F0 _ 8B. 45, 10
        add     eax, edx                                ; 15F3 _ 01. D0
        mov     edx, eax                                ; 15F5 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 15F7 _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 15FA _ 89. 50, 08
        mov     eax, 4294967295                         ; 15FD _ B8, FFFFFFFF
?_084:  add     esp, 16                                 ; 1602 _ 83. C4, 10
        pop     ebx                                     ; 1605 _ 5B
        pop     ebp                                     ; 1606 _ 5D
        ret                                             ; 1607 _ C3
; memman_free End of function



?_085:                                                  ; byte
        db 54H, 6FH, 74H, 61H, 6CH, 20H, 4DH, 65H       ; 0000 _ Total Me
        db 6DH, 20H, 53H, 69H, 7AH, 65H, 20H, 69H       ; 0008 _ m Size i
        db 73H, 3AH, 20H, 00H                           ; 0010 _ s: .

?_086:                                                  ; byte
        db 4DH, 42H, 00H                                ; 0014 _ MB.

?_087:                                                  ; byte
        db 50H, 61H, 67H, 65H, 20H, 69H, 73H, 3AH       ; 0017 _ Page is:
        db 20H, 00H                                     ; 001F _  .

?_088:                                                  ; byte
        db 42H, 61H, 73H, 65H, 41H, 64H, 64H, 72H       ; 0021 _ BaseAddr
        db 4CH, 6FH, 77H, 3AH, 20H, 00H                 ; 0029 _ Low: .

?_089:                                                  ; byte
        db 42H, 61H, 73H, 65H, 41H, 64H, 64H, 72H       ; 002F _ BaseAddr
        db 48H, 69H, 67H, 68H, 3AH, 20H, 00H            ; 0037 _ High: .

?_090:                                                  ; byte
        db 4CH, 65H, 6EH, 67H, 74H, 68H, 4CH, 6FH       ; 003E _ LengthLo
        db 77H, 3AH, 20H, 00H                           ; 0046 _ w: .

?_091:                                                  ; byte
        db 4CH, 65H, 6EH, 67H, 74H, 68H, 48H, 69H       ; 004A _ LengthHi
        db 67H, 68H, 3AH, 20H, 00H                      ; 0052 _ gh: .

?_092:                                                  ; byte
        db 54H, 79H, 70H, 65H, 3AH, 20H, 00H            ; 0057 _ Type: .



fontA:                                                  ; oword
        db 00H, 18H, 18H, 18H, 18H, 24H, 24H, 24H       ; 0000 _ .....$$$
        db 24H, 7EH, 42H, 42H, 42H, 0E7H, 00H, 00H      ; 0008 _ $~BBB...

keyVal:                                                 ; byte
        db 30H, 78H                                     ; 0010 _ 0x

?_093:  db 00H                                          ; 0012 _ .

?_094:  db 00H, 00H, 00H, 00H, 00H                      ; 0013 _ .....

memman: dd 00100000H, 00000000H                         ; 0018 _ 1048576 0 

table_rgb.1598:                                         ; byte
        db 00H, 00H, 00H, 0FFH, 00H, 00H, 00H, 0FFH     ; 0020 _ ........
        db 00H, 0FFH, 0FFH, 00H, 00H, 00H, 0FFH, 0FFH   ; 0028 _ ........
        db 00H, 0FFH, 00H, 0FFH, 0FFH, 0FFH, 0FFH, 0FFH ; 0030 _ ........
        db 0C6H, 0C6H, 0C6H, 84H, 00H, 00H, 00H, 84H    ; 0038 _ ........
        db 00H, 84H, 84H, 00H, 00H, 00H, 84H, 84H       ; 0040 _ ........
        db 00H, 84H, 00H, 78H, 0D7H, 84H, 84H, 84H      ; 0048 _ ...x....
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0050 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0058 _ ........

cursor.1646:                                            ; byte
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

?_095:  resw    1                                       ; 0104

?_096:  resw    1                                       ; 0106

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

str.1689:                                               ; byte
        resb    1                                       ; 01F8

?_097:  resb    9                                       ; 01F9

?_098:  resb    2                                       ; 0202

line.1736:                                              ; dword
        resd    1                                       ; 0204

pos.1735: resd  1                                       ; 0208


