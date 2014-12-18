#!/bin/bash

# Workstation Builder v0.4
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
  install_fonts               # Install Programming Fonts
  #install_color_schemes      # Install Color Schemes
  install_terminal_utilities  # Install Terminal Utilities
  install_dotfiles            # Install and Configure Personal Dotfiles
  install_python_apps         # Install Applications via Python
  install_alfred_workflows    # Install some Alfred workflows
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
  homebrew_apps=(
    git
    curl
    iftop
    htop-osx
    tree
    the_silver_searcher
    unrar
    whatmask
    node
    )

  echo -e "\033[33m--- Installing Homebrew Applications ---\033[0m"
  homebrew_install $homebrew_apps
  brew install mtr --no-gtk  # mtr needs command-line flags
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
    icdiff
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
  brew tap tldr-pages/tldr    # install tl;dr manpages
  brew install tldr
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
  font_casks=(
    font-inconsolata  # Inconsolata
    font-fontawesome  # Font Awesome
    font-roboto       # Roboto
    font-roboto-slab  # Roboto Slab
  )

  echo -e "\033[33m--- Installing Programming Fonts ---\033[0m"
  brew tap caskroom/Fonts   # Add the font cask to Homebrew
  cask_install $font_casks
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

function install_alfred_workflows(){
  echo -e "\033[33m--- Installing Alfred Workflows ---\033[0m"
  mkdir tmp

  curl https://github.com/chadhs/idonethis-for-alfred/raw/master/iDoneThis%20For%20Alfred.alfredworkflow tmp/iDoneThisForAlfred.alfredworkflow
  curl https://github.com/packal/repository/raw/master/muppet.gate.net.DateCalculator/datecalculator.alfredworkflow tmp/datecalculator.alfredworkflow
  curl https://github.com/packal/repository/raw/master/florian.down/down_for_everyone.alfredworkflow tmp/down_for_everyone.alfredworkflow
  curl https://github.com/packal/repository/raw/master/com.sztoltz.evernote/evernote.alfredworkflow tmp/evernote.alfredworkflow
  curl https://github.com/packal/repository/raw/master/com.alfredapp.moul.gauth/google_authenticator.alfredworkflow tmp/google_authenticator.alfredworkflow
  curl https://github.com/packal/repository/raw/master/com.spr.f.lux/f.lux_.alfredworkflow tmp/flux.alfredworkflow
  curl https://github.com/packal/repository/raw/master/com.jonathanrwallace.google_hangout/google_hangout.alfredworkflow tmp/google_hangout.alfredworkflow
  curl https://github.com/packal/repository/raw/master/ch.milan.hiddenfiles/hidden_files.alfredworkflow tmp/hidden_files.alfredworkflow
  curl https://github.com/packal/repository/raw/master/nc.workflow.imessage/imessage.alfredworkflow tmp/imessage.alfredworkflow
  curl https://github.com/packal/repository/raw/master/com.targumanu.imdbsearch/imdb_search.alfredworkflow tmp/imdb_search.alfredworkflow
  curl https://github.com/packal/repository/raw/master/com.tedwise.networkinfo/network_info.alfredworkflow tmp/network_info.alfredworkflow
  curl https://github.com/packal/repository/raw/master/net.deanishe.alfred-network-location/network_location.alfredworkflow tmp/network_location.alfredworkflow
  curl https://github.com/packal/repository/raw/master/com.iansoper.openiniterm/open_in_iterm2.alfredworkflow tmp/open_in_iterm2.alfredworkflow
  curl https://github.com/packal/repository/raw/master/com.packal/packal.alfredworkflow tmp/packal.alfredworkflow
  curl https://github.com/packal/repository/raw/master/ch.milan.togglewifi/toggle_wifi.alfredworkflow tmp/toggle_wifi.alfredworkflow
  curl https://github.com/packal/repository/raw/master/com.spr.translate/translate.alfredworkflow tmp/translate.alfredworkflow
  curl https://github.com/packal/repository/raw/master/florian.urban/urban_dictionary.alfredworkflow tmp/urban_dictionary.alfredworkflow
  curl https://github.com/packal/repository/raw/master/com.fniephaus.vmcontrol/vm-control-for-alfred.alfredworkflow tmp/vm-control-for-alfred.alfredworkflow
  curl https://github.com/packal/repository/raw/master/net.coderanger.lulz/lulz.alfredworkflow tmp/lulz.alfredworkflow
  curl https://github.com/packal/repository/raw/master/andrielfn.memeflow/memeflow.alfredworkflow tmp/memeflow.alfredworkflow

  # Install workflows. There's definitely better ways to do this.
  open tmp/iDoneThisForAlfred.alfredworkflow
  open tmp/datecalculator.alfredworkflow
  open tmp/down_for_everyone.alfredworkflow
  open tmp/evernote.alfredworkflow
  open tmp/google_authenticator.alfredworkflow
  open tmp/flux.alfredworkflow
  open tmp/google_hangout.alfredworkflow
  open tmp/hidden_files.alfredworkflow
  open tmp/imessage.alfredworkflow
  open tmp/imdb_search.alfredworkflow
  open tmp/network_info.alfredworkflow
  open tmp/network_location.alfredworkflow
  open tmp/open_in_iterm2.alfredworkflow
  open tmp/packal.alfredworkflow
  open tmp/toggle_wifi.alfredworkflow
  open tmp/translate.alfredworkflow
  open tmp/urban_dictionary.alfredworkflow
  open tmp/vm-control-for-alfred.alfredworkflow
  open tmp/lulz.alfredworkflow
  open tmp/memeflow.alfredworkflow

  rm -rf tmp

}

function homebrew_install(){
  for kegs in $kegs; do
    echo "Installing Homebrew: $keg"
    "brew install $keg"
}

function cask_install(){
  for casks in $casks; do
    echo "Installing Cask: $cask"
    "brew cask install $cask"
  done
}
