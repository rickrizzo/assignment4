#!/bin/sh
#SBATCH --time=10
#SBATCH --partition=medium

for numFiles in 1 16 64 128
do
  for tasks in 512 1024 2048 4096 8192
  do
    for blockSize in 1 2 4 8 16
    do
      for operation in w r
      do
        srun --ntasks $tasks -N $((tasks / 64)) --overcommit -o $numFiles-$tasks-$blockSize-$operation.log /gpfs/u/home/PCP6/PCP6rssr/scratch/assignment4 $operation $numFiles $blockSize &
      done
    done
  done
done
echo "Finished"
