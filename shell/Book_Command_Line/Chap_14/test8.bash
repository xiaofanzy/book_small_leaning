#!/bin/bash

# test $* 和 $@

echo The Test \$* is euqals $*
echo The Test \$@ is equals $@

name1=$*
name2=$@

for state in "$*"
do   
  echo $state
done
echo "----------------"
for state in "$@"
do   
  echo $state
done