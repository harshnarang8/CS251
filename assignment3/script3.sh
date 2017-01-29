#IFS=","
while IFS="," read -r var name
do
    # find the record with var as field 2
    sear="^[0-9]*,$var"
    echo "Printing for $var"
    curr=$(grep -m 1 $sear $2)
    echo $curr
    echo Mark1
    echo ${curr[0]}
    sear1="^${curr[0]},"
    mar=$(grep -m 1 sear1 $3)
    echo $mar
    mar1=( $mar )
    marks=$(( ${mar1[1]}+${mar1[2]} ))
    echo $marks
    echo $var,$name,$marks
done < $1
