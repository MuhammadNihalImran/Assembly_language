.MODEL SMALL
.STACK 100h

.DATA

.CODE
MAIN PROC

    ; Initialize Data Segment
    MOV AX, @DATA
    MOV DS, AX

    ; Print a single character
    MOV AH, 02H        ; DOS function 02H: Print character
    MOV DL, 'A'        ; Store character 'A' in DL
    INT 21H            ; Call DOS interrupt to print the character

    ; Exit the program
    MOV AH, 4CH        ; DOS function 4CH: Terminate program
    INT 21H            ; Return control to DOS

MAIN ENDP
END MAIN