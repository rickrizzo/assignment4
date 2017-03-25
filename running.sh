#!/bin/sh
#SBATCH --time=30
#SBATCH --partition=medium
#SBATCH --mail-type=ALL
#SBATCH --mail-user=mcnelk@rpi.edu

export BGLOCKLESSMPIO_F_TYPE=0x47504653
srun --ntasks 512 -N 8 --overcommit -o logs/files1-task512-size1-op-w.log ./assignment4 w 1 1 &

srun --ntasks 1024 -N 16 --overcommit -o logs/files1-task1024-size1-op-w.log ./assignment4 w 1 1 &

srun --ntasks 2048 -N 32 --overcommit -o logs/files1-task2048-size1-op-w.log ./assignment4 w 1 1 &

srun --ntasks 4096 -N 64 --overcommit -o logs/files1-task4096-size1-op-w.log ./assignment4 w 1 1 &

wait


srun --ntasks 8192 -N 128 --overcommit -o 1-8192-1-w.log ./assignment4 w 1 1 &

wait


srun --ntasks 512 -N 8 --overcommit -o logs/files1-task512-size2-op-w.log ./assignment4 w 1 2 &

srun --ntasks 1024 -N 16 --overcommit -o logs/files1-task1024-size2-op-w.log ./assignment4 w 1 2 &

srun --ntasks 2048 -N 32 --overcommit -o logs/files1-task2048-size2-op-w.log ./assignment4 w 1 2 &

srun --ntasks 4096 -N 64 --overcommit -o logs/files1-task4096-size2-op-w.log ./assignment4 w 1 2 &

wait


srun --ntasks 8192 -N 128 --overcommit -o 1-8192-2-w.log ./assignment4 w 1 2 &

wait


srun --ntasks 512 -N 8 --overcommit -o logs/files1-task512-size4-op-w.log ./assignment4 w 1 4 &

srun --ntasks 1024 -N 16 --overcommit -o logs/files1-task1024-size4-op-w.log ./assignment4 w 1 4 &

srun --ntasks 2048 -N 32 --overcommit -o logs/files1-task2048-size4-op-w.log ./assignment4 w 1 4 &

srun --ntasks 4096 -N 64 --overcommit -o logs/files1-task4096-size4-op-w.log ./assignment4 w 1 4 &

wait


srun --ntasks 8192 -N 128 --overcommit -o 1-8192-4-w.log ./assignment4 w 1 4 &

wait


srun --ntasks 512 -N 8 --overcommit -o logs/files1-task512-size8-op-w.log ./assignment4 w 1 8 &

srun --ntasks 1024 -N 16 --overcommit -o logs/files1-task1024-size8-op-w.log ./assignment4 w 1 8 &

srun --ntasks 2048 -N 32 --overcommit -o logs/files1-task2048-size8-op-w.log ./assignment4 w 1 8 &

srun --ntasks 4096 -N 64 --overcommit -o logs/files1-task4096-size8-op-w.log ./assignment4 w 1 8 &

wait


srun --ntasks 8192 -N 128 --overcommit -o 1-8192-8-w.log ./assignment4 w 1 8 &

wait


srun --ntasks 512 -N 8 --overcommit -o logs/files1-task512-size16-op-w.log ./assignment4 w 1 16 &

srun --ntasks 1024 -N 16 --overcommit -o logs/files1-task1024-size16-op-w.log ./assignment4 w 1 16 &

srun --ntasks 2048 -N 32 --overcommit -o logs/files1-task2048-size16-op-w.log ./assignment4 w 1 16 &

srun --ntasks 4096 -N 64 --overcommit -o logs/files1-task4096-size16-op-w.log ./assignment4 w 1 16 &

wait


srun --ntasks 8192 -N 128 --overcommit -o 1-8192-16-w.log ./assignment4 w 1 16 &

wait


srun --ntasks 512 -N 8 --overcommit -o logs/files1-task512-size1-op-r.log ./assignment4 r 1 1 &

srun --ntasks 1024 -N 16 --overcommit -o logs/files1-task1024-size1-op-r.log ./assignment4 r 1 1 &

srun --ntasks 2048 -N 32 --overcommit -o logs/files1-task2048-size1-op-r.log ./assignment4 r 1 1 &

srun --ntasks 4096 -N 64 --overcommit -o logs/files1-task4096-size1-op-r.log ./assignment4 r 1 1 &

wait


srun --ntasks 8192 -N 128 --overcommit -o 1-8192-1-r.log ./assignment4 r 1 1 &

wait


srun --ntasks 512 -N 8 --overcommit -o logs/files1-task512-size2-op-r.log ./assignment4 r 1 2 &

srun --ntasks 1024 -N 16 --overcommit -o logs/files1-task1024-size2-op-r.log ./assignment4 r 1 2 &

srun --ntasks 2048 -N 32 --overcommit -o logs/files1-task2048-size2-op-r.log ./assignment4 r 1 2 &

srun --ntasks 4096 -N 64 --overcommit -o logs/files1-task4096-size2-op-r.log ./assignment4 r 1 2 &

wait


srun --ntasks 8192 -N 128 --overcommit -o 1-8192-2-r.log ./assignment4 r 1 2 &

wait


srun --ntasks 512 -N 8 --overcommit -o logs/files1-task512-size4-op-r.log ./assignment4 r 1 4 &

srun --ntasks 1024 -N 16 --overcommit -o logs/files1-task1024-size4-op-r.log ./assignment4 r 1 4 &

srun --ntasks 2048 -N 32 --overcommit -o logs/files1-task2048-size4-op-r.log ./assignment4 r 1 4 &

srun --ntasks 4096 -N 64 --overcommit -o logs/files1-task4096-size4-op-r.log ./assignment4 r 1 4 &

wait


srun --ntasks 8192 -N 128 --overcommit -o 1-8192-4-r.log ./assignment4 r 1 4 &

wait


srun --ntasks 512 -N 8 --overcommit -o logs/files1-task512-size8-op-r.log ./assignment4 r 1 8 &

srun --ntasks 1024 -N 16 --overcommit -o logs/files1-task1024-size8-op-r.log ./assignment4 r 1 8 &

srun --ntasks 2048 -N 32 --overcommit -o logs/files1-task2048-size8-op-r.log ./assignment4 r 1 8 &

srun --ntasks 4096 -N 64 --overcommit -o logs/files1-task4096-size8-op-r.log ./assignment4 r 1 8 &

wait


srun --ntasks 8192 -N 128 --overcommit -o 1-8192-8-r.log ./assignment4 r 1 8 &

wait


srun --ntasks 512 -N 8 --overcommit -o logs/files1-task512-size16-op-r.log ./assignment4 r 1 16 &

srun --ntasks 1024 -N 16 --overcommit -o logs/files1-task1024-size16-op-r.log ./assignment4 r 1 16 &

srun --ntasks 2048 -N 32 --overcommit -o logs/files1-task2048-size16-op-r.log ./assignment4 r 1 16 &

srun --ntasks 4096 -N 64 --overcommit -o logs/files1-task4096-size16-op-r.log ./assignment4 r 1 16 &

wait


srun --ntasks 8192 -N 128 --overcommit -o 1-8192-16-r.log ./assignment4 r 1 16 &

wait


srun --ntasks 512 -N 8 --overcommit -o logs/files16-task512-size1-op-w.log ./assignment4 w 16 1 &

srun --ntasks 1024 -N 16 --overcommit -o logs/files16-task1024-size1-op-w.log ./assignment4 w 16 1 &

srun --ntasks 2048 -N 32 --overcommit -o logs/files16-task2048-size1-op-w.log ./assignment4 w 16 1 &

srun --ntasks 4096 -N 64 --overcommit -o logs/files16-task4096-size1-op-w.log ./assignment4 w 16 1 &

wait


srun --ntasks 8192 -N 128 --overcommit -o 16-8192-1-w.log ./assignment4 w 16 1 &

wait


srun --ntasks 512 -N 8 --overcommit -o logs/files16-task512-size2-op-w.log ./assignment4 w 16 2 &

srun --ntasks 1024 -N 16 --overcommit -o logs/files16-task1024-size2-op-w.log ./assignment4 w 16 2 &

srun --ntasks 2048 -N 32 --overcommit -o logs/files16-task2048-size2-op-w.log ./assignment4 w 16 2 &

srun --ntasks 4096 -N 64 --overcommit -o logs/files16-task4096-size2-op-w.log ./assignment4 w 16 2 &

wait


srun --ntasks 8192 -N 128 --overcommit -o 16-8192-2-w.log ./assignment4 w 16 2 &

wait


srun --ntasks 512 -N 8 --overcommit -o logs/files16-task512-size4-op-w.log ./assignment4 w 16 4 &

srun --ntasks 1024 -N 16 --overcommit -o logs/files16-task1024-size4-op-w.log ./assignment4 w 16 4 &

srun --ntasks 2048 -N 32 --overcommit -o logs/files16-task2048-size4-op-w.log ./assignment4 w 16 4 &

srun --ntasks 4096 -N 64 --overcommit -o logs/files16-task4096-size4-op-w.log ./assignment4 w 16 4 &

wait


srun --ntasks 8192 -N 128 --overcommit -o 16-8192-4-w.log ./assignment4 w 16 4 &

wait


srun --ntasks 512 -N 8 --overcommit -o logs/files16-task512-size8-op-w.log ./assignment4 w 16 8 &

srun --ntasks 1024 -N 16 --overcommit -o logs/files16-task1024-size8-op-w.log ./assignment4 w 16 8 &

srun --ntasks 2048 -N 32 --overcommit -o logs/files16-task2048-size8-op-w.log ./assignment4 w 16 8 &

srun --ntasks 4096 -N 64 --overcommit -o logs/files16-task4096-size8-op-w.log ./assignment4 w 16 8 &

wait


srun --ntasks 8192 -N 128 --overcommit -o 16-8192-8-w.log ./assignment4 w 16 8 &

wait


srun --ntasks 512 -N 8 --overcommit -o logs/files16-task512-size16-op-w.log ./assignment4 w 16 16 &

srun --ntasks 1024 -N 16 --overcommit -o logs/files16-task1024-size16-op-w.log ./assignment4 w 16 16 &

srun --ntasks 2048 -N 32 --overcommit -o logs/files16-task2048-size16-op-w.log ./assignment4 w 16 16 &

srun --ntasks 4096 -N 64 --overcommit -o logs/files16-task4096-size16-op-w.log ./assignment4 w 16 16 &

wait


srun --ntasks 8192 -N 128 --overcommit -o 16-8192-16-w.log ./assignment4 w 16 16 &

wait


srun --ntasks 512 -N 8 --overcommit -o logs/files16-task512-size1-op-r.log ./assignment4 r 16 1 &

srun --ntasks 1024 -N 16 --overcommit -o logs/files16-task1024-size1-op-r.log ./assignment4 r 16 1 &

srun --ntasks 2048 -N 32 --overcommit -o logs/files16-task2048-size1-op-r.log ./assignment4 r 16 1 &

srun --ntasks 4096 -N 64 --overcommit -o logs/files16-task4096-size1-op-r.log ./assignment4 r 16 1 &

wait


srun --ntasks 8192 -N 128 --overcommit -o 16-8192-1-r.log ./assignment4 r 16 1 &

wait


srun --ntasks 512 -N 8 --overcommit -o logs/files16-task512-size2-op-r.log ./assignment4 r 16 2 &

srun --ntasks 1024 -N 16 --overcommit -o logs/files16-task1024-size2-op-r.log ./assignment4 r 16 2 &

srun --ntasks 2048 -N 32 --overcommit -o logs/files16-task2048-size2-op-r.log ./assignment4 r 16 2 &

srun --ntasks 4096 -N 64 --overcommit -o logs/files16-task4096-size2-op-r.log ./assignment4 r 16 2 &

wait


srun --ntasks 8192 -N 128 --overcommit -o 16-8192-2-r.log ./assignment4 r 16 2 &

wait


srun --ntasks 512 -N 8 --overcommit -o logs/files16-task512-size4-op-r.log ./assignment4 r 16 4 &

srun --ntasks 1024 -N 16 --overcommit -o logs/files16-task1024-size4-op-r.log ./assignment4 r 16 4 &

srun --ntasks 2048 -N 32 --overcommit -o logs/files16-task2048-size4-op-r.log ./assignment4 r 16 4 &

srun --ntasks 4096 -N 64 --overcommit -o logs/files16-task4096-size4-op-r.log ./assignment4 r 16 4 &

wait


srun --ntasks 8192 -N 128 --overcommit -o 16-8192-4-r.log ./assignment4 r 16 4 &

wait


srun --ntasks 512 -N 8 --overcommit -o logs/files16-task512-size8-op-r.log ./assignment4 r 16 8 &

srun --ntasks 1024 -N 16 --overcommit -o logs/files16-task1024-size8-op-r.log ./assignment4 r 16 8 &

srun --ntasks 2048 -N 32 --overcommit -o logs/files16-task2048-size8-op-r.log ./assignment4 r 16 8 &

srun --ntasks 4096 -N 64 --overcommit -o logs/files16-task4096-size8-op-r.log ./assignment4 r 16 8 &

wait


srun --ntasks 8192 -N 128 --overcommit -o 16-8192-8-r.log ./assignment4 r 16 8 &

wait


srun --ntasks 512 -N 8 --overcommit -o logs/files16-task512-size16-op-r.log ./assignment4 r 16 16 &

srun --ntasks 1024 -N 16 --overcommit -o logs/files16-task1024-size16-op-r.log ./assignment4 r 16 16 &

srun --ntasks 2048 -N 32 --overcommit -o logs/files16-task2048-size16-op-r.log ./assignment4 r 16 16 &

srun --ntasks 4096 -N 64 --overcommit -o logs/files16-task4096-size16-op-r.log ./assignment4 r 16 16 &

wait


srun --ntasks 8192 -N 128 --overcommit -o 16-8192-16-r.log ./assignment4 r 16 16 &

wait


srun --ntasks 512 -N 8 --overcommit -o logs/files64-task512-size1-op-w.log ./assignment4 w 64 1 &

srun --ntasks 1024 -N 16 --overcommit -o logs/files64-task1024-size1-op-w.log ./assignment4 w 64 1 &

srun --ntasks 2048 -N 32 --overcommit -o logs/files64-task2048-size1-op-w.log ./assignment4 w 64 1 &

srun --ntasks 4096 -N 64 --overcommit -o logs/files64-task4096-size1-op-w.log ./assignment4 w 64 1 &

wait


srun --ntasks 8192 -N 128 --overcommit -o 64-8192-1-w.log ./assignment4 w 64 1 &

wait


srun --ntasks 512 -N 8 --overcommit -o logs/files64-task512-size2-op-w.log ./assignment4 w 64 2 &

srun --ntasks 1024 -N 16 --overcommit -o logs/files64-task1024-size2-op-w.log ./assignment4 w 64 2 &

srun --ntasks 2048 -N 32 --overcommit -o logs/files64-task2048-size2-op-w.log ./assignment4 w 64 2 &

srun --ntasks 4096 -N 64 --overcommit -o logs/files64-task4096-size2-op-w.log ./assignment4 w 64 2 &

wait


srun --ntasks 8192 -N 128 --overcommit -o 64-8192-2-w.log ./assignment4 w 64 2 &

wait


srun --ntasks 512 -N 8 --overcommit -o logs/files64-task512-size4-op-w.log ./assignment4 w 64 4 &

srun --ntasks 1024 -N 16 --overcommit -o logs/files64-task1024-size4-op-w.log ./assignment4 w 64 4 &

srun --ntasks 2048 -N 32 --overcommit -o logs/files64-task2048-size4-op-w.log ./assignment4 w 64 4 &

srun --ntasks 4096 -N 64 --overcommit -o logs/files64-task4096-size4-op-w.log ./assignment4 w 64 4 &

wait


srun --ntasks 8192 -N 128 --overcommit -o 64-8192-4-w.log ./assignment4 w 64 4 &

wait


srun --ntasks 512 -N 8 --overcommit -o logs/files64-task512-size8-op-w.log ./assignment4 w 64 8 &

srun --ntasks 1024 -N 16 --overcommit -o logs/files64-task1024-size8-op-w.log ./assignment4 w 64 8 &

srun --ntasks 2048 -N 32 --overcommit -o logs/files64-task2048-size8-op-w.log ./assignment4 w 64 8 &

srun --ntasks 4096 -N 64 --overcommit -o logs/files64-task4096-size8-op-w.log ./assignment4 w 64 8 &

wait


srun --ntasks 8192 -N 128 --overcommit -o 64-8192-8-w.log ./assignment4 w 64 8 &

wait


srun --ntasks 512 -N 8 --overcommit -o logs/files64-task512-size16-op-w.log ./assignment4 w 64 16 &

srun --ntasks 1024 -N 16 --overcommit -o logs/files64-task1024-size16-op-w.log ./assignment4 w 64 16 &

srun --ntasks 2048 -N 32 --overcommit -o logs/files64-task2048-size16-op-w.log ./assignment4 w 64 16 &

srun --ntasks 4096 -N 64 --overcommit -o logs/files64-task4096-size16-op-w.log ./assignment4 w 64 16 &

wait


srun --ntasks 8192 -N 128 --overcommit -o 64-8192-16-w.log ./assignment4 w 64 16 &

wait


srun --ntasks 512 -N 8 --overcommit -o logs/files64-task512-size1-op-r.log ./assignment4 r 64 1 &

srun --ntasks 1024 -N 16 --overcommit -o logs/files64-task1024-size1-op-r.log ./assignment4 r 64 1 &

srun --ntasks 2048 -N 32 --overcommit -o logs/files64-task2048-size1-op-r.log ./assignment4 r 64 1 &

srun --ntasks 4096 -N 64 --overcommit -o logs/files64-task4096-size1-op-r.log ./assignment4 r 64 1 &

wait


srun --ntasks 8192 -N 128 --overcommit -o 64-8192-1-r.log ./assignment4 r 64 1 &

wait


srun --ntasks 512 -N 8 --overcommit -o logs/files64-task512-size2-op-r.log ./assignment4 r 64 2 &

srun --ntasks 1024 -N 16 --overcommit -o logs/files64-task1024-size2-op-r.log ./assignment4 r 64 2 &

srun --ntasks 2048 -N 32 --overcommit -o logs/files64-task2048-size2-op-r.log ./assignment4 r 64 2 &

srun --ntasks 4096 -N 64 --overcommit -o logs/files64-task4096-size2-op-r.log ./assignment4 r 64 2 &

wait


srun --ntasks 8192 -N 128 --overcommit -o 64-8192-2-r.log ./assignment4 r 64 2 &

wait


srun --ntasks 512 -N 8 --overcommit -o logs/files64-task512-size4-op-r.log ./assignment4 r 64 4 &

srun --ntasks 1024 -N 16 --overcommit -o logs/files64-task1024-size4-op-r.log ./assignment4 r 64 4 &

srun --ntasks 2048 -N 32 --overcommit -o logs/files64-task2048-size4-op-r.log ./assignment4 r 64 4 &

srun --ntasks 4096 -N 64 --overcommit -o logs/files64-task4096-size4-op-r.log ./assignment4 r 64 4 &

wait


srun --ntasks 8192 -N 128 --overcommit -o 64-8192-4-r.log ./assignment4 r 64 4 &

wait


srun --ntasks 512 -N 8 --overcommit -o logs/files64-task512-size8-op-r.log ./assignment4 r 64 8 &

srun --ntasks 1024 -N 16 --overcommit -o logs/files64-task1024-size8-op-r.log ./assignment4 r 64 8 &

srun --ntasks 2048 -N 32 --overcommit -o logs/files64-task2048-size8-op-r.log ./assignment4 r 64 8 &

srun --ntasks 4096 -N 64 --overcommit -o logs/files64-task4096-size8-op-r.log ./assignment4 r 64 8 &

wait


srun --ntasks 8192 -N 128 --overcommit -o 64-8192-8-r.log ./assignment4 r 64 8 &

wait


srun --ntasks 512 -N 8 --overcommit -o logs/files64-task512-size16-op-r.log ./assignment4 r 64 16 &

srun --ntasks 1024 -N 16 --overcommit -o logs/files64-task1024-size16-op-r.log ./assignment4 r 64 16 &

srun --ntasks 2048 -N 32 --overcommit -o logs/files64-task2048-size16-op-r.log ./assignment4 r 64 16 &

srun --ntasks 4096 -N 64 --overcommit -o logs/files64-task4096-size16-op-r.log ./assignment4 r 64 16 &

wait


srun --ntasks 8192 -N 128 --overcommit -o 64-8192-16-r.log ./assignment4 r 64 16 &

wait


srun --ntasks 512 -N 8 --overcommit -o logs/files128-task512-size1-op-w.log ./assignment4 w 128 1 &

srun --ntasks 1024 -N 16 --overcommit -o logs/files128-task1024-size1-op-w.log ./assignment4 w 128 1 &

srun --ntasks 2048 -N 32 --overcommit -o logs/files128-task2048-size1-op-w.log ./assignment4 w 128 1 &

srun --ntasks 4096 -N 64 --overcommit -o logs/files128-task4096-size1-op-w.log ./assignment4 w 128 1 &

wait


srun --ntasks 8192 -N 128 --overcommit -o 128-8192-1-w.log ./assignment4 w 128 1 &

wait


srun --ntasks 512 -N 8 --overcommit -o logs/files128-task512-size2-op-w.log ./assignment4 w 128 2 &

srun --ntasks 1024 -N 16 --overcommit -o logs/files128-task1024-size2-op-w.log ./assignment4 w 128 2 &

srun --ntasks 2048 -N 32 --overcommit -o logs/files128-task2048-size2-op-w.log ./assignment4 w 128 2 &

srun --ntasks 4096 -N 64 --overcommit -o logs/files128-task4096-size2-op-w.log ./assignment4 w 128 2 &

wait


srun --ntasks 8192 -N 128 --overcommit -o 128-8192-2-w.log ./assignment4 w 128 2 &

wait


srun --ntasks 512 -N 8 --overcommit -o logs/files128-task512-size4-op-w.log ./assignment4 w 128 4 &

srun --ntasks 1024 -N 16 --overcommit -o logs/files128-task1024-size4-op-w.log ./assignment4 w 128 4 &

srun --ntasks 2048 -N 32 --overcommit -o logs/files128-task2048-size4-op-w.log ./assignment4 w 128 4 &

srun --ntasks 4096 -N 64 --overcommit -o logs/files128-task4096-size4-op-w.log ./assignment4 w 128 4 &

wait


srun --ntasks 8192 -N 128 --overcommit -o 128-8192-4-w.log ./assignment4 w 128 4 &

wait


srun --ntasks 512 -N 8 --overcommit -o logs/files128-task512-size8-op-w.log ./assignment4 w 128 8 &

srun --ntasks 1024 -N 16 --overcommit -o logs/files128-task1024-size8-op-w.log ./assignment4 w 128 8 &

srun --ntasks 2048 -N 32 --overcommit -o logs/files128-task2048-size8-op-w.log ./assignment4 w 128 8 &

srun --ntasks 4096 -N 64 --overcommit -o logs/files128-task4096-size8-op-w.log ./assignment4 w 128 8 &

wait


srun --ntasks 8192 -N 128 --overcommit -o 128-8192-8-w.log ./assignment4 w 128 8 &

wait


srun --ntasks 512 -N 8 --overcommit -o logs/files128-task512-size16-op-w.log ./assignment4 w 128 16 &

srun --ntasks 1024 -N 16 --overcommit -o logs/files128-task1024-size16-op-w.log ./assignment4 w 128 16 &

srun --ntasks 2048 -N 32 --overcommit -o logs/files128-task2048-size16-op-w.log ./assignment4 w 128 16 &

srun --ntasks 4096 -N 64 --overcommit -o logs/files128-task4096-size16-op-w.log ./assignment4 w 128 16 &

wait


srun --ntasks 8192 -N 128 --overcommit -o 128-8192-16-w.log ./assignment4 w 128 16 &

wait


srun --ntasks 512 -N 8 --overcommit -o logs/files128-task512-size1-op-r.log ./assignment4 r 128 1 &

srun --ntasks 1024 -N 16 --overcommit -o logs/files128-task1024-size1-op-r.log ./assignment4 r 128 1 &

srun --ntasks 2048 -N 32 --overcommit -o logs/files128-task2048-size1-op-r.log ./assignment4 r 128 1 &

srun --ntasks 4096 -N 64 --overcommit -o logs/files128-task4096-size1-op-r.log ./assignment4 r 128 1 &

wait


srun --ntasks 8192 -N 128 --overcommit -o 128-8192-1-r.log ./assignment4 r 128 1 &

wait


srun --ntasks 512 -N 8 --overcommit -o logs/files128-task512-size2-op-r.log ./assignment4 r 128 2 &

srun --ntasks 1024 -N 16 --overcommit -o logs/files128-task1024-size2-op-r.log ./assignment4 r 128 2 &

srun --ntasks 2048 -N 32 --overcommit -o logs/files128-task2048-size2-op-r.log ./assignment4 r 128 2 &

srun --ntasks 4096 -N 64 --overcommit -o logs/files128-task4096-size2-op-r.log ./assignment4 r 128 2 &

wait


srun --ntasks 8192 -N 128 --overcommit -o 128-8192-2-r.log ./assignment4 r 128 2 &

wait


srun --ntasks 512 -N 8 --overcommit -o logs/files128-task512-size4-op-r.log ./assignment4 r 128 4 &

srun --ntasks 1024 -N 16 --overcommit -o logs/files128-task1024-size4-op-r.log ./assignment4 r 128 4 &

srun --ntasks 2048 -N 32 --overcommit -o logs/files128-task2048-size4-op-r.log ./assignment4 r 128 4 &

srun --ntasks 4096 -N 64 --overcommit -o logs/files128-task4096-size4-op-r.log ./assignment4 r 128 4 &

wait


srun --ntasks 8192 -N 128 --overcommit -o 128-8192-4-r.log ./assignment4 r 128 4 &

wait


srun --ntasks 512 -N 8 --overcommit -o logs/files128-task512-size8-op-r.log ./assignment4 r 128 8 &

srun --ntasks 1024 -N 16 --overcommit -o logs/files128-task1024-size8-op-r.log ./assignment4 r 128 8 &

srun --ntasks 2048 -N 32 --overcommit -o logs/files128-task2048-size8-op-r.log ./assignment4 r 128 8 &

srun --ntasks 4096 -N 64 --overcommit -o logs/files128-task4096-size8-op-r.log ./assignment4 r 128 8 &

wait


srun --ntasks 8192 -N 128 --overcommit -o 128-8192-8-r.log ./assignment4 r 128 8 &

wait


srun --ntasks 512 -N 8 --overcommit -o logs/files128-task512-size16-op-r.log ./assignment4 r 128 16 &

srun --ntasks 1024 -N 16 --overcommit -o logs/files128-task1024-size16-op-r.log ./assignment4 r 128 16 &

srun --ntasks 2048 -N 32 --overcommit -o logs/files128-task2048-size16-op-r.log ./assignment4 r 128 16 &

srun --ntasks 4096 -N 64 --overcommit -o logs/files128-task4096-size16-op-r.log ./assignment4 r 128 16 &

wait


srun --ntasks 8192 -N 128 --overcommit -o 128-8192-16-r.log ./assignment4 r 128 16 &

wait


