#!/bin/bash
#SBATCH --account=bgmp
#SBATCH --partition=bgmp
#SBATCH --cpus-per-task=8
#SBATCH --job-name=align-S2
#SBATCH --time=1-00:00

cd /projects/bgmp/kymc/bioinfo/Bi623/Proj2_QAA

read1=/projects/bgmp/kymc/bioinfo/Bi623/Proj2_QAA/Project-2-Electric-Organ/Part-2/trimmomatic_outputs/SRR25630379_1_paired.fastq.gz
read2=/projects/bgmp/kymc/bioinfo/Bi623/Proj2_QAA/Project-2-Electric-Organ/Part-2/trimmomatic_outputs/SRR25630379_2_paired.fastq.gz

/usr/bin/time -v pixi run STAR --runThreadN 8 --runMode alignReads \
 --outFilterMultimapNmax 3 \
 --outSAMunmapped Within KeepPairs \
 --alignIntronMax 1000000 --alignMatesGapMax 1000000 \
 --readFilesCommand zcat \
 --readFilesIn $read1 $read2 \
 --genomeDir /projects/bgmp/kymc/bioinfo/Bi623/Proj2_QAA/Project-2-Electric-Organ/Part-3/campy_genome \
 --outFileNamePrefix campy_SRR379_align