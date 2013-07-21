; Test LDI, STI
ldi r7, r0, MyPointer ;PC= 0
;First load should see
;MAR <= 6
;MDR <=(M[6] = 8)
;Second load should see
;MAR <= 8
;MDR <= (M[8] = 4x600D)
;R7 <= 4x600D
sti r7, r0, MySPointer ;PC= 2
;First load should see
;MAR <= 10
;MDR <= (M[10] = 4xC)
;Second store should see
;MAR <= 4xC
;MDR <= (R7 = 4x600D)
;M[12] <= 4x600D

  BRnzp CHECK_STORE ;4

MyPointer: DATA2 MyData ;6
MyData: DATA2 4x600D ;8
MySpointer: DATA2 MySData ;10
MySData: DATA2 ? ;12

CHECK_STORE:
  LEA R6, MySData
  LDR R6, R6, 0    ; R6 should have 4x600D

HALT:
  BRnzp HALT
