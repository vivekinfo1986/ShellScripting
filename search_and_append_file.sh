#! /bin/bash
echo -e "Enter the file to search and append: \c"
read file_name

#check if file exist
if [ -f $file_name ]
then
    echo "$file_name found, check if file has write permission"
    if [ -w $file_name ]
    then
        echo "Enter the text the append file and press Enter then CTRL + D to save "
        cat >> $file_name
    else
        echo "$file_name has no write permission"
    fi
    echo "$file_name has appended successfully!"
else
    echo "file not found"
fi