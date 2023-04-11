.MODEL SMALL
 
.STACK 100H

.DATA 


.CODE 
MAIN PROC 

;initialize DS

MOV AX,@DATA 
MOV DS,AX 
 
; enter your code here

 ;MOV AH,2
 MOV DX,100
 MOV BX,0
 START:
   CMP DX,5
   JL END
   JGE ADDITION
   JMP END
   
   ADDITION:
   ADD BX,DX
   SUB DX,5
  
   JMP START

 END: 
   MOV AX,BX
;  MOV DX,AX
;  MOV AH,2
;  INT 21h
;
;exit to DOS 
               
MOV AX,4C00H
INT 21H 

MAIN ENDP
    END MAIN 
  



