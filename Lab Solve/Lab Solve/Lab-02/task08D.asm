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
;MOV DX, 08A32h
MOV AX, 0C2A2h
MOV BX, 0ABCDh
MOV CX, 0BEDh
DIV CX
MUL BX  






 

;exit to DOS 
               
MOV AX,4C00H
INT 21H 

MAIN ENDP
    END MAIN 
  



