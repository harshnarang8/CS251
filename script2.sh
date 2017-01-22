#!/bin/bash
echo Script name:$0
if [ "$#" -ne 1 ]
then
	echo gotcha
fi
re="[-+]?[0-9]*\.?[0-9]*"
reg="[-+]?([0-9]*\.[0-9]+|[0-9]+)"
echo $reg
echo $1
if [[ "$1" =~ ^[-+]?([0-9]*\.[0-9]+|[0-9]+) ]]
then
	echo matched
else
	echo kat gaya
fi
