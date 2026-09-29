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

    ; Pehla number BL mein save karo
    MOV BL, AL

    ; Dusra digit input lo
    MOV AH, 01H
    INT 21H

    ; ASCII ko number mein convert karo
    SUB AL, '0'

    ; Pehla aur dusra number add karo
    ADD AL, BL

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