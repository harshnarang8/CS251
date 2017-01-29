#! /bin/bash

if [[ "$#" -ne 1 ]]
then
    echo "Houston, we have a problem! Incorrect number of arguments."
    exit 1
fi

if ! [ -f $1 ]
then
    echo "Houston, We have a problem! File missing!"
    exit 1
fi
coun=1
min=0
max=0
while read -r num
do
    if ! [[ "$num" =~ ^[-+]?([0-9]*\.[0-9]+|[0-9]+) ]]
    then
        echo "Houston, the file has characters. How could you let this unfortunate thing happen?"
        exit 1
    fi
    
    if [[ $coun -eq 1 ]]
    then
        coun=2
        min=$num
        max=$num
    fi
    
    if [[ max -lt num  ]]
    then
        max=$num
    fi
    
    if [[ min -gt num ]]
    then
        min=$num
    fi
done < "$1"

#echo "Min : $min, Max : $max"

awk -v min="$min" -v max="$max" '{if (min == max) print "1.0000";else printf "%0.4f\n", ($0-min)/(max-min);}' $1
