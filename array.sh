#! /bin/bash

#bash shell support simple one-dimentional array

#To declare array - array_name('val1' 'val2' 'val3')
name=('vivek' 'vishal' 'vishal')

#To print all element of array
echo "${name[@]}"

#To print a specific element of array
echo "${name[0]}"

#To print only indexes of array without value - use '!' in-front of array variable
echo "${!name[@]}"

#To print length of the array - use '#' in-front of array variable
echo "${#name[@]}"

#To add new element to array or update existing element
name[3]='Vijay'
echo "${name[@]}"

#To remove element from array -> use 'unset' keyword with arrary[index]
unset name[3]
echo "${name[@]}"

#bash treat a normal variable as array
sting=vikrant
echo "${sting[@]}"
echo "${sting[0]}"
echo "${#string[@]}"
