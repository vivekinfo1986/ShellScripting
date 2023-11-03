#! /bin/bash

#"$$" -> is used to print the PID of the script itself
#While running any script if you will press CTRL + C then script will terminated. This key is call Interupt SIGNAL. And in SIGNAL term it is called SIGEND
#We can also press CTRL + Z, post that script will be SUPSPENDED. This key is called SUSPEND SIGNAL.

#To kill a process use "Kill -9 <PID>" => here "-9" is also a signal called SIGKILL SIGNAL.

#There will be some scenario where script may gets interupt in middle and not able to finish the execution.
#TRAP command provides the script to capture and interupt and then clean it up within the script. So, TRAP will be able to capture CTRL+C, CTRL+Z command during script execution.
#TRAP command will be able to capture those SIGNALs and then we can do some action.
#To get the all SIGNAL information use -> Command: man 7 signal

#If SIGNAL value is 0 then it is success.

#Here we are using trap command with echo to print the message and SIGNAL is 0, to detect successful SIGNAL
#Here whenever it receive the SINGAL 0 then it will execute the command "echo Exit command has detected!"
# trap "echo Exit command has detected!" 0

# echo "Hello World"

# #We are using SIGNAL 0 for successful.
# exit 0


#Example 

#Here we are using SIGINT which will detect the interupt (CTRL + C) then execute "echo Exit signal is detected"
# trap "echo Exit signal is detected" SIGINT

# echo "pid is $$"
# while (( COUNT < 10 ))
# do
#     sleep 10
#     (( COUNT++ ))
#     echo $COUNT
# done
# exit 0

#In the below example we want to capture three SIGNAL 0, 9, 15 and delete a file and exit when anyone of them will get trap
file=./file1.txt
trap "rm -f $file && echo File $file deleted; exit" 0 2 15

echo "pid is $$"

while (( COUNT < 10 ))
do
    sleep 10
    (( COUNT++ ))
    echo $COUNT
done

#To remove the trap, there is a command: trap - SIGNAL NAME => Example trap - 0 2 15
