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
MOV BL,AL

Mov DL,0AH
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
  



