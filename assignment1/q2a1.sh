#get the file name and 2 patterns
#check for no of arguments
#use grep for the matching and use | for the next one
#!/bin/bash
if [[ "$#" -ne 3 ]]
then
	echo Houston, We have a problem, less arguments!
	exit 1
fi

if ! [ -f $1 ]
then
	echo Houston, the file is missing!
	exit 1
fi

result=$(grep $2 $1| grep $3)

if [[ -z "$result" ]]
then
	echo Houston, no sentences found!
else
	echo $result
fi
