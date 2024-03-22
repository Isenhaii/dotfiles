## Package installs

The objective for this section was to install the following:

- `dnsutils` (to get `dig`) 
- `nmap`
- `anaconda` 
- `cmatrix`

Below are the basic rules for this section:

1. Check if running as `root`
2. Check for `apt` package manager
3. Install things above
4. Determine how to run remainder of taskings as non-root so that the right ownership is applied

To check if the script is running as root, I came up with the following code:
```
if [ "$(id -u)" -eq 0 ]; then
    echo "Running as root!"
else
    echo "NOT running as root!"
fi
```
This code snippet uses the id -u command to get the user ID, and if the ID is equal to 0 (which is the ID of the root user), it prints "Running as root!". Otherwise, it prints "NOT running as root!". 


This next code snippet does many things at once. It will check if the apt package manager is installed, it will install dnsutils, nmap, anaconda, and cmatrix, but if the programs are already installed, it will tell you:
```
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
```
External script file for the Anaconda install:
```
#!/bin/bash

# Anaconda installer URL
anaconda_installer_url="https://repo.anaconda.com/archive/Anaconda3-2024.02-1-Linux-x86_64.sh"

# Download Anaconda installer
curl -O $anaconda_installer_url

# Run Anaconda installer
bash Anaconda3-2024.02-1-Linux-x86_64.sh -b -p $HOME/anaconda3

# Add Anaconda to PATH
echo 'export PATH="$HOME/anaconda3/bin:$PATH"' >> $HOME/.bashrc

# Activate the changes in current shell
source $HOME/.bashrc

# Remove the Anaconda installer script
rm Anaconda3-2024.02-1-Linux-x86_64.sh

echo "Anaconda has been installed!"
```
Most of this code, is checking if the program is already installed in the system. But if it is not installed, the script will install it to the system. 

This section is complete.
