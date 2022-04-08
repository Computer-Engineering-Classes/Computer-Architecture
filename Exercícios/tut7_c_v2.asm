    
    ORG 100h  

    MOV SI, 1
    MOV CX, 2 

    c:
        MOV AH, [Num1+SI]
        MOV BH, [Num2+SI]
        CALL SOMA
        MOV [RES+SI], AH
        DEC SI
    LOOP c

    RET     

    SOMA:   
        ADC AH, BH
        RET    

    Num1 DB 12h, 34h
    Num2 DB 43h, 21h
    RES  DB "xxxx" 

    END