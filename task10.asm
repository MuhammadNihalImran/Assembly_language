.MODEL SMALL
.STACK 100H

.DATA
char1 DB ?
char2 DB ?

.CODE
MAIN PROC
    MOV AX, @DATA
    MOV DS, AX

    ; Pehla character input lo
    MOV AH, 08H
    INT 21H

    ; Character ko char1 mein store karo
    MOV char1, AL

    ; Dusra character input lo
    MOV AH, 08H
    INT 21H

    ; Character ko char2 mein store karo
    MOV char2, AL

    ; Pehla character print karo
    MOV DL, char1
    MOV AH, 02H
    INT 21H

    ; Next line par jao
    MOV DL, 0DH
    MOV AH, 02H
    INT 21H

    MOV DL, 0AH
    MOV AH, 02H
    INT 21H

    ; Dusra character print karo
    MOV DL, char2
    MOV AH, 02H
    INT 21H

    ; Program exit karo
    MOV AH, 4CH
    INT 21H

MAIN ENDP
END MAIN