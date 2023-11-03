#! /bin/bash

#This is Hello World Program
# -e => What is use for
# -n => what is the use of it
#echo "Hello World!"

var1=50
        #echo "Value of var variable is $var1"
var2="Vivek"

var3=10.30

var4=True


#Operators
number1=100
number2=10

#echo $number1 + $number2
echo 100 + 10

echo $(expr $number1 + $number2 )
#echo $(( number1 + number2 ))
echo $(( number1 - number2 ))
echo $(( number1 * number2 ))
echo $(( number1 / number2 ))
echo $(( number1 % number2 ))


echo "#################################Learning Basic Calculator ####################"

num1=20.5
num2=5

#echo $(expr $num1 + $num2 )
#echo "20.5 + 5" | bc
echo "$num1 + $num2" | bc




