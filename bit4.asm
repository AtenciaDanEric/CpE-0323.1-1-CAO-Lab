TITLE bit4.asm
.model small
.stack 100h
.data
    num dq 03Dh 
.code
main proc
    mov ax, @data
    mov ds, ax
    mov rdx, 0   
    mov ebx, dword ptr num + 4 
    mov ecx, 32 

high_loop:
    shr ebx, 1          
    jc high_is_one 
    mov dl, '0'        
    jmp high_print 
    
high_is_one:
    mov dl, '1'  
    
high_print:
    mov ah, 02h 
    int 21h          
    loop high_loop 

    mov rdx, qword ptr num 
    mov ebx, dword ptr num + 4 
    mov ecx, 32       

low_loop:
    shr ebx, 1          
    jc low_is_one     
    mov dl, '0'       
    jmp low_print       
    
low_is_one:
    mov dl, '1'        
    
low_print:
    mov ah, 02h      
    int 21h           
    loop low_loop  

    ; Exit the program
    mov ax, 4c00h 
    int 21h             

main endp
end main
