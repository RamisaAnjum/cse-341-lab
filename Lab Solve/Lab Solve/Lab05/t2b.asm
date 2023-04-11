.MODEL SMALL
 
.STACK 100H

.DATA 


.CODE 
MAIN PROC 

;iniitialize DS

MOV AX,@DATA 
MOV DS,AX      



;display character
mov ax,1  
mov cx,10
mov bx,0

start: 
 
add bx,ax
add ax,5


 


loop start    

mov ax,bx







;exit to DOS 
               
MOV AX,4C00H
INT 21H 

MAIN ENDP
    END MAIN 
  



