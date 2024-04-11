import subprocess
from pathlib import Path
from fuc import pyvcf
import pandas as pd

def main(fname_bam, fname_reference, fname_results_snv, fname_results_csv, dname_work):

    dname_work.mkdir(parents=True, exist_ok=True)
    subprocess.run(
        [
            "lofreq",
            "call",
            "-f",
            fname_reference.resolve(),
            "-o",
            fname_results_snv.resolve(),
            fname_bam.resolve(),
        ],
        cwd=dname_work,
        check=True,
    )

    df_vcf = pyvcf.VcfFrame.from_file(fname_results_snv.resolve()).df
    df_vcf.to_csv(fname_results_csv.resolve())


if __name__ == "__main__":
    main(
        Path(snakemake.input.fname_bam),
        Path(snakemake.input.fname_reference),
        Path(snakemake.output.fname_snv_vcf),
        Path(snakemake.output.fname_csv),
        Path(snakemake.output.dname_work),
    )
