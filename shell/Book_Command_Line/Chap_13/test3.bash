#!/bin/bash

# break

for var1 in 1 2 3 4 5 6 7
do
  if [ $var1 -eq 5 ]
  then 
    break # 注意这个不要分号
  fi 
  echo "Iterator number $var1"
done  

var1=1
while [ $var1 -le 10 ]; do
  if [ $var1 -eq 5 ]
  then
    break
  fi
  echo "The number is  $var1"
  var1=$(($var1+1)) 
done

val1=0
until [ $val1 -ge 8 ]; do # 当使用变量的时候，变量必须首先初始化
  echo "$val1"
  val1=$(($val1+1))
done

echo "-------------------"
IFS.OLD=$IFS
IFS=$'\n'
for entry in $(cat /etc/passwd)
do
  echo "Value in $entry"
  IFS=:
  for value in $entry
  do
    echo " $value"
  done
done





