
    mov ah, 9
    lea dx, msg1
    int 21h
     
    ret
    
msg1 db 218,196,196,196,196,196,196,191,
msg2 db 13,10,179,"      ",179,
msg3 db 13,10,179,"      ",179,
msg4 db 13,10,179,"      ",179,
msg5 db 13,10,192,196,196,196,196,196,196,217,'$'
            
    end