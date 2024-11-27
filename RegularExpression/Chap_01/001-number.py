import re

# 判断是否为数字
def isDigit(ch):
  return re.search(ch,'[0-9]') != None

# 判断是否为电话号码
# [0-9]{6,7} 代表长度在6-7位之间，0-9的数字
def isPhoneNum(str):
  return re.search(str,'[1-9][0-9]{6,7}') != None



