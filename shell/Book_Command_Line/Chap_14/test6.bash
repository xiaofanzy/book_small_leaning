#!/bin/bash

# test parameters

if [ $# -ne 2 ]
then
  echo
  echo Usage test6.bash a b
  echo
else
  echo
  total=$(($1 + $2))
  echo The total is $total
fi
