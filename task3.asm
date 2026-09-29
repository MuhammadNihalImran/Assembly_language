.MODEL SMALL
.STACK 100h

.DATA

.CODE
MAIN PROC

    ; Initialize Data Segment
    MOV AX, @DATA
    MOV DS, AX

    ; Select DOS function 02H
    ; Function 02H prints one character
    MOV AH, 02H

    ; Print character 'A'
    MOV DL, 'A'
    INT 21H

    ; Move to the next line
    MOV DL, 0DH        ; Carriage Return
    INT 21H
    MOV DL, 0AH        ; Line Feed
    INT 21H

    ; Print character 'B'
    MOV DL, 'B'
    INT 21H

    ; Move to the next line
    MOV DL, 0DH        ; Carriage Return
    INT 21H
    MOV DL, 0AH        ; Line Feed
    INT 21H

    ; Print character 'C'
    MOV DL, 'C'
    INT 21H

    ; Exit the program
    MOV AH, 4CH
    INT 21H

MAIN ENDP
END MAIN