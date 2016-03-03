Read counts
===========

HTSeqCount

Version: htseq-0.6.1p1

Usage:

htseq-count [options] alignment_file gff_file

Script:

bsub -m genome7  -o log/htseqcount.log -e log/htseqcount.err -J HTSeqcount sh counts.sh

