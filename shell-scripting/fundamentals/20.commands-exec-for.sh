#! /bin/bash

for cmd in ls pwd date; do
  echo "-----------$cmd------------"
  $cmd
done

for item in *; do
  if [ -d $item ]; then
    echo $item
  fi
done
