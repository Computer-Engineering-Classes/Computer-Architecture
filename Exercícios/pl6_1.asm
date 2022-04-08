    org 100h

    mov ah, 9
    lea dx, msg1
    int 21h
    
    lea bx, nome1
    mov cx, 10  
      
ler_primeiro:
    mov ah, 1
    int 21h   
    
    cmp al, 13             ;ENTER
    je avancar
    mov [bx], al
    inc bx
    loop ler_primeiro
    avancar:
    mov ah, 9
    lea dx, msg2
    int 21h
    lea bx, nome2 
    
    mov cx, 10
    
ler_segundo:
    mov ah, 1
    int 21h   
    
    cmp al, 13             ;ENTER  
    je avancar2
    
    mov [bx], al
    inc bx
    loop ler_segundo
     
    avancar2:
    mov cx, 10
    mov si, 0
c:  
    mov bh, [nome1+si]      
    mov bl, [nome2+si]
    cmp bh, bl 
    jl menor
    inc si
    loope c

    jmp maior
     
maior:
     mov ah, 9
     lea dx, linha
     int 21h
     mov ah, 9
     lea dx, nome2
     int 21h  
     mov ah, 9
     lea dx, linha
     int 21h
     mov ah, 9
     lea dx, nome1
     int 21h
     ret
     
menor:
     mov ah, 9
     lea dx, linha
     int 21h     
     mov ah, 9
     lea dx, nome1
     int 21h     
     mov ah, 9
     lea dx, linha
     int 21h      
     mov ah, 9
     lea dx, nome2
     int 21h
     ret  
     
nome1 db "          $"
nome2 db "          $"  
msg1 db  "Introduza o primeiro nome: $"
msg2 db  13,10,"Introduza o segundo nome: $"  
linha db 13,10,"$" 

end