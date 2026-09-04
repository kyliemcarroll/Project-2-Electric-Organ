#!/bin/bash
#SBATCH --account=bgmp
#SBATCH --partition=bgmp
#SBATCH --cpus-per-task=16
#SBATCH --job-name=agat_conversion
#SBATCH --time=1-00:00

cd /projects/bgmp/kymc/bioinfo/Bi623/Proj2_QAA

/usr/bin/time -v pixi run agat_convert_sp_gff2gtf.pl \
 --gff /projects/bgmp/kymc/bioinfo/Bi623/Proj2_QAA/campylomormyrus.gff \
 -o /projects/bgmp/kymc/bioinfo/Bi623/Proj2_QAA/campylomormyrus.gtf

