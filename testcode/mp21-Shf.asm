ORIGIN 0
SEGMENT CodeSegment:
  LEA R0, DataSegment

;Test left shifting
  LDR R1, R0, ONES
  LSHF R2, R1, 0    ; R2 should get xFFFF unchanged
  LSHF R3, R1, 15   ; R3 should get x8000

;Test logical right shifting
  RSHFL R4, R1, 0   ; R4 should get xFFFF unchanged
  RSHFL R5, R1, 12  ; R4 should get x000F

;Test arithmetic right shifting
  RSHFA R6, R1, 0   ; R6 should get xFFFF unchanged
  RSHFA R7, R1, 6   ; R7 should still get xFFFF unchanged
  RSHFA R6, R5, 2   ; R6 should get x0003
  RSHFA R7, R3, 15   ; R7 should get x0001

;Done marker
  LDR R0, R0, GOOD
HALT:
  BRnzp HALT

SEGMENT DataSegment:
ONES: DATA2 4xFFFF
GOOD: DATA2 4x600D
