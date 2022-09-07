FastQC diagnostic reports
=========================

Use fastqc to check the quality of the reads.


Usage:

```
fastqc -o output -t threads inputfile
```

Script:

```bash
bsub -n 4 -m genome-s -o 002.fastqc/fastqc.log -e 002.fastqc/fastqc.er -J fastqc \
## Run fastqc 
fastqc -o 002.fastqc -t 4 ../001.rawdata/*.fq
```
