#!/bin/bash

set -- $(getop -q ab:cd "$@")

echo

while [ -n "$1" ]; do
  case "$1" in  
  -a) echo found the -a;; 
  -b) param="$2"
      echo the param2 is $param
      shift;;
  -c) echo found the -c
  --) shift
      break;;
  *) echo not an option;;
  esac
  shift
done

count=1

for param in "$@"
do
  echo parameter #$count is : $param
  count=$(($count+1))
done
exit 3

