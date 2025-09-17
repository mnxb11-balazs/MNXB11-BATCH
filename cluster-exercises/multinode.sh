#!/bin/sh
#SBATCH -J "multi job"
#SBATCH --time=1 
#SBATCH -A hep2023-1-6
srun hostname |sort
sleep 5m
