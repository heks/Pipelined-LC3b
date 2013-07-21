SEGMENT BOOT:
	BRnzp ldr_str_test 	; 0 BRANCH TO x10, ldr_str_test
	NOP			; 2
	NOP			; 4
	NOP			; 6
	NOP			; 8
	NOP			; A
	NOP			; C
DSP:	DATA2 DataSeg		; E
	; cache line boundary

ldr_str_test:
	LDR R0, R0, DSP		; 10	R0 <- x80 (DataSeg)
	NOP			; 12
	NOP 			; 14
	NOP			; 16
	NOP			; 18
	NOP			; 1A
	LDR R1, R0, W		; 1C	R1 <- X09
	LDR R3, R0, Y		; 1E	R3 <- X01
	; cache line boundary	
	LDR R2, R0, X		; 20	R2 <- X02
	LDR R4, R0, Z		; 22	R4 <- X03
	NOP			; 24
	STR R1, R0, Z		; 26	R1 -> Z Z <- X09
	STR R2, R0, Y		; 28	R2 -> Y Y <- X02
	STR R3, R0, X		; 2A	R3 -> X X <- X01
	STR R4, R0, W		; 2C 	R4 -> W W <- X03
	NOP			; 2E	
	; cache line boundary
	LDR R1, R0, W		; 30	R1 <- X03
	LDR R2, R0, X		; 32	R2 <- X01
	LDR R3, R0, Y		; 34	R3 <- X02
	LDR R4, R0, Z		; 36	R4 <- X09
	BRnzp fetch_stall_test	; 38	BR TO PC = 5E
	NOP			; 3A
	NOP			; 3C
	NOP			; 3E
	; cache line boundary
	NOP			; 40
	NOP			; 42
	NOP	
	NOP
	NOP
	NOP
	NOP
	NOP
	; cache line boundary
	NOP			; 50
	NOP
	NOP			; 54
	NOP
	NOP			; 58
	NOP
	NOP			; 5C
fetch_stall_test:
	ADD R5, R1, R2		; 5E	R5 <- R1+R2 = X03 + X01 = X04
	; cache line boundary
	ADD R6, R3, R4		; 60	R6 <- R3+R4 = X02 + X09 = X0B
	NOP			; 62
	NOP			; 64
	NOP 			; 66
	NOP			; 68
	STR R5, R0, VICTIM	; 6A	VICTIM <- R5 = X04
	ADD R7, R5, R6 		; 6C	R7 <- R5+R6 = X0F
	NOP			; 6E
	; cache line boundary
	NOP			; 70
	NOP			; 72
	NOP			; 74
	STR R7, R0, TOTAL	; 76	TOTAL <- R7 = X0F
	LDR R1, R0, TOTAL	; 78	R1 <- X0F
inf:
	BRnzp inf		; 7A
	NOP			; 7C
	NOP			; 7E

; cache line boundary
SEGMENT DataSeg:
NOP				; 80
NOP
NOP
NOP				; 86
NOP
NOP				; 8A
W:	DATA2 4x0009		; 8C FINAL: x03
X:	DATA2 4x0002		; 8E FINAL: x01
; cache line boundary
Y:	DATA2 4x0001		; 90 FINAL: x02
Z:	DATA2 4x0003		; 92 FINAL: x09
NOP				; 94
NOP
NOP
NOP
NOP
NOP				; 9e
; cache line boundary
TOTAL:	DATA2 4x0000		; A0 FINAL: X0F
NOP
NOP
NOP
NOP
NOP
NOP
NOP				; AE
; cache line boundary
VICTIM: DATA2 4x0000		; B0 FINAL: X04
NOP				; B2
NOP
NOP
NOP
NOP
NOP
NOP
;
; FINAL REGISTER FILE
; R0	x00 
; R1	x0F
; R2  	x01
; R3	x02
; R4	x09
; R5	x04
; R6	x0B
; R7	x0F
