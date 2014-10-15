#!/bin/bash

# Workstation Builder v0.1
# Tim Hordern (@mence)
# This is a basic shell script to build an OSX development environment from scratch.
# Linting is done with shellcheck: https://github.com/koalaman/shellcheck

install # Let's do some installing!

function install(){
  update_osx_system           # Check for System Updates
  install_homebrew            # Install Homebrew
  install_homebrew_apps       # Install Homebrew Apps
  install_homebrew_cask       # Install Homebrew Cask
  install_browsers            # Install Browsers
  install_development_tools   # Install Development Tools
  install_collaboration_tools # Install Collaboration Apps
  install_productivity_tools  # Install Productivity Apps
  install_utilities           # Install Utilities
  install_quicklook_upgrades  # Install QuickLook Upgrades
  install_multimedia_apps     # Install Multimedia Apps
  install_other_apps          # Install Random Apps
  #install_fonts              # Install Programming Fonts
  #install_color_schemes      # Install Color Schemes
  install_terminal_utilities  # Install Terminal Utilities
  install_dotfiles            # Install and Configure Personal Dotfiles
  install_python_apps         # Install Applications via Python
}

function update_osx_system(){
  echo -e "\033[33m--- Running System Updates ---\033[0m"
  sudo softwareupdate --install -all
}

function install_homebrew(){
  echo -e "\033[33m--- Installing Homebrew ---\033[0m"
  ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/homebrew/go/install)"
  brew doctor
}

function install_homebrew_apps(){
  # TODO: Separate into different app categories and move into other functions
  echo -e "\033[33m--- Installing Homebrew Applications ---\033[0m"
  brew install git curl iftop htop-osx tree the_silver_searcher unrar whatmask node
  brew install mtr --no-gtk
}

function install_homebrew_cask(){
  echo -e "\033[33m--- Setting up Homebrew Cask ---\033[0m"
  brew tap caskroom/cask
  brew install brew-cask
  brew doctor
}

function install_browsers(){
  browser_casks=(
    google-chrome
    firefox
    chromium
    )

  echo -e "\033[33m--- Installing Browsers ---\033[0m"
  cask_install $browser_casks
  # TODO: Determine how to install Chrome extensions from command line
}

function install_development_tools(){
  development_casks=(
    sublime-text
    virtualbox
    sequel-pro
    charles
    dbeaver
    gitx-rowanj
    github
    cyberduck
    intellij-idea
    rubymine
    processing
    arduino
    iterm2
    atom
    dash
    heroku-toolbelt
    sauce
    )
  # TODO: Allow for optional choices (eg. IntelliJ which eats the world)

  echo -e "\033[33m--- Installing Development Tools ---\033[0m"
  cask_install $development_casks
}

function install_collaboration_tools(){
  collaboration_casks=(
    slack
    propane
    adium
    )

  echo -e "\033[33m--- Installing Collaboration Tools ---\033[0m"
  cask_install $collaboration_casks
}

function install_productivity_tools(){
  productivity_casks=(
    evernote
    skitch
    dropbox
    calibre
    sequential
    fantastical
    hazel
    )
  # TODO: Determine how to deal with App Store apps?

  echo -e "\033[33m--- Installing Productivity Apps ---\033[0m"
  cask_install $productivity_casks
}

function install_utilities(){
  utility_casks=(
    flux
    bettertouchtool
    alfred
    cheatsheet
    carbon-copy-cloner
    appcleaner
    onepassword
    smcfancontrol
    bartender
    caffeine
    coconutbattery
    crashplan
    smoothmouse
    )
    # Growl
    # HardwareGrowler

  echo -e "\033[33m--- Installing Utilities ---\033[0m"
  cask_install $utility_casks
}

function install_quicklook_upgrades(){
  quicklook_upgrade_casks=(
    qlcolorcode 
    qlstephen
    qlmarkdown
    quicklook-json
    qlprettypatch
    quicklook-csv
    betterzipql
    webp-quicklook
    suspicious-package
    cert-quicklook
    )

  echo -e "\033[33m--- Installing QuickLook Upgrades ---\033[0m"
  cask_install $quicklook_upgrade_casks
  defaults write com.apple.finder QLEnableTextSelection -bool true && killall Finder # Allow copying text from QL
}

function install_multimedia_apps(){
  multimedia_casks=(
    vlc
    spotifree
    rdio
    lastfm
    chromecast
    )

  echo -e "\033[33m--- Installing Multimedia Apps ---\033[0m"
  cask_install $multimedia_casks
}

function install_other_apps(){
  random_casks=(
    dogecoin
    reeddit
    )

  echo -e "\033[33m--- Installing Random Apps ---\033[0m"
  cask_install $random_casks
}

function install_dotfiles(){
  echo -e "\033[33m--- Installing Personal Dotfiles ---\033[0m"
  git clone git@github.com:mence/dotfiles.git ~/.dotfiles
  cp /.dotfiles/.bash_profile.template ~/.bash_profile
  ln -s /.dotfiles/.gitaliasconfig ~/.gitaliasconfig
  ln -s /.dotfiles/.gitconfig ~/.gitconfig
  ln -s /.dotfiles/.githubconfig ~/.githubconfig
  ln -s /.dotfiles/.iftoprc ~/.iftoprc
}

function install_terminal_utilities(){
  echo -e "\033[33m--- Installing Terminal Utilities ---\033[0m"
  install_rainbow
}

function install_rainbow(){
# Install Rainbow
# https://github.com/nicoulaj/rainbow
# v2.5: https://github.com/nicoulaj/rainbow/archive/2.5.0.zip
  mkdir tmp
  curl https://github.com/nicoulaj/rainbow/archive/2.5.0.zip tmp/rainbow.zip
  unzip tmp/rainbow.zip
  cd tmp/rainbow
  echo "You will be prompted for your Administrator password."
  "sudo python setup.py install"
  cd ../..
  rm -rf tmp
}

function install_fonts(){
  echo -e "\033[33m--- Installing Programming Fonts ---\033[0m"
  brew tap caskroom/Fonts
  brew cask install font-inconsolata  # Inconsolata
  brew cask install font-fontawesome  # Font Awesome
  brew cask install font-roboto       # Roboto
  brew cask install font-roboto-slab  # Roboto Slab
}

function install_color_schemes(){
  echo -e "\033[33m--- Installing Color Schemes ---\033[0m"
  # Install Solarized Color Scheme
  # https://github.com/altercation/solarized
}

function install_python_apps(){
  echo -e "\033[33m--- Installing Python Applications ---\033[0m"
  pip install lolcat # Because lolcat
}

function cask_install(){
  for casks in $casks; do
    echo "Installing Cask: $cask"
    "brew cask install $cask"
  done
}


