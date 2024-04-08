This directory hosts all the scripts to reproduce the results of the "Polio Application" in the VILOCA manuscript.

In order to reproduce the results presented in the VILOCA manuscript:
1.) Run the bash script in `resources/samples/download_samples.sh` to download the sample (ccession number `ERR4033233`)
2.) Execute workflow and submit jobs to Slurm cluster with `./run_pipeline.sh`
3.) The generated haplotypes are then in `results/pakistan/ES-06/variants/support/w-AY560657.1-2480-3384.reads-support.fas`. Note, as reference sequence for alignment and variant calling we use: https://www.ncbi.nlm.nih.gov/nuccore/AY184219.
