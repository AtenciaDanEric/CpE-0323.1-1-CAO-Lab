.model small
.stack 100h
.data
    myString db "Proud to be TIPians", "$"
.code
main proc
    mov ax, @data
    mov ds, ax
    mov bx, offset myString
LP1: 
    mov dl, [bx]
    cmp dl, '$'
    je Exit
    inc bx
    
    or dl, 00100000b ; Set the 5th bit (assuming you want to set the 5th bit of dl)
    
    mov ah, 02h
    int 21h
    jmp LP1
Exit: 
    mov ax, 4c00h
    int 21h
main endp
end main