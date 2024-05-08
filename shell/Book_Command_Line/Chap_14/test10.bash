#!/bin/bash

# case 

while [ -n "$1" ]; do
  case "$1" in 
    -a) echo "Found the -a options";;
    -b) echo Found the -b options;;
  esac
  shift
done
