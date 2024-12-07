include 'emu8086.inc'
.stack 100h
.model small
.data
.code
main proc
     
print 'Enter first number: '
mov ah, 01h
int 21h
sub al, 48
mov bl, al
printn

print 'Enter second number: '
mov ah, 01h
int 21h
printn 

sub al, 48
mul bl
mov bx, 9

cmp ax, bx
jg dual

print 'The multiplication is: '
mov bl, al
add bl, 48
mov dl, bl
mov ah, 02h
int 21h
jmp exit

dual:
print 'The multiplication is: '
aam
add ah, 48
add al, 48
mov bl, al
mov dl, ah
mov ah, 2
int 21h
mov dl, bl
mov ah, 2
int 21h


exit:
main endp
end main