#!/bin/bash

# Change to your i3 configuration directory
cd ~/.config/i3

# Checking for newer files online first
git pull

# Add all changes in the directory
git add --all .

# Prompt for a commit message
echo "####################################"
echo "Write your commit comment:"
echo "####################################"
read input

# Commit changes with the provided message
git commit -m "$input"

# Push to the appropriate branch (main or master)
if grep -q main .git/config; then
    echo "Using main"
    git push -u origin main
fi

if grep -q master .git/config; then
    echo "Using master"
    git push -u origin master
fi

echo "################################################################"
echo "###################    Git Push Done      ######################"
echo "################################################################"
