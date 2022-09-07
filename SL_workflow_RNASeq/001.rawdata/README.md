Generating an example dataset
=============================

Use wgsim to simulate some data.

```
Program: wgsim (short read simulator)
Version: 0.3.0

Usage:   wgsim [options] <in.ref.fa> <out.read1.fq> <out.read2.fq>

Options: -e FLOAT      base error rate [0.020]
         -d INT        outer distance between the two ends [500]
         -s INT        standard deviation [50]
         -N INT        number of read pairs [1000000]
         -1 INT        length of the first read [70]
         -2 INT        length of the second read [70]
         -r FLOAT      rate of mutations [0.0010]
         -R FLOAT      fraction of indels [0.15]
         -X FLOAT      probability an indel is extended [0.30]
         -S INT        seed for random generator [-1]
         -h            haplotype mode
```

Script:

```
## submit to open lava scheduler  bsub
bsub -m genome-s J readgenerate -o wgsim.log -e wgsim.err \
## simulate using wgsim
wgsim CHR25.1.68.5.fasta 01234_kiwifruit_150bp_Lane7.R1.fq 01234_kiwifruit_150bp_Lane7.R2.fq
```
 
