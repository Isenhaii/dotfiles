#!/bin/bash

# Chase did this one. And I copied the examples in class

if [ "$(id -u)" -eq 0 ]; then
    echo "Script is running as root"

    echo $(which apt)
    if [[ -n "$(which apt)" ]]; then
        echo "apt is installed exactly as specified."
	apt install -y \
		nmap \
		bind-tools \
		libgl1-mesa-glx \
	        libegl1-mesa \
		libxrandr2 \
		libxrandr2 \
 		libxss1 \
 		libxcursor1 \
		libxcomposite1 \
 		libasound2 libxi6 \
 		libxtst6libgl1-mesa-glx \
 		libegl1-mesa \
 		libxrandr2 \
 		libxrandr2 \
 		libxss1 \
 		libxcursor1 \
 		libxcomposite1 \
 		libasound2 \
 		libxi6 \
 		libxtst6
    else
        echo "apt is not installed at the specified location."
    fi

else
    echo "Script is not running as root"
fi

