.PHONY: compile run delete clean read runN

np ?= 1
nf ?= 1
nb ?= 1
fn ?= 0

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

runN:
	mpirun -n $(np) ./assignment4.out w $(nf) $(nb)

read:
	hexdump -v -e '7/4 "%10d "' -e '"\n"' output$(fn).bin
