.MODEL SMALL
.STACK 100H

.DATA
char DB ?              ; Character store karne ke liye variable

.CODE
MAIN PROC
    MOV AX, @DATA
    MOV DS, AX

    ; Character input lo
    MOV AH, 01H
    INT 21H

    ; AL se character ko char mein store karo
    MOV char, AL

    ; Program exit karo
    MOV AH, 4CH
    INT 21H

MAIN ENDP
END MAIN