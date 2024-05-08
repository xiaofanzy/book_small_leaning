#!/bin/bash

# add params

total=$[ $1 * $2 ]
echo "fisrt params 1 is $1"
echo "second params 2 is $2"
echo "the total is $total"

echo "Hello $3 nice to meet you!"

# 如果大于9个需要加上{}
total=$[ ${10} * ${11} ]
echo "The total is $total"

