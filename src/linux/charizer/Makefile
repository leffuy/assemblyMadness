#Testing Testing

hello: charizerF.o
	ld -s -o hello charizerF.o

charizerF.o: charizerF.asm
	nasm -f elf charizerF.asm

clean:
	@echo Clean..
	@rm *.o hello

