; multi-segment executable file template.

data segment
    ; add your data here!
    pkey db "press any key...$" 
    arr1 db 8,2,7,4,3
ends

stack segment
    dw   128  dup(0)
ends

code segment
    Assume cs:code, ds:data
start:
; set segment registers:
    mov ax, data
    mov ds, ax
    mov es,ax 
    mov bx,OFFSET arr1
    mov cx,5
    mov dx,cx

    ; add your code here  
    L1:
     mov si,0
     mov ax, si
     inc ax
     mov di,ax
     mov dx,cx
    
    L2:
     mov al, [bx][si]
     cmp al, [bx][di]
     jg L4
     
     L3:
     inc si
     inc di
     dec dx
     cmp dx, 00
     je L1
     jg L2
      
     L4:
      mov al,[bx][si]
      mov ah,[bx][di]
      mov [bx][si],ah
      mov [bx][di],al
      inc si
      inc di
      dec dx
      cmp dx,00
      je L1
      jg L2
            
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
