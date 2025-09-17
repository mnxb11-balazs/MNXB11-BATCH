#!/bin/sh
#SBATCH -J "multi job"
#SBATCH --time=1 
#SBATCH -A lu2023-7-4
srun hostname |sort
sleep 5m
