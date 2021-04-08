; Disassembly of file: ckernel.o
; Thu Apr  8 11:53:03 2021
; Mode: 32 bits
; Syntax: YASM/NASM
; Instruction set: 80386






CMain:  ; Function begin
        push    ebp                                     ; 0000 _ 55
        mov     ebp, esp                                ; 0001 _ 89. E5
        push    ebx                                     ; 0003 _ 53
        sub     esp, 84                                 ; 0004 _ 83. EC, 54
        sub     esp, 12                                 ; 0007 _ 83. EC, 0C
        push    bootInfo                                ; 000A _ 68, 00000000(d)
        call    initBootInfo                            ; 000F _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0014 _ 83. C4, 10
        mov     eax, dword [bootInfo]                   ; 0017 _ A1, 00000000(d)
        mov     dword [ebp-4CH], eax                    ; 001C _ 89. 45, B4
        movzx   eax, word [?_169]                       ; 001F _ 0F B7. 05, 00000004(d)
        cwde                                            ; 0026 _ 98
        mov     dword [ebp-48H], eax                    ; 0027 _ 89. 45, B8
        movzx   eax, word [?_170]                       ; 002A _ 0F B7. 05, 00000006(d)
        cwde                                            ; 0031 _ 98
        mov     dword [ebp-44H], eax                    ; 0032 _ 89. 45, BC
        mov     dword [ebp-40H], 0                      ; 0035 _ C7. 45, C0, 00000000
        mov     dword [ebp-3CH], 0                      ; 003C _ C7. 45, C4, 00000000
        call    init_pit                                ; 0043 _ E8, FFFFFFFC(rel)
        sub     esp, 4                                  ; 0048 _ 83. EC, 04
        push    timerbuf                                ; 004B _ 68, 00000218(d)
        push    8                                       ; 0050 _ 6A, 08
        push    timerInfo                               ; 0052 _ 68, 00000200(d)
        call    fifo8_init                              ; 0057 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 005C _ 83. C4, 10
        call    timer_alloc                             ; 005F _ E8, FFFFFFFC(rel)
        mov     dword [ebp-38H], eax                    ; 0064 _ 89. 45, C8
        sub     esp, 4                                  ; 0067 _ 83. EC, 04
        push    1                                       ; 006A _ 6A, 01
        push    timerInfo                               ; 006C _ 68, 00000200(d)
        push    dword [ebp-38H]                         ; 0071 _ FF. 75, C8
        call    timer_init                              ; 0074 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0079 _ 83. C4, 10
        sub     esp, 8                                  ; 007C _ 83. EC, 08
        push    500                                     ; 007F _ 68, 000001F4
        push    dword [ebp-38H]                         ; 0084 _ FF. 75, C8
        call    timer_setTime                           ; 0087 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 008C _ 83. C4, 10
        sub     esp, 4                                  ; 008F _ 83. EC, 04
        push    timerbuf2.1691                          ; 0092 _ 68, 00000238(d)
        push    8                                       ; 0097 _ 6A, 08
        push    timerInfo2.1689                         ; 0099 _ 68, 00000220(d)
        call    fifo8_init                              ; 009E _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 00A3 _ 83. C4, 10
        call    timer_alloc                             ; 00A6 _ E8, FFFFFFFC(rel)
        mov     dword [ebp-34H], eax                    ; 00AB _ 89. 45, CC
        sub     esp, 4                                  ; 00AE _ 83. EC, 04
        push    1                                       ; 00B1 _ 6A, 01
        push    timerInfo2.1689                         ; 00B3 _ 68, 00000220(d)
        push    dword [ebp-34H]                         ; 00B8 _ FF. 75, CC
        call    timer_init                              ; 00BB _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 00C0 _ 83. C4, 10
        sub     esp, 8                                  ; 00C3 _ 83. EC, 08
        push    300                                     ; 00C6 _ 68, 0000012C
        push    dword [ebp-34H]                         ; 00CB _ FF. 75, CC
        call    timer_setTime                           ; 00CE _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 00D3 _ 83. C4, 10
        sub     esp, 4                                  ; 00D6 _ 83. EC, 04
        push    timerbuf3.1692                          ; 00D9 _ 68, 00000258(d)
        push    8                                       ; 00DE _ 6A, 08
        push    timerInfo3.1690                         ; 00E0 _ 68, 00000240(d)
        call    fifo8_init                              ; 00E5 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 00EA _ 83. C4, 10
        call    timer_alloc                             ; 00ED _ E8, FFFFFFFC(rel)
        mov     dword [ebp-30H], eax                    ; 00F2 _ 89. 45, D0
        sub     esp, 4                                  ; 00F5 _ 83. EC, 04
        push    1                                       ; 00F8 _ 6A, 01
        push    timerInfo3.1690                         ; 00FA _ 68, 00000240(d)
        push    dword [ebp-30H]                         ; 00FF _ FF. 75, D0
        call    timer_init                              ; 0102 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0107 _ 83. C4, 10
        sub     esp, 8                                  ; 010A _ 83. EC, 08
        push    100                                     ; 010D _ 6A, 64
        push    dword [ebp-30H]                         ; 010F _ FF. 75, D0
        call    timer_setTime                           ; 0112 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0117 _ 83. C4, 10
        sub     esp, 4                                  ; 011A _ 83. EC, 04
        push    mousebuf                                ; 011D _ 68, 00000060(d)
        push    128                                     ; 0122 _ 68, 00000080
        push    mouseInfo                               ; 0127 _ 68, 00000020(d)
        call    fifo8_init                              ; 012C _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0131 _ 83. C4, 10
        sub     esp, 4                                  ; 0134 _ 83. EC, 04
        push    keybuf                                  ; 0137 _ 68, 00000040(d)
        push    32                                      ; 013C _ 6A, 20
        push    keyInfo                                 ; 013E _ 68, 00000008(d)
        call    fifo8_init                              ; 0143 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0148 _ 83. C4, 10
        call    init_palette                            ; 014B _ E8, FFFFFFFC(rel)
        call    init_keyboard                           ; 0150 _ E8, FFFFFFFC(rel)
        call    get_addr_buffer                         ; 0155 _ E8, FFFFFFFC(rel)
        mov     dword [ebp-2CH], eax                    ; 015A _ 89. 45, D4
        call    get_memory_block_count                  ; 015D _ E8, FFFFFFFC(rel)
        mov     dword [ebp-28H], eax                    ; 0162 _ 89. 45, D8
        mov     eax, dword [memman]                     ; 0165 _ A1, 00000008(d)
        sub     esp, 12                                 ; 016A _ 83. EC, 0C
        push    eax                                     ; 016D _ 50
        call    memman_init                             ; 016E _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0173 _ 83. C4, 10
        mov     eax, dword [memman]                     ; 0176 _ A1, 00000008(d)
        sub     esp, 4                                  ; 017B _ 83. EC, 04
        push    1072594944                              ; 017E _ 68, 3FEE8000
        push    1081344                                 ; 0183 _ 68, 00108000
        push    eax                                     ; 0188 _ 50
        call    memman_free                             ; 0189 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 018E _ 83. C4, 10
        mov     eax, dword [memman]                     ; 0191 _ A1, 00000008(d)
        sub     esp, 12                                 ; 0196 _ 83. EC, 0C
        push    eax                                     ; 0199 _ 50
        call    memman_total                            ; 019A _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 019F _ 83. C4, 10
        shr     eax, 20                                 ; 01A2 _ C1. E8, 14
        mov     dword [ebp-24H], eax                    ; 01A5 _ 89. 45, DC
        mov     eax, dword [ebp-24H]                    ; 01A8 _ 8B. 45, DC
        sub     esp, 12                                 ; 01AB _ 83. EC, 0C
        push    eax                                     ; 01AE _ 50
        call    intToHexStr                             ; 01AF _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 01B4 _ 83. C4, 10
        mov     dword [ebp-20H], eax                    ; 01B7 _ 89. 45, E0
        sub     esp, 8                                  ; 01BA _ 83. EC, 08
        push    ?_155                                   ; 01BD _ 68, 00000000(d)
        push    3                                       ; 01C2 _ 6A, 03
        push    0                                       ; 01C4 _ 6A, 00
        push    0                                       ; 01C6 _ 6A, 00
        push    dword [ebp-40H]                         ; 01C8 _ FF. 75, C0
        push    dword [ebp-1CH]                         ; 01CB _ FF. 75, E4
        call    showString                              ; 01CE _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 01D3 _ 83. C4, 20
        sub     esp, 8                                  ; 01D6 _ 83. EC, 08
        push    dword [ebp-20H]                         ; 01D9 _ FF. 75, E0
        push    3                                       ; 01DC _ 6A, 03
        push    0                                       ; 01DE _ 6A, 00
        push    152                                     ; 01E0 _ 68, 00000098
        push    dword [ebp-40H]                         ; 01E5 _ FF. 75, C0
        push    dword [ebp-1CH]                         ; 01E8 _ FF. 75, E4
        call    showString                              ; 01EB _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 01F0 _ 83. C4, 20
        sub     esp, 8                                  ; 01F3 _ 83. EC, 08
        push    ?_156                                   ; 01F6 _ 68, 00000014(d)
        push    3                                       ; 01FB _ 6A, 03
        push    0                                       ; 01FD _ 6A, 00
        push    240                                     ; 01FF _ 68, 000000F0
        push    dword [ebp-40H]                         ; 0204 _ FF. 75, C0
        push    dword [ebp-1CH]                         ; 0207 _ FF. 75, E4
        call    showString                              ; 020A _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 020F _ 83. C4, 20
        mov     eax, dword [memman]                     ; 0212 _ A1, 00000008(d)
        push    dword [ebp-44H]                         ; 0217 _ FF. 75, BC
        push    dword [ebp-48H]                         ; 021A _ FF. 75, B8
        push    dword [ebp-4CH]                         ; 021D _ FF. 75, B4
        push    eax                                     ; 0220 _ 50
        call    shtctl_init                             ; 0221 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0226 _ 83. C4, 10
        mov     dword [ebp-1CH], eax                    ; 0229 _ 89. 45, E4
        sub     esp, 12                                 ; 022C _ 83. EC, 0C
        push    dword [ebp-1CH]                         ; 022F _ FF. 75, E4
        call    sheet_alloc                             ; 0232 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0237 _ 83. C4, 10
        mov     dword [ebp-40H], eax                    ; 023A _ 89. 45, C0
        sub     esp, 12                                 ; 023D _ 83. EC, 0C
        push    dword [ebp-1CH]                         ; 0240 _ FF. 75, E4
        call    sheet_alloc                             ; 0243 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0248 _ 83. C4, 10
        mov     dword [ebp-3CH], eax                    ; 024B _ 89. 45, C4
        mov     eax, dword [ebp-48H]                    ; 024E _ 8B. 45, B8
        imul    eax, dword [ebp-44H]                    ; 0251 _ 0F AF. 45, BC
        mov     edx, eax                                ; 0255 _ 89. C2
        mov     eax, dword [memman]                     ; 0257 _ A1, 00000008(d)
        sub     esp, 8                                  ; 025C _ 83. EC, 08
        push    edx                                     ; 025F _ 52
        push    eax                                     ; 0260 _ 50
        call    memman_alloc_4K                         ; 0261 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0266 _ 83. C4, 10
        mov     dword [buf_back], eax                   ; 0269 _ A3, 000000F8(d)
        mov     eax, dword [buf_back]                   ; 026E _ A1, 000000F8(d)
        sub     esp, 4                                  ; 0273 _ 83. EC, 04
        push    dword [ebp-44H]                         ; 0276 _ FF. 75, BC
        push    dword [ebp-48H]                         ; 0279 _ FF. 75, B8
        push    eax                                     ; 027C _ 50
        call    init_screen8                            ; 027D _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0282 _ 83. C4, 10
        mov     eax, dword [buf_back]                   ; 0285 _ A1, 000000F8(d)
        sub     esp, 12                                 ; 028A _ 83. EC, 0C
        push    99                                      ; 028D _ 6A, 63
        push    dword [ebp-44H]                         ; 028F _ FF. 75, BC
        push    dword [ebp-48H]                         ; 0292 _ FF. 75, B8
        push    eax                                     ; 0295 _ 50
        push    dword [ebp-40H]                         ; 0296 _ FF. 75, C0
        call    sheet_setbuf                            ; 0299 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 029E _ 83. C4, 20
        sub     esp, 12                                 ; 02A1 _ 83. EC, 0C
        push    99                                      ; 02A4 _ 6A, 63
        push    16                                      ; 02A6 _ 6A, 10
        push    16                                      ; 02A8 _ 6A, 10
        push    buf_mouse                               ; 02AA _ 68, 00000100(d)
        push    dword [ebp-3CH]                         ; 02AF _ FF. 75, C4
        call    sheet_setbuf                            ; 02B2 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 02B7 _ 83. C4, 20
        sub     esp, 8                                  ; 02BA _ 83. EC, 08
        push    99                                      ; 02BD _ 6A, 63
        push    buf_mouse                               ; 02BF _ 68, 00000100(d)
        call    init_mouse_cursor                       ; 02C4 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 02C9 _ 83. C4, 10
        push    0                                       ; 02CC _ 6A, 00
        push    0                                       ; 02CE _ 6A, 00
        push    dword [ebp-40H]                         ; 02D0 _ FF. 75, C0
        push    dword [ebp-1CH]                         ; 02D3 _ FF. 75, E4
        call    sheet_slide                             ; 02D6 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 02DB _ 83. C4, 10
        mov     eax, dword [ebp-48H]                    ; 02DE _ 8B. 45, B8
        sub     eax, 16                                 ; 02E1 _ 83. E8, 10
        mov     edx, eax                                ; 02E4 _ 89. C2
        shr     edx, 31                                 ; 02E6 _ C1. EA, 1F
        add     eax, edx                                ; 02E9 _ 01. D0
        sar     eax, 1                                  ; 02EB _ D1. F8
        mov     dword [mx], eax                         ; 02ED _ A3, 000000F0(d)
        mov     eax, dword [ebp-44H]                    ; 02F2 _ 8B. 45, BC
        sub     eax, 44                                 ; 02F5 _ 83. E8, 2C
        mov     edx, eax                                ; 02F8 _ 89. C2
        shr     edx, 31                                 ; 02FA _ C1. EA, 1F
        add     eax, edx                                ; 02FD _ 01. D0
        sar     eax, 1                                  ; 02FF _ D1. F8
        mov     dword [my], eax                         ; 0301 _ A3, 000000F4(d)
        mov     edx, dword [my]                         ; 0306 _ 8B. 15, 000000F4(d)
        mov     eax, dword [mx]                         ; 030C _ A1, 000000F0(d)
        push    edx                                     ; 0311 _ 52
        push    eax                                     ; 0312 _ 50
        push    dword [ebp-3CH]                         ; 0313 _ FF. 75, C4
        push    dword [ebp-1CH]                         ; 0316 _ FF. 75, E4
        call    sheet_slide                             ; 0319 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 031E _ 83. C4, 10
        sub     esp, 8                                  ; 0321 _ 83. EC, 08
        push    ?_157                                   ; 0324 _ 68, 00000017(d)
        push    dword [ebp-1CH]                         ; 0329 _ FF. 75, E4
        call    messageBox                              ; 032C _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0331 _ 83. C4, 10
        mov     dword [ebp-18H], eax                    ; 0334 _ 89. 45, E8
        sub     esp, 4                                  ; 0337 _ 83. EC, 04
        push    0                                       ; 033A _ 6A, 00
        push    dword [ebp-40H]                         ; 033C _ FF. 75, C0
        push    dword [ebp-1CH]                         ; 033F _ FF. 75, E4
        call    sheet_level_updown                      ; 0342 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0347 _ 83. C4, 10
        sub     esp, 4                                  ; 034A _ 83. EC, 04
        push    50                                      ; 034D _ 6A, 32
        push    dword [ebp-3CH]                         ; 034F _ FF. 75, C4
        push    dword [ebp-1CH]                         ; 0352 _ FF. 75, E4
        call    sheet_level_updown                      ; 0355 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 035A _ 83. C4, 10
        call    io_sti                                  ; 035D _ E8, FFFFFFFC(rel)
        sub     esp, 12                                 ; 0362 _ 83. EC, 0C
        push    mouse_move                              ; 0365 _ 68, 000000E0(d)
        call    enable_mouse                            ; 036A _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 036F _ 83. C4, 10
        mov     dword [ebp-50H], 0                      ; 0372 _ C7. 45, B0, 00000000
        mov     byte [ebp-51H], 0                       ; 0379 _ C6. 45, AF, 00
        call    getTimerController                      ; 037D _ E8, FFFFFFFC(rel)
        mov     dword [ebp-14H], eax                    ; 0382 _ 89. 45, EC
?_001:  mov     eax, dword [ebp-38H]                    ; 0385 _ 8B. 45, C8
        mov     eax, dword [eax]                        ; 0388 _ 8B. 00
        sub     esp, 12                                 ; 038A _ 83. EC, 0C
        push    eax                                     ; 038D _ 50
        call    intToHexStr                             ; 038E _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0393 _ 83. C4, 10
        mov     dword [ebp-10H], eax                    ; 0396 _ 89. 45, F0
        mov     eax, dword [ebp-18H]                    ; 0399 _ 8B. 45, E8
        mov     edx, dword [eax+4H]                     ; 039C _ 8B. 50, 04
        mov     eax, dword [ebp-18H]                    ; 039F _ 8B. 45, E8
        mov     eax, dword [eax]                        ; 03A2 _ 8B. 00
        sub     esp, 4                                  ; 03A4 _ 83. EC, 04
        push    38                                      ; 03A7 _ 6A, 26
        push    150                                     ; 03A9 _ 68, 00000096
        push    22                                      ; 03AE _ 6A, 16
        push    8                                       ; 03B0 _ 6A, 08
        push    8                                       ; 03B2 _ 6A, 08
        push    edx                                     ; 03B4 _ 52
        push    eax                                     ; 03B5 _ 50
        call    boxfill8                                ; 03B6 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 03BB _ 83. C4, 20
        sub     esp, 8                                  ; 03BE _ 83. EC, 08
        push    dword [ebp-10H]                         ; 03C1 _ FF. 75, F0
        push    10                                      ; 03C4 _ 6A, 0A
        push    22                                      ; 03C6 _ 6A, 16
        push    8                                       ; 03C8 _ 6A, 08
        push    dword [ebp-18H]                         ; 03CA _ FF. 75, E8
        push    dword [ebp-1CH]                         ; 03CD _ FF. 75, E4
        call    showString                              ; 03D0 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 03D5 _ 83. C4, 20
        call    io_cli                                  ; 03D8 _ E8, FFFFFFFC(rel)
        sub     esp, 12                                 ; 03DD _ 83. EC, 0C
        push    keyInfo                                 ; 03E0 _ 68, 00000008(d)
        call    fifo8_status                            ; 03E5 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 03EA _ 83. C4, 10
        mov     ebx, eax                                ; 03ED _ 89. C3
        sub     esp, 12                                 ; 03EF _ 83. EC, 0C
        push    mouseInfo                               ; 03F2 _ 68, 00000020(d)
        call    fifo8_status                            ; 03F7 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 03FC _ 83. C4, 10
        add     ebx, eax                                ; 03FF _ 01. C3
        sub     esp, 12                                 ; 0401 _ 83. EC, 0C
        push    timerInfo                               ; 0404 _ 68, 00000200(d)
        call    fifo8_status                            ; 0409 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 040E _ 83. C4, 10
        add     ebx, eax                                ; 0411 _ 01. C3
        sub     esp, 12                                 ; 0413 _ 83. EC, 0C
        push    timerInfo2.1689                         ; 0416 _ 68, 00000220(d)
        call    fifo8_status                            ; 041B _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0420 _ 83. C4, 10
        add     ebx, eax                                ; 0423 _ 01. C3
        sub     esp, 12                                 ; 0425 _ 83. EC, 0C
        push    timerInfo3.1690                         ; 0428 _ 68, 00000240(d)
        call    fifo8_status                            ; 042D _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0432 _ 83. C4, 10
        add     eax, ebx                                ; 0435 _ 01. D8
        test    eax, eax                                ; 0437 _ 85. C0
        jnz     ?_002                                   ; 0439 _ 75, 0A
        call    io_sti                                  ; 043B _ E8, FFFFFFFC(rel)
        jmp     ?_001                                   ; 0440 _ E9, FFFFFF40

?_002:  sub     esp, 12                                 ; 0445 _ 83. EC, 0C
        push    keyInfo                                 ; 0448 _ 68, 00000008(d)
        call    fifo8_status                            ; 044D _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0452 _ 83. C4, 10
        test    eax, eax                                ; 0455 _ 85. C0
        jz      ?_003                                   ; 0457 _ 74, 73
        call    io_sti                                  ; 0459 _ E8, FFFFFFFC(rel)
        sub     esp, 12                                 ; 045E _ 83. EC, 0C
        push    keyInfo                                 ; 0461 _ 68, 00000008(d)
        call    fifo8_get                               ; 0466 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 046B _ 83. C4, 10
        mov     byte [ebp-51H], al                      ; 046E _ 88. 45, AF
        cmp     byte [ebp-51H], 28                      ; 0471 _ 80. 7D, AF, 1C
        jne     ?_001                                   ; 0475 _ 0F 85, FFFFFF0A
        mov     ecx, dword [buf_back]                   ; 047B _ 8B. 0D, 000000F8(d)
        mov     edx, dword [ebp-50H]                    ; 0481 _ 8B. 55, B0
        mov     eax, edx                                ; 0484 _ 89. D0
        shl     eax, 2                                  ; 0486 _ C1. E0, 02
        add     eax, edx                                ; 0489 _ 01. D0
        shl     eax, 2                                  ; 048B _ C1. E0, 02
        mov     edx, eax                                ; 048E _ 89. C2
        mov     eax, dword [ebp-2CH]                    ; 0490 _ 8B. 45, D4
        add     eax, edx                                ; 0493 _ 01. D0
        sub     esp, 4                                  ; 0495 _ 83. EC, 04
        push    7                                       ; 0498 _ 6A, 07
        push    dword [ebp-48H]                         ; 049A _ FF. 75, B8
        push    dword [ebp-50H]                         ; 049D _ FF. 75, B0
        push    ecx                                     ; 04A0 _ 51
        push    eax                                     ; 04A1 _ 50
        push    dword [ebp-40H]                         ; 04A2 _ FF. 75, C0
        push    dword [ebp-1CH]                         ; 04A5 _ FF. 75, E4
        call    showMemInfo                             ; 04A8 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 04AD _ 83. C4, 20
        add     dword [ebp-50H], 1                      ; 04B0 _ 83. 45, B0, 01
        mov     eax, dword [ebp-50H]                    ; 04B4 _ 8B. 45, B0
        cmp     eax, dword [ebp-28H]                    ; 04B7 _ 3B. 45, D8
        jl      ?_001                                   ; 04BA _ 0F 8C, FFFFFEC5
        mov     dword [ebp-50H], 0                      ; 04C0 _ C7. 45, B0, 00000000
        jmp     ?_001                                   ; 04C7 _ E9, FFFFFEB9

?_003:  sub     esp, 12                                 ; 04CC _ 83. EC, 0C
        push    mouseInfo                               ; 04CF _ 68, 00000020(d)
        call    fifo8_status                            ; 04D4 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 04D9 _ 83. C4, 10
        test    eax, eax                                ; 04DC _ 85. C0
        jz      ?_004                                   ; 04DE _ 74, 19
        sub     esp, 4                                  ; 04E0 _ 83. EC, 04
        push    dword [ebp-3CH]                         ; 04E3 _ FF. 75, C4
        push    dword [ebp-40H]                         ; 04E6 _ FF. 75, C0
        push    dword [ebp-1CH]                         ; 04E9 _ FF. 75, E4
        call    showMouseInfo                           ; 04EC _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 04F1 _ 83. C4, 10
        jmp     ?_001                                   ; 04F4 _ E9, FFFFFE8C

?_004:  sub     esp, 12                                 ; 04F9 _ 83. EC, 0C
        push    timerInfo                               ; 04FC _ 68, 00000200(d)
        call    fifo8_status                            ; 0501 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0506 _ 83. C4, 10
        test    eax, eax                                ; 0509 _ 85. C0
        jz      ?_005                                   ; 050B _ 74, 36
        call    io_sti                                  ; 050D _ E8, FFFFFFFC(rel)
        sub     esp, 12                                 ; 0512 _ 83. EC, 0C
        push    timerInfo                               ; 0515 _ 68, 00000200(d)
        call    fifo8_get                               ; 051A _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 051F _ 83. C4, 10
        sub     esp, 8                                  ; 0522 _ 83. EC, 08
        push    ?_158                                   ; 0525 _ 68, 0000001F(d)
        push    5                                       ; 052A _ 6A, 05
        push    0                                       ; 052C _ 6A, 00
        push    0                                       ; 052E _ 6A, 00
        push    dword [ebp-40H]                         ; 0530 _ FF. 75, C0
        push    dword [ebp-1CH]                         ; 0533 _ FF. 75, E4
        call    showString                              ; 0536 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 053B _ 83. C4, 20
        jmp     ?_001                                   ; 053E _ E9, FFFFFE42

?_005:  sub     esp, 12                                 ; 0543 _ 83. EC, 0C
        push    timerInfo2.1689                         ; 0546 _ 68, 00000220(d)
        call    fifo8_status                            ; 054B _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0550 _ 83. C4, 10
        test    eax, eax                                ; 0553 _ 85. C0
        jz      ?_006                                   ; 0555 _ 74, 36
        call    io_sti                                  ; 0557 _ E8, FFFFFFFC(rel)
        sub     esp, 12                                 ; 055C _ 83. EC, 0C
        push    timerInfo2.1689                         ; 055F _ 68, 00000220(d)
        call    fifo8_get                               ; 0564 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0569 _ 83. C4, 10
        sub     esp, 8                                  ; 056C _ 83. EC, 08
        push    ?_159                                   ; 056F _ 68, 00000027(d)
        push    5                                       ; 0574 _ 6A, 05
        push    16                                      ; 0576 _ 6A, 10
        push    0                                       ; 0578 _ 6A, 00
        push    dword [ebp-40H]                         ; 057A _ FF. 75, C0
        push    dword [ebp-1CH]                         ; 057D _ FF. 75, E4
        call    showString                              ; 0580 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0585 _ 83. C4, 20
        jmp     ?_001                                   ; 0588 _ E9, FFFFFDF8

?_006:  sub     esp, 12                                 ; 058D _ 83. EC, 0C
        push    timerInfo3.1690                         ; 0590 _ 68, 00000240(d)
        call    fifo8_status                            ; 0595 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 059A _ 83. C4, 10
        test    eax, eax                                ; 059D _ 85. C0
        je      ?_001                                   ; 059F _ 0F 84, FFFFFDE0
        call    io_sti                                  ; 05A5 _ E8, FFFFFFFC(rel)
        sub     esp, 12                                 ; 05AA _ 83. EC, 0C
        push    timerInfo3.1690                         ; 05AD _ 68, 00000240(d)
        call    fifo8_get                               ; 05B2 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 05B7 _ 83. C4, 10
        mov     dword [ebp-0CH], eax                    ; 05BA _ 89. 45, F4
        cmp     dword [ebp-0CH], 0                      ; 05BD _ 83. 7D, F4, 00
        jz      ?_007                                   ; 05C1 _ 74, 35
        sub     esp, 4                                  ; 05C3 _ 83. EC, 04
        push    0                                       ; 05C6 _ 6A, 00
        push    timerInfo3.1690                         ; 05C8 _ 68, 00000240(d)
        push    dword [ebp-30H]                         ; 05CD _ FF. 75, D0
        call    timer_init                              ; 05D0 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 05D5 _ 83. C4, 10
        mov     eax, dword [buf_back]                   ; 05D8 _ A1, 000000F8(d)
        sub     esp, 4                                  ; 05DD _ 83. EC, 04
        push    111                                     ; 05E0 _ 6A, 6F
        push    10                                      ; 05E2 _ 6A, 0A
        push    96                                      ; 05E4 _ 6A, 60
        push    8                                       ; 05E6 _ 6A, 08
        push    14                                      ; 05E8 _ 6A, 0E
        push    dword [ebp-48H]                         ; 05EA _ FF. 75, B8
        push    eax                                     ; 05ED _ 50
        call    boxfill8                                ; 05EE _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 05F3 _ 83. C4, 20
        jmp     ?_008                                   ; 05F6 _ EB, 33

?_007:  sub     esp, 4                                  ; 05F8 _ 83. EC, 04
        push    1                                       ; 05FB _ 6A, 01
        push    timerInfo3.1690                         ; 05FD _ 68, 00000240(d)
        push    dword [ebp-30H]                         ; 0602 _ FF. 75, D0
        call    timer_init                              ; 0605 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 060A _ 83. C4, 10
        mov     eax, dword [buf_back]                   ; 060D _ A1, 000000F8(d)
        sub     esp, 4                                  ; 0612 _ 83. EC, 04
        push    111                                     ; 0615 _ 6A, 6F
        push    10                                      ; 0617 _ 6A, 0A
        push    96                                      ; 0619 _ 6A, 60
        push    8                                       ; 061B _ 6A, 08
        push    7                                       ; 061D _ 6A, 07
        push    dword [ebp-48H]                         ; 061F _ FF. 75, B8
        push    eax                                     ; 0622 _ 50
        call    boxfill8                                ; 0623 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0628 _ 83. C4, 20
?_008:  sub     esp, 8                                  ; 062B _ 83. EC, 08
        push    50                                      ; 062E _ 6A, 32
        push    dword [ebp-30H]                         ; 0630 _ FF. 75, D0
        call    timer_setTime                           ; 0633 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0638 _ 83. C4, 10
        sub     esp, 8                                  ; 063B _ 83. EC, 08
        push    112                                     ; 063E _ 6A, 70
        push    16                                      ; 0640 _ 6A, 10
        push    96                                      ; 0642 _ 6A, 60
        push    8                                       ; 0644 _ 6A, 08
        push    dword [ebp-40H]                         ; 0646 _ FF. 75, C0
        push    dword [ebp-1CH]                         ; 0649 _ FF. 75, E4
        call    sheet_refresh                           ; 064C _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0651 _ 83. C4, 20
        jmp     ?_001                                   ; 0654 _ E9, FFFFFD2C
; CMain End of function

initBootInfo:; Function begin
        push    ebp                                     ; 0659 _ 55
        mov     ebp, esp                                ; 065A _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 065C _ 8B. 45, 08
        mov     dword [eax], 655360                     ; 065F _ C7. 00, 000A0000
        mov     eax, dword [ebp+8H]                     ; 0665 _ 8B. 45, 08
; Note: Length-changing prefix causes delay on Intel processors
        mov     word [eax+4H], 320                      ; 0668 _ 66: C7. 40, 04, 0140
        mov     eax, dword [ebp+8H]                     ; 066E _ 8B. 45, 08
; Note: Length-changing prefix causes delay on Intel processors
        mov     word [eax+6H], 200                      ; 0671 _ 66: C7. 40, 06, 00C8
        nop                                             ; 0677 _ 90
        pop     ebp                                     ; 0678 _ 5D
        ret                                             ; 0679 _ C3
; initBootInfo End of function

showString:; Function begin
        push    ebp                                     ; 067A _ 55
        mov     ebp, esp                                ; 067B _ 89. E5
        push    ebx                                     ; 067D _ 53
        sub     esp, 36                                 ; 067E _ 83. EC, 24
        mov     eax, dword [ebp+18H]                    ; 0681 _ 8B. 45, 18
        mov     byte [ebp-1CH], al                      ; 0684 _ 88. 45, E4
        mov     eax, dword [ebp+10H]                    ; 0687 _ 8B. 45, 10
        mov     dword [ebp-0CH], eax                    ; 068A _ 89. 45, F4
        jmp     ?_010                                   ; 068D _ EB, 3E

?_009:  mov     eax, dword [ebp+1CH]                    ; 068F _ 8B. 45, 1C
        movzx   eax, byte [eax]                         ; 0692 _ 0F B6. 00
        movzx   eax, al                                 ; 0695 _ 0F B6. C0
        shl     eax, 4                                  ; 0698 _ C1. E0, 04
        lea     ebx, [systemFont+eax]                   ; 069B _ 8D. 98, 00000000(d)
        movsx   ecx, byte [ebp-1CH]                     ; 06A1 _ 0F BE. 4D, E4
        mov     eax, dword [ebp+0CH]                    ; 06A5 _ 8B. 45, 0C
        mov     edx, dword [eax+4H]                     ; 06A8 _ 8B. 50, 04
        mov     eax, dword [ebp+0CH]                    ; 06AB _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 06AE _ 8B. 00
        sub     esp, 8                                  ; 06B0 _ 83. EC, 08
        push    ebx                                     ; 06B3 _ 53
        push    ecx                                     ; 06B4 _ 51
        push    dword [ebp+14H]                         ; 06B5 _ FF. 75, 14
        push    dword [ebp+10H]                         ; 06B8 _ FF. 75, 10
        push    edx                                     ; 06BB _ 52
        push    eax                                     ; 06BC _ 50
        call    showFont8                               ; 06BD _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 06C2 _ 83. C4, 20
        add     dword [ebp+10H], 8                      ; 06C5 _ 83. 45, 10, 08
        add     dword [ebp+1CH], 1                      ; 06C9 _ 83. 45, 1C, 01
?_010:  mov     eax, dword [ebp+1CH]                    ; 06CD _ 8B. 45, 1C
        movzx   eax, byte [eax]                         ; 06D0 _ 0F B6. 00
        test    al, al                                  ; 06D3 _ 84. C0
        jnz     ?_009                                   ; 06D5 _ 75, B8
        mov     eax, dword [ebp+14H]                    ; 06D7 _ 8B. 45, 14
        add     eax, 16                                 ; 06DA _ 83. C0, 10
        sub     esp, 8                                  ; 06DD _ 83. EC, 08
        push    eax                                     ; 06E0 _ 50
        push    dword [ebp+10H]                         ; 06E1 _ FF. 75, 10
        push    dword [ebp+14H]                         ; 06E4 _ FF. 75, 14
        push    dword [ebp-0CH]                         ; 06E7 _ FF. 75, F4
        push    dword [ebp+0CH]                         ; 06EA _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 06ED _ FF. 75, 08
        call    sheet_refresh                           ; 06F0 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 06F5 _ 83. C4, 20
        nop                                             ; 06F8 _ 90
        mov     ebx, dword [ebp-4H]                     ; 06F9 _ 8B. 5D, FC
        leave                                           ; 06FC _ C9
        ret                                             ; 06FD _ C3
; showString End of function

init_screen8:; Function begin
        push    ebp                                     ; 06FE _ 55
        mov     ebp, esp                                ; 06FF _ 89. E5
        push    ebx                                     ; 0701 _ 53
        sub     esp, 4                                  ; 0702 _ 83. EC, 04
        mov     eax, dword [ebp+10H]                    ; 0705 _ 8B. 45, 10
        lea     edx, [eax-19H]                          ; 0708 _ 8D. 50, E7
        mov     eax, dword [ebp+0CH]                    ; 070B _ 8B. 45, 0C
        sub     eax, 1                                  ; 070E _ 83. E8, 01
        sub     esp, 4                                  ; 0711 _ 83. EC, 04
        push    edx                                     ; 0714 _ 52
        push    eax                                     ; 0715 _ 50
        push    0                                       ; 0716 _ 6A, 00
        push    0                                       ; 0718 _ 6A, 00
        push    14                                      ; 071A _ 6A, 0E
        push    dword [ebp+0CH]                         ; 071C _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 071F _ FF. 75, 08
        call    boxfill8                                ; 0722 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0727 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 072A _ 8B. 45, 10
        lea     ecx, [eax-18H]                          ; 072D _ 8D. 48, E8
        mov     eax, dword [ebp+0CH]                    ; 0730 _ 8B. 45, 0C
        lea     edx, [eax-1H]                           ; 0733 _ 8D. 50, FF
        mov     eax, dword [ebp+10H]                    ; 0736 _ 8B. 45, 10
        sub     eax, 24                                 ; 0739 _ 83. E8, 18
        sub     esp, 4                                  ; 073C _ 83. EC, 04
        push    ecx                                     ; 073F _ 51
        push    edx                                     ; 0740 _ 52
        push    eax                                     ; 0741 _ 50
        push    0                                       ; 0742 _ 6A, 00
        push    8                                       ; 0744 _ 6A, 08
        push    dword [ebp+0CH]                         ; 0746 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 0749 _ FF. 75, 08
        call    boxfill8                                ; 074C _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0751 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 0754 _ 8B. 45, 10
        lea     ecx, [eax-17H]                          ; 0757 _ 8D. 48, E9
        mov     eax, dword [ebp+0CH]                    ; 075A _ 8B. 45, 0C
        lea     edx, [eax-1H]                           ; 075D _ 8D. 50, FF
        mov     eax, dword [ebp+10H]                    ; 0760 _ 8B. 45, 10
        sub     eax, 23                                 ; 0763 _ 83. E8, 17
        sub     esp, 4                                  ; 0766 _ 83. EC, 04
        push    ecx                                     ; 0769 _ 51
        push    edx                                     ; 076A _ 52
        push    eax                                     ; 076B _ 50
        push    0                                       ; 076C _ 6A, 00
        push    7                                       ; 076E _ 6A, 07
        push    dword [ebp+0CH]                         ; 0770 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 0773 _ FF. 75, 08
        call    boxfill8                                ; 0776 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 077B _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 077E _ 8B. 45, 10
        lea     ecx, [eax-1H]                           ; 0781 _ 8D. 48, FF
        mov     eax, dword [ebp+0CH]                    ; 0784 _ 8B. 45, 0C
        lea     edx, [eax-1H]                           ; 0787 _ 8D. 50, FF
        mov     eax, dword [ebp+10H]                    ; 078A _ 8B. 45, 10
        sub     eax, 22                                 ; 078D _ 83. E8, 16
        sub     esp, 4                                  ; 0790 _ 83. EC, 04
        push    ecx                                     ; 0793 _ 51
        push    edx                                     ; 0794 _ 52
        push    eax                                     ; 0795 _ 50
        push    0                                       ; 0796 _ 6A, 00
        push    8                                       ; 0798 _ 6A, 08
        push    dword [ebp+0CH]                         ; 079A _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 079D _ FF. 75, 08
        call    boxfill8                                ; 07A0 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 07A5 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 07A8 _ 8B. 45, 10
        lea     edx, [eax-14H]                          ; 07AB _ 8D. 50, EC
        mov     eax, dword [ebp+10H]                    ; 07AE _ 8B. 45, 10
        sub     eax, 20                                 ; 07B1 _ 83. E8, 14
        sub     esp, 4                                  ; 07B4 _ 83. EC, 04
        push    edx                                     ; 07B7 _ 52
        push    51                                      ; 07B8 _ 6A, 33
        push    eax                                     ; 07BA _ 50
        push    10                                      ; 07BB _ 6A, 0A
        push    7                                       ; 07BD _ 6A, 07
        push    dword [ebp+0CH]                         ; 07BF _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 07C2 _ FF. 75, 08
        call    boxfill8                                ; 07C5 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 07CA _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 07CD _ 8B. 45, 10
        lea     edx, [eax-4H]                           ; 07D0 _ 8D. 50, FC
        mov     eax, dword [ebp+10H]                    ; 07D3 _ 8B. 45, 10
        sub     eax, 20                                 ; 07D6 _ 83. E8, 14
        sub     esp, 4                                  ; 07D9 _ 83. EC, 04
        push    edx                                     ; 07DC _ 52
        push    9                                       ; 07DD _ 6A, 09
        push    eax                                     ; 07DF _ 50
        push    9                                       ; 07E0 _ 6A, 09
        push    7                                       ; 07E2 _ 6A, 07
        push    dword [ebp+0CH]                         ; 07E4 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 07E7 _ FF. 75, 08
        call    boxfill8                                ; 07EA _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 07EF _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 07F2 _ 8B. 45, 10
        lea     edx, [eax-4H]                           ; 07F5 _ 8D. 50, FC
        mov     eax, dword [ebp+10H]                    ; 07F8 _ 8B. 45, 10
        sub     eax, 4                                  ; 07FB _ 83. E8, 04
        sub     esp, 4                                  ; 07FE _ 83. EC, 04
        push    edx                                     ; 0801 _ 52
        push    50                                      ; 0802 _ 6A, 32
        push    eax                                     ; 0804 _ 50
        push    10                                      ; 0805 _ 6A, 0A
        push    15                                      ; 0807 _ 6A, 0F
        push    dword [ebp+0CH]                         ; 0809 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 080C _ FF. 75, 08
        call    boxfill8                                ; 080F _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0814 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 0817 _ 8B. 45, 10
        lea     edx, [eax-5H]                           ; 081A _ 8D. 50, FB
        mov     eax, dword [ebp+10H]                    ; 081D _ 8B. 45, 10
        sub     eax, 19                                 ; 0820 _ 83. E8, 13
        sub     esp, 4                                  ; 0823 _ 83. EC, 04
        push    edx                                     ; 0826 _ 52
        push    50                                      ; 0827 _ 6A, 32
        push    eax                                     ; 0829 _ 50
        push    50                                      ; 082A _ 6A, 32
        push    15                                      ; 082C _ 6A, 0F
        push    dword [ebp+0CH]                         ; 082E _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 0831 _ FF. 75, 08
        call    boxfill8                                ; 0834 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0839 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 083C _ 8B. 45, 10
        lea     edx, [eax-3H]                           ; 083F _ 8D. 50, FD
        mov     eax, dword [ebp+10H]                    ; 0842 _ 8B. 45, 10
        sub     eax, 3                                  ; 0845 _ 83. E8, 03
        sub     esp, 4                                  ; 0848 _ 83. EC, 04
        push    edx                                     ; 084B _ 52
        push    50                                      ; 084C _ 6A, 32
        push    eax                                     ; 084E _ 50
        push    10                                      ; 084F _ 6A, 0A
        push    0                                       ; 0851 _ 6A, 00
        push    dword [ebp+0CH]                         ; 0853 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 0856 _ FF. 75, 08
        call    boxfill8                                ; 0859 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 085E _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 0861 _ 8B. 45, 10
        lea     edx, [eax-3H]                           ; 0864 _ 8D. 50, FD
        mov     eax, dword [ebp+10H]                    ; 0867 _ 8B. 45, 10
        sub     eax, 20                                 ; 086A _ 83. E8, 14
        sub     esp, 4                                  ; 086D _ 83. EC, 04
        push    edx                                     ; 0870 _ 52
        push    51                                      ; 0871 _ 6A, 33
        push    eax                                     ; 0873 _ 50
        push    51                                      ; 0874 _ 6A, 33
        push    0                                       ; 0876 _ 6A, 00
        push    dword [ebp+0CH]                         ; 0878 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 087B _ FF. 75, 08
        call    boxfill8                                ; 087E _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0883 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 0886 _ 8B. 45, 10
        lea     ebx, [eax-14H]                          ; 0889 _ 8D. 58, EC
        mov     eax, dword [ebp+0CH]                    ; 088C _ 8B. 45, 0C
        lea     ecx, [eax-4H]                           ; 088F _ 8D. 48, FC
        mov     eax, dword [ebp+10H]                    ; 0892 _ 8B. 45, 10
        lea     edx, [eax-14H]                          ; 0895 _ 8D. 50, EC
        mov     eax, dword [ebp+0CH]                    ; 0898 _ 8B. 45, 0C
        sub     eax, 47                                 ; 089B _ 83. E8, 2F
        sub     esp, 4                                  ; 089E _ 83. EC, 04
        push    ebx                                     ; 08A1 _ 53
        push    ecx                                     ; 08A2 _ 51
        push    edx                                     ; 08A3 _ 52
        push    eax                                     ; 08A4 _ 50
        push    15                                      ; 08A5 _ 6A, 0F
        push    dword [ebp+0CH]                         ; 08A7 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 08AA _ FF. 75, 08
        call    boxfill8                                ; 08AD _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 08B2 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 08B5 _ 8B. 45, 10
        lea     ebx, [eax-3H]                           ; 08B8 _ 8D. 58, FD
        mov     eax, dword [ebp+0CH]                    ; 08BB _ 8B. 45, 0C
        lea     ecx, [eax-2FH]                          ; 08BE _ 8D. 48, D1
        mov     eax, dword [ebp+10H]                    ; 08C1 _ 8B. 45, 10
        lea     edx, [eax-14H]                          ; 08C4 _ 8D. 50, EC
        mov     eax, dword [ebp+0CH]                    ; 08C7 _ 8B. 45, 0C
        sub     eax, 47                                 ; 08CA _ 83. E8, 2F
        sub     esp, 4                                  ; 08CD _ 83. EC, 04
        push    ebx                                     ; 08D0 _ 53
        push    ecx                                     ; 08D1 _ 51
        push    edx                                     ; 08D2 _ 52
        push    eax                                     ; 08D3 _ 50
        push    15                                      ; 08D4 _ 6A, 0F
        push    dword [ebp+0CH]                         ; 08D6 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 08D9 _ FF. 75, 08
        call    boxfill8                                ; 08DC _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 08E1 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 08E4 _ 8B. 45, 10
        lea     ebx, [eax-3H]                           ; 08E7 _ 8D. 58, FD
        mov     eax, dword [ebp+0CH]                    ; 08EA _ 8B. 45, 0C
        lea     ecx, [eax-4H]                           ; 08ED _ 8D. 48, FC
        mov     eax, dword [ebp+10H]                    ; 08F0 _ 8B. 45, 10
        lea     edx, [eax-3H]                           ; 08F3 _ 8D. 50, FD
        mov     eax, dword [ebp+0CH]                    ; 08F6 _ 8B. 45, 0C
        sub     eax, 47                                 ; 08F9 _ 83. E8, 2F
        sub     esp, 4                                  ; 08FC _ 83. EC, 04
        push    ebx                                     ; 08FF _ 53
        push    ecx                                     ; 0900 _ 51
        push    edx                                     ; 0901 _ 52
        push    eax                                     ; 0902 _ 50
        push    7                                       ; 0903 _ 6A, 07
        push    dword [ebp+0CH]                         ; 0905 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 0908 _ FF. 75, 08
        call    boxfill8                                ; 090B _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0910 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 0913 _ 8B. 45, 10
        lea     ebx, [eax-3H]                           ; 0916 _ 8D. 58, FD
        mov     eax, dword [ebp+0CH]                    ; 0919 _ 8B. 45, 0C
        lea     ecx, [eax-3H]                           ; 091C _ 8D. 48, FD
        mov     eax, dword [ebp+10H]                    ; 091F _ 8B. 45, 10
        lea     edx, [eax-14H]                          ; 0922 _ 8D. 50, EC
        mov     eax, dword [ebp+0CH]                    ; 0925 _ 8B. 45, 0C
        sub     eax, 3                                  ; 0928 _ 83. E8, 03
        sub     esp, 4                                  ; 092B _ 83. EC, 04
        push    ebx                                     ; 092E _ 53
        push    ecx                                     ; 092F _ 51
        push    edx                                     ; 0930 _ 52
        push    eax                                     ; 0931 _ 50
        push    7                                       ; 0932 _ 6A, 07
        push    dword [ebp+0CH]                         ; 0934 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 0937 _ FF. 75, 08
        call    boxfill8                                ; 093A _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 093F _ 83. C4, 20
        nop                                             ; 0942 _ 90
        mov     ebx, dword [ebp-4H]                     ; 0943 _ 8B. 5D, FC
        leave                                           ; 0946 _ C9
        ret                                             ; 0947 _ C3
; init_screen8 End of function

init_palette:; Function begin
        push    ebp                                     ; 0948 _ 55
        mov     ebp, esp                                ; 0949 _ 89. E5
        sub     esp, 24                                 ; 094B _ 83. EC, 18
        mov     eax, dword [bootInfo]                   ; 094E _ A1, 00000000(d)
        mov     dword [ebp-14H], eax                    ; 0953 _ 89. 45, EC
        movzx   eax, word [?_169]                       ; 0956 _ 0F B7. 05, 00000004(d)
        cwde                                            ; 095D _ 98
        mov     dword [ebp-10H], eax                    ; 095E _ 89. 45, F0
        movzx   eax, word [?_170]                       ; 0961 _ 0F B7. 05, 00000006(d)
        cwde                                            ; 0968 _ 98
        mov     dword [ebp-0CH], eax                    ; 0969 _ 89. 45, F4
        sub     esp, 4                                  ; 096C _ 83. EC, 04
        push    table_rgb.1730                          ; 096F _ 68, 00000020(d)
        push    15                                      ; 0974 _ 6A, 0F
        push    0                                       ; 0976 _ 6A, 00
        call    set_palette                             ; 0978 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 097D _ 83. C4, 10
        nop                                             ; 0980 _ 90
        leave                                           ; 0981 _ C9
        ret                                             ; 0982 _ C3
; init_palette End of function

set_palette:; Function begin
        push    ebp                                     ; 0983 _ 55
        mov     ebp, esp                                ; 0984 _ 89. E5
        sub     esp, 24                                 ; 0986 _ 83. EC, 18
        call    io_load_eflags                          ; 0989 _ E8, FFFFFFFC(rel)
        mov     dword [ebp-0CH], eax                    ; 098E _ 89. 45, F4
        call    io_cli                                  ; 0991 _ E8, FFFFFFFC(rel)
        sub     esp, 8                                  ; 0996 _ 83. EC, 08
        push    dword [ebp+8H]                          ; 0999 _ FF. 75, 08
        push    968                                     ; 099C _ 68, 000003C8
        call    io_out8                                 ; 09A1 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 09A6 _ 83. C4, 10
        mov     eax, dword [ebp+8H]                     ; 09A9 _ 8B. 45, 08
        mov     dword [ebp-10H], eax                    ; 09AC _ 89. 45, F0
        jmp     ?_012                                   ; 09AF _ EB, 65

?_011:  mov     eax, dword [ebp+10H]                    ; 09B1 _ 8B. 45, 10
        movzx   eax, byte [eax]                         ; 09B4 _ 0F B6. 00
        shr     al, 2                                   ; 09B7 _ C0. E8, 02
        movzx   eax, al                                 ; 09BA _ 0F B6. C0
        sub     esp, 8                                  ; 09BD _ 83. EC, 08
        push    eax                                     ; 09C0 _ 50
        push    969                                     ; 09C1 _ 68, 000003C9
        call    io_out8                                 ; 09C6 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 09CB _ 83. C4, 10
        mov     eax, dword [ebp+10H]                    ; 09CE _ 8B. 45, 10
        add     eax, 1                                  ; 09D1 _ 83. C0, 01
        movzx   eax, byte [eax]                         ; 09D4 _ 0F B6. 00
        shr     al, 2                                   ; 09D7 _ C0. E8, 02
        movzx   eax, al                                 ; 09DA _ 0F B6. C0
        sub     esp, 8                                  ; 09DD _ 83. EC, 08
        push    eax                                     ; 09E0 _ 50
        push    969                                     ; 09E1 _ 68, 000003C9
        call    io_out8                                 ; 09E6 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 09EB _ 83. C4, 10
        mov     eax, dword [ebp+10H]                    ; 09EE _ 8B. 45, 10
        add     eax, 2                                  ; 09F1 _ 83. C0, 02
        movzx   eax, byte [eax]                         ; 09F4 _ 0F B6. 00
        shr     al, 2                                   ; 09F7 _ C0. E8, 02
        movzx   eax, al                                 ; 09FA _ 0F B6. C0
        sub     esp, 8                                  ; 09FD _ 83. EC, 08
        push    eax                                     ; 0A00 _ 50
        push    969                                     ; 0A01 _ 68, 000003C9
        call    io_out8                                 ; 0A06 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0A0B _ 83. C4, 10
        add     dword [ebp+10H], 3                      ; 0A0E _ 83. 45, 10, 03
        add     dword [ebp-10H], 1                      ; 0A12 _ 83. 45, F0, 01
?_012:  mov     eax, dword [ebp-10H]                    ; 0A16 _ 8B. 45, F0
        cmp     eax, dword [ebp+0CH]                    ; 0A19 _ 3B. 45, 0C
        jle     ?_011                                   ; 0A1C _ 7E, 93
        sub     esp, 12                                 ; 0A1E _ 83. EC, 0C
        push    dword [ebp-0CH]                         ; 0A21 _ FF. 75, F4
        call    io_store_eflags                         ; 0A24 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0A29 _ 83. C4, 10
        nop                                             ; 0A2C _ 90
        leave                                           ; 0A2D _ C9
        ret                                             ; 0A2E _ C3
; set_palette End of function

boxfill8:; Function begin
        push    ebp                                     ; 0A2F _ 55
        mov     ebp, esp                                ; 0A30 _ 89. E5
        sub     esp, 20                                 ; 0A32 _ 83. EC, 14
        mov     eax, dword [ebp+10H]                    ; 0A35 _ 8B. 45, 10
        mov     byte [ebp-14H], al                      ; 0A38 _ 88. 45, EC
        mov     eax, dword [ebp+18H]                    ; 0A3B _ 8B. 45, 18
        mov     dword [ebp-4H], eax                     ; 0A3E _ 89. 45, FC
        jmp     ?_016                                   ; 0A41 _ EB, 33

?_013:  mov     eax, dword [ebp+14H]                    ; 0A43 _ 8B. 45, 14
        mov     dword [ebp-8H], eax                     ; 0A46 _ 89. 45, F8
        jmp     ?_015                                   ; 0A49 _ EB, 1F

?_014:  mov     eax, dword [ebp-4H]                     ; 0A4B _ 8B. 45, FC
        imul    eax, dword [ebp+0CH]                    ; 0A4E _ 0F AF. 45, 0C
        mov     edx, eax                                ; 0A52 _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 0A54 _ 8B. 45, F8
        add     eax, edx                                ; 0A57 _ 01. D0
        mov     edx, eax                                ; 0A59 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 0A5B _ 8B. 45, 08
        add     edx, eax                                ; 0A5E _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0A60 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0A64 _ 88. 02
        add     dword [ebp-8H], 1                       ; 0A66 _ 83. 45, F8, 01
?_015:  mov     eax, dword [ebp-8H]                     ; 0A6A _ 8B. 45, F8
        cmp     eax, dword [ebp+1CH]                    ; 0A6D _ 3B. 45, 1C
        jle     ?_014                                   ; 0A70 _ 7E, D9
        add     dword [ebp-4H], 1                       ; 0A72 _ 83. 45, FC, 01
?_016:  mov     eax, dword [ebp-4H]                     ; 0A76 _ 8B. 45, FC
        cmp     eax, dword [ebp+20H]                    ; 0A79 _ 3B. 45, 20
        jle     ?_013                                   ; 0A7C _ 7E, C5
        nop                                             ; 0A7E _ 90
        leave                                           ; 0A7F _ C9
        ret                                             ; 0A80 _ C3
; boxfill8 End of function

showFont8:; Function begin
        push    ebp                                     ; 0A81 _ 55
        mov     ebp, esp                                ; 0A82 _ 89. E5
        sub     esp, 20                                 ; 0A84 _ 83. EC, 14
        mov     eax, dword [ebp+18H]                    ; 0A87 _ 8B. 45, 18
        mov     byte [ebp-14H], al                      ; 0A8A _ 88. 45, EC
        mov     dword [ebp-4H], 0                       ; 0A8D _ C7. 45, FC, 00000000
        jmp     ?_026                                   ; 0A94 _ E9, 0000016C

?_017:  mov     edx, dword [ebp-4H]                     ; 0A99 _ 8B. 55, FC
        mov     eax, dword [ebp+1CH]                    ; 0A9C _ 8B. 45, 1C
        add     eax, edx                                ; 0A9F _ 01. D0
        movzx   eax, byte [eax]                         ; 0AA1 _ 0F B6. 00
        mov     byte [ebp-5H], al                       ; 0AA4 _ 88. 45, FB
        cmp     byte [ebp-5H], 0                        ; 0AA7 _ 80. 7D, FB, 00
        jns     ?_018                                   ; 0AAB _ 79, 20
        mov     edx, dword [ebp+14H]                    ; 0AAD _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 0AB0 _ 8B. 45, FC
        add     eax, edx                                ; 0AB3 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 0AB5 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 0AB9 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 0ABB _ 8B. 45, 10
        add     eax, edx                                ; 0ABE _ 01. D0
        mov     edx, eax                                ; 0AC0 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 0AC2 _ 8B. 45, 08
        add     edx, eax                                ; 0AC5 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0AC7 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0ACB _ 88. 02
?_018:  movsx   eax, byte [ebp-5H]                      ; 0ACD _ 0F BE. 45, FB
        and     eax, 40H                                ; 0AD1 _ 83. E0, 40
        test    eax, eax                                ; 0AD4 _ 85. C0
        jz      ?_019                                   ; 0AD6 _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 0AD8 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 0ADB _ 8B. 45, FC
        add     eax, edx                                ; 0ADE _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 0AE0 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 0AE4 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 0AE6 _ 8B. 45, 10
        add     eax, edx                                ; 0AE9 _ 01. D0
        lea     edx, [eax+1H]                           ; 0AEB _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 0AEE _ 8B. 45, 08
        add     edx, eax                                ; 0AF1 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0AF3 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0AF7 _ 88. 02
?_019:  movsx   eax, byte [ebp-5H]                      ; 0AF9 _ 0F BE. 45, FB
        and     eax, 20H                                ; 0AFD _ 83. E0, 20
        test    eax, eax                                ; 0B00 _ 85. C0
        jz      ?_020                                   ; 0B02 _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 0B04 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 0B07 _ 8B. 45, FC
        add     eax, edx                                ; 0B0A _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 0B0C _ 0F AF. 45, 0C
        mov     edx, eax                                ; 0B10 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 0B12 _ 8B. 45, 10
        add     eax, edx                                ; 0B15 _ 01. D0
        lea     edx, [eax+2H]                           ; 0B17 _ 8D. 50, 02
        mov     eax, dword [ebp+8H]                     ; 0B1A _ 8B. 45, 08
        add     edx, eax                                ; 0B1D _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0B1F _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0B23 _ 88. 02
?_020:  movsx   eax, byte [ebp-5H]                      ; 0B25 _ 0F BE. 45, FB
        and     eax, 10H                                ; 0B29 _ 83. E0, 10
        test    eax, eax                                ; 0B2C _ 85. C0
        jz      ?_021                                   ; 0B2E _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 0B30 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 0B33 _ 8B. 45, FC
        add     eax, edx                                ; 0B36 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 0B38 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 0B3C _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 0B3E _ 8B. 45, 10
        add     eax, edx                                ; 0B41 _ 01. D0
        lea     edx, [eax+3H]                           ; 0B43 _ 8D. 50, 03
        mov     eax, dword [ebp+8H]                     ; 0B46 _ 8B. 45, 08
        add     edx, eax                                ; 0B49 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0B4B _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0B4F _ 88. 02
?_021:  movsx   eax, byte [ebp-5H]                      ; 0B51 _ 0F BE. 45, FB
        and     eax, 08H                                ; 0B55 _ 83. E0, 08
        test    eax, eax                                ; 0B58 _ 85. C0
        jz      ?_022                                   ; 0B5A _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 0B5C _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 0B5F _ 8B. 45, FC
        add     eax, edx                                ; 0B62 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 0B64 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 0B68 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 0B6A _ 8B. 45, 10
        add     eax, edx                                ; 0B6D _ 01. D0
        lea     edx, [eax+4H]                           ; 0B6F _ 8D. 50, 04
        mov     eax, dword [ebp+8H]                     ; 0B72 _ 8B. 45, 08
        add     edx, eax                                ; 0B75 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0B77 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0B7B _ 88. 02
?_022:  movsx   eax, byte [ebp-5H]                      ; 0B7D _ 0F BE. 45, FB
        and     eax, 04H                                ; 0B81 _ 83. E0, 04
        test    eax, eax                                ; 0B84 _ 85. C0
        jz      ?_023                                   ; 0B86 _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 0B88 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 0B8B _ 8B. 45, FC
        add     eax, edx                                ; 0B8E _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 0B90 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 0B94 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 0B96 _ 8B. 45, 10
        add     eax, edx                                ; 0B99 _ 01. D0
        lea     edx, [eax+5H]                           ; 0B9B _ 8D. 50, 05
        mov     eax, dword [ebp+8H]                     ; 0B9E _ 8B. 45, 08
        add     edx, eax                                ; 0BA1 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0BA3 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0BA7 _ 88. 02
?_023:  movsx   eax, byte [ebp-5H]                      ; 0BA9 _ 0F BE. 45, FB
        and     eax, 02H                                ; 0BAD _ 83. E0, 02
        test    eax, eax                                ; 0BB0 _ 85. C0
        jz      ?_024                                   ; 0BB2 _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 0BB4 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 0BB7 _ 8B. 45, FC
        add     eax, edx                                ; 0BBA _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 0BBC _ 0F AF. 45, 0C
        mov     edx, eax                                ; 0BC0 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 0BC2 _ 8B. 45, 10
        add     eax, edx                                ; 0BC5 _ 01. D0
        lea     edx, [eax+6H]                           ; 0BC7 _ 8D. 50, 06
        mov     eax, dword [ebp+8H]                     ; 0BCA _ 8B. 45, 08
        add     edx, eax                                ; 0BCD _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0BCF _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0BD3 _ 88. 02
?_024:  movsx   eax, byte [ebp-5H]                      ; 0BD5 _ 0F BE. 45, FB
        and     eax, 01H                                ; 0BD9 _ 83. E0, 01
        test    eax, eax                                ; 0BDC _ 85. C0
        jz      ?_025                                   ; 0BDE _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 0BE0 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 0BE3 _ 8B. 45, FC
        add     eax, edx                                ; 0BE6 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 0BE8 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 0BEC _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 0BEE _ 8B. 45, 10
        add     eax, edx                                ; 0BF1 _ 01. D0
        lea     edx, [eax+7H]                           ; 0BF3 _ 8D. 50, 07
        mov     eax, dword [ebp+8H]                     ; 0BF6 _ 8B. 45, 08
        add     edx, eax                                ; 0BF9 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0BFB _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0BFF _ 88. 02
?_025:  add     dword [ebp-4H], 1                       ; 0C01 _ 83. 45, FC, 01
?_026:  cmp     dword [ebp-4H], 15                      ; 0C05 _ 83. 7D, FC, 0F
        jle     ?_017                                   ; 0C09 _ 0F 8E, FFFFFE8A
        nop                                             ; 0C0F _ 90
        leave                                           ; 0C10 _ C9
        ret                                             ; 0C11 _ C3
; showFont8 End of function

init_mouse_cursor:; Function begin
        push    ebp                                     ; 0C12 _ 55
        mov     ebp, esp                                ; 0C13 _ 89. E5
        sub     esp, 20                                 ; 0C15 _ 83. EC, 14
        mov     eax, dword [ebp+0CH]                    ; 0C18 _ 8B. 45, 0C
        mov     byte [ebp-14H], al                      ; 0C1B _ 88. 45, EC
        mov     dword [ebp-4H], 0                       ; 0C1E _ C7. 45, FC, 00000000
        jmp     ?_033                                   ; 0C25 _ E9, 000000B1

?_027:  mov     dword [ebp-8H], 0                       ; 0C2A _ C7. 45, F8, 00000000
        jmp     ?_032                                   ; 0C31 _ E9, 00000097

?_028:  mov     eax, dword [ebp-4H]                     ; 0C36 _ 8B. 45, FC
        shl     eax, 4                                  ; 0C39 _ C1. E0, 04
        mov     edx, eax                                ; 0C3C _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 0C3E _ 8B. 45, F8
        add     eax, edx                                ; 0C41 _ 01. D0
        add     eax, cursor.1775                        ; 0C43 _ 05, 00000060(d)
        movzx   eax, byte [eax]                         ; 0C48 _ 0F B6. 00
        cmp     al, 42                                  ; 0C4B _ 3C, 2A
        jnz     ?_029                                   ; 0C4D _ 75, 17
        mov     eax, dword [ebp-4H]                     ; 0C4F _ 8B. 45, FC
        shl     eax, 4                                  ; 0C52 _ C1. E0, 04
        mov     edx, eax                                ; 0C55 _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 0C57 _ 8B. 45, F8
        add     eax, edx                                ; 0C5A _ 01. D0
        mov     edx, eax                                ; 0C5C _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 0C5E _ 8B. 45, 08
        add     eax, edx                                ; 0C61 _ 01. D0
        mov     byte [eax], 0                           ; 0C63 _ C6. 00, 00
?_029:  mov     eax, dword [ebp-4H]                     ; 0C66 _ 8B. 45, FC
        shl     eax, 4                                  ; 0C69 _ C1. E0, 04
        mov     edx, eax                                ; 0C6C _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 0C6E _ 8B. 45, F8
        add     eax, edx                                ; 0C71 _ 01. D0
        add     eax, cursor.1775                        ; 0C73 _ 05, 00000060(d)
        movzx   eax, byte [eax]                         ; 0C78 _ 0F B6. 00
        cmp     al, 79                                  ; 0C7B _ 3C, 4F
        jnz     ?_030                                   ; 0C7D _ 75, 17
        mov     eax, dword [ebp-4H]                     ; 0C7F _ 8B. 45, FC
        shl     eax, 4                                  ; 0C82 _ C1. E0, 04
        mov     edx, eax                                ; 0C85 _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 0C87 _ 8B. 45, F8
        add     eax, edx                                ; 0C8A _ 01. D0
        mov     edx, eax                                ; 0C8C _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 0C8E _ 8B. 45, 08
        add     eax, edx                                ; 0C91 _ 01. D0
        mov     byte [eax], 7                           ; 0C93 _ C6. 00, 07
?_030:  mov     eax, dword [ebp-4H]                     ; 0C96 _ 8B. 45, FC
        shl     eax, 4                                  ; 0C99 _ C1. E0, 04
        mov     edx, eax                                ; 0C9C _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 0C9E _ 8B. 45, F8
        add     eax, edx                                ; 0CA1 _ 01. D0
        add     eax, cursor.1775                        ; 0CA3 _ 05, 00000060(d)
        movzx   eax, byte [eax]                         ; 0CA8 _ 0F B6. 00
        cmp     al, 46                                  ; 0CAB _ 3C, 2E
        jnz     ?_031                                   ; 0CAD _ 75, 1A
        mov     eax, dword [ebp-4H]                     ; 0CAF _ 8B. 45, FC
        shl     eax, 4                                  ; 0CB2 _ C1. E0, 04
        mov     edx, eax                                ; 0CB5 _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 0CB7 _ 8B. 45, F8
        add     eax, edx                                ; 0CBA _ 01. D0
        mov     edx, eax                                ; 0CBC _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 0CBE _ 8B. 45, 08
        add     edx, eax                                ; 0CC1 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0CC3 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0CC7 _ 88. 02
?_031:  add     dword [ebp-8H], 1                       ; 0CC9 _ 83. 45, F8, 01
?_032:  cmp     dword [ebp-8H], 15                      ; 0CCD _ 83. 7D, F8, 0F
        jle     ?_028                                   ; 0CD1 _ 0F 8E, FFFFFF5F
        add     dword [ebp-4H], 1                       ; 0CD7 _ 83. 45, FC, 01
?_033:  cmp     dword [ebp-4H], 15                      ; 0CDB _ 83. 7D, FC, 0F
        jle     ?_027                                   ; 0CDF _ 0F 8E, FFFFFF45
        nop                                             ; 0CE5 _ 90
        leave                                           ; 0CE6 _ C9
        ret                                             ; 0CE7 _ C3
; init_mouse_cursor End of function

putblock:; Function begin
        push    ebp                                     ; 0CE8 _ 55
        mov     ebp, esp                                ; 0CE9 _ 89. E5
        push    ebx                                     ; 0CEB _ 53
        sub     esp, 16                                 ; 0CEC _ 83. EC, 10
        mov     dword [ebp-8H], 0                       ; 0CEF _ C7. 45, F8, 00000000
        jmp     ?_037                                   ; 0CF6 _ EB, 50

?_034:  mov     dword [ebp-0CH], 0                      ; 0CF8 _ C7. 45, F4, 00000000
        jmp     ?_036                                   ; 0CFF _ EB, 3B

?_035:  mov     eax, dword [ebp-8H]                     ; 0D01 _ 8B. 45, F8
        imul    eax, dword [ebp+24H]                    ; 0D04 _ 0F AF. 45, 24
        mov     edx, eax                                ; 0D08 _ 89. C2
        mov     eax, dword [ebp-0CH]                    ; 0D0A _ 8B. 45, F4
        add     eax, edx                                ; 0D0D _ 01. D0
        mov     edx, eax                                ; 0D0F _ 89. C2
        mov     eax, dword [ebp+20H]                    ; 0D11 _ 8B. 45, 20
        add     eax, edx                                ; 0D14 _ 01. D0
        mov     ecx, dword [ebp+1CH]                    ; 0D16 _ 8B. 4D, 1C
        mov     edx, dword [ebp-8H]                     ; 0D19 _ 8B. 55, F8
        add     edx, ecx                                ; 0D1C _ 01. CA
        imul    edx, dword [ebp+0CH]                    ; 0D1E _ 0F AF. 55, 0C
        mov     ebx, dword [ebp+18H]                    ; 0D22 _ 8B. 5D, 18
        mov     ecx, dword [ebp-0CH]                    ; 0D25 _ 8B. 4D, F4
        add     ecx, ebx                                ; 0D28 _ 01. D9
        add     edx, ecx                                ; 0D2A _ 01. CA
        mov     ecx, edx                                ; 0D2C _ 89. D1
        mov     edx, dword [ebp+8H]                     ; 0D2E _ 8B. 55, 08
        add     edx, ecx                                ; 0D31 _ 01. CA
        movzx   eax, byte [eax]                         ; 0D33 _ 0F B6. 00
        mov     byte [edx], al                          ; 0D36 _ 88. 02
        add     dword [ebp-0CH], 1                      ; 0D38 _ 83. 45, F4, 01
?_036:  mov     eax, dword [ebp-0CH]                    ; 0D3C _ 8B. 45, F4
        cmp     eax, dword [ebp+10H]                    ; 0D3F _ 3B. 45, 10
        jl      ?_035                                   ; 0D42 _ 7C, BD
        add     dword [ebp-8H], 1                       ; 0D44 _ 83. 45, F8, 01
?_037:  mov     eax, dword [ebp-8H]                     ; 0D48 _ 8B. 45, F8
        cmp     eax, dword [ebp+14H]                    ; 0D4B _ 3B. 45, 14
        jl      ?_034                                   ; 0D4E _ 7C, A8
        nop                                             ; 0D50 _ 90
        add     esp, 16                                 ; 0D51 _ 83. C4, 10
        pop     ebx                                     ; 0D54 _ 5B
        pop     ebp                                     ; 0D55 _ 5D
        ret                                             ; 0D56 _ C3
; putblock End of function

intHandlerFromC:; Function begin
        push    ebp                                     ; 0D57 _ 55
        mov     ebp, esp                                ; 0D58 _ 89. E5
        sub     esp, 24                                 ; 0D5A _ 83. EC, 18
        mov     eax, dword [bootInfo]                   ; 0D5D _ A1, 00000000(d)
        mov     dword [ebp-14H], eax                    ; 0D62 _ 89. 45, EC
        movzx   eax, word [?_169]                       ; 0D65 _ 0F B7. 05, 00000004(d)
        cwde                                            ; 0D6C _ 98
        mov     dword [ebp-10H], eax                    ; 0D6D _ 89. 45, F0
        movzx   eax, word [?_170]                       ; 0D70 _ 0F B7. 05, 00000006(d)
        cwde                                            ; 0D77 _ 98
        mov     dword [ebp-0CH], eax                    ; 0D78 _ 89. 45, F4
        sub     esp, 8                                  ; 0D7B _ 83. EC, 08
        push    32                                      ; 0D7E _ 6A, 20
        push    32                                      ; 0D80 _ 6A, 20
        call    io_out8                                 ; 0D82 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0D87 _ 83. C4, 10
        mov     byte [ebp-15H], 0                       ; 0D8A _ C6. 45, EB, 00
        sub     esp, 12                                 ; 0D8E _ 83. EC, 0C
        push    96                                      ; 0D91 _ 6A, 60
        call    io_in8                                  ; 0D93 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0D98 _ 83. C4, 10
        mov     byte [ebp-15H], al                      ; 0D9B _ 88. 45, EB
        movzx   eax, byte [ebp-15H]                     ; 0D9E _ 0F B6. 45, EB
        sub     esp, 8                                  ; 0DA2 _ 83. EC, 08
        push    eax                                     ; 0DA5 _ 50
        push    keyInfo                                 ; 0DA6 _ 68, 00000008(d)
        call    fifo8_put                               ; 0DAB _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0DB0 _ 83. C4, 10
        nop                                             ; 0DB3 _ 90
        leave                                           ; 0DB4 _ C9
        ret                                             ; 0DB5 _ C3
; intHandlerFromC End of function

charToHex:; Function begin
        push    ebp                                     ; 0DB6 _ 55
        mov     ebp, esp                                ; 0DB7 _ 89. E5
        sub     esp, 40                                 ; 0DB9 _ 83. EC, 28
        mov     eax, dword [ebp+8H]                     ; 0DBC _ 8B. 45, 08
        mov     byte [ebp-1CH], al                      ; 0DBF _ 88. 45, E4
        movzx   eax, byte [ebp-1CH]                     ; 0DC2 _ 0F B6. 45, E4
        and     eax, 0FH                                ; 0DC6 _ 83. E0, 0F
        mov     byte [ebp-9H], al                       ; 0DC9 _ 88. 45, F7
        movsx   eax, byte [ebp-9H]                      ; 0DCC _ 0F BE. 45, F7
        sub     esp, 12                                 ; 0DD0 _ 83. EC, 0C
        push    eax                                     ; 0DD3 _ 50
        call    charToVal                               ; 0DD4 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0DD9 _ 83. C4, 10
        mov     byte [?_168], al                        ; 0DDC _ A2, 00000003(d)
        movzx   eax, byte [ebp-1CH]                     ; 0DE1 _ 0F B6. 45, E4
        shr     al, 4                                   ; 0DE5 _ C0. E8, 04
        mov     byte [ebp-1CH], al                      ; 0DE8 _ 88. 45, E4
        movzx   eax, byte [ebp-1CH]                     ; 0DEB _ 0F B6. 45, E4
        movsx   eax, al                                 ; 0DEF _ 0F BE. C0
        sub     esp, 12                                 ; 0DF2 _ 83. EC, 0C
        push    eax                                     ; 0DF5 _ 50
        call    charToVal                               ; 0DF6 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0DFB _ 83. C4, 10
        mov     byte [?_167], al                        ; 0DFE _ A2, 00000002(d)
        mov     eax, keyVal                             ; 0E03 _ B8, 00000000(d)
        leave                                           ; 0E08 _ C9
        ret                                             ; 0E09 _ C3
; charToHex End of function

charToVal:; Function begin
        push    ebp                                     ; 0E0A _ 55
        mov     ebp, esp                                ; 0E0B _ 89. E5
        sub     esp, 4                                  ; 0E0D _ 83. EC, 04
        mov     eax, dword [ebp+8H]                     ; 0E10 _ 8B. 45, 08
        mov     byte [ebp-4H], al                       ; 0E13 _ 88. 45, FC
        cmp     byte [ebp-4H], 9                        ; 0E16 _ 80. 7D, FC, 09
        jle     ?_038                                   ; 0E1A _ 7E, 09
        movzx   eax, byte [ebp-4H]                      ; 0E1C _ 0F B6. 45, FC
        add     eax, 55                                 ; 0E20 _ 83. C0, 37
        jmp     ?_039                                   ; 0E23 _ EB, 07

?_038:  movzx   eax, byte [ebp-4H]                      ; 0E25 _ 0F B6. 45, FC
        add     eax, 48                                 ; 0E29 _ 83. C0, 30
?_039:  leave                                           ; 0E2C _ C9
        ret                                             ; 0E2D _ C3
; charToVal End of function

intToHexStr:; Function begin
        push    ebp                                     ; 0E2E _ 55
        mov     ebp, esp                                ; 0E2F _ 89. E5
        sub     esp, 16                                 ; 0E31 _ 83. EC, 10
        mov     byte [str.1818], 48                     ; 0E34 _ C6. 05, 00000260(d), 30
        mov     byte [?_171], 120                       ; 0E3B _ C6. 05, 00000261(d), 78
        mov     byte [?_172], 0                         ; 0E42 _ C6. 05, 0000026A(d), 00
        mov     dword [ebp-0CH], 2                      ; 0E49 _ C7. 45, F4, 00000002
        jmp     ?_041                                   ; 0E50 _ EB, 0F

?_040:  mov     eax, dword [ebp-0CH]                    ; 0E52 _ 8B. 45, F4
        add     eax, str.1818                           ; 0E55 _ 05, 00000260(d)
        mov     byte [eax], 48                          ; 0E5A _ C6. 00, 30
        add     dword [ebp-0CH], 1                      ; 0E5D _ 83. 45, F4, 01
?_041:  cmp     dword [ebp-0CH], 9                      ; 0E61 _ 83. 7D, F4, 09
        jle     ?_040                                   ; 0E65 _ 7E, EB
        mov     dword [ebp-8H], 9                       ; 0E67 _ C7. 45, F8, 00000009
        jmp     ?_044                                   ; 0E6E _ EB, 48

?_042:  mov     eax, dword [ebp+8H]                     ; 0E70 _ 8B. 45, 08
        and     eax, 0FH                                ; 0E73 _ 83. E0, 0F
        mov     dword [ebp-4H], eax                     ; 0E76 _ 89. 45, FC
        mov     eax, dword [ebp+8H]                     ; 0E79 _ 8B. 45, 08
        shr     eax, 4                                  ; 0E7C _ C1. E8, 04
        mov     dword [ebp+8H], eax                     ; 0E7F _ 89. 45, 08
        cmp     dword [ebp-4H], 9                       ; 0E82 _ 83. 7D, FC, 09
        jle     ?_043                                   ; 0E86 _ 7E, 19
        mov     eax, dword [ebp-4H]                     ; 0E88 _ 8B. 45, FC
        lea     ecx, [eax+37H]                          ; 0E8B _ 8D. 48, 37
        mov     eax, dword [ebp-8H]                     ; 0E8E _ 8B. 45, F8
        lea     edx, [eax-1H]                           ; 0E91 _ 8D. 50, FF
        mov     dword [ebp-8H], edx                     ; 0E94 _ 89. 55, F8
        mov     edx, ecx                                ; 0E97 _ 89. CA
        mov     byte [str.1818+eax], dl                 ; 0E99 _ 88. 90, 00000260(d)
        jmp     ?_044                                   ; 0E9F _ EB, 17

?_043:  mov     eax, dword [ebp-4H]                     ; 0EA1 _ 8B. 45, FC
        lea     ecx, [eax+30H]                          ; 0EA4 _ 8D. 48, 30
        mov     eax, dword [ebp-8H]                     ; 0EA7 _ 8B. 45, F8
        lea     edx, [eax-1H]                           ; 0EAA _ 8D. 50, FF
        mov     dword [ebp-8H], edx                     ; 0EAD _ 89. 55, F8
        mov     edx, ecx                                ; 0EB0 _ 89. CA
        mov     byte [str.1818+eax], dl                 ; 0EB2 _ 88. 90, 00000260(d)
?_044:  cmp     dword [ebp-8H], 1                       ; 0EB8 _ 83. 7D, F8, 01
        jle     ?_045                                   ; 0EBC _ 7E, 06
        cmp     dword [ebp+8H], 0                       ; 0EBE _ 83. 7D, 08, 00
        jnz     ?_042                                   ; 0EC2 _ 75, AC
?_045:  mov     eax, str.1818                           ; 0EC4 _ B8, 00000260(d)
        leave                                           ; 0EC9 _ C9
        ret                                             ; 0ECA _ C3
; intToHexStr End of function

wait_KBC_sendReady:; Function begin
        push    ebp                                     ; 0ECB _ 55
        mov     ebp, esp                                ; 0ECC _ 89. E5
        sub     esp, 8                                  ; 0ECE _ 83. EC, 08
?_046:  sub     esp, 12                                 ; 0ED1 _ 83. EC, 0C
        push    100                                     ; 0ED4 _ 6A, 64
        call    io_in8                                  ; 0ED6 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0EDB _ 83. C4, 10
        movsx   eax, al                                 ; 0EDE _ 0F BE. C0
        and     eax, 02H                                ; 0EE1 _ 83. E0, 02
        test    eax, eax                                ; 0EE4 _ 85. C0
        jz      ?_047                                   ; 0EE6 _ 74, 02
        jmp     ?_046                                   ; 0EE8 _ EB, E7

?_047:  nop                                             ; 0EEA _ 90
        nop                                             ; 0EEB _ 90
        leave                                           ; 0EEC _ C9
        ret                                             ; 0EED _ C3
; wait_KBC_sendReady End of function

init_keyboard:; Function begin
        push    ebp                                     ; 0EEE _ 55
        mov     ebp, esp                                ; 0EEF _ 89. E5
        sub     esp, 8                                  ; 0EF1 _ 83. EC, 08
        call    wait_KBC_sendReady                      ; 0EF4 _ E8, FFFFFFFC(rel)
        sub     esp, 8                                  ; 0EF9 _ 83. EC, 08
        push    96                                      ; 0EFC _ 6A, 60
        push    100                                     ; 0EFE _ 6A, 64
        call    io_out8                                 ; 0F00 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0F05 _ 83. C4, 10
        call    wait_KBC_sendReady                      ; 0F08 _ E8, FFFFFFFC(rel)
        sub     esp, 8                                  ; 0F0D _ 83. EC, 08
        push    71                                      ; 0F10 _ 6A, 47
        push    96                                      ; 0F12 _ 6A, 60
        call    io_out8                                 ; 0F14 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0F19 _ 83. C4, 10
        nop                                             ; 0F1C _ 90
        leave                                           ; 0F1D _ C9
        ret                                             ; 0F1E _ C3
; init_keyboard End of function

enable_mouse:; Function begin
        push    ebp                                     ; 0F1F _ 55
        mov     ebp, esp                                ; 0F20 _ 89. E5
        sub     esp, 8                                  ; 0F22 _ 83. EC, 08
        call    wait_KBC_sendReady                      ; 0F25 _ E8, FFFFFFFC(rel)
        sub     esp, 8                                  ; 0F2A _ 83. EC, 08
        push    212                                     ; 0F2D _ 68, 000000D4
        push    100                                     ; 0F32 _ 6A, 64
        call    io_out8                                 ; 0F34 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0F39 _ 83. C4, 10
        call    wait_KBC_sendReady                      ; 0F3C _ E8, FFFFFFFC(rel)
        sub     esp, 8                                  ; 0F41 _ 83. EC, 08
        push    244                                     ; 0F44 _ 68, 000000F4
        push    96                                      ; 0F49 _ 6A, 60
        call    io_out8                                 ; 0F4B _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0F50 _ 83. C4, 10
        mov     eax, dword [ebp+8H]                     ; 0F53 _ 8B. 45, 08
        mov     byte [eax+3H], 0                        ; 0F56 _ C6. 40, 03, 00
        nop                                             ; 0F5A _ 90
        leave                                           ; 0F5B _ C9
        ret                                             ; 0F5C _ C3
; enable_mouse End of function

intHandlerForMouse:; Function begin
        push    ebp                                     ; 0F5D _ 55
        mov     ebp, esp                                ; 0F5E _ 89. E5
        sub     esp, 24                                 ; 0F60 _ 83. EC, 18
        mov     byte [ebp-9H], 0                        ; 0F63 _ C6. 45, F7, 00
        sub     esp, 8                                  ; 0F67 _ 83. EC, 08
        push    32                                      ; 0F6A _ 6A, 20
        push    160                                     ; 0F6C _ 68, 000000A0
        call    io_out8                                 ; 0F71 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0F76 _ 83. C4, 10
        sub     esp, 8                                  ; 0F79 _ 83. EC, 08
        push    32                                      ; 0F7C _ 6A, 20
        push    32                                      ; 0F7E _ 6A, 20
        call    io_out8                                 ; 0F80 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0F85 _ 83. C4, 10
        sub     esp, 12                                 ; 0F88 _ 83. EC, 0C
        push    96                                      ; 0F8B _ 6A, 60
        call    io_in8                                  ; 0F8D _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0F92 _ 83. C4, 10
        mov     byte [ebp-9H], al                       ; 0F95 _ 88. 45, F7
        movzx   eax, byte [ebp-9H]                      ; 0F98 _ 0F B6. 45, F7
        sub     esp, 8                                  ; 0F9C _ 83. EC, 08
        push    eax                                     ; 0F9F _ 50
        push    mouseInfo                               ; 0FA0 _ 68, 00000020(d)
        call    fifo8_put                               ; 0FA5 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0FAA _ 83. C4, 10
        nop                                             ; 0FAD _ 90
        leave                                           ; 0FAE _ C9
        ret                                             ; 0FAF _ C3
; intHandlerForMouse End of function

showKeyboardInfo:; Function begin
        push    ebp                                     ; 0FB0 _ 55
        mov     ebp, esp                                ; 0FB1 _ 89. E5
        sub     esp, 40                                 ; 0FB3 _ 83. EC, 28
        call    io_sti                                  ; 0FB6 _ E8, FFFFFFFC(rel)
        mov     eax, dword [bootInfo]                   ; 0FBB _ A1, 00000000(d)
        mov     dword [ebp-18H], eax                    ; 0FC0 _ 89. 45, E8
        movzx   eax, word [?_169]                       ; 0FC3 _ 0F B7. 05, 00000004(d)
        cwde                                            ; 0FCA _ 98
        mov     dword [ebp-14H], eax                    ; 0FCB _ 89. 45, EC
        movzx   eax, word [?_170]                       ; 0FCE _ 0F B7. 05, 00000006(d)
        cwde                                            ; 0FD5 _ 98
        mov     dword [ebp-10H], eax                    ; 0FD6 _ 89. 45, F0
        mov     byte [ebp-19H], 0                       ; 0FD9 _ C6. 45, E7, 00
        sub     esp, 12                                 ; 0FDD _ 83. EC, 0C
        push    keyInfo                                 ; 0FE0 _ 68, 00000008(d)
        call    fifo8_get                               ; 0FE5 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0FEA _ 83. C4, 10
        mov     byte [ebp-19H], al                      ; 0FED _ 88. 45, E7
        movzx   eax, byte [ebp-19H]                     ; 0FF0 _ 0F B6. 45, E7
        sub     esp, 12                                 ; 0FF4 _ 83. EC, 0C
        push    eax                                     ; 0FF7 _ 50
        call    charToHex                               ; 0FF8 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0FFD _ 83. C4, 10
        mov     dword [ebp-0CH], eax                    ; 1000 _ 89. 45, F4
        mov     edx, dword [line.1851]                  ; 1003 _ 8B. 15, 0000026C(d)
        mov     eax, dword [pos.1850]                   ; 1009 _ A1, 00000270(d)
        sub     esp, 8                                  ; 100E _ 83. EC, 08
        push    dword [ebp-0CH]                         ; 1011 _ FF. 75, F4
        push    7                                       ; 1014 _ 6A, 07
        push    edx                                     ; 1016 _ 52
        push    eax                                     ; 1017 _ 50
        push    dword [ebp+0CH]                         ; 1018 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 101B _ FF. 75, 08
        call    showString                              ; 101E _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1023 _ 83. C4, 20
        mov     eax, dword [pos.1850]                   ; 1026 _ A1, 00000270(d)
        add     eax, 32                                 ; 102B _ 83. C0, 20
        mov     dword [pos.1850], eax                   ; 102E _ A3, 00000270(d)
        mov     eax, dword [pos.1850]                   ; 1033 _ A1, 00000270(d)
        cmp     dword [ebp-14H], eax                    ; 1038 _ 39. 45, EC
        jnz     ?_050                                   ; 103B _ 75, 28
        mov     eax, dword [line.1851]                  ; 103D _ A1, 0000026C(d)
        cmp     dword [ebp-10H], eax                    ; 1042 _ 39. 45, F0
        jz      ?_048                                   ; 1045 _ 74, 0A
        mov     eax, dword [line.1851]                  ; 1047 _ A1, 0000026C(d)
        add     eax, 16                                 ; 104C _ 83. C0, 10
        jmp     ?_049                                   ; 104F _ EB, 05

?_048:  mov     eax, 0                                  ; 1051 _ B8, 00000000
?_049:  mov     dword [line.1851], eax                  ; 1056 _ A3, 0000026C(d)
        mov     dword [pos.1850], 0                     ; 105B _ C7. 05, 00000270(d), 00000000
?_050:  nop                                             ; 1065 _ 90
        leave                                           ; 1066 _ C9
        ret                                             ; 1067 _ C3
; showKeyboardInfo End of function

showMouseInfo:; Function begin
        push    ebp                                     ; 1068 _ 55
        mov     ebp, esp                                ; 1069 _ 89. E5
        sub     esp, 24                                 ; 106B _ 83. EC, 18
        call    io_sti                                  ; 106E _ E8, FFFFFFFC(rel)
        mov     byte [ebp-9H], 0                        ; 1073 _ C6. 45, F7, 00
        sub     esp, 12                                 ; 1077 _ 83. EC, 0C
        push    mouseInfo                               ; 107A _ 68, 00000020(d)
        call    fifo8_get                               ; 107F _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1084 _ 83. C4, 10
        mov     byte [ebp-9H], al                       ; 1087 _ 88. 45, F7
        movzx   eax, byte [ebp-9H]                      ; 108A _ 0F B6. 45, F7
        sub     esp, 8                                  ; 108E _ 83. EC, 08
        push    eax                                     ; 1091 _ 50
        push    mouse_move                              ; 1092 _ 68, 000000E0(d)
        call    mouse_decode                            ; 1097 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 109C _ 83. C4, 10
        test    eax, eax                                ; 109F _ 85. C0
        jz      ?_051                                   ; 10A1 _ 74, 31
        sub     esp, 4                                  ; 10A3 _ 83. EC, 04
        push    mouse_move                              ; 10A6 _ 68, 000000E0(d)
        push    dword [ebp+0CH]                         ; 10AB _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 10AE _ FF. 75, 08
        call    computeMousePos                         ; 10B1 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 10B6 _ 83. C4, 10
        mov     edx, dword [my]                         ; 10B9 _ 8B. 15, 000000F4(d)
        mov     eax, dword [mx]                         ; 10BF _ A1, 000000F0(d)
        push    edx                                     ; 10C4 _ 52
        push    eax                                     ; 10C5 _ 50
        push    dword [ebp+10H]                         ; 10C6 _ FF. 75, 10
        push    dword [ebp+8H]                          ; 10C9 _ FF. 75, 08
        call    sheet_slide                             ; 10CC _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 10D1 _ 83. C4, 10
?_051:  nop                                             ; 10D4 _ 90
        leave                                           ; 10D5 _ C9
        ret                                             ; 10D6 _ C3
; showMouseInfo End of function

mouse_decode:; Function begin
        push    ebp                                     ; 10D7 _ 55
        mov     ebp, esp                                ; 10D8 _ 89. E5
        sub     esp, 4                                  ; 10DA _ 83. EC, 04
        mov     eax, dword [ebp+0CH]                    ; 10DD _ 8B. 45, 0C
        mov     byte [ebp-4H], al                       ; 10E0 _ 88. 45, FC
        mov     eax, dword [ebp+8H]                     ; 10E3 _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 10E6 _ 0F B6. 40, 03
        test    al, al                                  ; 10EA _ 84. C0
        jnz     ?_053                                   ; 10EC _ 75, 17
        cmp     byte [ebp-4H], -6                       ; 10EE _ 80. 7D, FC, FA
        jnz     ?_052                                   ; 10F2 _ 75, 07
        mov     eax, dword [ebp+8H]                     ; 10F4 _ 8B. 45, 08
        mov     byte [eax+3H], 1                        ; 10F7 _ C6. 40, 03, 01
?_052:  mov     eax, 0                                  ; 10FB _ B8, 00000000
        jmp     ?_060                                   ; 1100 _ E9, 0000010C

?_053:  mov     eax, dword [ebp+8H]                     ; 1105 _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 1108 _ 0F B6. 40, 03
        cmp     al, 1                                   ; 110C _ 3C, 01
        jnz     ?_055                                   ; 110E _ 75, 25
        movzx   eax, byte [ebp-4H]                      ; 1110 _ 0F B6. 45, FC
        or      eax, 37H                                ; 1114 _ 83. C8, 37
        cmp     al, 63                                  ; 1117 _ 3C, 3F
        jnz     ?_054                                   ; 1119 _ 75, 10
        mov     eax, dword [ebp+8H]                     ; 111B _ 8B. 45, 08
        movzx   edx, byte [ebp-4H]                      ; 111E _ 0F B6. 55, FC
        mov     byte [eax], dl                          ; 1122 _ 88. 10
        mov     eax, dword [ebp+8H]                     ; 1124 _ 8B. 45, 08
        mov     byte [eax+3H], 2                        ; 1127 _ C6. 40, 03, 02
?_054:  mov     eax, 0                                  ; 112B _ B8, 00000000
        jmp     ?_060                                   ; 1130 _ E9, 000000DC

?_055:  mov     eax, dword [ebp+8H]                     ; 1135 _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 1138 _ 0F B6. 40, 03
        cmp     al, 2                                   ; 113C _ 3C, 02
        jnz     ?_056                                   ; 113E _ 75, 1B
        mov     eax, dword [ebp+8H]                     ; 1140 _ 8B. 45, 08
        movzx   edx, byte [ebp-4H]                      ; 1143 _ 0F B6. 55, FC
        mov     byte [eax+1H], dl                       ; 1147 _ 88. 50, 01
        mov     eax, dword [ebp+8H]                     ; 114A _ 8B. 45, 08
        mov     byte [eax+3H], 3                        ; 114D _ C6. 40, 03, 03
        mov     eax, 0                                  ; 1151 _ B8, 00000000
        jmp     ?_060                                   ; 1156 _ E9, 000000B6

?_056:  mov     eax, dword [ebp+8H]                     ; 115B _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 115E _ 0F B6. 40, 03
        cmp     al, 3                                   ; 1162 _ 3C, 03
        jne     ?_059                                   ; 1164 _ 0F 85, 000000A2
        mov     eax, dword [ebp+8H]                     ; 116A _ 8B. 45, 08
        movzx   edx, byte [ebp-4H]                      ; 116D _ 0F B6. 55, FC
        mov     byte [eax+2H], dl                       ; 1171 _ 88. 50, 02
        mov     eax, dword [ebp+8H]                     ; 1174 _ 8B. 45, 08
        mov     byte [eax+3H], 1                        ; 1177 _ C6. 40, 03, 01
        mov     eax, dword [ebp+8H]                     ; 117B _ 8B. 45, 08
        movzx   eax, byte [eax]                         ; 117E _ 0F B6. 00
        movzx   eax, al                                 ; 1181 _ 0F B6. C0
        and     eax, 07H                                ; 1184 _ 83. E0, 07
        mov     edx, eax                                ; 1187 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 1189 _ 8B. 45, 08
        mov     dword [eax+0CH], edx                    ; 118C _ 89. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 118F _ 8B. 45, 08
        movzx   eax, byte [eax+1H]                      ; 1192 _ 0F B6. 40, 01
        movzx   edx, al                                 ; 1196 _ 0F B6. D0
        mov     eax, dword [ebp+8H]                     ; 1199 _ 8B. 45, 08
        mov     dword [eax+4H], edx                     ; 119C _ 89. 50, 04
        mov     eax, dword [ebp+8H]                     ; 119F _ 8B. 45, 08
        movzx   eax, byte [eax+2H]                      ; 11A2 _ 0F B6. 40, 02
        movzx   edx, al                                 ; 11A6 _ 0F B6. D0
        mov     eax, dword [ebp+8H]                     ; 11A9 _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 11AC _ 89. 50, 08
        mov     eax, dword [ebp+8H]                     ; 11AF _ 8B. 45, 08
        movzx   eax, byte [eax]                         ; 11B2 _ 0F B6. 00
        movzx   eax, al                                 ; 11B5 _ 0F B6. C0
        and     eax, 10H                                ; 11B8 _ 83. E0, 10
        test    eax, eax                                ; 11BB _ 85. C0
        jz      ?_057                                   ; 11BD _ 74, 13
        mov     eax, dword [ebp+8H]                     ; 11BF _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 11C2 _ 8B. 40, 04
        or      eax, 0FFFFFF00H                         ; 11C5 _ 0D, FFFFFF00
        mov     edx, eax                                ; 11CA _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 11CC _ 8B. 45, 08
        mov     dword [eax+4H], edx                     ; 11CF _ 89. 50, 04
?_057:  mov     eax, dword [ebp+8H]                     ; 11D2 _ 8B. 45, 08
        movzx   eax, byte [eax]                         ; 11D5 _ 0F B6. 00
        movzx   eax, al                                 ; 11D8 _ 0F B6. C0
        and     eax, 20H                                ; 11DB _ 83. E0, 20
        test    eax, eax                                ; 11DE _ 85. C0
        jz      ?_058                                   ; 11E0 _ 74, 13
        mov     eax, dword [ebp+8H]                     ; 11E2 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 11E5 _ 8B. 40, 08
        or      eax, 0FFFFFF00H                         ; 11E8 _ 0D, FFFFFF00
        mov     edx, eax                                ; 11ED _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 11EF _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 11F2 _ 89. 50, 08
?_058:  mov     eax, dword [ebp+8H]                     ; 11F5 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 11F8 _ 8B. 40, 08
        neg     eax                                     ; 11FB _ F7. D8
        mov     edx, eax                                ; 11FD _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 11FF _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 1202 _ 89. 50, 08
        mov     eax, 1                                  ; 1205 _ B8, 00000001
        jmp     ?_060                                   ; 120A _ EB, 05

?_059:  mov     eax, 4294967295                         ; 120C _ B8, FFFFFFFF
?_060:  leave                                           ; 1211 _ C9
        ret                                             ; 1212 _ C3
; mouse_decode End of function

computeMousePos:; Function begin
        push    ebp                                     ; 1213 _ 55
        mov     ebp, esp                                ; 1214 _ 89. E5
        sub     esp, 24                                 ; 1216 _ 83. EC, 18
        movzx   eax, word [?_169]                       ; 1219 _ 0F B7. 05, 00000004(d)
        cwde                                            ; 1220 _ 98
        mov     dword [ebp-10H], eax                    ; 1221 _ 89. 45, F0
        movzx   eax, word [?_170]                       ; 1224 _ 0F B7. 05, 00000006(d)
        cwde                                            ; 122B _ 98
        mov     dword [ebp-0CH], eax                    ; 122C _ 89. 45, F4
        mov     eax, dword [ebp+10H]                    ; 122F _ 8B. 45, 10
        mov     edx, dword [eax+4H]                     ; 1232 _ 8B. 50, 04
        mov     eax, dword [mx]                         ; 1235 _ A1, 000000F0(d)
        add     eax, edx                                ; 123A _ 01. D0
        mov     dword [mx], eax                         ; 123C _ A3, 000000F0(d)
        mov     eax, dword [ebp+10H]                    ; 1241 _ 8B. 45, 10
        mov     edx, dword [eax+8H]                     ; 1244 _ 8B. 50, 08
        mov     eax, dword [my]                         ; 1247 _ A1, 000000F4(d)
        add     eax, edx                                ; 124C _ 01. D0
        mov     dword [my], eax                         ; 124E _ A3, 000000F4(d)
        mov     eax, dword [mx]                         ; 1253 _ A1, 000000F0(d)
        test    eax, eax                                ; 1258 _ 85. C0
        jns     ?_061                                   ; 125A _ 79, 0A
        mov     dword [mx], 0                           ; 125C _ C7. 05, 000000F0(d), 00000000
?_061:  mov     eax, dword [my]                         ; 1266 _ A1, 000000F4(d)
        test    eax, eax                                ; 126B _ 85. C0
        jns     ?_062                                   ; 126D _ 79, 0A
        mov     dword [my], 0                           ; 126F _ C7. 05, 000000F4(d), 00000000
?_062:  mov     eax, dword [ebp-10H]                    ; 1279 _ 8B. 45, F0
        lea     edx, [eax-9H]                           ; 127C _ 8D. 50, F7
        mov     eax, dword [mx]                         ; 127F _ A1, 000000F0(d)
        cmp     edx, eax                                ; 1284 _ 39. C2
        jge     ?_063                                   ; 1286 _ 7D, 0B
        mov     eax, dword [ebp-10H]                    ; 1288 _ 8B. 45, F0
        sub     eax, 9                                  ; 128B _ 83. E8, 09
        mov     dword [mx], eax                         ; 128E _ A3, 000000F0(d)
?_063:  mov     eax, dword [ebp-0CH]                    ; 1293 _ 8B. 45, F4
        lea     edx, [eax-1H]                           ; 1296 _ 8D. 50, FF
        mov     eax, dword [my]                         ; 1299 _ A1, 000000F4(d)
        cmp     edx, eax                                ; 129E _ 39. C2
        jge     ?_064                                   ; 12A0 _ 7D, 0B
        mov     eax, dword [ebp-0CH]                    ; 12A2 _ 8B. 45, F4
        sub     eax, 1                                  ; 12A5 _ 83. E8, 01
        mov     dword [my], eax                         ; 12A8 _ A3, 000000F4(d)
?_064:  mov     eax, dword [buf_back]                   ; 12AD _ A1, 000000F8(d)
        push    15                                      ; 12B2 _ 6A, 0F
        push    79                                      ; 12B4 _ 6A, 4F
        push    0                                       ; 12B6 _ 6A, 00
        push    0                                       ; 12B8 _ 6A, 00
        push    14                                      ; 12BA _ 6A, 0E
        push    dword [ebp-10H]                         ; 12BC _ FF. 75, F0
        push    eax                                     ; 12BF _ 50
        call    boxfill8                                ; 12C0 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 12C5 _ 83. C4, 1C
        sub     esp, 8                                  ; 12C8 _ 83. EC, 08
        push    ?_160                                   ; 12CB _ 68, 0000002F(d)
        push    3                                       ; 12D0 _ 6A, 03
        push    0                                       ; 12D2 _ 6A, 00
        push    0                                       ; 12D4 _ 6A, 00
        push    dword [ebp+0CH]                         ; 12D6 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 12D9 _ FF. 75, 08
        call    showString                              ; 12DC _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 12E1 _ 83. C4, 20
        nop                                             ; 12E4 _ 90
        leave                                           ; 12E5 _ C9
        ret                                             ; 12E6 _ C3
; computeMousePos End of function

showMemInfo:; Function begin
        push    ebp                                     ; 12E7 _ 55
        mov     ebp, esp                                ; 12E8 _ 89. E5
        sub     esp, 56                                 ; 12EA _ 83. EC, 38
        mov     dword [ebp-30H], 0                      ; 12ED _ C7. 45, D0, 00000000
        mov     dword [ebp-2CH], 0                      ; 12F4 _ C7. 45, D4, 00000000
        mov     dword [ebp-28H], 112                    ; 12FB _ C7. 45, D8, 00000070
        mov     dword [ebp-24H], 80                     ; 1302 _ C7. 45, DC, 00000050
        push    100                                     ; 1309 _ 6A, 64
        push    dword [ebp+1CH]                         ; 130B _ FF. 75, 1C
        push    0                                       ; 130E _ 6A, 00
        push    0                                       ; 1310 _ 6A, 00
        push    14                                      ; 1312 _ 6A, 0E
        push    dword [ebp+1CH]                         ; 1314 _ FF. 75, 1C
        push    dword [ebp+14H]                         ; 1317 _ FF. 75, 14
        call    boxfill8                                ; 131A _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 131F _ 83. C4, 1C
        mov     eax, dword [ebp+20H]                    ; 1322 _ 8B. 45, 20
        movsx   eax, al                                 ; 1325 _ 0F BE. C0
        sub     esp, 8                                  ; 1328 _ 83. EC, 08
        push    ?_161                                   ; 132B _ 68, 00000046(d)
        push    eax                                     ; 1330 _ 50
        push    dword [ebp-2CH]                         ; 1331 _ FF. 75, D4
        push    dword [ebp-30H]                         ; 1334 _ FF. 75, D0
        push    dword [ebp+0CH]                         ; 1337 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 133A _ FF. 75, 08
        call    showString                              ; 133D _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1342 _ 83. C4, 20
        mov     eax, dword [ebp+18H]                    ; 1345 _ 8B. 45, 18
        sub     esp, 12                                 ; 1348 _ 83. EC, 0C
        push    eax                                     ; 134B _ 50
        call    intToHexStr                             ; 134C _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1351 _ 83. C4, 10
        mov     dword [ebp-20H], eax                    ; 1354 _ 89. 45, E0
        mov     eax, dword [ebp+20H]                    ; 1357 _ 8B. 45, 20
        movsx   eax, al                                 ; 135A _ 0F BE. C0
        sub     esp, 8                                  ; 135D _ 83. EC, 08
        push    dword [ebp-20H]                         ; 1360 _ FF. 75, E0
        push    eax                                     ; 1363 _ 50
        push    dword [ebp-2CH]                         ; 1364 _ FF. 75, D4
        push    dword [ebp-28H]                         ; 1367 _ FF. 75, D8
        push    dword [ebp+0CH]                         ; 136A _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 136D _ FF. 75, 08
        call    showString                              ; 1370 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1375 _ 83. C4, 20
        add     dword [ebp-2CH], 16                     ; 1378 _ 83. 45, D4, 10
        mov     eax, dword [ebp+20H]                    ; 137C _ 8B. 45, 20
        movsx   eax, al                                 ; 137F _ 0F BE. C0
        sub     esp, 8                                  ; 1382 _ 83. EC, 08
        push    ?_162                                   ; 1385 _ 68, 00000050(d)
        push    eax                                     ; 138A _ 50
        push    dword [ebp-2CH]                         ; 138B _ FF. 75, D4
        push    dword [ebp-30H]                         ; 138E _ FF. 75, D0
        push    dword [ebp+0CH]                         ; 1391 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1394 _ FF. 75, 08
        call    showString                              ; 1397 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 139C _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 139F _ 8B. 45, 10
        mov     eax, dword [eax]                        ; 13A2 _ 8B. 00
        sub     esp, 12                                 ; 13A4 _ 83. EC, 0C
        push    eax                                     ; 13A7 _ 50
        call    intToHexStr                             ; 13A8 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 13AD _ 83. C4, 10
        mov     dword [ebp-1CH], eax                    ; 13B0 _ 89. 45, E4
        mov     eax, dword [ebp+20H]                    ; 13B3 _ 8B. 45, 20
        movsx   eax, al                                 ; 13B6 _ 0F BE. C0
        sub     esp, 8                                  ; 13B9 _ 83. EC, 08
        push    dword [ebp-1CH]                         ; 13BC _ FF. 75, E4
        push    eax                                     ; 13BF _ 50
        push    dword [ebp-2CH]                         ; 13C0 _ FF. 75, D4
        push    dword [ebp-28H]                         ; 13C3 _ FF. 75, D8
        push    dword [ebp+0CH]                         ; 13C6 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 13C9 _ FF. 75, 08
        call    showString                              ; 13CC _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 13D1 _ 83. C4, 20
        add     dword [ebp-2CH], 16                     ; 13D4 _ 83. 45, D4, 10
        mov     eax, dword [ebp+20H]                    ; 13D8 _ 8B. 45, 20
        movsx   eax, al                                 ; 13DB _ 0F BE. C0
        sub     esp, 8                                  ; 13DE _ 83. EC, 08
        push    ?_163                                   ; 13E1 _ 68, 0000005E(d)
        push    eax                                     ; 13E6 _ 50
        push    dword [ebp-2CH]                         ; 13E7 _ FF. 75, D4
        push    dword [ebp-30H]                         ; 13EA _ FF. 75, D0
        push    dword [ebp+0CH]                         ; 13ED _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 13F0 _ FF. 75, 08
        call    showString                              ; 13F3 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 13F8 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 13FB _ 8B. 45, 10
        mov     eax, dword [eax+4H]                     ; 13FE _ 8B. 40, 04
        sub     esp, 12                                 ; 1401 _ 83. EC, 0C
        push    eax                                     ; 1404 _ 50
        call    intToHexStr                             ; 1405 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 140A _ 83. C4, 10
        mov     dword [ebp-18H], eax                    ; 140D _ 89. 45, E8
        mov     eax, dword [ebp+20H]                    ; 1410 _ 8B. 45, 20
        movsx   eax, al                                 ; 1413 _ 0F BE. C0
        sub     esp, 8                                  ; 1416 _ 83. EC, 08
        push    dword [ebp-18H]                         ; 1419 _ FF. 75, E8
        push    eax                                     ; 141C _ 50
        push    dword [ebp-2CH]                         ; 141D _ FF. 75, D4
        push    dword [ebp-28H]                         ; 1420 _ FF. 75, D8
        push    dword [ebp+0CH]                         ; 1423 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1426 _ FF. 75, 08
        call    showString                              ; 1429 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 142E _ 83. C4, 20
        add     dword [ebp-2CH], 16                     ; 1431 _ 83. 45, D4, 10
        mov     eax, dword [ebp+20H]                    ; 1435 _ 8B. 45, 20
        movsx   eax, al                                 ; 1438 _ 0F BE. C0
        sub     esp, 8                                  ; 143B _ 83. EC, 08
        push    ?_164                                   ; 143E _ 68, 0000006D(d)
        push    eax                                     ; 1443 _ 50
        push    dword [ebp-2CH]                         ; 1444 _ FF. 75, D4
        push    dword [ebp-30H]                         ; 1447 _ FF. 75, D0
        push    dword [ebp+0CH]                         ; 144A _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 144D _ FF. 75, 08
        call    showString                              ; 1450 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1455 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 1458 _ 8B. 45, 10
        mov     eax, dword [eax+8H]                     ; 145B _ 8B. 40, 08
        sub     esp, 12                                 ; 145E _ 83. EC, 0C
        push    eax                                     ; 1461 _ 50
        call    intToHexStr                             ; 1462 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1467 _ 83. C4, 10
        mov     dword [ebp-14H], eax                    ; 146A _ 89. 45, EC
        mov     eax, dword [ebp+20H]                    ; 146D _ 8B. 45, 20
        movsx   eax, al                                 ; 1470 _ 0F BE. C0
        sub     esp, 8                                  ; 1473 _ 83. EC, 08
        push    dword [ebp-14H]                         ; 1476 _ FF. 75, EC
        push    eax                                     ; 1479 _ 50
        push    dword [ebp-2CH]                         ; 147A _ FF. 75, D4
        push    dword [ebp-28H]                         ; 147D _ FF. 75, D8
        push    dword [ebp+0CH]                         ; 1480 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1483 _ FF. 75, 08
        call    showString                              ; 1486 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 148B _ 83. C4, 20
        add     dword [ebp-2CH], 16                     ; 148E _ 83. 45, D4, 10
        mov     eax, dword [ebp+20H]                    ; 1492 _ 8B. 45, 20
        movsx   eax, al                                 ; 1495 _ 0F BE. C0
        sub     esp, 8                                  ; 1498 _ 83. EC, 08
        push    ?_165                                   ; 149B _ 68, 00000079(d)
        push    eax                                     ; 14A0 _ 50
        push    dword [ebp-2CH]                         ; 14A1 _ FF. 75, D4
        push    dword [ebp-30H]                         ; 14A4 _ FF. 75, D0
        push    dword [ebp+0CH]                         ; 14A7 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 14AA _ FF. 75, 08
        call    showString                              ; 14AD _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 14B2 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 14B5 _ 8B. 45, 10
        mov     eax, dword [eax+0CH]                    ; 14B8 _ 8B. 40, 0C
        sub     esp, 12                                 ; 14BB _ 83. EC, 0C
        push    eax                                     ; 14BE _ 50
        call    intToHexStr                             ; 14BF _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 14C4 _ 83. C4, 10
        mov     dword [ebp-10H], eax                    ; 14C7 _ 89. 45, F0
        mov     eax, dword [ebp+20H]                    ; 14CA _ 8B. 45, 20
        movsx   eax, al                                 ; 14CD _ 0F BE. C0
        sub     esp, 8                                  ; 14D0 _ 83. EC, 08
        push    dword [ebp-10H]                         ; 14D3 _ FF. 75, F0
        push    eax                                     ; 14D6 _ 50
        push    dword [ebp-2CH]                         ; 14D7 _ FF. 75, D4
        push    dword [ebp-28H]                         ; 14DA _ FF. 75, D8
        push    dword [ebp+0CH]                         ; 14DD _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 14E0 _ FF. 75, 08
        call    showString                              ; 14E3 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 14E8 _ 83. C4, 20
        add     dword [ebp-2CH], 16                     ; 14EB _ 83. 45, D4, 10
        mov     eax, dword [ebp+20H]                    ; 14EF _ 8B. 45, 20
        movsx   eax, al                                 ; 14F2 _ 0F BE. C0
        sub     esp, 8                                  ; 14F5 _ 83. EC, 08
        push    ?_166                                   ; 14F8 _ 68, 00000086(d)
        push    eax                                     ; 14FD _ 50
        push    dword [ebp-2CH]                         ; 14FE _ FF. 75, D4
        push    dword [ebp-30H]                         ; 1501 _ FF. 75, D0
        push    dword [ebp+0CH]                         ; 1504 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1507 _ FF. 75, 08
        call    showString                              ; 150A _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 150F _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 1512 _ 8B. 45, 10
        mov     eax, dword [eax+10H]                    ; 1515 _ 8B. 40, 10
        sub     esp, 12                                 ; 1518 _ 83. EC, 0C
        push    eax                                     ; 151B _ 50
        call    intToHexStr                             ; 151C _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1521 _ 83. C4, 10
        mov     dword [ebp-0CH], eax                    ; 1524 _ 89. 45, F4
        mov     eax, dword [ebp+20H]                    ; 1527 _ 8B. 45, 20
        movsx   eax, al                                 ; 152A _ 0F BE. C0
        sub     esp, 8                                  ; 152D _ 83. EC, 08
        push    dword [ebp-0CH]                         ; 1530 _ FF. 75, F4
        push    eax                                     ; 1533 _ 50
        push    dword [ebp-2CH]                         ; 1534 _ FF. 75, D4
        push    dword [ebp-28H]                         ; 1537 _ FF. 75, D8
        push    dword [ebp+0CH]                         ; 153A _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 153D _ FF. 75, 08
        call    showString                              ; 1540 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1545 _ 83. C4, 20
        add     dword [ebp-2CH], 16                     ; 1548 _ 83. 45, D4, 10
        nop                                             ; 154C _ 90
        leave                                           ; 154D _ C9
        ret                                             ; 154E _ C3
; showMemInfo End of function

messageBox:; Function begin
        push    ebp                                     ; 154F _ 55
        mov     ebp, esp                                ; 1550 _ 89. E5
        sub     esp, 24                                 ; 1552 _ 83. EC, 18
        mov     eax, dword [memman]                     ; 1555 _ A1, 00000008(d)
        sub     esp, 8                                  ; 155A _ 83. EC, 08
        push    12000                                   ; 155D _ 68, 00002EE0
        push    eax                                     ; 1562 _ 50
        call    memman_alloc_4K                         ; 1563 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1568 _ 83. C4, 10
        mov     dword [ebp-10H], eax                    ; 156B _ 89. 45, F0
        sub     esp, 12                                 ; 156E _ 83. EC, 0C
        push    dword [ebp+8H]                          ; 1571 _ FF. 75, 08
        call    sheet_alloc                             ; 1574 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1579 _ 83. C4, 10
        mov     dword [ebp-0CH], eax                    ; 157C _ 89. 45, F4
        sub     esp, 12                                 ; 157F _ 83. EC, 0C
        push    99                                      ; 1582 _ 6A, 63
        push    75                                      ; 1584 _ 6A, 4B
        push    160                                     ; 1586 _ 68, 000000A0
        push    dword [ebp-10H]                         ; 158B _ FF. 75, F0
        push    dword [ebp-0CH]                         ; 158E _ FF. 75, F4
        call    sheet_setbuf                            ; 1591 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1596 _ 83. C4, 20
        sub     esp, 4                                  ; 1599 _ 83. EC, 04
        push    dword [ebp+0CH]                         ; 159C _ FF. 75, 0C
        push    dword [ebp-0CH]                         ; 159F _ FF. 75, F4
        push    dword [ebp+8H]                          ; 15A2 _ FF. 75, 08
        call    make_window8                            ; 15A5 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 15AA _ 83. C4, 10
        push    40                                      ; 15AD _ 6A, 28
        push    60                                      ; 15AF _ 6A, 3C
        push    dword [ebp-0CH]                         ; 15B1 _ FF. 75, F4
        push    dword [ebp+8H]                          ; 15B4 _ FF. 75, 08
        call    sheet_slide                             ; 15B7 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 15BC _ 83. C4, 10
        sub     esp, 4                                  ; 15BF _ 83. EC, 04
        push    1                                       ; 15C2 _ 6A, 01
        push    dword [ebp-0CH]                         ; 15C4 _ FF. 75, F4
        push    dword [ebp+8H]                          ; 15C7 _ FF. 75, 08
        call    sheet_level_updown                      ; 15CA _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 15CF _ 83. C4, 10
        mov     eax, dword [ebp-0CH]                    ; 15D2 _ 8B. 45, F4
        leave                                           ; 15D5 _ C9
        ret                                             ; 15D6 _ C3
; messageBox End of function

make_window8:; Function begin
        push    ebp                                     ; 15D7 _ 55
        mov     ebp, esp                                ; 15D8 _ 89. E5
        push    ebx                                     ; 15DA _ 53
        sub     esp, 36                                 ; 15DB _ 83. EC, 24
        mov     eax, dword [ebp+0CH]                    ; 15DE _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 15E1 _ 8B. 40, 04
        mov     dword [ebp-10H], eax                    ; 15E4 _ 89. 45, F0
        mov     eax, dword [ebp+0CH]                    ; 15E7 _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 15EA _ 8B. 40, 08
        mov     dword [ebp-0CH], eax                    ; 15ED _ 89. 45, F4
        mov     eax, dword [ebp-10H]                    ; 15F0 _ 8B. 45, F0
        lea     edx, [eax-1H]                           ; 15F3 _ 8D. 50, FF
        mov     eax, dword [ebp+0CH]                    ; 15F6 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 15F9 _ 8B. 00
        push    0                                       ; 15FB _ 6A, 00
        push    edx                                     ; 15FD _ 52
        push    0                                       ; 15FE _ 6A, 00
        push    0                                       ; 1600 _ 6A, 00
        push    8                                       ; 1602 _ 6A, 08
        push    dword [ebp-10H]                         ; 1604 _ FF. 75, F0
        push    eax                                     ; 1607 _ 50
        call    boxfill8                                ; 1608 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 160D _ 83. C4, 1C
        mov     eax, dword [ebp-10H]                    ; 1610 _ 8B. 45, F0
        lea     edx, [eax-2H]                           ; 1613 _ 8D. 50, FE
        mov     eax, dword [ebp+0CH]                    ; 1616 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 1619 _ 8B. 00
        push    1                                       ; 161B _ 6A, 01
        push    edx                                     ; 161D _ 52
        push    1                                       ; 161E _ 6A, 01
        push    1                                       ; 1620 _ 6A, 01
        push    7                                       ; 1622 _ 6A, 07
        push    dword [ebp-10H]                         ; 1624 _ FF. 75, F0
        push    eax                                     ; 1627 _ 50
        call    boxfill8                                ; 1628 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 162D _ 83. C4, 1C
        mov     eax, dword [ebp-0CH]                    ; 1630 _ 8B. 45, F4
        lea     edx, [eax-1H]                           ; 1633 _ 8D. 50, FF
        mov     eax, dword [ebp+0CH]                    ; 1636 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 1639 _ 8B. 00
        push    edx                                     ; 163B _ 52
        push    0                                       ; 163C _ 6A, 00
        push    0                                       ; 163E _ 6A, 00
        push    0                                       ; 1640 _ 6A, 00
        push    8                                       ; 1642 _ 6A, 08
        push    dword [ebp-10H]                         ; 1644 _ FF. 75, F0
        push    eax                                     ; 1647 _ 50
        call    boxfill8                                ; 1648 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 164D _ 83. C4, 1C
        mov     eax, dword [ebp-0CH]                    ; 1650 _ 8B. 45, F4
        lea     edx, [eax-1H]                           ; 1653 _ 8D. 50, FF
        mov     eax, dword [ebp+0CH]                    ; 1656 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 1659 _ 8B. 00
        push    edx                                     ; 165B _ 52
        push    1                                       ; 165C _ 6A, 01
        push    1                                       ; 165E _ 6A, 01
        push    1                                       ; 1660 _ 6A, 01
        push    7                                       ; 1662 _ 6A, 07
        push    dword [ebp-10H]                         ; 1664 _ FF. 75, F0
        push    eax                                     ; 1667 _ 50
        call    boxfill8                                ; 1668 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 166D _ 83. C4, 1C
        mov     eax, dword [ebp-0CH]                    ; 1670 _ 8B. 45, F4
        lea     ebx, [eax-2H]                           ; 1673 _ 8D. 58, FE
        mov     eax, dword [ebp-10H]                    ; 1676 _ 8B. 45, F0
        lea     ecx, [eax-2H]                           ; 1679 _ 8D. 48, FE
        mov     eax, dword [ebp-10H]                    ; 167C _ 8B. 45, F0
        lea     edx, [eax-2H]                           ; 167F _ 8D. 50, FE
        mov     eax, dword [ebp+0CH]                    ; 1682 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 1685 _ 8B. 00
        push    ebx                                     ; 1687 _ 53
        push    ecx                                     ; 1688 _ 51
        push    1                                       ; 1689 _ 6A, 01
        push    edx                                     ; 168B _ 52
        push    15                                      ; 168C _ 6A, 0F
        push    dword [ebp-10H]                         ; 168E _ FF. 75, F0
        push    eax                                     ; 1691 _ 50
        call    boxfill8                                ; 1692 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 1697 _ 83. C4, 1C
        mov     eax, dword [ebp-0CH]                    ; 169A _ 8B. 45, F4
        lea     ebx, [eax-1H]                           ; 169D _ 8D. 58, FF
        mov     eax, dword [ebp-10H]                    ; 16A0 _ 8B. 45, F0
        lea     ecx, [eax-1H]                           ; 16A3 _ 8D. 48, FF
        mov     eax, dword [ebp-10H]                    ; 16A6 _ 8B. 45, F0
        lea     edx, [eax-1H]                           ; 16A9 _ 8D. 50, FF
        mov     eax, dword [ebp+0CH]                    ; 16AC _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 16AF _ 8B. 00
        push    ebx                                     ; 16B1 _ 53
        push    ecx                                     ; 16B2 _ 51
        push    0                                       ; 16B3 _ 6A, 00
        push    edx                                     ; 16B5 _ 52
        push    0                                       ; 16B6 _ 6A, 00
        push    dword [ebp-10H]                         ; 16B8 _ FF. 75, F0
        push    eax                                     ; 16BB _ 50
        call    boxfill8                                ; 16BC _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 16C1 _ 83. C4, 1C
        mov     eax, dword [ebp-0CH]                    ; 16C4 _ 8B. 45, F4
        lea     ecx, [eax-3H]                           ; 16C7 _ 8D. 48, FD
        mov     eax, dword [ebp-10H]                    ; 16CA _ 8B. 45, F0
        lea     edx, [eax-3H]                           ; 16CD _ 8D. 50, FD
        mov     eax, dword [ebp+0CH]                    ; 16D0 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 16D3 _ 8B. 00
        push    ecx                                     ; 16D5 _ 51
        push    edx                                     ; 16D6 _ 52
        push    2                                       ; 16D7 _ 6A, 02
        push    2                                       ; 16D9 _ 6A, 02
        push    8                                       ; 16DB _ 6A, 08
        push    dword [ebp-10H]                         ; 16DD _ FF. 75, F0
        push    eax                                     ; 16E0 _ 50
        call    boxfill8                                ; 16E1 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 16E6 _ 83. C4, 1C
        mov     eax, dword [ebp-10H]                    ; 16E9 _ 8B. 45, F0
        lea     edx, [eax-4H]                           ; 16EC _ 8D. 50, FC
        mov     eax, dword [ebp+0CH]                    ; 16EF _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 16F2 _ 8B. 00
        push    20                                      ; 16F4 _ 6A, 14
        push    edx                                     ; 16F6 _ 52
        push    3                                       ; 16F7 _ 6A, 03
        push    3                                       ; 16F9 _ 6A, 03
        push    12                                      ; 16FB _ 6A, 0C
        push    dword [ebp-10H]                         ; 16FD _ FF. 75, F0
        push    eax                                     ; 1700 _ 50
        call    boxfill8                                ; 1701 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 1706 _ 83. C4, 1C
        mov     eax, dword [ebp-0CH]                    ; 1709 _ 8B. 45, F4
        lea     ebx, [eax-2H]                           ; 170C _ 8D. 58, FE
        mov     eax, dword [ebp-10H]                    ; 170F _ 8B. 45, F0
        lea     ecx, [eax-2H]                           ; 1712 _ 8D. 48, FE
        mov     eax, dword [ebp-0CH]                    ; 1715 _ 8B. 45, F4
        lea     edx, [eax-2H]                           ; 1718 _ 8D. 50, FE
        mov     eax, dword [ebp+0CH]                    ; 171B _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 171E _ 8B. 00
        push    ebx                                     ; 1720 _ 53
        push    ecx                                     ; 1721 _ 51
        push    edx                                     ; 1722 _ 52
        push    1                                       ; 1723 _ 6A, 01
        push    15                                      ; 1725 _ 6A, 0F
        push    dword [ebp-10H]                         ; 1727 _ FF. 75, F0
        push    eax                                     ; 172A _ 50
        call    boxfill8                                ; 172B _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 1730 _ 83. C4, 1C
        mov     eax, dword [ebp-0CH]                    ; 1733 _ 8B. 45, F4
        lea     ebx, [eax-1H]                           ; 1736 _ 8D. 58, FF
        mov     eax, dword [ebp-10H]                    ; 1739 _ 8B. 45, F0
        lea     ecx, [eax-1H]                           ; 173C _ 8D. 48, FF
        mov     eax, dword [ebp-0CH]                    ; 173F _ 8B. 45, F4
        lea     edx, [eax-1H]                           ; 1742 _ 8D. 50, FF
        mov     eax, dword [ebp+0CH]                    ; 1745 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 1748 _ 8B. 00
        push    ebx                                     ; 174A _ 53
        push    ecx                                     ; 174B _ 51
        push    edx                                     ; 174C _ 52
        push    0                                       ; 174D _ 6A, 00
        push    0                                       ; 174F _ 6A, 00
        push    dword [ebp-10H]                         ; 1751 _ FF. 75, F0
        push    eax                                     ; 1754 _ 50
        call    boxfill8                                ; 1755 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 175A _ 83. C4, 1C
        sub     esp, 8                                  ; 175D _ 83. EC, 08
        push    dword [ebp+10H]                         ; 1760 _ FF. 75, 10
        push    7                                       ; 1763 _ 6A, 07
        push    4                                       ; 1765 _ 6A, 04
        push    8                                       ; 1767 _ 6A, 08
        push    dword [ebp+0CH]                         ; 1769 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 176C _ FF. 75, 08
        call    showString                              ; 176F _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1774 _ 83. C4, 20
        mov     dword [ebp-18H], 0                      ; 1777 _ C7. 45, E8, 00000000
        jmp     ?_071                                   ; 177E _ EB, 7D

?_065:  mov     dword [ebp-14H], 0                      ; 1780 _ C7. 45, EC, 00000000
        jmp     ?_070                                   ; 1787 _ EB, 6A

?_066:  mov     eax, dword [ebp-18H]                    ; 1789 _ 8B. 45, E8
        shl     eax, 4                                  ; 178C _ C1. E0, 04
        mov     edx, eax                                ; 178F _ 89. C2
        mov     eax, dword [ebp-14H]                    ; 1791 _ 8B. 45, EC
        add     eax, edx                                ; 1794 _ 01. D0
        add     eax, closebtn.1899                      ; 1796 _ 05, 00000160(d)
        movzx   eax, byte [eax]                         ; 179B _ 0F B6. 00
        mov     byte [ebp-19H], al                      ; 179E _ 88. 45, E7
        cmp     byte [ebp-19H], 64                      ; 17A1 _ 80. 7D, E7, 40
        jnz     ?_067                                   ; 17A5 _ 75, 06
        mov     byte [ebp-19H], 0                       ; 17A7 _ C6. 45, E7, 00
        jmp     ?_069                                   ; 17AB _ EB, 16

?_067:  cmp     byte [ebp-19H], 36                      ; 17AD _ 80. 7D, E7, 24
        jnz     ?_068                                   ; 17B1 _ 75, 06
        mov     byte [ebp-19H], 15                      ; 17B3 _ C6. 45, E7, 0F
        jmp     ?_069                                   ; 17B7 _ EB, 0A

?_068:  cmp     byte [ebp-19H], 81                      ; 17B9 _ 80. 7D, E7, 51
        jnz     ?_069                                   ; 17BD _ 75, 04
        mov     byte [ebp-19H], 8                       ; 17BF _ C6. 45, E7, 08
?_069:  mov     eax, dword [ebp+0CH]                    ; 17C3 _ 8B. 45, 0C
        mov     edx, dword [eax]                        ; 17C6 _ 8B. 10
        mov     eax, dword [ebp-18H]                    ; 17C8 _ 8B. 45, E8
        lea     ecx, [eax+5H]                           ; 17CB _ 8D. 48, 05
        mov     eax, dword [ebp+0CH]                    ; 17CE _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 17D1 _ 8B. 40, 04
        imul    ecx, eax                                ; 17D4 _ 0F AF. C8
        mov     eax, dword [ebp+0CH]                    ; 17D7 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 17DA _ 8B. 40, 04
        lea     ebx, [eax-15H]                          ; 17DD _ 8D. 58, EB
        mov     eax, dword [ebp-14H]                    ; 17E0 _ 8B. 45, EC
        add     eax, ebx                                ; 17E3 _ 01. D8
        add     eax, ecx                                ; 17E5 _ 01. C8
        add     edx, eax                                ; 17E7 _ 01. C2
        movzx   eax, byte [ebp-19H]                     ; 17E9 _ 0F B6. 45, E7
        mov     byte [edx], al                          ; 17ED _ 88. 02
        add     dword [ebp-14H], 1                      ; 17EF _ 83. 45, EC, 01
?_070:  cmp     dword [ebp-14H], 15                     ; 17F3 _ 83. 7D, EC, 0F
        jle     ?_066                                   ; 17F7 _ 7E, 90
        add     dword [ebp-18H], 1                      ; 17F9 _ 83. 45, E8, 01
?_071:  cmp     dword [ebp-18H], 13                     ; 17FD _ 83. 7D, E8, 0D
        jle     ?_065                                   ; 1801 _ 0F 8E, FFFFFF79
        nop                                             ; 1807 _ 90
        mov     ebx, dword [ebp-4H]                     ; 1808 _ 8B. 5D, FC
        leave                                           ; 180B _ C9
        ret                                             ; 180C _ C3
; make_window8 End of function

memman_init:; Function begin
        push    ebp                                     ; 180D _ 55
        mov     ebp, esp                                ; 180E _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 1810 _ 8B. 45, 08
        mov     dword [eax], 0                          ; 1813 _ C7. 00, 00000000
        mov     eax, dword [ebp+8H]                     ; 1819 _ 8B. 45, 08
        mov     dword [eax+4H], 0                       ; 181C _ C7. 40, 04, 00000000
        mov     eax, dword [ebp+8H]                     ; 1823 _ 8B. 45, 08
        mov     dword [eax+8H], 0                       ; 1826 _ C7. 40, 08, 00000000
        mov     eax, dword [ebp+8H]                     ; 182D _ 8B. 45, 08
        mov     dword [eax+0CH], 0                      ; 1830 _ C7. 40, 0C, 00000000
        nop                                             ; 1837 _ 90
        pop     ebp                                     ; 1838 _ 5D
        ret                                             ; 1839 _ C3
; memman_init End of function

memman_total:; Function begin
        push    ebp                                     ; 183A _ 55
        mov     ebp, esp                                ; 183B _ 89. E5
        sub     esp, 16                                 ; 183D _ 83. EC, 10
        mov     dword [ebp-8H], 0                       ; 1840 _ C7. 45, F8, 00000000
        mov     dword [ebp-4H], 0                       ; 1847 _ C7. 45, FC, 00000000
        jmp     ?_073                                   ; 184E _ EB, 14

?_072:  mov     eax, dword [ebp+8H]                     ; 1850 _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 1853 _ 8B. 55, FC
        add     edx, 2                                  ; 1856 _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 1859 _ 8B. 44 D0, 04
        add     dword [ebp-8H], eax                     ; 185D _ 01. 45, F8
        add     dword [ebp-4H], 1                       ; 1860 _ 83. 45, FC, 01
?_073:  mov     eax, dword [ebp+8H]                     ; 1864 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 1867 _ 8B. 00
        cmp     dword [ebp-4H], eax                     ; 1869 _ 39. 45, FC
        jl      ?_072                                   ; 186C _ 7C, E2
        mov     eax, dword [ebp-8H]                     ; 186E _ 8B. 45, F8
        leave                                           ; 1871 _ C9
        ret                                             ; 1872 _ C3
; memman_total End of function

memman_alloc_FF:; Function begin
        push    ebp                                     ; 1873 _ 55
        mov     ebp, esp                                ; 1874 _ 89. E5
        sub     esp, 16                                 ; 1876 _ 83. EC, 10
        mov     dword [ebp-8H], 0                       ; 1879 _ C7. 45, F8, 00000000
        jmp     ?_077                                   ; 1880 _ E9, 00000085

?_074:  mov     eax, dword [ebp+8H]                     ; 1885 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 1888 _ 8B. 55, F8
        add     edx, 2                                  ; 188B _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 188E _ 8B. 44 D0, 04
        cmp     dword [ebp+0CH], eax                    ; 1892 _ 39. 45, 0C
        ja      ?_076                                   ; 1895 _ 77, 6F
        mov     eax, dword [ebp+8H]                     ; 1897 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 189A _ 8B. 55, F8
        add     edx, 2                                  ; 189D _ 83. C2, 02
        mov     eax, dword [eax+edx*8]                  ; 18A0 _ 8B. 04 D0
        mov     dword [ebp-4H], eax                     ; 18A3 _ 89. 45, FC
        mov     eax, dword [ebp+8H]                     ; 18A6 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 18A9 _ 8B. 55, F8
        add     edx, 2                                  ; 18AC _ 83. C2, 02
        mov     edx, dword [eax+edx*8]                  ; 18AF _ 8B. 14 D0
        mov     eax, dword [ebp+0CH]                    ; 18B2 _ 8B. 45, 0C
        lea     ecx, [edx+eax]                          ; 18B5 _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 18B8 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 18BB _ 8B. 55, F8
        add     edx, 2                                  ; 18BE _ 83. C2, 02
        mov     dword [eax+edx*8], ecx                  ; 18C1 _ 89. 0C D0
        mov     eax, dword [ebp+8H]                     ; 18C4 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 18C7 _ 8B. 55, F8
        add     edx, 2                                  ; 18CA _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 18CD _ 8B. 44 D0, 04
        sub     eax, dword [ebp+0CH]                    ; 18D1 _ 2B. 45, 0C
        mov     edx, eax                                ; 18D4 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 18D6 _ 8B. 45, 08
        mov     ecx, dword [ebp-8H]                     ; 18D9 _ 8B. 4D, F8
        add     ecx, 2                                  ; 18DC _ 83. C1, 02
        mov     dword [eax+ecx*8+4H], edx               ; 18DF _ 89. 54 C8, 04
        mov     eax, dword [ebp+8H]                     ; 18E3 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 18E6 _ 8B. 55, F8
        add     edx, 2                                  ; 18E9 _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 18EC _ 8B. 44 D0, 04
        test    eax, eax                                ; 18F0 _ 85. C0
        jnz     ?_075                                   ; 18F2 _ 75, 0D
        mov     eax, dword [ebp+8H]                     ; 18F4 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 18F7 _ 8B. 00
        lea     edx, [eax-1H]                           ; 18F9 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 18FC _ 8B. 45, 08
        mov     dword [eax], edx                        ; 18FF _ 89. 10
?_075:  mov     eax, dword [ebp-4H]                     ; 1901 _ 8B. 45, FC
        jmp     ?_078                                   ; 1904 _ EB, 17

?_076:  add     dword [ebp-8H], 1                       ; 1906 _ 83. 45, F8, 01
?_077:  mov     eax, dword [ebp+8H]                     ; 190A _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 190D _ 8B. 00
        cmp     dword [ebp-8H], eax                     ; 190F _ 39. 45, F8
        jl      ?_074                                   ; 1912 _ 0F 8C, FFFFFF6D
        mov     eax, 0                                  ; 1918 _ B8, 00000000
?_078:  leave                                           ; 191D _ C9
        ret                                             ; 191E _ C3
; memman_alloc_FF End of function

memman_alloc_4K:; Function begin
        push    ebp                                     ; 191F _ 55
        mov     ebp, esp                                ; 1920 _ 89. E5
        sub     esp, 16                                 ; 1922 _ 83. EC, 10
        mov     eax, dword [ebp+0CH]                    ; 1925 _ 8B. 45, 0C
        add     eax, 4095                               ; 1928 _ 05, 00000FFF
        and     eax, 0FFFFF000H                         ; 192D _ 25, FFFFF000
        mov     dword [ebp+0CH], eax                    ; 1932 _ 89. 45, 0C
        push    dword [ebp+0CH]                         ; 1935 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1938 _ FF. 75, 08
        call    memman_alloc_FF                         ; 193B _ E8, FFFFFFFC(rel)
        add     esp, 8                                  ; 1940 _ 83. C4, 08
        mov     dword [ebp-4H], eax                     ; 1943 _ 89. 45, FC
        mov     eax, dword [ebp-4H]                     ; 1946 _ 8B. 45, FC
        leave                                           ; 1949 _ C9
        ret                                             ; 194A _ C3
; memman_alloc_4K End of function

memman_free:; Function begin
        push    ebp                                     ; 194B _ 55
        mov     ebp, esp                                ; 194C _ 89. E5
        push    ebx                                     ; 194E _ 53
        sub     esp, 16                                 ; 194F _ 83. EC, 10
        mov     dword [ebp-0CH], 0                      ; 1952 _ C7. 45, F4, 00000000
        jmp     ?_080                                   ; 1959 _ EB, 15

?_079:  mov     eax, dword [ebp+8H]                     ; 195B _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 195E _ 8B. 55, F4
        add     edx, 2                                  ; 1961 _ 83. C2, 02
        mov     eax, dword [eax+edx*8]                  ; 1964 _ 8B. 04 D0
        cmp     dword [ebp+0CH], eax                    ; 1967 _ 39. 45, 0C
        jc      ?_081                                   ; 196A _ 72, 10
        add     dword [ebp-0CH], 1                      ; 196C _ 83. 45, F4, 01
?_080:  mov     eax, dword [ebp+8H]                     ; 1970 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 1973 _ 8B. 00
        cmp     dword [ebp-0CH], eax                    ; 1975 _ 39. 45, F4
        jl      ?_079                                   ; 1978 _ 7C, E1
        jmp     ?_082                                   ; 197A _ EB, 01

?_081:  nop                                             ; 197C _ 90
?_082:  cmp     dword [ebp-0CH], 0                      ; 197D _ 83. 7D, F4, 00
        jle     ?_084                                   ; 1981 _ 0F 8E, 000000BA
        mov     eax, dword [ebp-0CH]                    ; 1987 _ 8B. 45, F4
        lea     edx, [eax-1H]                           ; 198A _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 198D _ 8B. 45, 08
        add     edx, 2                                  ; 1990 _ 83. C2, 02
        mov     edx, dword [eax+edx*8]                  ; 1993 _ 8B. 14 D0
        mov     eax, dword [ebp-0CH]                    ; 1996 _ 8B. 45, F4
        lea     ecx, [eax-1H]                           ; 1999 _ 8D. 48, FF
        mov     eax, dword [ebp+8H]                     ; 199C _ 8B. 45, 08
        add     ecx, 2                                  ; 199F _ 83. C1, 02
        mov     eax, dword [eax+ecx*8+4H]               ; 19A2 _ 8B. 44 C8, 04
        add     eax, edx                                ; 19A6 _ 01. D0
        cmp     dword [ebp+0CH], eax                    ; 19A8 _ 39. 45, 0C
        jne     ?_084                                   ; 19AB _ 0F 85, 00000090
        mov     eax, dword [ebp-0CH]                    ; 19B1 _ 8B. 45, F4
        lea     edx, [eax-1H]                           ; 19B4 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 19B7 _ 8B. 45, 08
        add     edx, 2                                  ; 19BA _ 83. C2, 02
        mov     edx, dword [eax+edx*8+4H]               ; 19BD _ 8B. 54 D0, 04
        mov     eax, dword [ebp-0CH]                    ; 19C1 _ 8B. 45, F4
        lea     ebx, [eax-1H]                           ; 19C4 _ 8D. 58, FF
        mov     eax, dword [ebp+10H]                    ; 19C7 _ 8B. 45, 10
        lea     ecx, [edx+eax]                          ; 19CA _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 19CD _ 8B. 45, 08
        lea     edx, [ebx+2H]                           ; 19D0 _ 8D. 53, 02
        mov     dword [eax+edx*8+4H], ecx               ; 19D3 _ 89. 4C D0, 04
        mov     eax, dword [ebp+8H]                     ; 19D7 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 19DA _ 8B. 00
        cmp     dword [ebp-0CH], eax                    ; 19DC _ 39. 45, F4
        jge     ?_083                                   ; 19DF _ 7D, 56
        mov     edx, dword [ebp+0CH]                    ; 19E1 _ 8B. 55, 0C
        mov     eax, dword [ebp+10H]                    ; 19E4 _ 8B. 45, 10
        lea     ecx, [edx+eax]                          ; 19E7 _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 19EA _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 19ED _ 8B. 55, F4
        add     edx, 2                                  ; 19F0 _ 83. C2, 02
        mov     eax, dword [eax+edx*8]                  ; 19F3 _ 8B. 04 D0
        cmp     ecx, eax                                ; 19F6 _ 39. C1
        jnz     ?_083                                   ; 19F8 _ 75, 3D
        mov     eax, dword [ebp-0CH]                    ; 19FA _ 8B. 45, F4
        lea     edx, [eax-1H]                           ; 19FD _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 1A00 _ 8B. 45, 08
        add     edx, 2                                  ; 1A03 _ 83. C2, 02
        mov     edx, dword [eax+edx*8+4H]               ; 1A06 _ 8B. 54 D0, 04
        mov     eax, dword [ebp+8H]                     ; 1A0A _ 8B. 45, 08
        mov     ecx, dword [ebp-0CH]                    ; 1A0D _ 8B. 4D, F4
        add     ecx, 2                                  ; 1A10 _ 83. C1, 02
        mov     eax, dword [eax+ecx*8+4H]               ; 1A13 _ 8B. 44 C8, 04
        mov     ecx, dword [ebp-0CH]                    ; 1A17 _ 8B. 4D, F4
        lea     ebx, [ecx-1H]                           ; 1A1A _ 8D. 59, FF
        lea     ecx, [edx+eax]                          ; 1A1D _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 1A20 _ 8B. 45, 08
        lea     edx, [ebx+2H]                           ; 1A23 _ 8D. 53, 02
        mov     dword [eax+edx*8+4H], ecx               ; 1A26 _ 89. 4C D0, 04
        mov     eax, dword [ebp+8H]                     ; 1A2A _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 1A2D _ 8B. 00
        lea     edx, [eax-1H]                           ; 1A2F _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 1A32 _ 8B. 45, 08
        mov     dword [eax], edx                        ; 1A35 _ 89. 10
?_083:  mov     eax, 0                                  ; 1A37 _ B8, 00000000
        jmp     ?_090                                   ; 1A3C _ E9, 0000011C

?_084:  mov     eax, dword [ebp+8H]                     ; 1A41 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 1A44 _ 8B. 00
        cmp     dword [ebp-0CH], eax                    ; 1A46 _ 39. 45, F4
        jge     ?_085                                   ; 1A49 _ 7D, 52
        mov     edx, dword [ebp+0CH]                    ; 1A4B _ 8B. 55, 0C
        mov     eax, dword [ebp+10H]                    ; 1A4E _ 8B. 45, 10
        lea     ecx, [edx+eax]                          ; 1A51 _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 1A54 _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 1A57 _ 8B. 55, F4
        add     edx, 2                                  ; 1A5A _ 83. C2, 02
        mov     eax, dword [eax+edx*8]                  ; 1A5D _ 8B. 04 D0
        cmp     ecx, eax                                ; 1A60 _ 39. C1
        jnz     ?_085                                   ; 1A62 _ 75, 39
        mov     eax, dword [ebp+8H]                     ; 1A64 _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 1A67 _ 8B. 55, F4
        lea     ecx, [edx+2H]                           ; 1A6A _ 8D. 4A, 02
        mov     edx, dword [ebp+0CH]                    ; 1A6D _ 8B. 55, 0C
        mov     dword [eax+ecx*8], edx                  ; 1A70 _ 89. 14 C8
        mov     eax, dword [ebp+8H]                     ; 1A73 _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 1A76 _ 8B. 55, F4
        add     edx, 2                                  ; 1A79 _ 83. C2, 02
        mov     edx, dword [eax+edx*8+4H]               ; 1A7C _ 8B. 54 D0, 04
        mov     eax, dword [ebp+10H]                    ; 1A80 _ 8B. 45, 10
        lea     ecx, [edx+eax]                          ; 1A83 _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 1A86 _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 1A89 _ 8B. 55, F4
        add     edx, 2                                  ; 1A8C _ 83. C2, 02
        mov     dword [eax+edx*8+4H], ecx               ; 1A8F _ 89. 4C D0, 04
        mov     eax, 0                                  ; 1A93 _ B8, 00000000
        jmp     ?_090                                   ; 1A98 _ E9, 000000C0

?_085:  mov     eax, dword [ebp+8H]                     ; 1A9D _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 1AA0 _ 8B. 00
        cmp     eax, 4095                               ; 1AA2 _ 3D, 00000FFF
        jg      ?_089                                   ; 1AA7 _ 0F 8F, 00000087
        mov     eax, dword [ebp+8H]                     ; 1AAD _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 1AB0 _ 8B. 00
        mov     dword [ebp-8H], eax                     ; 1AB2 _ 89. 45, F8
        jmp     ?_087                                   ; 1AB5 _ EB, 28

?_086:  mov     eax, dword [ebp-8H]                     ; 1AB7 _ 8B. 45, F8
        lea     edx, [eax-1H]                           ; 1ABA _ 8D. 50, FF
        mov     ecx, dword [ebp+8H]                     ; 1ABD _ 8B. 4D, 08
        mov     eax, dword [ebp-8H]                     ; 1AC0 _ 8B. 45, F8
        lea     ebx, [eax+2H]                           ; 1AC3 _ 8D. 58, 02
        mov     eax, dword [ebp+8H]                     ; 1AC6 _ 8B. 45, 08
        add     edx, 2                                  ; 1AC9 _ 83. C2, 02
        lea     edx, [eax+edx*8]                        ; 1ACC _ 8D. 14 D0
        mov     eax, dword [edx]                        ; 1ACF _ 8B. 02
        mov     edx, dword [edx+4H]                     ; 1AD1 _ 8B. 52, 04
        mov     dword [ecx+ebx*8], eax                  ; 1AD4 _ 89. 04 D9
        mov     dword [ecx+ebx*8+4H], edx               ; 1AD7 _ 89. 54 D9, 04
        sub     dword [ebp-8H], 1                       ; 1ADB _ 83. 6D, F8, 01
?_087:  mov     eax, dword [ebp-8H]                     ; 1ADF _ 8B. 45, F8
        cmp     eax, dword [ebp-0CH]                    ; 1AE2 _ 3B. 45, F4
        jg      ?_086                                   ; 1AE5 _ 7F, D0
        mov     eax, dword [ebp+8H]                     ; 1AE7 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 1AEA _ 8B. 00
        lea     edx, [eax+1H]                           ; 1AEC _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 1AEF _ 8B. 45, 08
        mov     dword [eax], edx                        ; 1AF2 _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 1AF4 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 1AF7 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 1AFA _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 1AFD _ 8B. 00
        cmp     edx, eax                                ; 1AFF _ 39. C2
        jge     ?_088                                   ; 1B01 _ 7D, 0B
        mov     eax, dword [ebp+8H]                     ; 1B03 _ 8B. 45, 08
        mov     edx, dword [eax]                        ; 1B06 _ 8B. 10
        mov     eax, dword [ebp+8H]                     ; 1B08 _ 8B. 45, 08
        mov     dword [eax+4H], edx                     ; 1B0B _ 89. 50, 04
?_088:  mov     eax, dword [ebp+8H]                     ; 1B0E _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 1B11 _ 8B. 55, F4
        lea     ecx, [edx+2H]                           ; 1B14 _ 8D. 4A, 02
        mov     edx, dword [ebp+0CH]                    ; 1B17 _ 8B. 55, 0C
        mov     dword [eax+ecx*8], edx                  ; 1B1A _ 89. 14 C8
        mov     eax, dword [ebp+8H]                     ; 1B1D _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 1B20 _ 8B. 55, F4
        lea     ecx, [edx+2H]                           ; 1B23 _ 8D. 4A, 02
        mov     edx, dword [ebp+10H]                    ; 1B26 _ 8B. 55, 10
        mov     dword [eax+ecx*8+4H], edx               ; 1B29 _ 89. 54 C8, 04
        mov     eax, 0                                  ; 1B2D _ B8, 00000000
        jmp     ?_090                                   ; 1B32 _ EB, 29

?_089:  mov     eax, dword [ebp+8H]                     ; 1B34 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 1B37 _ 8B. 40, 0C
        lea     edx, [eax+1H]                           ; 1B3A _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 1B3D _ 8B. 45, 08
        mov     dword [eax+0CH], edx                    ; 1B40 _ 89. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 1B43 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 1B46 _ 8B. 40, 08
        mov     edx, eax                                ; 1B49 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 1B4B _ 8B. 45, 10
        add     eax, edx                                ; 1B4E _ 01. D0
        mov     edx, eax                                ; 1B50 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 1B52 _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 1B55 _ 89. 50, 08
        mov     eax, 4294967295                         ; 1B58 _ B8, FFFFFFFF
?_090:  add     esp, 16                                 ; 1B5D _ 83. C4, 10
        pop     ebx                                     ; 1B60 _ 5B
        pop     ebp                                     ; 1B61 _ 5D
        ret                                             ; 1B62 _ C3
; memman_free End of function

memman_free_4K:; Function begin
        push    ebp                                     ; 1B63 _ 55
        mov     ebp, esp                                ; 1B64 _ 89. E5
        sub     esp, 16                                 ; 1B66 _ 83. EC, 10
        mov     eax, dword [ebp+10H]                    ; 1B69 _ 8B. 45, 10
        add     eax, 4095                               ; 1B6C _ 05, 00000FFF
        and     eax, 0FFFFF000H                         ; 1B71 _ 25, FFFFF000
        mov     dword [ebp+10H], eax                    ; 1B76 _ 89. 45, 10
        push    dword [ebp+10H]                         ; 1B79 _ FF. 75, 10
        push    dword [ebp+0CH]                         ; 1B7C _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1B7F _ FF. 75, 08
        call    memman_free                             ; 1B82 _ E8, FFFFFFFC(rel)
        add     esp, 12                                 ; 1B87 _ 83. C4, 0C
        mov     dword [ebp-4H], eax                     ; 1B8A _ 89. 45, FC
        mov     eax, dword [ebp-4H]                     ; 1B8D _ 8B. 45, FC
        leave                                           ; 1B90 _ C9
        ret                                             ; 1B91 _ C3
; memman_free_4K End of function

shtctl_init:; Function begin
        push    ebp                                     ; 1B92 _ 55
        mov     ebp, esp                                ; 1B93 _ 89. E5
        sub     esp, 24                                 ; 1B95 _ 83. EC, 18
        sub     esp, 8                                  ; 1B98 _ 83. EC, 08
        push    9232                                    ; 1B9B _ 68, 00002410
        push    dword [ebp+8H]                          ; 1BA0 _ FF. 75, 08
        call    memman_alloc_4K                         ; 1BA3 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1BA8 _ 83. C4, 10
        mov     dword [ebp-0CH], eax                    ; 1BAB _ 89. 45, F4
        cmp     dword [ebp-0CH], 0                      ; 1BAE _ 83. 7D, F4, 00
        jnz     ?_091                                   ; 1BB2 _ 75, 0A
        mov     eax, 0                                  ; 1BB4 _ B8, 00000000
        jmp     ?_095                                   ; 1BB9 _ E9, 0000009A

?_091:  mov     eax, dword [ebp+10H]                    ; 1BBE _ 8B. 45, 10
        imul    eax, dword [ebp+14H]                    ; 1BC1 _ 0F AF. 45, 14
        sub     esp, 8                                  ; 1BC5 _ 83. EC, 08
        push    eax                                     ; 1BC8 _ 50
        push    dword [ebp+8H]                          ; 1BC9 _ FF. 75, 08
        call    memman_alloc_4K                         ; 1BCC _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1BD1 _ 83. C4, 10
        mov     edx, eax                                ; 1BD4 _ 89. C2
        mov     eax, dword [ebp-0CH]                    ; 1BD6 _ 8B. 45, F4
        mov     dword [eax+4H], edx                     ; 1BD9 _ 89. 50, 04
        mov     eax, dword [ebp-0CH]                    ; 1BDC _ 8B. 45, F4
        mov     eax, dword [eax+4H]                     ; 1BDF _ 8B. 40, 04
        test    eax, eax                                ; 1BE2 _ 85. C0
        jnz     ?_092                                   ; 1BE4 _ 75, 1E
        mov     eax, dword [ebp-0CH]                    ; 1BE6 _ 8B. 45, F4
        sub     esp, 4                                  ; 1BE9 _ 83. EC, 04
        push    9232                                    ; 1BEC _ 68, 00002410
        push    eax                                     ; 1BF1 _ 50
        push    dword [ebp+8H]                          ; 1BF2 _ FF. 75, 08
        call    memman_free_4K                          ; 1BF5 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1BFA _ 83. C4, 10
        mov     eax, 0                                  ; 1BFD _ B8, 00000000
        jmp     ?_095                                   ; 1C02 _ EB, 54

?_092:  mov     eax, dword [ebp-0CH]                    ; 1C04 _ 8B. 45, F4
        mov     edx, dword [ebp+0CH]                    ; 1C07 _ 8B. 55, 0C
        mov     dword [eax], edx                        ; 1C0A _ 89. 10
        mov     eax, dword [ebp-0CH]                    ; 1C0C _ 8B. 45, F4
        mov     edx, dword [ebp+10H]                    ; 1C0F _ 8B. 55, 10
        mov     dword [eax+8H], edx                     ; 1C12 _ 89. 50, 08
        mov     eax, dword [ebp-0CH]                    ; 1C15 _ 8B. 45, F4
        mov     edx, dword [ebp+14H]                    ; 1C18 _ 8B. 55, 14
        mov     dword [eax+0CH], edx                    ; 1C1B _ 89. 50, 0C
        mov     eax, dword [ebp-0CH]                    ; 1C1E _ 8B. 45, F4
        mov     dword [eax+10H], -1                     ; 1C21 _ C7. 40, 10, FFFFFFFF
        mov     dword [ebp-10H], 0                      ; 1C28 _ C7. 45, F0, 00000000
        jmp     ?_094                                   ; 1C2F _ EB, 1B

?_093:  mov     eax, dword [ebp-0CH]                    ; 1C31 _ 8B. 45, F4
        mov     edx, dword [ebp-10H]                    ; 1C34 _ 8B. 55, F0
        add     edx, 33                                 ; 1C37 _ 83. C2, 21
        shl     edx, 5                                  ; 1C3A _ C1. E2, 05
        add     eax, edx                                ; 1C3D _ 01. D0
        add     eax, 16                                 ; 1C3F _ 83. C0, 10
        mov     dword [eax], 0                          ; 1C42 _ C7. 00, 00000000
        add     dword [ebp-10H], 1                      ; 1C48 _ 83. 45, F0, 01
?_094:  cmp     dword [ebp-10H], 255                    ; 1C4C _ 81. 7D, F0, 000000FF
        jle     ?_093                                   ; 1C53 _ 7E, DC
        mov     eax, dword [ebp-0CH]                    ; 1C55 _ 8B. 45, F4
?_095:  leave                                           ; 1C58 _ C9
        ret                                             ; 1C59 _ C3
; shtctl_init End of function

sheet_alloc:; Function begin
        push    ebp                                     ; 1C5A _ 55
        mov     ebp, esp                                ; 1C5B _ 89. E5
        sub     esp, 16                                 ; 1C5D _ 83. EC, 10
        mov     dword [ebp-8H], 0                       ; 1C60 _ C7. 45, F8, 00000000
        jmp     ?_098                                   ; 1C67 _ EB, 4B

?_096:  mov     eax, dword [ebp+8H]                     ; 1C69 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 1C6C _ 8B. 55, F8
        add     edx, 33                                 ; 1C6F _ 83. C2, 21
        shl     edx, 5                                  ; 1C72 _ C1. E2, 05
        add     eax, edx                                ; 1C75 _ 01. D0
        add     eax, 16                                 ; 1C77 _ 83. C0, 10
        mov     eax, dword [eax]                        ; 1C7A _ 8B. 00
        test    eax, eax                                ; 1C7C _ 85. C0
        jnz     ?_097                                   ; 1C7E _ 75, 30
        mov     eax, dword [ebp-8H]                     ; 1C80 _ 8B. 45, F8
        shl     eax, 5                                  ; 1C83 _ C1. E0, 05
        lea     edx, [eax+410H]                         ; 1C86 _ 8D. 90, 00000410
        mov     eax, dword [ebp+8H]                     ; 1C8C _ 8B. 45, 08
        add     eax, edx                                ; 1C8F _ 01. D0
        add     eax, 4                                  ; 1C91 _ 83. C0, 04
        mov     dword [ebp-4H], eax                     ; 1C94 _ 89. 45, FC
        mov     eax, dword [ebp-4H]                     ; 1C97 _ 8B. 45, FC
        mov     dword [eax+1CH], 1                      ; 1C9A _ C7. 40, 1C, 00000001
        mov     eax, dword [ebp-4H]                     ; 1CA1 _ 8B. 45, FC
        mov     dword [eax+18H], -1                     ; 1CA4 _ C7. 40, 18, FFFFFFFF
        mov     eax, dword [ebp-4H]                     ; 1CAB _ 8B. 45, FC
        jmp     ?_099                                   ; 1CAE _ EB, 12

?_097:  add     dword [ebp-8H], 1                       ; 1CB0 _ 83. 45, F8, 01
?_098:  cmp     dword [ebp-8H], 255                     ; 1CB4 _ 81. 7D, F8, 000000FF
        jle     ?_096                                   ; 1CBB _ 7E, AC
        mov     eax, 0                                  ; 1CBD _ B8, 00000000
?_099:  leave                                           ; 1CC2 _ C9
        ret                                             ; 1CC3 _ C3
; sheet_alloc End of function

sheet_setbuf:; Function begin
        push    ebp                                     ; 1CC4 _ 55
        mov     ebp, esp                                ; 1CC5 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 1CC7 _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 1CCA _ 8B. 55, 0C
        mov     dword [eax], edx                        ; 1CCD _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 1CCF _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 1CD2 _ 8B. 55, 10
        mov     dword [eax+4H], edx                     ; 1CD5 _ 89. 50, 04
        mov     eax, dword [ebp+8H]                     ; 1CD8 _ 8B. 45, 08
        mov     edx, dword [ebp+14H]                    ; 1CDB _ 8B. 55, 14
        mov     dword [eax+8H], edx                     ; 1CDE _ 89. 50, 08
        mov     eax, dword [ebp+8H]                     ; 1CE1 _ 8B. 45, 08
        mov     edx, dword [ebp+18H]                    ; 1CE4 _ 8B. 55, 18
        mov     dword [eax+14H], edx                    ; 1CE7 _ 89. 50, 14
        nop                                             ; 1CEA _ 90
        pop     ebp                                     ; 1CEB _ 5D
        ret                                             ; 1CEC _ C3
; sheet_setbuf End of function

sheet_level_updown:; Function begin
        push    ebp                                     ; 1CED _ 55
        mov     ebp, esp                                ; 1CEE _ 89. E5
        push    esi                                     ; 1CF0 _ 56
        push    ebx                                     ; 1CF1 _ 53
        sub     esp, 32                                 ; 1CF2 _ 83. EC, 20
        mov     eax, dword [ebp+0CH]                    ; 1CF5 _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 1CF8 _ 8B. 40, 18
        mov     dword [ebp-0CH], eax                    ; 1CFB _ 89. 45, F4
        mov     eax, dword [ebp+8H]                     ; 1CFE _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 1D01 _ 8B. 40, 10
        add     eax, 1                                  ; 1D04 _ 83. C0, 01
        cmp     dword [ebp+10H], eax                    ; 1D07 _ 39. 45, 10
        jle     ?_100                                   ; 1D0A _ 7E, 0C
        mov     eax, dword [ebp+8H]                     ; 1D0C _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 1D0F _ 8B. 40, 10
        add     eax, 1                                  ; 1D12 _ 83. C0, 01
        mov     dword [ebp+10H], eax                    ; 1D15 _ 89. 45, 10
?_100:  cmp     dword [ebp+10H], -1                     ; 1D18 _ 83. 7D, 10, FF
        jge     ?_101                                   ; 1D1C _ 7D, 07
        mov     dword [ebp+10H], -1                     ; 1D1E _ C7. 45, 10, FFFFFFFF
?_101:  mov     eax, dword [ebp+0CH]                    ; 1D25 _ 8B. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 1D28 _ 8B. 55, 10
        mov     dword [eax+18H], edx                    ; 1D2B _ 89. 50, 18
        mov     eax, dword [ebp-0CH]                    ; 1D2E _ 8B. 45, F4
        cmp     eax, dword [ebp+10H]                    ; 1D31 _ 3B. 45, 10
        jle     ?_108                                   ; 1D34 _ 0F 8E, 000001D5
        cmp     dword [ebp+10H], 0                      ; 1D3A _ 83. 7D, 10, 00
        js      ?_104                                   ; 1D3E _ 0F 88, 000000E2
        mov     eax, dword [ebp-0CH]                    ; 1D44 _ 8B. 45, F4
        mov     dword [ebp-1CH], eax                    ; 1D47 _ 89. 45, E4
        jmp     ?_103                                   ; 1D4A _ EB, 34

?_102:  mov     eax, dword [ebp-1CH]                    ; 1D4C _ 8B. 45, E4
        lea     edx, [eax-1H]                           ; 1D4F _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 1D52 _ 8B. 45, 08
        add     edx, 4                                  ; 1D55 _ 83. C2, 04
        mov     edx, dword [eax+edx*4+4H]               ; 1D58 _ 8B. 54 90, 04
        mov     eax, dword [ebp+8H]                     ; 1D5C _ 8B. 45, 08
        mov     ecx, dword [ebp-1CH]                    ; 1D5F _ 8B. 4D, E4
        add     ecx, 4                                  ; 1D62 _ 83. C1, 04
        mov     dword [eax+ecx*4+4H], edx               ; 1D65 _ 89. 54 88, 04
        mov     eax, dword [ebp+8H]                     ; 1D69 _ 8B. 45, 08
        mov     edx, dword [ebp-1CH]                    ; 1D6C _ 8B. 55, E4
        add     edx, 4                                  ; 1D6F _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 1D72 _ 8B. 44 90, 04
        mov     edx, dword [ebp-1CH]                    ; 1D76 _ 8B. 55, E4
        mov     dword [eax+18H], edx                    ; 1D79 _ 89. 50, 18
        sub     dword [ebp-1CH], 1                      ; 1D7C _ 83. 6D, E4, 01
?_103:  mov     eax, dword [ebp-1CH]                    ; 1D80 _ 8B. 45, E4
        cmp     eax, dword [ebp+10H]                    ; 1D83 _ 3B. 45, 10
        jg      ?_102                                   ; 1D86 _ 7F, C4
        mov     eax, dword [ebp+8H]                     ; 1D88 _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 1D8B _ 8B. 55, 10
        lea     ecx, [edx+4H]                           ; 1D8E _ 8D. 4A, 04
        mov     edx, dword [ebp+0CH]                    ; 1D91 _ 8B. 55, 0C
        mov     dword [eax+ecx*4+4H], edx               ; 1D94 _ 89. 54 88, 04
        mov     eax, dword [ebp+10H]                    ; 1D98 _ 8B. 45, 10
        lea     esi, [eax+1H]                           ; 1D9B _ 8D. 70, 01
        mov     eax, dword [ebp+0CH]                    ; 1D9E _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 1DA1 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 1DA4 _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 1DA7 _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 1DAA _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 1DAD _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 1DB0 _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 1DB3 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 1DB6 _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 1DB9 _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 1DBC _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 1DBF _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 1DC2 _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 1DC5 _ 8B. 40, 0C
        sub     esp, 8                                  ; 1DC8 _ 83. EC, 08
        push    esi                                     ; 1DCB _ 56
        push    ebx                                     ; 1DCC _ 53
        push    ecx                                     ; 1DCD _ 51
        push    edx                                     ; 1DCE _ 52
        push    eax                                     ; 1DCF _ 50
        push    dword [ebp+8H]                          ; 1DD0 _ FF. 75, 08
        call    sheet_refreshmap                        ; 1DD3 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1DD8 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 1DDB _ 8B. 45, 10
        lea     esi, [eax+1H]                           ; 1DDE _ 8D. 70, 01
        mov     eax, dword [ebp+0CH]                    ; 1DE1 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 1DE4 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 1DE7 _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 1DEA _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 1DED _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 1DF0 _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 1DF3 _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 1DF6 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 1DF9 _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 1DFC _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 1DFF _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 1E02 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 1E05 _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 1E08 _ 8B. 40, 0C
        sub     esp, 4                                  ; 1E0B _ 83. EC, 04
        push    dword [ebp-0CH]                         ; 1E0E _ FF. 75, F4
        push    esi                                     ; 1E11 _ 56
        push    ebx                                     ; 1E12 _ 53
        push    ecx                                     ; 1E13 _ 51
        push    edx                                     ; 1E14 _ 52
        push    eax                                     ; 1E15 _ 50
        push    dword [ebp+8H]                          ; 1E16 _ FF. 75, 08
        call    sheet_refresh_new                       ; 1E19 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1E1E _ 83. C4, 20
        jmp     ?_115                                   ; 1E21 _ E9, 00000244

?_104:  mov     eax, dword [ebp+8H]                     ; 1E26 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 1E29 _ 8B. 40, 10
        cmp     dword [ebp-0CH], eax                    ; 1E2C _ 39. 45, F4
        jge     ?_107                                   ; 1E2F _ 7D, 47
        mov     eax, dword [ebp-0CH]                    ; 1E31 _ 8B. 45, F4
        mov     dword [ebp-18H], eax                    ; 1E34 _ 89. 45, E8
        jmp     ?_106                                   ; 1E37 _ EB, 34

?_105:  mov     eax, dword [ebp-18H]                    ; 1E39 _ 8B. 45, E8
        lea     edx, [eax+1H]                           ; 1E3C _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 1E3F _ 8B. 45, 08
        add     edx, 4                                  ; 1E42 _ 83. C2, 04
        mov     edx, dword [eax+edx*4+4H]               ; 1E45 _ 8B. 54 90, 04
        mov     eax, dword [ebp+8H]                     ; 1E49 _ 8B. 45, 08
        mov     ecx, dword [ebp-18H]                    ; 1E4C _ 8B. 4D, E8
        add     ecx, 4                                  ; 1E4F _ 83. C1, 04
        mov     dword [eax+ecx*4+4H], edx               ; 1E52 _ 89. 54 88, 04
        mov     eax, dword [ebp+8H]                     ; 1E56 _ 8B. 45, 08
        mov     edx, dword [ebp-18H]                    ; 1E59 _ 8B. 55, E8
        add     edx, 4                                  ; 1E5C _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 1E5F _ 8B. 44 90, 04
        mov     edx, dword [ebp-18H]                    ; 1E63 _ 8B. 55, E8
        mov     dword [eax+18H], edx                    ; 1E66 _ 89. 50, 18
        add     dword [ebp-18H], 1                      ; 1E69 _ 83. 45, E8, 01
?_106:  mov     eax, dword [ebp+8H]                     ; 1E6D _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 1E70 _ 8B. 40, 10
        cmp     dword [ebp-18H], eax                    ; 1E73 _ 39. 45, E8
        jl      ?_105                                   ; 1E76 _ 7C, C1
?_107:  mov     eax, dword [ebp+8H]                     ; 1E78 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 1E7B _ 8B. 40, 10
        lea     edx, [eax-1H]                           ; 1E7E _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 1E81 _ 8B. 45, 08
        mov     dword [eax+10H], edx                    ; 1E84 _ 89. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 1E87 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 1E8A _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 1E8D _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 1E90 _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 1E93 _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 1E96 _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 1E99 _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 1E9C _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 1E9F _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 1EA2 _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 1EA5 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 1EA8 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 1EAB _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 1EAE _ 8B. 40, 0C
        sub     esp, 8                                  ; 1EB1 _ 83. EC, 08
        push    0                                       ; 1EB4 _ 6A, 00
        push    ebx                                     ; 1EB6 _ 53
        push    ecx                                     ; 1EB7 _ 51
        push    edx                                     ; 1EB8 _ 52
        push    eax                                     ; 1EB9 _ 50
        push    dword [ebp+8H]                          ; 1EBA _ FF. 75, 08
        call    sheet_refreshmap                        ; 1EBD _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1EC2 _ 83. C4, 20
        mov     eax, dword [ebp-0CH]                    ; 1EC5 _ 8B. 45, F4
        lea     esi, [eax-1H]                           ; 1EC8 _ 8D. 70, FF
        mov     eax, dword [ebp+0CH]                    ; 1ECB _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 1ECE _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 1ED1 _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 1ED4 _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 1ED7 _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 1EDA _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 1EDD _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 1EE0 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 1EE3 _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 1EE6 _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 1EE9 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 1EEC _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 1EEF _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 1EF2 _ 8B. 40, 0C
        sub     esp, 4                                  ; 1EF5 _ 83. EC, 04
        push    esi                                     ; 1EF8 _ 56
        push    0                                       ; 1EF9 _ 6A, 00
        push    ebx                                     ; 1EFB _ 53
        push    ecx                                     ; 1EFC _ 51
        push    edx                                     ; 1EFD _ 52
        push    eax                                     ; 1EFE _ 50
        push    dword [ebp+8H]                          ; 1EFF _ FF. 75, 08
        call    sheet_refresh_new                       ; 1F02 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1F07 _ 83. C4, 20
        jmp     ?_115                                   ; 1F0A _ E9, 0000015B

?_108:  mov     eax, dword [ebp-0CH]                    ; 1F0F _ 8B. 45, F4
        cmp     eax, dword [ebp+10H]                    ; 1F12 _ 3B. 45, 10
        jge     ?_115                                   ; 1F15 _ 0F 8D, 0000014F
        cmp     dword [ebp-0CH], 0                      ; 1F1B _ 83. 7D, F4, 00
        js      ?_111                                   ; 1F1F _ 78, 56
        mov     eax, dword [ebp-0CH]                    ; 1F21 _ 8B. 45, F4
        mov     dword [ebp-14H], eax                    ; 1F24 _ 89. 45, EC
        jmp     ?_110                                   ; 1F27 _ EB, 34

?_109:  mov     eax, dword [ebp-14H]                    ; 1F29 _ 8B. 45, EC
        lea     edx, [eax+1H]                           ; 1F2C _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 1F2F _ 8B. 45, 08
        add     edx, 4                                  ; 1F32 _ 83. C2, 04
        mov     edx, dword [eax+edx*4+4H]               ; 1F35 _ 8B. 54 90, 04
        mov     eax, dword [ebp+8H]                     ; 1F39 _ 8B. 45, 08
        mov     ecx, dword [ebp-14H]                    ; 1F3C _ 8B. 4D, EC
        add     ecx, 4                                  ; 1F3F _ 83. C1, 04
        mov     dword [eax+ecx*4+4H], edx               ; 1F42 _ 89. 54 88, 04
        mov     eax, dword [ebp+8H]                     ; 1F46 _ 8B. 45, 08
        mov     edx, dword [ebp-14H]                    ; 1F49 _ 8B. 55, EC
        add     edx, 4                                  ; 1F4C _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 1F4F _ 8B. 44 90, 04
        mov     edx, dword [ebp-14H]                    ; 1F53 _ 8B. 55, EC
        mov     dword [eax+18H], edx                    ; 1F56 _ 89. 50, 18
        add     dword [ebp-14H], 1                      ; 1F59 _ 83. 45, EC, 01
?_110:  mov     eax, dword [ebp-14H]                    ; 1F5D _ 8B. 45, EC
        cmp     eax, dword [ebp+10H]                    ; 1F60 _ 3B. 45, 10
        jl      ?_109                                   ; 1F63 _ 7C, C4
        mov     eax, dword [ebp+8H]                     ; 1F65 _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 1F68 _ 8B. 55, 10
        lea     ecx, [edx+4H]                           ; 1F6B _ 8D. 4A, 04
        mov     edx, dword [ebp+0CH]                    ; 1F6E _ 8B. 55, 0C
        mov     dword [eax+ecx*4+4H], edx               ; 1F71 _ 89. 54 88, 04
        jmp     ?_114                                   ; 1F75 _ EB, 72

?_111:  cmp     dword [ebp-0CH], 0                      ; 1F77 _ 83. 7D, F4, 00
        jns     ?_114                                   ; 1F7B _ 79, 6C
        mov     eax, dword [ebp+8H]                     ; 1F7D _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 1F80 _ 8B. 40, 10
        mov     dword [ebp-10H], eax                    ; 1F83 _ 89. 45, F0
        jmp     ?_113                                   ; 1F86 _ EB, 3A

?_112:  mov     eax, dword [ebp-10H]                    ; 1F88 _ 8B. 45, F0
        lea     ecx, [eax+1H]                           ; 1F8B _ 8D. 48, 01
        mov     eax, dword [ebp+8H]                     ; 1F8E _ 8B. 45, 08
        mov     edx, dword [ebp-10H]                    ; 1F91 _ 8B. 55, F0
        add     edx, 4                                  ; 1F94 _ 83. C2, 04
        mov     edx, dword [eax+edx*4+4H]               ; 1F97 _ 8B. 54 90, 04
        mov     eax, dword [ebp+8H]                     ; 1F9B _ 8B. 45, 08
        add     ecx, 4                                  ; 1F9E _ 83. C1, 04
        mov     dword [eax+ecx*4+4H], edx               ; 1FA1 _ 89. 54 88, 04
        mov     eax, dword [ebp-10H]                    ; 1FA5 _ 8B. 45, F0
        lea     edx, [eax+1H]                           ; 1FA8 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 1FAB _ 8B. 45, 08
        add     edx, 4                                  ; 1FAE _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 1FB1 _ 8B. 44 90, 04
        mov     edx, dword [ebp-10H]                    ; 1FB5 _ 8B. 55, F0
        add     edx, 1                                  ; 1FB8 _ 83. C2, 01
        mov     dword [eax+18H], edx                    ; 1FBB _ 89. 50, 18
        sub     dword [ebp-10H], 1                      ; 1FBE _ 83. 6D, F0, 01
?_113:  mov     eax, dword [ebp-10H]                    ; 1FC2 _ 8B. 45, F0
        cmp     eax, dword [ebp+10H]                    ; 1FC5 _ 3B. 45, 10
        jge     ?_112                                   ; 1FC8 _ 7D, BE
        mov     eax, dword [ebp+8H]                     ; 1FCA _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 1FCD _ 8B. 55, 10
        lea     ecx, [edx+4H]                           ; 1FD0 _ 8D. 4A, 04
        mov     edx, dword [ebp+0CH]                    ; 1FD3 _ 8B. 55, 0C
        mov     dword [eax+ecx*4+4H], edx               ; 1FD6 _ 89. 54 88, 04
        mov     eax, dword [ebp+8H]                     ; 1FDA _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 1FDD _ 8B. 40, 10
        lea     edx, [eax+1H]                           ; 1FE0 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 1FE3 _ 8B. 45, 08
        mov     dword [eax+10H], edx                    ; 1FE6 _ 89. 50, 10
?_114:  mov     eax, dword [ebp+0CH]                    ; 1FE9 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 1FEC _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 1FEF _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 1FF2 _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 1FF5 _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 1FF8 _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 1FFB _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 1FFE _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 2001 _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 2004 _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 2007 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 200A _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 200D _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 2010 _ 8B. 40, 0C
        sub     esp, 8                                  ; 2013 _ 83. EC, 08
        push    dword [ebp+10H]                         ; 2016 _ FF. 75, 10
        push    ebx                                     ; 2019 _ 53
        push    ecx                                     ; 201A _ 51
        push    edx                                     ; 201B _ 52
        push    eax                                     ; 201C _ 50
        push    dword [ebp+8H]                          ; 201D _ FF. 75, 08
        call    sheet_refreshmap                        ; 2020 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 2025 _ 83. C4, 20
        mov     eax, dword [ebp+0CH]                    ; 2028 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 202B _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 202E _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 2031 _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 2034 _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 2037 _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 203A _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 203D _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 2040 _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 2043 _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 2046 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 2049 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 204C _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 204F _ 8B. 40, 0C
        sub     esp, 4                                  ; 2052 _ 83. EC, 04
        push    dword [ebp+10H]                         ; 2055 _ FF. 75, 10
        push    dword [ebp+10H]                         ; 2058 _ FF. 75, 10
        push    ebx                                     ; 205B _ 53
        push    ecx                                     ; 205C _ 51
        push    edx                                     ; 205D _ 52
        push    eax                                     ; 205E _ 50
        push    dword [ebp+8H]                          ; 205F _ FF. 75, 08
        call    sheet_refresh_new                       ; 2062 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 2067 _ 83. C4, 20
?_115:  nop                                             ; 206A _ 90
        lea     esp, [ebp-8H]                           ; 206B _ 8D. 65, F8
        pop     ebx                                     ; 206E _ 5B
        pop     esi                                     ; 206F _ 5E
        pop     ebp                                     ; 2070 _ 5D
        ret                                             ; 2071 _ C3
; sheet_level_updown End of function

sheet_refresh:; Function begin
        push    ebp                                     ; 2072 _ 55
        mov     ebp, esp                                ; 2073 _ 89. E5
        push    edi                                     ; 2075 _ 57
        push    esi                                     ; 2076 _ 56
        push    ebx                                     ; 2077 _ 53
        sub     esp, 28                                 ; 2078 _ 83. EC, 1C
        mov     eax, dword [ebp+0CH]                    ; 207B _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 207E _ 8B. 40, 18
        test    eax, eax                                ; 2081 _ 85. C0
        js      ?_116                                   ; 2083 _ 78, 52
        mov     eax, dword [ebp+0CH]                    ; 2085 _ 8B. 45, 0C
        mov     ebx, dword [eax+18H]                    ; 2088 _ 8B. 58, 18
        mov     eax, dword [ebp+0CH]                    ; 208B _ 8B. 45, 0C
        mov     ecx, dword [eax+18H]                    ; 208E _ 8B. 48, 18
        mov     eax, dword [ebp+0CH]                    ; 2091 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 2094 _ 8B. 50, 10
        mov     eax, dword [ebp+1CH]                    ; 2097 _ 8B. 45, 1C
        lea     edi, [edx+eax]                          ; 209A _ 8D. 3C 02
        mov     eax, dword [ebp+0CH]                    ; 209D _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 20A0 _ 8B. 50, 0C
        mov     eax, dword [ebp+18H]                    ; 20A3 _ 8B. 45, 18
        lea     esi, [edx+eax]                          ; 20A6 _ 8D. 34 02
        mov     eax, dword [ebp+0CH]                    ; 20A9 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 20AC _ 8B. 50, 10
        mov     eax, dword [ebp+14H]                    ; 20AF _ 8B. 45, 14
        add     edx, eax                                ; 20B2 _ 01. C2
        mov     eax, dword [ebp+0CH]                    ; 20B4 _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 20B7 _ 8B. 40, 0C
        mov     dword [ebp-1CH], eax                    ; 20BA _ 89. 45, E4
        mov     eax, dword [ebp+10H]                    ; 20BD _ 8B. 45, 10
        add     eax, dword [ebp-1CH]                    ; 20C0 _ 03. 45, E4
        sub     esp, 4                                  ; 20C3 _ 83. EC, 04
        push    ebx                                     ; 20C6 _ 53
        push    ecx                                     ; 20C7 _ 51
        push    edi                                     ; 20C8 _ 57
        push    esi                                     ; 20C9 _ 56
        push    edx                                     ; 20CA _ 52
        push    eax                                     ; 20CB _ 50
        push    dword [ebp+8H]                          ; 20CC _ FF. 75, 08
        call    sheet_refresh_new                       ; 20CF _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 20D4 _ 83. C4, 20
?_116:  mov     eax, 0                                  ; 20D7 _ B8, 00000000
        lea     esp, [ebp-0CH]                          ; 20DC _ 8D. 65, F4
        pop     ebx                                     ; 20DF _ 5B
        pop     esi                                     ; 20E0 _ 5E
        pop     edi                                     ; 20E1 _ 5F
        pop     ebp                                     ; 20E2 _ 5D
        ret                                             ; 20E3 _ C3
; sheet_refresh End of function

sheet_slide:; Function begin
        push    ebp                                     ; 20E4 _ 55
        mov     ebp, esp                                ; 20E5 _ 89. E5
        push    esi                                     ; 20E7 _ 56
        push    ebx                                     ; 20E8 _ 53
        sub     esp, 16                                 ; 20E9 _ 83. EC, 10
        mov     eax, dword [ebp+0CH]                    ; 20EC _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 20EF _ 8B. 40, 0C
        mov     dword [ebp-10H], eax                    ; 20F2 _ 89. 45, F0
        mov     eax, dword [ebp+0CH]                    ; 20F5 _ 8B. 45, 0C
        mov     eax, dword [eax+10H]                    ; 20F8 _ 8B. 40, 10
        mov     dword [ebp-0CH], eax                    ; 20FB _ 89. 45, F4
        mov     eax, dword [ebp+0CH]                    ; 20FE _ 8B. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 2101 _ 8B. 55, 10
        mov     dword [eax+0CH], edx                    ; 2104 _ 89. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 2107 _ 8B. 45, 0C
        mov     edx, dword [ebp+14H]                    ; 210A _ 8B. 55, 14
        mov     dword [eax+10H], edx                    ; 210D _ 89. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 2110 _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 2113 _ 8B. 40, 18
        test    eax, eax                                ; 2116 _ 85. C0
        js      ?_117                                   ; 2118 _ 0F 88, 000000D3
        mov     eax, dword [ebp+0CH]                    ; 211E _ 8B. 45, 0C
        mov     edx, dword [eax+8H]                     ; 2121 _ 8B. 50, 08
        mov     eax, dword [ebp-0CH]                    ; 2124 _ 8B. 45, F4
        add     edx, eax                                ; 2127 _ 01. C2
        mov     eax, dword [ebp+0CH]                    ; 2129 _ 8B. 45, 0C
        mov     ecx, dword [eax+4H]                     ; 212C _ 8B. 48, 04
        mov     eax, dword [ebp-10H]                    ; 212F _ 8B. 45, F0
        add     eax, ecx                                ; 2132 _ 01. C8
        sub     esp, 8                                  ; 2134 _ 83. EC, 08
        push    0                                       ; 2137 _ 6A, 00
        push    edx                                     ; 2139 _ 52
        push    eax                                     ; 213A _ 50
        push    dword [ebp-0CH]                         ; 213B _ FF. 75, F4
        push    dword [ebp-10H]                         ; 213E _ FF. 75, F0
        push    dword [ebp+8H]                          ; 2141 _ FF. 75, 08
        call    sheet_refreshmap                        ; 2144 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 2149 _ 83. C4, 20
        mov     eax, dword [ebp+0CH]                    ; 214C _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 214F _ 8B. 40, 18
        mov     edx, dword [ebp+0CH]                    ; 2152 _ 8B. 55, 0C
        mov     ecx, dword [edx+8H]                     ; 2155 _ 8B. 4A, 08
        mov     edx, dword [ebp+14H]                    ; 2158 _ 8B. 55, 14
        add     ecx, edx                                ; 215B _ 01. D1
        mov     edx, dword [ebp+0CH]                    ; 215D _ 8B. 55, 0C
        mov     ebx, dword [edx+4H]                     ; 2160 _ 8B. 5A, 04
        mov     edx, dword [ebp+10H]                    ; 2163 _ 8B. 55, 10
        add     edx, ebx                                ; 2166 _ 01. DA
        sub     esp, 8                                  ; 2168 _ 83. EC, 08
        push    eax                                     ; 216B _ 50
        push    ecx                                     ; 216C _ 51
        push    edx                                     ; 216D _ 52
        push    dword [ebp+14H]                         ; 216E _ FF. 75, 14
        push    dword [ebp+10H]                         ; 2171 _ FF. 75, 10
        push    dword [ebp+8H]                          ; 2174 _ FF. 75, 08
        call    sheet_refreshmap                        ; 2177 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 217C _ 83. C4, 20
        mov     eax, dword [ebp+0CH]                    ; 217F _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 2182 _ 8B. 40, 18
        lea     ecx, [eax-1H]                           ; 2185 _ 8D. 48, FF
        mov     eax, dword [ebp+0CH]                    ; 2188 _ 8B. 45, 0C
        mov     edx, dword [eax+8H]                     ; 218B _ 8B. 50, 08
        mov     eax, dword [ebp-0CH]                    ; 218E _ 8B. 45, F4
        add     edx, eax                                ; 2191 _ 01. C2
        mov     eax, dword [ebp+0CH]                    ; 2193 _ 8B. 45, 0C
        mov     ebx, dword [eax+4H]                     ; 2196 _ 8B. 58, 04
        mov     eax, dword [ebp-10H]                    ; 2199 _ 8B. 45, F0
        add     eax, ebx                                ; 219C _ 01. D8
        sub     esp, 4                                  ; 219E _ 83. EC, 04
        push    ecx                                     ; 21A1 _ 51
        push    0                                       ; 21A2 _ 6A, 00
        push    edx                                     ; 21A4 _ 52
        push    eax                                     ; 21A5 _ 50
        push    dword [ebp-0CH]                         ; 21A6 _ FF. 75, F4
        push    dword [ebp-10H]                         ; 21A9 _ FF. 75, F0
        push    dword [ebp+8H]                          ; 21AC _ FF. 75, 08
        call    sheet_refresh_new                       ; 21AF _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 21B4 _ 83. C4, 20
        mov     eax, dword [ebp+0CH]                    ; 21B7 _ 8B. 45, 0C
        mov     edx, dword [eax+18H]                    ; 21BA _ 8B. 50, 18
        mov     eax, dword [ebp+0CH]                    ; 21BD _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 21C0 _ 8B. 40, 18
        mov     ecx, dword [ebp+0CH]                    ; 21C3 _ 8B. 4D, 0C
        mov     ebx, dword [ecx+8H]                     ; 21C6 _ 8B. 59, 08
        mov     ecx, dword [ebp+14H]                    ; 21C9 _ 8B. 4D, 14
        add     ebx, ecx                                ; 21CC _ 01. CB
        mov     ecx, dword [ebp+0CH]                    ; 21CE _ 8B. 4D, 0C
        mov     esi, dword [ecx+4H]                     ; 21D1 _ 8B. 71, 04
        mov     ecx, dword [ebp+10H]                    ; 21D4 _ 8B. 4D, 10
        add     ecx, esi                                ; 21D7 _ 01. F1
        sub     esp, 4                                  ; 21D9 _ 83. EC, 04
        push    edx                                     ; 21DC _ 52
        push    eax                                     ; 21DD _ 50
        push    ebx                                     ; 21DE _ 53
        push    ecx                                     ; 21DF _ 51
        push    dword [ebp+14H]                         ; 21E0 _ FF. 75, 14
        push    dword [ebp+10H]                         ; 21E3 _ FF. 75, 10
        push    dword [ebp+8H]                          ; 21E6 _ FF. 75, 08
        call    sheet_refresh_new                       ; 21E9 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 21EE _ 83. C4, 20
?_117:  nop                                             ; 21F1 _ 90
        lea     esp, [ebp-8H]                           ; 21F2 _ 8D. 65, F8
        pop     ebx                                     ; 21F5 _ 5B
        pop     esi                                     ; 21F6 _ 5E
        pop     ebp                                     ; 21F7 _ 5D
        ret                                             ; 21F8 _ C3
; sheet_slide End of function

sheet_refresh_new:; Function begin
        push    ebp                                     ; 21F9 _ 55
        mov     ebp, esp                                ; 21FA _ 89. E5
        sub     esp, 48                                 ; 21FC _ 83. EC, 30
        mov     eax, dword [ebp+8H]                     ; 21FF _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 2202 _ 8B. 00
        mov     dword [ebp-18H], eax                    ; 2204 _ 89. 45, E8
        mov     eax, dword [ebp+8H]                     ; 2207 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 220A _ 8B. 40, 04
        mov     dword [ebp-14H], eax                    ; 220D _ 89. 45, EC
        mov     eax, dword [ebp+1CH]                    ; 2210 _ 8B. 45, 1C
        mov     dword [ebp-24H], eax                    ; 2213 _ 89. 45, DC
        jmp     ?_124                                   ; 2216 _ E9, 00000118

?_118:  mov     eax, dword [ebp+8H]                     ; 221B _ 8B. 45, 08
        mov     edx, dword [ebp-24H]                    ; 221E _ 8B. 55, DC
        add     edx, 4                                  ; 2221 _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 2224 _ 8B. 44 90, 04
        mov     dword [ebp-10H], eax                    ; 2228 _ 89. 45, F0
        mov     eax, dword [ebp-10H]                    ; 222B _ 8B. 45, F0
        mov     eax, dword [eax]                        ; 222E _ 8B. 00
        mov     dword [ebp-0CH], eax                    ; 2230 _ 89. 45, F4
        mov     eax, dword [ebp-10H]                    ; 2233 _ 8B. 45, F0
        mov     edx, dword [ebp+8H]                     ; 2236 _ 8B. 55, 08
        add     edx, 1044                               ; 2239 _ 81. C2, 00000414
        sub     eax, edx                                ; 223F _ 29. D0
        sar     eax, 5                                  ; 2241 _ C1. F8, 05
        mov     byte [ebp-26H], al                      ; 2244 _ 88. 45, DA
        mov     dword [ebp-20H], 0                      ; 2247 _ C7. 45, E0, 00000000
        jmp     ?_123                                   ; 224E _ E9, 000000CD

?_119:  mov     eax, dword [ebp-10H]                    ; 2253 _ 8B. 45, F0
        mov     edx, dword [eax+10H]                    ; 2256 _ 8B. 50, 10
        mov     eax, dword [ebp-20H]                    ; 2259 _ 8B. 45, E0
        add     eax, edx                                ; 225C _ 01. D0
        mov     dword [ebp-8H], eax                     ; 225E _ 89. 45, F8
        mov     dword [ebp-1CH], 0                      ; 2261 _ C7. 45, E4, 00000000
        jmp     ?_122                                   ; 2268 _ E9, 000000A0

?_120:  mov     eax, dword [ebp-10H]                    ; 226D _ 8B. 45, F0
        mov     edx, dword [eax+0CH]                    ; 2270 _ 8B. 50, 0C
        mov     eax, dword [ebp-1CH]                    ; 2273 _ 8B. 45, E4
        add     eax, edx                                ; 2276 _ 01. D0
        mov     dword [ebp-4H], eax                     ; 2278 _ 89. 45, FC
        mov     eax, dword [ebp+0CH]                    ; 227B _ 8B. 45, 0C
        cmp     eax, dword [ebp-4H]                     ; 227E _ 3B. 45, FC
        jg      ?_121                                   ; 2281 _ 0F 8F, 00000082
        mov     eax, dword [ebp-4H]                     ; 2287 _ 8B. 45, FC
        cmp     eax, dword [ebp+14H]                    ; 228A _ 3B. 45, 14
        jge     ?_121                                   ; 228D _ 7D, 7A
        mov     eax, dword [ebp+10H]                    ; 228F _ 8B. 45, 10
        cmp     eax, dword [ebp-8H]                     ; 2292 _ 3B. 45, F8
        jg      ?_121                                   ; 2295 _ 7F, 72
        mov     eax, dword [ebp-8H]                     ; 2297 _ 8B. 45, F8
        cmp     eax, dword [ebp+18H]                    ; 229A _ 3B. 45, 18
        jge     ?_121                                   ; 229D _ 7D, 6A
        mov     eax, dword [ebp-10H]                    ; 229F _ 8B. 45, F0
        mov     eax, dword [eax+4H]                     ; 22A2 _ 8B. 40, 04
        imul    eax, dword [ebp-20H]                    ; 22A5 _ 0F AF. 45, E0
        mov     edx, eax                                ; 22A9 _ 89. C2
        mov     eax, dword [ebp-1CH]                    ; 22AB _ 8B. 45, E4
        add     eax, edx                                ; 22AE _ 01. D0
        mov     edx, eax                                ; 22B0 _ 89. C2
        mov     eax, dword [ebp-0CH]                    ; 22B2 _ 8B. 45, F4
        add     eax, edx                                ; 22B5 _ 01. D0
        movzx   eax, byte [eax]                         ; 22B7 _ 0F B6. 00
        mov     byte [ebp-25H], al                      ; 22BA _ 88. 45, DB
        mov     eax, dword [ebp+8H]                     ; 22BD _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 22C0 _ 8B. 40, 08
        imul    eax, dword [ebp-8H]                     ; 22C3 _ 0F AF. 45, F8
        mov     edx, eax                                ; 22C7 _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 22C9 _ 8B. 45, FC
        add     eax, edx                                ; 22CC _ 01. D0
        mov     edx, eax                                ; 22CE _ 89. C2
        mov     eax, dword [ebp-14H]                    ; 22D0 _ 8B. 45, EC
        add     eax, edx                                ; 22D3 _ 01. D0
        movzx   eax, byte [eax]                         ; 22D5 _ 0F B6. 00
        cmp     byte [ebp-26H], al                      ; 22D8 _ 38. 45, DA
        jnz     ?_121                                   ; 22DB _ 75, 2C
        movzx   edx, byte [ebp-25H]                     ; 22DD _ 0F B6. 55, DB
        mov     eax, dword [ebp-10H]                    ; 22E1 _ 8B. 45, F0
        mov     eax, dword [eax+14H]                    ; 22E4 _ 8B. 40, 14
        cmp     edx, eax                                ; 22E7 _ 39. C2
        jz      ?_121                                   ; 22E9 _ 74, 1E
        mov     eax, dword [ebp+8H]                     ; 22EB _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 22EE _ 8B. 40, 08
        imul    eax, dword [ebp-8H]                     ; 22F1 _ 0F AF. 45, F8
        mov     edx, eax                                ; 22F5 _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 22F7 _ 8B. 45, FC
        add     eax, edx                                ; 22FA _ 01. D0
        mov     edx, eax                                ; 22FC _ 89. C2
        mov     eax, dword [ebp-18H]                    ; 22FE _ 8B. 45, E8
        add     edx, eax                                ; 2301 _ 01. C2
        movzx   eax, byte [ebp-25H]                     ; 2303 _ 0F B6. 45, DB
        mov     byte [edx], al                          ; 2307 _ 88. 02
?_121:  add     dword [ebp-1CH], 1                      ; 2309 _ 83. 45, E4, 01
?_122:  mov     eax, dword [ebp-10H]                    ; 230D _ 8B. 45, F0
        mov     eax, dword [eax+4H]                     ; 2310 _ 8B. 40, 04
        cmp     dword [ebp-1CH], eax                    ; 2313 _ 39. 45, E4
        jl      ?_120                                   ; 2316 _ 0F 8C, FFFFFF51
        add     dword [ebp-20H], 1                      ; 231C _ 83. 45, E0, 01
?_123:  mov     eax, dword [ebp-10H]                    ; 2320 _ 8B. 45, F0
        mov     eax, dword [eax+8H]                     ; 2323 _ 8B. 40, 08
        cmp     dword [ebp-20H], eax                    ; 2326 _ 39. 45, E0
        jl      ?_119                                   ; 2329 _ 0F 8C, FFFFFF24
        add     dword [ebp-24H], 1                      ; 232F _ 83. 45, DC, 01
?_124:  mov     eax, dword [ebp-24H]                    ; 2333 _ 8B. 45, DC
        cmp     eax, dword [ebp+20H]                    ; 2336 _ 3B. 45, 20
        jle     ?_118                                   ; 2339 _ 0F 8E, FFFFFEDC
        nop                                             ; 233F _ 90
        leave                                           ; 2340 _ C9
        ret                                             ; 2341 _ C3
; sheet_refresh_new End of function

sheet_refreshmap:; Function begin
        push    ebp                                     ; 2342 _ 55
        mov     ebp, esp                                ; 2343 _ 89. E5
        sub     esp, 64                                 ; 2345 _ 83. EC, 40
        mov     eax, dword [ebp+8H]                     ; 2348 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 234B _ 8B. 40, 04
        mov     dword [ebp-14H], eax                    ; 234E _ 89. 45, EC
        cmp     dword [ebp+0CH], 0                      ; 2351 _ 83. 7D, 0C, 00
        jns     ?_125                                   ; 2355 _ 79, 07
        mov     dword [ebp+0CH], 0                      ; 2357 _ C7. 45, 0C, 00000000
?_125:  mov     eax, dword [ebp+8H]                     ; 235E _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 2361 _ 8B. 40, 08
        cmp     dword [ebp+0CH], eax                    ; 2364 _ 39. 45, 0C
        jle     ?_126                                   ; 2367 _ 7E, 09
        mov     eax, dword [ebp+8H]                     ; 2369 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 236C _ 8B. 40, 08
        mov     dword [ebp+0CH], eax                    ; 236F _ 89. 45, 0C
?_126:  cmp     dword [ebp+10H], 0                      ; 2372 _ 83. 7D, 10, 00
        jns     ?_127                                   ; 2376 _ 79, 07
        mov     dword [ebp+10H], 0                      ; 2378 _ C7. 45, 10, 00000000
?_127:  mov     eax, dword [ebp+8H]                     ; 237F _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 2382 _ 8B. 40, 0C
        cmp     dword [ebp+10H], eax                    ; 2385 _ 39. 45, 10
        jle     ?_128                                   ; 2388 _ 7E, 09
        mov     eax, dword [ebp+8H]                     ; 238A _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 238D _ 8B. 40, 0C
        mov     dword [ebp+10H], eax                    ; 2390 _ 89. 45, 10
?_128:  mov     eax, dword [ebp+1CH]                    ; 2393 _ 8B. 45, 1C
        mov     dword [ebp-20H], eax                    ; 2396 _ 89. 45, E0
        jmp     ?_139                                   ; 2399 _ E9, 00000140

?_129:  mov     eax, dword [ebp+8H]                     ; 239E _ 8B. 45, 08
        mov     edx, dword [ebp-20H]                    ; 23A1 _ 8B. 55, E0
        add     edx, 4                                  ; 23A4 _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 23A7 _ 8B. 44 90, 04
        mov     dword [ebp-10H], eax                    ; 23AB _ 89. 45, F0
        mov     eax, dword [ebp-10H]                    ; 23AE _ 8B. 45, F0
        mov     edx, dword [ebp+8H]                     ; 23B1 _ 8B. 55, 08
        add     edx, 1044                               ; 23B4 _ 81. C2, 00000414
        sub     eax, edx                                ; 23BA _ 29. D0
        sar     eax, 5                                  ; 23BC _ C1. F8, 05
        mov     byte [ebp-31H], al                      ; 23BF _ 88. 45, CF
        mov     eax, dword [ebp-10H]                    ; 23C2 _ 8B. 45, F0
        mov     eax, dword [eax]                        ; 23C5 _ 8B. 00
        mov     dword [ebp-0CH], eax                    ; 23C7 _ 89. 45, F4
        mov     eax, dword [ebp-10H]                    ; 23CA _ 8B. 45, F0
        mov     eax, dword [eax+0CH]                    ; 23CD _ 8B. 40, 0C
        mov     edx, dword [ebp+0CH]                    ; 23D0 _ 8B. 55, 0C
        sub     edx, eax                                ; 23D3 _ 29. C2
        mov     eax, edx                                ; 23D5 _ 89. D0
        mov     dword [ebp-30H], eax                    ; 23D7 _ 89. 45, D0
        mov     eax, dword [ebp-10H]                    ; 23DA _ 8B. 45, F0
        mov     eax, dword [eax+10H]                    ; 23DD _ 8B. 40, 10
        mov     edx, dword [ebp+10H]                    ; 23E0 _ 8B. 55, 10
        sub     edx, eax                                ; 23E3 _ 29. C2
        mov     eax, edx                                ; 23E5 _ 89. D0
        mov     dword [ebp-2CH], eax                    ; 23E7 _ 89. 45, D4
        mov     eax, dword [ebp-10H]                    ; 23EA _ 8B. 45, F0
        mov     eax, dword [eax+0CH]                    ; 23ED _ 8B. 40, 0C
        mov     edx, dword [ebp+14H]                    ; 23F0 _ 8B. 55, 14
        sub     edx, eax                                ; 23F3 _ 29. C2
        mov     eax, edx                                ; 23F5 _ 89. D0
        mov     dword [ebp-28H], eax                    ; 23F7 _ 89. 45, D8
        mov     eax, dword [ebp-10H]                    ; 23FA _ 8B. 45, F0
        mov     eax, dword [eax+10H]                    ; 23FD _ 8B. 40, 10
        mov     edx, dword [ebp+18H]                    ; 2400 _ 8B. 55, 18
        sub     edx, eax                                ; 2403 _ 29. C2
        mov     eax, edx                                ; 2405 _ 89. D0
        mov     dword [ebp-24H], eax                    ; 2407 _ 89. 45, DC
        cmp     dword [ebp-30H], 0                      ; 240A _ 83. 7D, D0, 00
        jns     ?_130                                   ; 240E _ 79, 07
        mov     dword [ebp-30H], 0                      ; 2410 _ C7. 45, D0, 00000000
?_130:  cmp     dword [ebp-2CH], 0                      ; 2417 _ 83. 7D, D4, 00
        jns     ?_131                                   ; 241B _ 79, 07
        mov     dword [ebp-2CH], 0                      ; 241D _ C7. 45, D4, 00000000
?_131:  mov     eax, dword [ebp-10H]                    ; 2424 _ 8B. 45, F0
        mov     eax, dword [eax+4H]                     ; 2427 _ 8B. 40, 04
        cmp     dword [ebp-28H], eax                    ; 242A _ 39. 45, D8
        jle     ?_132                                   ; 242D _ 7E, 09
        mov     eax, dword [ebp-10H]                    ; 242F _ 8B. 45, F0
        mov     eax, dword [eax+4H]                     ; 2432 _ 8B. 40, 04
        mov     dword [ebp-28H], eax                    ; 2435 _ 89. 45, D8
?_132:  mov     eax, dword [ebp-10H]                    ; 2438 _ 8B. 45, F0
        mov     eax, dword [eax+8H]                     ; 243B _ 8B. 40, 08
        cmp     dword [ebp-24H], eax                    ; 243E _ 39. 45, DC
        jle     ?_133                                   ; 2441 _ 7E, 09
        mov     eax, dword [ebp-10H]                    ; 2443 _ 8B. 45, F0
        mov     eax, dword [eax+8H]                     ; 2446 _ 8B. 40, 08
        mov     dword [ebp-24H], eax                    ; 2449 _ 89. 45, DC
?_133:  mov     eax, dword [ebp-2CH]                    ; 244C _ 8B. 45, D4
        mov     dword [ebp-1CH], eax                    ; 244F _ 89. 45, E4
        jmp     ?_138                                   ; 2452 _ EB, 7A

?_134:  mov     eax, dword [ebp-10H]                    ; 2454 _ 8B. 45, F0
        mov     edx, dword [eax+10H]                    ; 2457 _ 8B. 50, 10
        mov     eax, dword [ebp-1CH]                    ; 245A _ 8B. 45, E4
        add     eax, edx                                ; 245D _ 01. D0
        mov     dword [ebp-8H], eax                     ; 245F _ 89. 45, F8
        mov     eax, dword [ebp-30H]                    ; 2462 _ 8B. 45, D0
        mov     dword [ebp-18H], eax                    ; 2465 _ 89. 45, E8
        jmp     ?_137                                   ; 2468 _ EB, 58

?_135:  mov     eax, dword [ebp-10H]                    ; 246A _ 8B. 45, F0
        mov     edx, dword [eax+0CH]                    ; 246D _ 8B. 50, 0C
        mov     eax, dword [ebp-18H]                    ; 2470 _ 8B. 45, E8
        add     eax, edx                                ; 2473 _ 01. D0
        mov     dword [ebp-4H], eax                     ; 2475 _ 89. 45, FC
        mov     eax, dword [ebp-10H]                    ; 2478 _ 8B. 45, F0
        mov     eax, dword [eax+4H]                     ; 247B _ 8B. 40, 04
        imul    eax, dword [ebp-1CH]                    ; 247E _ 0F AF. 45, E4
        mov     edx, eax                                ; 2482 _ 89. C2
        mov     eax, dword [ebp-18H]                    ; 2484 _ 8B. 45, E8
        add     eax, edx                                ; 2487 _ 01. D0
        mov     edx, eax                                ; 2489 _ 89. C2
        mov     eax, dword [ebp-0CH]                    ; 248B _ 8B. 45, F4
        add     eax, edx                                ; 248E _ 01. D0
        movzx   eax, byte [eax]                         ; 2490 _ 0F B6. 00
        movzx   edx, al                                 ; 2493 _ 0F B6. D0
        mov     eax, dword [ebp-10H]                    ; 2496 _ 8B. 45, F0
        mov     eax, dword [eax+14H]                    ; 2499 _ 8B. 40, 14
        cmp     edx, eax                                ; 249C _ 39. C2
        jz      ?_136                                   ; 249E _ 74, 1E
        mov     eax, dword [ebp+8H]                     ; 24A0 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 24A3 _ 8B. 40, 08
        imul    eax, dword [ebp-8H]                     ; 24A6 _ 0F AF. 45, F8
        mov     edx, eax                                ; 24AA _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 24AC _ 8B. 45, FC
        add     eax, edx                                ; 24AF _ 01. D0
        mov     edx, eax                                ; 24B1 _ 89. C2
        mov     eax, dword [ebp-14H]                    ; 24B3 _ 8B. 45, EC
        add     edx, eax                                ; 24B6 _ 01. C2
        movzx   eax, byte [ebp-31H]                     ; 24B8 _ 0F B6. 45, CF
        mov     byte [edx], al                          ; 24BC _ 88. 02
?_136:  add     dword [ebp-18H], 1                      ; 24BE _ 83. 45, E8, 01
?_137:  mov     eax, dword [ebp-18H]                    ; 24C2 _ 8B. 45, E8
        cmp     eax, dword [ebp-28H]                    ; 24C5 _ 3B. 45, D8
        jl      ?_135                                   ; 24C8 _ 7C, A0
        add     dword [ebp-1CH], 1                      ; 24CA _ 83. 45, E4, 01
?_138:  mov     eax, dword [ebp-1CH]                    ; 24CE _ 8B. 45, E4
        cmp     eax, dword [ebp-24H]                    ; 24D1 _ 3B. 45, DC
        jl      ?_134                                   ; 24D4 _ 0F 8C, FFFFFF7A
        add     dword [ebp-20H], 1                      ; 24DA _ 83. 45, E0, 01
?_139:  mov     eax, dword [ebp+8H]                     ; 24DE _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 24E1 _ 8B. 40, 10
        cmp     dword [ebp-20H], eax                    ; 24E4 _ 39. 45, E0
        jle     ?_129                                   ; 24E7 _ 0F 8E, FFFFFEB1
        nop                                             ; 24ED _ 90
        leave                                           ; 24EE _ C9
        ret                                             ; 24EF _ C3
; sheet_refreshmap End of function

init_pit:; Function begin
        push    ebp                                     ; 24F0 _ 55
        mov     ebp, esp                                ; 24F1 _ 89. E5
        sub     esp, 24                                 ; 24F3 _ 83. EC, 18
        sub     esp, 8                                  ; 24F6 _ 83. EC, 08
        push    52                                      ; 24F9 _ 6A, 34
        push    67                                      ; 24FB _ 6A, 43
        call    io_out8                                 ; 24FD _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 2502 _ 83. C4, 10
        sub     esp, 8                                  ; 2505 _ 83. EC, 08
        push    156                                     ; 2508 _ 68, 0000009C
        push    64                                      ; 250D _ 6A, 40
        call    io_out8                                 ; 250F _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 2514 _ 83. C4, 10
        sub     esp, 8                                  ; 2517 _ 83. EC, 08
        push    46                                      ; 251A _ 6A, 2E
        push    64                                      ; 251C _ 6A, 40
        call    io_out8                                 ; 251E _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 2523 _ 83. C4, 10
        mov     dword [timerctl], 0                     ; 2526 _ C7. 05, 00000280(d), 00000000
        mov     dword [ebp-0CH], 0                      ; 2530 _ C7. 45, F4, 00000000
        jmp     ?_141                                   ; 2537 _ EB, 15

?_140:  mov     eax, dword [ebp-0CH]                    ; 2539 _ 8B. 45, F4
        shl     eax, 4                                  ; 253C _ C1. E0, 04
        add     eax, ?_174                              ; 253F _ 05, 00000288(d)
        mov     dword [eax], 0                          ; 2544 _ C7. 00, 00000000
        add     dword [ebp-0CH], 1                      ; 254A _ 83. 45, F4, 01
?_141:  cmp     dword [ebp-0CH], 499                    ; 254E _ 81. 7D, F4, 000001F3
        jle     ?_140                                   ; 2555 _ 7E, E2
        nop                                             ; 2557 _ 90
        leave                                           ; 2558 _ C9
        ret                                             ; 2559 _ C3
; init_pit End of function

timer_alloc:; Function begin
        push    ebp                                     ; 255A _ 55
        mov     ebp, esp                                ; 255B _ 89. E5
        sub     esp, 16                                 ; 255D _ 83. EC, 10
        mov     dword [ebp-4H], 0                       ; 2560 _ C7. 45, FC, 00000000
        jmp     ?_144                                   ; 2567 _ EB, 36

?_142:  mov     eax, dword [ebp-4H]                     ; 2569 _ 8B. 45, FC
        shl     eax, 4                                  ; 256C _ C1. E0, 04
        add     eax, ?_174                              ; 256F _ 05, 00000288(d)
        mov     eax, dword [eax]                        ; 2574 _ 8B. 00
        test    eax, eax                                ; 2576 _ 85. C0
        jnz     ?_143                                   ; 2578 _ 75, 21
        mov     eax, dword [ebp-4H]                     ; 257A _ 8B. 45, FC
        shl     eax, 4                                  ; 257D _ C1. E0, 04
        add     eax, ?_174                              ; 2580 _ 05, 00000288(d)
        mov     dword [eax], 1                          ; 2585 _ C7. 00, 00000001
        mov     eax, dword [ebp-4H]                     ; 258B _ 8B. 45, FC
        shl     eax, 4                                  ; 258E _ C1. E0, 04
        add     eax, timerctl                           ; 2591 _ 05, 00000280(d)
        add     eax, 4                                  ; 2596 _ 83. C0, 04
        jmp     ?_145                                   ; 2599 _ EB, 12

?_143:  add     dword [ebp-4H], 1                       ; 259B _ 83. 45, FC, 01
?_144:  cmp     dword [ebp-4H], 499                     ; 259F _ 81. 7D, FC, 000001F3
        jle     ?_142                                   ; 25A6 _ 7E, C1
        mov     eax, 0                                  ; 25A8 _ B8, 00000000
?_145:  leave                                           ; 25AD _ C9
        ret                                             ; 25AE _ C3
; timer_alloc End of function

timer_free:; Function begin
        push    ebp                                     ; 25AF _ 55
        mov     ebp, esp                                ; 25B0 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 25B2 _ 8B. 45, 08
        mov     dword [eax+4H], 0                       ; 25B5 _ C7. 40, 04, 00000000
        nop                                             ; 25BC _ 90
        pop     ebp                                     ; 25BD _ 5D
        ret                                             ; 25BE _ C3
; timer_free End of function

timer_init:; Function begin
        push    ebp                                     ; 25BF _ 55
        mov     ebp, esp                                ; 25C0 _ 89. E5
        sub     esp, 4                                  ; 25C2 _ 83. EC, 04
        mov     eax, dword [ebp+10H]                    ; 25C5 _ 8B. 45, 10
        mov     byte [ebp-4H], al                       ; 25C8 _ 88. 45, FC
        mov     eax, dword [ebp+8H]                     ; 25CB _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 25CE _ 8B. 55, 0C
        mov     dword [eax+8H], edx                     ; 25D1 _ 89. 50, 08
        mov     eax, dword [ebp+8H]                     ; 25D4 _ 8B. 45, 08
        movzx   edx, byte [ebp-4H]                      ; 25D7 _ 0F B6. 55, FC
        mov     byte [eax+0CH], dl                      ; 25DB _ 88. 50, 0C
        nop                                             ; 25DE _ 90
        leave                                           ; 25DF _ C9
        ret                                             ; 25E0 _ C3
; timer_init End of function

timer_setTime:; Function begin
        push    ebp                                     ; 25E1 _ 55
        mov     ebp, esp                                ; 25E2 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 25E4 _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 25E7 _ 8B. 55, 0C
        mov     dword [eax], edx                        ; 25EA _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 25EC _ 8B. 45, 08
        mov     dword [eax+4H], 2                       ; 25EF _ C7. 40, 04, 00000002
        nop                                             ; 25F6 _ 90
        pop     ebp                                     ; 25F7 _ 5D
        ret                                             ; 25F8 _ C3
; timer_setTime End of function

getTimerController:; Function begin
        push    ebp                                     ; 25F9 _ 55
        mov     ebp, esp                                ; 25FA _ 89. E5
        mov     eax, timerctl                           ; 25FC _ B8, 00000280(d)
        pop     ebp                                     ; 2601 _ 5D
        ret                                             ; 2602 _ C3
; getTimerController End of function

intHandlerForTimer:; Function begin
        push    ebp                                     ; 2603 _ 55
        mov     ebp, esp                                ; 2604 _ 89. E5
        sub     esp, 24                                 ; 2606 _ 83. EC, 18
        sub     esp, 8                                  ; 2609 _ 83. EC, 08
        push    96                                      ; 260C _ 6A, 60
        push    32                                      ; 260E _ 6A, 20
        call    io_out8                                 ; 2610 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 2615 _ 83. C4, 10
        mov     eax, dword [timerctl]                   ; 2618 _ A1, 00000280(d)
        add     eax, 1                                  ; 261D _ 83. C0, 01
        mov     dword [timerctl], eax                   ; 2620 _ A3, 00000280(d)
        mov     dword [ebp-0CH], 0                      ; 2625 _ C7. 45, F4, 00000000
        jmp     ?_148                                   ; 262C _ E9, 00000080

?_146:  mov     eax, dword [ebp-0CH]                    ; 2631 _ 8B. 45, F4
        shl     eax, 4                                  ; 2634 _ C1. E0, 04
        add     eax, ?_174                              ; 2637 _ 05, 00000288(d)
        mov     eax, dword [eax]                        ; 263C _ 8B. 00
        cmp     eax, 2                                  ; 263E _ 83. F8, 02
        jnz     ?_147                                   ; 2641 _ 75, 6A
        mov     eax, dword [ebp-0CH]                    ; 2643 _ 8B. 45, F4
        shl     eax, 4                                  ; 2646 _ C1. E0, 04
        add     eax, ?_173                              ; 2649 _ 05, 00000284(d)
        mov     eax, dword [eax]                        ; 264E _ 8B. 00
        lea     edx, [eax-1H]                           ; 2650 _ 8D. 50, FF
        mov     eax, dword [ebp-0CH]                    ; 2653 _ 8B. 45, F4
        shl     eax, 4                                  ; 2656 _ C1. E0, 04
        add     eax, ?_173                              ; 2659 _ 05, 00000284(d)
        mov     dword [eax], edx                        ; 265E _ 89. 10
        mov     eax, dword [ebp-0CH]                    ; 2660 _ 8B. 45, F4
        shl     eax, 4                                  ; 2663 _ C1. E0, 04
        add     eax, ?_173                              ; 2666 _ 05, 00000284(d)
        mov     eax, dword [eax]                        ; 266B _ 8B. 00
        test    eax, eax                                ; 266D _ 85. C0
        jnz     ?_147                                   ; 266F _ 75, 3C
        mov     eax, dword [ebp-0CH]                    ; 2671 _ 8B. 45, F4
        shl     eax, 4                                  ; 2674 _ C1. E0, 04
        add     eax, ?_174                              ; 2677 _ 05, 00000288(d)
        mov     dword [eax], 1                          ; 267C _ C7. 00, 00000001
        mov     eax, dword [ebp-0CH]                    ; 2682 _ 8B. 45, F4
        shl     eax, 4                                  ; 2685 _ C1. E0, 04
        add     eax, ?_176                              ; 2688 _ 05, 00000290(d)
        movzx   eax, byte [eax]                         ; 268D _ 0F B6. 00
        movzx   edx, al                                 ; 2690 _ 0F B6. D0
        mov     eax, dword [ebp-0CH]                    ; 2693 _ 8B. 45, F4
        shl     eax, 4                                  ; 2696 _ C1. E0, 04
        add     eax, ?_175                              ; 2699 _ 05, 0000028C(d)
        mov     eax, dword [eax]                        ; 269E _ 8B. 00
        sub     esp, 8                                  ; 26A0 _ 83. EC, 08
        push    edx                                     ; 26A3 _ 52
        push    eax                                     ; 26A4 _ 50
        call    fifo8_put                               ; 26A5 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 26AA _ 83. C4, 10
?_147:  add     dword [ebp-0CH], 1                      ; 26AD _ 83. 45, F4, 01
?_148:  cmp     dword [ebp-0CH], 499                    ; 26B1 _ 81. 7D, F4, 000001F3
        jle     ?_146                                   ; 26B8 _ 0F 8E, FFFFFF73
        nop                                             ; 26BE _ 90
        leave                                           ; 26BF _ C9
        ret                                             ; 26C0 _ C3
; intHandlerForTimer End of function

fifo8_init:; Function begin
        push    ebp                                     ; 26C1 _ 55
        mov     ebp, esp                                ; 26C2 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 26C4 _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 26C7 _ 8B. 55, 0C
        mov     dword [eax+0CH], edx                    ; 26CA _ 89. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 26CD _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 26D0 _ 8B. 55, 10
        mov     dword [eax], edx                        ; 26D3 _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 26D5 _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 26D8 _ 8B. 55, 0C
        mov     dword [eax+10H], edx                    ; 26DB _ 89. 50, 10
        mov     eax, dword [ebp+8H]                     ; 26DE _ 8B. 45, 08
        mov     dword [eax+4H], 0                       ; 26E1 _ C7. 40, 04, 00000000
        mov     eax, dword [ebp+8H]                     ; 26E8 _ 8B. 45, 08
        mov     dword [eax+8H], 0                       ; 26EB _ C7. 40, 08, 00000000
        mov     eax, dword [ebp+8H]                     ; 26F2 _ 8B. 45, 08
        mov     dword [eax+14H], 0                      ; 26F5 _ C7. 40, 14, 00000000
        nop                                             ; 26FC _ 90
        pop     ebp                                     ; 26FD _ 5D
        ret                                             ; 26FE _ C3
; fifo8_init End of function

fifo8_put:; Function begin
        push    ebp                                     ; 26FF _ 55
        mov     ebp, esp                                ; 2700 _ 89. E5
        sub     esp, 4                                  ; 2702 _ 83. EC, 04
        mov     eax, dword [ebp+0CH]                    ; 2705 _ 8B. 45, 0C
        mov     byte [ebp-4H], al                       ; 2708 _ 88. 45, FC
        mov     eax, dword [ebp+8H]                     ; 270B _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 270E _ 8B. 40, 10
        test    eax, eax                                ; 2711 _ 85. C0
        jnz     ?_149                                   ; 2713 _ 75, 18
        mov     eax, dword [ebp+8H]                     ; 2715 _ 8B. 45, 08
        mov     eax, dword [eax+14H]                    ; 2718 _ 8B. 40, 14
        or      eax, 01H                                ; 271B _ 83. C8, 01
        mov     edx, eax                                ; 271E _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 2720 _ 8B. 45, 08
        mov     dword [eax+14H], edx                    ; 2723 _ 89. 50, 14
        mov     eax, 4294967295                         ; 2726 _ B8, FFFFFFFF
        jmp     ?_151                                   ; 272B _ EB, 50

?_149:  mov     eax, dword [ebp+8H]                     ; 272D _ 8B. 45, 08
        mov     edx, dword [eax]                        ; 2730 _ 8B. 10
        mov     eax, dword [ebp+8H]                     ; 2732 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 2735 _ 8B. 40, 08
        add     edx, eax                                ; 2738 _ 01. C2
        movzx   eax, byte [ebp-4H]                      ; 273A _ 0F B6. 45, FC
        mov     byte [edx], al                          ; 273E _ 88. 02
        mov     eax, dword [ebp+8H]                     ; 2740 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 2743 _ 8B. 40, 08
        lea     edx, [eax+1H]                           ; 2746 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 2749 _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 274C _ 89. 50, 08
        mov     eax, dword [ebp+8H]                     ; 274F _ 8B. 45, 08
        mov     edx, dword [eax+8H]                     ; 2752 _ 8B. 50, 08
        mov     eax, dword [ebp+8H]                     ; 2755 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 2758 _ 8B. 40, 0C
        cmp     edx, eax                                ; 275B _ 39. C2
        jnz     ?_150                                   ; 275D _ 75, 0A
        mov     eax, dword [ebp+8H]                     ; 275F _ 8B. 45, 08
        mov     dword [eax+8H], 0                       ; 2762 _ C7. 40, 08, 00000000
?_150:  mov     eax, dword [ebp+8H]                     ; 2769 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 276C _ 8B. 40, 10
        lea     edx, [eax-1H]                           ; 276F _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 2772 _ 8B. 45, 08
        mov     dword [eax+10H], edx                    ; 2775 _ 89. 50, 10
        mov     eax, 1                                  ; 2778 _ B8, 00000001
?_151:  leave                                           ; 277D _ C9
        ret                                             ; 277E _ C3
; fifo8_put End of function

fifo8_get:; Function begin
        push    ebp                                     ; 277F _ 55
        mov     ebp, esp                                ; 2780 _ 89. E5
        sub     esp, 16                                 ; 2782 _ 83. EC, 10
        mov     eax, dword [ebp+8H]                     ; 2785 _ 8B. 45, 08
        mov     edx, dword [eax+10H]                    ; 2788 _ 8B. 50, 10
        mov     eax, dword [ebp+8H]                     ; 278B _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 278E _ 8B. 40, 0C
        cmp     edx, eax                                ; 2791 _ 39. C2
        jnz     ?_152                                   ; 2793 _ 75, 07
        mov     eax, 4294967295                         ; 2795 _ B8, FFFFFFFF
        jmp     ?_154                                   ; 279A _ EB, 51

?_152:  mov     eax, dword [ebp+8H]                     ; 279C _ 8B. 45, 08
        mov     edx, dword [eax]                        ; 279F _ 8B. 10
        mov     eax, dword [ebp+8H]                     ; 27A1 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 27A4 _ 8B. 40, 04
        add     eax, edx                                ; 27A7 _ 01. D0
        movzx   eax, byte [eax]                         ; 27A9 _ 0F B6. 00
        movzx   eax, al                                 ; 27AC _ 0F B6. C0
        mov     dword [ebp-4H], eax                     ; 27AF _ 89. 45, FC
        mov     eax, dword [ebp+8H]                     ; 27B2 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 27B5 _ 8B. 40, 04
        lea     edx, [eax+1H]                           ; 27B8 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 27BB _ 8B. 45, 08
        mov     dword [eax+4H], edx                     ; 27BE _ 89. 50, 04
        mov     eax, dword [ebp+8H]                     ; 27C1 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 27C4 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 27C7 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 27CA _ 8B. 40, 0C
        cmp     edx, eax                                ; 27CD _ 39. C2
        jnz     ?_153                                   ; 27CF _ 75, 0A
        mov     eax, dword [ebp+8H]                     ; 27D1 _ 8B. 45, 08
        mov     dword [eax+4H], 0                       ; 27D4 _ C7. 40, 04, 00000000
?_153:  mov     eax, dword [ebp+8H]                     ; 27DB _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 27DE _ 8B. 40, 10
        lea     edx, [eax+1H]                           ; 27E1 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 27E4 _ 8B. 45, 08
        mov     dword [eax+10H], edx                    ; 27E7 _ 89. 50, 10
        mov     eax, dword [ebp-4H]                     ; 27EA _ 8B. 45, FC
?_154:  leave                                           ; 27ED _ C9
        ret                                             ; 27EE _ C3
; fifo8_get End of function

fifo8_status:; Function begin
        push    ebp                                     ; 27EF _ 55
        mov     ebp, esp                                ; 27F0 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 27F2 _ 8B. 45, 08
        mov     edx, dword [eax+0CH]                    ; 27F5 _ 8B. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 27F8 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 27FB _ 8B. 40, 10
        sub     edx, eax                                ; 27FE _ 29. C2
        mov     eax, edx                                ; 2800 _ 89. D0
        pop     ebp                                     ; 2802 _ 5D
        ret                                             ; 2803 _ C3
; fifo8_status End of function



?_155:                                                  ; byte
        db 54H, 6FH, 74H, 61H, 6CH, 20H, 4DH, 65H       ; 0000 _ Total Me
        db 6DH, 20H, 53H, 69H, 7AH, 65H, 20H, 69H       ; 0008 _ m Size i
        db 73H, 3AH, 20H, 00H                           ; 0010 _ s: .

?_156:                                                  ; byte
        db 4DH, 42H, 00H                                ; 0014 _ MB.

?_157:                                                  ; byte
        db 43H, 6FH, 75H, 6EH, 74H, 65H, 72H, 00H       ; 0017 _ Counter.

?_158:                                                  ; byte
        db 35H, 5BH, 73H, 65H, 63H, 73H, 5DH, 00H       ; 001F _ 5[secs].

?_159:                                                  ; byte
        db 33H, 5BH, 73H, 65H, 63H, 73H, 5DH, 00H       ; 0027 _ 3[secs].

?_160:                                                  ; byte
        db 54H, 68H, 65H, 20H, 6DH, 6FH, 75H, 73H       ; 002F _ The mous
        db 65H, 20H, 69H, 73H, 20H, 6DH, 6FH, 76H       ; 0037 _ e is mov
        db 69H, 6EH, 67H, 2EH, 2EH, 2EH, 00H            ; 003F _ ing....

?_161:                                                  ; byte
        db 50H, 61H, 67H, 65H, 20H, 69H, 73H, 3AH       ; 0046 _ Page is:
        db 20H, 00H                                     ; 004E _  .

?_162:                                                  ; byte
        db 42H, 61H, 73H, 65H, 41H, 64H, 64H, 72H       ; 0050 _ BaseAddr
        db 4CH, 6FH, 77H, 3AH, 20H, 00H                 ; 0058 _ Low: .

?_163:                                                  ; byte
        db 42H, 61H, 73H, 65H, 41H, 64H, 64H, 72H       ; 005E _ BaseAddr
        db 48H, 69H, 67H, 68H, 3AH, 20H, 00H            ; 0066 _ High: .

?_164:                                                  ; byte
        db 4CH, 65H, 6EH, 67H, 74H, 68H, 4CH, 6FH       ; 006D _ LengthLo
        db 77H, 3AH, 20H, 00H                           ; 0075 _ w: .

?_165:                                                  ; byte
        db 4CH, 65H, 6EH, 67H, 74H, 68H, 48H, 69H       ; 0079 _ LengthHi
        db 67H, 68H, 3AH, 20H, 00H                      ; 0081 _ gh: .

?_166:                                                  ; byte
        db 54H, 79H, 70H, 65H, 3AH, 20H, 00H            ; 0086 _ Type: .



keyVal:                                                 ; byte
        db 30H, 78H                                     ; 0000 _ 0x

?_167:  db 00H                                          ; 0002 _ .

?_168:  db 00H, 00H, 00H, 00H, 00H                      ; 0003 _ .....

memman: dd 00100000H, 00000000H                         ; 0008 _ 1048576 0 
        dd 00000000H, 00000000H                         ; 0010 _ 0 0 
        dd 00000000H, 00000000H                         ; 0018 _ 0 0 

table_rgb.1730:                                         ; byte
        db 00H, 00H, 00H, 0FFH, 00H, 00H, 00H, 0FFH     ; 0020 _ ........
        db 00H, 0FFH, 0FFH, 00H, 00H, 00H, 0FFH, 0FFH   ; 0028 _ ........
        db 00H, 0FFH, 00H, 0FFH, 0FFH, 0FFH, 0FFH, 0FFH ; 0030 _ ........
        db 0C6H, 0C6H, 0C6H, 84H, 00H, 00H, 00H, 84H    ; 0038 _ ........
        db 00H, 84H, 84H, 00H, 00H, 00H, 84H, 84H       ; 0040 _ ........
        db 00H, 84H, 00H, 78H, 0D7H, 84H, 84H, 84H      ; 0048 _ ...x....
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0050 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0058 _ ........

cursor.1775:                                            ; byte
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

closebtn.1899:                                          ; byte
        db 4FH, 4FH, 4FH, 4FH, 4FH, 4FH, 4FH, 4FH       ; 0160 _ OOOOOOOO
        db 4FH, 4FH, 4FH, 4FH, 4FH, 4FH, 4FH, 40H       ; 0168 _ OOOOOOO@
        db 4FH, 51H, 51H, 51H, 51H, 51H, 51H, 51H       ; 0170 _ OQQQQQQQ
        db 51H, 51H, 51H, 51H, 51H, 51H, 24H, 40H       ; 0178 _ QQQQQQ$@
        db 4FH, 51H, 51H, 51H, 51H, 51H, 51H, 51H       ; 0180 _ OQQQQQQQ
        db 51H, 51H, 51H, 51H, 51H, 51H, 24H, 40H       ; 0188 _ QQQQQQ$@
        db 4FH, 51H, 51H, 51H, 40H, 40H, 51H, 51H       ; 0190 _ OQQQ@@QQ
        db 51H, 51H, 40H, 40H, 51H, 51H, 24H, 40H       ; 0198 _ QQ@@QQ$@
        db 4FH, 51H, 51H, 51H, 51H, 40H, 40H, 51H       ; 01A0 _ OQQQQ@@Q
        db 51H, 40H, 40H, 51H, 51H, 51H, 24H, 40H       ; 01A8 _ Q@@QQQ$@
        db 4FH, 51H, 51H, 51H, 51H, 51H, 40H, 40H       ; 01B0 _ OQQQQQ@@
        db 40H, 40H, 51H, 51H, 51H, 51H, 24H, 40H       ; 01B8 _ @@QQQQ$@
        db 4FH, 51H, 51H, 51H, 51H, 51H, 51H, 40H       ; 01C0 _ OQQQQQQ@
        db 40H, 51H, 51H, 51H, 51H, 51H, 24H, 40H       ; 01C8 _ @QQQQQ$@
        db 4FH, 51H, 51H, 51H, 51H, 51H, 40H, 40H       ; 01D0 _ OQQQQQ@@
        db 40H, 40H, 51H, 51H, 51H, 51H, 24H, 40H       ; 01D8 _ @@QQQQ$@
        db 4FH, 51H, 51H, 51H, 51H, 40H, 40H, 51H       ; 01E0 _ OQQQQ@@Q
        db 51H, 40H, 40H, 51H, 51H, 51H, 24H, 40H       ; 01E8 _ Q@@QQQ$@
        db 4FH, 51H, 51H, 51H, 40H, 40H, 51H, 51H       ; 01F0 _ OQQQ@@QQ
        db 51H, 51H, 40H, 40H, 51H, 51H, 24H, 40H       ; 01F8 _ QQ@@QQ$@
        db 4FH, 51H, 51H, 51H, 51H, 51H, 51H, 51H       ; 0200 _ OQQQQQQQ
        db 51H, 51H, 51H, 51H, 51H, 51H, 24H, 40H       ; 0208 _ QQQQQQ$@
        db 4FH, 51H, 51H, 51H, 51H, 51H, 51H, 51H       ; 0210 _ OQQQQQQQ
        db 51H, 51H, 51H, 51H, 51H, 51H, 24H, 40H       ; 0218 _ QQQQQQ$@
        db 4FH, 24H, 24H, 24H, 24H, 24H, 24H, 24H       ; 0220 _ O$$$$$$$
        db 24H, 24H, 24H, 24H, 24H, 24H, 24H, 40H       ; 0228 _ $$$$$$$@
        db 40H, 40H, 40H, 40H, 40H, 40H, 40H, 40H       ; 0230 _ @@@@@@@@
        db 40H, 40H, 40H, 40H, 40H, 40H, 40H, 40H       ; 0238 _ @@@@@@@@



bootInfo:                                               ; qword
        resb    4                                       ; 0000

?_169:  resw    1                                       ; 0004

?_170:  resw    1                                       ; 0006

keyInfo:                                                ; byte
        resb    24                                      ; 0008

mouseInfo:                                              ; byte
        resb    32                                      ; 0020

keybuf:                                                 ; yword
        resb    32                                      ; 0040

mousebuf:                                               ; byte
        resb    128                                     ; 0060

mouse_move:                                             ; oword
        resb    16                                      ; 00E0

mx:     resd    1                                       ; 00F0

my:     resd    1                                       ; 00F4

buf_back: resd  2                                       ; 00F8

buf_mouse:                                              ; byte
        resb    256                                     ; 0100

timerInfo:                                              ; byte
        resb    24                                      ; 0200

timerbuf: resq  1                                       ; 0218

timerInfo2.1689:                                        ; byte
        resb    24                                      ; 0220

timerbuf2.1691:                                         ; qword
        resq    1                                       ; 0238

timerInfo3.1690:                                        ; byte
        resb    24                                      ; 0240

timerbuf3.1692:                                         ; qword
        resq    1                                       ; 0258

str.1818:                                               ; byte
        resb    1                                       ; 0260

?_171:  resb    9                                       ; 0261

?_172:  resb    2                                       ; 026A

line.1851:                                              ; dword
        resd    1                                       ; 026C

pos.1850: resd  4                                       ; 0270

timerctl:                                               ; byte
        resd    1                                       ; 0280

?_173:                                                  ; byte
        resb    4                                       ; 0284

?_174:                                                  ; byte
        resb    4                                       ; 0288

?_175:                                                  ; byte
        resb    4                                       ; 028C

?_176:                                                  ; byte
        resb    7988                                    ; 0290


