#!/bin/bash

num=1
while [[ $num -lt 10 ]] 
do
    if [[ $num -eq 5 ]]; then
        break
    elif [[ $num -eq 2 ]] ; then
        echo "skipping number 2"
    else
        echo "Number is equal to $num"
    fi
    ((num++))
done
echo "Loop completed"