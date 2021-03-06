#!/bin/bash

bash ../Week2/PasswordCheck.sh
#https://stackoverflow.com/questions/13567947/run-bash-commands-from-txt-file
#Loads week 2's Bash script

while true; do
#Use of a While Loop, if true then do action.

if [[ $? -eq 0 ]] ; then
    echo -e "\e[31m 
    1. Create a folder
    2. Copy a folder
    3. Set a password
    4. Calculator
    5. Create Week Folders
    6. Check Filenames
    7. Download a File
    8. Exit\e[0m"

#Create menu and add colour

    echo 
    read -p "Please press corresponding number and press enter >" BeforeMessage

case "$BeforeMessage" in
"1")
echo
    bash ../Week2/FolderCreator.sh
    ;;
"2")
echo
    bash ../Week2/FolderCopier.sh
    ;;
"3")
echo
    bash ../Week2/SetPassword.sh
    ;;
"4")
echo
    bash ../Week3/Placeholder_File.sh
    ;;
"5")
echo
    bash ../Week3/Placeholder_File.sh
    ;;
"6")
echo
    bash ../Week3/Placeholder_File.sh
;;
"7")
    bash ../Week3/Placeholder_File.sh
;;
"8")
#Echo message along with colour formatting.
#Specifies corresponding files and gives message if user chooses to exit. Use of Case In statements.
    echo -e "\e[45mSorry to see you go? Whatever, I don't need you anyway...\e[0m"
    exit
    ;;
*)
    echo "Please type a number from 1-8 and press enter." #Echo directions for user
    ;;
esac #Finish Case Statement


else
    echo "You make me sick! Goodbye!" #Angry message is echoed upon exiting.
    exit 1

fi


done

exit 0