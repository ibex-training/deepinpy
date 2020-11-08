#!/bin/bash --login
#SBATCH --nodes=1
#SBATCH --time=4:00:00
#SBATCH --ntasks=1
#SBATCH --gpus-per-task=1
#SBATCH --mem-per-gpu=64G
#SBATCH --cpus-per-gpu=6
#SBATCH --partition=batch
#SBATCH --output=results/slurm-%j.out
#SBATCH --error=results/slurm-%j.err

# Load software stack
module purge
conda activate ./env

# start the training process
python main.py --config configs/example.json
