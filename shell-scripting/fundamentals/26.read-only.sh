#! /bin/bash

var=31

readonly var

var=50

echo "var => $var"

hello(){
  echo "Hello World"
}

readonly -f hello

hello(){
  echo "Hello World Again"
}

hello


# it print readonly variables
readonly

readonly -p
readonly -f
# p varibles
# f functions