mov ah, 9
lea dx, msg
int 21h

lea bx, [msg2+23]

mov cx, 20

rw:
mov ah, 1
int 21h
mov [bx], al 
inc bx   
loop rw

mov ah, 9
lea dx, msg2
int 21h

ret

msg db "20 teclas!!!: $"
msg2 db 13,10,"Carregou nas teclas:                      $"      

end