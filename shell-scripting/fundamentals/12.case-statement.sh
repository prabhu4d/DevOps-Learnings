#! /bin/bash

<<syntax
case expression in
  pattern1 )
    statements ;;
  pattern2 )
    statements ;;
  ...
esac
syntax

vehicle=$1

if [[ $vehicle == "" ]]
then
  read -p "Enter the vehicle name : " vehicle
fi

case $vehicle in
  "car" )
    echo "Rent of $vehicle is \$100" ;;
  "truck" )
    echo "Rent of $vehicle is \$150" ;;
  * )
    echo "Unknown Vehicle" ;;
esac