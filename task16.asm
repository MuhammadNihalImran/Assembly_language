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

    ; Pehle digit ko BL mein save karo
    MOV BL, AL

    ; BL × 10 karo
    MOV AL, BL
    MOV BL, 10
    MUL BL

    ; Result ko BX mein save karo
    MOV BL, AL

    ; Dusra digit input lo
    MOV AH, 01H
    INT 21H

    ; ASCII ko number mein convert karo
    SUB AL, '0'

    ; Pehle digit × 10 + second digit
    ADD AL, BL

    ; Number ko BX mein save karo
    MOV BL, AL

    ; Program exit karo
    MOV AH, 4CH
    INT 21H

MAIN ENDP
END MAIN