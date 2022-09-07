#!/bin/bash

for file in ../004.mapping/*.sortedByCoord.out.bam;
do 
  fname=$(basename $file);
  /software/x86_64/htseq-0.6.1p1/bin/htseq-count -f bam -r pos -s no -i ID -t gene $file CHR25.Aug68at.unmasked.gff3 > ${fname/.sortedByCoord.out.bam/.counts};
done
