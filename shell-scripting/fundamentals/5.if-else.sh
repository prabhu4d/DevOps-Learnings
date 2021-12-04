#! /bin/bash

<<syntax
if [condition]
then
  statement
fi
syntax

num=10

if [ $num -eq 10 ]; then
  echo "Condition is true"
fi

read -p "enter your username : "

if [ $REPLY == "prabhu" ]; then
  echo "Welcome $REPLY"
elif [ $REPLY == "ammu" ]; then
  echo "Welcome $REPLY"
else
  echo "Unknown username $REPLY"
fi
