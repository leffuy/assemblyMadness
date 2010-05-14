#Testing Testing

hello: test.o
	ld -s -o hello test.o

test.o: test.asm
	nasm -f elf test.asm

clean:
	@echo Clean..
	@rm test.o hello

