num=10
min=a
max=30
#echo $(( $max-$min ))
#awk -v num="$num" -v min="$min" -v max="$max" 'BEGIN{print 1.0*(num-min)/(max-min)}'

if [ "$num" -eq "$num" ]
then
    echo A
else
    echo B
fi

if [ "$min" -eq "$min" ]
then
    echo A
else
    echo B
fi
