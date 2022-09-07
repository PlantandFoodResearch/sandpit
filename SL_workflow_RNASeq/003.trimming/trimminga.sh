#!/bin/bash

for file in ../001.rawdata/*.R1.fq;
do
  fname=`basename $file`
  bsub -m genome-s -o log/${fname/.R1.fq/.mcf.log} -e log/${fname/.R1.fq/.mcf.er} fastq-mcf -l 5 -q 10 -t 0.0001 \
  -o ${fname/.R1.fq/.mcf.l40.q28.R1.fastq} -o ${fname/.R1.fq/.mcf.l40.q28.R2.fastq} adapters.fasta $file ${file/.R1/.R2}
done
