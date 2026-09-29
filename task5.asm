.MODEL SMALL
.STACK 100H

.DATA

msg DB "HELLO$"       ; Store the string and '$' marks its end

.CODE
MAIN PROC

   ; Initialize Data Segment
   MOV AX, @DATA
   MOV DS, AX

   ; Load address of the string into DX
   LEA DX, msg

   ; DOS function 09H: Print string
   MOV AH, 09H
   INT 21H

   ; Exit the program
   MOV AH, 4CH
   INT 21H

MAIN ENDP
END MAIN