#!/bin/bash

exec 3>test13out

echo This should display on the monitor
echo and ths should be stored in the file >&3
echo then this should be back on the monitor

