#! /bin/bash

<<syntax
select VAR in LIST
do
  cmd1
  cmd2
  ...
  ...
  cmdN
done
syntax


select name in python C# java js
do
  case $name in
    "python" )
      echo "python selected" ;;
    "C#" )
      echo "C# selected" ;;
    "java" )
      echo "java selected" ;;
    "js" )
      echo "js selected" ;;
    * )
      echo "Error, please provide no.between 1..4" ;;
  esac
done