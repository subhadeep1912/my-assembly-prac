[org 0x7c00]
mov ah, 0x0e
mov bx, name  ; either this or put [org 0x7c00]

printStuff:
    mov al, [bx]
    cmp al, 0
    je exit
    int 0x10
    inc bx
    jmp printStuff

jmp $
name: 
    db "cunt", 0 

exit:
    jmp $
times 510 - ($-$$) db 0
db 0x55, 0xaa