#! /bin/bash

echo -e "Enter a character : \c"
read char

case $char in
  [a-z] )
    echo "User entered $char , [a-z]" ;;
  [A-Z] )
    echo "User entered $char , [A-Z]" ;;
  [0-9] )
    echo "User entered $char , [0-9]" ;;
  ? )
    echo "User entered $char , special character" ;;
  * )
    echo "Unknown character" ;;
esac