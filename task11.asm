.MODEL SMALL
.STACK 100H

.DATA

.CODE
MAIN PROC
    MOV AX, @DATA
    MOV DS, AX

    ; Digit input lo
    MOV AH, 01H
    INT 21H

    ; ASCII digit ko numeric value mein convert karo
    SUB AL, '0'

    ; Numeric value ko dobara ASCII character mein convert karo
    ADD AL, '0'

    ; Converted digit ko print karo
    MOV DL, AL
    MOV AH, 02H
    INT 21H

    ; Program exit karo
    MOV AH, 4CH
    INT 21H

MAIN ENDP
END MAIN