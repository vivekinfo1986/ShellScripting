#! /bin/bash

# "-e" and "\c" is used to get the user input on the same line
echo -e "Enter file name to search \c"
read filename

# "-e" is used to check whether the file exist or not in current directly
# "-f" is used to check whether file exist and if is is regular file or not
# "-d" is used to check wheter directory exist or not
if [ -e $filename ]
then
    echo "file $filename found"
else
    echo "file $filename not found"
fi

#There are two kind of file character special file and block special file.
#character special file (to check use "-c") -> is the file is the normal file which contains text
#block speical file (to check use "-b") -> is the file is the binary file which can be picture, music 
# "-s" -> is used to check if file is empty or not
ls -l
if [ -s $filename ]
then
    echo "file $filename is not empty"
else
    echo "file $filename is empty"
fi

#"-r" -> check if the file has read permission
#"-w" -> check if the file has write permission
#"-x" -> check if the file has execute permission