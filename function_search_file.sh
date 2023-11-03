#! /bin/bash

file_name() {
    echo "You need to provide an arguement : "
    echo "File name : $0"
}

file_search() {
    local file="$1"                        #Here $1 refers locally 
    [[ -f $file ]] && return 0 || return 1 #Here we are using ternary operator and returning value 0 if file exist else 1
}

[[ $# -eq 0 ]] && file_name

if ( file_search "$1" ) #Here we are calling function "file_search" with arguement provided during script execution
                        #Also, Here $1 is refered to script argument that you will supply 
then
    echo "File $1 exist"
else
    echo "File $1 does not exist"
fi