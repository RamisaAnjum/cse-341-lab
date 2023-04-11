; multi-segment executable file template.

data segment
    ; add your data here!
    pkey db "press any key...$"
    STR DB 'ENTER THREE INITIALS: $'
    STR1 DB '',0AH,0DH
    FIRST DB ?
    STR2 DB '',0AH,0DH
    SECOND DB ?
    STR3 DB '',0AH,0DH
    THIRD DB ?
    STR4 DB '$'
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
    MOV AH,9
    LEA DX,STR
    INT 21H
 
    MOV AH,1
    INT 21H
    MOV FIRST,AL
    INT 21H
    MOV SECOND,AL
    INT 21H
    MOV THIRD,AL
 
    MOV AH,9
    LEA DX,STR1
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
