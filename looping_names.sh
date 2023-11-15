#!/bin/bash

#user name loop example
users="devdojo bobby tony"

for user in ${users}
do
    echo "${user}"
done

#number loop

for num in {1..10}
do
    echo ${num}
done