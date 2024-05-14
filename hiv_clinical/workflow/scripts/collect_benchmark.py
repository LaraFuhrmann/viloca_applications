#!/usr/bin/env python3

import pandas as pd


def main(fnames, fname):

    tmp = []

    for file in fnames:
        sample = file.split('results/')[1].split('/')[0]
        df = pd.read_csv(file, sep='\t')
        df["sample"] = file.split("/variants")[0].split("/")[-3]
        df["patient"] = file.split("/variants")[0].split("/")[-2]
        df["time"] = file.split("/variants")[0].split("/")[-1]

        tmp.append(df)

    pd.concat(tmp).to_csv(fname)


if __name__ == "__main__":
    main(
        snakemake.input.fnames,
        snakemake.output.fname,
    )
