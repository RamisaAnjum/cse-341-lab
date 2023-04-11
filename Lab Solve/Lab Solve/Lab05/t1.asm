.MODEL SMALL
 
.STACK 100H

.DATA 


.CODE 
MAIN PROC 

;iniitialize DS

MOV AX,@DATA 
MOV DS,AX      



;display character
 
mov cx,0ah
start:
mov dx,2ah
mov ah,2
int 21h

mov ah,2
mov dl,0dh  
int 21h

mov ah,2
mov dl,0ah
int 21h


 


loop start



;exit to DOS 
               
MOV AX,4C00H
INT 21H 

MAIN ENDP
    END MAIN 
  



