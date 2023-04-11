.MODEL SMALL
 
.STACK 100H

.DATA 
X dW 6
Y DW 9

.CODE 
MAIN PROC 

;iniitialize DS

MOV AX,@DATA 
MOV DS,AX 
 
; enter your code here
MOV AX,8
MOV BX,9
SUB AX,BX
ADD BX,AX
SUB AX,BX  
NEG AX




 

;exit to DOS 
               
MOV AX,4C00H
INT 21H 

MAIN ENDP
    END MAIN 
  



