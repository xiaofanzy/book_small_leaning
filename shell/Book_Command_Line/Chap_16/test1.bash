#!/bin/bash

trap "echo 'Sorry i have trapped ctrl-c'" sigint

echo this is a test script

count=1
while [ $count -le 10 ]; do
  echo "Loop $count"
  sleep  1s
  count=$(($count+1))
done
