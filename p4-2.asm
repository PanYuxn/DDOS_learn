assume cs:codesegment

codesegment segment
    mov bx,00be
    mov ax,2000h
    mov ax,be
    mov ax,2000h
    mov ds,ax
    mov bx,1000h
    mov ax,[bx]
    inc bx
    inc bx
    mov [bx],ax
    inc bx
    inc bx
    mov [bx],ax
    inc bx
    mov [bx],al
    inc bx
    mov [bx],al

    mov ax,4c00h
    int 21h
codesegment ends
end
    