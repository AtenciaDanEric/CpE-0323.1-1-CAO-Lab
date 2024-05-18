TITLE password.asm
.model small
.stack 100h
 
.data
  msg db 13,10,"Enter password (10 characters):$"
  correct_msg db 13,10,"Password is CORRECT!$"
  incorrect_msg db 13,10,"Password is INCORRECT!$"
  password db "daneric123", 0 ; pre-defined corrected password
  input_buffer db 10 dup(?)
 
.code
main proc
  mov ax, @data
  mov ds, ax
 
  ; Prompt user to enter a password
  mov ah, 09h
  lea dx, msg
  int 21h
 
  ; Read user input, displaying asterisks
  lea si, input_buffer  ; Buffer to store input
  mov cx, 10  ; Number of characters to read
read_loop:
  ; Read character without echo
  mov ah, 08h
  int 21h
  ; Store character in buffer
  mov [si], al
  ; Print asterisk
  mov ah, 02h
  mov dl, '*'
  int 21h
  ; Move to next buffer location
  inc si
  ; Decrement loop counter
  loop read_loop
 
  ; Null-terminate the input for comparison
  mov byte ptr [si], 0
 
  ; Compare input with password
  lea si, input_buffer  ; Start of input buffer
  lea di, password
 
  ; Loop through each character of the input and password
  mov cx, 10  ; Loop 10 times for a 10-character password
compare_loop:
  mov al, [si]  ; Load character from user input
  mov bl, [di]  ; Load character from password
  cmp al, bl    ; Compare characters
  jne incorrect_password  ; If characters don't match, jump to incorrect_password
  inc si  ; Move to next character of user input
  inc di  ; Move to next character of password
  loop compare_loop  ; Repeat until all characters are compared
 
  ; If control reaches here, the password is correct
  jmp correct_password
 
incorrect_password:
  ; Print "Password is INCORRECT!"
  mov ah, 09h
  lea dx, incorrect_msg
  int 21h
  jmp end_program
 
correct_password:
  ; Print "Password is CORRECT!"
  mov ah, 09h
  lea dx, correct_msg
  int 21h
 
end_program:
  ; Exit the program
  mov ah, 4ch
  int 21h
 
main endp
end main
