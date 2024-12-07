include 'emu8086.inc'
.model small
.stack 100h
.data
main proc
     
     print 'Enter First Value : '
     mov ah, 1
     int 21h
     mov bh, al
     
     printn
     
     print 'Enter Second Value : '
     mov ah,1
     int 21h
     mov bl, al
     
     printn
     
     cmp bh, bl
     jg l1
     je l2
     jl l3
     
     l1:
     print 'First one is greater'
     jmp exit
     
     l2:
     print 'Both are equal'
     jmp exit
     
     
     l3:
     print 'Second one is greater'
     jmp exit
     
     
     exit:
     mov ax, 4ch
     int 21h
     main endp
end main