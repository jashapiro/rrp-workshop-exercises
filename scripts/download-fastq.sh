#!/bin/bash

set -euo pipefail

# Set up directories and other variables
OUTPUT_DIR="../data/raw/fastq/SRP255885/"
URL_PREFIX="https://raw.githubusercontent.com/AlexsLemonade/reproducible-research/main/instructor_notes/fastq_subset/subset-"
SAMPLE_ACCESSION="SRR11518889"

# Creating directory to hold FASTQ files
mkdir -p $OUTPUT_DIR

# Process R1 file
# Printing out a status message
echo "Obtaining the R1 file..."

# Download the R1 file using curl
curl "${URL_PREFIX}${SAMPLE_ACCESSION}_1.fastq.gz" > ${SAMPLE_ACCESSION}_1.fastq.gz

# Count the number of lines in the file
echo "The number of lines in ${SAMPLE_ACCESSION}_1.fastq.gz is:"
gunzip -c ${SAMPLE_ACCESSION}_1.fastq.gz | wc -l

# Move the file to fastq folder
mv ${SAMPLE_ACCESSION}_1.fastq.gz $OUTPUT_DIR


# Process R2 file
# Printing out a status message
echo "Obtaining the R2 file..."

# Download the R2 file using curl
curl "${URL_PREFIX}${SAMPLE_ACCESSION}_2.fastq.gz" > ${SAMPLE_ACCESSION}_2.fastq.gz

# Count the number of lines in the file
echo "The number of lines in ${SAMPLE_ACCESSION}_2.fastq.gz is:"
gunzip -c ${SAMPLE_ACCESSION}_2.fastq.gz | wc -l

# Move the file to fastq folder
mv ${SAMPLE_ACCESSION}_2.fastq.gz $OUTPUT_DIR
