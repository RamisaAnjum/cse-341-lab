; multi-segment executable file template.

data segment
    ; add your data here!
    pkey db "press any key...$"
    MSG1 DB 10,13,"THIS IS A STRING $"
    BUFFERSIZE DB 21;
    INPUTLENGTH DB 0;

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
            
    lea dx, MSG1
    mov ah, 9
    int 21h
     
    mov dx, offset bufferSize ; load our pointer to the beginning of the structure
    mov ah, 0Ah ; GetLine function
    int 21h

    xor dx, dx
    lea dx, BUFFERSIZE
    mov ah, 06h ;output
    int 21h

    mov ah,0
    int 21h
        ; output string at ds:dx
    
    ; wait for any key....    
    mov ah, 1
    int 21h
    
    mov ax, 4c00h ; exit to operating system.
    int 21h    
ends

end start ; set entry point and stop the assembler.
