#! /bin/bash

# #read only commands can be used with variable or function and as per name, it will make variable && function read only
# #assigning a value to variable var
# var=20

# readonly var

# #Again assigning new value to variable
# var=50

# #Here as we make the variable as readonly, it will not accept new value i.e. 50, it will only print the value as 20.
# echo "Value of variable var is : $var"

#Similarly, we can make a function as readonly
hello_world() {
    echo "Hello World!"
}
#To make the function as readonly, use "readonly -f"
readonly -f hello_world

#Now if we create the same function and try to print something else it will not accept as we made this function as readonly
hello_world() {
    echo "Hello World Again!"
}
#Once you call the function, it will only print "Hello World", it won't print "Hello World Again!" because we made function as readonly hence it will only accept one time change.
hello_world

#If you run only "readonly" without any additional parameters, it will list out all the built-in readonly variable
#If you want to see only readonly function then use "readonly -f"