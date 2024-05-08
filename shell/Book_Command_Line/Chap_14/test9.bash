#!/bin/bash

# shift 移动变量
count=0
while [ -n "$1" ]; do
  echo The $count value is $1
  count=$(($count+1))
  # 这里需要做判断，否则如果是奇数
  shift 2 # shift 丢弃之后无法找回
done

