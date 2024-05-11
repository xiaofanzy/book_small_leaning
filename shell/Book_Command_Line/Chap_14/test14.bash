#!/bin/bash

echo
while getopts :ab:c opt
do
  case "$opt" in
    a) echo "found -a option";;
    b) echo found -b option with value $OPTARG;;
    c) echo found -c option;;
    *) echo other option;;
  esac
done

