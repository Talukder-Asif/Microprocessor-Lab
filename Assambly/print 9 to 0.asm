include 'emu8086.inc'
.model small
.stack 100h
.data
main proc
     print 'Print 9 to 1'
     printn
     
     mov cx, 9
     mov bl, 9
     start:
          mov dl, bl
          add dl, 48
          mov ah, 02
          int 21h
          
          printn
          
          dec bl
     loop start
     
     main endp
end main