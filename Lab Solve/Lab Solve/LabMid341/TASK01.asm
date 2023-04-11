                           .MODEL SMALL
 
.STACK 100H

.DATA 


.CODE 
MAIN PROC 

;iniitialize DS

MOV AX,@DATA 
MOV DS,AX      

MOV CX,5
MOV AH,1

START:
INT 21H
MOV AL,BL

LOOP START 
MOV CX,5

print:
mov ah,2
mov dl,'x'
int 21h
loop print








;exit to DOS 
               
MOV AX,4C00H
INT 21H 

MAIN ENDP
    END MAIN 
  



