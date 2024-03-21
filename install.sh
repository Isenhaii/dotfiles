#!/bin/bash

#Check if the user is running the script as root
if [ "$(id -u)" -eq 0 ]; then
    echo "Running as root!"
else
    echo "Not running as root!"
fi

#Check if the apt package manager is installed
if which apt >/dev/null 2>&1; then
    echo "apt package manager is installed"
else
    echo "apt package manager is NOT installed"
fi
