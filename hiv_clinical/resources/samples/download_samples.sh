#!/bin/bash

module load sra-toolkit/2.10.5

mkdir -p CAP217/week_358

fastq-dump -O raw_data --split-e  SRR9588785

cd ../

mkdir -p CAP217/week_112

fastq-dump -O raw_data --split-e  SRR9588774
