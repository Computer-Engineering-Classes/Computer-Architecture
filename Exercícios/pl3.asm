
    mov ah, 9
    lea dx, msg1
    int 21h
     
    ret
    
msg1 db 207,207,207,207,207,207,207,207,
msg2 db 207,207,207,207,207,207,207,207,13,10,
msg3 db 207,"              ",207,13,10,
msg4 db 207,"              ",207,13,10,
msg5 db 207,"              ",207,13,10,
msg6 db 207,"              ",207,13,10,
msg7 db 207,"              ",207,13,10,
msg8 db 207,207,207,207,207,207,207,207,
msg9 db 207,207,207,207,207,207,207,207,'$'
            
    end