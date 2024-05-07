#!/bin/bash

# -d 检查file是否存在并是一个目录下面
jump_diretory=/home/arthur

if [ -d $jump_diretory ]
then 
  echo "the $jump_diretory diretory exists"
  cd $jump_diretory
  ls 
else 
  echo "The $jump_diretory diretory does not exists"
fi 

# -e 检查对象是否存在 
# 检查使用文件和目录前先检查他们是否存在
location=$HOME
file_name="sentinel" 
if [ -e $location ]
then
  echo "Ok on the $location diretory"
  echo "Now checking on the file $file_name"

  if [ -e $location/$file_name ]
  then
    echo "Ok on the filename."
  else
    echo "Ok not on the filename."
  fi
else
  echo "The $location diretory does not exist"
  echo "Nothing to update"
fi
echo "------------------"
# -f 可用于文件和目录，要确定文件为对象，需要用-f比较
if [ -e $location ]
then 
  echo "The item begin checked:$location"

  if [ -f $location ]
  then
    echo "Yes $location is a file"
  else
    echo "No $location is not a file"
  fi
fi

# -r 测试文件是否可读
pwfile=/etc/shadow

if [ -f $pwfile ]
then 
  if [ -r $pwfile ]
  then 
    tail $pwfile
  else
    echo "sorry i am unable to read the $pwfile file"
  fi
else 
  echo "sorry i am unable to read the $pwfile file"
fi

# -s  检查文件是否为空
file_name=$HOME/sentinel

if [ -f $file_name ]
then
  echo "the file is $file_name"
  if [ -s $file_name ]
  then
    echo "The $file_name file exists and has data in it."
    echo "Will not remove this file"
  else
    echo "The $file_name file not exists has data in it"
  fi
else
  echo "the file is $file_name"
fi

# -w 判断是否可写
item_name=$HOME/sentinel
echo
echo "The item being checked $item_name"
echo

if [ -w $item_name ]
then
  echo "The item beging checking $item_name"
fi

# -x 判断是否可执行
if [ -x $item_name ]
then
  echo "The item beging checking $item_name"
fi

# -O 可以测试你文件的属主 比如test11 就是zhangxiaofan 用户下面的
test_file=/home/zhangxiaofan/learning/book_small_leaning/shell/Book_Command_Line/Chap_12

if [ -O $test_file ]
then
  echo "Cool!"
fi

# -G 检查默认组
if [ -G $HOME/testing ]
then
  echo "You are in the same group as the file"
else
  echo "The file is not owned by your group"
fi

# -nt 就是 new than 就是a 比b新
# -ot 就是old than 就是a  比 b 旧
if [ test11.bash -nt test5.bash ]
then
  echo "test11 is than test5"
else
  echo "test11 is old test5"
fi

# 但是需要有个问题是需要判断是否存在，否则他不会判断文件是否存在
if [ -e test11.bash ] && [ -e test5.bash ]
then
  if [ test11.bash -nt test5.bash ]
  then
    echo "test11 is than test5"
  fi
else
  echo "The file is not exists please check. "
fi

# 使用双括号
val1=10

if (($val1 < 10))
then
  echo "$val1 is equal 10"
else
  ((val2 = $val1 ** 2))
  echo "The $val1 square of $val2"
fi

# 使用方双括号 使用正则表达式

if [[ $USER == z* ]]
then
  echo "Hello $USER"
fi 

# case  命令
case $USER in
rich | barbara)
  echo "Please enjoy your visit";;
testing)
  echo "please testing account";;
jessica)
  echo "Do not forget to log off when you are done";;
zhangxiaofan)
  echo "Hello zhangxiaofan";;
esac

