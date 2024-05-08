#!/bin/bash

# 跳出外部循环
for (( a=1;a<4;a++ ))
do 
  #echo "Outer loop $a"
  for (( b=1;b<100;b++ ))
  do
    if [ $b -gt 4 ]
    then
      break 2
    fi
    #echo "Inner loop : $b"
  done
done

# continue 
for (( var1=1;var1<15;var1++ ))
do
  if [ $var1 -gt 5 ] && [ $var1 -lt 10 ]
  then
    continue
  fi
  #echo "Iterator number : $var1"
done

# 对于while until 循环，如果执行的是参数递增操作，后面的不会增加，这个需要注意
var1=0
while #echo "while iteraotr $var1" 
  [ $var1 -lt 15 ]; do
  var1=$(($var1+1)) # 这里就会执行
  if [ $var1 -gt 5 ] && [ $var1 -lt 10 ]
  then
    continue
  fi
  # echo "Inside iteraotr number $var1"
  # var1=$(($var1+1)) # 这里的递增操作不会执行
done

# continue 也可以跳过几层循环
for ((a=1;a<4;a++))
do
  echo "$a"
  for ((b=1;b<19;b++))
  do
    if [ $a -gt 2 ] && [ $b -lt 4 ]
    then
      continue 2
    fi
    #echo "inside b = $b"
    val3=$[ $a * $b ]
    #echo "the result = $val3"
  done
done

for ((a=1;a<10;a++))
do
  echo "The number is $a"
done > test2.txt 

# 也可以接命令
for state in "North Dakota" Connecticut Illinois Alabama Tennessee
do
  echo "$state is the next place to go"
done | sort
echo "This completes our travels"

#IFS=:
for folder in $PATH 
do
  echo "$folder"
  for file in $folder
  do
    echo " $file"
  done
done

# 创建用户
input="users.csv"
while IFS="," read -r userid name
do
  echo "adding $userid"
  useradd -c "$name" -m $userid
done < $input

