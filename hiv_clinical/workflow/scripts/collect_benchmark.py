#!/usr/bin/env python3

import pandas as pd


def main(fnames, samples, fname):

    tmp = []

    for file, sample in zip(fnames, samples):
        sample = sample.split('results/')[1]
        df = pd.read_csv(file, sep='\t')
        df_tmp["sample"] = file.split("/variants")[0].split("/")[-3]
        df_tmp["patient"] = file.split("/variants")[0].split("/")[-2]
        df_tmp["time"] = file.split("/variants")[0].split("/")[-1]

        tmp.append(df)

    pd.concat(tmp).to_csv(fname)


if __name__ == "__main__":
    main(
        snakemake.input.fnames,
        snakemake.params.samples,
        snakemake.output.fname,
    )
