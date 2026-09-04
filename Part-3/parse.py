#!/usr/bin/env python

import argparse

def get_args():
    parser = argparse.ArgumentParser(description="Input SAM file")
    parser.add_argument("-f", help="Desired filename", type=str)
    return parser.parse_args()

args = get_args()
file = args.f

mapped_reads = 0
unmapped_reads = 0

with open(file, "r") as fh:
    for line in fh:
        if not line.startswith("@"):
            tabs = line.strip("\n").split()
            flag = int(tabs[1])
            if((flag & 4) != 4):
                if (flag & 256) != 256:
                    mapped_reads += 1
            else:
                if (flag & 256) != 256:
                    unmapped_reads += 1
print(mapped_reads)
print(unmapped_reads)