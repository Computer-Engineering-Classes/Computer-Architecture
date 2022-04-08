mov ah, 9
lea dx, msg
int 21h

lea bx, msg2
mov cx, 3
mov si, 23

rw:
mov ah, 1
int 21h
mov byte ptr[bx+si], al 
inc si   
loop rw

mov ah, 9
lea dx, msg2
int 21h

ret

msg db "3 teclas!!!: $"
msg2 db 13,10,"Carregou nas teclas:    $"      

end