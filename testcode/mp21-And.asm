ORIGIN 0
SEGMENT CODE:
    LDR R1, R0, FULL
    AND R2, R1, R1
    AND R3, R1, 5
    AND R4, R3, R0
    BRz GOODEND
    
BADEND:
    BRnzp BADEND

GOODEND:
    BRnzp GOODEND

FULL: DATA2 4xFFFF