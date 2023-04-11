; multi-segment executable file template.

data segment
    ; add your data here!
     SQUARE DB '**********',0DH,0AH,'$'
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
            
    lea dx, SQUARE
    mov ah, 9
    
    INT 21H        ; output string at ds:dx
    INT 21H
    INT 21H 
    INT 21H
    INT 21H 
    INT 21H
    INT 21H
    INT 21H 
    INT 21H 
    INT 21H 
    
    
    ; wait for any key....    
    mov ah, 1
    int 21h
    
    mov ax, 4c00h ; exit to operating system.
    int 21h    
ends

end start ; set entry point and stop the assembler.
