start:

mov ah,9
lea dx, msg
int 21h  

mov ah, 1
int 21h

cmp al, '0'
jl n_num
   
cmp al, '9'
jg n_num

jmp num

ret 

n_num:
mov ah, 9
lea dx, msg3
int 21h
jmp start 

num:
mov ah, 9
lea dx, msg2
int 21h
jmp start

msg db 13,10,"Carregue numa tecla: $"
msg2 db " numero$"
msg3 db " nao numero$"