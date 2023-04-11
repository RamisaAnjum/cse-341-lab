; multi-segment executable file template.

data segment
    ; add your data here!
    pkey db "press any key...$" 
    NUMBER DW 72
ends

stack segment
    dw   128  dup(0)
ends

code segment
start:
; set segment registers:
    mov ax, data
    mov ds, ax
    mov es, ax

    ; add your code here
    MOV AX,NUMBER
    MOV BX,1
    MOV CX,0

   WHILE_:
   DIV BX
   CMP DX,0
   JE CHECK  
    
    MOV AX,NUMBER
    INC BX
    CMP BX,AX
    JMP END_



   CHECK:
   CMP AX,BX
   JG INC_ 
   JE INC2_
   JMP END_


   INC_:
   ADD CX,2
   MOV AX,NUMBER
   INC BX
   CMP BX,AX
   JL WHILE_:
   JMP END_   


   INC2_:
   INC CX
   JMP END_ 



   END_:
   ADD CX,48
   MOV AH,2
   MOV DX,CX
   INT 21H



   MOV AH,4CH
   INT 21H            
    lea dx, pkey
    mov ah, 9
    int 21h        ; output string at ds:dx
    
    ; wait for any key....    
    mov ah, 1
    int 21h
    
    mov ax, 4c00h ; exit to operating system.
    int 21h    
ends

end start ; set entry point and stop the assembler.
