#!/bin/bash

# Find all .fastq.gz files in subdirectories and rename them
find . -type f -name "*_1.fastq.gz" | while read -r file; do
    if [ -f "$file" ]; then
        # Extract the file name without the extension
        filename=$(basename "$file" _1.fastq.gz)

        # Rename the file to {filename}_R1.fastq.gz
        mv "$file" "$(dirname "$file")/${filename}_R1.fastq.gz"

        echo "Renamed $file to ${filename}_R1.fastq.gz"
    fi
done

# Find all .fastq.gz files in subdirectories and rename them
find . -type f -name "*_2.fastq.gz" | while read -r file; do
    if [ -f "$file" ]; then
        # Extract the file name without the extension
        filename=$(basename "$file" _2.fastq.gz)

        # Rename the file to {filename}_R1.fastq.gz
        mv "$file" "$(dirname "$file")/${filename}_R2.fastq.gz"

        echo "Renamed $file to ${filename}_R2.fastq.gz"
    fi
done
