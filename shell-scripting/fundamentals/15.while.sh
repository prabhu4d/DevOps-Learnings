#! /bin/bash

# while loop

<<syntax
while [ condition ]
do
  command1
  command2
  command3
done
syntax

n=1

while [ $n -le 10 ]
do
  echo "$n"
  n=$(( n+1 ))
  # (( n++ ))
done