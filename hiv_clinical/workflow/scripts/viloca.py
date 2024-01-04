import subprocess
from pathlib import Path

def main(fname_bam, fname_reference, fname_insert_bed, fname_results_snv, fname_results_csv, dname_work):

    alpha = 0.000001
    n_max_haplotypes = 100
    n_mfa_starts = 1

    dname_work.mkdir(parents=True, exist_ok=True)

    subprocess.run(
        [
            "shorah",
            "shotgun",
            "-b",
            fname_bam.resolve(),
            "-f",
            fname_reference.resolve(),
            "--mode",
            "use_quality_scores",
            "--alpha",
            str(alpha),
            "--n_max_haplotypes",
            str(n_max_haplotypes),
            "--n_mfa_starts",
            str(n_mfa_starts),
            "-w",
            "300",
            "--win_coverage", # coverage threshold. Omit windows with low coverage
            "20",
        ],
        cwd=dname_work,
    )

    (dname_work / "snv" / "SNVs_0.010000_final.vcf").rename(fname_results_snv)
    (dname_work / "snv" / "cooccurring_mutations.csv").rename(fname_results_snv)


if __name__ == "__main__":
    main(
        Path(snakemake.input.fname_bam),
        Path(snakemake.input.fname_reference),
        Path(snakemake.input.fname_insert_bed),
        Path(snakemake.output.fname_vcf),
        Path(snakemake.output.fname_csv),
        Path(snakemake.output.dname_work),
    )
