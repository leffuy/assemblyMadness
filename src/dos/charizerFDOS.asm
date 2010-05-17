.MODEL SMALL
.STACK

.DATA
bigF db "FFFFFFF",10,'$'
lilF db 'F',10,'$'

.CODE

START:

mov dx,OFFSET bigF
mov ax,SEG bigF
mov ds,ax
mov ah,9
int 21h
mov dx, offset lilF
mov ax, seg lilF
mov ah,9
int 21h
mov ah,9
int 21h
mov dx, offset bigF
mov ax, seg bigF
mov ah,9
int 21h

;Termination with return 0 
MOV ax,4c00h
INT 21h
END START