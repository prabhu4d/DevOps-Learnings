#! /bin/bash

echo "What's your name?"
read name
echo "Hi $name"

# multiple variables for single input
echo "What's your hobbies? (enter 3 hobbies)"
read h1 h2 h3
echo "Hobby 1 $h1"
echo "Hobby 2 $h2"
echo "Hobby 3 $h3"

# entering input on same line
read -p "username : " username
echo "Welcome $username, password please."
# password is silent
read -sp "password : " password
echo

# array
echo "What's your favorite movies?"
read -a movies
echo "Movies ${movies[0]}, ${movies[1]}"

# Default variable when you don't specify in read command
echo "What is the default variable"
read
echo "Default variable is $REPLY"
