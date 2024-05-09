#!/bin/bash

# a paramerter has options
echo
while [ -n "$1" ]
do
  case "$1" in
    -a) echo "the parameter is has -a";;
    -b) echo "the parameter is has -b";;
    -c) param="$2"
        echo "the paramerter has two paramerter and the options is $param"
        shift ;;
    --) shift
        break ;;
    *)  echo "other types is complete";;
  esac
  shift
done

count=1

for state in "$@"
do
  echo the state is $state
  count=$(($count+1))
done

