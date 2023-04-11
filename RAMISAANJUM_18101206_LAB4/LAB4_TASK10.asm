; multi-segment executable file template.

data segment
    ; add your data here!
    pkey db "press any key...$" 
    num1 db 5
    num2 db 9
    num3 db 7
    LRGT db ?
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
    MOV AL,NUM1
    MOV LRGT,AL
    CMP AL,NUM2
    JGE SKIP1
    MOV AL,NUM2
    MOV LRGT,AL
    SKIP1:
    MOV AL,LRGT
    CMP AL,NUM3
    JGE SKIP2
    MOV AL,NUM3
    MOV LRGT,AL 
    SKIP2:
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
