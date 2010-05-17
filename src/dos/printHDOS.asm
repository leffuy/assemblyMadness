.MODEL SMALL
.STACK

.DATA
number db 25h," (This is your hex char as ascii)",10,'$'

.CODE

START:

mov dx,OFFSET number
mov ax,SEG number
mov ds,ax
mov ah,9
int 21h


mov ax,4c00h
int 21h


END START