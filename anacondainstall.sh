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
