#! /bin/bash
#In while loop if the condition is true then only the command will executed.
num=1
#while [ $num -le 10 ]
while (( $num <= 10 ))
do
    echo $num
    #num=$(( num+1 ))
    (( num++ ))
    #If you want to add delay on execution then we can use "sleep" command
    sleep 1
done

