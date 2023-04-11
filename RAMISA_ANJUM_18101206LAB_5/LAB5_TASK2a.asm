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
 MOV DX,1
 MOV BX,0
 START:
   CMP DX,148
   JG END
   JLE ADDITION
   JMP END
   
   ADDITION:
   ADD BX,DX
   ADD DX,3
  
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
  



