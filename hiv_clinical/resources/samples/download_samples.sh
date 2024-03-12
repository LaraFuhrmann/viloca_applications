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

fastq-dump -O CAP188/week_106/raw_data --split-e  SRR9588832
mv CAP188/week_106/raw_data/SRR9588832_1.fastq CAP188/week_106/raw_data/SRR9588832_R1.fastq
mv CAP188/week_106/raw_data/SRR9588832_2.fastq CAP188/week_106/raw_dataSRR9588832_R2.fastq


fastq-dump -O philippines/pX/raw_data --split-e  SRR3608622


# ------ NEW


fastq-dump -O 90802_enr_DNA_RT2/2009-09-08/raw_data --split-e  SRR7545768
fastq-dump -O 90802_enr_DNA_RT1/2009-09-08/raw_data --split-e  SRR7545769


mv 90802_enr_DNA_RT2/2009-09-08/raw_data/SRR7545768_1.fastq 90802_enr_DNA_RT2/2009-09-08/raw_data/SRR7545768_R1.fastq
mv 90802_enr_DNA_RT2/2009-09-08/raw_data/SRR7545768_2.fastq 90802_enr_DNA_RT2/2009-09-08/raw_data/SRR7545768_R2.fastq

mv 90802_enr_DNA_RT1/2009-09-08/raw_data/SRR7545769_1.fastq 90802_enr_DNA_RT1/2009-09-08/raw_data/SRR7545769_R1.fastq
mv 90802_enr_DNA_RT1/2009-09-08/raw_data/SRR7545769_2.fastq 90802_enr_DNA_RT1/2009-09-08/raw_data/SRR7545769_R2.fastq


# ------ Download samples from the
fastq-dump -O CAP206/week_254/raw_data --split-e  SRR9588768
fastq-dump -O CAP206/week_216/raw_data --split-e  SRR9588769
fastq-dump -O CAP206/week_10/raw_data --split-e  SRR9588770
fastq-dump -O CAP206/week_273/raw_data --split-e  SRR9588771
fastq-dump -O CAP217/week_60/raw_data --split-e  SRR9588772
fastq-dump -O CAP217/week_31/raw_data --split-e  SRR9588773
fastq-dump -O CAP217/week_112/raw_data --split-e  SRR9588774
fastq-dump -O CAP217/week_87/raw_data --split-e  SRR9588775
fastq-dump -O CAP217/week_165/raw_data --split-e  SRR9588776
fastq-dump -O CAP217/week_138/raw_data --split-e  SRR9588777

fastq-dump -O CAP217/week_242/raw_data --split-e  SRR9588778
fastq-dump -O CAP217/week_282/raw_data --split-e  SRR9588779
fastq-dump -O CAP217/week_190/raw_data --split-e  SRR9588780
fastq-dump -O CAP217/week_218/raw_data --split-e  SRR9588781
fastq-dump -O CAP257/week_7/raw_data --split-e  SRR9588782
fastq-dump -O CAP257/week_30/raw_data --split-e  SRR9588783
fastq-dump -O CAP217/week_321/raw_data --split-e  SRR9588784
fastq-dump -O CAP217/week_358/raw_data --split-e  SRR9588785
fastq-dump -O CAP257/week_54/raw_data --split-e  SRR9588786

fastq-dump -O CAP257/week_80/raw_data --split-e  SRR9588787

fastq-dump -O CAP287/week_28/raw_data --split-e  SRR9588788
fastq-dump -O CAP287/week_9/raw_data --split-e  SRR9588789

fastq-dump -O CAP257/week_240/raw_data --split-e  SRR9588790
fastq-dump -O CAP257/week_213/raw_data --split-e  SRR9588791
fastq-dump -O CAP257/week_191/raw_data --split-e  SRR9588792
fastq-dump -O CAP257/week_161/raw_data --split-e  SRR9588793
fastq-dump -O CAP257/week_135/raw_data --split-e  SRR9588794
