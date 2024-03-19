#!/bin/bash

# Chase did this one. And I copied the examples in class

if [ "$(id -u)" -eq 0 ]; then
    echo "Script is running as root"

    echo $(which apt)
    if [[ -n "$(which apt)" ]]; then
        echo "apt is installed exactly as specified."
    else
        echo "apt is not installed at the specified location."
    fi

else
    echo "Script is not running as root"
fi

