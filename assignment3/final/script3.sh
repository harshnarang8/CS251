#IFS=","

if ! [[ "$#" -eq 3 ]]
then
    echo "Houston! We have a problem. Incorrect number of arguments."
fi

if ! [ -f $1 ]
then
    echo "Houston! $1 is missing."
fi

if ! [ -f $3 ]
then
    echo "Houston! $3 is missing."
fi

if ! [ -f $2 ]
then
    echo "Houston! $2 is missing."
fi

while IFS="," read -r var name
do
    # find the record with var as field 2
    sear="^\([0-9]*\),$var"
    #echo "Printing for $var"
    curr=$(grep -m 1 $sear $2)
    #echo $curr
    curr=$( grep -m 1 $sear $2 | sed "s/$sear/\1/g")
    #echo $curr
    #echo Mark1
    if [[ "$curr" == "" ]]; then
	echo $var,$name,0
	continue
    fi
    sear1="^$curr,\([0-9]*\),\([0-9]*\)"
    #grep -m 1 $sear1 $3
    mar1=$(grep -m 1 $sear1 $3| sed "s/$sear1/\1/g")
    if [[ "$mar1" == "" ]]; then
	mar1=0
    fi
    #echo $mar1
    mar2=$(grep -m 1 $sear1 $3| sed "s/$sear1/\2/g") 
    if [[ "$mar1" == "" ]]; then
	mar1=0
    fi
    #echo $mar2
    marks=$(( $mar1 + $mar2 ))
    #echo $marks
    echo $var,$name,$marks
done < $1
