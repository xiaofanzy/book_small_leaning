# !/bin/bash
# 使用变量
# display user information form system
echo 'Uer info for userid: $USER'
echo UID:$UID
echo HOME:$HOME

# 转义字符
echo 'the cost of the item is \$15'

# 赋值中间不能有空格
#days = 10 # is error
days=10 # is right
echo "the $days is 10"

# 反引号符 或者 ${} 格式
testing=`date`
testing1=$(date)

echo 'The date and time are: ' $testing
echo 'and another are' $testing1

today=$(date+%y%m%d)
# ls /usr/bin -al > log$today

# 输入重定向和输出重定向
date > test6 # 如果有就替换，没有就新建
date >> test6  # 这个就是追加操作

# 输入重定向
wc < test6

# 解决数学问题
var1=$[1 * 2]
echo $var1
echo $? # 一般以最后一个命令的退出状态码退出
# 也可以自己指定
exit 5








