#!/bin/bash
#SBATCH --time=01-00:00
#SBATCH --partition=bgmp
#SBATCH --account=bgmp
#SBATCH --cpus-per-task=16
#SBATCH --mem=300GB
#SBATCH --constraint=turin
#SBATCH --job-name=trimmomatic_trim
#SBATCH --output=trimmomatic_trim_%j.out

cd /projects/bgmp/kymc/bioinfo/Bi623/Proj2_QAA

# Sample 1 SRR25630299

/usr/bin/time -v pixi run trimmomatic PE -threads 16 -Xmx16g \
 /projects/bgmp/kymc/bioinfo/Bi623/Proj2_QAA/Project-2-Electric-Organ/trimmed_outputs/SRR25630299_1.trimmed.fastq \
 /projects/bgmp/kymc/bioinfo/Bi623/Proj2_QAA/Project-2-Electric-Organ/trimmed_outputs/SRR25630299_2.trimmed.fastq \
 /projects/bgmp/kymc/bioinfo/Bi623/Proj2_QAA/Project-2-Electric-Organ/trimmomatic_outputs/SRR25630299_1_paired.fastq.gz \
 /projects/bgmp/kymc/bioinfo/Bi623/Proj2_QAA/Project-2-Electric-Organ/trimmomatic_outputs/SRR25630299_1_unpaired.fastq.gz \
 /projects/bgmp/kymc/bioinfo/Bi623/Proj2_QAA/Project-2-Electric-Organ/trimmomatic_outputs/SRR25630299_2_paired.fastq.gz \
 /projects/bgmp/kymc/bioinfo/Bi623/Proj2_QAA/Project-2-Electric-Organ/trimmomatic_outputs/SRR25630299_2_unpaired.fastq.gz \
 LEADING:3 TRAILING:3 SLIDINGWINDOW:5:15 MINLEN:35



# Sample 2 SRR25630379

/usr/bin/time -v pixi run trimmomatic PE -threads 16 -Xmx16g \
 /projects/bgmp/kymc/bioinfo/Bi623/Proj2_QAA/Project-2-Electric-Organ/trimmed_outputs/SRR25630379_1.trimmed.fastq \
 /projects/bgmp/kymc/bioinfo/Bi623/Proj2_QAA/Project-2-Electric-Organ/trimmed_outputs/SRR25630379_2.trimmed.fastq \
 /projects/bgmp/kymc/bioinfo/Bi623/Proj2_QAA/Project-2-Electric-Organ/trimmomatic_outputs/SRR25630379_1_paired.fastq.gz \
 /projects/bgmp/kymc/bioinfo/Bi623/Proj2_QAA/Project-2-Electric-Organ/trimmomatic_outputs/SRR25630379_1_unpaired.fastq.gz \
 /projects/bgmp/kymc/bioinfo/Bi623/Proj2_QAA/Project-2-Electric-Organ/trimmomatic_outputs/SRR25630379_2_paired.fastq.gz \
 /projects/bgmp/kymc/bioinfo/Bi623/Proj2_QAA/Project-2-Electric-Organ/trimmomatic_outputs/SRR25630379_2_unpaired.fastq.gz \
 LEADING:3 TRAILING:3 SLIDINGWINDOW:5:15 MINLEN:35

