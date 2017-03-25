.PHONY:  all test compile clean delete run run2 runN read read2 readN read batch blue
np ?= 1
nf ?= 1
nb ?= 1
fn ?= 0

all: compile run

test: compile run read

compile: clean assignment4.c timestub.c
	mpicc assignment4.c timestub.c -o assignment4.out

clean:
	rm -f assignment4.out

delete:
	rm -f output/*.bin

run: compile delete
	mpirun -n 1 ./assignment4.out w 1 1

run2: compile delete
	mpirun -n 2 ./assignment4.out w 1 1

runN: compile delete
	mpirun -n $(np) ./assignment4.out w $(nf) $(nb)

read: compile delete run
	mpirun -n 1 ./assignment4.out r 1 1

read2: compile delete run2
	mpirun -n 2 ./assignment4.out r 1 1

readN: compile delete runN
	mpirun -n $(np) ./assignment4.out r $(nf) $(nb)

read:
	hexdump -v -e '7/4 "%10d "' -e '"\n"' output/output$(fn).bin

batch: blue
	./generate.sh $USER
	sbatch --partition medium --nodes 256 --time 60 ./running.sh

blue: assignment4.c
	mpixlc -O5 assignment4.c -o assignment4
