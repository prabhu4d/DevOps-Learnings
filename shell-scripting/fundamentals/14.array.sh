#! /bin/bash

os=("Ubuntu" "Windows" "MacOS")

# add
os[3]="GNU"

# update
os[1]="Windows 11"

# delete
unset os[2]

echo "${os[@]}"
echo "${os[0]}"
echo "${!os[@]}"
echo "${#os[@]}"

string="Prabhu"
echo "${string[@]}"
echo "${string[0]}"
echo "${string[1]}"
echo "${#string[@]}"
