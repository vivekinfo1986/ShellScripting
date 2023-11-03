#! /bin/bash
#There are two ways to write the function

#Function Decalaration, it can be decalare in any sequence. The matter is how you are calling the function
#Whatever the sequence you will call the function, they will be called in that sequence
# function <function_name>(){
#     Commands
# }

#function Decalaration
# <function_name>(){
#     commands
# }
function print(){
    echo "This is function-1"
}

#Function call
print

#arguement in the function is called using number sequence, $1 -> means first argument, $2 -> means second argument
function print(){
    echo "Hello $1" #using first arguement of function and only print first arugment as we have used $1
}

#function call with argument
print Vivek Vishal  