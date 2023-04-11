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

MOV CX,AX
MOV DL,1
MOV BL,AL


START:

MUL DL
MOV DL,AL
SUB BL,1
CMP BL,0
JE END_IF
MOV AL,BL

LOOP START
 


END_IF:
mov ah,2 
ADD DL,30H
int 21h









;exit to DOS 
               
MOV AX,4C00H
INT 21H 

MAIN ENDP
    END MAIN 
  



