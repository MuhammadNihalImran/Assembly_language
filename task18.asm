.MODEL SMALL
.STACK 100H

.DATA

.CODE
MAIN PROC
    MOV AX, @DATA
    MOV DS, AX

    ; 32 ka tens digit input lo
    MOV AH, 01H
    INT 21H
    SUB AL, '0'
    MOV BL, AL

    ; 32 ka ones digit input lo
    MOV AH, 01H
    INT 21H
    SUB AL, '0'
    MOV BH, AL

    ; 18 ka tens digit input lo
    MOV AH, 01H
    INT 21H
    SUB AL, '0'
    MOV CL, AL

    ; 18 ka ones digit input lo
    MOV AH, 01H
    INT 21H
    SUB AL, '0'
    MOV CH, AL

    ; Ones digit subtract karo
    MOV AL, BH

    ; Check karo borrowing ki zaroorat hai ya nahi
    CMP AL, CH
    JAE NO_BORROW

    ; Tens digit se 1 borrow karo
    ADD AL, 10
    DEC BL

NO_BORROW:

    ; Ones digit subtract karo
    SUB AL, CH

    ; Ones result save karo
    MOV DH, AL

    ; Tens digit subtract karo
    MOV AL, BL
    SUB AL, CL

    ; Tens result ASCII mein convert karo
    ADD AL, '0'

    ; Tens digit print karo
    MOV DL, AL
    MOV AH, 02H
    INT 21H

    ; Ones result ASCII mein convert karo
    ADD DH, '0'

    ; Ones digit print karo
    MOV DL, DH
    MOV AH, 02H
    INT 21H

    ; Program exit karo
    MOV AH, 4CH
    INT 21H

MAIN ENDP
END MAIN