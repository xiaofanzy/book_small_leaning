#!/bin/bash

# timing

if read -t 5 -p "please enter the name" name
then
  echo "Hello $name,welcome to my script"
else
  echo
  echo "Sorry,too slow!"
fi
