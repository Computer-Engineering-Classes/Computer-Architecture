
    mov ah, 9
    lea dx, msg1
    int 21h
     
    ret
    
msg1 db 201,205,205,205,205,205,205,187,
msg2 db 13,10,186,178,178,178,178,178,178,186,
msg3 db 13,10,186,178,178,178,178,178,178,186,
msg4 db 13,10,186,178,178,178,178,178,178,186,
msg5 db 13,10,200,205,205,205,205,205,205,188,'$'
            
    end