SEGMENT CodeSegment:
  LEA R1, DataSegment
  BRnzp testcode

SEGMENT DataSegment:
  D1:   DATA2 4x0128
  D2:   DATA2 4x0001
  D3:   DATA2 4x1000
  D4:   DATA2 4xFFFF
  D5:   DATA2 4xBAD5
  D6:   DATA2 4xBAD6
  D7:   DATA2 4xBAD7
  D8:   DATA2 4xBAD8
  D9:   DATA2 4xBAD9
  DA:   DATA2 4xBADA
  DB:   DATA2 4xBADB
  DC:   DATA2 4xBADC
  DD:   DATA2 4xBADD
  IND1: DATA2 GOOD
  IND2: DATA2 DB
  IND3: DATA2 DC
  JMP1: DATA2 nostall1
  JMP2: DATA2 nostall2
  GOOD: DATA2 4x600D
  trapSave3: DATA2 save3
  LOOP: DATA2 4x0000

ALLAGAIN:
  NOT R7, R7
  STR R7, R1, LOOP

testcode:

;; Test basic forwarding to EX from MEM and WB and postWB
  LDR R2, R1, D1
  LDR R3, R1, D2
  ADD R4, R2, R2    ; WB and WB
  ADD R5, R3, R2    ; WB and RegFile/postWB
  ADD R2, R5, R5    ; MEM and MEM
  ADD R6, R2, R5    ; MEM and WB
  ADD R5, R6, R5    ; MEM and RegFile/postWB
  ADD R4, R6, R5    ; WB and MEM
  ADD R2, R6, R4    ; RegFile/postWB and MEM
  ADD R4, R5, R4    ; RegFile/postWB and WB
  AND R2, R4, R2    ; another MEM and WB
  ADD R2, R2, R2    ; repeated MEM and MEM
  ADD R2, R2, R2    ; repeated MEM and MEM
  NOT R2, R2        ; repeated MEM
  ADD R2, R2, R2    ; repeated MEM and MEM
  ADD R2, R2, R2    ; repeated MEM and MEM
  ADD R2, R2, 2     ; don't forward R2 when those bits are an immediate value

;; Test basic forwarding to MEM from WB and postWB
  STR R2, R1, D5    ; WB to MEM
  STR R2, R1, D6    ; RegFile/postWB to MEM
  STR R2, R1, D7    ; RegFile (no forwarding)
  LDR R2, R1, GOOD
  STR R2, R1, D8    ; WB (no stall after load) to MEM
  LDI R3, R1, IND1 
  STI R3, R1, IND2  ; WB (after indirect load) to MEM
  STR R3, R1, D9    ; RegFile/postWB to MEM
  LDR R3, R1, D9
  STB R3, R1, DA    ; WB (no stall after load) to MEM
  ADD R4, R1, 1
  STB R3, R4, DA    ; WB to MEM

;; Verify stored results and stall after LDR
  LDR R2, R1, D1
  LDR R3, R1, D2
  ADD R7, R2, R3    ; stall one cycle, fwd from postWB and WB
  LDR R2, R1, D5
  LDR R3, R1, D6
  LDR R4, R1, D7
  ADD R7, R2, R3    ; no stall, fwd from RegFile/postWB and WB
  ADD R7, R7, R4
  LDR R5, R1, D8
  LDR R6, R1, D9
  ADD R5, R6, R5    ; stall one cycle, fwd from WB and postWB
  ADD R7, R7, R5
  LDR R6, R1, DA
  ADD R0, R6, R7    ; stall one cycle, fwd from WB and postWB
  LDR R5, R1, DB
  ADD R0, R0, R5    ; stall one cycle, fwd from WB and postWB

  BRnzp skip1
up1:
  BRz ALLAGAIN


skip1:
;; Stall for BaseR (offsets need computation in EX)
  LDR R3, R1, GOOD
  LDR R2, R1, GOOD
  LDR R2, R1, IND3
  LDI R2, R2, 2     ; stall one cycle, fwd from WB
  LDR R3, R1, IND3
  LDB R4, R3, 2     ; stall one cycle, fwd from WB
  AND R3, R2, R3
  ADD R3, R3, R4
  ADD R0, R3, R0    ; MEM and RegFile

  BRnzp skip2
up2:
  BRz up1

skip2:
;; Forward the saved R7 value during the MEM and WB stages
  JSR save1
save1:
  ADD R7, R7, 7     ; fwd saved R7 from MEM to EX
  ADD R7, R7, 5     ; regular forwarding of R7
  RET               ; jmp to save2
  AND R0, R0, 0         ; these don't get executed (branch flush)
  AND R1, R1, 0
  AND R2, R2, 0
save2:
  TRAP trapSave3
save3:
  AND R2, R7, R7    ; fwd save R7 from MEM to EX
  ADD R3, R2, R7    ; fwd save R7 from WB to EX
  ADD R0, R0, R3
;  JSR save4        ; wanted to use this for save R7 from WB to MEM, but couldn't think
                    ;   of how that didn't already foward to EX
;save4:
;  STR R7, 

  BRnzp skip3
up3:
  BRz up2

skip3:
;; Don't stall for BaseR in JMP and JSRR
  LDR R2, R1, JMP1
  JMP R2
nostall1:
  LDR R2, R1, JMP2
  JSRR R2
nostall2:

;; Now test some branching, just for fun
  LDR R7, R1, LOOP
  BRz up3
  ADD R7, R7, 1

HALT:
  BRnzp HALT
  ; The program shouldn't break by not having anything after the final instruction.
