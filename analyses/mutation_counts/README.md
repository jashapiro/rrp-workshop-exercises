This directory stores an analysis to explore mutation counts across genes for several types of pediatric brain tumors.
To run this analysis, use:

```sh
./00_run-mutation-counts.sh
```

## Description of files

This analysis includes the following scripts/notebooks:

* `01_count-gene-mutations.R`: Counts the number of mutations per gene across samples in a given MAF file
* `02_mutation-count-plots.Rmd`: Visualizes the number of mutated samples across genes

## Input data

This script processes MAF files stored in `../data/processed/maf_files`
