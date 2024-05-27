.model small
.stack 100h
.data
    AH_VAL db 0
    BH_VAL db 0
    AL_VAL db 0
    BL_VAL db 0
    CH_VAL db 0
    DH_VAL db 0
    CL_VAL db 0
    DL_VAL db 0
.code
.startup
    mov ax, @data
    mov ds, ax
    mov al, AH_VAL
    mul BH_VAL
    mov bl, AL_VAL
    mul BL_VAL
    add ax, bx
    mov al, CH_VAL
    mul DH_VAL
    not al
    add al, CL_VAL
    not al
    mul DL_VAL
    not al
    mov ah, 4Ch
    int 21h
END
