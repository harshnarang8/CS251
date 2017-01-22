#!/bin/bash

# $1 is n : the number of students
# $2 is m : the number of tas
# $3 is d : the number of days
# w       : the number of students per ta (n/m)
# $4 is f : the file with percentages
w=($1/$2)
echo $w

#read the percentages from f
f=($(grep '' $3))
echo ${f[1]}
#done
echo $(($2-1))
#take random t[i] = f[i]*n/100 number of students in the (i+1) day
for i in {0..$(($2-1))..1}
do
    echo "Hello no $i"
    #echo "(${f[i]}*$1)/100" | bc -l
done

echo ${t[@]}

#after the last t[i] check the sum of t[i]s and if unequal, and the difference to the lest t[i]

# no of tas on day i = t[i]/w
# t[i] % w tas grade w+1 students and rest tas grade w students


