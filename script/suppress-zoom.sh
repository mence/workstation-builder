#!/bin/bash

echo "Checking for Zoom Backdoor and removing if it exists..."
[ -z "$(lsof -ti :19421)" ] && echo "Zoom Backdoor Web Server is not Running" || sudo kill -9 $(lsof -ti :19421)
echo "Removing Zoom Backdoor Server..."
[ -f "~/.zoomus" ] && rf -rf ~/.zoomus
touch .zoomus
echo "Setting default for Zoom to turn off video when joining a meeting"
sudo defaults write /Library/Preferences/us.zoom.config.plist ZDisableVideo 1
