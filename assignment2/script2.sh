#!/bin/bash
declare -a myTestArray
myTestArray=(1 2 3 4)
echo ${myTestArray[*]}
unset myTestArray[1]
echo ${myTestArray[1]}
