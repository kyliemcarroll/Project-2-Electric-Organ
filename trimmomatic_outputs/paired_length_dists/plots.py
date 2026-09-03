#!/usr/bin/env python

import matplotlib.pyplot as plt
import pandas as pd


# Sample 1 SRR25630299
# Sample 2 SRR25630379

r1_lengths = []
r1_counts = []
with open("/projects/bgmp/kymc/bioinfo/Bi623/Proj2_QAA/Project-2-Electric-Organ/trimmomatic_outputs/paired_length_dists/output_379_1_paired.txt") as fh:
    for line in fh:
        count, length = line.split()
        r1_lengths.append(int(length))
        r1_counts.append(int(count))

r2_lengths = []
r2_counts = []
with open("/projects/bgmp/kymc/bioinfo/Bi623/Proj2_QAA/Project-2-Electric-Organ/trimmomatic_outputs/paired_length_dists/output_379_2_paired.txt") as fh2:
    for line in fh2:
        count, length = line.split()
        r2_lengths.append(int(length))
        r2_counts.append(int(count))

r1_series = pd.Series(r1_counts, index=r1_lengths, name="R1 paired")
r2_series = pd.Series(r2_counts, index=r2_lengths, name="R2 paired")
df = pd.concat([r1_series, r2_series], axis=1)

df.plot(kind="bar", figsize=(14, 6), width=0.95)
plt.yscale("log")
plt.xlabel("Read length (bp)")
plt.ylabel("Read count (log scale)")
plt.title("Trimmed Read Length Distribution: SRR25630379 R1 & R2")
plt.legend()
plt.savefig("SRR25630379_length_dist.png")
plt.close()
