TITLE 50x10.asm
.model small 
.stack 100h 
 
.data 
    multiplier dw 50 
    multiplicand dw 10 
    result dw ? 
 
.code 
main: 
    mov ax, @data 
    mov ds, ax 
 
    ; Initialize result to 0 
    mov result, 0 
 
    ; Loop to perform multiplication using addition 
    mov cx, multiplicand   ; Load multiplicand into CX 
multiply_loop: 
    add result, multiplier ; Add multiplier to result 
    loop multiply_loop    ; Decrement CX and loop if not zero 
 
    ; Display the result 
    mov ax, result 
    call print_num 
 
    ; Exit program 
    mov ah, 4Ch 
    int 21h 
 
; Procedure to print a number 
print_num proc 
    push ax 
    push bx 
    push cx 
    push dx 
 
    mov bx, 10     ; Base 10 for division 
    mov cx, 0      ; Counter for digits 
next_digit: 
    xor dx, dx     ; Clear DX for division 
    div bx         ; Divide AX by 10 
    push dx        ; Store the remainder 
    inc cx         ; Increment digit counter 
    or ax, ax      ; Check if quotient is zero 
    jnz next_digit ; If not zero, continue 
 
print_loop: 
    pop dx         ; Pop next digit from stack 
    add dl, '0'    ; Convert to ASCII 
    mov ah, 02h    ; Function to print character 
    int 21h        ; Call DOS interrupt 
    loop print_loop; Loop until all digits printed 
 
    pop dx 
    pop cx 
    pop bx 
    pop ax 
    ret 
print_num endp 
 
end main
