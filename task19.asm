.MODEL SMALL
.STACK 100H

.DATA

.CODE
MAIN PROC
    MOV AX, @DATA
    MOV DS, AX

    ; 27 ka tens digit input lo
    MOV AH, 01H
    INT 21H
    SUB AL, '0'
    MOV BL, AL

    ; 27 ka ones digit input lo
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

    ; Ones digits add karo
    MOV AL, BH
    ADD AL, CH

    ; Check karo carry hai ya nahi
    CMP AL, 10
    JB NO_CARRY

    ; Carry handle karo
    SUB AL, 10
    MOV DH, 1
    JMP ADD_TENS

NO_CARRY:
    MOV DH, 0

ADD_TENS:
    ; Ones result save karo
    MOV DL, AL

    ; Tens digits add karo
    MOV AL, BL
    ADD AL, CL

    ; Carry ko tens mein add karo
    ADD AL, DH

    ; Tens result save karo
    MOV BH, AL

    ; Tens digit ASCII mein convert karo
    ADD BH, '0'

    ; Tens digit print karo
    MOV DL, BH
    MOV AH, 02H
    INT 21H

    ; Ones digit ASCII mein convert karo
    ADD DL, '0'

    ; Ones digit print karo
    MOV AH, 02H
    INT 21H

    ; Program exit karo
    MOV AH, 4CH
    INT 21H

MAIN ENDP
END MAIN