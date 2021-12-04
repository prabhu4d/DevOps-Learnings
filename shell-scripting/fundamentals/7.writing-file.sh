#! /bin/bash

echo -e "Enter the name of the file : \c"
read file_name

if [ -f $file_name ]
then
  if [ -w $file_name ]
  then
    echo "type some text data, To quit press ctrl+d"
    cat >> $file_name
  else
    echo "the file do not have write permission"
  fi
else
  echo "$file_name not found"
fi