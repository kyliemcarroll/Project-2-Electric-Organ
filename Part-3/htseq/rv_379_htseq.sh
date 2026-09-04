#!/bin/bash
#SBATCH --account=bgmp
#SBATCH --partition=bgmp
#SBATCH --cpus-per-task=8
#SBATCH --job-name=htseq_count379rv
#SBATCH --time=1-00:00

cd /projects/bgmp/kymc/bioinfo/Bi623/Proj2_QAA/

sam379rv="/projects/bgmp/kymc/bioinfo/Bi623/Proj2_QAA/Project-2-Electric-Organ/Part-3/aligned-data/campy_SRR379_alignAligned.out.sam"
gff="/projects/bgmp/kymc/bioinfo/Bi623/Proj2_QAA/Project-2-Electric-Organ/Part-3/campylomormyrus.gff"

/usr/bin/time -v pixi run htseq-count --stranded=reverse \
 -i Parent \
 $sam379rv \
 $gff \
 > /projects/bgmp/kymc/bioinfo/Bi623/Proj2_QAA/Project-2-Electric-Organ/Part-3/htseq/htseq_rv_379.txt