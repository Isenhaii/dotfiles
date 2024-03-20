#!/bin/bash

# Chase did this one. And I copied the examples in class

if [ "$(id -u)" -eq 0 ]; then
    echo "Script is running as root"

    echo $(which apt)
    if [[ -n "$(which apt)" ]]; then
        echo "apt is installed exactly as specified."


# Define Anaconda version and installation directory
ANACONDA_VERSION="2024.02.-1" # Specify the version you want to install
INSTALL_DIR="$HOME/anaconda3"  # Specify the installation directory

# Download Anaconda installer script
curl -O https://repo.anaconda.com/archive/Anaconda3-<2024.02.-1>-Linux-x86_64.sh

# Run Anaconda installer script
bash anaconda_installer.sh -b -p $INSTALL_DIR

# Remove Anaconda installer script
rm anaconda_installer.sh

    else
        echo "apt is not installed at the specified location."
    fi

else
    echo "Script is not running as root"
fi

