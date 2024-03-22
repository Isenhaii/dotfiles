#!/bin/bash

#Check if the user is running the script as root
if [ "$(id -u)" -eq 0 ]; then
    echo "Running as root!"
else
    echo "NOT running as root!"
fi

sleep 2
#Check if the apt package manager is installed
if which apt >/dev/null 2>&1; then
    echo "apt package manager is installed, proceeding..."



sleep 2
	echo "Installing dnsutils..."
sleep 2
	if which dig >/dev/null 2>&1; then
    echo "dnsutils is already installed!"
	else
sleep 2
	#If apt is installed and nmap is NOT installed, do the following
	sudo apt update
	sudo apt install dnsutils
    echo "dnsutils has been installed"
	fi

sleep 2
	echo "Installing nmap..."
sleep 2
	if which nmap >/dev/null 2>&1; then
    echo "nmap is already installed!"
	else
sleep 2
	#If apt is installed and nmap is NOT installed, do the following
	sudo apt install nmap
    echo "nmap has been installed"
	fi

sleep 2
	echo "Installing cmatrix..."
sleep 2
	if which cmatrix >/dev/null 2>&1; then
    echo "cmatrix is already installed!"
	else
sleep 2
	#If apt is installed and cmatrix is NOT installed, do the following
	sudo apt install cmatrix
    echo "cmatrix has been installed"
	fi

sleep 3
	echo "Installing Anaconda. This may take some time..."
sleep 2
	if [ -d "$HOME/anaconda3" ] || command -v anaconda >/dev/null 2>&1 || command -v conda >/dev/null 2>&1; then
    echo "Anaconda is already installed!"
	else
sleep 2
	#If apt is installed and Anaconda is NOT installed, do the following (call to a separate script to install Anaconda)
	source /isenhaii/dotfiles/anacondainstall.sh
	fi

else
    echo "Error: apt package manager is NOT installed"
fi

sleep 3
echo "Configuring git..."
sleep 2
source /isenhaii/dotfiles/gitconfigure.sh
