#!/bin/bash

# job name and output file names
#SBATCH -A hep2023-1-6
#SBATCH -J taskfarm
#SBATCH -o taskfarm_%j.out
#SBATCH -e taskfarm_%j.out
#SBATCH  --time  15
  

# number of cores 
#SBATCH -n 5

# number of subtasks
export NB_of_subtasks=40


export START_time=`date +%s`

# submit the subtasks via a loop
for ((i=0; i<$NB_of_subtasks; i++))
do
 srun -Q --exclusive -n 1 -N 1 \
  time ./worker.sh $i &> subtask_${SLURM_JOB_ID}_${i} &
 sleep 1
 echo "registering subtask" $i
done

wait

# calculate the execution time
export END_time=`date +%s`
echo $NB_of_subtasks "subtasks on" $SLURM_NTASKS "processing elements execution time measured in seconds: " $(($END_time - $START_time))
