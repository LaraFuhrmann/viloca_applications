#!/usr/bin/env python3

import pandas as pd


def main(fnames, samples, fname):

    tmp = []

    for file, sample in zip(fnames, samples):
        df = pd.read_csv(file, sep='\t')
        df['sample'] = sample

        tmp.append(df)

    pd.concat(tmp).to_csv(fname)


if __name__ == "__main__":
    main(
        snakemake.input.fnames,
        snakemake.params.samples,
        snakemake.output.fname,
    )
