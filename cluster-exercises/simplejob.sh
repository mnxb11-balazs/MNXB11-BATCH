#!/bin/sh
#SBATCH -J "Balazs first slurm job"
#SBATCH --time=1 
#SBATCH -A hep2023-1-6
echo "we are on the node"
hostname
who
time
sleep 2m
