#!/bin/sh
echo "#!/bin/sh" > running.sh
echo "#SBATCH --time=10" >> running.sh
echo "#SBATCH --partition=medium" >> running.sh

USERNAME=${1:-"PCP6rssr"}
for numFiles in 1 16 64 128
do
  for operation in w r
  do
    for blockSize in 1 2 4 8 16
    do
      for tasks in 512 1024 2048 4096 8192
      do
        echo "srun --ntasks $tasks -N $((tasks / 64)) --overcommit -o $numFiles-$tasks-$blockSize-$operation.log /gpfs/u/home/PCP6/$USERNAME/scratch/assignment4 $operation $numFiles $blockSize &" >> running.sh
        echo "" >> running.sh
      done
      echo "wait" >> running.sh
      echo "" >> running.sh
      echo "" >> running.sh

    done
  done
done
echo "Finished"
