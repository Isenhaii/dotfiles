#!/bin/bash

#Check if the user is running the script as root
if [ "$(id -u)" -eq 0 ]; then
    echo "Running as root!"
else
    echo "NOT running as root!"
fi

sleep 3

#Check if the apt package manager is installed
if which apt >/dev/null 2>&1; then
    echo "apt package manager is installed"

sleep 3

	echo "Installing dnsutils..."

sleep 3

	#If apt is installed, do the following
	sudo apt update
	sudo apt install dnsutils
    echo "dnsutils has been installed"

else
    echo "apt package manager is NOT installed"
fi
