#!/bin/bash

PS3="Select an option: "

select opt in listFiles freeSpace showPath commandHistory backupFiles Exit
do
    case $opt in
        #list files
        "listFiles")
            echo "Showing all files in this directory:"
            ls;;
        #show free space on disk
        "freeSpace")
            echo "Free space on disk: "
            df;;
        #show path of directory
        "showPath")
            echo "Directory you're currently in is:"
            pwd;;
        #show command history
        "commandHistory")
            echo "Commands used: "
            history;;
        #make backup folder
        "backupFiles")
            #ask user to enter name of folder they'd like to back up
            echo "Please enter name of folder you would like to back up"
            read userFolder
            #make a new folder and then copy contents into it
            mkdir backup
            cp -R $userFolder backup
            #show contents in backup folder
            ls backup;;
        #case to exit
        "Exit")
            echo "Exiting program...Bye!"
            break;;
        #default case
        *)
            echo "Please select a valid option only";;
    esac
done
