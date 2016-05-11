# Python Conditionals

## The Question

Say you are give a data file with two columns, gene ID, and strand.

The second 'strand' columns values can be:

    '+' for a positive strand gene

    '-' for a negative strand gene

    '0' for gene were strand is unkown

Write a python program to read the data file and print 3 lines to the terminal; the first line contains the number of positive strand gene IDs, the second contains the number of negative strand IDs, and the third contains the number of unknown strand genes.

An example output would look like:

    Positive Strand Genes: 30
    Negative Strand Genes: 50
    Unknown Strand Genes:  20

## Test Data
A example input data set is available in the `python_conditionals_data.csv` file in this current directory.

## Hints
You may want to use the python `open` function to open the file.

You may want to iterate through the lines of the file with a for loop.

## Bonus Question
Solve the problem with a bash script rather than a python script. Hint: you could use `grep -c`...
