#! /bin/bash

age=22

if [ $age -gt 18 ] && [ $age -lt 30 ]; then
  echo "Valid Age"
else
  echo "Not Valid Age"
fi

age=34

if [ $age -gt 18 -a $age -lt 30 ]; then
  echo "Valid Age"
else
  echo "Not Valid Age"
fi

age=25

if [[ $age -gt 18 && $age -lt 30 ]]; then
  echo "Valid Age"
else
  echo "Not Valid Age"
fi
