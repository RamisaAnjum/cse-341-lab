.MODEL SMALL
 
.STACK 100H

.DATA 
X dB 6
Y DB 9


.CODE 
MAIN PROC 

;iniitialize DS

MOV AX,@DATA 
MOV DS,AX 
 
; enter your code here
MOV DX, 08A32h
MOV AX, 0F4D5h
MOV BX, 0C9A5h
DIV BX




 

;exit to DOS 
               
MOV AX,4C00H
INT 21H 

MAIN ENDP
    END MAIN 
  



