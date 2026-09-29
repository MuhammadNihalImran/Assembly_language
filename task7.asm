.MODEL SMALL
.STACK 100H

.DATA

.CODE
MAIN PROC
    MOV AX, @DATA
    MOV DS, AX

    ; Character input lo
    MOV AH, 08H
    INT 21H

    ; AL se DL mein character move karo
    MOV DL, AL

    ; Character print karo
    MOV AH, 02H
    INT 21H

    ; Program exit karo
    MOV AH, 4CH
    INT 21H

MAIN ENDP
END MAIN