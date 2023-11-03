#! /bin/bash

#logical AND in shell script can be done using "&&" or "-a"

age=18

if [ "$age" -ge 18 ] && [ "$age" -lt 35 ]
# OR this can be defined using below
# if [ "$age" -ge 18 -a "$age" -lt 35 ]
then
    echo "Valid age!"
else
    echo "Invalid age!"
fi

#Login OR "||"

if [ "$age" -ge 18 ] || [ "$age" -lt 35 ]
# "||" or "-o" -> anyone of them can be used.
# Example of using "-o" ==> if [ "$age" -ge 18 -o "$age" -lt 35 ]
# Example of using "||" ==> if [[ "$age" -ge 18 || "$age" -lt 35 ]]
then
    echo "Valid age!"
else
    echo "Invalid age!"
fi