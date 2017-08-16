#!/bin/bash

echo "Starting cleanup..."

# Homebrew upgrades and cleanup
echo "Update and upgrade Homebrew"
brew update
brew upgrade

echo "Cleanup Homebrew"
brew cleanup
brew cask cleanup

echo "Run Homebrew doctor to see if there's any leftover problems"
brew doctor
