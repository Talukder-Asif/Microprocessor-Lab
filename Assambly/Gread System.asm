include 'emu8086.inc'
.model small
.stack 100h
.data
a db ?
b db ?

main proc
     mov ax, @data
     mov ds, ax
     
     mov ah, 1
     int 21h
     sub al, 48
     mov a, al
     int 21h
     sub al, 48
     mov b, al
     
     
     printn
     
     cmp a, 8
     jg AP
     je AP
     
      
     cmp a, 7
     je AA
     
      
     cmp a, 6
     je AM
     
      
     cmp a, 5
     je BB
     
      
     cmp a, 4
     je CC
      
     cmp a, 3
     je DDD
     jl faltu
     
     AP:
     print 'Got A+'
     printn
     jmp exit
      
     AA:
     print 'Got A'
     printn
     jmp exit
      
     AM:
     print 'Got A-'
     printn
     jmp exit
      
     BB:
     print 'Got B'
     printn
     jmp exit
      
     CC:
     print 'Got C'
     printn
     jmp exit  
     
      
     DDD:
     cmp b, 3
     jl faltu 
     
     print 'Got D'
     printn
     jmp exit
     
      
     faltu:
     print 'Faltu'
     printn
     jmp exit
     
     exit:
     mov ah, 4ch
     int 21h
     main endp
end main
     
     
     