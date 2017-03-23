.PHONY: compile run delete clean read

all: compile run

test: compile run

compile:
	mpicc assignment4.c timestub.c -o assignment4.out

clean:
	rm -f assignment4.out

delete:
	rm -f text.txt

run:
	mpirun -n 1 ./assignment4.out w 1 1

run2:
	mpirun -n 2 ./assignment4.out w 1 1

read:
	hexdump -v -e '7/4 "%10d "' -e '"\n"' test.txt
