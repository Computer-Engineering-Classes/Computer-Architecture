; Escrever um texto no ecra

    mov ah, 9
    lea dx, texto  ; Load Effective Address
    int 21h         ; Interrupcao n. 21 Hex

    ret             ; Return - volta ao programa anterior

texto db "Menu:", 13, 10, "Opcao 1:", 13, 10, "Opcao 2:", '$'

    end 