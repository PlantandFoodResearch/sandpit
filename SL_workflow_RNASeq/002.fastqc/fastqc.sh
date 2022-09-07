#!/bin/bash 

bsub -n 4 -m genome-s -o fastqc.log -e fastqc.er -J fastqc fastqc -o . -t 4 ../001.rawdata/*.fq

