#!/bin/sh
########################################################################
##
## Author: Joe Colgan                     Name: run_star.sh
##
## Purpose:
## This script takes pairs of compressed fastq files and performs 
## alignment against a database of indexed transcripts using the 
## RNA-Seq aligner, STAR. The output sam file is converted in bam file
## format and sorted by read coordinates.
## The final output is a bam file.  
##
########################################################################

## Take inputs from the command line:
input_pair_1=$1
input_pair_2=$2

## Check arguments are provided:
if [ $# -eq 0 ]
  then
    echo "No arguments supplied. Usage: ./make_star_index.sh input.fasta input.gtf overhang"
    echo "For overhang, a value of the maximum read length minus 1 should be provided."

fi

output="$(echo "$input_pair_1" | cut -d '/' -f 2 | cut -d '.' -f1)"; 
## Prin to console the name of the sample being processed:
echo "$output";
STAR  \
--genomeDir ./database/ \
--runThreadN 4 \
--readFilesCommand gunzip -c \
--readFilesIn "$input_pair_1" "$input_pair_2" \
--outSAMtype BAM Unsorted \
--outBAMsortingThreadN 2 \
--quantMode GeneCounts \
--outFileNamePrefix ./results/"$output". 

## Print to console:
echo "Complete"
