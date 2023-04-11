; multi-segment executable file template.

data segment
    ; add your data here!
    pkey db "press any key...$"
    arr db 1,2,3,4,5,6,7,8,9,10
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
    mov cx,10
    ;mov ah,2
    mov si,0

    start1:

    push ax
    add si,1
    loop start1
        
    mov cx,10
    mov si,0
    poping:
 
    pop ax
    add si,1
    loop poping
    
    
            
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
