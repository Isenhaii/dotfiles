#!/bin/bash

# Set name & email
git config --global user.name "Allan Wheelock"
git config --global user.email "wheelock.4@wright.edu"

# Set core editor to nano
git config --global core.editor "nano"  #nano is better than vim!

# Configure git autocorrect
git config --global help.autocorrect 1

# Copy .gitconfig to the current git repository
cp ~/.gitconfig ./.gitconfig

# Create a symbolic link to ~/.gitconfig
ln -sf "$(pwd)/.gitconfig" ~/.gitconfig

echo "git has been configured!"
