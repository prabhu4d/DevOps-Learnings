#! /bin/bash

<< syntax
function name(){
  commands
}

name () {
  commands
}
syntax

function hello(){
  echo "Hello $1"
}

quit (){
  echo "exiting..."
  exit
}

hello Prabhu
quit