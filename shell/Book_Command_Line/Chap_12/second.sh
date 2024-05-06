#!/bin/bash
# testing multiple commands in the then selection

testuser=zhangxiaofan

if grep $testuser /etc/passwd
then
  echo "do you love me?"
  echo "$testuser ?"
elif ls -d /home/$testuser
then
  echo "you do not love me?"
fi


