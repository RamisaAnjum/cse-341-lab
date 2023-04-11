.MODEL SMALL

factorial macro input                      
    fac:
    mul input
    dec input
    jnz fac
    
endm

    
 
.STACK 100H

.DATA 

x dw 04h

.CODE 
MAIN PROC 

;iniitialize DS

MOV AX,@DATA 
MOV DS,AX 

mov ax,1
mov cx,x
factorial x
;sub ax,bx





;exit to DOS 
               
MOV AX,4C00H
INT 21H 

MAIN ENDP
    END MAIN 
  



