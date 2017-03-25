#!/bin/sh
echo "#!/bin/sh" > running.sh
echo "#SBATCH --time=30" >> running.sh
echo "#SBATCH --partition=medium" >> running.sh
echo "#SBATCH --mail-type=ALL" >> running.sh
echo "#SBATCH --mail-user=mcnelk@rpi.edu" >> running.sh
echo "" >> running.sh
echo "export BGLOCKLESSMPIO_F_TYPE=0x47504653" >> running.sh

USERNAME=${1:-"PCP6rssr"}
for numFiles in 1 16 64 128
do
  for operation in w r
  do
    for blockSize in 1 2 4 8 16
    do
      for tasks in 512 1024 2048 4096
      do
        echo "srun --ntasks $tasks -N $((tasks / 64)) --overcommit -o logs/files$numFiles-task$tasks-size$blockSize-op-$operation.log ./assignment4 $operation $numFiles $blockSize &" >> running.sh
        echo "" >> running.sh
      done
      echo "wait" >> running.sh
      echo "" >> running.sh
      echo "" >> running.sh
      for tasks in 8192
      do
        echo "srun --ntasks $tasks -N $((tasks / 64)) --overcommit -o logs/files$numFiles-task$tasks-size$blockSize-op-$operation.log ./assignment4 $operation $numFiles $blockSize &" >> running.sh
        echo "" >> running.sh
      done

      echo "wait" >> running.sh
      echo "" >> running.sh
      echo "" >> running.sh

    done
  done
done
echo "Finished"
