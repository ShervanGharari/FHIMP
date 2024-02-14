
#!/bin/bash
#SBATCH --account=rpp-kshook
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=1
#SBATCH --mem-per-cpu=1G
#SBATCH --time=00:10:00           # time (DD-HH:MM)
#SBATCH --job-name=pygmo_test_parallel
#SBATCH --error=errors1


bash run_SUMMA.sh
