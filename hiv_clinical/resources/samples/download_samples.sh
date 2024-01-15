#!/bin/bash

module load sra-toolkit/2.10.5

mkdir -p CAP217/week_358

cd CAP217/week_358

fastq-dump -O raw_data --split-e  SRR9588785

mv raw_data/SRR9588785_1.fastq raw_data/SRR9588785_R1.fastq
mv raw_data/SRR9588785_2.fastq raw_data/SRR9588785_R2.fastq


cd ../

fastq-dump -O week_112/raw_data --split-e  SRR9588774

mv week_112/raw_data/SRR9588774_1.fastq week_112/raw_data/SRR9588774_R1.fastq
mv week_112/raw_data/SRR9588774_2.fastq week_112/raw_data/SRR9588774_R2.fastq


fastq-dump -O CAP217/week_10/raw_data --split-e  SRR9588770
mv CAP217/week_10/raw_data/SRR9588770_1.fastq CAP217/week_10/raw_data/SRR9588770_R1.fastq
mv CAP217/week_10/raw_data/SRR9588770_2.fastq CAP217/week_10/raw_data/SRR9588770_R2.fastq


fastq-dump -O CAP188/week_4/raw_data --split-e  SRR9588828
mv CAP188/week_4/raw_data/SRR9588828_1.fastq CAP188/week_4/raw_data/SRR9588828_R1.fastq
mv CAP188/week_4/raw_data/SRR9588828_2.fastq CAP188/week_4/raw_data/SRR9588828_R2.fastq

fastq-dump -O CAP188/week_237/raw_data --split-e  SRR9588837
mv CAP188/week_237/raw_data/SRR9588837_1.fastq CAP188/week_237/raw_data/SRR9588837_R1.fastq
mv CAP188/week_237/raw_data/SRR9588837_2.fastq CAP188/week_237/raw_data/SRR9588837_R2.fastq



fastq-dump -O philippines/pX/raw_data --split-e  SRR3608622
