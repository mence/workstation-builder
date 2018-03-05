#!/bin/bash

echo "STARTING WORKSTATION BUILDER"

# Setup OSX
./osx.sh

# Setup Xcode
# TODO fully automated install
read -pr "Press [Enter] key after installing Xcode manually..."
./xcode.sh

# Install Homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Set up Homebrew options
export HOMEBREW_CASK_OPTS="--verbose"

# Run Brewfile
brew bundle --verbose

# mas install for AUS
read -pr "Press [Enter] key after switching Mac App Store to AUS account..."
./mas_AUS.sh

# mas install for AUS
read -pr "Press [Enter] key after switching Mac App Store to US account..."
./mas_US.sh

# Run post-cask-install
./post-cask-install.sh

# Homebrew cleanup
# Arguably this could include other cleanup steps, which would move this to a last execution or catch
./cleanup.sh

# Ruby install
./ruby.sh

# Node install
./node.sh

# Go install
./go.sh

# Python install
./python.sh

# Shell utilities
./shell.sh

# Docker utilities
./docker.sh

# Atom install
./atom.sh

# Google Cloud install
./gcloud.sh
