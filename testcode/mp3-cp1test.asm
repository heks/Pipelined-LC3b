ORIGIN 0
SEGMENT CODE:
    AND R0, R0, 0; x0
    ADD R0, R0, 5; x2 R0 <- 5
    ADD R1, R1, R0; x4 R1 <- 5
    AND R0, R0, 0; x6 R0 <- 0

    LDR R1, R0, LVAL1 	;x8 R1 <- x20
    LDR R2, R0, LVAL2 	;xA R2 <- xD5
    LDR R3, R0, LVAL3 	;xC R3 <- x0F
    ADD R4, R1, R3    	;xE R4 <- x2F
    BRp HERE1		;x10 always should go to HERE1
			; if broken, R3 <-x33
    NOP;
    NOP;
    NOP;
    ADD R3, R4, 4     	;x12
    STR R3, R0, SVAL1 	;x14
    BACKHERE1:

    ADD R4, R4, 2   	;x16 R4 <- x31
    STR R4, R0, SVAL2	;x18 
    AND R5, R2, 19    	;x1A R5 <- 11; D5 & 13 = 11
    STR R5, R0, SVAL3	;x1C 
    AND R6, R2, 12   	;x1E R6<-4 D5&1100
    STR R6, R0, SVAL4	;x20
    LDR R1, R0, SVAL1	;x22 R1<-FFFF
    LDR R2, R0, SVAL2	;x24 R2<-x31
    LDR R3, R0, SVAL3	;x26 R3<-x11
    LDR R4, R0, SVAL4	;x28 R4<-x4

GOODEND:
    BRnzp GOODEND	;x2A
    NOP;		;x2C
    NOP;		;x2E
    NOP;		;x30

    HERE1:
    ADD R3, R0, -1	;x32 R3 <- 0E
    ADD R5, R0, -1      ;x34 R5 <- FFFF
    STR R5, R0, SVAL1	;x36
    BRn BACKHERE1 	;x38
    NOP;		;x3A
    NOP;		;x3C
    NOP;		;x3E

         

BADEND:
    BRnzp BADEND	;x40
    NOP;
    NOP;		;x44
    NOP;

SEGMENT DATA:
LVAL1: DATA2 4x0020	;x32
LVAL2: DATA2 4x00D5	;x34
LVAL3: DATA2 4x000F
SVAL1: DATA2 ?
SVAL2: DATA2 ?
SVAL3: DATA2 ?
SVAL4: DATA2 ?
GOOD:  DATA2 4x600D
BADD:  DATA2 4xBADD
