#! /bin/bash

# bc basic calculator
# n1=21.5
n1=21.5
n2=4

echo "$n1 + $n2" | bc
echo "$n1 - $n2" | bc
echo "$n1 * $n2" | bc
echo "scale=20; $n1 / $n2" | bc
echo "$n1 % $n2" | bc


# sqrt
# -l is used to call math libraries
echo "scale=10; sqrt(144)" | bc -l
echo "scale=10; 4^4" | bc -l