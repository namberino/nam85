# Instructions table

These are all the instructions supported by the nam85. This table contains the description, how long the instruction takes to execute, how many bytes does it take up, what flag it should affect and the opcode of each instructions.

| Instruction  | Opcode | Bytes | Flags | Cycles | Description                          |
| ------------ | ------ | ----- | ----- | -------- | ------------------------------------ |
| INR A        | 3C     | 1     | Z-SP  | 4        | A = A + 1                            |
| INR B        | 04     | 1     | Z-SP  | 6        | B = B + 1                            |
| INR C        | 0C     | 1     | Z-SP  | 6        | C = C + 1                            |
| INR D        | 14     | 1     | Z-SP  | 6        | D = D + 1                            |
| INR E        | 1C     | 1     | Z-SP  | 6        | E = E + 1                            |
| INR H        | 24     | 1     | Z-SP  | 6        | H = H + 1                            |
| INR L        | 2C     | 1     | Z-SP  | 6        | L = L + 1                            |
| INR M        | 34     | 1     | Z-SP  | 7        | HL = HL + 1                          |
| DCR A        | 3D     | 1     | Z-SP  | 4        | A = A - 1                            |
| DCR B        | 05     | 1     | Z-SP  | 6        | B = B - 1                            |
| DCR C        | 0D     | 1     | Z-SP  | 6        | C = C - 1                            |
| DCR D        | 15     | 1     | Z-SP  | 6        | D = D - 1                            |
| DCR E        | 1D     | 1     | Z-SP  | 6        | E = E - 1                            |
| DCR H        | 25     | 1     | Z-SP  | 6        | H = H - 1                            |
| DCR L        | 2D     | 1     | Z-SP  | 6        | L = L - 1                            |
| DCR M        | 35     | 1     | Z-SP  | 7        | HL = HL - 1                          |
| INX B        | 03     | 1     | ----  | 4        | BC = BC + 1                          |
| INX D        | 13     | 1     | ----  | 4        | DE = DE + 1                          |
| INX H        | 23     | 1     | ----  | 4        | HL = HL + 1                          |
| INX SP       | 33     | 1     | ----  | 4        | SP = SP + 1                          |
| DCX B        | 0B     | 1     | ----  | 4        | BC = BC - 1                          |
| DCX D        | 1B     | 1     | ----  | 4        | DE = DE - 1                          |
| DCX H        | 2B     | 1     | ----  | 4        | HL = HL - 1                          |
| DCX SP       | 3B     | 1     | ----  | 4        | SP = SP - 1                          |
| DAD B        | 09     | 1     | -C--  | 12       | HL = HL + BC                         |
| DAD D        | 19     | 1     | -C--  | 12       | HL = HL + DE                         |
| DAD H        | 29     | 1     | -C--  | 12       | HL = HL + HL                         |
| DAD SP       | 39     | 1     | -C--  | 12       | HL = HL + SP                         |
| ADD A        | 87     | 1     | ZCSP  | 4        | A = A + A                            |
| ADD B        | 80     | 1     | ZCSP  | 5        | A = A + B                            |
| ADD C        | 81     | 1     | ZCSP  | 5        | A = A + C                            |
| ADD D        | 82     | 1     | ZCSP  | 5        | A = A + D                            |
| ADD E        | 83     | 1     | ZCSP  | 5        | A = A + E                            |
| ADD H        | 84     | 1     | ZCSP  | 5        | A = A + H                            |
| ADD L        | 85     | 1     | ZCSP  | 5        | A = A + L                            |
| ADD M        | 86     | 1     | ZCSP  | 6        | A = A + HL                           |
| ADI byte     | C6     | 2     | ZCSP  | 6        | A = A + *byte*                       |
| ADC A        | 8F     | 1     | ZCSP  | 4        | A = A + A + C                        |
| ADC B        | 88     | 1     | ZCSP  | 5        | A = A + B + C                        |
| ADC C        | 89     | 1     | ZCSP  | 5        | A = A + C + C                        |
| ADC D        | 8A     | 1     | ZCSP  | 5        | A = A + D + C                        |
| ADC E        | 8B     | 1     | ZCSP  | 5        | A = A + E + C                        |
| ADC H        | 8C     | 1     | ZCSP  | 5        | A = A + H + C                        |
| ADC L        | 8D     | 1     | ZCSP  | 5        | A = A + L + C                        |
| ADC M        | 8E     | 1     | ZCSP  | 6        | A = A + HL + C                       |
| ACI byte     | CE     | 2     | ZCSP  | 6        | A = A + *byte* + C                   |
| SUB A        | 97     | 1     | ZCSP  | 4        | A = A - A                            |
| SUB B        | 90     | 1     | ZCSP  | 5        | A = A - B                            |
| SUB C        | 91     | 1     | ZCSP  | 5        | A = A - C                            |
| SUB D        | 92     | 1     | ZCSP  | 5        | A = A - D                            |
| SUB E        | 93     | 1     | ZCSP  | 5        | A = A - E                            |
| SUB H        | 94     | 1     | ZCSP  | 5        | A = A - H                            |
| SUB L        | 95     | 1     | ZCSP  | 5        | A = A - L                            |
| SUB M        | 96     | 1     | ZCSP  | 6        | A = A - HL                           |
| SUI byte     | D6     | 2     | ZCSP  | 6        | A = A - *byte*                       |
| SBB A        | 9F     | 1     | ZCSP  | 4        | A = A - *byte* - C                   |
| SBB B        | 98     | 1     | ZCSP  | 5        | A = A - *byte* - C                   |
| SBB C        | 99     | 1     | ZCSP  | 5        | A = A - *byte* - C                   |
| SBB D        | 9A     | 1     | ZCSP  | 5        | A = A - *byte* - C                   |
| SBB E        | 9B     | 1     | ZCSP  | 5        | A = A - *byte* - C                   |
| SBB H        | 9C     | 1     | ZCSP  | 5        | A = A - *byte* - C                   |
| SBB L        | 9D     | 1     | ZCSP  | 5        | A = A - *byte* - C                   |
| SBB M        | 9E     | 1     | ZCSP  | 6        | A = A - *byte* - C                   |
| SBI byte     | DE     | 2     | ZCSP  | 6        | A = A - *byte* - C                   |
| ANA A        | A7     | 1     | ZCSP  | 4        | A = A and A                          |
| ANA B        | A0     | 1     | ZCSP  | 5        | A = A and B                          |
| ANA C        | A1     | 1     | ZCSP  | 5        | A = A and C                          |
| ANA D        | A2     | 1     | ZCSP  | 5        | A = A and D                          |
| ANA E        | A3     | 1     | ZCSP  | 5        | A = A and E                          |
| ANA H        | A4     | 1     | ZCSP  | 5        | A = A and H                          |
| ANA L        | A5     | 1     | ZCSP  | 5        | A = A and L                          |
| ANA M        | A6     | 1     | ZCSP  | 6        | A = A and HL                         |
| ANI byte     | E6     | 2     | ZCSP  | 6        | A = A and *byte*                     |
| ORA A        | B7     | 1     | ZCSP  | 4        | A = A or A                           |
| ORA B        | B0     | 1     | ZCSP  | 5        | A = A or B                           |
| ORA C        | B1     | 1     | ZCSP  | 5        | A = A or C                           |
| ORA D        | B2     | 1     | ZCSP  | 5        | A = A or D                           |
| ORA E        | B3     | 1     | ZCSP  | 5        | A = A or E                           |
| ORA H        | B4     | 1     | ZCSP  | 5        | A = A or H                           |
| ORA L        | B5     | 1     | ZCSP  | 5        | A = A or L                           |
| ORA M        | B6     | 1     | ZCSP  | 6        | A = A or HL                          |
| ORI byte     | F6     | 2     | ZCSP  | 6        | A = A or *byte*                      |
| XRA A        | AF     | 1     | ZCSP  | 4        | A = A xor A                          |
| XRA B        | A8     | 1     | ZCSP  | 5        | A = A xor B                          |
| XRA C        | A9     | 1     | ZCSP  | 5        | A = A xor C                          |
| XRA D        | AA     | 1     | ZCSP  | 5        | A = A xor D                          |
| XRA E        | AB     | 1     | ZCSP  | 5        | A = A xor E                          |
| XRA H        | AC     | 1     | ZCSP  | 5        | A = A xor H                          |
| XRA L        | AD     | 1     | ZCSP  | 5        | A = A xor L                          |
| XRA M        | AE     | 1     | ZCSP  | 6        | A = A xor HL                         |
| XRI byte     | EE     | 2     | ZCSP  | 6        | A = A xor *byte*                     |
| RLC          | 07     | 1     | -C--  | 4        | Shift A left and C = A[7]            |
| RAL          | 17     | 1     | -C--  | 4        | Shift A left and shift C into A[0]   |
| RAR          | 1F     | 1     | -C--  | 4        | Shift A right and shift C into A[7]  |
| RRC          | 0F     | 1     | -C--  | 4        | Shift A right and C = A[0]           |
| CMA          | 2F     | 1     | ----  | 4        | A = ~A                               |
| STC          | 37     | 1     | -C--  | 4        | C = 1                                |
| CMC          | 3F     | 1     | -C--  | 4        | C = ~FlagC                           |
| CMP A        | BF     | 1     | ZCSP  | 4        | Z = 1 if A == A                      |
| CMP B        | B8     | 1     | ZCSP  | 5        | Z = 1 if A == B                      |
| CMP C        | B9     | 1     | ZCSP  | 5        | Z = 1 if A == C                      |
| CMP D        | BA     | 1     | ZCSP  | 5        | Z = 1 if A == D                      |
| CMP E        | BB     | 1     | ZCSP  | 5        | Z = 1 if A == E                      |
| CMP H        | BC     | 1     | ZCSP  | 5        | Z = 1 if A == H                      |
| CMP L        | BD     | 1     | ZCSP  | 5        | Z = 1 if A == L                      |
| CMP M        | BE     | 1     | ZCSP  | 6        | Z = 1 if A == HL                     |
| CPI byte     | FE     | 2     | ----  | 6        | Z = 1 if A == *byte*                 |
| LDA address  | 3A     | 3     | ----  | 11       | Load A with [*address*]              |
| LDAX B       | *dble* | 1     | ----  | 7        | Load A with BC                       |
| LDAX D       | *dble* | 1     | ----  | 7        | Load A with DE                       |
| LXI B, dble  | *dble* | 3     | ----  | 10       | Load BC with _dble_                  |
| LXI D, dble  | *dble* | 3     | ----  | 10       | Load DE with _dble_                  |
| LXI H, dble  | 21     | 3     | ----  | 10       | Load HL with _dble_                  |
| LXI SP, dble | 31     | 3     | ----  | 10       | Load SP with _dble_                  |
| STA address  | 32     | 3     | ----  | 11       | Store A at [*address*]               |
| STAX B       | 02     | 1     | ----  | 7        | Store A at BC                        |
| STAX D       | 12     | 1     | ----  | 7        | Store A at DE                        |
| LHLD address | 2A     | 3     | ----  | 14       | Load HL with [*address*]             |
| SHLD address | 22     | 3     | ----  | 14       | Store HL at [*address*]              |
| MOV A, A     | 7F     | 1     | ----  | 4        | A = A                                |
| MOV A, B     | 78     | 1     | ----  | 4        | A = B                                |
| MOV A, C     | 79     | 1     | ----  | 4        | A = C                                |
| MOV A, D     | 7A     | 1     | ----  | 4        | A = D                                |
| MOV A, E     | 7B     | 1     | ----  | 4        | A = E                                |
| MOV A, H     | 7C     | 1     | ----  | 4        | A = H                                |
| MOV A, L     | 7D     | 1     | ----  | 4        | A = L                                |
| MOV A, M     | 7E     | 1     | ----  | 5        | A = HL                               |
| MOV B, A     | 47     | 1     | ----  | 4        | B = A                                |
| MOV B, B     | 40     | 1     | ----  | 4        | B = B                                |
| MOV B, C     | 41     | 1     | ----  | 4        | B = C                                |
| MOV B, D     | 42     | 1     | ----  | 4        | B = D                                |
| MOV B, E     | 43     | 1     | ----  | 4        | B = E                                |
| MOV B, H     | 44     | 1     | ----  | 4        | B = H                                |
| MOV B, L     | 45     | 1     | ----  | 4        | B = L                                |
| MOV B, M     | 46     | 1     | ----  | 5        | B = HL                               |
| MOV C, A     | 4F     | 1     | ----  | 4        | C = A                                |
| MOV C, B     | 48     | 1     | ----  | 4        | C = B                                |
| MOV C, C     | 49     | 1     | ----  | 4        | C = C                                |
| MOV C, D     | 4A     | 1     | ----  | 4        | C = D                                |
| MOV C, E     | 4B     | 1     | ----  | 4        | C = E                                |
| MOV C, H     | 4C     | 1     | ----  | 4        | C = H                                |
| MOV C, L     | 4D     | 1     | ----  | 4        | C = L                                |
| MOV C, M     | 4E     | 1     | ----  | 5        | C = HL                               |
| MOV D, A     | 57     | 1     | ----  | 4        | D = A                                |
| MOV D, B     | 50     | 1     | ----  | 4        | D = B                                |
| MOV D, C     | 51     | 1     | ----  | 4        | D = C                                |
| MOV D, D     | 52     | 1     | ----  | 4        | D = D                                |
| MOV D, E     | 53     | 1     | ----  | 4        | D = E                                |
| MOV D, H     | 54     | 1     | ----  | 4        | D = H                                |
| MOV D, L     | 55     | 1     | ----  | 4        | D = L                                |
| MOV D, M     | 56     | 1     | ----  | 5        | D = HL                               |
| MOV E, A     | 5F     | 1     | ----  | 4        | E = A                                |
| MOV E, B     | 58     | 1     | ----  | 4        | E = B                                |
| MOV E, C     | 59     | 1     | ----  | 4        | E = C                                |
| MOV E, D     | 5A     | 1     | ----  | 4        | E = D                                |
| MOV E, E     | 5B     | 1     | ----  | 4        | E = E                                |
| MOV E, H     | 5C     | 1     | ----  | 4        | E = H                                |
| MOV E, L     | 5D     | 1     | ----  | 4        | E = L                                |
| MOV E, M     | 5E     | 1     | ----  | 5        | E = HL                               |
| MOV H, A     | 67     | 1     | ----  | 4        | H = A                                |
| MOV H, B     | 60     | 1     | ----  | 4        | H = B                                |
| MOV H, C     | 61     | 1     | ----  | 4        | H = C                                |
| MOV H, D     | 62     | 1     | ----  | 4        | H = D                                |
| MOV H, E     | 63     | 1     | ----  | 4        | H = E                                |
| MOV H, H     | 64     | 1     | ----  | 4        | H = H                                |
| MOV H, L     | 65     | 1     | ----  | 4        | H = L                                |
| MOV H, M     | 66     | 1     | ----  | 5        | H = HL                               |
| MOV L, A     | 6F     | 1     | ----  | 4        | L = A                                |
| MOV L, B     | 68     | 1     | ----  | 4        | L = B                                |
| MOV L, C     | 69     | 1     | ----  | 4        | L = C                                |
| MOV L, D     | 6A     | 1     | ----  | 4        | L = D                                |
| MOV L, E     | 6B     | 1     | ----  | 4        | L = E                                |
| MOV L, H     | 6C     | 1     | ----  | 4        | L = H                                |
| MOV L, L     | 6D     | 1     | ----  | 4        | L = L                                |
| MOV L, M     | 6E     | 1     | ----  | 5        | L = HL                               |
| MOV M, A     | 77     | 1     | ----  | 5        | HL = A                               |
| MOV M, B     | 70     | 1     | ----  | 5        | HL = B                               |
| MOV M, C     | 71     | 1     | ----  | 5        | HL = C                               |
| MOV M, D     | 72     | 1     | ----  | 5        | HL = D                               |
| MOV M, E     | 73     | 1     | ----  | 5        | HL = E                               |
| MOV M, H     | 74     | 1     | ----  | 5        | HL = H                               |
| MOV M, L     | 75     | 1     | ----  | 5        | HL = L                               |
| MVI A, byte  | 3E     | 2     | ----  | 6        | A = *byte*                           |
| MVI B, byte  | 06     | 2     | ----  | 6        | B = *byte*                           |
| MVI C, byte  | 0E     | 2     | ----  | 6        | C = *byte*                           |
| MVI D, byte  | 16     | 2     | ----  | 6        | D = *byte*                           |
| MVI E, byte  | 1E     | 2     | ----  | 6        | E = *byte*                           |
| MVI H, byte  | 26     | 2     | ----  | 6        | H = *byte*                           |
| MVI L, byte  | 2E     | 2     | ----  | 6        | L = *byte*                           |
| MVI M, byte  | 36     | 2     | ----  | 8        | HL = *byte*                          |
| PUSH B       | C5     | 1     | ZCSP  | 9        | Push value in BC onto the stack      |
| PUSH D       | D5     | 1     | ZCSP  | 9        | Push value in DE onto the stack      |
| PUSH H       | E5     | 1     | ZCSP  | 9        | Push value in HL onto the stack      |
| PUSH PSW     | F5     | 1     | ZCSP  | 9        | Push value in AF onto the stack      |
| POP B        | C1     | 1     | ZCSP  | 9        | Pop value on stack into BC           |
| POP D        | D1     | 1     | ZCSP  | 9        | Pop value on stack into DE           |
| POP H        | E1     | 1     | ZCSP  | 9        | Pop value on stack into HL           |
| POP PSW      | F1     | 1     | ZCSP  | 9        | Pop value on stack into AF           |
| CALL address | CD     | 3     | ----  | 16       | Call function at *address*           |
| CP address   | F4     | 3     | ----  | 4/16     | Call function at *address* if S == 0 |
| CM address   | FC     | 3     | ----  | 4/16     | Call function at *address* if S == 1 |
| CNZ address  | C4     | 3     | ----  | 4/16     | Call function at *address* if Z == 0 |
| CZ address   | CC     | 3     | ----  | 4/16     | Call function at *address* if Z == 1 |
| CPO address  | E4     | 3     | ----  | 4/16     | Call function at *address* if P == 0 |
| CPE address  | EC     | 3     | ----  | 4/16     | Call function at *address* if P == 1 |
| CNC address  | D4     | 3     | ----  | 4/16     | Call function at *address* if C == 0 |
| CC address   | DC     | 3     | ----  | 4/16     | Call function at *address* if C == 1 |
| RET          | C9     | 1     | ----  | 4        | Return from function                 |
| RP           | F0     | 1     | ----  | 4/10     | Return from function if S == 0       |
| RM           | F8     | 1     | ----  | 4/10     | Return from function if S == 1       |
| RNZ          | C0     | 1     | ----  | 4/10     | Return from function if Z == 0       |
| RZ           | C8     | 1     | ----  | 4/10     | Return from function if Z == 1       |
| RPO          | E0     | 1     | ----  | 4/10     | Return from function if P == 0       |
| RPE          | E8     | 1     | ----  | 4/10     | Return from function if P == 1       |
| RNC          | D0     | 1     | ----  | 4/10     | Return from function if C == 0       |
| RC           | D8     | 1     | ----  | 4/10     | Return from function if C == 1       |
| JMP address  | C3     | 3     | ----  | 4/9      | Jump to *address*                    |
| JP address   | F2     | 3     | ----  | 4/9      | Jump to *address* if S == 0          |
| JM address   | FA     | 3     | ----  | 4/9      | Jump to *address* if S == 1          |
| JNZ address  | C2     | 3     | ----  | 4/9      | Jump to *address* if Z == 0          |
| JZ address   | CA     | 3     | ----  | 4/9      | Jump to *address* if Z == 1          |
| JPO address  | E2     | 3     | ----  | 4/9      | Jump to *address* if P == 0          |
| JPE address  | EA     | 3     | ----  | 4/9      | Jump to *address* if P == 1          |
| JNC address  | D2     | 3     | ----  | 4/9      | Jump to *address* if C == 0          |
| JC address   | DA     | 3     | ----  | 4/9      | Jump to *address* if C == 1          |
| NOP          | 00     | 1     | ----  | 4        | Do nothing                           |
| HLT          | 76     | 1     | ----  | 4        | Halt execution                       |
