.MODEL SMALL
 
.STACK 100H

.DATA 


.CODE 
MAIN PROC 

;iniitialize DS

MOV AX,@DATA 
MOV DS,AX      



;display character
 
  
mov cx,5


start: 
mov ah,1
int 21h
loop start 

mov cx,5
carriage:
mov ah,2
mov dl,0dh
int 21h

loop carriage 
mov cx,5
overprint:  
mov ah,2
mov dl,'x'
int 21h
loop overprint
   





;exit to DOS 
               
MOV AX,4C00H
INT 21H 

MAIN ENDP
    END MAIN 
  



