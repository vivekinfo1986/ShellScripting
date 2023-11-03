#! /bin/bash

#By-default whatever variable that you declare within script is global variable that means it can be 
#accessed anywhere within script.

function print_name(){
    name=$1                #The variable "name" here is global variable, it will change the value of "name" variable.
    echo "Name is : $name"
}

name="Vivek"
echo "Before calling the function, name is : $name"
#calling function
print_name Vishal
echo "After calling the function, name is : $name"

#To make the local variable we need to use keyword "local" within function so that the value will not get change.

function print_name(){
    local name=$1                #The variable "name" here is local variable, it will change the value of "name" variable only locally within function.
    echo "Name is : $name"
}

name="Vivek"
echo "Before calling the function, name is : $name"
#calling function
print_name Vishal
echo "After calling the function, name is : $name"


