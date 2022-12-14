#!/bin/sh
########################################################################
##
## Author: Joe Colgan (joscolgan)               Name: make_star_index.sh
##
## Purpose:
## This script generates a genome index using STAR, a common short read
## aligner for RNA-seq datasets. This script takes three input arguments
## from the command line to generate the genome index. The arguments are:
## 1) A reference genome assembly in FASTA format.
## 2) A corresponding GFF for the reference genome assembly.  
## 3) The overhang of the input sequences.
## The script outputs a folder containing genome index.
########################################################################

## Take inputs from the command line:
input_fasta=$1
input_gtf=$2
overhang=$3

## Check arguments are provided:
if [ $# -eq 0 ]
  then
    echo "No arguments supplied. Usage: ./make_star_index.sh input.fasta input.gtf overhang"
    echo "For overhang, a value of the maximum read length minus 1 should be provided."

fi

## Create STAR indices:
STAR --runThreadN 2 \
     --runMode genomeGenerate \
     --genomeDir ./database/ \
     --genomeFastaFiles "$input_fasta" \
     --sjdbGTFfile "$input_gtf" \
     --genomeSAindexNbases 12 \
     --sjdbOverhang "$overhang"
