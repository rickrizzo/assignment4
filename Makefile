.PHONY: compile run delete clean

all: compile run delete clean

test: compile run
	
compile:
	mpicc assignment4.c timestub.c -o assignment4.out

clean:
	rm -f assignment4.out

delete:
	rm -f text.txt

run:
	mpirun -n 1 ./assignment4.out
