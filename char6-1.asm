assume cs:codesg, ds:datasg

datasg segment
    db "welcome to masm"
datasg ends


codesg segment
start: mov ax,datasg
        mov ds,ax 
        mov ax,0B800H
        mov es,ax
        mov si,0
        mov di, 160*12+80-16
        
        mov cx,16
    w: mov al,[si]
        mov es:[di],al
        inc di
        mov al,71H
        mov es:[di],al
        inc si
        inc di
        loop w

codesg ends

end start 