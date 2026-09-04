#!/bin/bash
#SBATCH --account=bgmp
#SBATCH --partition=bgmp
#SBATCH --cpus-per-task=16
#SBATCH --job-name=make_campy_directory
#SBATCH --time=1-00:00

cd /projects/bgmp/kymc/bioinfo/Bi623/Proj2_QAA

dna_file=campylomormyrus.fasta
gtf_file=campylomormyrus.gtf

/usr/bin/time -v pixi run STAR --runThreadN 16 \
 --runMode genomeGenerate \
 --genomeDir /projects/bgmp/kymc/bioinfo/Bi623/Proj2_QAA/campy_genome \
 --genomeFastaFiles $dna_file --sjdbGTFfile $gtf_file