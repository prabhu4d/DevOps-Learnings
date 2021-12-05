#! /bin/bash

touch "file/file.txt" && echo "file created successfully"
file="file/file.txt"
cat $0 >> $file

trap "rm -f $file; exit" 0 2 15

echo "pid is $$"

while ((COUNT < 10)); do
  sleep 1
  ((COUNT++))
  echo $COUNT
done
exit 0

<<signals
when we press ctrl+c in stop the execution of a current script
it is called interrupt signal

ctrl+z -> suspend signal
kill -9 pid -> kill signal

trap is used to capture the interript signal
trap cann't catch SIGINT, SIGSTOP


man 7 signal
signals
