#!/bin/bash

echo "STARTING WORKSTATION BUILDER"

# Setup OSX
# Install XCode for Homebrew
# Install Homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Install Brewfile
brew tap Homebrew/bundle

# Run Brewfile
brew bundle

# Run post-cask-install
./post-cask-install.sh

# Ruby install
./ruby.sh

# Node install
./node.sh

# Go install
./go.sh

# Python install
./python.sh

# Optional: Spotify install
./spotify.sh


