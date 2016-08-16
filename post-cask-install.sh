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
# https://github.com/oh-my-fish/oh-my-fish
curl -L https://github.com/oh-my-fish/oh-my-fish/raw/master/bin/install > install
fish install

# nvALT
# nvalt-prime: nvALT Preview Theme - https://github.com/bwiggs/nvalt-prime
rm -rf ~/Library/Application\ Support/nvALT
git clone git@github.com:bwiggs/nvalt-prime.git ~/Library/Application\ Support/nvALT
