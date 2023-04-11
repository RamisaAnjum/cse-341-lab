.MODEL SMALL
 
.STACK 100H

.DATA 
 

.CODE 
MAIN PROC 

;iniitialize DS

MOV Al,3 
MOV Bl,1
SUB Al,Bl   
MOV BL,5
DIV BL
MOV BL,7
MUL BL

     





;exit to DOS 
               
MOV AX,4C00H
INT 21H 

MAIN ENDP
    END MAIN 
  



