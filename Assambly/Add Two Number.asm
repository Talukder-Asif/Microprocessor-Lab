include 'emu8086.inc'
.model small
.stack 100h
.data

a db ?
b db ?

main proc
     mov ax , @data
     mov ds, ax
     
     ;get fist value
     mov ah, 1
     int 21h
     sub al, 48
     mov a, al
     
     ;get second value
     mov ah, 1
     int 21h
     sub al, 48
     mov b, al  
     
     
     ;sum
     mov al, a
     
     add al, b
     mov bl, 9
     
     cmp al, bl
     jg twoDGT
     
     mov ah, 2
     add al, 48
     mov dl, al
     int 21h
     jmp exit
     
     twoDGT:
     mov al, a
     add al, b
     mov bx, ax
     
     
     
     mov ah, 2
     mov dl, bh
     add dl, 48
     int 21h
     
     mov ah, 2
     mov dl, bl
     add dl, 38
     int 21h
     
     
     exit:
     mov ah, 4ch
     int 21h
     main endp
end main
     
     
     