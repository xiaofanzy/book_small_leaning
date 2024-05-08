#!/bin/bash

# small shell
# type 1 ln -s 设置一个软连，将文件名改为if的名字
# type 2 后面在增加参数，这样就可以使用参数传递的方式了
# 很聪明
name=$(basename $0)

if [ $name = "addem" ]
then
  #total=$(($1+$2))
  total=$[ $1+$2 ]
elif [ $name = "multem" ]
then
  total=$(($1*$2))
fi 
echo "The $1 and $2 is $total"