#!/bin/bash

# 

exec 2>testerror
echo This is the start of script
echo now rediecting all output to another location

exex 1>test
echo This is the start of script right
echo but it should go to the testerror file >&2

