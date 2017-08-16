#!/bin/bash

###############################################################################
# Install XCode from Mac App Store
# https://github.com/argon/mas/releases
###############################################################################

echo "" && echo "Setting up XCode..." && echo ""
# 
# echo "Download and expand mas-cli"
# curl -fsSL https://github.com/argon/mas/releases/download/v1.2.0/mas-cli.zip
# unzip mas-cli.zip
# 
# echo "Sign-in to the Mac App Store"
# pretty_print "What is your Mac App Store login?"
# read mac_app_store_login
# pretty_print "What is your Mac App Store password?"
# read -s mac_app_store_password
# ./mas signin $mac_app_store_login $mac_app_store_password
# 
# echo "Install XCode"
# ./mas install 497799835 # XCode
# 
echo "Accept the XCode license"
sudo xcodebuild -license
echo "Install XCode command line tools"
xcode-select --install
# 
# echo "Cleaning up mas-cli"
# rm mas-cli.zip
# rm mas
# echo "You should now install mas-cli via Homebrew."
# 
# echo "XCode should now be installed."
