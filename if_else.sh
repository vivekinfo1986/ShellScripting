#! /bin/bash
#syntax
# if [condition]
# then
#     statement
# fi

#Example: 1
count=10
if ((count > 9)) # OR [ $count -eq 10 ]
then
    echo "Integer condition is true!"
fi

#Example: 2
word="abc"
if [ $word == "abc" ]
then
    echo "String condition is true!"
fi

# Example: 3
word="abc"
if [ $word == "XYZ" ]
then
    echo "String condition is true!"
else
    echo "String condition is false!"
fi

#Example: 4
word="abc"
if [ $word == "XYZ" ]
then
    echo "String XYZ condition is true!"
elif [ $word == "abc" ]
then
    echo "String abc condition is true! "
else
    echo "Try again!"
fi