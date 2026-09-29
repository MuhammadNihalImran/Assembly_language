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

    ; Dono numbers add karo
    ADD AL, BL

    ; Result ko AH mein save karo
    MOV AH, 00H

    ; 10 se divide karne ke liye
    MOV BL, 10
    DIV BL

    ; Quotient = Tens digit
    ; Remainder = Ones digit

    ; Tens digit ko ASCII mein convert karo
    ADD AL, '0'

    ; Tens digit print karo
    MOV DL, AL
    MOV AH, 02H
    INT 21H

    ; Ones digit ko ASCII mein convert karo
    ADD AH, '0'

    ; Ones digit print karo
    MOV DL, AH
    MOV AH, 02H
    INT 21H

    ; Program exit karo
    MOV AH, 4CH
    INT 21H

MAIN ENDP
END MAIN