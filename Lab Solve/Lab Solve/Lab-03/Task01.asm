.MODEL SMALL
 
.STACK 100H

.DATA 
    x db "Please insert a character$"

.CODE 
MAIN PROC 

;iniitialize DS   
MOV AX,@DATA 
MOV DS,AX
 
LEA DX,x
MOV AH,9
INT 21H

Mov AH,1
INT 21H  
MOV BL,AL

Mov DL,0AH
MOV AH,2
INT 21H   

Mov DL,0Dh
MOV AH,2
INT 21H  

MOV DL,BL
MOV AH,2
INT 21H
     





;exit to DOS 
               
MOV AX,4C00H
INT 21H 

MAIN ENDP
    END MAIN 
  



