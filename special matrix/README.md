# Special n x m matrix 

this function returns a [A] matrix with the following discription.

1. The value of each element in the first row is the number of the column.
2. The value of each element in the first column is the number of the row.
3. The rest of the elements each has a value equal to the sum of the element above it and element to the left.
4. The function returns a sensible error if the user does not input exactly two arguments

## Inputs:
* n - number of rows
* m- number of columns

## Outputs:
* [A] - the final matrix
