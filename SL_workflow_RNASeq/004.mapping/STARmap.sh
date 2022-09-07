#!/bin/bash

#bsub -m genome-s -o log/${fname/.R1.fastq/STAR.index.log} -e log/${fname/.R1.fastq/STAR.index.err} /software/x86_64/STAR-STAR_2.4.2a/bin/STAR --runThreadN 4 --runMode genomeGenerate --genomeDir genomedirectory --genomeFastaFiles CHR25.1.68.5.fasta --sjdbGTFfile CHR25.Aug68at.unmasked.gff3 --sjdbGTFtagExonParentTranscript Parent --sjdbOverhang 100

for file in ../003.trimming/*R1.fastq;
do
fname=`basename $file`;
        bsub -n 4 -m genome-s -o log/${fname/R1.fastq/STAR.log} -e log/${fname/R1.fastq/STAR.err} /software/x86_64/STAR-STAR_2.4.2a/bin/STAR --runThreadN 4 --genomeDir genomedirectory --readFilesIn  $file ${file/R1/R2} --outFileNamePrefix ${fname/R1.fastq/STARPS1} --outSAMmapqUnique 255 --outSAMtype BAM SortedByCoordinate;
done

