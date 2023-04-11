.MODEL SMALL
 
.STACK 100H

.DATA 
X dW 6
Y DW 9

.CODE 
MAIN PROC 

;iniitialize DS

;MOV AX,@DATA 
;MOV DS,AX 
 
; enter your code here

MOV AX,X 
MOV BX,Y
MOV X,BX
MOV Y,AX



 

;exit to DOS 
               
MOV AX,4C00H
INT 21H 

MAIN ENDP
    END MAIN 
  



