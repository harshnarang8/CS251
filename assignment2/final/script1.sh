#!/bin/bash


if [[ "$#" -lt 1 ]]
then
	echo Houston, We have a problem, less arguments!
	exit 1
fi


if [[ "$#" -gt 1 ]]
then
	echo Houston, We have a problem, more arguments!
	exit 1
fi

if ! [ -f $1 ]
then
	echo Houston, the file is missing!
	exit 1
fi

sed 's/\([^,]*\)[,]\([^,]*\)\([,]\{0,1\}\)/\2,\1\3/g' $1
