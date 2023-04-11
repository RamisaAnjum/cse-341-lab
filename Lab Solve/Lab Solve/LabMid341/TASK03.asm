.MODEL SMALL
 
.STACK 100H

.DATA 


.CODE 
MAIN PROC 

;iniitialize DS

MOV AX,@DATA 
MOV DS,AX      

MOV AH,1 
INT 21H

SUB AL,30H

MOV CX,ax
MOV BL,1

print:

mov ah,2
mov dl,'x'
int 21h 

;NEW LINE
MOV DL, 0DH         
INT 21H               
MOV DL, 0AH         
INT 21H
loop print
 



;exit to DOS 
               
MOV AX,4C00H
INT 21H 

MAIN ENDP
    END MAIN 
  



