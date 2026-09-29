.MODEL SMALL
.STACK 100H

.DATA
msg  DB "HELLO$"       ; First string
msg1 DB "WORLD$"       ; Second string

.CODE
MAIN PROC

   ; Initialize Data Segment
   MOV AX, @DATA
   MOV DS, AX

   ; Print first string
   LEA DX, msg          ; Load address of msg into DX
   MOV AH, 09H          ; DOS function 09H: Print string
   INT 21H

   ; Move to next line
   MOV DL, 0DH          ; Carriage Return
   INT 21H
   MOV DL, 0AH          ; Line Feed
   INT 21H

   ; Print second string
   LEA DX, msg1         ; Load address of msg1 into DX
   MOV AH, 09H          ; DOS function 09H: Print string
   INT 21H

   ; Exit the program
   MOV AH, 4CH
   INT 21H

MAIN ENDP
END MAIN