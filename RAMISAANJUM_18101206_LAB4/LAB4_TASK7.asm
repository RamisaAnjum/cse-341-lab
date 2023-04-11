; multi-segment executable file template.

data segment
    ; add your data here!
    pkey db "press any key...$" 
    EVEN DB "Even$"
    ODD DB "Odd$"
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
    mov ah , 1
    int 21h 
    
    mov ah , 0

    mov bl ,2
    
    cmp al , 0 
    je printEven
    
    div bl
    cmp ah , 0
    je printEven
    
    LEA DX,ODD 
    mov AH,9 
    int 21h
    jmp exit 
    
    
    
    printEven:  
    LEA DX,EVEN 
    mov AH,9 
    int 21h 
    
    exit: 
    
    
            
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
