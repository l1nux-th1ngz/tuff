#!/bin/bash

greeting="Welcome Back to the YAY & PARU Software Installer!"
user=$(whoami)
input=/home/$user
day=$(date +%A)
output=/tmp/${user}_home_$(date +%m-%d-%Y_%H%M%S).txt

# Get AUR repository URLs from the user
aur_repo_urls=$(zenity --entry --text "Enter AUR Repository URLs (separated by spaces):" --title "AUR Downloader")

# Verify the input is not empty
if [ -z "$aur_repo_urls" ]; then
    zenity --error --text "Repository URLs cannot be empty. Exiting."
    exit 1
fi

# Process each URL
for aur_repo_url in $aur_repo_urls; do
    # Extract the name of the repository from the URL
    repo_name=$(basename "$aur_repo
