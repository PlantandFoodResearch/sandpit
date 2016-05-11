#!/usr/bin/env python
#
# Read the input file, count the number genese on each strand (data column 2)

# assign the input file name to a variable
inputFile = 'python_conditionals_data.csv'

# Read input file data inot variable
inputData = open(inputFile)

# Initiate counting variables
positive_strand_genes = 0
negative_strand_genes = 0
unknown_strand_genes = 0

# for each reord (line) of data
for record in inputData:
    # Remove the 'new line' character,
    #   split the line by the ',' delimiter,
    #   and take the second column value (strand)
    gid, strand = record.rstrip().split(',')
    
    # If the strand is positive
    if ( strand == '+' ):
        # Increment the positive counter
        positive_strand_genes += 1
    # If the strand is negative
    elif ( strand == '-' ):
        # Increment the negative counter
        negative_strand_genes += 1
    # otherwise it is unknown
    else:
        # So Increment the unknown counter
        unknown_strand_genes +=1

# Print results - NOTE: these are python 2.x style print staements
print "Positive Strand Genes: ", positive_strand_genes
print "Negative Strand Genes: ", negative_strand_genes
print "Unknown Strand Genes: ", unknown_strand_genes



