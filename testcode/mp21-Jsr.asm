SEGMENT  CodeSegment:

  LDR R1, R0, NEGONE		; load a countdown in increments of -1
  LDR R2, R0, FACTORIAL		; load the factorial to compute
				; This is also the countdown for the outer factorial loop, e.g. 5, 4, 3, ...
  LDR R3, R0, RESULT		; initialize the factorial sum to 1

OUTER_FACTORIAL:
  ; Set up parameters for MULT_BY_ADDS pseudo-function
  ADD R4, R3, R0		; x = current factorial sum
  ADD R5, R2, R0		; y = current level of the factorial (i.e. 5, 4, 3, ...)
  LEA R6, AFTER_JSR;
  JSR MULT_BY_ADDS

  ; After multiply, R3 contains R3 * R2 from the perspective of the OUTER_FACTORIAL loop,
  ; so the loop is equivalent to result = result * (factorial level)
AFTER_JSR:
  ADD R2, R2, R1		; decrement the factorial loop counter
  BRp OUTER_FACTORIAL		; keep multiplying by lower factorial levels until we'd be multiplying by 0
  LEA R6, MAKE_GOOD
  JSRR R6

HALT:
  BRnzp HALT			; At this point, the result of the factorial is contained in R3

MULT_BY_ADDS:
  ; This subroutine is like a function
  ; it expects two parameters x and y in registers R4 and R5, respectively
  ; it returns the result x*y in register R3
  ADD R3, R0, R0        ; result = 0
MULT_LOOP:
  ADD R3, R3, R4        ; result = result + x
  ADD R5, R5, R1        ; decrement the counter (y = y - 1)
  BRp MULT_LOOP         ; keep adding x to the running sum until we've done it y times
  RET

MAKE_GOOD:
  LDR R0, R0, GOOD
  RET

FACTORIAL:	DATA2 4x0005
NEGONE:		DATA2 4xFFFF
RESULT:		DATA2 4x0001
GOOD:       DATA2 4x600D
