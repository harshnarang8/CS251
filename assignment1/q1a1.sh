#!/bin/bash

if [[ "$#" -ne 2 ]]
then
	echo "Houston, we have a problem, less arguments!"
	exit 1
fi

if ! [[ "$1" =~ ^[-+]?([0-9]*\.[0-9]+|[0-9]+) ]]
then
	echo "Houston, $1 not a number!"
	exit 1
fi

if ! [[ "$2" =~ ^[-+]?([0-9]*\.[0-9]+|[0-9]+) ]]
then
	echo "Houston, $2 not a number!"
        exit 1
fi

myCommandA='echo "$1 > $2" | bc -l'
myCommandB='echo "$2 > $1" | bc -l'

if (( $(eval $myCommandA) ))
then
	echo "$1 > $2"
elif (( $(eval $myCommandB) ))
then
	echo "$1 < $2"
else
	echo "$1 = $2"
fi
