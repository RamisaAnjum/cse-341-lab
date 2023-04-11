.MODEL SMALL
 
.STACK 100H

.DATA 
 X DB 30

.CODE 
MAIN PROC 

;iniitialize DS   
MOV AX,@DATA 
MOV DS,AX

Mov AH,1
INT 21H  
MOV BL,AL 
SUB BL,X 

Mov AH,1
INT 21H  
MOV CL,AL 
SUB CL,X
 

ADD BL,CL


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
  



