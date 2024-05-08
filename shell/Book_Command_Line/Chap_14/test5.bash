#!/bin/bash

# testing parameter before you use it
# 这里的$1 需要加双引号
if [ -n "$1" ]
then
  echo "Nice to meet you $1"
else 
  echo "The parameter \$1 is not existed"
fi

