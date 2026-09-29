.MODEL SMALL
.STACK 100H

.DATA

.CODE
MAIN PROC
    MOV AX, @DATA
    MOV DS, AX

    ; 25 ka tens digit input lo
    MOV AH, 01H
    INT 21H
    SUB AL, '0'
    MOV BL, AL

    ; 25 ka ones digit input lo
    MOV AH, 01H
    INT 21H
    SUB AL, '0'
    MOV BH, AL

    ; 12 ka tens digit input lo
    MOV AH, 01H
    INT 21H
    SUB AL, '0'
    MOV CL, AL

    ; 12 ka ones digit input lo
    MOV AH, 01H
    INT 21H
    SUB AL, '0'
    MOV CH, AL

    ; Ones digit subtract karo
    MOV AL, BH
    SUB AL, CH
    ADD AL, '0'

    ; Ones result save karo
    MOV DL, AL
    MOV DH, DL

    ; Tens digit subtract karo
    MOV AL, BL
    SUB AL, CL
    ADD AL, '0'

    ; Tens digit print karo
    MOV DL, AL
    MOV AH, 02H
    INT 21H

    ; Ones digit print karo
    MOV DL, DH
    MOV AH, 02H
    INT 21H

    ; Program exit karo
    MOV AH, 4CH
    INT 21H

MAIN ENDP
END MAIN