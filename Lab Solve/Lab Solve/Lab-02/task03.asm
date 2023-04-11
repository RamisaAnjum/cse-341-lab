.MODEL SMALL
 
.STACK 100H

.DATA 
x db 6

.CODE 
MAIN PROC 

;iniitialize DS

;MOV AX,@DATA 
;MOV DS,AX 
 
; enter your code here

MOV AX,8 
MOV BX,7
ADD BX,AX  




 

;exit to DOS 
               
MOV AX,4C00H
INT 21H 

MAIN ENDP
    END MAIN 
  



