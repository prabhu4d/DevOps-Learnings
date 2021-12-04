#! /bin/bash

# passing arguments in bash
# each serious of value stored in $0, $1, $2, ... $n
# $0 always script_filename
echo $0, $1, $2, $3

# storing arguments as array
args=("$@")
# in array of arguments args[0] is first arguments you pass
echo ${args[0]} ${args[1]} ${args[2]}

# print default variable for array
echo $@

# printing number of args passed in script
echo $#