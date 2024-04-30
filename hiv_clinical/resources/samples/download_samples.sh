#!/bin/bash

module load sra-toolkit/2.10.5

# ------ Download samples
fastq-dump -O CAP257/week_30/raw_data --split-e  SRR9588783
fastq-dump -O CAP257/week_54/raw_data --split-e  SRR9588786
fastq-dump -O CAP257/week_80/raw_data --split-e  SRR9588787
fastq-dump -O CAP257/week_240/raw_data --split-e  SRR9588790
fastq-dump -O CAP257/week_213/raw_data --split-e  SRR9588791
fastq-dump -O CAP257/week_191/raw_data --split-e  SRR9588792
fastq-dump -O CAP257/week_161/raw_data --split-e  SRR9588793
fastq-dump -O CAP257/week_135/raw_data --split-e  SRR9588794
