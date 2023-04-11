; multi-segment executable file template.

data segment
    ; add your data here!
    pkey db "press any key...$"
    TEXT1 db "It is divisible by 5 and 11$"
    TEXT2 db "It is not divisible by 5 and 11$"
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
    mov cx , 23
    mov bh , 5
    mov bl , 11
    
    mov ax , cx
    div bh
    cmp ah , 0
    je check11
    jmp noPrint
    
    check11:
        mov ax , cx
        div bl
        cmp ah , 0
        je print
        jmp noPrint
        
    print:
        
        lea dx, TEXT1
        mov ah, 9
        int 21h
        jmp exit 
        
    noPrint:
        lea dx, TEXT2
        mov ah, 9
        int 21h
        jmp exit
        
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
