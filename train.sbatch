#!/usr/bin/env bash
# slurm template for serial jobs
#SBATCH --job-name=train_base # Job name
#SBATCH --output=train_base-%j.out
#SBATCH --mail-user=aakhan@middlebury.edu
#SBATCH --mail-type=ALL
#SBATCH --mem=4g
#SBATCH --partition=gpu-standard
#SBATCH --time=00:40:00
#SBATCH --cpus-per-task=2
#SBATCH --gres=gpu:1

# print SLURM envirionment variables
echo "Job ID: ${SLURM_JOB_ID}"
echo "Node: ${SLURMD_NODENAME}" echo "Starting: "`date +"%D %T"` 
# Your calculations here 
python berttrain_movie.py
# End of job info 
echo "Ending: "`date +"%D %T"`