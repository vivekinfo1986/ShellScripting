#! /bin/bash

#First way to read file using Input-redirection, "read" is the command that will be used to read the file and then the variable name
# < <filename> -> using this we are supplying the file name that will be read using while loop and with "read" command
while read file
do
    echo $file
done < test.txt

#Another way to read the file using "cat" command

cat test.txt | while read file
do
    echo $file
done

#Another way is to use "IFS=<Space or quote>"
#Above two way is not that efficient to read the file if it has special character or specific indentation, it is better to use below method
#"-r" -> prevent the backslash or escape interpreted.

while IFS= read -r file
do
    echo $file
    
done < test.txt