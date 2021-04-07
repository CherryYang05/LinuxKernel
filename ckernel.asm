; Disassembly of file: ckernel.o
; Wed Apr  7 22:41:07 2021
; Mode: 32 bits
; Syntax: YASM/NASM
; Instruction set: 80386






CMain:  ; Function begin
        push    ebp                                     ; 0000 _ 55
        mov     ebp, esp                                ; 0001 _ 89. E5
        push    ebx                                     ; 0003 _ 53
        sub     esp, 68                                 ; 0004 _ 83. EC, 44
        sub     esp, 12                                 ; 0007 _ 83. EC, 0C
        push    bootInfo                                ; 000A _ 68, 00000000(d)
        call    initBootInfo                            ; 000F _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0014 _ 83. C4, 10
        mov     eax, dword [bootInfo]                   ; 0017 _ A1, 00000000(d)
        mov     dword [ebp-3CH], eax                    ; 001C _ 89. 45, C4
        movzx   eax, word [?_149]                       ; 001F _ 0F B7. 05, 00000004(d)
        cwde                                            ; 0026 _ 98
        mov     dword [ebp-38H], eax                    ; 0027 _ 89. 45, C8
        movzx   eax, word [?_150]                       ; 002A _ 0F B7. 05, 00000006(d)
        cwde                                            ; 0031 _ 98
        mov     dword [ebp-34H], eax                    ; 0032 _ 89. 45, CC
        mov     dword [ebp-30H], 0                      ; 0035 _ C7. 45, D0, 00000000
        mov     dword [ebp-2CH], 0                      ; 003C _ C7. 45, D4, 00000000
        sub     esp, 4                                  ; 0043 _ 83. EC, 04
        push    mousebuf                                ; 0046 _ 68, 00000060(d)
        push    128                                     ; 004B _ 68, 00000080
        push    mouseInfo                               ; 0050 _ 68, 00000020(d)
        call    fifo8_init                              ; 0055 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 005A _ 83. C4, 10
        sub     esp, 4                                  ; 005D _ 83. EC, 04
        push    keybuf                                  ; 0060 _ 68, 00000040(d)
        push    32                                      ; 0065 _ 6A, 20
        push    keyInfo                                 ; 0067 _ 68, 00000008(d)
        call    fifo8_init                              ; 006C _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0071 _ 83. C4, 10
        call    init_palette                            ; 0074 _ E8, FFFFFFFC(rel)
        call    init_keyboard                           ; 0079 _ E8, FFFFFFFC(rel)
        call    get_addr_buffer                         ; 007E _ E8, FFFFFFFC(rel)
        mov     dword [ebp-28H], eax                    ; 0083 _ 89. 45, D8
        call    get_memory_block_count                  ; 0086 _ E8, FFFFFFFC(rel)
        mov     dword [ebp-24H], eax                    ; 008B _ 89. 45, DC
        mov     eax, dword [memman]                     ; 008E _ A1, 00000008(d)
        sub     esp, 12                                 ; 0093 _ 83. EC, 0C
        push    eax                                     ; 0096 _ 50
        call    memman_init                             ; 0097 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 009C _ 83. C4, 10
        mov     eax, dword [memman]                     ; 009F _ A1, 00000008(d)
        sub     esp, 4                                  ; 00A4 _ 83. EC, 04
        push    1072594944                              ; 00A7 _ 68, 3FEE8000
        push    1081344                                 ; 00AC _ 68, 00108000
        push    eax                                     ; 00B1 _ 50
        call    memman_free                             ; 00B2 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 00B7 _ 83. C4, 10
        mov     eax, dword [memman]                     ; 00BA _ A1, 00000008(d)
        sub     esp, 12                                 ; 00BF _ 83. EC, 0C
        push    eax                                     ; 00C2 _ 50
        call    memman_total                            ; 00C3 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 00C8 _ 83. C4, 10
        shr     eax, 20                                 ; 00CB _ C1. E8, 14
        mov     dword [ebp-20H], eax                    ; 00CE _ 89. 45, E0
        mov     eax, dword [ebp-20H]                    ; 00D1 _ 8B. 45, E0
        sub     esp, 12                                 ; 00D4 _ 83. EC, 0C
        push    eax                                     ; 00D7 _ 50
        call    intToHexStr                             ; 00D8 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 00DD _ 83. C4, 10
        mov     dword [ebp-1CH], eax                    ; 00E0 _ 89. 45, E4
        sub     esp, 8                                  ; 00E3 _ 83. EC, 08
        push    ?_136                                   ; 00E6 _ 68, 00000000(d)
        push    3                                       ; 00EB _ 6A, 03
        push    0                                       ; 00ED _ 6A, 00
        push    0                                       ; 00EF _ 6A, 00
        push    dword [ebp-30H]                         ; 00F1 _ FF. 75, D0
        push    dword [ebp-18H]                         ; 00F4 _ FF. 75, E8
        call    showString                              ; 00F7 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 00FC _ 83. C4, 20
        sub     esp, 8                                  ; 00FF _ 83. EC, 08
        push    dword [ebp-1CH]                         ; 0102 _ FF. 75, E4
        push    3                                       ; 0105 _ 6A, 03
        push    0                                       ; 0107 _ 6A, 00
        push    152                                     ; 0109 _ 68, 00000098
        push    dword [ebp-30H]                         ; 010E _ FF. 75, D0
        push    dword [ebp-18H]                         ; 0111 _ FF. 75, E8
        call    showString                              ; 0114 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0119 _ 83. C4, 20
        sub     esp, 8                                  ; 011C _ 83. EC, 08
        push    ?_137                                   ; 011F _ 68, 00000014(d)
        push    3                                       ; 0124 _ 6A, 03
        push    0                                       ; 0126 _ 6A, 00
        push    240                                     ; 0128 _ 68, 000000F0
        push    dword [ebp-30H]                         ; 012D _ FF. 75, D0
        push    dword [ebp-18H]                         ; 0130 _ FF. 75, E8
        call    showString                              ; 0133 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0138 _ 83. C4, 20
        mov     eax, dword [memman]                     ; 013B _ A1, 00000008(d)
        push    dword [ebp-34H]                         ; 0140 _ FF. 75, CC
        push    dword [ebp-38H]                         ; 0143 _ FF. 75, C8
        push    dword [ebp-3CH]                         ; 0146 _ FF. 75, C4
        push    eax                                     ; 0149 _ 50
        call    shtctl_init                             ; 014A _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 014F _ 83. C4, 10
        mov     dword [ebp-18H], eax                    ; 0152 _ 89. 45, E8
        call    init_pit                                ; 0155 _ E8, FFFFFFFC(rel)
        sub     esp, 4                                  ; 015A _ 83. EC, 04
        push    timerbuf                                ; 015D _ 68, 00000218(d)
        push    8                                       ; 0162 _ 6A, 08
        push    timerInfo                               ; 0164 _ 68, 00000200(d)
        call    fifo8_init                              ; 0169 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 016E _ 83. C4, 10
        sub     esp, 4                                  ; 0171 _ 83. EC, 04
        push    1                                       ; 0174 _ 6A, 01
        push    timerInfo                               ; 0176 _ 68, 00000200(d)
        push    500                                     ; 017B _ 68, 000001F4
        call    setTimer                                ; 0180 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0185 _ 83. C4, 10
        sub     esp, 12                                 ; 0188 _ 83. EC, 0C
        push    dword [ebp-18H]                         ; 018B _ FF. 75, E8
        call    sheet_alloc                             ; 018E _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0193 _ 83. C4, 10
        mov     dword [ebp-30H], eax                    ; 0196 _ 89. 45, D0
        sub     esp, 12                                 ; 0199 _ 83. EC, 0C
        push    dword [ebp-18H]                         ; 019C _ FF. 75, E8
        call    sheet_alloc                             ; 019F _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 01A4 _ 83. C4, 10
        mov     dword [ebp-2CH], eax                    ; 01A7 _ 89. 45, D4
        mov     eax, dword [ebp-38H]                    ; 01AA _ 8B. 45, C8
        imul    eax, dword [ebp-34H]                    ; 01AD _ 0F AF. 45, CC
        mov     edx, eax                                ; 01B1 _ 89. C2
        mov     eax, dword [memman]                     ; 01B3 _ A1, 00000008(d)
        sub     esp, 8                                  ; 01B8 _ 83. EC, 08
        push    edx                                     ; 01BB _ 52
        push    eax                                     ; 01BC _ 50
        call    memman_alloc_4K                         ; 01BD _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 01C2 _ 83. C4, 10
        mov     dword [buf_back], eax                   ; 01C5 _ A3, 000000F8(d)
        mov     eax, dword [buf_back]                   ; 01CA _ A1, 000000F8(d)
        sub     esp, 4                                  ; 01CF _ 83. EC, 04
        push    dword [ebp-34H]                         ; 01D2 _ FF. 75, CC
        push    dword [ebp-38H]                         ; 01D5 _ FF. 75, C8
        push    eax                                     ; 01D8 _ 50
        call    init_screen8                            ; 01D9 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 01DE _ 83. C4, 10
        mov     eax, dword [buf_back]                   ; 01E1 _ A1, 000000F8(d)
        sub     esp, 12                                 ; 01E6 _ 83. EC, 0C
        push    99                                      ; 01E9 _ 6A, 63
        push    dword [ebp-34H]                         ; 01EB _ FF. 75, CC
        push    dword [ebp-38H]                         ; 01EE _ FF. 75, C8
        push    eax                                     ; 01F1 _ 50
        push    dword [ebp-30H]                         ; 01F2 _ FF. 75, D0
        call    sheet_setbuf                            ; 01F5 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 01FA _ 83. C4, 20
        sub     esp, 12                                 ; 01FD _ 83. EC, 0C
        push    99                                      ; 0200 _ 6A, 63
        push    16                                      ; 0202 _ 6A, 10
        push    16                                      ; 0204 _ 6A, 10
        push    buf_mouse                               ; 0206 _ 68, 00000100(d)
        push    dword [ebp-2CH]                         ; 020B _ FF. 75, D4
        call    sheet_setbuf                            ; 020E _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0213 _ 83. C4, 20
        sub     esp, 8                                  ; 0216 _ 83. EC, 08
        push    99                                      ; 0219 _ 6A, 63
        push    buf_mouse                               ; 021B _ 68, 00000100(d)
        call    init_mouse_cursor                       ; 0220 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0225 _ 83. C4, 10
        push    0                                       ; 0228 _ 6A, 00
        push    0                                       ; 022A _ 6A, 00
        push    dword [ebp-30H]                         ; 022C _ FF. 75, D0
        push    dword [ebp-18H]                         ; 022F _ FF. 75, E8
        call    sheet_slide                             ; 0232 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0237 _ 83. C4, 10
        mov     eax, dword [ebp-38H]                    ; 023A _ 8B. 45, C8
        sub     eax, 16                                 ; 023D _ 83. E8, 10
        mov     edx, eax                                ; 0240 _ 89. C2
        shr     edx, 31                                 ; 0242 _ C1. EA, 1F
        add     eax, edx                                ; 0245 _ 01. D0
        sar     eax, 1                                  ; 0247 _ D1. F8
        mov     dword [mx], eax                         ; 0249 _ A3, 000000F0(d)
        mov     eax, dword [ebp-34H]                    ; 024E _ 8B. 45, CC
        sub     eax, 44                                 ; 0251 _ 83. E8, 2C
        mov     edx, eax                                ; 0254 _ 89. C2
        shr     edx, 31                                 ; 0256 _ C1. EA, 1F
        add     eax, edx                                ; 0259 _ 01. D0
        sar     eax, 1                                  ; 025B _ D1. F8
        mov     dword [my], eax                         ; 025D _ A3, 000000F4(d)
        mov     edx, dword [my]                         ; 0262 _ 8B. 15, 000000F4(d)
        mov     eax, dword [mx]                         ; 0268 _ A1, 000000F0(d)
        push    edx                                     ; 026D _ 52
        push    eax                                     ; 026E _ 50
        push    dword [ebp-2CH]                         ; 026F _ FF. 75, D4
        push    dword [ebp-18H]                         ; 0272 _ FF. 75, E8
        call    sheet_slide                             ; 0275 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 027A _ 83. C4, 10
        sub     esp, 8                                  ; 027D _ 83. EC, 08
        push    ?_138                                   ; 0280 _ 68, 00000017(d)
        push    dword [ebp-18H]                         ; 0285 _ FF. 75, E8
        call    messageBox                              ; 0288 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 028D _ 83. C4, 10
        mov     dword [ebp-14H], eax                    ; 0290 _ 89. 45, EC
        sub     esp, 4                                  ; 0293 _ 83. EC, 04
        push    0                                       ; 0296 _ 6A, 00
        push    dword [ebp-30H]                         ; 0298 _ FF. 75, D0
        push    dword [ebp-18H]                         ; 029B _ FF. 75, E8
        call    sheet_level_updown                      ; 029E _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 02A3 _ 83. C4, 10
        sub     esp, 4                                  ; 02A6 _ 83. EC, 04
        push    100                                     ; 02A9 _ 6A, 64
        push    dword [ebp-2CH]                         ; 02AB _ FF. 75, D4
        push    dword [ebp-18H]                         ; 02AE _ FF. 75, E8
        call    sheet_level_updown                      ; 02B1 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 02B6 _ 83. C4, 10
        call    io_sti                                  ; 02B9 _ E8, FFFFFFFC(rel)
        sub     esp, 12                                 ; 02BE _ 83. EC, 0C
        push    mouse_move                              ; 02C1 _ 68, 000000E0(d)
        call    enable_mouse                            ; 02C6 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 02CB _ 83. C4, 10
        mov     dword [ebp-40H], 0                      ; 02CE _ C7. 45, C0, 00000000
        mov     byte [ebp-41H], 0                       ; 02D5 _ C6. 45, BF, 00
        call    getTimerController                      ; 02D9 _ E8, FFFFFFFC(rel)
        mov     dword [ebp-10H], eax                    ; 02DE _ 89. 45, F0
?_001:  mov     eax, dword [ebp-10H]                    ; 02E1 _ 8B. 45, F0
        mov     eax, dword [eax+4H]                     ; 02E4 _ 8B. 40, 04
        sub     esp, 12                                 ; 02E7 _ 83. EC, 0C
        push    eax                                     ; 02EA _ 50
        call    intToHexStr                             ; 02EB _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 02F0 _ 83. C4, 10
        mov     dword [ebp-0CH], eax                    ; 02F3 _ 89. 45, F4
        mov     eax, dword [ebp-14H]                    ; 02F6 _ 8B. 45, EC
        mov     edx, dword [eax+4H]                     ; 02F9 _ 8B. 50, 04
        mov     eax, dword [ebp-14H]                    ; 02FC _ 8B. 45, EC
        mov     eax, dword [eax]                        ; 02FF _ 8B. 00
        sub     esp, 4                                  ; 0301 _ 83. EC, 04
        push    38                                      ; 0304 _ 6A, 26
        push    150                                     ; 0306 _ 68, 00000096
        push    22                                      ; 030B _ 6A, 16
        push    8                                       ; 030D _ 6A, 08
        push    8                                       ; 030F _ 6A, 08
        push    edx                                     ; 0311 _ 52
        push    eax                                     ; 0312 _ 50
        call    boxfill8                                ; 0313 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0318 _ 83. C4, 20
        sub     esp, 8                                  ; 031B _ 83. EC, 08
        push    dword [ebp-0CH]                         ; 031E _ FF. 75, F4
        push    10                                      ; 0321 _ 6A, 0A
        push    22                                      ; 0323 _ 6A, 16
        push    8                                       ; 0325 _ 6A, 08
        push    dword [ebp-14H]                         ; 0327 _ FF. 75, EC
        push    dword [ebp-18H]                         ; 032A _ FF. 75, E8
        call    showString                              ; 032D _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0332 _ 83. C4, 20
        call    io_cli                                  ; 0335 _ E8, FFFFFFFC(rel)
        sub     esp, 12                                 ; 033A _ 83. EC, 0C
        push    keyInfo                                 ; 033D _ 68, 00000008(d)
        call    fifo8_status                            ; 0342 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0347 _ 83. C4, 10
        mov     ebx, eax                                ; 034A _ 89. C3
        sub     esp, 12                                 ; 034C _ 83. EC, 0C
        push    mouseInfo                               ; 034F _ 68, 00000020(d)
        call    fifo8_status                            ; 0354 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0359 _ 83. C4, 10
        add     ebx, eax                                ; 035C _ 01. C3
        sub     esp, 12                                 ; 035E _ 83. EC, 0C
        push    timerInfo                               ; 0361 _ 68, 00000200(d)
        call    fifo8_status                            ; 0366 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 036B _ 83. C4, 10
        add     eax, ebx                                ; 036E _ 01. D8
        test    eax, eax                                ; 0370 _ 85. C0
        jnz     ?_002                                   ; 0372 _ 75, 0A
        call    io_sti                                  ; 0374 _ E8, FFFFFFFC(rel)
        jmp     ?_001                                   ; 0379 _ E9, FFFFFF63

?_002:  sub     esp, 12                                 ; 037E _ 83. EC, 0C
        push    keyInfo                                 ; 0381 _ 68, 00000008(d)
        call    fifo8_status                            ; 0386 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 038B _ 83. C4, 10
        test    eax, eax                                ; 038E _ 85. C0
        jz      ?_003                                   ; 0390 _ 74, 73
        call    io_sti                                  ; 0392 _ E8, FFFFFFFC(rel)
        sub     esp, 12                                 ; 0397 _ 83. EC, 0C
        push    keyInfo                                 ; 039A _ 68, 00000008(d)
        call    fifo8_get                               ; 039F _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 03A4 _ 83. C4, 10
        mov     byte [ebp-41H], al                      ; 03A7 _ 88. 45, BF
        cmp     byte [ebp-41H], 28                      ; 03AA _ 80. 7D, BF, 1C
        jne     ?_001                                   ; 03AE _ 0F 85, FFFFFF2D
        mov     ecx, dword [buf_back]                   ; 03B4 _ 8B. 0D, 000000F8(d)
        mov     edx, dword [ebp-40H]                    ; 03BA _ 8B. 55, C0
        mov     eax, edx                                ; 03BD _ 89. D0
        shl     eax, 2                                  ; 03BF _ C1. E0, 02
        add     eax, edx                                ; 03C2 _ 01. D0
        shl     eax, 2                                  ; 03C4 _ C1. E0, 02
        mov     edx, eax                                ; 03C7 _ 89. C2
        mov     eax, dword [ebp-28H]                    ; 03C9 _ 8B. 45, D8
        add     eax, edx                                ; 03CC _ 01. D0
        sub     esp, 4                                  ; 03CE _ 83. EC, 04
        push    7                                       ; 03D1 _ 6A, 07
        push    dword [ebp-38H]                         ; 03D3 _ FF. 75, C8
        push    dword [ebp-40H]                         ; 03D6 _ FF. 75, C0
        push    ecx                                     ; 03D9 _ 51
        push    eax                                     ; 03DA _ 50
        push    dword [ebp-30H]                         ; 03DB _ FF. 75, D0
        push    dword [ebp-18H]                         ; 03DE _ FF. 75, E8
        call    showMemInfo                             ; 03E1 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 03E6 _ 83. C4, 20
        add     dword [ebp-40H], 1                      ; 03E9 _ 83. 45, C0, 01
        mov     eax, dword [ebp-40H]                    ; 03ED _ 8B. 45, C0
        cmp     eax, dword [ebp-24H]                    ; 03F0 _ 3B. 45, DC
        jl      ?_001                                   ; 03F3 _ 0F 8C, FFFFFEE8
        mov     dword [ebp-40H], 0                      ; 03F9 _ C7. 45, C0, 00000000
        jmp     ?_001                                   ; 0400 _ E9, FFFFFEDC

?_003:  sub     esp, 12                                 ; 0405 _ 83. EC, 0C
        push    mouseInfo                               ; 0408 _ 68, 00000020(d)
        call    fifo8_status                            ; 040D _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0412 _ 83. C4, 10
        test    eax, eax                                ; 0415 _ 85. C0
        jz      ?_004                                   ; 0417 _ 74, 19
        sub     esp, 4                                  ; 0419 _ 83. EC, 04
        push    dword [ebp-2CH]                         ; 041C _ FF. 75, D4
        push    dword [ebp-30H]                         ; 041F _ FF. 75, D0
        push    dword [ebp-18H]                         ; 0422 _ FF. 75, E8
        call    showMouseInfo                           ; 0425 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 042A _ 83. C4, 10
        jmp     ?_001                                   ; 042D _ E9, FFFFFEAF

?_004:  sub     esp, 12                                 ; 0432 _ 83. EC, 0C
        push    timerInfo                               ; 0435 _ 68, 00000200(d)
        call    fifo8_status                            ; 043A _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 043F _ 83. C4, 10
        test    eax, eax                                ; 0442 _ 85. C0
        je      ?_001                                   ; 0444 _ 0F 84, FFFFFE97
        call    io_sti                                  ; 044A _ E8, FFFFFFFC(rel)
        sub     esp, 8                                  ; 044F _ 83. EC, 08
        push    ?_139                                   ; 0452 _ 68, 0000001F(d)
        push    5                                       ; 0457 _ 6A, 05
        push    0                                       ; 0459 _ 6A, 00
        push    0                                       ; 045B _ 6A, 00
        push    dword [ebp-30H]                         ; 045D _ FF. 75, D0
        push    dword [ebp-18H]                         ; 0460 _ FF. 75, E8
        call    showString                              ; 0463 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0468 _ 83. C4, 20
        jmp     ?_001                                   ; 046B _ E9, FFFFFE71
; CMain End of function

initBootInfo:; Function begin
        push    ebp                                     ; 0470 _ 55
        mov     ebp, esp                                ; 0471 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 0473 _ 8B. 45, 08
        mov     dword [eax], 655360                     ; 0476 _ C7. 00, 000A0000
        mov     eax, dword [ebp+8H]                     ; 047C _ 8B. 45, 08
; Note: Length-changing prefix causes delay on Intel processors
        mov     word [eax+4H], 320                      ; 047F _ 66: C7. 40, 04, 0140
        mov     eax, dword [ebp+8H]                     ; 0485 _ 8B. 45, 08
; Note: Length-changing prefix causes delay on Intel processors
        mov     word [eax+6H], 200                      ; 0488 _ 66: C7. 40, 06, 00C8
        nop                                             ; 048E _ 90
        pop     ebp                                     ; 048F _ 5D
        ret                                             ; 0490 _ C3
; initBootInfo End of function

showString:; Function begin
        push    ebp                                     ; 0491 _ 55
        mov     ebp, esp                                ; 0492 _ 89. E5
        push    ebx                                     ; 0494 _ 53
        sub     esp, 36                                 ; 0495 _ 83. EC, 24
        mov     eax, dword [ebp+18H]                    ; 0498 _ 8B. 45, 18
        mov     byte [ebp-1CH], al                      ; 049B _ 88. 45, E4
        mov     eax, dword [ebp+10H]                    ; 049E _ 8B. 45, 10
        mov     dword [ebp-0CH], eax                    ; 04A1 _ 89. 45, F4
        jmp     ?_006                                   ; 04A4 _ EB, 3E

?_005:  mov     eax, dword [ebp+1CH]                    ; 04A6 _ 8B. 45, 1C
        movzx   eax, byte [eax]                         ; 04A9 _ 0F B6. 00
        movzx   eax, al                                 ; 04AC _ 0F B6. C0
        shl     eax, 4                                  ; 04AF _ C1. E0, 04
        lea     ebx, [systemFont+eax]                   ; 04B2 _ 8D. 98, 00000000(d)
        movsx   ecx, byte [ebp-1CH]                     ; 04B8 _ 0F BE. 4D, E4
        mov     eax, dword [ebp+0CH]                    ; 04BC _ 8B. 45, 0C
        mov     edx, dword [eax+4H]                     ; 04BF _ 8B. 50, 04
        mov     eax, dword [ebp+0CH]                    ; 04C2 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 04C5 _ 8B. 00
        sub     esp, 8                                  ; 04C7 _ 83. EC, 08
        push    ebx                                     ; 04CA _ 53
        push    ecx                                     ; 04CB _ 51
        push    dword [ebp+14H]                         ; 04CC _ FF. 75, 14
        push    dword [ebp+10H]                         ; 04CF _ FF. 75, 10
        push    edx                                     ; 04D2 _ 52
        push    eax                                     ; 04D3 _ 50
        call    showFont8                               ; 04D4 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 04D9 _ 83. C4, 20
        add     dword [ebp+10H], 8                      ; 04DC _ 83. 45, 10, 08
        add     dword [ebp+1CH], 1                      ; 04E0 _ 83. 45, 1C, 01
?_006:  mov     eax, dword [ebp+1CH]                    ; 04E4 _ 8B. 45, 1C
        movzx   eax, byte [eax]                         ; 04E7 _ 0F B6. 00
        test    al, al                                  ; 04EA _ 84. C0
        jnz     ?_005                                   ; 04EC _ 75, B8
        mov     eax, dword [ebp+0CH]                    ; 04EE _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 04F1 _ 8B. 40, 18
        mov     edx, dword [ebp+14H]                    ; 04F4 _ 8B. 55, 14
        add     edx, 16                                 ; 04F7 _ 83. C2, 10
        sub     esp, 4                                  ; 04FA _ 83. EC, 04
        push    eax                                     ; 04FD _ 50
        push    edx                                     ; 04FE _ 52
        push    dword [ebp+10H]                         ; 04FF _ FF. 75, 10
        push    dword [ebp+14H]                         ; 0502 _ FF. 75, 14
        push    dword [ebp-0CH]                         ; 0505 _ FF. 75, F4
        push    dword [ebp+0CH]                         ; 0508 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 050B _ FF. 75, 08
        call    sheet_refresh                           ; 050E _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0513 _ 83. C4, 20
        nop                                             ; 0516 _ 90
        mov     ebx, dword [ebp-4H]                     ; 0517 _ 8B. 5D, FC
        leave                                           ; 051A _ C9
        ret                                             ; 051B _ C3
; showString End of function

init_screen8:; Function begin
        push    ebp                                     ; 051C _ 55
        mov     ebp, esp                                ; 051D _ 89. E5
        push    ebx                                     ; 051F _ 53
        sub     esp, 4                                  ; 0520 _ 83. EC, 04
        mov     eax, dword [ebp+10H]                    ; 0523 _ 8B. 45, 10
        lea     edx, [eax-19H]                          ; 0526 _ 8D. 50, E7
        mov     eax, dword [ebp+0CH]                    ; 0529 _ 8B. 45, 0C
        sub     eax, 1                                  ; 052C _ 83. E8, 01
        sub     esp, 4                                  ; 052F _ 83. EC, 04
        push    edx                                     ; 0532 _ 52
        push    eax                                     ; 0533 _ 50
        push    0                                       ; 0534 _ 6A, 00
        push    0                                       ; 0536 _ 6A, 00
        push    14                                      ; 0538 _ 6A, 0E
        push    dword [ebp+0CH]                         ; 053A _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 053D _ FF. 75, 08
        call    boxfill8                                ; 0540 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0545 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 0548 _ 8B. 45, 10
        lea     ecx, [eax-18H]                          ; 054B _ 8D. 48, E8
        mov     eax, dword [ebp+0CH]                    ; 054E _ 8B. 45, 0C
        lea     edx, [eax-1H]                           ; 0551 _ 8D. 50, FF
        mov     eax, dword [ebp+10H]                    ; 0554 _ 8B. 45, 10
        sub     eax, 24                                 ; 0557 _ 83. E8, 18
        sub     esp, 4                                  ; 055A _ 83. EC, 04
        push    ecx                                     ; 055D _ 51
        push    edx                                     ; 055E _ 52
        push    eax                                     ; 055F _ 50
        push    0                                       ; 0560 _ 6A, 00
        push    8                                       ; 0562 _ 6A, 08
        push    dword [ebp+0CH]                         ; 0564 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 0567 _ FF. 75, 08
        call    boxfill8                                ; 056A _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 056F _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 0572 _ 8B. 45, 10
        lea     ecx, [eax-17H]                          ; 0575 _ 8D. 48, E9
        mov     eax, dword [ebp+0CH]                    ; 0578 _ 8B. 45, 0C
        lea     edx, [eax-1H]                           ; 057B _ 8D. 50, FF
        mov     eax, dword [ebp+10H]                    ; 057E _ 8B. 45, 10
        sub     eax, 23                                 ; 0581 _ 83. E8, 17
        sub     esp, 4                                  ; 0584 _ 83. EC, 04
        push    ecx                                     ; 0587 _ 51
        push    edx                                     ; 0588 _ 52
        push    eax                                     ; 0589 _ 50
        push    0                                       ; 058A _ 6A, 00
        push    7                                       ; 058C _ 6A, 07
        push    dword [ebp+0CH]                         ; 058E _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 0591 _ FF. 75, 08
        call    boxfill8                                ; 0594 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0599 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 059C _ 8B. 45, 10
        lea     ecx, [eax-1H]                           ; 059F _ 8D. 48, FF
        mov     eax, dword [ebp+0CH]                    ; 05A2 _ 8B. 45, 0C
        lea     edx, [eax-1H]                           ; 05A5 _ 8D. 50, FF
        mov     eax, dword [ebp+10H]                    ; 05A8 _ 8B. 45, 10
        sub     eax, 22                                 ; 05AB _ 83. E8, 16
        sub     esp, 4                                  ; 05AE _ 83. EC, 04
        push    ecx                                     ; 05B1 _ 51
        push    edx                                     ; 05B2 _ 52
        push    eax                                     ; 05B3 _ 50
        push    0                                       ; 05B4 _ 6A, 00
        push    8                                       ; 05B6 _ 6A, 08
        push    dword [ebp+0CH]                         ; 05B8 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 05BB _ FF. 75, 08
        call    boxfill8                                ; 05BE _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 05C3 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 05C6 _ 8B. 45, 10
        lea     edx, [eax-14H]                          ; 05C9 _ 8D. 50, EC
        mov     eax, dword [ebp+10H]                    ; 05CC _ 8B. 45, 10
        sub     eax, 20                                 ; 05CF _ 83. E8, 14
        sub     esp, 4                                  ; 05D2 _ 83. EC, 04
        push    edx                                     ; 05D5 _ 52
        push    51                                      ; 05D6 _ 6A, 33
        push    eax                                     ; 05D8 _ 50
        push    10                                      ; 05D9 _ 6A, 0A
        push    7                                       ; 05DB _ 6A, 07
        push    dword [ebp+0CH]                         ; 05DD _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 05E0 _ FF. 75, 08
        call    boxfill8                                ; 05E3 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 05E8 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 05EB _ 8B. 45, 10
        lea     edx, [eax-4H]                           ; 05EE _ 8D. 50, FC
        mov     eax, dword [ebp+10H]                    ; 05F1 _ 8B. 45, 10
        sub     eax, 20                                 ; 05F4 _ 83. E8, 14
        sub     esp, 4                                  ; 05F7 _ 83. EC, 04
        push    edx                                     ; 05FA _ 52
        push    9                                       ; 05FB _ 6A, 09
        push    eax                                     ; 05FD _ 50
        push    9                                       ; 05FE _ 6A, 09
        push    7                                       ; 0600 _ 6A, 07
        push    dword [ebp+0CH]                         ; 0602 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 0605 _ FF. 75, 08
        call    boxfill8                                ; 0608 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 060D _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 0610 _ 8B. 45, 10
        lea     edx, [eax-4H]                           ; 0613 _ 8D. 50, FC
        mov     eax, dword [ebp+10H]                    ; 0616 _ 8B. 45, 10
        sub     eax, 4                                  ; 0619 _ 83. E8, 04
        sub     esp, 4                                  ; 061C _ 83. EC, 04
        push    edx                                     ; 061F _ 52
        push    50                                      ; 0620 _ 6A, 32
        push    eax                                     ; 0622 _ 50
        push    10                                      ; 0623 _ 6A, 0A
        push    15                                      ; 0625 _ 6A, 0F
        push    dword [ebp+0CH]                         ; 0627 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 062A _ FF. 75, 08
        call    boxfill8                                ; 062D _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0632 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 0635 _ 8B. 45, 10
        lea     edx, [eax-5H]                           ; 0638 _ 8D. 50, FB
        mov     eax, dword [ebp+10H]                    ; 063B _ 8B. 45, 10
        sub     eax, 19                                 ; 063E _ 83. E8, 13
        sub     esp, 4                                  ; 0641 _ 83. EC, 04
        push    edx                                     ; 0644 _ 52
        push    50                                      ; 0645 _ 6A, 32
        push    eax                                     ; 0647 _ 50
        push    50                                      ; 0648 _ 6A, 32
        push    15                                      ; 064A _ 6A, 0F
        push    dword [ebp+0CH]                         ; 064C _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 064F _ FF. 75, 08
        call    boxfill8                                ; 0652 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0657 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 065A _ 8B. 45, 10
        lea     edx, [eax-3H]                           ; 065D _ 8D. 50, FD
        mov     eax, dword [ebp+10H]                    ; 0660 _ 8B. 45, 10
        sub     eax, 3                                  ; 0663 _ 83. E8, 03
        sub     esp, 4                                  ; 0666 _ 83. EC, 04
        push    edx                                     ; 0669 _ 52
        push    50                                      ; 066A _ 6A, 32
        push    eax                                     ; 066C _ 50
        push    10                                      ; 066D _ 6A, 0A
        push    0                                       ; 066F _ 6A, 00
        push    dword [ebp+0CH]                         ; 0671 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 0674 _ FF. 75, 08
        call    boxfill8                                ; 0677 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 067C _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 067F _ 8B. 45, 10
        lea     edx, [eax-3H]                           ; 0682 _ 8D. 50, FD
        mov     eax, dword [ebp+10H]                    ; 0685 _ 8B. 45, 10
        sub     eax, 20                                 ; 0688 _ 83. E8, 14
        sub     esp, 4                                  ; 068B _ 83. EC, 04
        push    edx                                     ; 068E _ 52
        push    51                                      ; 068F _ 6A, 33
        push    eax                                     ; 0691 _ 50
        push    51                                      ; 0692 _ 6A, 33
        push    0                                       ; 0694 _ 6A, 00
        push    dword [ebp+0CH]                         ; 0696 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 0699 _ FF. 75, 08
        call    boxfill8                                ; 069C _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 06A1 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 06A4 _ 8B. 45, 10
        lea     ebx, [eax-14H]                          ; 06A7 _ 8D. 58, EC
        mov     eax, dword [ebp+0CH]                    ; 06AA _ 8B. 45, 0C
        lea     ecx, [eax-4H]                           ; 06AD _ 8D. 48, FC
        mov     eax, dword [ebp+10H]                    ; 06B0 _ 8B. 45, 10
        lea     edx, [eax-14H]                          ; 06B3 _ 8D. 50, EC
        mov     eax, dword [ebp+0CH]                    ; 06B6 _ 8B. 45, 0C
        sub     eax, 47                                 ; 06B9 _ 83. E8, 2F
        sub     esp, 4                                  ; 06BC _ 83. EC, 04
        push    ebx                                     ; 06BF _ 53
        push    ecx                                     ; 06C0 _ 51
        push    edx                                     ; 06C1 _ 52
        push    eax                                     ; 06C2 _ 50
        push    15                                      ; 06C3 _ 6A, 0F
        push    dword [ebp+0CH]                         ; 06C5 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 06C8 _ FF. 75, 08
        call    boxfill8                                ; 06CB _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 06D0 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 06D3 _ 8B. 45, 10
        lea     ebx, [eax-3H]                           ; 06D6 _ 8D. 58, FD
        mov     eax, dword [ebp+0CH]                    ; 06D9 _ 8B. 45, 0C
        lea     ecx, [eax-2FH]                          ; 06DC _ 8D. 48, D1
        mov     eax, dword [ebp+10H]                    ; 06DF _ 8B. 45, 10
        lea     edx, [eax-14H]                          ; 06E2 _ 8D. 50, EC
        mov     eax, dword [ebp+0CH]                    ; 06E5 _ 8B. 45, 0C
        sub     eax, 47                                 ; 06E8 _ 83. E8, 2F
        sub     esp, 4                                  ; 06EB _ 83. EC, 04
        push    ebx                                     ; 06EE _ 53
        push    ecx                                     ; 06EF _ 51
        push    edx                                     ; 06F0 _ 52
        push    eax                                     ; 06F1 _ 50
        push    15                                      ; 06F2 _ 6A, 0F
        push    dword [ebp+0CH]                         ; 06F4 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 06F7 _ FF. 75, 08
        call    boxfill8                                ; 06FA _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 06FF _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 0702 _ 8B. 45, 10
        lea     ebx, [eax-3H]                           ; 0705 _ 8D. 58, FD
        mov     eax, dword [ebp+0CH]                    ; 0708 _ 8B. 45, 0C
        lea     ecx, [eax-4H]                           ; 070B _ 8D. 48, FC
        mov     eax, dword [ebp+10H]                    ; 070E _ 8B. 45, 10
        lea     edx, [eax-3H]                           ; 0711 _ 8D. 50, FD
        mov     eax, dword [ebp+0CH]                    ; 0714 _ 8B. 45, 0C
        sub     eax, 47                                 ; 0717 _ 83. E8, 2F
        sub     esp, 4                                  ; 071A _ 83. EC, 04
        push    ebx                                     ; 071D _ 53
        push    ecx                                     ; 071E _ 51
        push    edx                                     ; 071F _ 52
        push    eax                                     ; 0720 _ 50
        push    7                                       ; 0721 _ 6A, 07
        push    dword [ebp+0CH]                         ; 0723 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 0726 _ FF. 75, 08
        call    boxfill8                                ; 0729 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 072E _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 0731 _ 8B. 45, 10
        lea     ebx, [eax-3H]                           ; 0734 _ 8D. 58, FD
        mov     eax, dword [ebp+0CH]                    ; 0737 _ 8B. 45, 0C
        lea     ecx, [eax-3H]                           ; 073A _ 8D. 48, FD
        mov     eax, dword [ebp+10H]                    ; 073D _ 8B. 45, 10
        lea     edx, [eax-14H]                          ; 0740 _ 8D. 50, EC
        mov     eax, dword [ebp+0CH]                    ; 0743 _ 8B. 45, 0C
        sub     eax, 3                                  ; 0746 _ 83. E8, 03
        sub     esp, 4                                  ; 0749 _ 83. EC, 04
        push    ebx                                     ; 074C _ 53
        push    ecx                                     ; 074D _ 51
        push    edx                                     ; 074E _ 52
        push    eax                                     ; 074F _ 50
        push    7                                       ; 0750 _ 6A, 07
        push    dword [ebp+0CH]                         ; 0752 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 0755 _ FF. 75, 08
        call    boxfill8                                ; 0758 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 075D _ 83. C4, 20
        nop                                             ; 0760 _ 90
        mov     ebx, dword [ebp-4H]                     ; 0761 _ 8B. 5D, FC
        leave                                           ; 0764 _ C9
        ret                                             ; 0765 _ C3
; init_screen8 End of function

init_palette:; Function begin
        push    ebp                                     ; 0766 _ 55
        mov     ebp, esp                                ; 0767 _ 89. E5
        sub     esp, 24                                 ; 0769 _ 83. EC, 18
        mov     eax, dword [bootInfo]                   ; 076C _ A1, 00000000(d)
        mov     dword [ebp-14H], eax                    ; 0771 _ 89. 45, EC
        movzx   eax, word [?_149]                       ; 0774 _ 0F B7. 05, 00000004(d)
        cwde                                            ; 077B _ 98
        mov     dword [ebp-10H], eax                    ; 077C _ 89. 45, F0
        movzx   eax, word [?_150]                       ; 077F _ 0F B7. 05, 00000006(d)
        cwde                                            ; 0786 _ 98
        mov     dword [ebp-0CH], eax                    ; 0787 _ 89. 45, F4
        sub     esp, 4                                  ; 078A _ 83. EC, 04
        push    table_rgb.1714                          ; 078D _ 68, 00000020(d)
        push    15                                      ; 0792 _ 6A, 0F
        push    0                                       ; 0794 _ 6A, 00
        call    set_palette                             ; 0796 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 079B _ 83. C4, 10
        nop                                             ; 079E _ 90
        leave                                           ; 079F _ C9
        ret                                             ; 07A0 _ C3
; init_palette End of function

set_palette:; Function begin
        push    ebp                                     ; 07A1 _ 55
        mov     ebp, esp                                ; 07A2 _ 89. E5
        sub     esp, 24                                 ; 07A4 _ 83. EC, 18
        call    io_load_eflags                          ; 07A7 _ E8, FFFFFFFC(rel)
        mov     dword [ebp-0CH], eax                    ; 07AC _ 89. 45, F4
        call    io_cli                                  ; 07AF _ E8, FFFFFFFC(rel)
        sub     esp, 8                                  ; 07B4 _ 83. EC, 08
        push    dword [ebp+8H]                          ; 07B7 _ FF. 75, 08
        push    968                                     ; 07BA _ 68, 000003C8
        call    io_out8                                 ; 07BF _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 07C4 _ 83. C4, 10
        mov     eax, dword [ebp+8H]                     ; 07C7 _ 8B. 45, 08
        mov     dword [ebp-10H], eax                    ; 07CA _ 89. 45, F0
        jmp     ?_008                                   ; 07CD _ EB, 65

?_007:  mov     eax, dword [ebp+10H]                    ; 07CF _ 8B. 45, 10
        movzx   eax, byte [eax]                         ; 07D2 _ 0F B6. 00
        shr     al, 2                                   ; 07D5 _ C0. E8, 02
        movzx   eax, al                                 ; 07D8 _ 0F B6. C0
        sub     esp, 8                                  ; 07DB _ 83. EC, 08
        push    eax                                     ; 07DE _ 50
        push    969                                     ; 07DF _ 68, 000003C9
        call    io_out8                                 ; 07E4 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 07E9 _ 83. C4, 10
        mov     eax, dword [ebp+10H]                    ; 07EC _ 8B. 45, 10
        add     eax, 1                                  ; 07EF _ 83. C0, 01
        movzx   eax, byte [eax]                         ; 07F2 _ 0F B6. 00
        shr     al, 2                                   ; 07F5 _ C0. E8, 02
        movzx   eax, al                                 ; 07F8 _ 0F B6. C0
        sub     esp, 8                                  ; 07FB _ 83. EC, 08
        push    eax                                     ; 07FE _ 50
        push    969                                     ; 07FF _ 68, 000003C9
        call    io_out8                                 ; 0804 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0809 _ 83. C4, 10
        mov     eax, dword [ebp+10H]                    ; 080C _ 8B. 45, 10
        add     eax, 2                                  ; 080F _ 83. C0, 02
        movzx   eax, byte [eax]                         ; 0812 _ 0F B6. 00
        shr     al, 2                                   ; 0815 _ C0. E8, 02
        movzx   eax, al                                 ; 0818 _ 0F B6. C0
        sub     esp, 8                                  ; 081B _ 83. EC, 08
        push    eax                                     ; 081E _ 50
        push    969                                     ; 081F _ 68, 000003C9
        call    io_out8                                 ; 0824 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0829 _ 83. C4, 10
        add     dword [ebp+10H], 3                      ; 082C _ 83. 45, 10, 03
        add     dword [ebp-10H], 1                      ; 0830 _ 83. 45, F0, 01
?_008:  mov     eax, dword [ebp-10H]                    ; 0834 _ 8B. 45, F0
        cmp     eax, dword [ebp+0CH]                    ; 0837 _ 3B. 45, 0C
        jle     ?_007                                   ; 083A _ 7E, 93
        sub     esp, 12                                 ; 083C _ 83. EC, 0C
        push    dword [ebp-0CH]                         ; 083F _ FF. 75, F4
        call    io_store_eflags                         ; 0842 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0847 _ 83. C4, 10
        nop                                             ; 084A _ 90
        leave                                           ; 084B _ C9
        ret                                             ; 084C _ C3
; set_palette End of function

boxfill8:; Function begin
        push    ebp                                     ; 084D _ 55
        mov     ebp, esp                                ; 084E _ 89. E5
        sub     esp, 20                                 ; 0850 _ 83. EC, 14
        mov     eax, dword [ebp+10H]                    ; 0853 _ 8B. 45, 10
        mov     byte [ebp-14H], al                      ; 0856 _ 88. 45, EC
        mov     eax, dword [ebp+18H]                    ; 0859 _ 8B. 45, 18
        mov     dword [ebp-4H], eax                     ; 085C _ 89. 45, FC
        jmp     ?_012                                   ; 085F _ EB, 33

?_009:  mov     eax, dword [ebp+14H]                    ; 0861 _ 8B. 45, 14
        mov     dword [ebp-8H], eax                     ; 0864 _ 89. 45, F8
        jmp     ?_011                                   ; 0867 _ EB, 1F

?_010:  mov     eax, dword [ebp-4H]                     ; 0869 _ 8B. 45, FC
        imul    eax, dword [ebp+0CH]                    ; 086C _ 0F AF. 45, 0C
        mov     edx, eax                                ; 0870 _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 0872 _ 8B. 45, F8
        add     eax, edx                                ; 0875 _ 01. D0
        mov     edx, eax                                ; 0877 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 0879 _ 8B. 45, 08
        add     edx, eax                                ; 087C _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 087E _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0882 _ 88. 02
        add     dword [ebp-8H], 1                       ; 0884 _ 83. 45, F8, 01
?_011:  mov     eax, dword [ebp-8H]                     ; 0888 _ 8B. 45, F8
        cmp     eax, dword [ebp+1CH]                    ; 088B _ 3B. 45, 1C
        jle     ?_010                                   ; 088E _ 7E, D9
        add     dword [ebp-4H], 1                       ; 0890 _ 83. 45, FC, 01
?_012:  mov     eax, dword [ebp-4H]                     ; 0894 _ 8B. 45, FC
        cmp     eax, dword [ebp+20H]                    ; 0897 _ 3B. 45, 20
        jle     ?_009                                   ; 089A _ 7E, C5
        nop                                             ; 089C _ 90
        leave                                           ; 089D _ C9
        ret                                             ; 089E _ C3
; boxfill8 End of function

showFont8:; Function begin
        push    ebp                                     ; 089F _ 55
        mov     ebp, esp                                ; 08A0 _ 89. E5
        sub     esp, 20                                 ; 08A2 _ 83. EC, 14
        mov     eax, dword [ebp+18H]                    ; 08A5 _ 8B. 45, 18
        mov     byte [ebp-14H], al                      ; 08A8 _ 88. 45, EC
        mov     dword [ebp-4H], 0                       ; 08AB _ C7. 45, FC, 00000000
        jmp     ?_022                                   ; 08B2 _ E9, 0000016C

?_013:  mov     edx, dword [ebp-4H]                     ; 08B7 _ 8B. 55, FC
        mov     eax, dword [ebp+1CH]                    ; 08BA _ 8B. 45, 1C
        add     eax, edx                                ; 08BD _ 01. D0
        movzx   eax, byte [eax]                         ; 08BF _ 0F B6. 00
        mov     byte [ebp-5H], al                       ; 08C2 _ 88. 45, FB
        cmp     byte [ebp-5H], 0                        ; 08C5 _ 80. 7D, FB, 00
        jns     ?_014                                   ; 08C9 _ 79, 20
        mov     edx, dword [ebp+14H]                    ; 08CB _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 08CE _ 8B. 45, FC
        add     eax, edx                                ; 08D1 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 08D3 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 08D7 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 08D9 _ 8B. 45, 10
        add     eax, edx                                ; 08DC _ 01. D0
        mov     edx, eax                                ; 08DE _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 08E0 _ 8B. 45, 08
        add     edx, eax                                ; 08E3 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 08E5 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 08E9 _ 88. 02
?_014:  movsx   eax, byte [ebp-5H]                      ; 08EB _ 0F BE. 45, FB
        and     eax, 40H                                ; 08EF _ 83. E0, 40
        test    eax, eax                                ; 08F2 _ 85. C0
        jz      ?_015                                   ; 08F4 _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 08F6 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 08F9 _ 8B. 45, FC
        add     eax, edx                                ; 08FC _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 08FE _ 0F AF. 45, 0C
        mov     edx, eax                                ; 0902 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 0904 _ 8B. 45, 10
        add     eax, edx                                ; 0907 _ 01. D0
        lea     edx, [eax+1H]                           ; 0909 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 090C _ 8B. 45, 08
        add     edx, eax                                ; 090F _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0911 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0915 _ 88. 02
?_015:  movsx   eax, byte [ebp-5H]                      ; 0917 _ 0F BE. 45, FB
        and     eax, 20H                                ; 091B _ 83. E0, 20
        test    eax, eax                                ; 091E _ 85. C0
        jz      ?_016                                   ; 0920 _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 0922 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 0925 _ 8B. 45, FC
        add     eax, edx                                ; 0928 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 092A _ 0F AF. 45, 0C
        mov     edx, eax                                ; 092E _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 0930 _ 8B. 45, 10
        add     eax, edx                                ; 0933 _ 01. D0
        lea     edx, [eax+2H]                           ; 0935 _ 8D. 50, 02
        mov     eax, dword [ebp+8H]                     ; 0938 _ 8B. 45, 08
        add     edx, eax                                ; 093B _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 093D _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0941 _ 88. 02
?_016:  movsx   eax, byte [ebp-5H]                      ; 0943 _ 0F BE. 45, FB
        and     eax, 10H                                ; 0947 _ 83. E0, 10
        test    eax, eax                                ; 094A _ 85. C0
        jz      ?_017                                   ; 094C _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 094E _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 0951 _ 8B. 45, FC
        add     eax, edx                                ; 0954 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 0956 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 095A _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 095C _ 8B. 45, 10
        add     eax, edx                                ; 095F _ 01. D0
        lea     edx, [eax+3H]                           ; 0961 _ 8D. 50, 03
        mov     eax, dword [ebp+8H]                     ; 0964 _ 8B. 45, 08
        add     edx, eax                                ; 0967 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0969 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 096D _ 88. 02
?_017:  movsx   eax, byte [ebp-5H]                      ; 096F _ 0F BE. 45, FB
        and     eax, 08H                                ; 0973 _ 83. E0, 08
        test    eax, eax                                ; 0976 _ 85. C0
        jz      ?_018                                   ; 0978 _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 097A _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 097D _ 8B. 45, FC
        add     eax, edx                                ; 0980 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 0982 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 0986 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 0988 _ 8B. 45, 10
        add     eax, edx                                ; 098B _ 01. D0
        lea     edx, [eax+4H]                           ; 098D _ 8D. 50, 04
        mov     eax, dword [ebp+8H]                     ; 0990 _ 8B. 45, 08
        add     edx, eax                                ; 0993 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0995 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0999 _ 88. 02
?_018:  movsx   eax, byte [ebp-5H]                      ; 099B _ 0F BE. 45, FB
        and     eax, 04H                                ; 099F _ 83. E0, 04
        test    eax, eax                                ; 09A2 _ 85. C0
        jz      ?_019                                   ; 09A4 _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 09A6 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 09A9 _ 8B. 45, FC
        add     eax, edx                                ; 09AC _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 09AE _ 0F AF. 45, 0C
        mov     edx, eax                                ; 09B2 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 09B4 _ 8B. 45, 10
        add     eax, edx                                ; 09B7 _ 01. D0
        lea     edx, [eax+5H]                           ; 09B9 _ 8D. 50, 05
        mov     eax, dword [ebp+8H]                     ; 09BC _ 8B. 45, 08
        add     edx, eax                                ; 09BF _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 09C1 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 09C5 _ 88. 02
?_019:  movsx   eax, byte [ebp-5H]                      ; 09C7 _ 0F BE. 45, FB
        and     eax, 02H                                ; 09CB _ 83. E0, 02
        test    eax, eax                                ; 09CE _ 85. C0
        jz      ?_020                                   ; 09D0 _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 09D2 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 09D5 _ 8B. 45, FC
        add     eax, edx                                ; 09D8 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 09DA _ 0F AF. 45, 0C
        mov     edx, eax                                ; 09DE _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 09E0 _ 8B. 45, 10
        add     eax, edx                                ; 09E3 _ 01. D0
        lea     edx, [eax+6H]                           ; 09E5 _ 8D. 50, 06
        mov     eax, dword [ebp+8H]                     ; 09E8 _ 8B. 45, 08
        add     edx, eax                                ; 09EB _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 09ED _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 09F1 _ 88. 02
?_020:  movsx   eax, byte [ebp-5H]                      ; 09F3 _ 0F BE. 45, FB
        and     eax, 01H                                ; 09F7 _ 83. E0, 01
        test    eax, eax                                ; 09FA _ 85. C0
        jz      ?_021                                   ; 09FC _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 09FE _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 0A01 _ 8B. 45, FC
        add     eax, edx                                ; 0A04 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 0A06 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 0A0A _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 0A0C _ 8B. 45, 10
        add     eax, edx                                ; 0A0F _ 01. D0
        lea     edx, [eax+7H]                           ; 0A11 _ 8D. 50, 07
        mov     eax, dword [ebp+8H]                     ; 0A14 _ 8B. 45, 08
        add     edx, eax                                ; 0A17 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0A19 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0A1D _ 88. 02
?_021:  add     dword [ebp-4H], 1                       ; 0A1F _ 83. 45, FC, 01
?_022:  cmp     dword [ebp-4H], 15                      ; 0A23 _ 83. 7D, FC, 0F
        jle     ?_013                                   ; 0A27 _ 0F 8E, FFFFFE8A
        nop                                             ; 0A2D _ 90
        leave                                           ; 0A2E _ C9
        ret                                             ; 0A2F _ C3
; showFont8 End of function

init_mouse_cursor:; Function begin
        push    ebp                                     ; 0A30 _ 55
        mov     ebp, esp                                ; 0A31 _ 89. E5
        sub     esp, 20                                 ; 0A33 _ 83. EC, 14
        mov     eax, dword [ebp+0CH]                    ; 0A36 _ 8B. 45, 0C
        mov     byte [ebp-14H], al                      ; 0A39 _ 88. 45, EC
        mov     dword [ebp-4H], 0                       ; 0A3C _ C7. 45, FC, 00000000
        jmp     ?_029                                   ; 0A43 _ E9, 000000B1

?_023:  mov     dword [ebp-8H], 0                       ; 0A48 _ C7. 45, F8, 00000000
        jmp     ?_028                                   ; 0A4F _ E9, 00000097

?_024:  mov     eax, dword [ebp-4H]                     ; 0A54 _ 8B. 45, FC
        shl     eax, 4                                  ; 0A57 _ C1. E0, 04
        mov     edx, eax                                ; 0A5A _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 0A5C _ 8B. 45, F8
        add     eax, edx                                ; 0A5F _ 01. D0
        add     eax, cursor.1759                        ; 0A61 _ 05, 00000060(d)
        movzx   eax, byte [eax]                         ; 0A66 _ 0F B6. 00
        cmp     al, 42                                  ; 0A69 _ 3C, 2A
        jnz     ?_025                                   ; 0A6B _ 75, 17
        mov     eax, dword [ebp-4H]                     ; 0A6D _ 8B. 45, FC
        shl     eax, 4                                  ; 0A70 _ C1. E0, 04
        mov     edx, eax                                ; 0A73 _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 0A75 _ 8B. 45, F8
        add     eax, edx                                ; 0A78 _ 01. D0
        mov     edx, eax                                ; 0A7A _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 0A7C _ 8B. 45, 08
        add     eax, edx                                ; 0A7F _ 01. D0
        mov     byte [eax], 0                           ; 0A81 _ C6. 00, 00
?_025:  mov     eax, dword [ebp-4H]                     ; 0A84 _ 8B. 45, FC
        shl     eax, 4                                  ; 0A87 _ C1. E0, 04
        mov     edx, eax                                ; 0A8A _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 0A8C _ 8B. 45, F8
        add     eax, edx                                ; 0A8F _ 01. D0
        add     eax, cursor.1759                        ; 0A91 _ 05, 00000060(d)
        movzx   eax, byte [eax]                         ; 0A96 _ 0F B6. 00
        cmp     al, 79                                  ; 0A99 _ 3C, 4F
        jnz     ?_026                                   ; 0A9B _ 75, 17
        mov     eax, dword [ebp-4H]                     ; 0A9D _ 8B. 45, FC
        shl     eax, 4                                  ; 0AA0 _ C1. E0, 04
        mov     edx, eax                                ; 0AA3 _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 0AA5 _ 8B. 45, F8
        add     eax, edx                                ; 0AA8 _ 01. D0
        mov     edx, eax                                ; 0AAA _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 0AAC _ 8B. 45, 08
        add     eax, edx                                ; 0AAF _ 01. D0
        mov     byte [eax], 7                           ; 0AB1 _ C6. 00, 07
?_026:  mov     eax, dword [ebp-4H]                     ; 0AB4 _ 8B. 45, FC
        shl     eax, 4                                  ; 0AB7 _ C1. E0, 04
        mov     edx, eax                                ; 0ABA _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 0ABC _ 8B. 45, F8
        add     eax, edx                                ; 0ABF _ 01. D0
        add     eax, cursor.1759                        ; 0AC1 _ 05, 00000060(d)
        movzx   eax, byte [eax]                         ; 0AC6 _ 0F B6. 00
        cmp     al, 46                                  ; 0AC9 _ 3C, 2E
        jnz     ?_027                                   ; 0ACB _ 75, 1A
        mov     eax, dword [ebp-4H]                     ; 0ACD _ 8B. 45, FC
        shl     eax, 4                                  ; 0AD0 _ C1. E0, 04
        mov     edx, eax                                ; 0AD3 _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 0AD5 _ 8B. 45, F8
        add     eax, edx                                ; 0AD8 _ 01. D0
        mov     edx, eax                                ; 0ADA _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 0ADC _ 8B. 45, 08
        add     edx, eax                                ; 0ADF _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0AE1 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0AE5 _ 88. 02
?_027:  add     dword [ebp-8H], 1                       ; 0AE7 _ 83. 45, F8, 01
?_028:  cmp     dword [ebp-8H], 15                      ; 0AEB _ 83. 7D, F8, 0F
        jle     ?_024                                   ; 0AEF _ 0F 8E, FFFFFF5F
        add     dword [ebp-4H], 1                       ; 0AF5 _ 83. 45, FC, 01
?_029:  cmp     dword [ebp-4H], 15                      ; 0AF9 _ 83. 7D, FC, 0F
        jle     ?_023                                   ; 0AFD _ 0F 8E, FFFFFF45
        nop                                             ; 0B03 _ 90
        leave                                           ; 0B04 _ C9
        ret                                             ; 0B05 _ C3
; init_mouse_cursor End of function

putblock:; Function begin
        push    ebp                                     ; 0B06 _ 55
        mov     ebp, esp                                ; 0B07 _ 89. E5
        push    ebx                                     ; 0B09 _ 53
        sub     esp, 16                                 ; 0B0A _ 83. EC, 10
        mov     dword [ebp-8H], 0                       ; 0B0D _ C7. 45, F8, 00000000
        jmp     ?_033                                   ; 0B14 _ EB, 50

?_030:  mov     dword [ebp-0CH], 0                      ; 0B16 _ C7. 45, F4, 00000000
        jmp     ?_032                                   ; 0B1D _ EB, 3B

?_031:  mov     eax, dword [ebp-8H]                     ; 0B1F _ 8B. 45, F8
        imul    eax, dword [ebp+24H]                    ; 0B22 _ 0F AF. 45, 24
        mov     edx, eax                                ; 0B26 _ 89. C2
        mov     eax, dword [ebp-0CH]                    ; 0B28 _ 8B. 45, F4
        add     eax, edx                                ; 0B2B _ 01. D0
        mov     edx, eax                                ; 0B2D _ 89. C2
        mov     eax, dword [ebp+20H]                    ; 0B2F _ 8B. 45, 20
        add     eax, edx                                ; 0B32 _ 01. D0
        mov     ecx, dword [ebp+1CH]                    ; 0B34 _ 8B. 4D, 1C
        mov     edx, dword [ebp-8H]                     ; 0B37 _ 8B. 55, F8
        add     edx, ecx                                ; 0B3A _ 01. CA
        imul    edx, dword [ebp+0CH]                    ; 0B3C _ 0F AF. 55, 0C
        mov     ebx, dword [ebp+18H]                    ; 0B40 _ 8B. 5D, 18
        mov     ecx, dword [ebp-0CH]                    ; 0B43 _ 8B. 4D, F4
        add     ecx, ebx                                ; 0B46 _ 01. D9
        add     edx, ecx                                ; 0B48 _ 01. CA
        mov     ecx, edx                                ; 0B4A _ 89. D1
        mov     edx, dword [ebp+8H]                     ; 0B4C _ 8B. 55, 08
        add     edx, ecx                                ; 0B4F _ 01. CA
        movzx   eax, byte [eax]                         ; 0B51 _ 0F B6. 00
        mov     byte [edx], al                          ; 0B54 _ 88. 02
        add     dword [ebp-0CH], 1                      ; 0B56 _ 83. 45, F4, 01
?_032:  mov     eax, dword [ebp-0CH]                    ; 0B5A _ 8B. 45, F4
        cmp     eax, dword [ebp+10H]                    ; 0B5D _ 3B. 45, 10
        jl      ?_031                                   ; 0B60 _ 7C, BD
        add     dword [ebp-8H], 1                       ; 0B62 _ 83. 45, F8, 01
?_033:  mov     eax, dword [ebp-8H]                     ; 0B66 _ 8B. 45, F8
        cmp     eax, dword [ebp+14H]                    ; 0B69 _ 3B. 45, 14
        jl      ?_030                                   ; 0B6C _ 7C, A8
        nop                                             ; 0B6E _ 90
        add     esp, 16                                 ; 0B6F _ 83. C4, 10
        pop     ebx                                     ; 0B72 _ 5B
        pop     ebp                                     ; 0B73 _ 5D
        ret                                             ; 0B74 _ C3
; putblock End of function

intHandlerFromC:; Function begin
        push    ebp                                     ; 0B75 _ 55
        mov     ebp, esp                                ; 0B76 _ 89. E5
        sub     esp, 24                                 ; 0B78 _ 83. EC, 18
        mov     eax, dword [bootInfo]                   ; 0B7B _ A1, 00000000(d)
        mov     dword [ebp-14H], eax                    ; 0B80 _ 89. 45, EC
        movzx   eax, word [?_149]                       ; 0B83 _ 0F B7. 05, 00000004(d)
        cwde                                            ; 0B8A _ 98
        mov     dword [ebp-10H], eax                    ; 0B8B _ 89. 45, F0
        movzx   eax, word [?_150]                       ; 0B8E _ 0F B7. 05, 00000006(d)
        cwde                                            ; 0B95 _ 98
        mov     dword [ebp-0CH], eax                    ; 0B96 _ 89. 45, F4
        sub     esp, 8                                  ; 0B99 _ 83. EC, 08
        push    32                                      ; 0B9C _ 6A, 20
        push    32                                      ; 0B9E _ 6A, 20
        call    io_out8                                 ; 0BA0 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0BA5 _ 83. C4, 10
        mov     byte [ebp-15H], 0                       ; 0BA8 _ C6. 45, EB, 00
        sub     esp, 12                                 ; 0BAC _ 83. EC, 0C
        push    96                                      ; 0BAF _ 6A, 60
        call    io_in8                                  ; 0BB1 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0BB6 _ 83. C4, 10
        mov     byte [ebp-15H], al                      ; 0BB9 _ 88. 45, EB
        movzx   eax, byte [ebp-15H]                     ; 0BBC _ 0F B6. 45, EB
        sub     esp, 8                                  ; 0BC0 _ 83. EC, 08
        push    eax                                     ; 0BC3 _ 50
        push    keyInfo                                 ; 0BC4 _ 68, 00000008(d)
        call    fifo8_put                               ; 0BC9 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0BCE _ 83. C4, 10
        nop                                             ; 0BD1 _ 90
        leave                                           ; 0BD2 _ C9
        ret                                             ; 0BD3 _ C3
; intHandlerFromC End of function

charToHex:; Function begin
        push    ebp                                     ; 0BD4 _ 55
        mov     ebp, esp                                ; 0BD5 _ 89. E5
        sub     esp, 40                                 ; 0BD7 _ 83. EC, 28
        mov     eax, dword [ebp+8H]                     ; 0BDA _ 8B. 45, 08
        mov     byte [ebp-1CH], al                      ; 0BDD _ 88. 45, E4
        movzx   eax, byte [ebp-1CH]                     ; 0BE0 _ 0F B6. 45, E4
        and     eax, 0FH                                ; 0BE4 _ 83. E0, 0F
        mov     byte [ebp-9H], al                       ; 0BE7 _ 88. 45, F7
        movsx   eax, byte [ebp-9H]                      ; 0BEA _ 0F BE. 45, F7
        sub     esp, 12                                 ; 0BEE _ 83. EC, 0C
        push    eax                                     ; 0BF1 _ 50
        call    charToVal                               ; 0BF2 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0BF7 _ 83. C4, 10
        mov     byte [?_148], al                        ; 0BFA _ A2, 00000003(d)
        movzx   eax, byte [ebp-1CH]                     ; 0BFF _ 0F B6. 45, E4
        shr     al, 4                                   ; 0C03 _ C0. E8, 04
        mov     byte [ebp-1CH], al                      ; 0C06 _ 88. 45, E4
        movzx   eax, byte [ebp-1CH]                     ; 0C09 _ 0F B6. 45, E4
        movsx   eax, al                                 ; 0C0D _ 0F BE. C0
        sub     esp, 12                                 ; 0C10 _ 83. EC, 0C
        push    eax                                     ; 0C13 _ 50
        call    charToVal                               ; 0C14 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0C19 _ 83. C4, 10
        mov     byte [?_147], al                        ; 0C1C _ A2, 00000002(d)
        mov     eax, keyVal                             ; 0C21 _ B8, 00000000(d)
        leave                                           ; 0C26 _ C9
        ret                                             ; 0C27 _ C3
; charToHex End of function

charToVal:; Function begin
        push    ebp                                     ; 0C28 _ 55
        mov     ebp, esp                                ; 0C29 _ 89. E5
        sub     esp, 4                                  ; 0C2B _ 83. EC, 04
        mov     eax, dword [ebp+8H]                     ; 0C2E _ 8B. 45, 08
        mov     byte [ebp-4H], al                       ; 0C31 _ 88. 45, FC
        cmp     byte [ebp-4H], 9                        ; 0C34 _ 80. 7D, FC, 09
        jle     ?_034                                   ; 0C38 _ 7E, 09
        movzx   eax, byte [ebp-4H]                      ; 0C3A _ 0F B6. 45, FC
        add     eax, 55                                 ; 0C3E _ 83. C0, 37
        jmp     ?_035                                   ; 0C41 _ EB, 07

?_034:  movzx   eax, byte [ebp-4H]                      ; 0C43 _ 0F B6. 45, FC
        add     eax, 48                                 ; 0C47 _ 83. C0, 30
?_035:  leave                                           ; 0C4A _ C9
        ret                                             ; 0C4B _ C3
; charToVal End of function

intToHexStr:; Function begin
        push    ebp                                     ; 0C4C _ 55
        mov     ebp, esp                                ; 0C4D _ 89. E5
        sub     esp, 16                                 ; 0C4F _ 83. EC, 10
        mov     byte [str.1802], 48                     ; 0C52 _ C6. 05, 00000220(d), 30
        mov     byte [?_151], 120                       ; 0C59 _ C6. 05, 00000221(d), 78
        mov     byte [?_152], 0                         ; 0C60 _ C6. 05, 0000022A(d), 00
        mov     dword [ebp-0CH], 2                      ; 0C67 _ C7. 45, F4, 00000002
        jmp     ?_037                                   ; 0C6E _ EB, 0F

?_036:  mov     eax, dword [ebp-0CH]                    ; 0C70 _ 8B. 45, F4
        add     eax, str.1802                           ; 0C73 _ 05, 00000220(d)
        mov     byte [eax], 48                          ; 0C78 _ C6. 00, 30
        add     dword [ebp-0CH], 1                      ; 0C7B _ 83. 45, F4, 01
?_037:  cmp     dword [ebp-0CH], 9                      ; 0C7F _ 83. 7D, F4, 09
        jle     ?_036                                   ; 0C83 _ 7E, EB
        mov     dword [ebp-8H], 9                       ; 0C85 _ C7. 45, F8, 00000009
        jmp     ?_040                                   ; 0C8C _ EB, 48

?_038:  mov     eax, dword [ebp+8H]                     ; 0C8E _ 8B. 45, 08
        and     eax, 0FH                                ; 0C91 _ 83. E0, 0F
        mov     dword [ebp-4H], eax                     ; 0C94 _ 89. 45, FC
        mov     eax, dword [ebp+8H]                     ; 0C97 _ 8B. 45, 08
        shr     eax, 4                                  ; 0C9A _ C1. E8, 04
        mov     dword [ebp+8H], eax                     ; 0C9D _ 89. 45, 08
        cmp     dword [ebp-4H], 9                       ; 0CA0 _ 83. 7D, FC, 09
        jle     ?_039                                   ; 0CA4 _ 7E, 19
        mov     eax, dword [ebp-4H]                     ; 0CA6 _ 8B. 45, FC
        lea     ecx, [eax+37H]                          ; 0CA9 _ 8D. 48, 37
        mov     eax, dword [ebp-8H]                     ; 0CAC _ 8B. 45, F8
        lea     edx, [eax-1H]                           ; 0CAF _ 8D. 50, FF
        mov     dword [ebp-8H], edx                     ; 0CB2 _ 89. 55, F8
        mov     edx, ecx                                ; 0CB5 _ 89. CA
        mov     byte [str.1802+eax], dl                 ; 0CB7 _ 88. 90, 00000220(d)
        jmp     ?_040                                   ; 0CBD _ EB, 17

?_039:  mov     eax, dword [ebp-4H]                     ; 0CBF _ 8B. 45, FC
        lea     ecx, [eax+30H]                          ; 0CC2 _ 8D. 48, 30
        mov     eax, dword [ebp-8H]                     ; 0CC5 _ 8B. 45, F8
        lea     edx, [eax-1H]                           ; 0CC8 _ 8D. 50, FF
        mov     dword [ebp-8H], edx                     ; 0CCB _ 89. 55, F8
        mov     edx, ecx                                ; 0CCE _ 89. CA
        mov     byte [str.1802+eax], dl                 ; 0CD0 _ 88. 90, 00000220(d)
?_040:  cmp     dword [ebp-8H], 1                       ; 0CD6 _ 83. 7D, F8, 01
        jle     ?_041                                   ; 0CDA _ 7E, 06
        cmp     dword [ebp+8H], 0                       ; 0CDC _ 83. 7D, 08, 00
        jnz     ?_038                                   ; 0CE0 _ 75, AC
?_041:  mov     eax, str.1802                           ; 0CE2 _ B8, 00000220(d)
        leave                                           ; 0CE7 _ C9
        ret                                             ; 0CE8 _ C3
; intToHexStr End of function

wait_KBC_sendReady:; Function begin
        push    ebp                                     ; 0CE9 _ 55
        mov     ebp, esp                                ; 0CEA _ 89. E5
        sub     esp, 8                                  ; 0CEC _ 83. EC, 08
?_042:  sub     esp, 12                                 ; 0CEF _ 83. EC, 0C
        push    100                                     ; 0CF2 _ 6A, 64
        call    io_in8                                  ; 0CF4 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0CF9 _ 83. C4, 10
        movsx   eax, al                                 ; 0CFC _ 0F BE. C0
        and     eax, 02H                                ; 0CFF _ 83. E0, 02
        test    eax, eax                                ; 0D02 _ 85. C0
        jz      ?_043                                   ; 0D04 _ 74, 02
        jmp     ?_042                                   ; 0D06 _ EB, E7

?_043:  nop                                             ; 0D08 _ 90
        nop                                             ; 0D09 _ 90
        leave                                           ; 0D0A _ C9
        ret                                             ; 0D0B _ C3
; wait_KBC_sendReady End of function

init_keyboard:; Function begin
        push    ebp                                     ; 0D0C _ 55
        mov     ebp, esp                                ; 0D0D _ 89. E5
        sub     esp, 8                                  ; 0D0F _ 83. EC, 08
        call    wait_KBC_sendReady                      ; 0D12 _ E8, FFFFFFFC(rel)
        sub     esp, 8                                  ; 0D17 _ 83. EC, 08
        push    96                                      ; 0D1A _ 6A, 60
        push    100                                     ; 0D1C _ 6A, 64
        call    io_out8                                 ; 0D1E _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0D23 _ 83. C4, 10
        call    wait_KBC_sendReady                      ; 0D26 _ E8, FFFFFFFC(rel)
        sub     esp, 8                                  ; 0D2B _ 83. EC, 08
        push    71                                      ; 0D2E _ 6A, 47
        push    96                                      ; 0D30 _ 6A, 60
        call    io_out8                                 ; 0D32 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0D37 _ 83. C4, 10
        nop                                             ; 0D3A _ 90
        leave                                           ; 0D3B _ C9
        ret                                             ; 0D3C _ C3
; init_keyboard End of function

enable_mouse:; Function begin
        push    ebp                                     ; 0D3D _ 55
        mov     ebp, esp                                ; 0D3E _ 89. E5
        sub     esp, 8                                  ; 0D40 _ 83. EC, 08
        call    wait_KBC_sendReady                      ; 0D43 _ E8, FFFFFFFC(rel)
        sub     esp, 8                                  ; 0D48 _ 83. EC, 08
        push    212                                     ; 0D4B _ 68, 000000D4
        push    100                                     ; 0D50 _ 6A, 64
        call    io_out8                                 ; 0D52 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0D57 _ 83. C4, 10
        call    wait_KBC_sendReady                      ; 0D5A _ E8, FFFFFFFC(rel)
        sub     esp, 8                                  ; 0D5F _ 83. EC, 08
        push    244                                     ; 0D62 _ 68, 000000F4
        push    96                                      ; 0D67 _ 6A, 60
        call    io_out8                                 ; 0D69 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0D6E _ 83. C4, 10
        mov     eax, dword [ebp+8H]                     ; 0D71 _ 8B. 45, 08
        mov     byte [eax+3H], 0                        ; 0D74 _ C6. 40, 03, 00
        nop                                             ; 0D78 _ 90
        leave                                           ; 0D79 _ C9
        ret                                             ; 0D7A _ C3
; enable_mouse End of function

intHandlerForMouse:; Function begin
        push    ebp                                     ; 0D7B _ 55
        mov     ebp, esp                                ; 0D7C _ 89. E5
        sub     esp, 24                                 ; 0D7E _ 83. EC, 18
        mov     byte [ebp-9H], 0                        ; 0D81 _ C6. 45, F7, 00
        sub     esp, 8                                  ; 0D85 _ 83. EC, 08
        push    32                                      ; 0D88 _ 6A, 20
        push    160                                     ; 0D8A _ 68, 000000A0
        call    io_out8                                 ; 0D8F _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0D94 _ 83. C4, 10
        sub     esp, 8                                  ; 0D97 _ 83. EC, 08
        push    32                                      ; 0D9A _ 6A, 20
        push    32                                      ; 0D9C _ 6A, 20
        call    io_out8                                 ; 0D9E _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0DA3 _ 83. C4, 10
        sub     esp, 12                                 ; 0DA6 _ 83. EC, 0C
        push    96                                      ; 0DA9 _ 6A, 60
        call    io_in8                                  ; 0DAB _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0DB0 _ 83. C4, 10
        mov     byte [ebp-9H], al                       ; 0DB3 _ 88. 45, F7
        movzx   eax, byte [ebp-9H]                      ; 0DB6 _ 0F B6. 45, F7
        sub     esp, 8                                  ; 0DBA _ 83. EC, 08
        push    eax                                     ; 0DBD _ 50
        push    mouseInfo                               ; 0DBE _ 68, 00000020(d)
        call    fifo8_put                               ; 0DC3 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0DC8 _ 83. C4, 10
        nop                                             ; 0DCB _ 90
        leave                                           ; 0DCC _ C9
        ret                                             ; 0DCD _ C3
; intHandlerForMouse End of function

showKeyboardInfo:; Function begin
        push    ebp                                     ; 0DCE _ 55
        mov     ebp, esp                                ; 0DCF _ 89. E5
        sub     esp, 40                                 ; 0DD1 _ 83. EC, 28
        call    io_sti                                  ; 0DD4 _ E8, FFFFFFFC(rel)
        mov     eax, dword [bootInfo]                   ; 0DD9 _ A1, 00000000(d)
        mov     dword [ebp-18H], eax                    ; 0DDE _ 89. 45, E8
        movzx   eax, word [?_149]                       ; 0DE1 _ 0F B7. 05, 00000004(d)
        cwde                                            ; 0DE8 _ 98
        mov     dword [ebp-14H], eax                    ; 0DE9 _ 89. 45, EC
        movzx   eax, word [?_150]                       ; 0DEC _ 0F B7. 05, 00000006(d)
        cwde                                            ; 0DF3 _ 98
        mov     dword [ebp-10H], eax                    ; 0DF4 _ 89. 45, F0
        mov     byte [ebp-19H], 0                       ; 0DF7 _ C6. 45, E7, 00
        sub     esp, 12                                 ; 0DFB _ 83. EC, 0C
        push    keyInfo                                 ; 0DFE _ 68, 00000008(d)
        call    fifo8_get                               ; 0E03 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0E08 _ 83. C4, 10
        mov     byte [ebp-19H], al                      ; 0E0B _ 88. 45, E7
        movzx   eax, byte [ebp-19H]                     ; 0E0E _ 0F B6. 45, E7
        sub     esp, 12                                 ; 0E12 _ 83. EC, 0C
        push    eax                                     ; 0E15 _ 50
        call    charToHex                               ; 0E16 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0E1B _ 83. C4, 10
        mov     dword [ebp-0CH], eax                    ; 0E1E _ 89. 45, F4
        mov     edx, dword [line.1835]                  ; 0E21 _ 8B. 15, 0000022C(d)
        mov     eax, dword [pos.1834]                   ; 0E27 _ A1, 00000230(d)
        sub     esp, 8                                  ; 0E2C _ 83. EC, 08
        push    dword [ebp-0CH]                         ; 0E2F _ FF. 75, F4
        push    7                                       ; 0E32 _ 6A, 07
        push    edx                                     ; 0E34 _ 52
        push    eax                                     ; 0E35 _ 50
        push    dword [ebp+0CH]                         ; 0E36 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 0E39 _ FF. 75, 08
        call    showString                              ; 0E3C _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0E41 _ 83. C4, 20
        mov     eax, dword [pos.1834]                   ; 0E44 _ A1, 00000230(d)
        add     eax, 32                                 ; 0E49 _ 83. C0, 20
        mov     dword [pos.1834], eax                   ; 0E4C _ A3, 00000230(d)
        mov     eax, dword [pos.1834]                   ; 0E51 _ A1, 00000230(d)
        cmp     dword [ebp-14H], eax                    ; 0E56 _ 39. 45, EC
        jnz     ?_046                                   ; 0E59 _ 75, 28
        mov     eax, dword [line.1835]                  ; 0E5B _ A1, 0000022C(d)
        cmp     dword [ebp-10H], eax                    ; 0E60 _ 39. 45, F0
        jz      ?_044                                   ; 0E63 _ 74, 0A
        mov     eax, dword [line.1835]                  ; 0E65 _ A1, 0000022C(d)
        add     eax, 16                                 ; 0E6A _ 83. C0, 10
        jmp     ?_045                                   ; 0E6D _ EB, 05

?_044:  mov     eax, 0                                  ; 0E6F _ B8, 00000000
?_045:  mov     dword [line.1835], eax                  ; 0E74 _ A3, 0000022C(d)
        mov     dword [pos.1834], 0                     ; 0E79 _ C7. 05, 00000230(d), 00000000
?_046:  nop                                             ; 0E83 _ 90
        leave                                           ; 0E84 _ C9
        ret                                             ; 0E85 _ C3
; showKeyboardInfo End of function

showMouseInfo:; Function begin
        push    ebp                                     ; 0E86 _ 55
        mov     ebp, esp                                ; 0E87 _ 89. E5
        sub     esp, 24                                 ; 0E89 _ 83. EC, 18
        call    io_sti                                  ; 0E8C _ E8, FFFFFFFC(rel)
        mov     byte [ebp-9H], 0                        ; 0E91 _ C6. 45, F7, 00
        sub     esp, 12                                 ; 0E95 _ 83. EC, 0C
        push    mouseInfo                               ; 0E98 _ 68, 00000020(d)
        call    fifo8_get                               ; 0E9D _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0EA2 _ 83. C4, 10
        mov     byte [ebp-9H], al                       ; 0EA5 _ 88. 45, F7
        movzx   eax, byte [ebp-9H]                      ; 0EA8 _ 0F B6. 45, F7
        sub     esp, 8                                  ; 0EAC _ 83. EC, 08
        push    eax                                     ; 0EAF _ 50
        push    mouse_move                              ; 0EB0 _ 68, 000000E0(d)
        call    mouse_decode                            ; 0EB5 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0EBA _ 83. C4, 10
        test    eax, eax                                ; 0EBD _ 85. C0
        jz      ?_047                                   ; 0EBF _ 74, 31
        sub     esp, 4                                  ; 0EC1 _ 83. EC, 04
        push    mouse_move                              ; 0EC4 _ 68, 000000E0(d)
        push    dword [ebp+0CH]                         ; 0EC9 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 0ECC _ FF. 75, 08
        call    computeMousePos                         ; 0ECF _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0ED4 _ 83. C4, 10
        mov     edx, dword [my]                         ; 0ED7 _ 8B. 15, 000000F4(d)
        mov     eax, dword [mx]                         ; 0EDD _ A1, 000000F0(d)
        push    edx                                     ; 0EE2 _ 52
        push    eax                                     ; 0EE3 _ 50
        push    dword [ebp+10H]                         ; 0EE4 _ FF. 75, 10
        push    dword [ebp+8H]                          ; 0EE7 _ FF. 75, 08
        call    sheet_slide                             ; 0EEA _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0EEF _ 83. C4, 10
?_047:  nop                                             ; 0EF2 _ 90
        leave                                           ; 0EF3 _ C9
        ret                                             ; 0EF4 _ C3
; showMouseInfo End of function

mouse_decode:; Function begin
        push    ebp                                     ; 0EF5 _ 55
        mov     ebp, esp                                ; 0EF6 _ 89. E5
        sub     esp, 4                                  ; 0EF8 _ 83. EC, 04
        mov     eax, dword [ebp+0CH]                    ; 0EFB _ 8B. 45, 0C
        mov     byte [ebp-4H], al                       ; 0EFE _ 88. 45, FC
        mov     eax, dword [ebp+8H]                     ; 0F01 _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 0F04 _ 0F B6. 40, 03
        test    al, al                                  ; 0F08 _ 84. C0
        jnz     ?_049                                   ; 0F0A _ 75, 17
        cmp     byte [ebp-4H], -6                       ; 0F0C _ 80. 7D, FC, FA
        jnz     ?_048                                   ; 0F10 _ 75, 07
        mov     eax, dword [ebp+8H]                     ; 0F12 _ 8B. 45, 08
        mov     byte [eax+3H], 1                        ; 0F15 _ C6. 40, 03, 01
?_048:  mov     eax, 0                                  ; 0F19 _ B8, 00000000
        jmp     ?_056                                   ; 0F1E _ E9, 0000010C

?_049:  mov     eax, dword [ebp+8H]                     ; 0F23 _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 0F26 _ 0F B6. 40, 03
        cmp     al, 1                                   ; 0F2A _ 3C, 01
        jnz     ?_051                                   ; 0F2C _ 75, 25
        movzx   eax, byte [ebp-4H]                      ; 0F2E _ 0F B6. 45, FC
        or      eax, 37H                                ; 0F32 _ 83. C8, 37
        cmp     al, 63                                  ; 0F35 _ 3C, 3F
        jnz     ?_050                                   ; 0F37 _ 75, 10
        mov     eax, dword [ebp+8H]                     ; 0F39 _ 8B. 45, 08
        movzx   edx, byte [ebp-4H]                      ; 0F3C _ 0F B6. 55, FC
        mov     byte [eax], dl                          ; 0F40 _ 88. 10
        mov     eax, dword [ebp+8H]                     ; 0F42 _ 8B. 45, 08
        mov     byte [eax+3H], 2                        ; 0F45 _ C6. 40, 03, 02
?_050:  mov     eax, 0                                  ; 0F49 _ B8, 00000000
        jmp     ?_056                                   ; 0F4E _ E9, 000000DC

?_051:  mov     eax, dword [ebp+8H]                     ; 0F53 _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 0F56 _ 0F B6. 40, 03
        cmp     al, 2                                   ; 0F5A _ 3C, 02
        jnz     ?_052                                   ; 0F5C _ 75, 1B
        mov     eax, dword [ebp+8H]                     ; 0F5E _ 8B. 45, 08
        movzx   edx, byte [ebp-4H]                      ; 0F61 _ 0F B6. 55, FC
        mov     byte [eax+1H], dl                       ; 0F65 _ 88. 50, 01
        mov     eax, dword [ebp+8H]                     ; 0F68 _ 8B. 45, 08
        mov     byte [eax+3H], 3                        ; 0F6B _ C6. 40, 03, 03
        mov     eax, 0                                  ; 0F6F _ B8, 00000000
        jmp     ?_056                                   ; 0F74 _ E9, 000000B6

?_052:  mov     eax, dword [ebp+8H]                     ; 0F79 _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 0F7C _ 0F B6. 40, 03
        cmp     al, 3                                   ; 0F80 _ 3C, 03
        jne     ?_055                                   ; 0F82 _ 0F 85, 000000A2
        mov     eax, dword [ebp+8H]                     ; 0F88 _ 8B. 45, 08
        movzx   edx, byte [ebp-4H]                      ; 0F8B _ 0F B6. 55, FC
        mov     byte [eax+2H], dl                       ; 0F8F _ 88. 50, 02
        mov     eax, dword [ebp+8H]                     ; 0F92 _ 8B. 45, 08
        mov     byte [eax+3H], 1                        ; 0F95 _ C6. 40, 03, 01
        mov     eax, dword [ebp+8H]                     ; 0F99 _ 8B. 45, 08
        movzx   eax, byte [eax]                         ; 0F9C _ 0F B6. 00
        movzx   eax, al                                 ; 0F9F _ 0F B6. C0
        and     eax, 07H                                ; 0FA2 _ 83. E0, 07
        mov     edx, eax                                ; 0FA5 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 0FA7 _ 8B. 45, 08
        mov     dword [eax+0CH], edx                    ; 0FAA _ 89. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 0FAD _ 8B. 45, 08
        movzx   eax, byte [eax+1H]                      ; 0FB0 _ 0F B6. 40, 01
        movzx   edx, al                                 ; 0FB4 _ 0F B6. D0
        mov     eax, dword [ebp+8H]                     ; 0FB7 _ 8B. 45, 08
        mov     dword [eax+4H], edx                     ; 0FBA _ 89. 50, 04
        mov     eax, dword [ebp+8H]                     ; 0FBD _ 8B. 45, 08
        movzx   eax, byte [eax+2H]                      ; 0FC0 _ 0F B6. 40, 02
        movzx   edx, al                                 ; 0FC4 _ 0F B6. D0
        mov     eax, dword [ebp+8H]                     ; 0FC7 _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 0FCA _ 89. 50, 08
        mov     eax, dword [ebp+8H]                     ; 0FCD _ 8B. 45, 08
        movzx   eax, byte [eax]                         ; 0FD0 _ 0F B6. 00
        movzx   eax, al                                 ; 0FD3 _ 0F B6. C0
        and     eax, 10H                                ; 0FD6 _ 83. E0, 10
        test    eax, eax                                ; 0FD9 _ 85. C0
        jz      ?_053                                   ; 0FDB _ 74, 13
        mov     eax, dword [ebp+8H]                     ; 0FDD _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 0FE0 _ 8B. 40, 04
        or      eax, 0FFFFFF00H                         ; 0FE3 _ 0D, FFFFFF00
        mov     edx, eax                                ; 0FE8 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 0FEA _ 8B. 45, 08
        mov     dword [eax+4H], edx                     ; 0FED _ 89. 50, 04
?_053:  mov     eax, dword [ebp+8H]                     ; 0FF0 _ 8B. 45, 08
        movzx   eax, byte [eax]                         ; 0FF3 _ 0F B6. 00
        movzx   eax, al                                 ; 0FF6 _ 0F B6. C0
        and     eax, 20H                                ; 0FF9 _ 83. E0, 20
        test    eax, eax                                ; 0FFC _ 85. C0
        jz      ?_054                                   ; 0FFE _ 74, 13
        mov     eax, dword [ebp+8H]                     ; 1000 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 1003 _ 8B. 40, 08
        or      eax, 0FFFFFF00H                         ; 1006 _ 0D, FFFFFF00
        mov     edx, eax                                ; 100B _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 100D _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 1010 _ 89. 50, 08
?_054:  mov     eax, dword [ebp+8H]                     ; 1013 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 1016 _ 8B. 40, 08
        neg     eax                                     ; 1019 _ F7. D8
        mov     edx, eax                                ; 101B _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 101D _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 1020 _ 89. 50, 08
        mov     eax, 1                                  ; 1023 _ B8, 00000001
        jmp     ?_056                                   ; 1028 _ EB, 05

?_055:  mov     eax, 4294967295                         ; 102A _ B8, FFFFFFFF
?_056:  leave                                           ; 102F _ C9
        ret                                             ; 1030 _ C3
; mouse_decode End of function

computeMousePos:; Function begin
        push    ebp                                     ; 1031 _ 55
        mov     ebp, esp                                ; 1032 _ 89. E5
        sub     esp, 24                                 ; 1034 _ 83. EC, 18
        movzx   eax, word [?_149]                       ; 1037 _ 0F B7. 05, 00000004(d)
        cwde                                            ; 103E _ 98
        mov     dword [ebp-10H], eax                    ; 103F _ 89. 45, F0
        movzx   eax, word [?_150]                       ; 1042 _ 0F B7. 05, 00000006(d)
        cwde                                            ; 1049 _ 98
        mov     dword [ebp-0CH], eax                    ; 104A _ 89. 45, F4
        mov     eax, dword [ebp+10H]                    ; 104D _ 8B. 45, 10
        mov     edx, dword [eax+4H]                     ; 1050 _ 8B. 50, 04
        mov     eax, dword [mx]                         ; 1053 _ A1, 000000F0(d)
        add     eax, edx                                ; 1058 _ 01. D0
        mov     dword [mx], eax                         ; 105A _ A3, 000000F0(d)
        mov     eax, dword [ebp+10H]                    ; 105F _ 8B. 45, 10
        mov     edx, dword [eax+8H]                     ; 1062 _ 8B. 50, 08
        mov     eax, dword [my]                         ; 1065 _ A1, 000000F4(d)
        add     eax, edx                                ; 106A _ 01. D0
        mov     dword [my], eax                         ; 106C _ A3, 000000F4(d)
        mov     eax, dword [mx]                         ; 1071 _ A1, 000000F0(d)
        test    eax, eax                                ; 1076 _ 85. C0
        jns     ?_057                                   ; 1078 _ 79, 0A
        mov     dword [mx], 0                           ; 107A _ C7. 05, 000000F0(d), 00000000
?_057:  mov     eax, dword [my]                         ; 1084 _ A1, 000000F4(d)
        test    eax, eax                                ; 1089 _ 85. C0
        jns     ?_058                                   ; 108B _ 79, 0A
        mov     dword [my], 0                           ; 108D _ C7. 05, 000000F4(d), 00000000
?_058:  mov     eax, dword [ebp-10H]                    ; 1097 _ 8B. 45, F0
        lea     edx, [eax-9H]                           ; 109A _ 8D. 50, F7
        mov     eax, dword [mx]                         ; 109D _ A1, 000000F0(d)
        cmp     edx, eax                                ; 10A2 _ 39. C2
        jge     ?_059                                   ; 10A4 _ 7D, 0B
        mov     eax, dword [ebp-10H]                    ; 10A6 _ 8B. 45, F0
        sub     eax, 9                                  ; 10A9 _ 83. E8, 09
        mov     dword [mx], eax                         ; 10AC _ A3, 000000F0(d)
?_059:  mov     eax, dword [ebp-0CH]                    ; 10B1 _ 8B. 45, F4
        lea     edx, [eax-1H]                           ; 10B4 _ 8D. 50, FF
        mov     eax, dword [my]                         ; 10B7 _ A1, 000000F4(d)
        cmp     edx, eax                                ; 10BC _ 39. C2
        jge     ?_060                                   ; 10BE _ 7D, 0B
        mov     eax, dword [ebp-0CH]                    ; 10C0 _ 8B. 45, F4
        sub     eax, 1                                  ; 10C3 _ 83. E8, 01
        mov     dword [my], eax                         ; 10C6 _ A3, 000000F4(d)
?_060:  mov     eax, dword [buf_back]                   ; 10CB _ A1, 000000F8(d)
        push    15                                      ; 10D0 _ 6A, 0F
        push    79                                      ; 10D2 _ 6A, 4F
        push    0                                       ; 10D4 _ 6A, 00
        push    0                                       ; 10D6 _ 6A, 00
        push    14                                      ; 10D8 _ 6A, 0E
        push    dword [ebp-10H]                         ; 10DA _ FF. 75, F0
        push    eax                                     ; 10DD _ 50
        call    boxfill8                                ; 10DE _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 10E3 _ 83. C4, 1C
        sub     esp, 8                                  ; 10E6 _ 83. EC, 08
        push    ?_140                                   ; 10E9 _ 68, 00000027(d)
        push    3                                       ; 10EE _ 6A, 03
        push    0                                       ; 10F0 _ 6A, 00
        push    0                                       ; 10F2 _ 6A, 00
        push    dword [ebp+0CH]                         ; 10F4 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 10F7 _ FF. 75, 08
        call    showString                              ; 10FA _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 10FF _ 83. C4, 20
        nop                                             ; 1102 _ 90
        leave                                           ; 1103 _ C9
        ret                                             ; 1104 _ C3
; computeMousePos End of function

showMemInfo:; Function begin
        push    ebp                                     ; 1105 _ 55
        mov     ebp, esp                                ; 1106 _ 89. E5
        sub     esp, 56                                 ; 1108 _ 83. EC, 38
        mov     dword [ebp-30H], 0                      ; 110B _ C7. 45, D0, 00000000
        mov     dword [ebp-2CH], 0                      ; 1112 _ C7. 45, D4, 00000000
        mov     dword [ebp-28H], 112                    ; 1119 _ C7. 45, D8, 00000070
        mov     dword [ebp-24H], 80                     ; 1120 _ C7. 45, DC, 00000050
        push    100                                     ; 1127 _ 6A, 64
        push    dword [ebp+1CH]                         ; 1129 _ FF. 75, 1C
        push    0                                       ; 112C _ 6A, 00
        push    0                                       ; 112E _ 6A, 00
        push    14                                      ; 1130 _ 6A, 0E
        push    dword [ebp+1CH]                         ; 1132 _ FF. 75, 1C
        push    dword [ebp+14H]                         ; 1135 _ FF. 75, 14
        call    boxfill8                                ; 1138 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 113D _ 83. C4, 1C
        mov     eax, dword [ebp+20H]                    ; 1140 _ 8B. 45, 20
        movsx   eax, al                                 ; 1143 _ 0F BE. C0
        sub     esp, 8                                  ; 1146 _ 83. EC, 08
        push    ?_141                                   ; 1149 _ 68, 0000003E(d)
        push    eax                                     ; 114E _ 50
        push    dword [ebp-2CH]                         ; 114F _ FF. 75, D4
        push    dword [ebp-30H]                         ; 1152 _ FF. 75, D0
        push    dword [ebp+0CH]                         ; 1155 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1158 _ FF. 75, 08
        call    showString                              ; 115B _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1160 _ 83. C4, 20
        mov     eax, dword [ebp+18H]                    ; 1163 _ 8B. 45, 18
        sub     esp, 12                                 ; 1166 _ 83. EC, 0C
        push    eax                                     ; 1169 _ 50
        call    intToHexStr                             ; 116A _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 116F _ 83. C4, 10
        mov     dword [ebp-20H], eax                    ; 1172 _ 89. 45, E0
        mov     eax, dword [ebp+20H]                    ; 1175 _ 8B. 45, 20
        movsx   eax, al                                 ; 1178 _ 0F BE. C0
        sub     esp, 8                                  ; 117B _ 83. EC, 08
        push    dword [ebp-20H]                         ; 117E _ FF. 75, E0
        push    eax                                     ; 1181 _ 50
        push    dword [ebp-2CH]                         ; 1182 _ FF. 75, D4
        push    dword [ebp-28H]                         ; 1185 _ FF. 75, D8
        push    dword [ebp+0CH]                         ; 1188 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 118B _ FF. 75, 08
        call    showString                              ; 118E _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1193 _ 83. C4, 20
        add     dword [ebp-2CH], 16                     ; 1196 _ 83. 45, D4, 10
        mov     eax, dword [ebp+20H]                    ; 119A _ 8B. 45, 20
        movsx   eax, al                                 ; 119D _ 0F BE. C0
        sub     esp, 8                                  ; 11A0 _ 83. EC, 08
        push    ?_142                                   ; 11A3 _ 68, 00000048(d)
        push    eax                                     ; 11A8 _ 50
        push    dword [ebp-2CH]                         ; 11A9 _ FF. 75, D4
        push    dword [ebp-30H]                         ; 11AC _ FF. 75, D0
        push    dword [ebp+0CH]                         ; 11AF _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 11B2 _ FF. 75, 08
        call    showString                              ; 11B5 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 11BA _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 11BD _ 8B. 45, 10
        mov     eax, dword [eax]                        ; 11C0 _ 8B. 00
        sub     esp, 12                                 ; 11C2 _ 83. EC, 0C
        push    eax                                     ; 11C5 _ 50
        call    intToHexStr                             ; 11C6 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 11CB _ 83. C4, 10
        mov     dword [ebp-1CH], eax                    ; 11CE _ 89. 45, E4
        mov     eax, dword [ebp+20H]                    ; 11D1 _ 8B. 45, 20
        movsx   eax, al                                 ; 11D4 _ 0F BE. C0
        sub     esp, 8                                  ; 11D7 _ 83. EC, 08
        push    dword [ebp-1CH]                         ; 11DA _ FF. 75, E4
        push    eax                                     ; 11DD _ 50
        push    dword [ebp-2CH]                         ; 11DE _ FF. 75, D4
        push    dword [ebp-28H]                         ; 11E1 _ FF. 75, D8
        push    dword [ebp+0CH]                         ; 11E4 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 11E7 _ FF. 75, 08
        call    showString                              ; 11EA _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 11EF _ 83. C4, 20
        add     dword [ebp-2CH], 16                     ; 11F2 _ 83. 45, D4, 10
        mov     eax, dword [ebp+20H]                    ; 11F6 _ 8B. 45, 20
        movsx   eax, al                                 ; 11F9 _ 0F BE. C0
        sub     esp, 8                                  ; 11FC _ 83. EC, 08
        push    ?_143                                   ; 11FF _ 68, 00000056(d)
        push    eax                                     ; 1204 _ 50
        push    dword [ebp-2CH]                         ; 1205 _ FF. 75, D4
        push    dword [ebp-30H]                         ; 1208 _ FF. 75, D0
        push    dword [ebp+0CH]                         ; 120B _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 120E _ FF. 75, 08
        call    showString                              ; 1211 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1216 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 1219 _ 8B. 45, 10
        mov     eax, dword [eax+4H]                     ; 121C _ 8B. 40, 04
        sub     esp, 12                                 ; 121F _ 83. EC, 0C
        push    eax                                     ; 1222 _ 50
        call    intToHexStr                             ; 1223 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1228 _ 83. C4, 10
        mov     dword [ebp-18H], eax                    ; 122B _ 89. 45, E8
        mov     eax, dword [ebp+20H]                    ; 122E _ 8B. 45, 20
        movsx   eax, al                                 ; 1231 _ 0F BE. C0
        sub     esp, 8                                  ; 1234 _ 83. EC, 08
        push    dword [ebp-18H]                         ; 1237 _ FF. 75, E8
        push    eax                                     ; 123A _ 50
        push    dword [ebp-2CH]                         ; 123B _ FF. 75, D4
        push    dword [ebp-28H]                         ; 123E _ FF. 75, D8
        push    dword [ebp+0CH]                         ; 1241 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1244 _ FF. 75, 08
        call    showString                              ; 1247 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 124C _ 83. C4, 20
        add     dword [ebp-2CH], 16                     ; 124F _ 83. 45, D4, 10
        mov     eax, dword [ebp+20H]                    ; 1253 _ 8B. 45, 20
        movsx   eax, al                                 ; 1256 _ 0F BE. C0
        sub     esp, 8                                  ; 1259 _ 83. EC, 08
        push    ?_144                                   ; 125C _ 68, 00000065(d)
        push    eax                                     ; 1261 _ 50
        push    dword [ebp-2CH]                         ; 1262 _ FF. 75, D4
        push    dword [ebp-30H]                         ; 1265 _ FF. 75, D0
        push    dword [ebp+0CH]                         ; 1268 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 126B _ FF. 75, 08
        call    showString                              ; 126E _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1273 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 1276 _ 8B. 45, 10
        mov     eax, dword [eax+8H]                     ; 1279 _ 8B. 40, 08
        sub     esp, 12                                 ; 127C _ 83. EC, 0C
        push    eax                                     ; 127F _ 50
        call    intToHexStr                             ; 1280 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1285 _ 83. C4, 10
        mov     dword [ebp-14H], eax                    ; 1288 _ 89. 45, EC
        mov     eax, dword [ebp+20H]                    ; 128B _ 8B. 45, 20
        movsx   eax, al                                 ; 128E _ 0F BE. C0
        sub     esp, 8                                  ; 1291 _ 83. EC, 08
        push    dword [ebp-14H]                         ; 1294 _ FF. 75, EC
        push    eax                                     ; 1297 _ 50
        push    dword [ebp-2CH]                         ; 1298 _ FF. 75, D4
        push    dword [ebp-28H]                         ; 129B _ FF. 75, D8
        push    dword [ebp+0CH]                         ; 129E _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 12A1 _ FF. 75, 08
        call    showString                              ; 12A4 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 12A9 _ 83. C4, 20
        add     dword [ebp-2CH], 16                     ; 12AC _ 83. 45, D4, 10
        mov     eax, dword [ebp+20H]                    ; 12B0 _ 8B. 45, 20
        movsx   eax, al                                 ; 12B3 _ 0F BE. C0
        sub     esp, 8                                  ; 12B6 _ 83. EC, 08
        push    ?_145                                   ; 12B9 _ 68, 00000071(d)
        push    eax                                     ; 12BE _ 50
        push    dword [ebp-2CH]                         ; 12BF _ FF. 75, D4
        push    dword [ebp-30H]                         ; 12C2 _ FF. 75, D0
        push    dword [ebp+0CH]                         ; 12C5 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 12C8 _ FF. 75, 08
        call    showString                              ; 12CB _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 12D0 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 12D3 _ 8B. 45, 10
        mov     eax, dword [eax+0CH]                    ; 12D6 _ 8B. 40, 0C
        sub     esp, 12                                 ; 12D9 _ 83. EC, 0C
        push    eax                                     ; 12DC _ 50
        call    intToHexStr                             ; 12DD _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 12E2 _ 83. C4, 10
        mov     dword [ebp-10H], eax                    ; 12E5 _ 89. 45, F0
        mov     eax, dword [ebp+20H]                    ; 12E8 _ 8B. 45, 20
        movsx   eax, al                                 ; 12EB _ 0F BE. C0
        sub     esp, 8                                  ; 12EE _ 83. EC, 08
        push    dword [ebp-10H]                         ; 12F1 _ FF. 75, F0
        push    eax                                     ; 12F4 _ 50
        push    dword [ebp-2CH]                         ; 12F5 _ FF. 75, D4
        push    dword [ebp-28H]                         ; 12F8 _ FF. 75, D8
        push    dword [ebp+0CH]                         ; 12FB _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 12FE _ FF. 75, 08
        call    showString                              ; 1301 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1306 _ 83. C4, 20
        add     dword [ebp-2CH], 16                     ; 1309 _ 83. 45, D4, 10
        mov     eax, dword [ebp+20H]                    ; 130D _ 8B. 45, 20
        movsx   eax, al                                 ; 1310 _ 0F BE. C0
        sub     esp, 8                                  ; 1313 _ 83. EC, 08
        push    ?_146                                   ; 1316 _ 68, 0000007E(d)
        push    eax                                     ; 131B _ 50
        push    dword [ebp-2CH]                         ; 131C _ FF. 75, D4
        push    dword [ebp-30H]                         ; 131F _ FF. 75, D0
        push    dword [ebp+0CH]                         ; 1322 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1325 _ FF. 75, 08
        call    showString                              ; 1328 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 132D _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 1330 _ 8B. 45, 10
        mov     eax, dword [eax+10H]                    ; 1333 _ 8B. 40, 10
        sub     esp, 12                                 ; 1336 _ 83. EC, 0C
        push    eax                                     ; 1339 _ 50
        call    intToHexStr                             ; 133A _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 133F _ 83. C4, 10
        mov     dword [ebp-0CH], eax                    ; 1342 _ 89. 45, F4
        mov     eax, dword [ebp+20H]                    ; 1345 _ 8B. 45, 20
        movsx   eax, al                                 ; 1348 _ 0F BE. C0
        sub     esp, 8                                  ; 134B _ 83. EC, 08
        push    dword [ebp-0CH]                         ; 134E _ FF. 75, F4
        push    eax                                     ; 1351 _ 50
        push    dword [ebp-2CH]                         ; 1352 _ FF. 75, D4
        push    dword [ebp-28H]                         ; 1355 _ FF. 75, D8
        push    dword [ebp+0CH]                         ; 1358 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 135B _ FF. 75, 08
        call    showString                              ; 135E _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1363 _ 83. C4, 20
        add     dword [ebp-2CH], 16                     ; 1366 _ 83. 45, D4, 10
        nop                                             ; 136A _ 90
        leave                                           ; 136B _ C9
        ret                                             ; 136C _ C3
; showMemInfo End of function

messageBox:; Function begin
        push    ebp                                     ; 136D _ 55
        mov     ebp, esp                                ; 136E _ 89. E5
        sub     esp, 24                                 ; 1370 _ 83. EC, 18
        mov     eax, dword [memman]                     ; 1373 _ A1, 00000008(d)
        sub     esp, 8                                  ; 1378 _ 83. EC, 08
        push    12000                                   ; 137B _ 68, 00002EE0
        push    eax                                     ; 1380 _ 50
        call    memman_alloc_4K                         ; 1381 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1386 _ 83. C4, 10
        mov     dword [ebp-10H], eax                    ; 1389 _ 89. 45, F0
        sub     esp, 12                                 ; 138C _ 83. EC, 0C
        push    dword [ebp+8H]                          ; 138F _ FF. 75, 08
        call    sheet_alloc                             ; 1392 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1397 _ 83. C4, 10
        mov     dword [ebp-0CH], eax                    ; 139A _ 89. 45, F4
        sub     esp, 12                                 ; 139D _ 83. EC, 0C
        push    99                                      ; 13A0 _ 6A, 63
        push    75                                      ; 13A2 _ 6A, 4B
        push    160                                     ; 13A4 _ 68, 000000A0
        push    dword [ebp-10H]                         ; 13A9 _ FF. 75, F0
        push    dword [ebp-0CH]                         ; 13AC _ FF. 75, F4
        call    sheet_setbuf                            ; 13AF _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 13B4 _ 83. C4, 20
        sub     esp, 4                                  ; 13B7 _ 83. EC, 04
        push    dword [ebp+0CH]                         ; 13BA _ FF. 75, 0C
        push    dword [ebp-0CH]                         ; 13BD _ FF. 75, F4
        push    dword [ebp+8H]                          ; 13C0 _ FF. 75, 08
        call    make_window8                            ; 13C3 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 13C8 _ 83. C4, 10
        push    40                                      ; 13CB _ 6A, 28
        push    60                                      ; 13CD _ 6A, 3C
        push    dword [ebp-0CH]                         ; 13CF _ FF. 75, F4
        push    dword [ebp+8H]                          ; 13D2 _ FF. 75, 08
        call    sheet_slide                             ; 13D5 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 13DA _ 83. C4, 10
        sub     esp, 4                                  ; 13DD _ 83. EC, 04
        push    1                                       ; 13E0 _ 6A, 01
        push    dword [ebp-0CH]                         ; 13E2 _ FF. 75, F4
        push    dword [ebp+8H]                          ; 13E5 _ FF. 75, 08
        call    sheet_level_updown                      ; 13E8 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 13ED _ 83. C4, 10
        mov     eax, dword [ebp-0CH]                    ; 13F0 _ 8B. 45, F4
        leave                                           ; 13F3 _ C9
        ret                                             ; 13F4 _ C3
; messageBox End of function

make_window8:; Function begin
        push    ebp                                     ; 13F5 _ 55
        mov     ebp, esp                                ; 13F6 _ 89. E5
        push    ebx                                     ; 13F8 _ 53
        sub     esp, 36                                 ; 13F9 _ 83. EC, 24
        mov     eax, dword [ebp+0CH]                    ; 13FC _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 13FF _ 8B. 40, 04
        mov     dword [ebp-10H], eax                    ; 1402 _ 89. 45, F0
        mov     eax, dword [ebp+0CH]                    ; 1405 _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 1408 _ 8B. 40, 08
        mov     dword [ebp-0CH], eax                    ; 140B _ 89. 45, F4
        mov     eax, dword [ebp-10H]                    ; 140E _ 8B. 45, F0
        lea     edx, [eax-1H]                           ; 1411 _ 8D. 50, FF
        mov     eax, dword [ebp+0CH]                    ; 1414 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 1417 _ 8B. 00
        push    0                                       ; 1419 _ 6A, 00
        push    edx                                     ; 141B _ 52
        push    0                                       ; 141C _ 6A, 00
        push    0                                       ; 141E _ 6A, 00
        push    8                                       ; 1420 _ 6A, 08
        push    dword [ebp-10H]                         ; 1422 _ FF. 75, F0
        push    eax                                     ; 1425 _ 50
        call    boxfill8                                ; 1426 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 142B _ 83. C4, 1C
        mov     eax, dword [ebp-10H]                    ; 142E _ 8B. 45, F0
        lea     edx, [eax-2H]                           ; 1431 _ 8D. 50, FE
        mov     eax, dword [ebp+0CH]                    ; 1434 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 1437 _ 8B. 00
        push    1                                       ; 1439 _ 6A, 01
        push    edx                                     ; 143B _ 52
        push    1                                       ; 143C _ 6A, 01
        push    1                                       ; 143E _ 6A, 01
        push    7                                       ; 1440 _ 6A, 07
        push    dword [ebp-10H]                         ; 1442 _ FF. 75, F0
        push    eax                                     ; 1445 _ 50
        call    boxfill8                                ; 1446 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 144B _ 83. C4, 1C
        mov     eax, dword [ebp-0CH]                    ; 144E _ 8B. 45, F4
        lea     edx, [eax-1H]                           ; 1451 _ 8D. 50, FF
        mov     eax, dword [ebp+0CH]                    ; 1454 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 1457 _ 8B. 00
        push    edx                                     ; 1459 _ 52
        push    0                                       ; 145A _ 6A, 00
        push    0                                       ; 145C _ 6A, 00
        push    0                                       ; 145E _ 6A, 00
        push    8                                       ; 1460 _ 6A, 08
        push    dword [ebp-10H]                         ; 1462 _ FF. 75, F0
        push    eax                                     ; 1465 _ 50
        call    boxfill8                                ; 1466 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 146B _ 83. C4, 1C
        mov     eax, dword [ebp-0CH]                    ; 146E _ 8B. 45, F4
        lea     edx, [eax-1H]                           ; 1471 _ 8D. 50, FF
        mov     eax, dword [ebp+0CH]                    ; 1474 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 1477 _ 8B. 00
        push    edx                                     ; 1479 _ 52
        push    1                                       ; 147A _ 6A, 01
        push    1                                       ; 147C _ 6A, 01
        push    1                                       ; 147E _ 6A, 01
        push    7                                       ; 1480 _ 6A, 07
        push    dword [ebp-10H]                         ; 1482 _ FF. 75, F0
        push    eax                                     ; 1485 _ 50
        call    boxfill8                                ; 1486 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 148B _ 83. C4, 1C
        mov     eax, dword [ebp-0CH]                    ; 148E _ 8B. 45, F4
        lea     ebx, [eax-2H]                           ; 1491 _ 8D. 58, FE
        mov     eax, dword [ebp-10H]                    ; 1494 _ 8B. 45, F0
        lea     ecx, [eax-2H]                           ; 1497 _ 8D. 48, FE
        mov     eax, dword [ebp-10H]                    ; 149A _ 8B. 45, F0
        lea     edx, [eax-2H]                           ; 149D _ 8D. 50, FE
        mov     eax, dword [ebp+0CH]                    ; 14A0 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 14A3 _ 8B. 00
        push    ebx                                     ; 14A5 _ 53
        push    ecx                                     ; 14A6 _ 51
        push    1                                       ; 14A7 _ 6A, 01
        push    edx                                     ; 14A9 _ 52
        push    15                                      ; 14AA _ 6A, 0F
        push    dword [ebp-10H]                         ; 14AC _ FF. 75, F0
        push    eax                                     ; 14AF _ 50
        call    boxfill8                                ; 14B0 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 14B5 _ 83. C4, 1C
        mov     eax, dword [ebp-0CH]                    ; 14B8 _ 8B. 45, F4
        lea     ebx, [eax-1H]                           ; 14BB _ 8D. 58, FF
        mov     eax, dword [ebp-10H]                    ; 14BE _ 8B. 45, F0
        lea     ecx, [eax-1H]                           ; 14C1 _ 8D. 48, FF
        mov     eax, dword [ebp-10H]                    ; 14C4 _ 8B. 45, F0
        lea     edx, [eax-1H]                           ; 14C7 _ 8D. 50, FF
        mov     eax, dword [ebp+0CH]                    ; 14CA _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 14CD _ 8B. 00
        push    ebx                                     ; 14CF _ 53
        push    ecx                                     ; 14D0 _ 51
        push    0                                       ; 14D1 _ 6A, 00
        push    edx                                     ; 14D3 _ 52
        push    0                                       ; 14D4 _ 6A, 00
        push    dword [ebp-10H]                         ; 14D6 _ FF. 75, F0
        push    eax                                     ; 14D9 _ 50
        call    boxfill8                                ; 14DA _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 14DF _ 83. C4, 1C
        mov     eax, dword [ebp-0CH]                    ; 14E2 _ 8B. 45, F4
        lea     ecx, [eax-3H]                           ; 14E5 _ 8D. 48, FD
        mov     eax, dword [ebp-10H]                    ; 14E8 _ 8B. 45, F0
        lea     edx, [eax-3H]                           ; 14EB _ 8D. 50, FD
        mov     eax, dword [ebp+0CH]                    ; 14EE _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 14F1 _ 8B. 00
        push    ecx                                     ; 14F3 _ 51
        push    edx                                     ; 14F4 _ 52
        push    2                                       ; 14F5 _ 6A, 02
        push    2                                       ; 14F7 _ 6A, 02
        push    8                                       ; 14F9 _ 6A, 08
        push    dword [ebp-10H]                         ; 14FB _ FF. 75, F0
        push    eax                                     ; 14FE _ 50
        call    boxfill8                                ; 14FF _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 1504 _ 83. C4, 1C
        mov     eax, dword [ebp-10H]                    ; 1507 _ 8B. 45, F0
        lea     edx, [eax-4H]                           ; 150A _ 8D. 50, FC
        mov     eax, dword [ebp+0CH]                    ; 150D _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 1510 _ 8B. 00
        push    20                                      ; 1512 _ 6A, 14
        push    edx                                     ; 1514 _ 52
        push    3                                       ; 1515 _ 6A, 03
        push    3                                       ; 1517 _ 6A, 03
        push    12                                      ; 1519 _ 6A, 0C
        push    dword [ebp-10H]                         ; 151B _ FF. 75, F0
        push    eax                                     ; 151E _ 50
        call    boxfill8                                ; 151F _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 1524 _ 83. C4, 1C
        mov     eax, dword [ebp-0CH]                    ; 1527 _ 8B. 45, F4
        lea     ebx, [eax-2H]                           ; 152A _ 8D. 58, FE
        mov     eax, dword [ebp-10H]                    ; 152D _ 8B. 45, F0
        lea     ecx, [eax-2H]                           ; 1530 _ 8D. 48, FE
        mov     eax, dword [ebp-0CH]                    ; 1533 _ 8B. 45, F4
        lea     edx, [eax-2H]                           ; 1536 _ 8D. 50, FE
        mov     eax, dword [ebp+0CH]                    ; 1539 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 153C _ 8B. 00
        push    ebx                                     ; 153E _ 53
        push    ecx                                     ; 153F _ 51
        push    edx                                     ; 1540 _ 52
        push    1                                       ; 1541 _ 6A, 01
        push    15                                      ; 1543 _ 6A, 0F
        push    dword [ebp-10H]                         ; 1545 _ FF. 75, F0
        push    eax                                     ; 1548 _ 50
        call    boxfill8                                ; 1549 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 154E _ 83. C4, 1C
        mov     eax, dword [ebp-0CH]                    ; 1551 _ 8B. 45, F4
        lea     ebx, [eax-1H]                           ; 1554 _ 8D. 58, FF
        mov     eax, dword [ebp-10H]                    ; 1557 _ 8B. 45, F0
        lea     ecx, [eax-1H]                           ; 155A _ 8D. 48, FF
        mov     eax, dword [ebp-0CH]                    ; 155D _ 8B. 45, F4
        lea     edx, [eax-1H]                           ; 1560 _ 8D. 50, FF
        mov     eax, dword [ebp+0CH]                    ; 1563 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 1566 _ 8B. 00
        push    ebx                                     ; 1568 _ 53
        push    ecx                                     ; 1569 _ 51
        push    edx                                     ; 156A _ 52
        push    0                                       ; 156B _ 6A, 00
        push    0                                       ; 156D _ 6A, 00
        push    dword [ebp-10H]                         ; 156F _ FF. 75, F0
        push    eax                                     ; 1572 _ 50
        call    boxfill8                                ; 1573 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 1578 _ 83. C4, 1C
        sub     esp, 8                                  ; 157B _ 83. EC, 08
        push    dword [ebp+10H]                         ; 157E _ FF. 75, 10
        push    7                                       ; 1581 _ 6A, 07
        push    4                                       ; 1583 _ 6A, 04
        push    8                                       ; 1585 _ 6A, 08
        push    dword [ebp+0CH]                         ; 1587 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 158A _ FF. 75, 08
        call    showString                              ; 158D _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1592 _ 83. C4, 20
        mov     dword [ebp-18H], 0                      ; 1595 _ C7. 45, E8, 00000000
        jmp     ?_067                                   ; 159C _ EB, 7D

?_061:  mov     dword [ebp-14H], 0                      ; 159E _ C7. 45, EC, 00000000
        jmp     ?_066                                   ; 15A5 _ EB, 6A

?_062:  mov     eax, dword [ebp-18H]                    ; 15A7 _ 8B. 45, E8
        shl     eax, 4                                  ; 15AA _ C1. E0, 04
        mov     edx, eax                                ; 15AD _ 89. C2
        mov     eax, dword [ebp-14H]                    ; 15AF _ 8B. 45, EC
        add     eax, edx                                ; 15B2 _ 01. D0
        add     eax, closebtn.1883                      ; 15B4 _ 05, 00000160(d)
        movzx   eax, byte [eax]                         ; 15B9 _ 0F B6. 00
        mov     byte [ebp-19H], al                      ; 15BC _ 88. 45, E7
        cmp     byte [ebp-19H], 64                      ; 15BF _ 80. 7D, E7, 40
        jnz     ?_063                                   ; 15C3 _ 75, 06
        mov     byte [ebp-19H], 0                       ; 15C5 _ C6. 45, E7, 00
        jmp     ?_065                                   ; 15C9 _ EB, 16

?_063:  cmp     byte [ebp-19H], 36                      ; 15CB _ 80. 7D, E7, 24
        jnz     ?_064                                   ; 15CF _ 75, 06
        mov     byte [ebp-19H], 15                      ; 15D1 _ C6. 45, E7, 0F
        jmp     ?_065                                   ; 15D5 _ EB, 0A

?_064:  cmp     byte [ebp-19H], 81                      ; 15D7 _ 80. 7D, E7, 51
        jnz     ?_065                                   ; 15DB _ 75, 04
        mov     byte [ebp-19H], 8                       ; 15DD _ C6. 45, E7, 08
?_065:  mov     eax, dword [ebp+0CH]                    ; 15E1 _ 8B. 45, 0C
        mov     edx, dword [eax]                        ; 15E4 _ 8B. 10
        mov     eax, dword [ebp-18H]                    ; 15E6 _ 8B. 45, E8
        lea     ecx, [eax+5H]                           ; 15E9 _ 8D. 48, 05
        mov     eax, dword [ebp+0CH]                    ; 15EC _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 15EF _ 8B. 40, 04
        imul    ecx, eax                                ; 15F2 _ 0F AF. C8
        mov     eax, dword [ebp+0CH]                    ; 15F5 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 15F8 _ 8B. 40, 04
        lea     ebx, [eax-15H]                          ; 15FB _ 8D. 58, EB
        mov     eax, dword [ebp-14H]                    ; 15FE _ 8B. 45, EC
        add     eax, ebx                                ; 1601 _ 01. D8
        add     eax, ecx                                ; 1603 _ 01. C8
        add     edx, eax                                ; 1605 _ 01. C2
        movzx   eax, byte [ebp-19H]                     ; 1607 _ 0F B6. 45, E7
        mov     byte [edx], al                          ; 160B _ 88. 02
        add     dword [ebp-14H], 1                      ; 160D _ 83. 45, EC, 01
?_066:  cmp     dword [ebp-14H], 15                     ; 1611 _ 83. 7D, EC, 0F
        jle     ?_062                                   ; 1615 _ 7E, 90
        add     dword [ebp-18H], 1                      ; 1617 _ 83. 45, E8, 01
?_067:  cmp     dword [ebp-18H], 13                     ; 161B _ 83. 7D, E8, 0D
        jle     ?_061                                   ; 161F _ 0F 8E, FFFFFF79
        nop                                             ; 1625 _ 90
        mov     ebx, dword [ebp-4H]                     ; 1626 _ 8B. 5D, FC
        leave                                           ; 1629 _ C9
        ret                                             ; 162A _ C3
; make_window8 End of function

memman_init:; Function begin
        push    ebp                                     ; 162B _ 55
        mov     ebp, esp                                ; 162C _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 162E _ 8B. 45, 08
        mov     dword [eax], 0                          ; 1631 _ C7. 00, 00000000
        mov     eax, dword [ebp+8H]                     ; 1637 _ 8B. 45, 08
        mov     dword [eax+4H], 0                       ; 163A _ C7. 40, 04, 00000000
        mov     eax, dword [ebp+8H]                     ; 1641 _ 8B. 45, 08
        mov     dword [eax+8H], 0                       ; 1644 _ C7. 40, 08, 00000000
        mov     eax, dword [ebp+8H]                     ; 164B _ 8B. 45, 08
        mov     dword [eax+0CH], 0                      ; 164E _ C7. 40, 0C, 00000000
        nop                                             ; 1655 _ 90
        pop     ebp                                     ; 1656 _ 5D
        ret                                             ; 1657 _ C3
; memman_init End of function

memman_total:; Function begin
        push    ebp                                     ; 1658 _ 55
        mov     ebp, esp                                ; 1659 _ 89. E5
        sub     esp, 16                                 ; 165B _ 83. EC, 10
        mov     dword [ebp-8H], 0                       ; 165E _ C7. 45, F8, 00000000
        mov     dword [ebp-4H], 0                       ; 1665 _ C7. 45, FC, 00000000
        jmp     ?_069                                   ; 166C _ EB, 14

?_068:  mov     eax, dword [ebp+8H]                     ; 166E _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 1671 _ 8B. 55, FC
        add     edx, 2                                  ; 1674 _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 1677 _ 8B. 44 D0, 04
        add     dword [ebp-8H], eax                     ; 167B _ 01. 45, F8
        add     dword [ebp-4H], 1                       ; 167E _ 83. 45, FC, 01
?_069:  mov     eax, dword [ebp+8H]                     ; 1682 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 1685 _ 8B. 00
        cmp     dword [ebp-4H], eax                     ; 1687 _ 39. 45, FC
        jl      ?_068                                   ; 168A _ 7C, E2
        mov     eax, dword [ebp-8H]                     ; 168C _ 8B. 45, F8
        leave                                           ; 168F _ C9
        ret                                             ; 1690 _ C3
; memman_total End of function

memman_alloc_FF:; Function begin
        push    ebp                                     ; 1691 _ 55
        mov     ebp, esp                                ; 1692 _ 89. E5
        sub     esp, 16                                 ; 1694 _ 83. EC, 10
        mov     dword [ebp-8H], 0                       ; 1697 _ C7. 45, F8, 00000000
        jmp     ?_073                                   ; 169E _ E9, 00000085

?_070:  mov     eax, dword [ebp+8H]                     ; 16A3 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 16A6 _ 8B. 55, F8
        add     edx, 2                                  ; 16A9 _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 16AC _ 8B. 44 D0, 04
        cmp     dword [ebp+0CH], eax                    ; 16B0 _ 39. 45, 0C
        ja      ?_072                                   ; 16B3 _ 77, 6F
        mov     eax, dword [ebp+8H]                     ; 16B5 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 16B8 _ 8B. 55, F8
        add     edx, 2                                  ; 16BB _ 83. C2, 02
        mov     eax, dword [eax+edx*8]                  ; 16BE _ 8B. 04 D0
        mov     dword [ebp-4H], eax                     ; 16C1 _ 89. 45, FC
        mov     eax, dword [ebp+8H]                     ; 16C4 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 16C7 _ 8B. 55, F8
        add     edx, 2                                  ; 16CA _ 83. C2, 02
        mov     edx, dword [eax+edx*8]                  ; 16CD _ 8B. 14 D0
        mov     eax, dword [ebp+0CH]                    ; 16D0 _ 8B. 45, 0C
        lea     ecx, [edx+eax]                          ; 16D3 _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 16D6 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 16D9 _ 8B. 55, F8
        add     edx, 2                                  ; 16DC _ 83. C2, 02
        mov     dword [eax+edx*8], ecx                  ; 16DF _ 89. 0C D0
        mov     eax, dword [ebp+8H]                     ; 16E2 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 16E5 _ 8B. 55, F8
        add     edx, 2                                  ; 16E8 _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 16EB _ 8B. 44 D0, 04
        sub     eax, dword [ebp+0CH]                    ; 16EF _ 2B. 45, 0C
        mov     edx, eax                                ; 16F2 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 16F4 _ 8B. 45, 08
        mov     ecx, dword [ebp-8H]                     ; 16F7 _ 8B. 4D, F8
        add     ecx, 2                                  ; 16FA _ 83. C1, 02
        mov     dword [eax+ecx*8+4H], edx               ; 16FD _ 89. 54 C8, 04
        mov     eax, dword [ebp+8H]                     ; 1701 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 1704 _ 8B. 55, F8
        add     edx, 2                                  ; 1707 _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 170A _ 8B. 44 D0, 04
        test    eax, eax                                ; 170E _ 85. C0
        jnz     ?_071                                   ; 1710 _ 75, 0D
        mov     eax, dword [ebp+8H]                     ; 1712 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 1715 _ 8B. 00
        lea     edx, [eax-1H]                           ; 1717 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 171A _ 8B. 45, 08
        mov     dword [eax], edx                        ; 171D _ 89. 10
?_071:  mov     eax, dword [ebp-4H]                     ; 171F _ 8B. 45, FC
        jmp     ?_074                                   ; 1722 _ EB, 17

?_072:  add     dword [ebp-8H], 1                       ; 1724 _ 83. 45, F8, 01
?_073:  mov     eax, dword [ebp+8H]                     ; 1728 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 172B _ 8B. 00
        cmp     dword [ebp-8H], eax                     ; 172D _ 39. 45, F8
        jl      ?_070                                   ; 1730 _ 0F 8C, FFFFFF6D
        mov     eax, 0                                  ; 1736 _ B8, 00000000
?_074:  leave                                           ; 173B _ C9
        ret                                             ; 173C _ C3
; memman_alloc_FF End of function

memman_alloc_4K:; Function begin
        push    ebp                                     ; 173D _ 55
        mov     ebp, esp                                ; 173E _ 89. E5
        sub     esp, 16                                 ; 1740 _ 83. EC, 10
        mov     eax, dword [ebp+0CH]                    ; 1743 _ 8B. 45, 0C
        add     eax, 4095                               ; 1746 _ 05, 00000FFF
        and     eax, 0FFFFF000H                         ; 174B _ 25, FFFFF000
        mov     dword [ebp+0CH], eax                    ; 1750 _ 89. 45, 0C
        push    dword [ebp+0CH]                         ; 1753 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1756 _ FF. 75, 08
        call    memman_alloc_FF                         ; 1759 _ E8, FFFFFFFC(rel)
        add     esp, 8                                  ; 175E _ 83. C4, 08
        mov     dword [ebp-4H], eax                     ; 1761 _ 89. 45, FC
        mov     eax, dword [ebp-4H]                     ; 1764 _ 8B. 45, FC
        leave                                           ; 1767 _ C9
        ret                                             ; 1768 _ C3
; memman_alloc_4K End of function

memman_free:; Function begin
        push    ebp                                     ; 1769 _ 55
        mov     ebp, esp                                ; 176A _ 89. E5
        push    ebx                                     ; 176C _ 53
        sub     esp, 16                                 ; 176D _ 83. EC, 10
        mov     dword [ebp-0CH], 0                      ; 1770 _ C7. 45, F4, 00000000
        jmp     ?_076                                   ; 1777 _ EB, 15

?_075:  mov     eax, dword [ebp+8H]                     ; 1779 _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 177C _ 8B. 55, F4
        add     edx, 2                                  ; 177F _ 83. C2, 02
        mov     eax, dword [eax+edx*8]                  ; 1782 _ 8B. 04 D0
        cmp     dword [ebp+0CH], eax                    ; 1785 _ 39. 45, 0C
        jc      ?_077                                   ; 1788 _ 72, 10
        add     dword [ebp-0CH], 1                      ; 178A _ 83. 45, F4, 01
?_076:  mov     eax, dword [ebp+8H]                     ; 178E _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 1791 _ 8B. 00
        cmp     dword [ebp-0CH], eax                    ; 1793 _ 39. 45, F4
        jl      ?_075                                   ; 1796 _ 7C, E1
        jmp     ?_078                                   ; 1798 _ EB, 01

?_077:  nop                                             ; 179A _ 90
?_078:  cmp     dword [ebp-0CH], 0                      ; 179B _ 83. 7D, F4, 00
        jle     ?_080                                   ; 179F _ 0F 8E, 000000BA
        mov     eax, dword [ebp-0CH]                    ; 17A5 _ 8B. 45, F4
        lea     edx, [eax-1H]                           ; 17A8 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 17AB _ 8B. 45, 08
        add     edx, 2                                  ; 17AE _ 83. C2, 02
        mov     edx, dword [eax+edx*8]                  ; 17B1 _ 8B. 14 D0
        mov     eax, dword [ebp-0CH]                    ; 17B4 _ 8B. 45, F4
        lea     ecx, [eax-1H]                           ; 17B7 _ 8D. 48, FF
        mov     eax, dword [ebp+8H]                     ; 17BA _ 8B. 45, 08
        add     ecx, 2                                  ; 17BD _ 83. C1, 02
        mov     eax, dword [eax+ecx*8+4H]               ; 17C0 _ 8B. 44 C8, 04
        add     eax, edx                                ; 17C4 _ 01. D0
        cmp     dword [ebp+0CH], eax                    ; 17C6 _ 39. 45, 0C
        jne     ?_080                                   ; 17C9 _ 0F 85, 00000090
        mov     eax, dword [ebp-0CH]                    ; 17CF _ 8B. 45, F4
        lea     edx, [eax-1H]                           ; 17D2 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 17D5 _ 8B. 45, 08
        add     edx, 2                                  ; 17D8 _ 83. C2, 02
        mov     edx, dword [eax+edx*8+4H]               ; 17DB _ 8B. 54 D0, 04
        mov     eax, dword [ebp-0CH]                    ; 17DF _ 8B. 45, F4
        lea     ebx, [eax-1H]                           ; 17E2 _ 8D. 58, FF
        mov     eax, dword [ebp+10H]                    ; 17E5 _ 8B. 45, 10
        lea     ecx, [edx+eax]                          ; 17E8 _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 17EB _ 8B. 45, 08
        lea     edx, [ebx+2H]                           ; 17EE _ 8D. 53, 02
        mov     dword [eax+edx*8+4H], ecx               ; 17F1 _ 89. 4C D0, 04
        mov     eax, dword [ebp+8H]                     ; 17F5 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 17F8 _ 8B. 00
        cmp     dword [ebp-0CH], eax                    ; 17FA _ 39. 45, F4
        jge     ?_079                                   ; 17FD _ 7D, 56
        mov     edx, dword [ebp+0CH]                    ; 17FF _ 8B. 55, 0C
        mov     eax, dword [ebp+10H]                    ; 1802 _ 8B. 45, 10
        lea     ecx, [edx+eax]                          ; 1805 _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 1808 _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 180B _ 8B. 55, F4
        add     edx, 2                                  ; 180E _ 83. C2, 02
        mov     eax, dword [eax+edx*8]                  ; 1811 _ 8B. 04 D0
        cmp     ecx, eax                                ; 1814 _ 39. C1
        jnz     ?_079                                   ; 1816 _ 75, 3D
        mov     eax, dword [ebp-0CH]                    ; 1818 _ 8B. 45, F4
        lea     edx, [eax-1H]                           ; 181B _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 181E _ 8B. 45, 08
        add     edx, 2                                  ; 1821 _ 83. C2, 02
        mov     edx, dword [eax+edx*8+4H]               ; 1824 _ 8B. 54 D0, 04
        mov     eax, dword [ebp+8H]                     ; 1828 _ 8B. 45, 08
        mov     ecx, dword [ebp-0CH]                    ; 182B _ 8B. 4D, F4
        add     ecx, 2                                  ; 182E _ 83. C1, 02
        mov     eax, dword [eax+ecx*8+4H]               ; 1831 _ 8B. 44 C8, 04
        mov     ecx, dword [ebp-0CH]                    ; 1835 _ 8B. 4D, F4
        lea     ebx, [ecx-1H]                           ; 1838 _ 8D. 59, FF
        lea     ecx, [edx+eax]                          ; 183B _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 183E _ 8B. 45, 08
        lea     edx, [ebx+2H]                           ; 1841 _ 8D. 53, 02
        mov     dword [eax+edx*8+4H], ecx               ; 1844 _ 89. 4C D0, 04
        mov     eax, dword [ebp+8H]                     ; 1848 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 184B _ 8B. 00
        lea     edx, [eax-1H]                           ; 184D _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 1850 _ 8B. 45, 08
        mov     dword [eax], edx                        ; 1853 _ 89. 10
?_079:  mov     eax, 0                                  ; 1855 _ B8, 00000000
        jmp     ?_086                                   ; 185A _ E9, 0000011C

?_080:  mov     eax, dword [ebp+8H]                     ; 185F _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 1862 _ 8B. 00
        cmp     dword [ebp-0CH], eax                    ; 1864 _ 39. 45, F4
        jge     ?_081                                   ; 1867 _ 7D, 52
        mov     edx, dword [ebp+0CH]                    ; 1869 _ 8B. 55, 0C
        mov     eax, dword [ebp+10H]                    ; 186C _ 8B. 45, 10
        lea     ecx, [edx+eax]                          ; 186F _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 1872 _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 1875 _ 8B. 55, F4
        add     edx, 2                                  ; 1878 _ 83. C2, 02
        mov     eax, dword [eax+edx*8]                  ; 187B _ 8B. 04 D0
        cmp     ecx, eax                                ; 187E _ 39. C1
        jnz     ?_081                                   ; 1880 _ 75, 39
        mov     eax, dword [ebp+8H]                     ; 1882 _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 1885 _ 8B. 55, F4
        lea     ecx, [edx+2H]                           ; 1888 _ 8D. 4A, 02
        mov     edx, dword [ebp+0CH]                    ; 188B _ 8B. 55, 0C
        mov     dword [eax+ecx*8], edx                  ; 188E _ 89. 14 C8
        mov     eax, dword [ebp+8H]                     ; 1891 _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 1894 _ 8B. 55, F4
        add     edx, 2                                  ; 1897 _ 83. C2, 02
        mov     edx, dword [eax+edx*8+4H]               ; 189A _ 8B. 54 D0, 04
        mov     eax, dword [ebp+10H]                    ; 189E _ 8B. 45, 10
        lea     ecx, [edx+eax]                          ; 18A1 _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 18A4 _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 18A7 _ 8B. 55, F4
        add     edx, 2                                  ; 18AA _ 83. C2, 02
        mov     dword [eax+edx*8+4H], ecx               ; 18AD _ 89. 4C D0, 04
        mov     eax, 0                                  ; 18B1 _ B8, 00000000
        jmp     ?_086                                   ; 18B6 _ E9, 000000C0

?_081:  mov     eax, dword [ebp+8H]                     ; 18BB _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 18BE _ 8B. 00
        cmp     eax, 4095                               ; 18C0 _ 3D, 00000FFF
        jg      ?_085                                   ; 18C5 _ 0F 8F, 00000087
        mov     eax, dword [ebp+8H]                     ; 18CB _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 18CE _ 8B. 00
        mov     dword [ebp-8H], eax                     ; 18D0 _ 89. 45, F8
        jmp     ?_083                                   ; 18D3 _ EB, 28

?_082:  mov     eax, dword [ebp-8H]                     ; 18D5 _ 8B. 45, F8
        lea     edx, [eax-1H]                           ; 18D8 _ 8D. 50, FF
        mov     ecx, dword [ebp+8H]                     ; 18DB _ 8B. 4D, 08
        mov     eax, dword [ebp-8H]                     ; 18DE _ 8B. 45, F8
        lea     ebx, [eax+2H]                           ; 18E1 _ 8D. 58, 02
        mov     eax, dword [ebp+8H]                     ; 18E4 _ 8B. 45, 08
        add     edx, 2                                  ; 18E7 _ 83. C2, 02
        lea     edx, [eax+edx*8]                        ; 18EA _ 8D. 14 D0
        mov     eax, dword [edx]                        ; 18ED _ 8B. 02
        mov     edx, dword [edx+4H]                     ; 18EF _ 8B. 52, 04
        mov     dword [ecx+ebx*8], eax                  ; 18F2 _ 89. 04 D9
        mov     dword [ecx+ebx*8+4H], edx               ; 18F5 _ 89. 54 D9, 04
        sub     dword [ebp-8H], 1                       ; 18F9 _ 83. 6D, F8, 01
?_083:  mov     eax, dword [ebp-8H]                     ; 18FD _ 8B. 45, F8
        cmp     eax, dword [ebp-0CH]                    ; 1900 _ 3B. 45, F4
        jg      ?_082                                   ; 1903 _ 7F, D0
        mov     eax, dword [ebp+8H]                     ; 1905 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 1908 _ 8B. 00
        lea     edx, [eax+1H]                           ; 190A _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 190D _ 8B. 45, 08
        mov     dword [eax], edx                        ; 1910 _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 1912 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 1915 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 1918 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 191B _ 8B. 00
        cmp     edx, eax                                ; 191D _ 39. C2
        jge     ?_084                                   ; 191F _ 7D, 0B
        mov     eax, dword [ebp+8H]                     ; 1921 _ 8B. 45, 08
        mov     edx, dword [eax]                        ; 1924 _ 8B. 10
        mov     eax, dword [ebp+8H]                     ; 1926 _ 8B. 45, 08
        mov     dword [eax+4H], edx                     ; 1929 _ 89. 50, 04
?_084:  mov     eax, dword [ebp+8H]                     ; 192C _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 192F _ 8B. 55, F4
        lea     ecx, [edx+2H]                           ; 1932 _ 8D. 4A, 02
        mov     edx, dword [ebp+0CH]                    ; 1935 _ 8B. 55, 0C
        mov     dword [eax+ecx*8], edx                  ; 1938 _ 89. 14 C8
        mov     eax, dword [ebp+8H]                     ; 193B _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 193E _ 8B. 55, F4
        lea     ecx, [edx+2H]                           ; 1941 _ 8D. 4A, 02
        mov     edx, dword [ebp+10H]                    ; 1944 _ 8B. 55, 10
        mov     dword [eax+ecx*8+4H], edx               ; 1947 _ 89. 54 C8, 04
        mov     eax, 0                                  ; 194B _ B8, 00000000
        jmp     ?_086                                   ; 1950 _ EB, 29

?_085:  mov     eax, dword [ebp+8H]                     ; 1952 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 1955 _ 8B. 40, 0C
        lea     edx, [eax+1H]                           ; 1958 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 195B _ 8B. 45, 08
        mov     dword [eax+0CH], edx                    ; 195E _ 89. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 1961 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 1964 _ 8B. 40, 08
        mov     edx, eax                                ; 1967 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 1969 _ 8B. 45, 10
        add     eax, edx                                ; 196C _ 01. D0
        mov     edx, eax                                ; 196E _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 1970 _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 1973 _ 89. 50, 08
        mov     eax, 4294967295                         ; 1976 _ B8, FFFFFFFF
?_086:  add     esp, 16                                 ; 197B _ 83. C4, 10
        pop     ebx                                     ; 197E _ 5B
        pop     ebp                                     ; 197F _ 5D
        ret                                             ; 1980 _ C3
; memman_free End of function

memman_free_4K:; Function begin
        push    ebp                                     ; 1981 _ 55
        mov     ebp, esp                                ; 1982 _ 89. E5
        sub     esp, 16                                 ; 1984 _ 83. EC, 10
        mov     eax, dword [ebp+10H]                    ; 1987 _ 8B. 45, 10
        add     eax, 4095                               ; 198A _ 05, 00000FFF
        and     eax, 0FFFFF000H                         ; 198F _ 25, FFFFF000
        mov     dword [ebp+10H], eax                    ; 1994 _ 89. 45, 10
        push    dword [ebp+10H]                         ; 1997 _ FF. 75, 10
        push    dword [ebp+0CH]                         ; 199A _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 199D _ FF. 75, 08
        call    memman_free                             ; 19A0 _ E8, FFFFFFFC(rel)
        add     esp, 12                                 ; 19A5 _ 83. C4, 0C
        mov     dword [ebp-4H], eax                     ; 19A8 _ 89. 45, FC
        mov     eax, dword [ebp-4H]                     ; 19AB _ 8B. 45, FC
        leave                                           ; 19AE _ C9
        ret                                             ; 19AF _ C3
; memman_free_4K End of function

shtctl_init:; Function begin
        push    ebp                                     ; 19B0 _ 55
        mov     ebp, esp                                ; 19B1 _ 89. E5
        sub     esp, 24                                 ; 19B3 _ 83. EC, 18
        sub     esp, 8                                  ; 19B6 _ 83. EC, 08
        push    9232                                    ; 19B9 _ 68, 00002410
        push    dword [ebp+8H]                          ; 19BE _ FF. 75, 08
        call    memman_alloc_4K                         ; 19C1 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 19C6 _ 83. C4, 10
        mov     dword [ebp-0CH], eax                    ; 19C9 _ 89. 45, F4
        cmp     dword [ebp-0CH], 0                      ; 19CC _ 83. 7D, F4, 00
        jnz     ?_087                                   ; 19D0 _ 75, 0A
        mov     eax, 0                                  ; 19D2 _ B8, 00000000
        jmp     ?_091                                   ; 19D7 _ E9, 0000009A

?_087:  mov     eax, dword [ebp+10H]                    ; 19DC _ 8B. 45, 10
        imul    eax, dword [ebp+14H]                    ; 19DF _ 0F AF. 45, 14
        sub     esp, 8                                  ; 19E3 _ 83. EC, 08
        push    eax                                     ; 19E6 _ 50
        push    dword [ebp+8H]                          ; 19E7 _ FF. 75, 08
        call    memman_alloc_4K                         ; 19EA _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 19EF _ 83. C4, 10
        mov     edx, eax                                ; 19F2 _ 89. C2
        mov     eax, dword [ebp-0CH]                    ; 19F4 _ 8B. 45, F4
        mov     dword [eax+4H], edx                     ; 19F7 _ 89. 50, 04
        mov     eax, dword [ebp-0CH]                    ; 19FA _ 8B. 45, F4
        mov     eax, dword [eax+4H]                     ; 19FD _ 8B. 40, 04
        test    eax, eax                                ; 1A00 _ 85. C0
        jnz     ?_088                                   ; 1A02 _ 75, 1E
        mov     eax, dword [ebp-0CH]                    ; 1A04 _ 8B. 45, F4
        sub     esp, 4                                  ; 1A07 _ 83. EC, 04
        push    9232                                    ; 1A0A _ 68, 00002410
        push    eax                                     ; 1A0F _ 50
        push    dword [ebp+8H]                          ; 1A10 _ FF. 75, 08
        call    memman_free_4K                          ; 1A13 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1A18 _ 83. C4, 10
        mov     eax, 0                                  ; 1A1B _ B8, 00000000
        jmp     ?_091                                   ; 1A20 _ EB, 54

?_088:  mov     eax, dword [ebp-0CH]                    ; 1A22 _ 8B. 45, F4
        mov     edx, dword [ebp+0CH]                    ; 1A25 _ 8B. 55, 0C
        mov     dword [eax], edx                        ; 1A28 _ 89. 10
        mov     eax, dword [ebp-0CH]                    ; 1A2A _ 8B. 45, F4
        mov     edx, dword [ebp+10H]                    ; 1A2D _ 8B. 55, 10
        mov     dword [eax+8H], edx                     ; 1A30 _ 89. 50, 08
        mov     eax, dword [ebp-0CH]                    ; 1A33 _ 8B. 45, F4
        mov     edx, dword [ebp+14H]                    ; 1A36 _ 8B. 55, 14
        mov     dword [eax+0CH], edx                    ; 1A39 _ 89. 50, 0C
        mov     eax, dword [ebp-0CH]                    ; 1A3C _ 8B. 45, F4
        mov     dword [eax+10H], -1                     ; 1A3F _ C7. 40, 10, FFFFFFFF
        mov     dword [ebp-10H], 0                      ; 1A46 _ C7. 45, F0, 00000000
        jmp     ?_090                                   ; 1A4D _ EB, 1B

?_089:  mov     eax, dword [ebp-0CH]                    ; 1A4F _ 8B. 45, F4
        mov     edx, dword [ebp-10H]                    ; 1A52 _ 8B. 55, F0
        add     edx, 33                                 ; 1A55 _ 83. C2, 21
        shl     edx, 5                                  ; 1A58 _ C1. E2, 05
        add     eax, edx                                ; 1A5B _ 01. D0
        add     eax, 16                                 ; 1A5D _ 83. C0, 10
        mov     dword [eax], 0                          ; 1A60 _ C7. 00, 00000000
        add     dword [ebp-10H], 1                      ; 1A66 _ 83. 45, F0, 01
?_090:  cmp     dword [ebp-10H], 255                    ; 1A6A _ 81. 7D, F0, 000000FF
        jle     ?_089                                   ; 1A71 _ 7E, DC
        mov     eax, dword [ebp-0CH]                    ; 1A73 _ 8B. 45, F4
?_091:  leave                                           ; 1A76 _ C9
        ret                                             ; 1A77 _ C3
; shtctl_init End of function

sheet_alloc:; Function begin
        push    ebp                                     ; 1A78 _ 55
        mov     ebp, esp                                ; 1A79 _ 89. E5
        sub     esp, 16                                 ; 1A7B _ 83. EC, 10
        mov     dword [ebp-8H], 0                       ; 1A7E _ C7. 45, F8, 00000000
        jmp     ?_094                                   ; 1A85 _ EB, 4B

?_092:  mov     eax, dword [ebp+8H]                     ; 1A87 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 1A8A _ 8B. 55, F8
        add     edx, 33                                 ; 1A8D _ 83. C2, 21
        shl     edx, 5                                  ; 1A90 _ C1. E2, 05
        add     eax, edx                                ; 1A93 _ 01. D0
        add     eax, 16                                 ; 1A95 _ 83. C0, 10
        mov     eax, dword [eax]                        ; 1A98 _ 8B. 00
        test    eax, eax                                ; 1A9A _ 85. C0
        jnz     ?_093                                   ; 1A9C _ 75, 30
        mov     eax, dword [ebp-8H]                     ; 1A9E _ 8B. 45, F8
        shl     eax, 5                                  ; 1AA1 _ C1. E0, 05
        lea     edx, [eax+410H]                         ; 1AA4 _ 8D. 90, 00000410
        mov     eax, dword [ebp+8H]                     ; 1AAA _ 8B. 45, 08
        add     eax, edx                                ; 1AAD _ 01. D0
        add     eax, 4                                  ; 1AAF _ 83. C0, 04
        mov     dword [ebp-4H], eax                     ; 1AB2 _ 89. 45, FC
        mov     eax, dword [ebp-4H]                     ; 1AB5 _ 8B. 45, FC
        mov     dword [eax+1CH], 1                      ; 1AB8 _ C7. 40, 1C, 00000001
        mov     eax, dword [ebp-4H]                     ; 1ABF _ 8B. 45, FC
        mov     dword [eax+18H], -1                     ; 1AC2 _ C7. 40, 18, FFFFFFFF
        mov     eax, dword [ebp-4H]                     ; 1AC9 _ 8B. 45, FC
        jmp     ?_095                                   ; 1ACC _ EB, 12

?_093:  add     dword [ebp-8H], 1                       ; 1ACE _ 83. 45, F8, 01
?_094:  cmp     dword [ebp-8H], 255                     ; 1AD2 _ 81. 7D, F8, 000000FF
        jle     ?_092                                   ; 1AD9 _ 7E, AC
        mov     eax, 0                                  ; 1ADB _ B8, 00000000
?_095:  leave                                           ; 1AE0 _ C9
        ret                                             ; 1AE1 _ C3
; sheet_alloc End of function

sheet_setbuf:; Function begin
        push    ebp                                     ; 1AE2 _ 55
        mov     ebp, esp                                ; 1AE3 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 1AE5 _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 1AE8 _ 8B. 55, 0C
        mov     dword [eax], edx                        ; 1AEB _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 1AED _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 1AF0 _ 8B. 55, 10
        mov     dword [eax+4H], edx                     ; 1AF3 _ 89. 50, 04
        mov     eax, dword [ebp+8H]                     ; 1AF6 _ 8B. 45, 08
        mov     edx, dword [ebp+14H]                    ; 1AF9 _ 8B. 55, 14
        mov     dword [eax+8H], edx                     ; 1AFC _ 89. 50, 08
        mov     eax, dword [ebp+8H]                     ; 1AFF _ 8B. 45, 08
        mov     edx, dword [ebp+18H]                    ; 1B02 _ 8B. 55, 18
        mov     dword [eax+14H], edx                    ; 1B05 _ 89. 50, 14
        nop                                             ; 1B08 _ 90
        pop     ebp                                     ; 1B09 _ 5D
        ret                                             ; 1B0A _ C3
; sheet_setbuf End of function

sheet_level_updown:; Function begin
        push    ebp                                     ; 1B0B _ 55
        mov     ebp, esp                                ; 1B0C _ 89. E5
        push    esi                                     ; 1B0E _ 56
        push    ebx                                     ; 1B0F _ 53
        sub     esp, 32                                 ; 1B10 _ 83. EC, 20
        mov     eax, dword [ebp+0CH]                    ; 1B13 _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 1B16 _ 8B. 40, 18
        mov     dword [ebp-0CH], eax                    ; 1B19 _ 89. 45, F4
        mov     eax, dword [ebp+8H]                     ; 1B1C _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 1B1F _ 8B. 40, 10
        add     eax, 1                                  ; 1B22 _ 83. C0, 01
        cmp     dword [ebp+10H], eax                    ; 1B25 _ 39. 45, 10
        jle     ?_096                                   ; 1B28 _ 7E, 0C
        mov     eax, dword [ebp+8H]                     ; 1B2A _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 1B2D _ 8B. 40, 10
        add     eax, 1                                  ; 1B30 _ 83. C0, 01
        mov     dword [ebp+10H], eax                    ; 1B33 _ 89. 45, 10
?_096:  cmp     dword [ebp+10H], -1                     ; 1B36 _ 83. 7D, 10, FF
        jge     ?_097                                   ; 1B3A _ 7D, 07
        mov     dword [ebp+10H], -1                     ; 1B3C _ C7. 45, 10, FFFFFFFF
?_097:  mov     eax, dword [ebp+0CH]                    ; 1B43 _ 8B. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 1B46 _ 8B. 55, 10
        mov     dword [eax+18H], edx                    ; 1B49 _ 89. 50, 18
        mov     eax, dword [ebp-0CH]                    ; 1B4C _ 8B. 45, F4
        cmp     eax, dword [ebp+10H]                    ; 1B4F _ 3B. 45, 10
        jle     ?_104                                   ; 1B52 _ 0F 8E, 000001D5
        cmp     dword [ebp+10H], 0                      ; 1B58 _ 83. 7D, 10, 00
        js      ?_100                                   ; 1B5C _ 0F 88, 000000E2
        mov     eax, dword [ebp-0CH]                    ; 1B62 _ 8B. 45, F4
        mov     dword [ebp-1CH], eax                    ; 1B65 _ 89. 45, E4
        jmp     ?_099                                   ; 1B68 _ EB, 34

?_098:  mov     eax, dword [ebp-1CH]                    ; 1B6A _ 8B. 45, E4
        lea     edx, [eax-1H]                           ; 1B6D _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 1B70 _ 8B. 45, 08
        add     edx, 4                                  ; 1B73 _ 83. C2, 04
        mov     edx, dword [eax+edx*4+4H]               ; 1B76 _ 8B. 54 90, 04
        mov     eax, dword [ebp+8H]                     ; 1B7A _ 8B. 45, 08
        mov     ecx, dword [ebp-1CH]                    ; 1B7D _ 8B. 4D, E4
        add     ecx, 4                                  ; 1B80 _ 83. C1, 04
        mov     dword [eax+ecx*4+4H], edx               ; 1B83 _ 89. 54 88, 04
        mov     eax, dword [ebp+8H]                     ; 1B87 _ 8B. 45, 08
        mov     edx, dword [ebp-1CH]                    ; 1B8A _ 8B. 55, E4
        add     edx, 4                                  ; 1B8D _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 1B90 _ 8B. 44 90, 04
        mov     edx, dword [ebp-1CH]                    ; 1B94 _ 8B. 55, E4
        mov     dword [eax+18H], edx                    ; 1B97 _ 89. 50, 18
        sub     dword [ebp-1CH], 1                      ; 1B9A _ 83. 6D, E4, 01
?_099:  mov     eax, dword [ebp-1CH]                    ; 1B9E _ 8B. 45, E4
        cmp     eax, dword [ebp+10H]                    ; 1BA1 _ 3B. 45, 10
        jg      ?_098                                   ; 1BA4 _ 7F, C4
        mov     eax, dword [ebp+8H]                     ; 1BA6 _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 1BA9 _ 8B. 55, 10
        lea     ecx, [edx+4H]                           ; 1BAC _ 8D. 4A, 04
        mov     edx, dword [ebp+0CH]                    ; 1BAF _ 8B. 55, 0C
        mov     dword [eax+ecx*4+4H], edx               ; 1BB2 _ 89. 54 88, 04
        mov     eax, dword [ebp+10H]                    ; 1BB6 _ 8B. 45, 10
        lea     esi, [eax+1H]                           ; 1BB9 _ 8D. 70, 01
        mov     eax, dword [ebp+0CH]                    ; 1BBC _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 1BBF _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 1BC2 _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 1BC5 _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 1BC8 _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 1BCB _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 1BCE _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 1BD1 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 1BD4 _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 1BD7 _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 1BDA _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 1BDD _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 1BE0 _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 1BE3 _ 8B. 40, 0C
        sub     esp, 8                                  ; 1BE6 _ 83. EC, 08
        push    esi                                     ; 1BE9 _ 56
        push    ebx                                     ; 1BEA _ 53
        push    ecx                                     ; 1BEB _ 51
        push    edx                                     ; 1BEC _ 52
        push    eax                                     ; 1BED _ 50
        push    dword [ebp+8H]                          ; 1BEE _ FF. 75, 08
        call    sheet_refreshmap                        ; 1BF1 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1BF6 _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 1BF9 _ 8B. 45, 10
        lea     esi, [eax+1H]                           ; 1BFC _ 8D. 70, 01
        mov     eax, dword [ebp+0CH]                    ; 1BFF _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 1C02 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 1C05 _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 1C08 _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 1C0B _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 1C0E _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 1C11 _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 1C14 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 1C17 _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 1C1A _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 1C1D _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 1C20 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 1C23 _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 1C26 _ 8B. 40, 0C
        sub     esp, 4                                  ; 1C29 _ 83. EC, 04
        push    dword [ebp-0CH]                         ; 1C2C _ FF. 75, F4
        push    esi                                     ; 1C2F _ 56
        push    ebx                                     ; 1C30 _ 53
        push    ecx                                     ; 1C31 _ 51
        push    edx                                     ; 1C32 _ 52
        push    eax                                     ; 1C33 _ 50
        push    dword [ebp+8H]                          ; 1C34 _ FF. 75, 08
        call    sheet_refresh_new                       ; 1C37 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1C3C _ 83. C4, 20
        jmp     ?_111                                   ; 1C3F _ E9, 00000244

?_100:  mov     eax, dword [ebp+8H]                     ; 1C44 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 1C47 _ 8B. 40, 10
        cmp     dword [ebp-0CH], eax                    ; 1C4A _ 39. 45, F4
        jge     ?_103                                   ; 1C4D _ 7D, 47
        mov     eax, dword [ebp-0CH]                    ; 1C4F _ 8B. 45, F4
        mov     dword [ebp-18H], eax                    ; 1C52 _ 89. 45, E8
        jmp     ?_102                                   ; 1C55 _ EB, 34

?_101:  mov     eax, dword [ebp-18H]                    ; 1C57 _ 8B. 45, E8
        lea     edx, [eax+1H]                           ; 1C5A _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 1C5D _ 8B. 45, 08
        add     edx, 4                                  ; 1C60 _ 83. C2, 04
        mov     edx, dword [eax+edx*4+4H]               ; 1C63 _ 8B. 54 90, 04
        mov     eax, dword [ebp+8H]                     ; 1C67 _ 8B. 45, 08
        mov     ecx, dword [ebp-18H]                    ; 1C6A _ 8B. 4D, E8
        add     ecx, 4                                  ; 1C6D _ 83. C1, 04
        mov     dword [eax+ecx*4+4H], edx               ; 1C70 _ 89. 54 88, 04
        mov     eax, dword [ebp+8H]                     ; 1C74 _ 8B. 45, 08
        mov     edx, dword [ebp-18H]                    ; 1C77 _ 8B. 55, E8
        add     edx, 4                                  ; 1C7A _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 1C7D _ 8B. 44 90, 04
        mov     edx, dword [ebp-18H]                    ; 1C81 _ 8B. 55, E8
        mov     dword [eax+18H], edx                    ; 1C84 _ 89. 50, 18
        add     dword [ebp-18H], 1                      ; 1C87 _ 83. 45, E8, 01
?_102:  mov     eax, dword [ebp+8H]                     ; 1C8B _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 1C8E _ 8B. 40, 10
        cmp     dword [ebp-18H], eax                    ; 1C91 _ 39. 45, E8
        jl      ?_101                                   ; 1C94 _ 7C, C1
?_103:  mov     eax, dword [ebp+8H]                     ; 1C96 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 1C99 _ 8B. 40, 10
        lea     edx, [eax-1H]                           ; 1C9C _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 1C9F _ 8B. 45, 08
        mov     dword [eax+10H], edx                    ; 1CA2 _ 89. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 1CA5 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 1CA8 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 1CAB _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 1CAE _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 1CB1 _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 1CB4 _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 1CB7 _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 1CBA _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 1CBD _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 1CC0 _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 1CC3 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 1CC6 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 1CC9 _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 1CCC _ 8B. 40, 0C
        sub     esp, 8                                  ; 1CCF _ 83. EC, 08
        push    0                                       ; 1CD2 _ 6A, 00
        push    ebx                                     ; 1CD4 _ 53
        push    ecx                                     ; 1CD5 _ 51
        push    edx                                     ; 1CD6 _ 52
        push    eax                                     ; 1CD7 _ 50
        push    dword [ebp+8H]                          ; 1CD8 _ FF. 75, 08
        call    sheet_refreshmap                        ; 1CDB _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1CE0 _ 83. C4, 20
        mov     eax, dword [ebp-0CH]                    ; 1CE3 _ 8B. 45, F4
        lea     esi, [eax-1H]                           ; 1CE6 _ 8D. 70, FF
        mov     eax, dword [ebp+0CH]                    ; 1CE9 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 1CEC _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 1CEF _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 1CF2 _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 1CF5 _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 1CF8 _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 1CFB _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 1CFE _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 1D01 _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 1D04 _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 1D07 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 1D0A _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 1D0D _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 1D10 _ 8B. 40, 0C
        sub     esp, 4                                  ; 1D13 _ 83. EC, 04
        push    esi                                     ; 1D16 _ 56
        push    0                                       ; 1D17 _ 6A, 00
        push    ebx                                     ; 1D19 _ 53
        push    ecx                                     ; 1D1A _ 51
        push    edx                                     ; 1D1B _ 52
        push    eax                                     ; 1D1C _ 50
        push    dword [ebp+8H]                          ; 1D1D _ FF. 75, 08
        call    sheet_refresh_new                       ; 1D20 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1D25 _ 83. C4, 20
        jmp     ?_111                                   ; 1D28 _ E9, 0000015B

?_104:  mov     eax, dword [ebp-0CH]                    ; 1D2D _ 8B. 45, F4
        cmp     eax, dword [ebp+10H]                    ; 1D30 _ 3B. 45, 10
        jge     ?_111                                   ; 1D33 _ 0F 8D, 0000014F
        cmp     dword [ebp-0CH], 0                      ; 1D39 _ 83. 7D, F4, 00
        js      ?_107                                   ; 1D3D _ 78, 56
        mov     eax, dword [ebp-0CH]                    ; 1D3F _ 8B. 45, F4
        mov     dword [ebp-14H], eax                    ; 1D42 _ 89. 45, EC
        jmp     ?_106                                   ; 1D45 _ EB, 34

?_105:  mov     eax, dword [ebp-14H]                    ; 1D47 _ 8B. 45, EC
        lea     edx, [eax+1H]                           ; 1D4A _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 1D4D _ 8B. 45, 08
        add     edx, 4                                  ; 1D50 _ 83. C2, 04
        mov     edx, dword [eax+edx*4+4H]               ; 1D53 _ 8B. 54 90, 04
        mov     eax, dword [ebp+8H]                     ; 1D57 _ 8B. 45, 08
        mov     ecx, dword [ebp-14H]                    ; 1D5A _ 8B. 4D, EC
        add     ecx, 4                                  ; 1D5D _ 83. C1, 04
        mov     dword [eax+ecx*4+4H], edx               ; 1D60 _ 89. 54 88, 04
        mov     eax, dword [ebp+8H]                     ; 1D64 _ 8B. 45, 08
        mov     edx, dword [ebp-14H]                    ; 1D67 _ 8B. 55, EC
        add     edx, 4                                  ; 1D6A _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 1D6D _ 8B. 44 90, 04
        mov     edx, dword [ebp-14H]                    ; 1D71 _ 8B. 55, EC
        mov     dword [eax+18H], edx                    ; 1D74 _ 89. 50, 18
        add     dword [ebp-14H], 1                      ; 1D77 _ 83. 45, EC, 01
?_106:  mov     eax, dword [ebp-14H]                    ; 1D7B _ 8B. 45, EC
        cmp     eax, dword [ebp+10H]                    ; 1D7E _ 3B. 45, 10
        jl      ?_105                                   ; 1D81 _ 7C, C4
        mov     eax, dword [ebp+8H]                     ; 1D83 _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 1D86 _ 8B. 55, 10
        lea     ecx, [edx+4H]                           ; 1D89 _ 8D. 4A, 04
        mov     edx, dword [ebp+0CH]                    ; 1D8C _ 8B. 55, 0C
        mov     dword [eax+ecx*4+4H], edx               ; 1D8F _ 89. 54 88, 04
        jmp     ?_110                                   ; 1D93 _ EB, 72

?_107:  cmp     dword [ebp-0CH], 0                      ; 1D95 _ 83. 7D, F4, 00
        jns     ?_110                                   ; 1D99 _ 79, 6C
        mov     eax, dword [ebp+8H]                     ; 1D9B _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 1D9E _ 8B. 40, 10
        mov     dword [ebp-10H], eax                    ; 1DA1 _ 89. 45, F0
        jmp     ?_109                                   ; 1DA4 _ EB, 3A

?_108:  mov     eax, dword [ebp-10H]                    ; 1DA6 _ 8B. 45, F0
        lea     ecx, [eax+1H]                           ; 1DA9 _ 8D. 48, 01
        mov     eax, dword [ebp+8H]                     ; 1DAC _ 8B. 45, 08
        mov     edx, dword [ebp-10H]                    ; 1DAF _ 8B. 55, F0
        add     edx, 4                                  ; 1DB2 _ 83. C2, 04
        mov     edx, dword [eax+edx*4+4H]               ; 1DB5 _ 8B. 54 90, 04
        mov     eax, dword [ebp+8H]                     ; 1DB9 _ 8B. 45, 08
        add     ecx, 4                                  ; 1DBC _ 83. C1, 04
        mov     dword [eax+ecx*4+4H], edx               ; 1DBF _ 89. 54 88, 04
        mov     eax, dword [ebp-10H]                    ; 1DC3 _ 8B. 45, F0
        lea     edx, [eax+1H]                           ; 1DC6 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 1DC9 _ 8B. 45, 08
        add     edx, 4                                  ; 1DCC _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 1DCF _ 8B. 44 90, 04
        mov     edx, dword [ebp-10H]                    ; 1DD3 _ 8B. 55, F0
        add     edx, 1                                  ; 1DD6 _ 83. C2, 01
        mov     dword [eax+18H], edx                    ; 1DD9 _ 89. 50, 18
        sub     dword [ebp-10H], 1                      ; 1DDC _ 83. 6D, F0, 01
?_109:  mov     eax, dword [ebp-10H]                    ; 1DE0 _ 8B. 45, F0
        cmp     eax, dword [ebp+10H]                    ; 1DE3 _ 3B. 45, 10
        jge     ?_108                                   ; 1DE6 _ 7D, BE
        mov     eax, dword [ebp+8H]                     ; 1DE8 _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 1DEB _ 8B. 55, 10
        lea     ecx, [edx+4H]                           ; 1DEE _ 8D. 4A, 04
        mov     edx, dword [ebp+0CH]                    ; 1DF1 _ 8B. 55, 0C
        mov     dword [eax+ecx*4+4H], edx               ; 1DF4 _ 89. 54 88, 04
        mov     eax, dword [ebp+8H]                     ; 1DF8 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 1DFB _ 8B. 40, 10
        lea     edx, [eax+1H]                           ; 1DFE _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 1E01 _ 8B. 45, 08
        mov     dword [eax+10H], edx                    ; 1E04 _ 89. 50, 10
?_110:  mov     eax, dword [ebp+0CH]                    ; 1E07 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 1E0A _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 1E0D _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 1E10 _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 1E13 _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 1E16 _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 1E19 _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 1E1C _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 1E1F _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 1E22 _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 1E25 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 1E28 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 1E2B _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 1E2E _ 8B. 40, 0C
        sub     esp, 8                                  ; 1E31 _ 83. EC, 08
        push    dword [ebp+10H]                         ; 1E34 _ FF. 75, 10
        push    ebx                                     ; 1E37 _ 53
        push    ecx                                     ; 1E38 _ 51
        push    edx                                     ; 1E39 _ 52
        push    eax                                     ; 1E3A _ 50
        push    dword [ebp+8H]                          ; 1E3B _ FF. 75, 08
        call    sheet_refreshmap                        ; 1E3E _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1E43 _ 83. C4, 20
        mov     eax, dword [ebp+0CH]                    ; 1E46 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 1E49 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 1E4C _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 1E4F _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 1E52 _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 1E55 _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 1E58 _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 1E5B _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 1E5E _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 1E61 _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 1E64 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 1E67 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 1E6A _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 1E6D _ 8B. 40, 0C
        sub     esp, 4                                  ; 1E70 _ 83. EC, 04
        push    dword [ebp+10H]                         ; 1E73 _ FF. 75, 10
        push    dword [ebp+10H]                         ; 1E76 _ FF. 75, 10
        push    ebx                                     ; 1E79 _ 53
        push    ecx                                     ; 1E7A _ 51
        push    edx                                     ; 1E7B _ 52
        push    eax                                     ; 1E7C _ 50
        push    dword [ebp+8H]                          ; 1E7D _ FF. 75, 08
        call    sheet_refresh_new                       ; 1E80 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1E85 _ 83. C4, 20
?_111:  nop                                             ; 1E88 _ 90
        lea     esp, [ebp-8H]                           ; 1E89 _ 8D. 65, F8
        pop     ebx                                     ; 1E8C _ 5B
        pop     esi                                     ; 1E8D _ 5E
        pop     ebp                                     ; 1E8E _ 5D
        ret                                             ; 1E8F _ C3
; sheet_level_updown End of function

sheet_refresh:; Function begin
        push    ebp                                     ; 1E90 _ 55
        mov     ebp, esp                                ; 1E91 _ 89. E5
        push    edi                                     ; 1E93 _ 57
        push    esi                                     ; 1E94 _ 56
        push    ebx                                     ; 1E95 _ 53
        sub     esp, 28                                 ; 1E96 _ 83. EC, 1C
        mov     eax, dword [ebp+0CH]                    ; 1E99 _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 1E9C _ 8B. 40, 18
        test    eax, eax                                ; 1E9F _ 85. C0
        js      ?_112                                   ; 1EA1 _ 78, 52
        mov     eax, dword [ebp+0CH]                    ; 1EA3 _ 8B. 45, 0C
        mov     ebx, dword [eax+18H]                    ; 1EA6 _ 8B. 58, 18
        mov     eax, dword [ebp+0CH]                    ; 1EA9 _ 8B. 45, 0C
        mov     ecx, dword [eax+18H]                    ; 1EAC _ 8B. 48, 18
        mov     eax, dword [ebp+0CH]                    ; 1EAF _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 1EB2 _ 8B. 50, 10
        mov     eax, dword [ebp+1CH]                    ; 1EB5 _ 8B. 45, 1C
        lea     edi, [edx+eax]                          ; 1EB8 _ 8D. 3C 02
        mov     eax, dword [ebp+0CH]                    ; 1EBB _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 1EBE _ 8B. 50, 0C
        mov     eax, dword [ebp+18H]                    ; 1EC1 _ 8B. 45, 18
        lea     esi, [edx+eax]                          ; 1EC4 _ 8D. 34 02
        mov     eax, dword [ebp+0CH]                    ; 1EC7 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 1ECA _ 8B. 50, 10
        mov     eax, dword [ebp+14H]                    ; 1ECD _ 8B. 45, 14
        add     edx, eax                                ; 1ED0 _ 01. C2
        mov     eax, dword [ebp+0CH]                    ; 1ED2 _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 1ED5 _ 8B. 40, 0C
        mov     dword [ebp-1CH], eax                    ; 1ED8 _ 89. 45, E4
        mov     eax, dword [ebp+10H]                    ; 1EDB _ 8B. 45, 10
        add     eax, dword [ebp-1CH]                    ; 1EDE _ 03. 45, E4
        sub     esp, 4                                  ; 1EE1 _ 83. EC, 04
        push    ebx                                     ; 1EE4 _ 53
        push    ecx                                     ; 1EE5 _ 51
        push    edi                                     ; 1EE6 _ 57
        push    esi                                     ; 1EE7 _ 56
        push    edx                                     ; 1EE8 _ 52
        push    eax                                     ; 1EE9 _ 50
        push    dword [ebp+8H]                          ; 1EEA _ FF. 75, 08
        call    sheet_refresh_new                       ; 1EED _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1EF2 _ 83. C4, 20
?_112:  mov     eax, 0                                  ; 1EF5 _ B8, 00000000
        lea     esp, [ebp-0CH]                          ; 1EFA _ 8D. 65, F4
        pop     ebx                                     ; 1EFD _ 5B
        pop     esi                                     ; 1EFE _ 5E
        pop     edi                                     ; 1EFF _ 5F
        pop     ebp                                     ; 1F00 _ 5D
        ret                                             ; 1F01 _ C3
; sheet_refresh End of function

sheet_slide:; Function begin
        push    ebp                                     ; 1F02 _ 55
        mov     ebp, esp                                ; 1F03 _ 89. E5
        push    esi                                     ; 1F05 _ 56
        push    ebx                                     ; 1F06 _ 53
        sub     esp, 16                                 ; 1F07 _ 83. EC, 10
        mov     eax, dword [ebp+0CH]                    ; 1F0A _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 1F0D _ 8B. 40, 0C
        mov     dword [ebp-10H], eax                    ; 1F10 _ 89. 45, F0
        mov     eax, dword [ebp+0CH]                    ; 1F13 _ 8B. 45, 0C
        mov     eax, dword [eax+10H]                    ; 1F16 _ 8B. 40, 10
        mov     dword [ebp-0CH], eax                    ; 1F19 _ 89. 45, F4
        mov     eax, dword [ebp+0CH]                    ; 1F1C _ 8B. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 1F1F _ 8B. 55, 10
        mov     dword [eax+0CH], edx                    ; 1F22 _ 89. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 1F25 _ 8B. 45, 0C
        mov     edx, dword [ebp+14H]                    ; 1F28 _ 8B. 55, 14
        mov     dword [eax+10H], edx                    ; 1F2B _ 89. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 1F2E _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 1F31 _ 8B. 40, 18
        test    eax, eax                                ; 1F34 _ 85. C0
        js      ?_113                                   ; 1F36 _ 0F 88, 000000D3
        mov     eax, dword [ebp+0CH]                    ; 1F3C _ 8B. 45, 0C
        mov     edx, dword [eax+8H]                     ; 1F3F _ 8B. 50, 08
        mov     eax, dword [ebp-0CH]                    ; 1F42 _ 8B. 45, F4
        add     edx, eax                                ; 1F45 _ 01. C2
        mov     eax, dword [ebp+0CH]                    ; 1F47 _ 8B. 45, 0C
        mov     ecx, dword [eax+4H]                     ; 1F4A _ 8B. 48, 04
        mov     eax, dword [ebp-10H]                    ; 1F4D _ 8B. 45, F0
        add     eax, ecx                                ; 1F50 _ 01. C8
        sub     esp, 8                                  ; 1F52 _ 83. EC, 08
        push    0                                       ; 1F55 _ 6A, 00
        push    edx                                     ; 1F57 _ 52
        push    eax                                     ; 1F58 _ 50
        push    dword [ebp-0CH]                         ; 1F59 _ FF. 75, F4
        push    dword [ebp-10H]                         ; 1F5C _ FF. 75, F0
        push    dword [ebp+8H]                          ; 1F5F _ FF. 75, 08
        call    sheet_refreshmap                        ; 1F62 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1F67 _ 83. C4, 20
        mov     eax, dword [ebp+0CH]                    ; 1F6A _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 1F6D _ 8B. 40, 18
        mov     edx, dword [ebp+0CH]                    ; 1F70 _ 8B. 55, 0C
        mov     ecx, dword [edx+8H]                     ; 1F73 _ 8B. 4A, 08
        mov     edx, dword [ebp+14H]                    ; 1F76 _ 8B. 55, 14
        add     ecx, edx                                ; 1F79 _ 01. D1
        mov     edx, dword [ebp+0CH]                    ; 1F7B _ 8B. 55, 0C
        mov     ebx, dword [edx+4H]                     ; 1F7E _ 8B. 5A, 04
        mov     edx, dword [ebp+10H]                    ; 1F81 _ 8B. 55, 10
        add     edx, ebx                                ; 1F84 _ 01. DA
        sub     esp, 8                                  ; 1F86 _ 83. EC, 08
        push    eax                                     ; 1F89 _ 50
        push    ecx                                     ; 1F8A _ 51
        push    edx                                     ; 1F8B _ 52
        push    dword [ebp+14H]                         ; 1F8C _ FF. 75, 14
        push    dword [ebp+10H]                         ; 1F8F _ FF. 75, 10
        push    dword [ebp+8H]                          ; 1F92 _ FF. 75, 08
        call    sheet_refreshmap                        ; 1F95 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1F9A _ 83. C4, 20
        mov     eax, dword [ebp+0CH]                    ; 1F9D _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 1FA0 _ 8B. 40, 18
        lea     ecx, [eax-1H]                           ; 1FA3 _ 8D. 48, FF
        mov     eax, dword [ebp+0CH]                    ; 1FA6 _ 8B. 45, 0C
        mov     edx, dword [eax+8H]                     ; 1FA9 _ 8B. 50, 08
        mov     eax, dword [ebp-0CH]                    ; 1FAC _ 8B. 45, F4
        add     edx, eax                                ; 1FAF _ 01. C2
        mov     eax, dword [ebp+0CH]                    ; 1FB1 _ 8B. 45, 0C
        mov     ebx, dword [eax+4H]                     ; 1FB4 _ 8B. 58, 04
        mov     eax, dword [ebp-10H]                    ; 1FB7 _ 8B. 45, F0
        add     eax, ebx                                ; 1FBA _ 01. D8
        sub     esp, 4                                  ; 1FBC _ 83. EC, 04
        push    ecx                                     ; 1FBF _ 51
        push    0                                       ; 1FC0 _ 6A, 00
        push    edx                                     ; 1FC2 _ 52
        push    eax                                     ; 1FC3 _ 50
        push    dword [ebp-0CH]                         ; 1FC4 _ FF. 75, F4
        push    dword [ebp-10H]                         ; 1FC7 _ FF. 75, F0
        push    dword [ebp+8H]                          ; 1FCA _ FF. 75, 08
        call    sheet_refresh_new                       ; 1FCD _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1FD2 _ 83. C4, 20
        mov     eax, dword [ebp+0CH]                    ; 1FD5 _ 8B. 45, 0C
        mov     edx, dword [eax+18H]                    ; 1FD8 _ 8B. 50, 18
        mov     eax, dword [ebp+0CH]                    ; 1FDB _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 1FDE _ 8B. 40, 18
        mov     ecx, dword [ebp+0CH]                    ; 1FE1 _ 8B. 4D, 0C
        mov     ebx, dword [ecx+8H]                     ; 1FE4 _ 8B. 59, 08
        mov     ecx, dword [ebp+14H]                    ; 1FE7 _ 8B. 4D, 14
        add     ebx, ecx                                ; 1FEA _ 01. CB
        mov     ecx, dword [ebp+0CH]                    ; 1FEC _ 8B. 4D, 0C
        mov     esi, dword [ecx+4H]                     ; 1FEF _ 8B. 71, 04
        mov     ecx, dword [ebp+10H]                    ; 1FF2 _ 8B. 4D, 10
        add     ecx, esi                                ; 1FF5 _ 01. F1
        sub     esp, 4                                  ; 1FF7 _ 83. EC, 04
        push    edx                                     ; 1FFA _ 52
        push    eax                                     ; 1FFB _ 50
        push    ebx                                     ; 1FFC _ 53
        push    ecx                                     ; 1FFD _ 51
        push    dword [ebp+14H]                         ; 1FFE _ FF. 75, 14
        push    dword [ebp+10H]                         ; 2001 _ FF. 75, 10
        push    dword [ebp+8H]                          ; 2004 _ FF. 75, 08
        call    sheet_refresh_new                       ; 2007 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 200C _ 83. C4, 20
?_113:  nop                                             ; 200F _ 90
        lea     esp, [ebp-8H]                           ; 2010 _ 8D. 65, F8
        pop     ebx                                     ; 2013 _ 5B
        pop     esi                                     ; 2014 _ 5E
        pop     ebp                                     ; 2015 _ 5D
        ret                                             ; 2016 _ C3
; sheet_slide End of function

sheet_refresh_new:; Function begin
        push    ebp                                     ; 2017 _ 55
        mov     ebp, esp                                ; 2018 _ 89. E5
        sub     esp, 48                                 ; 201A _ 83. EC, 30
        mov     eax, dword [ebp+8H]                     ; 201D _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 2020 _ 8B. 00
        mov     dword [ebp-18H], eax                    ; 2022 _ 89. 45, E8
        mov     eax, dword [ebp+8H]                     ; 2025 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 2028 _ 8B. 40, 04
        mov     dword [ebp-14H], eax                    ; 202B _ 89. 45, EC
        mov     eax, dword [ebp+1CH]                    ; 202E _ 8B. 45, 1C
        mov     dword [ebp-24H], eax                    ; 2031 _ 89. 45, DC
        jmp     ?_120                                   ; 2034 _ E9, 00000118

?_114:  mov     eax, dword [ebp+8H]                     ; 2039 _ 8B. 45, 08
        mov     edx, dword [ebp-24H]                    ; 203C _ 8B. 55, DC
        add     edx, 4                                  ; 203F _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 2042 _ 8B. 44 90, 04
        mov     dword [ebp-10H], eax                    ; 2046 _ 89. 45, F0
        mov     eax, dword [ebp-10H]                    ; 2049 _ 8B. 45, F0
        mov     eax, dword [eax]                        ; 204C _ 8B. 00
        mov     dword [ebp-0CH], eax                    ; 204E _ 89. 45, F4
        mov     eax, dword [ebp-10H]                    ; 2051 _ 8B. 45, F0
        mov     edx, dword [ebp+8H]                     ; 2054 _ 8B. 55, 08
        add     edx, 1044                               ; 2057 _ 81. C2, 00000414
        sub     eax, edx                                ; 205D _ 29. D0
        sar     eax, 5                                  ; 205F _ C1. F8, 05
        mov     byte [ebp-26H], al                      ; 2062 _ 88. 45, DA
        mov     dword [ebp-20H], 0                      ; 2065 _ C7. 45, E0, 00000000
        jmp     ?_119                                   ; 206C _ E9, 000000CD

?_115:  mov     eax, dword [ebp-10H]                    ; 2071 _ 8B. 45, F0
        mov     edx, dword [eax+10H]                    ; 2074 _ 8B. 50, 10
        mov     eax, dword [ebp-20H]                    ; 2077 _ 8B. 45, E0
        add     eax, edx                                ; 207A _ 01. D0
        mov     dword [ebp-8H], eax                     ; 207C _ 89. 45, F8
        mov     dword [ebp-1CH], 0                      ; 207F _ C7. 45, E4, 00000000
        jmp     ?_118                                   ; 2086 _ E9, 000000A0

?_116:  mov     eax, dword [ebp-10H]                    ; 208B _ 8B. 45, F0
        mov     edx, dword [eax+0CH]                    ; 208E _ 8B. 50, 0C
        mov     eax, dword [ebp-1CH]                    ; 2091 _ 8B. 45, E4
        add     eax, edx                                ; 2094 _ 01. D0
        mov     dword [ebp-4H], eax                     ; 2096 _ 89. 45, FC
        mov     eax, dword [ebp+0CH]                    ; 2099 _ 8B. 45, 0C
        cmp     eax, dword [ebp-4H]                     ; 209C _ 3B. 45, FC
        jg      ?_117                                   ; 209F _ 0F 8F, 00000082
        mov     eax, dword [ebp-4H]                     ; 20A5 _ 8B. 45, FC
        cmp     eax, dword [ebp+14H]                    ; 20A8 _ 3B. 45, 14
        jge     ?_117                                   ; 20AB _ 7D, 7A
        mov     eax, dword [ebp+10H]                    ; 20AD _ 8B. 45, 10
        cmp     eax, dword [ebp-8H]                     ; 20B0 _ 3B. 45, F8
        jg      ?_117                                   ; 20B3 _ 7F, 72
        mov     eax, dword [ebp-8H]                     ; 20B5 _ 8B. 45, F8
        cmp     eax, dword [ebp+18H]                    ; 20B8 _ 3B. 45, 18
        jge     ?_117                                   ; 20BB _ 7D, 6A
        mov     eax, dword [ebp-10H]                    ; 20BD _ 8B. 45, F0
        mov     eax, dword [eax+4H]                     ; 20C0 _ 8B. 40, 04
        imul    eax, dword [ebp-20H]                    ; 20C3 _ 0F AF. 45, E0
        mov     edx, eax                                ; 20C7 _ 89. C2
        mov     eax, dword [ebp-1CH]                    ; 20C9 _ 8B. 45, E4
        add     eax, edx                                ; 20CC _ 01. D0
        mov     edx, eax                                ; 20CE _ 89. C2
        mov     eax, dword [ebp-0CH]                    ; 20D0 _ 8B. 45, F4
        add     eax, edx                                ; 20D3 _ 01. D0
        movzx   eax, byte [eax]                         ; 20D5 _ 0F B6. 00
        mov     byte [ebp-25H], al                      ; 20D8 _ 88. 45, DB
        mov     eax, dword [ebp+8H]                     ; 20DB _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 20DE _ 8B. 40, 08
        imul    eax, dword [ebp-8H]                     ; 20E1 _ 0F AF. 45, F8
        mov     edx, eax                                ; 20E5 _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 20E7 _ 8B. 45, FC
        add     eax, edx                                ; 20EA _ 01. D0
        mov     edx, eax                                ; 20EC _ 89. C2
        mov     eax, dword [ebp-14H]                    ; 20EE _ 8B. 45, EC
        add     eax, edx                                ; 20F1 _ 01. D0
        movzx   eax, byte [eax]                         ; 20F3 _ 0F B6. 00
        cmp     byte [ebp-26H], al                      ; 20F6 _ 38. 45, DA
        jnz     ?_117                                   ; 20F9 _ 75, 2C
        movzx   edx, byte [ebp-25H]                     ; 20FB _ 0F B6. 55, DB
        mov     eax, dword [ebp-10H]                    ; 20FF _ 8B. 45, F0
        mov     eax, dword [eax+14H]                    ; 2102 _ 8B. 40, 14
        cmp     edx, eax                                ; 2105 _ 39. C2
        jz      ?_117                                   ; 2107 _ 74, 1E
        mov     eax, dword [ebp+8H]                     ; 2109 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 210C _ 8B. 40, 08
        imul    eax, dword [ebp-8H]                     ; 210F _ 0F AF. 45, F8
        mov     edx, eax                                ; 2113 _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 2115 _ 8B. 45, FC
        add     eax, edx                                ; 2118 _ 01. D0
        mov     edx, eax                                ; 211A _ 89. C2
        mov     eax, dword [ebp-18H]                    ; 211C _ 8B. 45, E8
        add     edx, eax                                ; 211F _ 01. C2
        movzx   eax, byte [ebp-25H]                     ; 2121 _ 0F B6. 45, DB
        mov     byte [edx], al                          ; 2125 _ 88. 02
?_117:  add     dword [ebp-1CH], 1                      ; 2127 _ 83. 45, E4, 01
?_118:  mov     eax, dword [ebp-10H]                    ; 212B _ 8B. 45, F0
        mov     eax, dword [eax+4H]                     ; 212E _ 8B. 40, 04
        cmp     dword [ebp-1CH], eax                    ; 2131 _ 39. 45, E4
        jl      ?_116                                   ; 2134 _ 0F 8C, FFFFFF51
        add     dword [ebp-20H], 1                      ; 213A _ 83. 45, E0, 01
?_119:  mov     eax, dword [ebp-10H]                    ; 213E _ 8B. 45, F0
        mov     eax, dword [eax+8H]                     ; 2141 _ 8B. 40, 08
        cmp     dword [ebp-20H], eax                    ; 2144 _ 39. 45, E0
        jl      ?_115                                   ; 2147 _ 0F 8C, FFFFFF24
        add     dword [ebp-24H], 1                      ; 214D _ 83. 45, DC, 01
?_120:  mov     eax, dword [ebp-24H]                    ; 2151 _ 8B. 45, DC
        cmp     eax, dword [ebp+20H]                    ; 2154 _ 3B. 45, 20
        jle     ?_114                                   ; 2157 _ 0F 8E, FFFFFEDC
        nop                                             ; 215D _ 90
        leave                                           ; 215E _ C9
        ret                                             ; 215F _ C3
; sheet_refresh_new End of function

sheet_refreshmap:; Function begin
        push    ebp                                     ; 2160 _ 55
        mov     ebp, esp                                ; 2161 _ 89. E5
        sub     esp, 64                                 ; 2163 _ 83. EC, 40
        mov     eax, dword [ebp+8H]                     ; 2166 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 2169 _ 8B. 40, 04
        mov     dword [ebp-14H], eax                    ; 216C _ 89. 45, EC
        cmp     dword [ebp+0CH], 0                      ; 216F _ 83. 7D, 0C, 00
        jns     ?_121                                   ; 2173 _ 79, 07
        mov     dword [ebp+0CH], 0                      ; 2175 _ C7. 45, 0C, 00000000
?_121:  mov     eax, dword [ebp+8H]                     ; 217C _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 217F _ 8B. 40, 08
        cmp     dword [ebp+0CH], eax                    ; 2182 _ 39. 45, 0C
        jle     ?_122                                   ; 2185 _ 7E, 09
        mov     eax, dword [ebp+8H]                     ; 2187 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 218A _ 8B. 40, 08
        mov     dword [ebp+0CH], eax                    ; 218D _ 89. 45, 0C
?_122:  cmp     dword [ebp+10H], 0                      ; 2190 _ 83. 7D, 10, 00
        jns     ?_123                                   ; 2194 _ 79, 07
        mov     dword [ebp+10H], 0                      ; 2196 _ C7. 45, 10, 00000000
?_123:  mov     eax, dword [ebp+8H]                     ; 219D _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 21A0 _ 8B. 40, 0C
        cmp     dword [ebp+10H], eax                    ; 21A3 _ 39. 45, 10
        jle     ?_124                                   ; 21A6 _ 7E, 09
        mov     eax, dword [ebp+8H]                     ; 21A8 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 21AB _ 8B. 40, 0C
        mov     dword [ebp+10H], eax                    ; 21AE _ 89. 45, 10
?_124:  mov     eax, dword [ebp+1CH]                    ; 21B1 _ 8B. 45, 1C
        mov     dword [ebp-20H], eax                    ; 21B4 _ 89. 45, E0
        jmp     ?_135                                   ; 21B7 _ E9, 00000140

?_125:  mov     eax, dword [ebp+8H]                     ; 21BC _ 8B. 45, 08
        mov     edx, dword [ebp-20H]                    ; 21BF _ 8B. 55, E0
        add     edx, 4                                  ; 21C2 _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 21C5 _ 8B. 44 90, 04
        mov     dword [ebp-10H], eax                    ; 21C9 _ 89. 45, F0
        mov     eax, dword [ebp-10H]                    ; 21CC _ 8B. 45, F0
        mov     edx, dword [ebp+8H]                     ; 21CF _ 8B. 55, 08
        add     edx, 1044                               ; 21D2 _ 81. C2, 00000414
        sub     eax, edx                                ; 21D8 _ 29. D0
        sar     eax, 5                                  ; 21DA _ C1. F8, 05
        mov     byte [ebp-31H], al                      ; 21DD _ 88. 45, CF
        mov     eax, dword [ebp-10H]                    ; 21E0 _ 8B. 45, F0
        mov     eax, dword [eax]                        ; 21E3 _ 8B. 00
        mov     dword [ebp-0CH], eax                    ; 21E5 _ 89. 45, F4
        mov     eax, dword [ebp-10H]                    ; 21E8 _ 8B. 45, F0
        mov     eax, dword [eax+0CH]                    ; 21EB _ 8B. 40, 0C
        mov     edx, dword [ebp+0CH]                    ; 21EE _ 8B. 55, 0C
        sub     edx, eax                                ; 21F1 _ 29. C2
        mov     eax, edx                                ; 21F3 _ 89. D0
        mov     dword [ebp-30H], eax                    ; 21F5 _ 89. 45, D0
        mov     eax, dword [ebp-10H]                    ; 21F8 _ 8B. 45, F0
        mov     eax, dword [eax+10H]                    ; 21FB _ 8B. 40, 10
        mov     edx, dword [ebp+10H]                    ; 21FE _ 8B. 55, 10
        sub     edx, eax                                ; 2201 _ 29. C2
        mov     eax, edx                                ; 2203 _ 89. D0
        mov     dword [ebp-2CH], eax                    ; 2205 _ 89. 45, D4
        mov     eax, dword [ebp-10H]                    ; 2208 _ 8B. 45, F0
        mov     eax, dword [eax+0CH]                    ; 220B _ 8B. 40, 0C
        mov     edx, dword [ebp+14H]                    ; 220E _ 8B. 55, 14
        sub     edx, eax                                ; 2211 _ 29. C2
        mov     eax, edx                                ; 2213 _ 89. D0
        mov     dword [ebp-28H], eax                    ; 2215 _ 89. 45, D8
        mov     eax, dword [ebp-10H]                    ; 2218 _ 8B. 45, F0
        mov     eax, dword [eax+10H]                    ; 221B _ 8B. 40, 10
        mov     edx, dword [ebp+18H]                    ; 221E _ 8B. 55, 18
        sub     edx, eax                                ; 2221 _ 29. C2
        mov     eax, edx                                ; 2223 _ 89. D0
        mov     dword [ebp-24H], eax                    ; 2225 _ 89. 45, DC
        cmp     dword [ebp-30H], 0                      ; 2228 _ 83. 7D, D0, 00
        jns     ?_126                                   ; 222C _ 79, 07
        mov     dword [ebp-30H], 0                      ; 222E _ C7. 45, D0, 00000000
?_126:  cmp     dword [ebp-2CH], 0                      ; 2235 _ 83. 7D, D4, 00
        jns     ?_127                                   ; 2239 _ 79, 07
        mov     dword [ebp-2CH], 0                      ; 223B _ C7. 45, D4, 00000000
?_127:  mov     eax, dword [ebp-10H]                    ; 2242 _ 8B. 45, F0
        mov     eax, dword [eax+4H]                     ; 2245 _ 8B. 40, 04
        cmp     dword [ebp-28H], eax                    ; 2248 _ 39. 45, D8
        jle     ?_128                                   ; 224B _ 7E, 09
        mov     eax, dword [ebp-10H]                    ; 224D _ 8B. 45, F0
        mov     eax, dword [eax+4H]                     ; 2250 _ 8B. 40, 04
        mov     dword [ebp-28H], eax                    ; 2253 _ 89. 45, D8
?_128:  mov     eax, dword [ebp-10H]                    ; 2256 _ 8B. 45, F0
        mov     eax, dword [eax+8H]                     ; 2259 _ 8B. 40, 08
        cmp     dword [ebp-24H], eax                    ; 225C _ 39. 45, DC
        jle     ?_129                                   ; 225F _ 7E, 09
        mov     eax, dword [ebp-10H]                    ; 2261 _ 8B. 45, F0
        mov     eax, dword [eax+8H]                     ; 2264 _ 8B. 40, 08
        mov     dword [ebp-24H], eax                    ; 2267 _ 89. 45, DC
?_129:  mov     eax, dword [ebp-2CH]                    ; 226A _ 8B. 45, D4
        mov     dword [ebp-1CH], eax                    ; 226D _ 89. 45, E4
        jmp     ?_134                                   ; 2270 _ EB, 7A

?_130:  mov     eax, dword [ebp-10H]                    ; 2272 _ 8B. 45, F0
        mov     edx, dword [eax+10H]                    ; 2275 _ 8B. 50, 10
        mov     eax, dword [ebp-1CH]                    ; 2278 _ 8B. 45, E4
        add     eax, edx                                ; 227B _ 01. D0
        mov     dword [ebp-8H], eax                     ; 227D _ 89. 45, F8
        mov     eax, dword [ebp-30H]                    ; 2280 _ 8B. 45, D0
        mov     dword [ebp-18H], eax                    ; 2283 _ 89. 45, E8
        jmp     ?_133                                   ; 2286 _ EB, 58

?_131:  mov     eax, dword [ebp-10H]                    ; 2288 _ 8B. 45, F0
        mov     edx, dword [eax+0CH]                    ; 228B _ 8B. 50, 0C
        mov     eax, dword [ebp-18H]                    ; 228E _ 8B. 45, E8
        add     eax, edx                                ; 2291 _ 01. D0
        mov     dword [ebp-4H], eax                     ; 2293 _ 89. 45, FC
        mov     eax, dword [ebp-10H]                    ; 2296 _ 8B. 45, F0
        mov     eax, dword [eax+4H]                     ; 2299 _ 8B. 40, 04
        imul    eax, dword [ebp-1CH]                    ; 229C _ 0F AF. 45, E4
        mov     edx, eax                                ; 22A0 _ 89. C2
        mov     eax, dword [ebp-18H]                    ; 22A2 _ 8B. 45, E8
        add     eax, edx                                ; 22A5 _ 01. D0
        mov     edx, eax                                ; 22A7 _ 89. C2
        mov     eax, dword [ebp-0CH]                    ; 22A9 _ 8B. 45, F4
        add     eax, edx                                ; 22AC _ 01. D0
        movzx   eax, byte [eax]                         ; 22AE _ 0F B6. 00
        movzx   edx, al                                 ; 22B1 _ 0F B6. D0
        mov     eax, dword [ebp-10H]                    ; 22B4 _ 8B. 45, F0
        mov     eax, dword [eax+14H]                    ; 22B7 _ 8B. 40, 14
        cmp     edx, eax                                ; 22BA _ 39. C2
        jz      ?_132                                   ; 22BC _ 74, 1E
        mov     eax, dword [ebp+8H]                     ; 22BE _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 22C1 _ 8B. 40, 08
        imul    eax, dword [ebp-8H]                     ; 22C4 _ 0F AF. 45, F8
        mov     edx, eax                                ; 22C8 _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 22CA _ 8B. 45, FC
        add     eax, edx                                ; 22CD _ 01. D0
        mov     edx, eax                                ; 22CF _ 89. C2
        mov     eax, dword [ebp-14H]                    ; 22D1 _ 8B. 45, EC
        add     edx, eax                                ; 22D4 _ 01. C2
        movzx   eax, byte [ebp-31H]                     ; 22D6 _ 0F B6. 45, CF
        mov     byte [edx], al                          ; 22DA _ 88. 02
?_132:  add     dword [ebp-18H], 1                      ; 22DC _ 83. 45, E8, 01
?_133:  mov     eax, dword [ebp-18H]                    ; 22E0 _ 8B. 45, E8
        cmp     eax, dword [ebp-28H]                    ; 22E3 _ 3B. 45, D8
        jl      ?_131                                   ; 22E6 _ 7C, A0
        add     dword [ebp-1CH], 1                      ; 22E8 _ 83. 45, E4, 01
?_134:  mov     eax, dword [ebp-1CH]                    ; 22EC _ 8B. 45, E4
        cmp     eax, dword [ebp-24H]                    ; 22EF _ 3B. 45, DC
        jl      ?_130                                   ; 22F2 _ 0F 8C, FFFFFF7A
        add     dword [ebp-20H], 1                      ; 22F8 _ 83. 45, E0, 01
?_135:  mov     eax, dword [ebp+8H]                     ; 22FC _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 22FF _ 8B. 40, 10
        cmp     dword [ebp-20H], eax                    ; 2302 _ 39. 45, E0
        jle     ?_125                                   ; 2305 _ 0F 8E, FFFFFEB1
        nop                                             ; 230B _ 90
        leave                                           ; 230C _ C9
        ret                                             ; 230D _ C3
; sheet_refreshmap End of function



?_136:                                                  ; byte
        db 54H, 6FH, 74H, 61H, 6CH, 20H, 4DH, 65H       ; 0000 _ Total Me
        db 6DH, 20H, 53H, 69H, 7AH, 65H, 20H, 69H       ; 0008 _ m Size i
        db 73H, 3AH, 20H, 00H                           ; 0010 _ s: .

?_137:                                                  ; byte
        db 4DH, 42H, 00H                                ; 0014 _ MB.

?_138:                                                  ; byte
        db 43H, 6FH, 75H, 6EH, 74H, 65H, 72H, 00H       ; 0017 _ Counter.

?_139:                                                  ; byte
        db 35H, 5BH, 73H, 65H, 63H, 73H, 5DH, 00H       ; 001F _ 5[secs].

?_140:                                                  ; byte
        db 54H, 68H, 65H, 20H, 6DH, 6FH, 75H, 73H       ; 0027 _ The mous
        db 65H, 20H, 69H, 73H, 20H, 6DH, 6FH, 76H       ; 002F _ e is mov
        db 69H, 6EH, 67H, 2EH, 2EH, 2EH, 00H            ; 0037 _ ing....

?_141:                                                  ; byte
        db 50H, 61H, 67H, 65H, 20H, 69H, 73H, 3AH       ; 003E _ Page is:
        db 20H, 00H                                     ; 0046 _  .

?_142:                                                  ; byte
        db 42H, 61H, 73H, 65H, 41H, 64H, 64H, 72H       ; 0048 _ BaseAddr
        db 4CH, 6FH, 77H, 3AH, 20H, 00H                 ; 0050 _ Low: .

?_143:                                                  ; byte
        db 42H, 61H, 73H, 65H, 41H, 64H, 64H, 72H       ; 0056 _ BaseAddr
        db 48H, 69H, 67H, 68H, 3AH, 20H, 00H            ; 005E _ High: .

?_144:                                                  ; byte
        db 4CH, 65H, 6EH, 67H, 74H, 68H, 4CH, 6FH       ; 0065 _ LengthLo
        db 77H, 3AH, 20H, 00H                           ; 006D _ w: .

?_145:                                                  ; byte
        db 4CH, 65H, 6EH, 67H, 74H, 68H, 48H, 69H       ; 0071 _ LengthHi
        db 67H, 68H, 3AH, 20H, 00H                      ; 0079 _ gh: .

?_146:                                                  ; byte
        db 54H, 79H, 70H, 65H, 3AH, 20H, 00H            ; 007E _ Type: .



keyVal:                                                 ; byte
        db 30H, 78H                                     ; 0000 _ 0x

?_147:  db 00H                                          ; 0002 _ .

?_148:  db 00H, 00H, 00H, 00H, 00H                      ; 0003 _ .....

memman: dd 00100000H, 00000000H                         ; 0008 _ 1048576 0 
        dd 00000000H, 00000000H                         ; 0010 _ 0 0 
        dd 00000000H, 00000000H                         ; 0018 _ 0 0 

table_rgb.1714:                                         ; byte
        db 00H, 00H, 00H, 0FFH, 00H, 00H, 00H, 0FFH     ; 0020 _ ........
        db 00H, 0FFH, 0FFH, 00H, 00H, 00H, 0FFH, 0FFH   ; 0028 _ ........
        db 00H, 0FFH, 00H, 0FFH, 0FFH, 0FFH, 0FFH, 0FFH ; 0030 _ ........
        db 0C6H, 0C6H, 0C6H, 84H, 00H, 00H, 00H, 84H    ; 0038 _ ........
        db 00H, 84H, 84H, 00H, 00H, 00H, 84H, 84H       ; 0040 _ ........
        db 00H, 84H, 00H, 78H, 0D7H, 84H, 84H, 84H      ; 0048 _ ...x....
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0050 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0058 _ ........

cursor.1759:                                            ; byte
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

closebtn.1883:                                          ; byte
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

?_149:  resw    1                                       ; 0004

?_150:  resw    1                                       ; 0006

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

str.1802:                                               ; byte
        resb    1                                       ; 0220

?_151:  resb    9                                       ; 0221

?_152:  resb    2                                       ; 022A

line.1835:                                              ; dword
        resd    1                                       ; 022C

pos.1834: resd  1                                       ; 0230


