TITLE nib.asm
.model small
.stack 100h

.data
    AX_VAL dw 1234h

.code
main:
    mov ax, @data
    mov ds, ax

    mov ax, AX_VAL
    and ax, 0FFFh
    or ax, 000Fh

    call print_hex

    mov ah, 4Ch
    int 21h

print_hex proc
    push ax
    push bx
    push cx
    push dx

    mov cx, 4
print_loop:
    rol ax, 4
    mov bx, ax
    and bx, 0Fh
    cmp bx, 9
    jbe print_digit
    add bx, 7
print_digit:
    add bx, '0'
    mov dl, bl
    mov ah, 02h
    int 21h
    loop print_loop

    pop dx
    pop cx
    pop bx
    pop ax
    ret
print_hex endp
end main

