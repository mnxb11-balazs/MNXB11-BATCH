#!/bin/sh
#SBATCH -J "Balazs first slurm job"
#SBATCH --time=1 
#SBATCH -A lu2023-7-4
echo "we are on the node"
hostname
who
time
sleep 2m
