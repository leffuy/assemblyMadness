.MODEL SMALL,c
.STACK

.DATA
tehone db 25h
itoa_buffer db 9 dup(?)

.CODE

itoa:
	xor  bx, bx

	div_loop:
	xor  dx, dx   ; dx = 0

	; Divide ax:dx by cx,
	; get quotinent in ax and remainder in dx
	div  cx

	; Convert digit to ASCII
	cmp  dl, 10
	jb  below10
	add  dl, 'a'-10
	jmp continue
	below10:
	add  dl, '0'
	continue:

	; Write ASCII character to buffer
	mov  [itoa_buffer+bx], dl
	inc  bx

	; Check if there was anything left to convert
	or  ax, ax
	jnz div_loop

	; Now show the result
	show_loop:
	mov  ah, 2
	mov  dl, [itoa_buffer+bx-1]
	push bx
	int  21h
	pop  bx
	dec  bx
	jnz show_loop

	itoa_ret:
	ret


START:

mov dx,OFFSET tehone
mov ax,SEG tehone
mov ds,ax
mov al,[tehone] ; get byte from the buf
xor ah, ah       ; set rest of ax to zero
mov cx, 10       ; set base number for decimal
call itoa

;mov dl,25h
;mov ah,2
;int 21h


mov ax,4c00h
int 21h


END START

; print ax as base cx

