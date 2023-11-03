#! /bin/bash

#Until loop will executed when condition is false. If it gets true then execution will get fail.
num=1
until [ $num -gt 10 ]
do
    echo $num
    num=$(( num + 1 ))
done