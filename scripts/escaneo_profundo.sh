#!/bin/bash

if [ -n "$1" ]; then
	if [ -n "$2" ]; then
		case "$1" in
	  		1)
			echo "espane nivel 1"
			nmap $2
			;;
			
			2)
			echo "espane nivel 1"
			nmap  -v -A $2
			;;
			*)
			echo "Usage: script <IP> {1|2}"
    			exit 1
    			;;
			esac
	else
		echo "Usage: script <IP> {1|2}"
	fi
else
	echo "Usage: script <IP> {1|2}"
fi


