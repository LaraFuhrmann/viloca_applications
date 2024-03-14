#!/bin/bash

# Find all fastq files in subdirectories and compress them
find . -type f -name "*.fastq" | while IFS= read -r file; do
    gzip "$file"
done
