    
    MOV SI, 1
    MOV CX, 2  
    
    c:
        MOV AH, [Num1+SI]
        ADC AH, [Num2+SI]
        MOV [RES+SI], AH
        DEC SI
    LOOP c
    
    RET

    Num1 DB  12h, 34h
    Num2 DB  43h, 21h
    RES  DB  "xxxx"  
    
    END                
    