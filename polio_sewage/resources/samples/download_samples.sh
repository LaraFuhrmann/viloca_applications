#!/bin/bash

module load sra-toolkit/2.10.5

fastq-dump -O pakistan/ES-03/raw_data --split-e  ERR4033233
fastq-dump -O pakistan/ES-06/raw_data --split-e  ERR4033236


fastq-dump -O pakistan/Sabin1_PanPV/raw_data --split-e  ERR4027774
	
