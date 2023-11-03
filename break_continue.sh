#! /bin/bash

#break -> keyword will stop the execution of loop when the condition is met
#continue -> keyword will skip the next statement only given after "continue" keyword

for (( i=1 ; i<=10 ; i++ ))
do
    if [ $i -eq 3 -o $i -eq 6 ]
    then
        continue    #During execution when it found the value of i is 3 or 6 then it will skip the echo statement written after "fi"
    fi
    echo $i
done