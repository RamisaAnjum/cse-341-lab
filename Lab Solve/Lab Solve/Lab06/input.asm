.MODEL SMALL
 
.STACK 100H

.DATA 

arr db 5 dup(?)

.CODE 
MAIN PROC 

;iniitialize DS

MOV AX,@DATA 
MOV DS,AX      

mov cx,5
mov si,0

start:
mov ah,1
int 21h
add si,1
loop start




;exit to DOS 
               
MOV AX,4C00H
INT 21H 

MAIN ENDP
    END MAIN 
  



