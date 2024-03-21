#!/bin/bash

#Check if the user is running the script as root
if [ "$(id -u)" -eq 0 ]; then
    echo "Running as root!"
else
    echo "Not running as root!"
fi
