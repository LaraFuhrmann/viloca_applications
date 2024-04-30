This directory hosts all the scripts to reproduce the results of the "HIV Application" in the VILOCA manuscript.

The longitudinal samples of a patient pre-treatment were taken from the publication Abrahams et al. (2019), Science translational medicine 11.513 (DOI: 10.1126/scitranslmed.aaw5589)
https://www.science.org/doi/full/10.1126/scitranslmed.aaw5589#supplementary-materials

Step-by-step guide to reproduce analysis and figure from the VILOCA manuscript:
1. Git clone the repository.    
2. Run the bash script in `resources/samples/download_samples.sh` to download the samples.   
3. Execute workflow with `snakemake --use-conda -c1` or submit it to a Slurm cluster with `./run_pipeline.sh`.
4. When the workflow has terminated, you can recreate the figure from the manuscript with the Jupyter notebook `workflow/notebooks/early_detection_low_freq_snvs_in_patient_samples.ipynb`.
