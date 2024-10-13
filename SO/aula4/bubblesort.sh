#!/bin/bash

#Declare array
nums=()

#Check if file exists
if [[ ! -f $1 ]]; then
    echo "File '$1' doesn't exist"
    exit 1
fi

#Read file
while read -r line
do
    #Add read line to array
    nums+=($line)
done < $1

#Bubble sort
stop=0
len=${#nums[@]}
while [[ $stop == 0 ]] ; do
    stop=1
    for (( i=0 ; i < len ; i++ )); do
        aux=$(($i + 1))
        first="${nums[$i]}"
        second="${nums[$aux]}"
        if [[ $first -gt $second ]]; then
            nums[$i]=$second
            nums[$aux]=$first
            stop=0
        fi
    done
done

echo Array:
#Print array
for i in ${nums[@]}
do
    echo $i
done
