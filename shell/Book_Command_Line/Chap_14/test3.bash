#!/bin/bash

# testing the $0 parameter

echo "The zero paramers is set to $0"

# basename 将返回不包含路径的脚本名
name=$(basename $0)
echo "The purue parameters is $name"

