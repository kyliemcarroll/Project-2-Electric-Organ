#!/bin/bash
#SBATCH --account=bgmp
#SBATCH --partition=bgmp
#SBATCH --job-name=fasterq_and_fastqc
#SBATCH --time=3:00:00


export PATH=/projects/bgmp/kymc/bioinfo/Bi623/kyliemcarroll-Bi623-ICA1/sratoolkit.3.4.1-ubuntu64/bin:$PATH

/usr/bin/time -v pixi run fastqc *.fastq -o /projects/bgmp/kymc/bioinfo/Bi623/Proj2_QAA/Project-2-Electric-Organ