#! /bin/bash

#case statement is good for multi-level statement and it is better alternative then if-else statement
#It enables us to match several values against one value

#Example - 1
echo -e "Enter vehicle type to know the rent: \c"
read vehicle_type

case $vehicle_type in
    "Car" )
        echo "Rent of $vehicle_type is 100$ per day" ;;
    "Van" )
        echo "Rent of $vehicle_type is 80$ per day" ;;
    "Truck" )
        echo "Rent of $vehicle_type is 150$ per day" ;;
    "Bicycle" )
        echo "Rent of $vehicle_type is 5$ per day" ;;
    * )                                                         # *) => used for default value
        echo "Don't have $vehicle_type " ;;
esac

#Example - 2

echo -e "Enter any character: \c"
read value

case $value in
    [a-z] )
        echo "You have entered $value between a-z" ;;
    [A-Z] )
        echo "You have entered $value between A-Z" ;;
    [0-9] )
        echo "You have entered $value between 0-9" ;;
    ? )                                                         # ? => used to read single special character
        echo "You have entered $value special character" ;;
    * )                                                         # *) => used for default value
        echo "Invalid character $value " ;;
esac
