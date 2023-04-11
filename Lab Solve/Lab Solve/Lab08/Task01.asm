.MODEL SMALL

print macro input                      
    mov ah,9
    lea dx,input
    int 21h

endm

    
 
.STACK 100H

.DATA 
x dw "R$"


.CODE 
MAIN PROC 

;iniitialize DS

MOV AX,@DATA 
MOV DS,AX 

     
       print x




;exit to DOS 
               
MOV AX,4C00H
INT 21H 

MAIN ENDP
    END MAIN 
  



