.MODEL SMALL
 
.STACK 100H

.DATA 
 
 arr db 5 dup(3)

.CODE 
MAIN PROC 

;iniitialize DS

MOV AX,@DATA 
MOV DS,AX      

 MOV CX,5
 MOV AH,2
 MOV SI,0
 
 start: 
 
 ADD ARR[SI],30H
 MOV DL,arr[SI] 
 INT 21H
 ADD SI,1
 
 loop start







;exit to DOS 
               
MOV AX,4C00H
INT 21H 

MAIN ENDP
    END MAIN 
  



