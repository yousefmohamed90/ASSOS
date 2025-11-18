CC = gcc

all: process output file3_program

process: ProcessCreation.c
	$(CC) ProcessCreation.c -o ProcessCreation

output: file1.o file2.o
	$(CC) file1.o file2.o -o output_program

file1.o: file1.c
	$(CC) -c file1.c

file2.o: file2.c
	$(CC) -c file2.c

file3_program: file3.c
	$(CC) file3.c -o file3_program

clean:
	rm -f *.o ProcessCreation output_program file3_program
