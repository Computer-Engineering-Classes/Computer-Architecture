ORG 100h 

MOV AL, 10
MOV AH, 10h
MOV BX, 0ffffh

LEA BX, msg2

MOV CX, [BX-2]
MOV DX, word ptr[msg3]

mov ah, 9
lea dx, msg1 
int 21h

ret

msg1 DB "UTAD"," "
msg2 DB "Vila Real","$"
msg3 DB 100, 200 

    END