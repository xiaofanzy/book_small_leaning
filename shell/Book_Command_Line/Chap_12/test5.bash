#!/bin/bash
testuser=zhangxiaofan
if grep $testuser /etc/passwd
then
  echo "the user $testuser exists on this system."
elif ls -d /home/$testuser
then
  echo "the User $testuser does not eixsts on this system"
fi
  
# 判断两个字符串是否有相同的值
if [ $USER != $testuser ]
then
  echo "this is $testuser"
else 
  echo "Welcome $USER"
fi

# 字符串顺序
var1=baseball
var2=hockey

# 注意 < 和 > 重定向
if [ $var1 \< $var2 ]
then 
  echo "$var1 is greater than $var2"
else
  echo "$var1 is less than $val2"
fi

var1=testing
var2=''

if [ -n $var1 ]
then 
  echo "The string $var1 is not empty"
else
  echo "The string $var1 is empty"
fi

if [ -z $val2 ]
then
  echo "The String $val2 is not empty"
else
  echo "The String $val2 is empty"
fi

