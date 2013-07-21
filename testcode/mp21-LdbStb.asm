; Test LDB, STB
ldb r6, r0, LowByte  ;0
                     ;MAR <= 18
                     ;MDR <= (M[18] = 4x600D)
                     ;R6 <= 4x00 & 4x0D
ldb r7, r0, HighByte ;2
                     ;MAR <= 18 or 19
                     ;MDR <= (M[18] = 4x600D)
                     ;R7 <= 4x00 & 4x60
stb r6, r0, LowSByte ;4
                     ;MAR <= 22
                     ;MDR <= 4xXX & (R6(7:0) = 4x0D)
                     ;*only* MWRITEL_L is active (=0).
                     ;M[22] <= 4xXX0D
stb r7, r0, HighSByte ;6
                     ;MAR <= 22 or 23
                     ;MDR <= (R7(7:0) = 4x60) & 4xXX
                     ;*only* MWRITEH_L is active (=0).
                     ;M[11] <= 4x60XX

LEA R1, LowSByte        ; 8
LDR R2, R1, 0           ; 10, R2 should have 4x600D
LDR R3, R0, LowSByte    ; 12, Sanity check: R3 also have 4x600D
BRnzp HALT              ; 14

Spacer0: DATA2 4xFFFF   ; 16
LowByte: DATA1 4x0D     ; 18
HighByte: DATA1 4x60    ; 19
Spacer1: DATA2 4xFFFF   ; 20
LowSByte: DATA1 ?       ; 22
HighSByte: DATA1 ?      ; 23
Spacer2: DATA2 4xFFFF   ; 24

HALT:
  BRnzp HALT            ; 26, x1A
