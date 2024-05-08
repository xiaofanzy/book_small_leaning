#!/bin/bash

# while
val1=0
while [ $val1 -lt 5 ]
do 
  echo $val1
  val1=$[ $val1+1 ] # 变量值自减
done 

# 多个测试命令
val2=10
while echo $val2  # 两个条件不能放在同一列
  [ $val2 -ge 0 ]
do      
  echo "This is inside the loop"
  val2=$[ $val2-1 ]
done    

# util
var1=100
#until [ $var1 -le 0 ] # 为false 的时候执行
until [ 1 != 0 ] # 为false 的时候执行，直到为true的时候不执行
do 
  echo "the val is $var1"
  var1=$[ $var1-25 ]
done

# 当多条命令的时候，等于0 就代表多条都是0
var2=100
until echo $var2
  [ $var2 -le 0 ]
do
  echo $var2
  var2=$[ $var2-25 ]
done

echo "---------------"
# 嵌套循环
for (( a=0;a<10;a++ ))
do
  b=$((a+1))  # GPT推荐使用这个写法
  until [ $b -gt 20 ]
  do
    echo "a value is $a and b value is $b "
    b=$(($b+1))
  done
done

# 循环处理文件数据
IFS.OLD = $IFS
IFS=$'\n'

for entry in $(cat /etc/passwd)
do 
  echo "value is $entry -"
  IFS=:
  for value in $entry
  do 
      echo " value"
  done
done  

