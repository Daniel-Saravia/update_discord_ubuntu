#!/bin/bash

# Update Discord on Ubuntu

# Step 1: Remove current version of Discord
echo "Removing current version of Discord..."
sudo apt remove -y discord

# Step 2: Download the latest version of Discord
echo "Downloading the latest Discord package..."
wget -O ~/Downloads/discord.deb "https://discord.com/api/download?platform=linux&format=deb"

# Step 3: Install the latest version
echo "Installing Discord..."
sudo dpkg -i ~/Downloads/discord.deb

# Step 4: Fix any missing dependencies if needed
echo "Fixing any missing dependencies..."
sudo apt --fix-broken install -y

# Step 5: Clean up
echo "Cleaning up..."
rm ~/Downloads/discord.deb

# Step 6: Done
echo "Discord has been updated successfully!"
