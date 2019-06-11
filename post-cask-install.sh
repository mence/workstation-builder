#!/bin/sh

# Post Cask Install
echo "Running post-Homebrew installation steps..."

# Terraform
tfenv install latest

# echo "Remove Dropbox’s green checkmark icons in Finder"
# file=/Applications/Dropbox.app/Contents/Resources/emblem-dropbox-uptodate.icns
# [ -e "${file}" ] && mv -f "${file}" "${file}.bak"

# Heroku
echo "Install Heroku Plugins"
heroku plugins:install heroku-papertrail
heroku plugins:install heroku-cli-addons
heroku plugins:install heroku-accounts
heroku plugins:install heroku-releases-retry
heroku plugins:install heroku-ci
heroku plugins:install heroku-kafka
heroku plugins:install heroku-api-plugin
heroku plugins:install heroku-connect-plugin
heroku plugins:install heroku-redis
heroku plugins:install heroku-slugs
heroku plugins:install heroku-cli-exec
heroku plugins:install heroku-cli-oauth
heroku plugins:install heroku-pg-extras
heroku plugins:install heroku-repo
echo "Set up Heroku autocomplete"
heroku autocomplete

# iTerm2 shell integration
echo "Setting up iTerm 2 shell integration"
curl -L https://iterm2.com/misc/install_shell_integration_and_utilities.sh | bash

# zsh Package Managers

# oh-my-zsh - https://github.com/robbyrussell/oh-my-zsh
# echo "Setting up oh-my-zsh"
# sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
# antigen
# echo "Setting up antigen"
# curl -L https://raw.githubusercontent.com/zsh-users/antigen/master/antigen.zsh > antigen.zsh
# source antigen.zsh

# Fish Package Managers

# oh-my-fish - https://github.com/oh-my-fish/oh-my-fish
# echo "Setting up oh-my-fish"
# curl -L https://get.oh-my.fish | fish
# fundle - https://github.com/tuvistavie/fundle
# echo "Setting up fundle"
# curl -sfL https://git.io/fundle-install | fish

# nvALT
echo "Setting up nvALT"
## nvalt-prime: nvALT Preview Theme - https://github.com/bwiggs/nvalt-prime
rm -rf ~/Library/Application\ Support/nvALT
git clone git@github.com:bwiggs/nvalt-prime.git ~/Library/Application\ Support/nvALT

# vim
echo "Setting up vim addons"
## vim-plug
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# Terraform
# https://www.terraform.io/docs/commands/index.html
echo "Set up Terraform autocomplete"
terraform -install-autocomplete

# ---

# macos dotfiles
# https://github.com/mathiasbynens/dotfiles/blob/master/.macos

###############################################################################
echo "Configuring Google Chrome & Google Chrome Canary"
###############################################################################

echo "Disable the all too sensitive backswipe on trackpads"
defaults write com.google.Chrome AppleEnableSwipeNavigateWithScrolls -bool false
defaults write com.google.Chrome.canary AppleEnableSwipeNavigateWithScrolls -bool false

echo "Disable the all too sensitive backswipe on Magic Mouse"
defaults write com.google.Chrome AppleEnableMouseSwipeNavigateWithScrolls -bool false
defaults write com.google.Chrome.canary AppleEnableMouseSwipeNavigateWithScrolls -bool false

echo "Use the system-native print preview dialog"
defaults write com.google.Chrome DisablePrintPreview -bool true
defaults write com.google.Chrome.canary DisablePrintPreview -bool true

echo "Expand the print dialog by default"
defaults write com.google.Chrome PMPrintingExpandedStateForPrint2 -bool true
defaults write com.google.Chrome.canary PMPrintingExpandedStateForPrint2 -bool true

echo "Disable Chrome 69 automatic login and sync"
defaults write com.google.Chrome SyncDisabled -bool true
defaults write com.google.Chrome RestrictSigninToPattern -string ".*@example.com"

# http://www.reecefowell.com/2012/11/16/ksfetch-annoyance-on-mac-os-x-10-8-ml-with-hands-off-or-little-snitch-firewall/
echo "Change Google Updater to only check once a week for updates"
defaults write com.google.Keystone.Agent checkInterval 4233600

###############################################################################
echo "Configuring iTerm 2"
###############################################################################

echo "Don’t display the annoying prompt when quitting iTerm"
defaults write com.googlecode.iterm2 PromptOnQuit -bool false

###############################################################################
echo "Configuring Opera & Opera Developer"
###############################################################################

echo "Expand the print dialog by default"
defaults write com.operasoftware.Opera PMPrintingExpandedStateForPrint2 -boolean true
defaults write com.operasoftware.OperaDeveloper PMPrintingExpandedStateForPrint2 -boolean true

###############################################################################
echo "Configuring Twitter"
###############################################################################

echo "Disable smart quotes as it’s annoying for code tweets"
defaults write com.twitter.twitter-mac AutomaticQuoteSubstitutionEnabled -bool false

echo "Show the app window when clicking the menu bar icon"
defaults write com.twitter.twitter-mac MenuItemBehavior -int 1

echo "Enable the hidden ‘Develop’ menu"
defaults write com.twitter.twitter-mac ShowDevelopMenu -bool true

echo "Open links in the background"
defaults write com.twitter.twitter-mac openLinksInBackground -bool true

echo "Allow closing the ‘new tweet’ window by pressing Esc"
defaults write com.twitter.twitter-mac ESCClosesComposeWindow -bool true

echo "Show full names rather than Twitter handles"
defaults write com.twitter.twitter-mac ShowFullNames -bool true

echo "Hide the app in the background if it’s not the front-most window"
defaults write com.twitter.twitter-mac HideInBackground -bool true

###############################################################################
# echo "Configuring Tweetbot"
###############################################################################

# echo "Bypass the annoyingly slow t.co URL shortener"
# defaults write com.tapbots.TweetbotMac OpenURLsDirectly -bool true

###############################################################################
# Kill affected applications                                                  #
###############################################################################

for app in "Activity Monitor" \
	"Google Chrome Canary" \
	"Google Chrome" \
	"Opera" \
	"Tweetbot" \
	"Twitter"; do
	killall "${app}" &> /dev/null
done
echo "Done. Note that some of these changes require a logout/restart to take effect."
