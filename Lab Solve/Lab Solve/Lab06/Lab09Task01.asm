.MODEL SMALL
 
.STACK 100H

.DATA 

arr db 10 dup(?)

.CODE 
MAIN PROC 

;iniitialize DS

MOV AX,@DATA 
MOV DS,AX      

mov cx,10
mov si,0
mov bl,0

start:
mov ah,1
int 21h
add si,1
add bl,al
loop start 

add bl,30h
mov al,bl
mov bl,10
div bl

add al,30h 
mov dl,al
mov ah,2
int 21h  

sub ah,30h
mov dl,ah
mov ah,2
int 21h  




;exit to DOS 
               
MOV AX,4C00H
INT 21H 

MAIN ENDP
    END MAIN 
  



