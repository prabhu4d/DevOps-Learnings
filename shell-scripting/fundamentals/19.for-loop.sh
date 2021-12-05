#! /bin/bash
echo "bash version $BASH_VERSION"


<<syntax
for VAR in 1 2 3 ... N
do
  command1
  command2
  command3
done

# condition maybe files or commands'
for (( EXP1; EXP2; EXP3 ))
do
  commands
done
syntax

for i in 1 2 3 4 5
do
  echo $i
done

# {start..end..increment}
for i in {1..10..2}
do
  echo $i
done

for (( i=0; i<5; i++ ))
do
  echo $i
done