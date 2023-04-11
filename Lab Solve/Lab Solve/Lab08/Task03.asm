.MODEL SMALL
    
 
.STACK 100H

.DATA 

x dw 04h
y dw 06h
z dw 02h

.CODE 
MAIN PROC 

;iniitialize DS

MOV AX,@DATA 
MOV DS,AX 


mov ax,x

cmp ax,y
jg level1 
jl level2



level1:
call n1

           
 
level2:
call n2

mov ax,dx
cmp ax,z
jl level3

level3:
call n3
 
  
mov ah,2
int 21h  










;exit to DOS 
               
MOV AX,4C00H
INT 21H 

MAIN ENDP
n1 proc
    mov dx,ax
    ret
    n1 endp 

n2 proc
    mov dx,y
    ret
    n2 endp 
n3 proc 
    mov dx,z
    ret
    n3 endp

                 END MAIN 



