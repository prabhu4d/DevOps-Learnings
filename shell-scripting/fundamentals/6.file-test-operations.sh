#! /bin/bash

echo -e "Enter the name of the file : \c"
# \c it keeps cursor on the same line where echo is printing
# -e is used to intepret of the input at cursor \c

read file_name

if [ -e $file_name ]; then
  echo "$file_name found"
else
  echo "$file_name not found"
fi

<<file_type
types of files
1. char special file - character file, text file
2. block special file - video, audio, binary file

-e is used to check the file exist
-f is used to check regular file exist
-d is used to check directory exist
-c : character file
-b binary file
-s is file is empty
-r is file has read permission
-w is file has write permission
-x is file has exec permission
file_type

echo -e "Enter directory name : \c"
read dir_name

if [ -d $dir_name ]; then
  echo "$dir_name found"
else
  echo "$dir_name not found"
fi
