#!/bin/bash
echo "Bash version ${BASH_VERSION}..."
j=10
for i in $(eval echo "{0..$j..2}")
    do 
	echo "Welcome $i times"
    done
