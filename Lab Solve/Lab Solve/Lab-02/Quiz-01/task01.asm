.MODEL SMALL
 
.STACK 100H

.DATA 
 

.CODE 
MAIN PROC 

;iniitialize DS

MOV Al,3 
MOV Bl,2
MUL BL  
MOV BL,2
DIV BL

     





;exit to DOS 
               
MOV AX,4C00H
INT 21H 

MAIN ENDP
    END MAIN 
  



