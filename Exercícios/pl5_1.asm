
init:
mov ah, 9 
lea dx, msg
int 21h  

mov ah, 1
int 21h

cmp al, '5'
loopne init

mov ah, 9
lea dx, msg2
int 21h

mov ax, 4c00h
int 21h

msg db 13,10,"Carregue numa tecla: $"
msg2 db " CINCO$"