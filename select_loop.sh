#! /bin/bash

#Example - 1
#Select loop is used to create a list of menu and give choice to user to select
# select item in Car Van Truck Bicycle
# do
#     echo "$item is selected"
# done

#Example - 2
select item in pwd date time ls 
do
    case $item in
    pwd)
        echo "========$item========="
        pwd
        ;;
    date)
        echo "========$item========="
        date
        ;;
    time)
        echo "========$item========="
        date
        ;;
    ls)
        echo "========$item========="
        ls
        ;;
    *)
        echo "Invalid choice...try agian"
    esac
done