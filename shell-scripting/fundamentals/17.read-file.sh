#! /bin/bash

# file redirection
while read p
do
  echo $p
done < 17.read-file.sh

# cat output to while loop
cat 17.read-file.sh | while read p
do
  echo $p
done

# ifs - internal field seperator
# -r to don't intepret the escape character

while IFS=' ' read -r line
do
  echo $line
done < /etc/host.conf
