.MODEL SMALL
.STACK

.DATA
bigA db "AAAAAAA",10,'$'
lilA db "   A   ",10,'$'

.CODE

START:

mov dx,OFFSET bigA
mov ax,SEG bigA
mov ds,ax
mov ah,9
int 21h
mov dx, offset lilA
mov ax, seg lilA
mov ah,9
int 21h
mov ah,9
int 21h
mov ah,9
int 21h

;Termination with return 0 
MOV ax,4c00h
INT 21h
END START