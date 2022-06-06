; mov ah, 0x0e ;using the ax register, this instruction converts to teletype mode
; mov al, 'B' ; The character that I want to print
; int 0x10 
; mov ah, 0x0e
; mov al, 'R'
; int 0x10
; mov ah, 0x0e
; mov al, 'U'
; int 0x10
; mov ah, 0x0e
; mov al, 'h'
; int 0x10 ; int means interrupt which is used to do anything taht we want, for printing 0x10 is used
mov bl, 1
mov ah, 0x0e
mov al, 'a'
int 0x10
bruh:
    cmp al, 'Z'
    je exit
    inc al
    cmp bl, 1
    je printEven
    cmp bl, 0
    je printOdd

jmp $
printOdd:
    inc bl
    ; int 0x10
    sub al, 'A'
    add al, 'a'    
    int 0x10
    jmp bruh

jmp $
printEven:
    dec bl
    ; int 0x10
    sub al, 'a'
    add al, 'A'
    int 0x10
    jmp bruh    

exit: 
    jmp $
times 510-($-$$) db 0 

db 0x55, 0xaa