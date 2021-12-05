#! /bin/bash

n=1

while (( $n <= 10 ))
do
  echo "$n terminal"
  gnome-terminal && sleep 1
  (( n++ ))
done