.MODEL SMALL
.STACK 100H

.DATA

.CODE
MAIN PROC

   ; Initialize Data Segment
   MOV AX, @DATA
   MOV DS, AX

   ; Select DOS function 02H to print a character
   MOV AH, 02H

   ; Print A
   MOV DL, 'A'
   INT 21H

   ; Print B
   MOV DL, 'B'
   INT 21H

   ; Print C
   MOV DL, 'C'
   INT 21H

   ; Move to next line
   MOV DL, 0DH        ; Carriage Return
   INT 21H
   MOV DL, 0AH        ; Line Feed
   INT 21H

   ; Print D
   MOV DL, 'D'
   INT 21H

   ; Exit program
   MOV AH, 4CH
   INT 21H

MAIN ENDP
END MAIN