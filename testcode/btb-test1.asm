ORIGIN 0
SEGMENT CodeSegment:

  NOP                   ;0
  ADD R1, R0, 5         ;2
  ADD R2, R0, 1         ;4
  ADD R3, R0, 2         ;6
  ADD R4, R0, 3         ;8
  ADD R5, R0, 4         ;A
  AND R6, R6, 0         ;C
FIRST_LOOP:
  ADD R1, R1, -1        ;E
  BRp FIRST_LOOP        ;10

  AND R2, R0, R0        ;12
  AND R3, R0, R0        ;14
  AND R4, R0, R0        ;16
  AND R5, R0, R0        ;18

  LEA R2, JMP_LOOP      ;1A
  JMP R2                ;1C
  ADD R2, R0, -1        ;1E
  ADD R3, R0, -2        ;20
  ADD R4, R0, -3        ;22
  ADD R5, R0, -4        ;24

TRAP_FUNC:
  RET                   ;26

JSR_FUNC:
  ADD R7, R7, 1         ;28
  LSHF R2, R2, 2        ;2A
  RSHFL R3, R3, 3       ;2C
  ADD R4, R3, R4        ;2E
  RSHFA R4, R4, 1       ;30
  ADD R7, R7, -1        ;32
  RET                   ;34

TRAP_ADDR: DATA2 TRAP_FUNC      ;36
TRAP_ADDR2: DATA2 TRAP_LOOP2    ;38

JMP_LOOP:
  LEA R7, JMP_LOOP2     ;3A
  RET                   ;3C
JMP_LOOP2:
  ADD R1, R0, 5         ;3D
  ADD R2, R0, 1         ;40
  ADD R3, R0, 2         ;42
  ADD R4, R0, 3         ;44
  ADD R5, R0, 4         ;46
JSR_LOOP:
  JSR JSR_FUNC          ;48
  ADD R1, R1, -1        ;4A
  BRp JSR_LOOP          ;4C
  
  ADD R1, R0, -5
  ADD R2, R0, 1
  ADD R3, R0, 2
  ADD R4, R0, 3
  ADD R5, R0, 4
TRAP_LOOP:
  TRAP TRAP_ADDR
  ADD R1, R1, 1
  BRn TRAP_LOOP
  TRAP TRAP_ADDR2

TRAP_LOOP2:
  NOP
  NOP
  BRnzp GOTO_HALT

HALT:
  BRnzp HALT

GOTO_HALT:
  ADD R1, R0, 5
  ADD R2, R0, 1
  ADD R3, R0, 2
  ADD R4, R0, 3
  ADD R5, R0, 4
  LEA R0, HALT
  JSRR R0