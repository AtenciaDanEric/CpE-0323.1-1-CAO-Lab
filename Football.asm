TITLE Football.asm
.model small
.stack 100h
.code

start:

mov ax, 0b800h
mov es, ax

;fill the whole screen with the color orange
mov ah, 06h ; VIDEO - SCROLL UP WINDOW int 10/AH=06h
mov cl, 00h ; Starting row (0)
mov ch, 00h ; Starting column (0)
mov dl, 4fh ; Destination row (79)
mov dh, 18h ; Destination column (24)
mov bh, 60h ; Set color to 60h or yellow
int 10h

; Addition of black color design

mov ah, 06h ; VIDEO - SCROLL UP WINDOW int 10/AH=06h
mov cl, 0eh ; Starting row (14)
mov ch, 03h ; Starting column (3)
mov dl, 0fh ; Destination row (15)
mov dh, 04h ; Destination column (4)
mov bh, 00h ; Set color to 00h or black
int 10h

mov ah, 06h
mov cl, 0eh
mov ch, 16h
mov dl, 0fh
mov dh, 16h
mov bh, 00h
int 10h

mov ah, 06h
mov cl, 10h
mov ch, 05h
mov dl, 11h
mov dh, 05h
mov bh, 00h
int 10h

mov ah, 06h
mov cl, 10h
mov ch, 15h
mov dl, 11h
mov dh, 15h
mov bh, 00h
int 10h

mov ah, 06h
mov cl, 12h
mov ch, 06h
mov dl, 13h
mov dh, 06h
mov bh, 00h
int 10h

mov ah, 06h
mov cl, 12h
mov ch, 14h
mov dl, 13h
mov dh, 14h
mov bh, 00h
int 10h

mov ah, 06h
mov cl, 14h
mov ch, 07h
mov dl, 15h
mov dh, 07h
mov bh, 00h
int 10h

mov ah, 06h
mov cl, 14h
mov ch, 13h
mov dl, 15h
mov dh, 13h
mov bh, 00h
int 10h

mov ah, 06h
mov cl, 16h
mov ch, 08h
mov dl, 17h
mov dh, 09h
mov bh, 00h
int 10h

mov ah, 06h
mov cl, 16h
mov ch, 0bh
mov dl, 17h
mov dh, 0ch
mov bh, 00h
int 10h

mov ah, 06h
mov cl, 16h
mov ch, 0eh
mov dl, 17h
mov dh, 10h
mov bh, 00h
int 10h

mov ah, 06h
mov cl, 16h
mov ch, 12h
mov dl, 17h
mov dh, 12h
mov bh, 00h
int 10h

mov ah, 06h
mov cl, 2dh
mov ch, 00h
mov dl, 2eh
mov dh, 01h
mov bh, 00h
int 10h

mov ah, 06h
mov cl, 2fh
mov ch, 02h
mov dl, 30h
mov dh, 02h
mov bh, 00h
int 10h

mov ah, 06h
mov cl, 31h
mov ch, 03h
mov dl, 32h
mov dh, 03h
mov bh, 00h
int 10h

mov ah, 06h
mov cl, 31h
mov ch, 16h
mov dl, 32h
mov dh, 17h
mov bh, 00h
int 10h

mov ah, 06h
mov cl, 33h
mov ch, 04h
mov dl, 34h
mov dh, 04h
mov bh, 00h
int 10h

mov ah, 06h
mov cl, 33h
mov ch, 14h
mov dl, 34h
mov dh, 14h
mov bh, 00h
int 10h

mov ah, 06h
mov cl, 33h
mov ch, 16h
mov dl, 34h
mov dh, 16h
mov bh, 00h
int 10h

mov ah, 06h
mov cl, 35h
mov ch, 05h
mov dl, 36h
mov dh, 05h
mov bh, 00h
int 10h

mov ah, 06h
mov cl, 35h
mov ch, 07h
mov dl, 36h
mov dh, 07h
mov bh, 00h
int 10h

mov ah, 06h
mov cl, 35h
mov ch, 09h
mov dl, 36h
mov dh, 09h
mov bh, 00h
int 10h

mov ah, 06h
mov cl, 35h
mov ch, 0bh
mov dl, 36h
mov dh, 0ch
mov bh, 00h
int 10h

mov ah, 06h
mov cl, 35h
mov ch, 12h
mov dl, 36h
mov dh, 13h
mov bh, 00h
int 10h

mov ah, 06h
mov cl, 37h
mov ch, 06h
mov dl, 38h
mov dh, 0ah
mov bh, 00h
int 10h

mov ah, 06h
mov cl, 37h
mov ch, 0ch
mov dl, 38h
mov dh, 0fh
mov bh, 00h
int 10h

mov ah, 06h
mov cl, 37h
mov ch, 11h
mov dl, 38h
mov dh, 11h
mov bh, 00h
int 10h

mov ah, 06h
mov cl, 22h
mov ch, 0ah
mov dl, 29h
mov dh, 0ah
mov bh, 0fh
int 10h

mov ah, 02h
mov bh, 00h
mov dh, 10
mov dl, 34
int 10h

;addition of color white in the four corners
mov ah, 06h ; VIDEO - SCROLL UP WINDOW int 10/AH=06h
mov cl, 00h ; Starting row (0)
mov ch, 00h ; Starting column (0)
mov dl, 02h ; Destination row (2)
mov dh, 08h ; Destination column (8)
mov bh, 0ffh ; ; Set to color 0ffh or white 
int 10h


mov ah, 06h ; VIDEO - SCROLL UP WINDOW int 10/AH=06h
mov cl, 02h ; Starting row (2)
mov ch, 00h ; Starting column (0)
mov dl, 04h ; Destination row (4)
mov dh, 07h ; Destination column (7)
mov bh, 0ffh ; Set to color 0ffh or white
int 10h 

mov ah, 06h ; VIDEO - SCROLL UP WINDOW int 10/AH=06h
mov cl, 04h ; Starting row (4)
mov ch, 00h ; Starting column (0)
mov dl, 06h ; Destination row (6)
mov dh, 06h ; Destination column (6)
mov bh, 0ffh ; Set to color 0ffh or white
int 10h 

mov ah, 06h ; VIDEO - SCROLL UP WINDOW int 10/AH=06h
mov cl, 06h ; Starting row (6)
mov ch, 00h ; Starting column (0)
mov dl, 08h ; Destination row (8)
mov dh, 05h ; Destination column (5)
mov bh, 0ffh ; Set to color 0ffh or white
int 10h 

mov ah, 06h ; VIDEO - SCROLL UP WINDOW int 10/AH=06h
mov cl, 08h ; Starting row (8)
mov ch, 00h ; Starting column (0)
mov dl, 0ah ; Destination row (10)
mov dh, 04h ; Destination column (4)
mov bh, 0ffh ; Set to color 0ffh or white
int 10h 

mov ah, 06h ; VIDEO - SCROLL UP WINDOW int 10/AH=06h
mov cl, 0ah ; Starting row (10)
mov ch, 00h ; Starting column (0)
mov dl, 0eh ; Destination row (14)
mov dh, 03h ; Destination column (3)
mov bh, 0ffh ; Set to color 0ffh or white
int 10h 

mov ah, 06h ; VIDEO - SCROLL UP WINDOW int 10/AH=06h
mov cl, 0eh ; Starting row (14)
mov ch, 00h ; Starting column (0)
mov dl, 10h ; Destination row (16)
mov dh, 02h ; Destination column (2)
mov bh, 0ffh ; Set to color 0ffh or white
int 10h 

mov ah, 06h ; VIDEO - SCROLL UP WINDOW int 10/AH=06h
mov cl, 10h ; Starting row (16)
mov ch, 00h ; Starting column (0)
mov dl, 12h ; Destination row (18)
mov dh, 01h ; Destination column (1)
mov bh, 0ffh ; Set to color 0ffh or white
int 10h 

; bottom left
mov ah, 06h ; VIDEO - SCROLL UP WINDOW int 10/AH=06h
mov cl, 00h ; Starting row (0)
mov ch, 10h ; Starting column (16)
mov dl, 02h ; Destination row (2)
mov dh, 18h ; Destination column (24)
mov bh, 0ffh ; Set to color 0ffh or white
int 10h 

mov ah, 06h ; VIDEO - SCROLL UP WINDOW int 10/AH=06h
mov cl, 02h ; Starting row (2)
mov ch, 11h ; Starting column (17)
mov dl, 04h ; Destination row (4)
mov dh, 18h ; Destination column (24)
mov bh, 0ffh ; Set to color 0ffh or white
int 10h 

mov ah, 06h ; VIDEO - SCROLL UP WINDOW int 10/AH=06h
mov cl, 04h ; Starting row (4)
mov ch, 12h ; Starting column (18)
mov dl, 06h ; Destination row (6)
mov dh, 18h ; Destination column (24)
mov bh, 0ffh ; Set to color 0ffh or white
int 10h 

mov ah, 06h ; VIDEO - SCROLL UP WINDOW int 10/AH=06h
mov cl, 06h ; Starting row (6)
mov ch, 13h ; Starting column (19)
mov dl, 08h ; Destination row (8)
mov dh, 18h ; Destination column (24)
mov bh, 0ffh ; Set to color 0ffh or white
int 10h 

mov ah, 06h ; VIDEO - SCROLL UP WINDOW int 10/AH=06h
mov cl, 08h ; Starting row (8)
mov ch, 14h ; Starting column (20)
mov dl, 0ah ; Destination row (10)
mov dh, 18h ; Destination column (24)
mov bh, 0ffh ; Set to color 0ffh or white
int 10h 

mov ah, 06h ; VIDEO - SCROLL UP WINDOW int 10/AH=06h
mov cl, 0ah ; Starting row (10)
mov ch, 16h ; Starting column (22)
mov dl, 0ch ; Destination row (12)
mov dh, 18h ; Destination column (24)
mov bh, 0ffh ; Set to color 0ffh or white
int 10h 

mov ah, 06h ; VIDEO - SCROLL UP WINDOW int 10/AH=06h
mov cl, 0ch ; Starting row (12)
mov ch, 17h ; Starting column (23)
mov dl, 10h ; Destination row (16)
mov dh, 18h ; Destination column (24)
mov bh, 0ffh ; Set to color 0ffh or white
int 10h 

mov ah, 06h ; VIDEO - SCROLL UP WINDOW int 10/AH=06h
mov cl, 10h ; Starting row (16)
mov ch, 18h ; Starting column (24)
mov dl, 16h ; Destination row (22)
mov dh, 18h ; Destination column (24)
mov bh, 0ffh ; Set to color 0ffh or white
int 10h 

; upper right
mov ah, 06h ; VIDEO - SCROLL UP WINDOW int 10/AH=06h
mov cl, 4dh ; Starting row (77)
mov ch, 00h ; Starting column (0)
mov dl, 4fh ; Destination row (79)
mov dh, 08h ; Destination column (8)
mov bh, 0ffh ; Set to color 0ffh or white
int 10h 

mov ah, 06h ; VIDEO - SCROLL UP WINDOW int 10/AH=06h
mov cl, 4bh ; Starting row (75)
mov ch, 00h ; Starting column (0)
mov dl, 4dh ; Destination row (77)
mov dh, 07h ; Destination column (7)
mov bh, 0ffh ; Set to color 0ffh or white
int 10h 

mov ah, 06h ; VIDEO - SCROLL UP WINDOW int 10/AH=06h
mov cl, 49h ; Starting row (73)
mov ch, 00h ; Starting column (0)
mov dl, 4bh ; Destination row (75)
mov dh, 06h ; Destination column (6)
mov bh, 0ffh ; Set to color 0ffh or white
int 10h 

mov ah, 06h ; VIDEO - SCROLL UP WINDOW int 10/AH=06h
mov cl, 47h ; Starting row (71)
mov ch, 00h ; Starting column (0)
mov dl, 49h ; Destination row (73)
mov dh, 05h ; Destination column (5)
mov bh, 0ffh ; Set to color 0ffh or white
int 10h 

mov ah, 06h ; VIDEO - SCROLL UP WINDOW int 10/AH=06h
mov cl, 45h ; Starting row (69)
mov ch, 00h ; Starting column (0)
mov dl, 47h ; Destination row (71)
mov dh, 04h ; Destination column (4)
mov bh, 0ffh ; Set to color 0ffh or white
int 10h 

mov ah, 06h ; VIDEO - SCROLL UP WINDOW int 10/AH=06h
mov cl, 41h ; Starting row (65)
mov ch, 00h ; Starting column (0)
mov dl, 45h ; Destination row (69)
mov dh, 03h ; Destination column (3)
mov bh, 0ffh ; Set to color 0ffh or white
int 10h 

mov ah, 06h ; VIDEO - SCROLL UP WINDOW int 10/AH=06h
mov cl, 3fh ; Starting row (63)
mov ch, 00h ; Starting column (0)
mov dl, 41h ; Destination row (65)
mov dh, 02h ; Destination column (2)
mov bh, 0ffh ; Set to color 0ffh or white
int 10h 

mov ah, 06h ; VIDEO - SCROLL UP WINDOW int 10/AH=06h
mov cl, 3dh ; Starting row (61)
mov ch, 00h ; Starting column (0)
mov dl, 3fh ; Destination row (63)
mov dh, 01h ; Destination column (1)
mov bh, 0ffh ; Set to color 0ffh or white
int 10h 

; bottom right
mov ah, 06h ; VIDEO - SCROLL UP WINDOW int 10/AH=06h
mov cl, 4dh ; Starting row (77)
mov ch, 10h ; Starting column (16)
mov dl, 4fh ; Destination row (79)
mov dh, 18h ; Destination column (24)
mov bh, 0ffh ; Set to color 0ffh or white
int 10h 

mov ah, 06h ; VIDEO - SCROLL UP WINDOW int 10/AH=06h
mov cl, 4bh ; Starting row (75)
mov ch, 11h ; Starting column (17)
mov dl, 4dh ; Destination row (77)
mov dh, 18h ; Destination column (24)
mov bh, 0ffh ; Set to color 0ffh or white
int 10h 

mov ah, 06h ; VIDEO - SCROLL UP WINDOW int 10/AH=06h
mov cl, 49h ; Starting row (73)
mov ch, 12h ; Starting column (18)
mov dl, 4bh ; Destination row (75)
mov dh, 18h ; Destination column (24)
mov bh, 0ffh ; Set to color 0ffh or white
int 10h 

mov ah, 06h ; VIDEO - SCROLL UP WINDOW int 10/AH=06h
mov cl, 47h ; Starting row (71)
mov ch, 13h ; Starting column (19)
mov dl, 49h ; Destination row (73)
mov dh, 18h ; Destination column (24)
mov bh, 0ffh ; Set to color 0ffh or white
int 10h 

mov ah, 06h ; VIDEO - SCROLL UP WINDOW int 10/AH=06h
mov cl, 45h ; Starting row (69)
mov ch, 14h ; Starting column (20)
mov dl, 47h ; Destination row (71)
mov dh, 18h ; Destination column (24)
mov bh, 0ffh ; Set to color 0ffh or white
int 10h 

mov ah, 06h ; VIDEO - SCROLL UP WINDOW int 10/AH=06h
mov cl, 43h ; Starting row (67)
mov ch, 16h ; Starting column (22)
mov dl, 45h ; Destination row (69)
mov dh, 18h ; Destination column (24)
mov bh, 0ffh ; Set to color 0ffh or white
int 10h 

mov ah, 06h ; VIDEO - SCROLL UP WINDOW int 10/AH=06h
mov cl, 3fh ; Starting row (63)
mov ch, 17h ; Starting column (23)
mov dl, 43h ; Destination row (67)
mov dh, 18h ; Destination column (24)
mov bh, 0ffh ; Set to color 0ffh or white
int 10h 

mov ah, 06h ; VIDEO - SCROLL UP WINDOW int 10/AH=06h
mov cl, 39h ; Starting row (57)
mov ch, 18h ; Starting column (24)
mov dl, 3fh ; Destination row (63)
mov dh, 18h ; Destination column (24)
mov bh, 0ffh ; Set to color 0ffh or white
int 10h 

; Display the football text in the middle
mov ah,02
mov bh, 0fh
mov dl, 'F'
int 21h

mov ah,02
mov dl, 'o'
int 21h

mov ah,02
mov dl, 'o'
int 21h

mov ah,02
mov dl, 't'
int 21h

mov ah,02
mov dl, 'B'
int 21h

mov ah,02
mov dl, 'A'
int 21h

mov ah,02
mov dl, 'L'
int 21h

mov ah,02
mov dl, 'L'
int 21h

; Exit program
mov ah, 4ch
int 21h
end start
