SEGMENT  CodeSegment:
  BRnzp DoStuff             ; 00
  NOP                       ; 02
  NOP                       ; 04
  NOP                       ; 06
  NOP                       ; 08
  NOP                       ; 0A
  NOP                       ; 0C
DataPointer: DATA2 DataSegment  ; 0E

DoStuff:
  LDR R7, R0, DataPointer   ; 10
  NOP                       ; 12
  NOP                       ; 14
  NOP                       ; 16
  NOP                       ; 18
  NOP                       ; 1A
  LDR R1, R7, NEGONE        ; 1C
                            ; load a countdown in increments of -1
  LDR R2, R7, FACTORIAL     ; 1E
                            ; load the factorial to compute
                            ; This is also the countdown for the outer factorial loop, e.g. 5, 4, 3, ...
  LDR R3, R7, RESULT        ; 20
                            ; initialize the factorial sum to 1
  NOP                       ; 22
  NOP                       ; 24
  NOP                       ; 26
  NOP                       ; 28
  NOP                       ; 2A

OUTER_FACTORIAL:
  ; Set up parameters for MULT_BY_ADDS pseudo-function
  ADD R4, R3, R0    ; 2C
                    ; x = current factorial sum
  ADD R5, R2, R0    ; 2E
                    ; y = current level of the factorial (i.e. 5, 4, 3, ...)
  
MULT_BY_ADDS:
  ; This loop is like a function
  ; it expects two parameters x and y in registers R4 and R5, respectively
  ; it returns the result x*y in register R3
  ADD R3, R0, R0    ; 30
                    ; result = 0
  NOP               ; 32
  NOP               ; 34
  NOP               ; 36
  NOP               ; 38
  NOP               ; 3A
MULT_LOOP:
  ADD R3, R3, R4    ; 3C
                    ; result = result + x
  ADD R5, R5, R1    ; 3E
                    ; decrement the counter (y = y - 1)
  NOP               ; 40
  NOP               ; 42
  NOP               ; 44
  NOP               ; 46
  NOP               ; 48
  BRp MULT_LOOP     ; 4A
                    ; keep adding x to the running sum until we've done it y times
  NOP               ; 4C
  NOP               ; 4E
  NOP               ; 50
  NOP               ; 52
  NOP               ; 54
  NOP               ; 56

  ; After multiply, R3 contains R3 * R2 from the perspective of the OUTER_FACTORIAL loop,
  ; so the loop is equivalent to result = result * (factorial level)
  ADD R2, R2, R1        ; 58
                        ; decrement the factorial loop counter
  NOP                   ; 5A
  BRp OUTER_FACTORIAL   ; 5C
                        ; keep multiplying by lower factorial levels until we'd be multiplying by 0
  NOP                   ; 5E
  NOP                   ; 60
  NOP                   ; 62
  NOP                   ; 64
  NOP                   ; 66
  NOP                   ; 68

HALT:
  BRnzp HALT    ; 6A
                ; At this point, the result of the factorial is contained in R3
  NOP           ; 6C
  NOP           ; 6E
  NOP           ; 70
  NOP           ; 72
  NOP           ; 74
  NOP           ; 76

SEGMENT DataSegment:
FACTORIAL:  DATA2 4x0005
NEGONE:     DATA2 4xFFFF
RESULT:     DATA2 4x0001
