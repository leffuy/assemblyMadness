SECTION .DATA
	bigF:     db 'FFFFFFF',10
	bigFlen:  equ $-bigF
	lilF:	  db 'F',10
	lilFlen:  equ $-lilF
SECTION .TEXT
	GLOBAL _start

_start:

	mov eax,4            
	mov ebx,1            
	mov ecx,bigF
	mov edx,bigFlen
	int 80h
	mov eax,4            
	mov ebx,1            
	mov ecx,lilF	
	mov edx,lilFlen	
	int 80h
	mov eax,4            
	mov ebx,1            
	mov ecx,lilF	
	mov edx,lilFlen	
	int 80h
	mov eax,4            
	mov ebx,1            
	mov ecx,bigF
	mov edx,bigFlen
	int 80h

	mov eax,1           
	mov ebx,0          
	int 80h          

