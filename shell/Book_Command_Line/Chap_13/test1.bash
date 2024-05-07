#!/bin/bash

for test in  Alabama Alaska Arizona Arkansas California Colorado
do 
  echo "The next state is $test"
done  

# 这个不严谨的一点事，test的范围是全局的，
echo "The last visit is $test"
test="Tom"
echo "The visit is became $test"

# 读取列表中的复杂值
# 对于单引号，我们需要转义
for test in i don\'t know if this\'ll work
do
  echo "Word:$test"
done
# 对于多空格，需要使用双括号圈起来，不然就会按照空格拆分了
for test in Nevada "New Hampshire" "New Mexico" "New York"
do 
  echo "Now going to : $test"
done

list="Alabama Alaska Arizona Arkansas"
list=$list" Connecticut"

for state in $list 
do
  echo "Have you ever visited $state ?"
done

file=states
if [ -r $file ]
then
  echo "i can read file"
  for state in $(cat $file)
  do
    echo "Visti $state"
  done 
fi 

echo "------------------------"
# 更改字段分隔符
# 对于州之间有分隔符的，我们可以通过IFS 来做
IFS=$'\n'
IFS.OLD=$IFS
# 这玩意前面有个$ 
for state in $(cat $file)
do  
  echo "Vistit $state"
done 
IFS=$IFS.OLD 

# 使用通配符读取目录
diretorys_list=/home/zhangxiaofan
var1=1
for state in $diretorys_list/*
do
  if [ -d $state ]
  then 
    echo "The $state is diretory "
  else 
    echo "The $state is file"
  fi      
  (( var2 = $var1 ** 2 ))
  var1=$((var1 + 1)) # 自增
  echo "$var2 is var2 "
done    

# c风格
# 单个变量，多个变量
for (( a=1;a<10;a++ ))
do 
  echo " the a value is $a"
done 







