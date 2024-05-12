#!/bin/bash

exit 0< testfile
count=1

echo
while read line
do
  echo "Line #$count : $line"
  count=$(($count+1))
done
