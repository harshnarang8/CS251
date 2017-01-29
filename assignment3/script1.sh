#! /bin/bash

if ! [ -f $1 ]
then
    echo "Houston, We have a problem! File missing!"
fi
coun=1
min=0
max=0
while read -r num
do
    if [[ $coun -eq 1 ]]
    then
        echo I happy
        coun=2
        min=num
        max=num
    fi
    if [[ max -gt cou ]]
    then
    fi

done < "$1"    
