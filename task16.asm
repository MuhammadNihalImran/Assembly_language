.MODEL SMALL
.STACK 100H

.DATA

.CODE
MAIN PROC
    MOV AX, @DATA
    MOV DS, AX

    ; Pehla digit input lo
    MOV AH, 01H
    INT 21H

    ; ASCII ko number mein convert karo
    SUB AL, '0'

    ; Pehla digit BL mein save karo
    MOV BL, AL

    ; Dusra digit input lo
    MOV AH, 01H
    INT 21H

    ; ASCII ko number mein convert karo
    SUB AL, '0'

    ; Dusra digit BH mein save karo
    MOV BH, AL

    ; Pehla digit print karo
    ADD BL, '0'
    MOV DL, BL
    MOV AH, 02H
    INT 21H

    ; Dusra digit print karo
    ADD BH, '0'
    MOV DL, BH
    MOV AH, 02H
    INT 21H

    ; Program exit karo
    MOV AH, 4CH
    INT 21H

MAIN ENDP
END MAIN