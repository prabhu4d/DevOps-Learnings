#! /bin/bash

for (( i=0; i<10; i++ ))
do
  if (( $i > 5 ))
  then
    break
  fi
  echo "$i"
done

for (( i=0; i<10; i++ ))
do
  if (( $i == 5  || $i == 6))
  then
    continue
  fi
  echo "$i"
done