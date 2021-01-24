#! /bin/bash

# e = end
# s = start

clear
sleep 1
echo 'starting.'
sleep 1
clear
echo 'starting..'
sleep 1
clear
echo 'starting...'
sleep 1

clear
echo $PS1
echo $'\e[0;32m'write exit to exit'\e[0m'
        echo "write clear to clear the text"
        echo ""

echo 'starting...'

a=1
while [ a=1 ]
do
    read -p  "enter a command: dir = home $ " command
    if [ "$command" == "cd documents" ]
    then
	    read -p "enter a command: dir = documents $ " command
	    cd documents
    #exit s
    elif [ "$command" == "exit" ]
    then
	    exit
    elif [ "$command" == "leave" ] 
    then
	    exit
    elif [ "$command" == "close" ]
    then
        exit
    #exit e
    elif [ "$command" == "np"  ]
    then
        cd notepad && python3 notepad.py

	#cmatrix s
    elif [ "$command" == "matrix" ]
    then
        cmatrix
    elif [ "$command" == "install the matrix" ]
    then
        sudo apt-get install cmatrix
    #cmatrix e
    #visual studio code s
    elif [ "$command" == "vscode" ]
    then
        code
    elif [ "$command" == "install vscode" ]
    then
        sudo apt-get install code
    elif [ "$command" == "clear" ]
	then
		clear
    elif [ "$command" == "update" ]
	then
		sudo dpkg --configure -a && sudo apt-get install -f && sudo apt-get update && sudo apt-get upgrade && sudo apt-get dist-upgrade && sudo apt-get autoclean && sudo apt-get --purge autoremove && git clone  && clear
    elif [ "$command" == "ls" ] 
    then
	ls
    elif [ "$command" == "ls -l" ]
    then
       	ls -l
    elif [ "$command" == "storage" ]
    then
        df -h
    elif [ "$command" == "shell.sh" ]
    then
        bash shell.sh
    #nano s
    elif [ "$command" == "install nano" ]
    then
	sudo apt-get install nano
	clear
	echo type nano to enter nano mode
    elif [ "$command" == "nano" ]
    then
	read -p "enter a file you want to edit: " command
	nano $command
   elif [ "$command" == "trm" ]
   then
	read -p "enter a command: " command
        $command
    elif [ "$command" == "cd ~" ]
    then
     	read -p  "enter a command: dir = home $ " command
	cd ~
    else 
       	echo "invalid command"
    fi
done
