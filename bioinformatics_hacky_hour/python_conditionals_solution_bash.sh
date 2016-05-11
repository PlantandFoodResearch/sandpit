#!/bin/bash
# Solve the problem with Bash this time

# Initialise the counting variables
POSITIVE_STRAND_GENES=0
NEGATIVE_STRAND_GENES=0
UNKNOWN_STRAND_GENES=0

# Set the input field seperator
IFS=","

# Read the data, loop with a while loop
while read -r GID STRAND
do
    # If the strand is positive
    if [ $STRAND == "+" ] ; then
        ((POSITIVE_STRAND_GENES++))
    # Else if it is negative
    elif [ $STRAND == "-" ] ; then
        ((NEGATIVE_STRAND_GENES += 1))
    # Otherwise it's unknown
    else
        ((UNKNOWN_STRAND_GENES += 1))
    fi
done < python_conditionals_data.csv
# This previous line uses the input redirecttion to give
#   the data to the while loop

# Print results
echo "Positive Strand Genes: $POSITIVE_STRAND_GENES"
echo "Negative Strand Genes: $NEGATIVE_STRAND_GENES"
echo "Unknown Strand Genes: $UNKNOWN_STRAND_GENES"

