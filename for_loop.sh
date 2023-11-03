#! /bin/bash

#Example - 1
num=1
for num in 1 2 3 4 5
do
    echo $num
done

#Example - 2
# for num in {1..10}
# do
#     echo $num
# done

#Example - 3 | range {start..stop..increment} -> if you give two dots after stop that means it will increase the value by given number
#In below example it will increase the value by 2 in each iteration
#Below logic will work only for bash version 4.0 and above. To know the bash version - echo ${BASH_VERSION}
echo ${BASH_VERSION}
for num in {1..10..2}
do
    echo $num
done

#Example - 4
for (( num=0; num<=10; num++))
do
    echo $num
done

#Example - 5
for command in ls date pwd
do
    echo ==================$command=========================
    $command
done

#Example - 6
#Print all the directories name from current location -> use "-d", to search only for file use "-f"
# * -> * represented 
for item in *
do
    if [ -d $item ]
    then
        echo $item
    fi
        
done