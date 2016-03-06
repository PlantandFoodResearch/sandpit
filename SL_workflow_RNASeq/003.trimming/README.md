Trimming and quality
====================

Here we trimmed the adaptors with file provided and threshold of 0.0001 quality 28 and minimum length of 40.

The following code has been expressed in a readable style


```
for file in ../001.rawdata/*R1.fq;
do 
  fname=$(basename $file)
  ## submit to open lava scheduler  bsub
  bsub -m genome-s -o log/${fname/_R1.fq/.mcf.log} -e log/${fname/_R1.fq/.mcf.er} \
  ## fastqc0mcf part
  fastq-mcf -l 40 -q 28 -t 0.0001 -o ${fname/_R1.fq/.mcf.l40.q28.R1.fastq}        \
                                  -o ${fname/_R1.fq/.mcf.l40.q28.R2.fastq}        \
  adapters.fasta $file ${file/_R1/_R2}
done
```
