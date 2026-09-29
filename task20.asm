.MODEL SMALL
.STACK 100H

.DATA

.CODE
MAIN PROC
    MOV AX, @DATA
    MOV DS, AX

    ; Two-digit number ka tens digit input lo
    MOV AH, 01H
    INT 21H
    SUB AL, '0'
    MOV BL, AL

    ; Two-digit number ka ones digit input lo
    MOV AH, 01H
    INT 21H
    SUB AL, '0'

    ; Tens × 10 karo
    MOV BH, AL
    MOV AL, BL
    MOV BL, 10
    MUL BL

    ; Ones digit add karo
    ADD AL, BH

    ; Two-digit number BL mein save karo
    MOV BL, AL

    ; Single-digit number input lo
    MOV AH, 01H
    INT 21H
    SUB AL, '0'

    ; Two-digit number × single-digit number
    MOV BH, AL
    MOV AL, BL
    MUL BH

    ; Result AX mein hai
    ; Result ko 10 se divide karo
    MOV BL, 10
    MOV AH, 00H
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