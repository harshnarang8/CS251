#!/bin/bash

# $1 is n : the number of students
# $2 is m : the number of tas
# $3 is d : the number of days
# w       : the number of students per ta (n/m)
# $4 is f : the file with percentages
# d       : an array storing the day choice of student i (indexing 1)

w1=$(($1/$2))
if [[ $(($1 % $2)) -ne 0 ]]
then
    echo hey baby
    w1=$(($w1 + 1))
fi
echo M1
echo $w1
echo M2

#read the percentages from f
f=($(grep '' $4))
echo ${f[1]}
# done
echo $(($2-1))
#take t[i] = f[i]*n/100 number of students in the (i+1) day
sum=0
for i in $(eval echo "{0..$(($3-1))}")
    do
        echo "Hello no $i"
        t[i]=$(((${f[i]}*$1)/100 ))
        csum[i]=0
        sum=$(($sum+t[i]))
    done


# after the last t[i] check the sum of t[i]s and if unequal, and the difference to the lest t[i]

# echo $sum
t[$((${#t[@]}-1))]=$((t[$((${#t[@]}-1))]+$1-$sum))
# echo ${t[2]}

# done

echo $(($RANDOM%$3))

for i in $(eval echo "{1..$1}")
    do
        fl=0
        while [[ $fl -eq 0 ]]
        do
            d[i]=$(($RANDOM%$3))
            echo ${csum[${d[i]}]} 
            if [[ ${csum[${d[i]}]} -ne ${t[${d[i]}]} ]]
                then
                    fl=1
                    csum[${d[i]}]=$((${csum[${d[i]}]}+1))
            fi
        done
        echo "This is $i : ${d[i]}"
    done

## this shit is correct till above
# no of tas on day i = t[i]/w
# t[i] % w tas grade w+1 students and rest tas grade w students

# now I need to randomly allocate tas to their days
echo "Value of w1 : $w1"
for i in $(eval echo "{0..$(($3-1))}")
    do
        echo "my num $i $((${t[$((i-1))]})) $w1 : $((${t[$((i-1))]}/w1))"
        echo Hello World
#        echo $((1/w1))
        tw[i]=$(($((${t[i]}))/w1))
        echo Hello Again
        echo ${tw[i]}
        if [[ ${tw[i]} -eq 0 ]]
        then
            tw[i]=1
        fi
        tsum[i]=0
    done

echo "day waala for loop finished"

for i in $(eval echo "{1..$2}")
    do
        fl=0
        while [[ $fl -eq 0 ]]
        do
            da[i]=$(($RANDOM%$3))
            echo "${tsum[${da[i]}]} ${tw[${da[i]}]}"
            if [[ ${tsum[${da[i]}]} -lt ${tw[${da[i]}]} ]]
                then
                    fl=1
                    tsum[${da[i]}]=$((${tsum[${da[i]}]}+1))
                    echo "No of TAs on day ${da[i]} currently is ${tsum[${da[i]}]}"
            fi
        done
        echo "This is $i : ${da[i]}"
    done


for i in $(eval echo "{0..$(($3-1))}")
    do
        echo "TAs on day $i : ${tsum[i]}"
    done

for j in $(eval echo "{0..$(($3-1))}")
do
echo "List of students on day $j:"
for i in $(eval echo "{1..$1}")
do    
    if [[ d[i] -eq j ]]
    then
        echo $i
    fi
done
echo "List of tas on day $j:"
for i in $(eval echo "{1..$2}")
do
    if [[ da[i] -eq j ]]
    then
        echo $i
        fi
done
done


for i in $(eval echo "{1..$1}")
do    
    mark[i]=0
done

#The following commented out code is for pseudo randomly :P assigning the students on each day to a TA

#for j in $(eval echo "{0..$(($3-1))}")
#do
#    echo "day $j matching:"
#
#    for i in $(eval echo "{1..$2}")
#    do
#        if [[ da[i] -eq j ]]
#        then
#            #echo $i
#            while [[ $currentCount -lt ${t[j]} ]]
#            do
#            myStudent=$(($RANDOM%${t[i]}))
#                if [[ ${d[i]} -eq $j ]]
#                then
#                    if [[ $((mark[myStudent])) -eq 0 ]]
#                    then
#                        echo "$i $myStudent"
#                        currentCount=$(($currentCount+1))
#                    fi
#                fi
#            done
#        fi
#    done
#done

