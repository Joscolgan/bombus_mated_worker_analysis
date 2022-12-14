#!/bin/sh
########################################################################
##
## Author: Joe Colgan (joscolgan)                 Name: run_fastqc.sh
##
## Purpose:
## This script takes pairs of compressed fastq files and performs 
## a basic quality assessment analysis using fastqc. 
## The script produces a html file as output summarises the results
## of the assessment.
##
########################################################################

## Create a results output directory:
mkdir results

## Run fastqc for all compressed files in input directory and output
## to newly created results directory:
fastqc -t 10 input/*gz -o results
