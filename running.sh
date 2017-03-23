#!/bin/sh
#SBATCH --time=10
#SBATCH --partition=medium
srun --ntasks 512 -N 8 --overcommit -o 1-512-1-w.log /gpfs/u/home/PCP6/PCP6kmcn/scratch/assignment4 w 1 1 &

srun --ntasks 1024 -N 16 --overcommit -o 1-1024-1-w.log /gpfs/u/home/PCP6/PCP6kmcn/scratch/assignment4 w 1 1 &

srun --ntasks 2048 -N 32 --overcommit -o 1-2048-1-w.log /gpfs/u/home/PCP6/PCP6kmcn/scratch/assignment4 w 1 1 &

srun --ntasks 4096 -N 64 --overcommit -o 1-4096-1-w.log /gpfs/u/home/PCP6/PCP6kmcn/scratch/assignment4 w 1 1 &

srun --ntasks 8192 -N 128 --overcommit -o 1-8192-1-w.log /gpfs/u/home/PCP6/PCP6kmcn/scratch/assignment4 w 1 1 &

wait


srun --ntasks 512 -N 8 --overcommit -o 1-512-2-w.log /gpfs/u/home/PCP6/PCP6kmcn/scratch/assignment4 w 1 2 &

srun --ntasks 1024 -N 16 --overcommit -o 1-1024-2-w.log /gpfs/u/home/PCP6/PCP6kmcn/scratch/assignment4 w 1 2 &

srun --ntasks 2048 -N 32 --overcommit -o 1-2048-2-w.log /gpfs/u/home/PCP6/PCP6kmcn/scratch/assignment4 w 1 2 &

srun --ntasks 4096 -N 64 --overcommit -o 1-4096-2-w.log /gpfs/u/home/PCP6/PCP6kmcn/scratch/assignment4 w 1 2 &

srun --ntasks 8192 -N 128 --overcommit -o 1-8192-2-w.log /gpfs/u/home/PCP6/PCP6kmcn/scratch/assignment4 w 1 2 &

wait


srun --ntasks 512 -N 8 --overcommit -o 1-512-4-w.log /gpfs/u/home/PCP6/PCP6kmcn/scratch/assignment4 w 1 4 &

srun --ntasks 1024 -N 16 --overcommit -o 1-1024-4-w.log /gpfs/u/home/PCP6/PCP6kmcn/scratch/assignment4 w 1 4 &

srun --ntasks 2048 -N 32 --overcommit -o 1-2048-4-w.log /gpfs/u/home/PCP6/PCP6kmcn/scratch/assignment4 w 1 4 &

srun --ntasks 4096 -N 64 --overcommit -o 1-4096-4-w.log /gpfs/u/home/PCP6/PCP6kmcn/scratch/assignment4 w 1 4 &

srun --ntasks 8192 -N 128 --overcommit -o 1-8192-4-w.log /gpfs/u/home/PCP6/PCP6kmcn/scratch/assignment4 w 1 4 &

wait


srun --ntasks 512 -N 8 --overcommit -o 1-512-8-w.log /gpfs/u/home/PCP6/PCP6kmcn/scratch/assignment4 w 1 8 &

srun --ntasks 1024 -N 16 --overcommit -o 1-1024-8-w.log /gpfs/u/home/PCP6/PCP6kmcn/scratch/assignment4 w 1 8 &

srun --ntasks 2048 -N 32 --overcommit -o 1-2048-8-w.log /gpfs/u/home/PCP6/PCP6kmcn/scratch/assignment4 w 1 8 &

srun --ntasks 4096 -N 64 --overcommit -o 1-4096-8-w.log /gpfs/u/home/PCP6/PCP6kmcn/scratch/assignment4 w 1 8 &

srun --ntasks 8192 -N 128 --overcommit -o 1-8192-8-w.log /gpfs/u/home/PCP6/PCP6kmcn/scratch/assignment4 w 1 8 &

wait


srun --ntasks 512 -N 8 --overcommit -o 1-512-16-w.log /gpfs/u/home/PCP6/PCP6kmcn/scratch/assignment4 w 1 16 &

srun --ntasks 1024 -N 16 --overcommit -o 1-1024-16-w.log /gpfs/u/home/PCP6/PCP6kmcn/scratch/assignment4 w 1 16 &

srun --ntasks 2048 -N 32 --overcommit -o 1-2048-16-w.log /gpfs/u/home/PCP6/PCP6kmcn/scratch/assignment4 w 1 16 &

srun --ntasks 4096 -N 64 --overcommit -o 1-4096-16-w.log /gpfs/u/home/PCP6/PCP6kmcn/scratch/assignment4 w 1 16 &

srun --ntasks 8192 -N 128 --overcommit -o 1-8192-16-w.log /gpfs/u/home/PCP6/PCP6kmcn/scratch/assignment4 w 1 16 &

wait


srun --ntasks 512 -N 8 --overcommit -o 1-512-1-r.log /gpfs/u/home/PCP6/PCP6kmcn/scratch/assignment4 r 1 1 &

srun --ntasks 1024 -N 16 --overcommit -o 1-1024-1-r.log /gpfs/u/home/PCP6/PCP6kmcn/scratch/assignment4 r 1 1 &

srun --ntasks 2048 -N 32 --overcommit -o 1-2048-1-r.log /gpfs/u/home/PCP6/PCP6kmcn/scratch/assignment4 r 1 1 &

srun --ntasks 4096 -N 64 --overcommit -o 1-4096-1-r.log /gpfs/u/home/PCP6/PCP6kmcn/scratch/assignment4 r 1 1 &

srun --ntasks 8192 -N 128 --overcommit -o 1-8192-1-r.log /gpfs/u/home/PCP6/PCP6kmcn/scratch/assignment4 r 1 1 &

wait


srun --ntasks 512 -N 8 --overcommit -o 1-512-2-r.log /gpfs/u/home/PCP6/PCP6kmcn/scratch/assignment4 r 1 2 &

srun --ntasks 1024 -N 16 --overcommit -o 1-1024-2-r.log /gpfs/u/home/PCP6/PCP6kmcn/scratch/assignment4 r 1 2 &

srun --ntasks 2048 -N 32 --overcommit -o 1-2048-2-r.log /gpfs/u/home/PCP6/PCP6kmcn/scratch/assignment4 r 1 2 &

srun --ntasks 4096 -N 64 --overcommit -o 1-4096-2-r.log /gpfs/u/home/PCP6/PCP6kmcn/scratch/assignment4 r 1 2 &

srun --ntasks 8192 -N 128 --overcommit -o 1-8192-2-r.log /gpfs/u/home/PCP6/PCP6kmcn/scratch/assignment4 r 1 2 &

wait


srun --ntasks 512 -N 8 --overcommit -o 1-512-4-r.log /gpfs/u/home/PCP6/PCP6kmcn/scratch/assignment4 r 1 4 &

srun --ntasks 1024 -N 16 --overcommit -o 1-1024-4-r.log /gpfs/u/home/PCP6/PCP6kmcn/scratch/assignment4 r 1 4 &

srun --ntasks 2048 -N 32 --overcommit -o 1-2048-4-r.log /gpfs/u/home/PCP6/PCP6kmcn/scratch/assignment4 r 1 4 &

srun --ntasks 4096 -N 64 --overcommit -o 1-4096-4-r.log /gpfs/u/home/PCP6/PCP6kmcn/scratch/assignment4 r 1 4 &

srun --ntasks 8192 -N 128 --overcommit -o 1-8192-4-r.log /gpfs/u/home/PCP6/PCP6kmcn/scratch/assignment4 r 1 4 &

wait


srun --ntasks 512 -N 8 --overcommit -o 1-512-8-r.log /gpfs/u/home/PCP6/PCP6kmcn/scratch/assignment4 r 1 8 &

srun --ntasks 1024 -N 16 --overcommit -o 1-1024-8-r.log /gpfs/u/home/PCP6/PCP6kmcn/scratch/assignment4 r 1 8 &

srun --ntasks 2048 -N 32 --overcommit -o 1-2048-8-r.log /gpfs/u/home/PCP6/PCP6kmcn/scratch/assignment4 r 1 8 &

srun --ntasks 4096 -N 64 --overcommit -o 1-4096-8-r.log /gpfs/u/home/PCP6/PCP6kmcn/scratch/assignment4 r 1 8 &

srun --ntasks 8192 -N 128 --overcommit -o 1-8192-8-r.log /gpfs/u/home/PCP6/PCP6kmcn/scratch/assignment4 r 1 8 &

wait


srun --ntasks 512 -N 8 --overcommit -o 1-512-16-r.log /gpfs/u/home/PCP6/PCP6kmcn/scratch/assignment4 r 1 16 &

srun --ntasks 1024 -N 16 --overcommit -o 1-1024-16-r.log /gpfs/u/home/PCP6/PCP6kmcn/scratch/assignment4 r 1 16 &

srun --ntasks 2048 -N 32 --overcommit -o 1-2048-16-r.log /gpfs/u/home/PCP6/PCP6kmcn/scratch/assignment4 r 1 16 &

srun --ntasks 4096 -N 64 --overcommit -o 1-4096-16-r.log /gpfs/u/home/PCP6/PCP6kmcn/scratch/assignment4 r 1 16 &

srun --ntasks 8192 -N 128 --overcommit -o 1-8192-16-r.log /gpfs/u/home/PCP6/PCP6kmcn/scratch/assignment4 r 1 16 &

wait


srun --ntasks 512 -N 8 --overcommit -o 16-512-1-w.log /gpfs/u/home/PCP6/PCP6kmcn/scratch/assignment4 w 16 1 &

srun --ntasks 1024 -N 16 --overcommit -o 16-1024-1-w.log /gpfs/u/home/PCP6/PCP6kmcn/scratch/assignment4 w 16 1 &

srun --ntasks 2048 -N 32 --overcommit -o 16-2048-1-w.log /gpfs/u/home/PCP6/PCP6kmcn/scratch/assignment4 w 16 1 &

srun --ntasks 4096 -N 64 --overcommit -o 16-4096-1-w.log /gpfs/u/home/PCP6/PCP6kmcn/scratch/assignment4 w 16 1 &

srun --ntasks 8192 -N 128 --overcommit -o 16-8192-1-w.log /gpfs/u/home/PCP6/PCP6kmcn/scratch/assignment4 w 16 1 &

wait


srun --ntasks 512 -N 8 --overcommit -o 16-512-2-w.log /gpfs/u/home/PCP6/PCP6kmcn/scratch/assignment4 w 16 2 &

srun --ntasks 1024 -N 16 --overcommit -o 16-1024-2-w.log /gpfs/u/home/PCP6/PCP6kmcn/scratch/assignment4 w 16 2 &

srun --ntasks 2048 -N 32 --overcommit -o 16-2048-2-w.log /gpfs/u/home/PCP6/PCP6kmcn/scratch/assignment4 w 16 2 &

srun --ntasks 4096 -N 64 --overcommit -o 16-4096-2-w.log /gpfs/u/home/PCP6/PCP6kmcn/scratch/assignment4 w 16 2 &

srun --ntasks 8192 -N 128 --overcommit -o 16-8192-2-w.log /gpfs/u/home/PCP6/PCP6kmcn/scratch/assignment4 w 16 2 &

wait


srun --ntasks 512 -N 8 --overcommit -o 16-512-4-w.log /gpfs/u/home/PCP6/PCP6kmcn/scratch/assignment4 w 16 4 &

srun --ntasks 1024 -N 16 --overcommit -o 16-1024-4-w.log /gpfs/u/home/PCP6/PCP6kmcn/scratch/assignment4 w 16 4 &

srun --ntasks 2048 -N 32 --overcommit -o 16-2048-4-w.log /gpfs/u/home/PCP6/PCP6kmcn/scratch/assignment4 w 16 4 &

srun --ntasks 4096 -N 64 --overcommit -o 16-4096-4-w.log /gpfs/u/home/PCP6/PCP6kmcn/scratch/assignment4 w 16 4 &

srun --ntasks 8192 -N 128 --overcommit -o 16-8192-4-w.log /gpfs/u/home/PCP6/PCP6kmcn/scratch/assignment4 w 16 4 &

wait


srun --ntasks 512 -N 8 --overcommit -o 16-512-8-w.log /gpfs/u/home/PCP6/PCP6kmcn/scratch/assignment4 w 16 8 &

srun --ntasks 1024 -N 16 --overcommit -o 16-1024-8-w.log /gpfs/u/home/PCP6/PCP6kmcn/scratch/assignment4 w 16 8 &

srun --ntasks 2048 -N 32 --overcommit -o 16-2048-8-w.log /gpfs/u/home/PCP6/PCP6kmcn/scratch/assignment4 w 16 8 &

srun --ntasks 4096 -N 64 --overcommit -o 16-4096-8-w.log /gpfs/u/home/PCP6/PCP6kmcn/scratch/assignment4 w 16 8 &

srun --ntasks 8192 -N 128 --overcommit -o 16-8192-8-w.log /gpfs/u/home/PCP6/PCP6kmcn/scratch/assignment4 w 16 8 &

wait


srun --ntasks 512 -N 8 --overcommit -o 16-512-16-w.log /gpfs/u/home/PCP6/PCP6kmcn/scratch/assignment4 w 16 16 &

srun --ntasks 1024 -N 16 --overcommit -o 16-1024-16-w.log /gpfs/u/home/PCP6/PCP6kmcn/scratch/assignment4 w 16 16 &

srun --ntasks 2048 -N 32 --overcommit -o 16-2048-16-w.log /gpfs/u/home/PCP6/PCP6kmcn/scratch/assignment4 w 16 16 &

srun --ntasks 4096 -N 64 --overcommit -o 16-4096-16-w.log /gpfs/u/home/PCP6/PCP6kmcn/scratch/assignment4 w 16 16 &

srun --ntasks 8192 -N 128 --overcommit -o 16-8192-16-w.log /gpfs/u/home/PCP6/PCP6kmcn/scratch/assignment4 w 16 16 &

wait


srun --ntasks 512 -N 8 --overcommit -o 16-512-1-r.log /gpfs/u/home/PCP6/PCP6kmcn/scratch/assignment4 r 16 1 &

srun --ntasks 1024 -N 16 --overcommit -o 16-1024-1-r.log /gpfs/u/home/PCP6/PCP6kmcn/scratch/assignment4 r 16 1 &

srun --ntasks 2048 -N 32 --overcommit -o 16-2048-1-r.log /gpfs/u/home/PCP6/PCP6kmcn/scratch/assignment4 r 16 1 &

srun --ntasks 4096 -N 64 --overcommit -o 16-4096-1-r.log /gpfs/u/home/PCP6/PCP6kmcn/scratch/assignment4 r 16 1 &

srun --ntasks 8192 -N 128 --overcommit -o 16-8192-1-r.log /gpfs/u/home/PCP6/PCP6kmcn/scratch/assignment4 r 16 1 &

wait


srun --ntasks 512 -N 8 --overcommit -o 16-512-2-r.log /gpfs/u/home/PCP6/PCP6kmcn/scratch/assignment4 r 16 2 &

srun --ntasks 1024 -N 16 --overcommit -o 16-1024-2-r.log /gpfs/u/home/PCP6/PCP6kmcn/scratch/assignment4 r 16 2 &

srun --ntasks 2048 -N 32 --overcommit -o 16-2048-2-r.log /gpfs/u/home/PCP6/PCP6kmcn/scratch/assignment4 r 16 2 &

srun --ntasks 4096 -N 64 --overcommit -o 16-4096-2-r.log /gpfs/u/home/PCP6/PCP6kmcn/scratch/assignment4 r 16 2 &

srun --ntasks 8192 -N 128 --overcommit -o 16-8192-2-r.log /gpfs/u/home/PCP6/PCP6kmcn/scratch/assignment4 r 16 2 &

wait


srun --ntasks 512 -N 8 --overcommit -o 16-512-4-r.log /gpfs/u/home/PCP6/PCP6kmcn/scratch/assignment4 r 16 4 &

srun --ntasks 1024 -N 16 --overcommit -o 16-1024-4-r.log /gpfs/u/home/PCP6/PCP6kmcn/scratch/assignment4 r 16 4 &

srun --ntasks 2048 -N 32 --overcommit -o 16-2048-4-r.log /gpfs/u/home/PCP6/PCP6kmcn/scratch/assignment4 r 16 4 &

srun --ntasks 4096 -N 64 --overcommit -o 16-4096-4-r.log /gpfs/u/home/PCP6/PCP6kmcn/scratch/assignment4 r 16 4 &

srun --ntasks 8192 -N 128 --overcommit -o 16-8192-4-r.log /gpfs/u/home/PCP6/PCP6kmcn/scratch/assignment4 r 16 4 &

wait


srun --ntasks 512 -N 8 --overcommit -o 16-512-8-r.log /gpfs/u/home/PCP6/PCP6kmcn/scratch/assignment4 r 16 8 &

srun --ntasks 1024 -N 16 --overcommit -o 16-1024-8-r.log /gpfs/u/home/PCP6/PCP6kmcn/scratch/assignment4 r 16 8 &

srun --ntasks 2048 -N 32 --overcommit -o 16-2048-8-r.log /gpfs/u/home/PCP6/PCP6kmcn/scratch/assignment4 r 16 8 &

srun --ntasks 4096 -N 64 --overcommit -o 16-4096-8-r.log /gpfs/u/home/PCP6/PCP6kmcn/scratch/assignment4 r 16 8 &

srun --ntasks 8192 -N 128 --overcommit -o 16-8192-8-r.log /gpfs/u/home/PCP6/PCP6kmcn/scratch/assignment4 r 16 8 &

wait


srun --ntasks 512 -N 8 --overcommit -o 16-512-16-r.log /gpfs/u/home/PCP6/PCP6kmcn/scratch/assignment4 r 16 16 &

srun --ntasks 1024 -N 16 --overcommit -o 16-1024-16-r.log /gpfs/u/home/PCP6/PCP6kmcn/scratch/assignment4 r 16 16 &

srun --ntasks 2048 -N 32 --overcommit -o 16-2048-16-r.log /gpfs/u/home/PCP6/PCP6kmcn/scratch/assignment4 r 16 16 &

srun --ntasks 4096 -N 64 --overcommit -o 16-4096-16-r.log /gpfs/u/home/PCP6/PCP6kmcn/scratch/assignment4 r 16 16 &

srun --ntasks 8192 -N 128 --overcommit -o 16-8192-16-r.log /gpfs/u/home/PCP6/PCP6kmcn/scratch/assignment4 r 16 16 &

wait


srun --ntasks 512 -N 8 --overcommit -o 64-512-1-w.log /gpfs/u/home/PCP6/PCP6kmcn/scratch/assignment4 w 64 1 &

srun --ntasks 1024 -N 16 --overcommit -o 64-1024-1-w.log /gpfs/u/home/PCP6/PCP6kmcn/scratch/assignment4 w 64 1 &

srun --ntasks 2048 -N 32 --overcommit -o 64-2048-1-w.log /gpfs/u/home/PCP6/PCP6kmcn/scratch/assignment4 w 64 1 &

srun --ntasks 4096 -N 64 --overcommit -o 64-4096-1-w.log /gpfs/u/home/PCP6/PCP6kmcn/scratch/assignment4 w 64 1 &

srun --ntasks 8192 -N 128 --overcommit -o 64-8192-1-w.log /gpfs/u/home/PCP6/PCP6kmcn/scratch/assignment4 w 64 1 &

wait


srun --ntasks 512 -N 8 --overcommit -o 64-512-2-w.log /gpfs/u/home/PCP6/PCP6kmcn/scratch/assignment4 w 64 2 &

srun --ntasks 1024 -N 16 --overcommit -o 64-1024-2-w.log /gpfs/u/home/PCP6/PCP6kmcn/scratch/assignment4 w 64 2 &

srun --ntasks 2048 -N 32 --overcommit -o 64-2048-2-w.log /gpfs/u/home/PCP6/PCP6kmcn/scratch/assignment4 w 64 2 &

srun --ntasks 4096 -N 64 --overcommit -o 64-4096-2-w.log /gpfs/u/home/PCP6/PCP6kmcn/scratch/assignment4 w 64 2 &

srun --ntasks 8192 -N 128 --overcommit -o 64-8192-2-w.log /gpfs/u/home/PCP6/PCP6kmcn/scratch/assignment4 w 64 2 &

wait


srun --ntasks 512 -N 8 --overcommit -o 64-512-4-w.log /gpfs/u/home/PCP6/PCP6kmcn/scratch/assignment4 w 64 4 &

srun --ntasks 1024 -N 16 --overcommit -o 64-1024-4-w.log /gpfs/u/home/PCP6/PCP6kmcn/scratch/assignment4 w 64 4 &

srun --ntasks 2048 -N 32 --overcommit -o 64-2048-4-w.log /gpfs/u/home/PCP6/PCP6kmcn/scratch/assignment4 w 64 4 &

srun --ntasks 4096 -N 64 --overcommit -o 64-4096-4-w.log /gpfs/u/home/PCP6/PCP6kmcn/scratch/assignment4 w 64 4 &

srun --ntasks 8192 -N 128 --overcommit -o 64-8192-4-w.log /gpfs/u/home/PCP6/PCP6kmcn/scratch/assignment4 w 64 4 &

wait


srun --ntasks 512 -N 8 --overcommit -o 64-512-8-w.log /gpfs/u/home/PCP6/PCP6kmcn/scratch/assignment4 w 64 8 &

srun --ntasks 1024 -N 16 --overcommit -o 64-1024-8-w.log /gpfs/u/home/PCP6/PCP6kmcn/scratch/assignment4 w 64 8 &

srun --ntasks 2048 -N 32 --overcommit -o 64-2048-8-w.log /gpfs/u/home/PCP6/PCP6kmcn/scratch/assignment4 w 64 8 &

srun --ntasks 4096 -N 64 --overcommit -o 64-4096-8-w.log /gpfs/u/home/PCP6/PCP6kmcn/scratch/assignment4 w 64 8 &

srun --ntasks 8192 -N 128 --overcommit -o 64-8192-8-w.log /gpfs/u/home/PCP6/PCP6kmcn/scratch/assignment4 w 64 8 &

wait


srun --ntasks 512 -N 8 --overcommit -o 64-512-16-w.log /gpfs/u/home/PCP6/PCP6kmcn/scratch/assignment4 w 64 16 &

srun --ntasks 1024 -N 16 --overcommit -o 64-1024-16-w.log /gpfs/u/home/PCP6/PCP6kmcn/scratch/assignment4 w 64 16 &

srun --ntasks 2048 -N 32 --overcommit -o 64-2048-16-w.log /gpfs/u/home/PCP6/PCP6kmcn/scratch/assignment4 w 64 16 &

srun --ntasks 4096 -N 64 --overcommit -o 64-4096-16-w.log /gpfs/u/home/PCP6/PCP6kmcn/scratch/assignment4 w 64 16 &

srun --ntasks 8192 -N 128 --overcommit -o 64-8192-16-w.log /gpfs/u/home/PCP6/PCP6kmcn/scratch/assignment4 w 64 16 &

wait


srun --ntasks 512 -N 8 --overcommit -o 64-512-1-r.log /gpfs/u/home/PCP6/PCP6kmcn/scratch/assignment4 r 64 1 &

srun --ntasks 1024 -N 16 --overcommit -o 64-1024-1-r.log /gpfs/u/home/PCP6/PCP6kmcn/scratch/assignment4 r 64 1 &

srun --ntasks 2048 -N 32 --overcommit -o 64-2048-1-r.log /gpfs/u/home/PCP6/PCP6kmcn/scratch/assignment4 r 64 1 &

srun --ntasks 4096 -N 64 --overcommit -o 64-4096-1-r.log /gpfs/u/home/PCP6/PCP6kmcn/scratch/assignment4 r 64 1 &

srun --ntasks 8192 -N 128 --overcommit -o 64-8192-1-r.log /gpfs/u/home/PCP6/PCP6kmcn/scratch/assignment4 r 64 1 &

wait


srun --ntasks 512 -N 8 --overcommit -o 64-512-2-r.log /gpfs/u/home/PCP6/PCP6kmcn/scratch/assignment4 r 64 2 &

srun --ntasks 1024 -N 16 --overcommit -o 64-1024-2-r.log /gpfs/u/home/PCP6/PCP6kmcn/scratch/assignment4 r 64 2 &

srun --ntasks 2048 -N 32 --overcommit -o 64-2048-2-r.log /gpfs/u/home/PCP6/PCP6kmcn/scratch/assignment4 r 64 2 &

srun --ntasks 4096 -N 64 --overcommit -o 64-4096-2-r.log /gpfs/u/home/PCP6/PCP6kmcn/scratch/assignment4 r 64 2 &

srun --ntasks 8192 -N 128 --overcommit -o 64-8192-2-r.log /gpfs/u/home/PCP6/PCP6kmcn/scratch/assignment4 r 64 2 &

wait


srun --ntasks 512 -N 8 --overcommit -o 64-512-4-r.log /gpfs/u/home/PCP6/PCP6kmcn/scratch/assignment4 r 64 4 &

srun --ntasks 1024 -N 16 --overcommit -o 64-1024-4-r.log /gpfs/u/home/PCP6/PCP6kmcn/scratch/assignment4 r 64 4 &

srun --ntasks 2048 -N 32 --overcommit -o 64-2048-4-r.log /gpfs/u/home/PCP6/PCP6kmcn/scratch/assignment4 r 64 4 &

srun --ntasks 4096 -N 64 --overcommit -o 64-4096-4-r.log /gpfs/u/home/PCP6/PCP6kmcn/scratch/assignment4 r 64 4 &

srun --ntasks 8192 -N 128 --overcommit -o 64-8192-4-r.log /gpfs/u/home/PCP6/PCP6kmcn/scratch/assignment4 r 64 4 &

wait


srun --ntasks 512 -N 8 --overcommit -o 64-512-8-r.log /gpfs/u/home/PCP6/PCP6kmcn/scratch/assignment4 r 64 8 &

srun --ntasks 1024 -N 16 --overcommit -o 64-1024-8-r.log /gpfs/u/home/PCP6/PCP6kmcn/scratch/assignment4 r 64 8 &

srun --ntasks 2048 -N 32 --overcommit -o 64-2048-8-r.log /gpfs/u/home/PCP6/PCP6kmcn/scratch/assignment4 r 64 8 &

srun --ntasks 4096 -N 64 --overcommit -o 64-4096-8-r.log /gpfs/u/home/PCP6/PCP6kmcn/scratch/assignment4 r 64 8 &

srun --ntasks 8192 -N 128 --overcommit -o 64-8192-8-r.log /gpfs/u/home/PCP6/PCP6kmcn/scratch/assignment4 r 64 8 &

wait


srun --ntasks 512 -N 8 --overcommit -o 64-512-16-r.log /gpfs/u/home/PCP6/PCP6kmcn/scratch/assignment4 r 64 16 &

srun --ntasks 1024 -N 16 --overcommit -o 64-1024-16-r.log /gpfs/u/home/PCP6/PCP6kmcn/scratch/assignment4 r 64 16 &

srun --ntasks 2048 -N 32 --overcommit -o 64-2048-16-r.log /gpfs/u/home/PCP6/PCP6kmcn/scratch/assignment4 r 64 16 &

srun --ntasks 4096 -N 64 --overcommit -o 64-4096-16-r.log /gpfs/u/home/PCP6/PCP6kmcn/scratch/assignment4 r 64 16 &

srun --ntasks 8192 -N 128 --overcommit -o 64-8192-16-r.log /gpfs/u/home/PCP6/PCP6kmcn/scratch/assignment4 r 64 16 &

wait


srun --ntasks 512 -N 8 --overcommit -o 128-512-1-w.log /gpfs/u/home/PCP6/PCP6kmcn/scratch/assignment4 w 128 1 &

srun --ntasks 1024 -N 16 --overcommit -o 128-1024-1-w.log /gpfs/u/home/PCP6/PCP6kmcn/scratch/assignment4 w 128 1 &

srun --ntasks 2048 -N 32 --overcommit -o 128-2048-1-w.log /gpfs/u/home/PCP6/PCP6kmcn/scratch/assignment4 w 128 1 &

srun --ntasks 4096 -N 64 --overcommit -o 128-4096-1-w.log /gpfs/u/home/PCP6/PCP6kmcn/scratch/assignment4 w 128 1 &

srun --ntasks 8192 -N 128 --overcommit -o 128-8192-1-w.log /gpfs/u/home/PCP6/PCP6kmcn/scratch/assignment4 w 128 1 &

wait


srun --ntasks 512 -N 8 --overcommit -o 128-512-2-w.log /gpfs/u/home/PCP6/PCP6kmcn/scratch/assignment4 w 128 2 &

srun --ntasks 1024 -N 16 --overcommit -o 128-1024-2-w.log /gpfs/u/home/PCP6/PCP6kmcn/scratch/assignment4 w 128 2 &

srun --ntasks 2048 -N 32 --overcommit -o 128-2048-2-w.log /gpfs/u/home/PCP6/PCP6kmcn/scratch/assignment4 w 128 2 &

srun --ntasks 4096 -N 64 --overcommit -o 128-4096-2-w.log /gpfs/u/home/PCP6/PCP6kmcn/scratch/assignment4 w 128 2 &

srun --ntasks 8192 -N 128 --overcommit -o 128-8192-2-w.log /gpfs/u/home/PCP6/PCP6kmcn/scratch/assignment4 w 128 2 &

wait


srun --ntasks 512 -N 8 --overcommit -o 128-512-4-w.log /gpfs/u/home/PCP6/PCP6kmcn/scratch/assignment4 w 128 4 &

srun --ntasks 1024 -N 16 --overcommit -o 128-1024-4-w.log /gpfs/u/home/PCP6/PCP6kmcn/scratch/assignment4 w 128 4 &

srun --ntasks 2048 -N 32 --overcommit -o 128-2048-4-w.log /gpfs/u/home/PCP6/PCP6kmcn/scratch/assignment4 w 128 4 &

srun --ntasks 4096 -N 64 --overcommit -o 128-4096-4-w.log /gpfs/u/home/PCP6/PCP6kmcn/scratch/assignment4 w 128 4 &

srun --ntasks 8192 -N 128 --overcommit -o 128-8192-4-w.log /gpfs/u/home/PCP6/PCP6kmcn/scratch/assignment4 w 128 4 &

wait


srun --ntasks 512 -N 8 --overcommit -o 128-512-8-w.log /gpfs/u/home/PCP6/PCP6kmcn/scratch/assignment4 w 128 8 &

srun --ntasks 1024 -N 16 --overcommit -o 128-1024-8-w.log /gpfs/u/home/PCP6/PCP6kmcn/scratch/assignment4 w 128 8 &

srun --ntasks 2048 -N 32 --overcommit -o 128-2048-8-w.log /gpfs/u/home/PCP6/PCP6kmcn/scratch/assignment4 w 128 8 &

srun --ntasks 4096 -N 64 --overcommit -o 128-4096-8-w.log /gpfs/u/home/PCP6/PCP6kmcn/scratch/assignment4 w 128 8 &

srun --ntasks 8192 -N 128 --overcommit -o 128-8192-8-w.log /gpfs/u/home/PCP6/PCP6kmcn/scratch/assignment4 w 128 8 &

wait


srun --ntasks 512 -N 8 --overcommit -o 128-512-16-w.log /gpfs/u/home/PCP6/PCP6kmcn/scratch/assignment4 w 128 16 &

srun --ntasks 1024 -N 16 --overcommit -o 128-1024-16-w.log /gpfs/u/home/PCP6/PCP6kmcn/scratch/assignment4 w 128 16 &

srun --ntasks 2048 -N 32 --overcommit -o 128-2048-16-w.log /gpfs/u/home/PCP6/PCP6kmcn/scratch/assignment4 w 128 16 &

srun --ntasks 4096 -N 64 --overcommit -o 128-4096-16-w.log /gpfs/u/home/PCP6/PCP6kmcn/scratch/assignment4 w 128 16 &

srun --ntasks 8192 -N 128 --overcommit -o 128-8192-16-w.log /gpfs/u/home/PCP6/PCP6kmcn/scratch/assignment4 w 128 16 &

wait


srun --ntasks 512 -N 8 --overcommit -o 128-512-1-r.log /gpfs/u/home/PCP6/PCP6kmcn/scratch/assignment4 r 128 1 &

srun --ntasks 1024 -N 16 --overcommit -o 128-1024-1-r.log /gpfs/u/home/PCP6/PCP6kmcn/scratch/assignment4 r 128 1 &

srun --ntasks 2048 -N 32 --overcommit -o 128-2048-1-r.log /gpfs/u/home/PCP6/PCP6kmcn/scratch/assignment4 r 128 1 &

srun --ntasks 4096 -N 64 --overcommit -o 128-4096-1-r.log /gpfs/u/home/PCP6/PCP6kmcn/scratch/assignment4 r 128 1 &

srun --ntasks 8192 -N 128 --overcommit -o 128-8192-1-r.log /gpfs/u/home/PCP6/PCP6kmcn/scratch/assignment4 r 128 1 &

wait


srun --ntasks 512 -N 8 --overcommit -o 128-512-2-r.log /gpfs/u/home/PCP6/PCP6kmcn/scratch/assignment4 r 128 2 &

srun --ntasks 1024 -N 16 --overcommit -o 128-1024-2-r.log /gpfs/u/home/PCP6/PCP6kmcn/scratch/assignment4 r 128 2 &

srun --ntasks 2048 -N 32 --overcommit -o 128-2048-2-r.log /gpfs/u/home/PCP6/PCP6kmcn/scratch/assignment4 r 128 2 &

srun --ntasks 4096 -N 64 --overcommit -o 128-4096-2-r.log /gpfs/u/home/PCP6/PCP6kmcn/scratch/assignment4 r 128 2 &

srun --ntasks 8192 -N 128 --overcommit -o 128-8192-2-r.log /gpfs/u/home/PCP6/PCP6kmcn/scratch/assignment4 r 128 2 &

wait


srun --ntasks 512 -N 8 --overcommit -o 128-512-4-r.log /gpfs/u/home/PCP6/PCP6kmcn/scratch/assignment4 r 128 4 &

srun --ntasks 1024 -N 16 --overcommit -o 128-1024-4-r.log /gpfs/u/home/PCP6/PCP6kmcn/scratch/assignment4 r 128 4 &

srun --ntasks 2048 -N 32 --overcommit -o 128-2048-4-r.log /gpfs/u/home/PCP6/PCP6kmcn/scratch/assignment4 r 128 4 &

srun --ntasks 4096 -N 64 --overcommit -o 128-4096-4-r.log /gpfs/u/home/PCP6/PCP6kmcn/scratch/assignment4 r 128 4 &

srun --ntasks 8192 -N 128 --overcommit -o 128-8192-4-r.log /gpfs/u/home/PCP6/PCP6kmcn/scratch/assignment4 r 128 4 &

wait


srun --ntasks 512 -N 8 --overcommit -o 128-512-8-r.log /gpfs/u/home/PCP6/PCP6kmcn/scratch/assignment4 r 128 8 &

srun --ntasks 1024 -N 16 --overcommit -o 128-1024-8-r.log /gpfs/u/home/PCP6/PCP6kmcn/scratch/assignment4 r 128 8 &

srun --ntasks 2048 -N 32 --overcommit -o 128-2048-8-r.log /gpfs/u/home/PCP6/PCP6kmcn/scratch/assignment4 r 128 8 &

srun --ntasks 4096 -N 64 --overcommit -o 128-4096-8-r.log /gpfs/u/home/PCP6/PCP6kmcn/scratch/assignment4 r 128 8 &

srun --ntasks 8192 -N 128 --overcommit -o 128-8192-8-r.log /gpfs/u/home/PCP6/PCP6kmcn/scratch/assignment4 r 128 8 &

wait


srun --ntasks 512 -N 8 --overcommit -o 128-512-16-r.log /gpfs/u/home/PCP6/PCP6kmcn/scratch/assignment4 r 128 16 &

srun --ntasks 1024 -N 16 --overcommit -o 128-1024-16-r.log /gpfs/u/home/PCP6/PCP6kmcn/scratch/assignment4 r 128 16 &

srun --ntasks 2048 -N 32 --overcommit -o 128-2048-16-r.log /gpfs/u/home/PCP6/PCP6kmcn/scratch/assignment4 r 128 16 &

srun --ntasks 4096 -N 64 --overcommit -o 128-4096-16-r.log /gpfs/u/home/PCP6/PCP6kmcn/scratch/assignment4 r 128 16 &

srun --ntasks 8192 -N 128 --overcommit -o 128-8192-16-r.log /gpfs/u/home/PCP6/PCP6kmcn/scratch/assignment4 r 128 16 &

wait


