#!/bin/bash

# Homebrew upgrades and cleanup
brew update
brew upgrade
brew cleanup
brew cask cleanup
brew doctor
