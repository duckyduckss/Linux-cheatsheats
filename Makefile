.PHONY: all build run clean

all: build

build: program

program: main.o utils.o 
	gcc main.o utils.o -o program

main.o: main.c utils.h
	gcc -c main.c

utils.o: utils.c utils.h
	gcc -c utils.c

run: program
	./program | tee output.txt

clean: 
	rm -f program *.o output.txt
