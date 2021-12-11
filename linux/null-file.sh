#! /bin/bash

echo "The Following Command Will Show Error"

cmd

echo "The Following Command Will Not Show Error"

cmd 2>/dev/null

<<explanation
/dev/null
is a special file, you can't read it but you can write it
but writing things will discarded


file descriptor:
  1 stdout
  2 stderr
explanation
