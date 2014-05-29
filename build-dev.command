#!/bin/bash

# Check for System Updates
echo -e "\033[33m--- Running System Updates ---\033[0m"
sudo softwareupdate --install -all

# Install Homebrew
echo -e "\033[33m--- Installing Homebrew ---\033[0m"
ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/homebrew/go/install)"
brew doctor

# Install Homebrew Apps
echo -e "\033[33m--- Installing Homebrew Applications ---\033[0m"
brew install git curl iftop htop-osx tree the_silver_searcher unrar whatmask
brew install mtr --no-gtk
brew install lolcat # Because lolcat

# Install Homebrew Cask
# TODO: Move to function call
echo -e "\033[33m--- Setting up Homebrew Cask ---\033[0m"
brew tap caskroom/cask
brew install brew-cask
brew doctor

# Install Browsers
# TODO: Abstract to array of casks and descriptions to output to log
echo -e "\033[33m--- Installing Browsers ---\033[0m"
brew cask install google-chrome
brew cask install firefox
brew cask install chromium

# Install Development Tools
echo -e "\033[33m--- Installing Development Tools ---\033[0m"
brew cask install sublime-text
brew cask install virtualbox
brew cask install sequel-pro
brew cask install charles
brew cask install dbeaver
brew cask install gitx-rowanj
brew cask install github
brew cask install cyberduck
brew cask install intellij-idea # Might want to make these optional?
brew cask install rubymine
brew cask install processing
brew cask install arduino
brew cask install iterm2
brew cask install atom
brew cask install dash
brew cask install heroku-toolbelt
brew cask install sauce

# Install Collaboration Apps
echo -e "\033[33m--- Installing Collaboration Apps ---\033[0m"
brew cask install slack
brew cask install propane
brew cask install adium

# Install Productivity Apps
echo -e "\033[33m--- Installing Productivity Apps ---\033[0m"
brew cask install evernote # How to deal with App Store apps?
brew cask install skitch
brew cask install dropbox
brew cask install calibre
brew cask install sequential
brew cask install fantastical
brew cask install hazel

# Install Utilities
echo -e "\033[33m--- Installing Utilities ---\033[0m"
brew cask install flux
brew cask install bettertouchtool
brew cask install alfred
brew cask install bodega
brew cask install cheatsheet
brew cask install carbon-copy-cloner
# Growl
# HardwareGrowler
brew cask install appcleaner
brew cask install onepassword
brew cask install smcfancontrol
brew cask install bartender
brew cask install caffeine
brew cask install coconutbattery
brew cask install crashplan
brew cask install smoothmouse

# Install Multimedia Apps
echo -e "\033[33m--- Installing Multimedia Apps ---\033[0m"
brew cask install vlc
brew cask install spotifree
brew cask install rdio
brew cask install lastfm
brew cask install chromecast

# Install Random Apps
echo -e "\033[33m--- Installing Random Apps ---\033[0m"
brew cask install dogecoin
brew cask install reeddit

# Install Programming Fonts
echo -e "\033[33m--- Installing Programming Fonts ---\033[0m"
# Install Inconsolata Font
# curl http://levien.com/type/myfonts/Inconsolata.otf
# cp Inconsolata.otf /Library/Fonts/

# Install Color Schemes
echo -e "\033[33m--- Installing Color Schemes ---\033[0m"
# Install Solarized Color Scheme
# https://github.com/altercation/solarized

# Install Terminal Utilities
echo -e "\033[33m--- Installing Terminal Utilities ---\033[0m"
# Install Rainbow
# https://github.com/nicoulaj/rainbow
# v2.5: https://github.com/nicoulaj/rainbow/archive/2.5.0.zip
# TODO: Abstract to temp download & install function 
mkdir tmp
curl https://github.com/nicoulaj/rainbow/archive/2.5.0.zip tmp/rainbow.zip
unzip tmp/rainbow.zip
cd tmp/rainbow
sudo python setup.py install

# Install and Configure Personal Dotfiles
echo -e "\033[33m--- Installing Personal Dotfiles ---\033[0m"
git clone git@github.com:mence/dotfiles.git ~/.dotfiles
cp /.dotfiles/.bash_profile.template ~/.bash_profile
ln -s /.dotfiles/.gitaliasconfig .gitaliasconfig
ln -s /.dotfiles/.gitconfig .gitconfig
ln -s /.dotfiles/.githubconfig .githubconfig
ln -s /.dotfiles/.iftoprc .iftoprc
