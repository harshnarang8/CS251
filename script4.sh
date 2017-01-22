st='echo "$1 > $2" |bc -l'
st1=$st
echo $st1
if (( $(eval $st) ))
then
	echo did it
fi
