    mov si, 0       ;index do vetor (contador)
    mov cx, 20      ;tamanho do loop
ler:   
    mov ah, 1       ;le um caractere
    int 21h
    mov vetor[si], al   ;guarda no vetor
    inc si              ;incrementa index (contador)
    loop ler 
    
    mov si, 0
    mov cx, 20

    mov ah, 9        ;mudar de linha
    lea dx, aux
    int 21h
     
escrever:  
    mov ah, 2        ;apresenta conteudo do vetor no ecra
    mov dl, vetor[si] 
    int 21h
    inc si
    loop escrever
    
    ret
    
    vetor db '                    $'   ;vetor  
    aux db 13,10,'$'                   ;variavel auxiliar para mudar de linha 