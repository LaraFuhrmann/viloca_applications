#!/usr/bin/env python3
"""
Script to annotate the mutation calls.
"""
import pandas as pd

genetic_code = {
        'ATA': 'I', 'ATC': 'I', 'ATT': 'I', 'ATG': 'M',
        'ACA': 'T', 'ACC': 'T', 'ACG': 'T', 'ACT': 'T',
        'AAC': 'N', 'AAT': 'N', 'AAA': 'K', 'AAG': 'K',
        'AGC': 'S', 'AGT': 'S', 'AGA': 'R', 'AGG': 'R',
        'CTA': 'L', 'CTC': 'L', 'CTG': 'L', 'CTT': 'L',
        'CCA': 'P', 'CCC': 'P', 'CCG': 'P', 'CCT': 'P',
        'CAC': 'H', 'CAT': 'H', 'CAA': 'Q', 'CAG': 'Q',
        'CGA': 'R', 'CGC': 'R', 'CGG': 'R', 'CGT': 'R',
        'GTA': 'V', 'GTC': 'V', 'GTG': 'V', 'GTT': 'V',
        'GCA': 'A', 'GCC': 'A', 'GCG': 'A', 'GCT': 'A',
        'GAC': 'D', 'GAT': 'D', 'GAA': 'E', 'GAG': 'E',
        'GGA': 'G', 'GGC': 'G', 'GGG': 'G', 'GGT': 'G',
        'TCA': 'S', 'TCC': 'S', 'TCG': 'S', 'TCT': 'S',
        'TTC': 'F', 'TTT': 'F', 'TTA': 'L', 'TTG': 'L',
        'TAC': 'Y', 'TAT': 'Y', 'TAA': '*', 'TAG': '*',
        'TGC': 'C', 'TGT': 'C', 'TGA': '*', 'TGG': 'W',
        'X': 'X', # x = no amino acid
    }

def get_aa(codon):
    return genetic_code[codon.upper()]

def get_AltCodon_f1(row):
    codon_postion = row["CodonPosition_f1"] -1 # zero-based
    alt_base = row["Var"]
    refcodon = row["RefCodon_f1"]
    altcodon = list(refcodon)
    altcodon[codon_postion] = alt_base.lower()
    altcodon = ''.join(altcodon)
    return altcodon

def get_AltCodon_f2(row):
    codon_postion = row["CodonPosition_f2"] -1 # zero-based
    alt_base = row["Var"]
    refcodon = row["RefCodon_f2"]
    altcodon = list(refcodon)
    altcodon[codon_postion] = alt_base.lower()
    altcodon = ''.join(altcodon)
    return altcodon

def get_AltCodon_f3(row):
    codon_postion = row["CodonPosition_f3"] -1 # zero-based
    alt_base = row["Var"]
    refcodon = row["RefCodon_f3"]
    altcodon = list(refcodon)
    altcodon[codon_postion] = alt_base.lower()
    altcodon = ''.join(altcodon)
    return altcodon



def main(fname_all_mutations, fname_hxb2_annotations, fname_all_mutations_annotated):

    fname_muts = str(fname_all_mutations.resolve()).split("snvs.vcf")[0]+"snv/SNVs_0.010000_final.csv"

    df_hiv_annotations = pd.read_csv(fname_hxb2_annotations)
    df_muts = pd.read_csv(fname_all_mutations)

    df = pd.merge(df_muts, df_hiv_annotations, how="left", left_on="Pos", right_on="HXB2-Position")

    df['AltCodon_f1'] = df.apply(get_AltCodon_f1, axis=1)
    df['AltAA_f1'] = df['AltCodon_f1'].apply(get_aa)

    df['AltCodon_f2'] = df.apply(get_AltCodon_f1, axis=1)
    df['AltAA_f2'] = df['AltCodon_f2'].apply(get_aa)

    df['AltCodon_f3'] = df.apply(get_AltCodon_f1, axis=1)
    df['AltAA_f3'] = df['AltCodon_f3'].apply(get_aa)

    df.to_csv(fname_all_mutations_annotated)



if __name__ == "__main__":
    main(
        snakemake.input.fname_all_mutations,
        snakemake.params.fname_hxb2_annotations,
        snakemake.output.fname_mutations_annotated,
    )
