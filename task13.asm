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

    ; Pehla number DL mein save karo
    MOV DL, AL

    ; Dusra digit input lo
    MOV AH, 01H
    INT 21H

    ; ASCII ko number mein convert karo
    SUB AL, '0'

    ; Pehle number mein se dusra number subtract karo
    SUB DL, AL

    ; Result ko AL mein move karo
    MOV AL, DL

    ; Number ko ASCII mein convert karo
    ADD AL, '0'

    ; Result print karo
    MOV DL, AL
    MOV AH, 02H
    INT 21H

    ; Program exit karo
    MOV AH, 4CH
    INT 21H

MAIN ENDP
END MAIN