#!/bin/bash
#SBATCH --time=01:00:00
#SBATCH --partition=bgmp
#SBATCH --account=bgmp
#SBATCH --job-name=cutadapt_trim
#SBATCH --output=cutadapt_trim_%j.out

cd /projects/bgmp/kymc/bioinfo/Bi623/Proj2_QAA

# Sample 1: SRR25630299 (a; R1 adapter, A; R2 adapter, o;output for R1, p; output for R2)
/usr/bin/time -v pixi run cutadapt \
-a AGATCGGAAGAGCACACGTCTGAACTCCAGTCA \
-A AGATCGGAAGAGCGTCGTGTAGGGAAAGAGTGT \
-o /projects/bgmp/kymc/bioinfo/Bi623/Proj2_QAA/Project-2-Electric-Organ/trimmed_outputs/SRR25630299_1.trimmed.fastq.gz \
-p /projects/bgmp/kymc/bioinfo/Bi623/Proj2_QAA/Project-2-Electric-Organ/trimmed_outputs/SRR25630299_2.trimmed.fastq.gz \
    /projects/bgmp/kymc/bioinfo/Bi623/Proj2_QAA/Project-2-Electric-Organ/SRA_outputs/SRR25630299_1.fastq \
    /projects/bgmp/kymc/bioinfo/Bi623/Proj2_QAA/Project-2-Electric-Organ/SRA_outputs/SRR25630299_2.fastq

# Sample 2 SRR25630379
/usr/bin/time -v pixi run cutadapt \
-a AGATCGGAAGAGCACACGTCTGAACTCCAGTCA \
-A AGATCGGAAGAGCGTCGTGTAGGGAAAGAGTGT \
-o /projects/bgmp/kymc/bioinfo/Bi623/Proj2_QAA/Project-2-Electric-Organ/trimmed_outputs/SRR25630379_1.trimmed.fastq.gz \
-p /projects/bgmp/kymc/bioinfo/Bi623/Proj2_QAA/Project-2-Electric-Organ/trimmed_outputs/SRR25630379_2.trimmed.fastq.gz \
    /projects/bgmp/kymc/bioinfo/Bi623/Proj2_QAA/Project-2-Electric-Organ/SRA_outputs/SRR25630379_1.fastq \
    /projects/bgmp/kymc/bioinfo/Bi623/Proj2_QAA/Project-2-Electric-Organ/SRA_outputs/SRR25630379_2.fastq