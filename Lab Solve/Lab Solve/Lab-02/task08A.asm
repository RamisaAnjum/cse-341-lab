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
MOV AX, 036DFh
MOV BX, 0AFh
MUL BX




 

;exit to DOS 
               
MOV AX,4C00H
INT 21H 

MAIN ENDP
    END MAIN 
  



