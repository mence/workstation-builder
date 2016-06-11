#!/bin/sh

# Post Cask Install

# echo "Remove Dropbox’s green checkmark icons in Finder"
# file=/Applications/Dropbox.app/Contents/Resources/emblem-dropbox-uptodate.icns
# [ -e "${file}" ] && mv -f "${file}" "${file}.bak"

# Heroku
heroku plugins:install https://github.com/heroku/heroku-accounts.git
heroku plugins:install heroku-papertrail
heroku plugins:install heroku-cli-addons

# iTerm2 shell integration
curl -L https://iterm2.com/misc/install_shell_integration_and_utilities.sh | bash

# oh-my-zsh

# oh-my-fish
