SECTION .DATA
	bigF:     db 'FFFFFFF',10
	bigFlen:  equ $-bigF
	lilF:	  db 'FF',2
	lilFlen:     equ $-lilF
SECTION .TEXT
	GLOBAL _start

_start:



	; Write 'Hello world!' to the screen
	mov eax,4            ; 'write' system call
	mov ebx,1            ; file descriptor 1 = screeni
	mov ecx,bigF       ; string to write
	mov edx,bigFlen            ; length of string to write
	int 80h              ; call the kernel

	; Terminate program
	mov eax,1            ; 'exit' system call
	mov ebx,0            ; exit with error code 0
	int 80h              ; call the kernel

