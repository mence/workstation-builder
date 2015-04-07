#!/bin/bash

# Workstation Builder v0.5
# Tim Hordern (@mence)
# This is a basic shell script to build an OSX development environment from scratch.
# Linting is done with shellcheck: https://github.com/koalaman/shellcheck

# Colored Prompts
# Other useful colors:
# yellow_dim='\033[33m'
# yellow_bright='\033[1;33m'
# green='\033[0;32m'

yellow='\033[33m'
cyan='\033[0;36m'
red='\033[0;31m'
NC='\033[0m' # No Color

# Easier references to warnings in colored echo -e prompts

h1="${cyan}==> "
h2="${yellow}INFO: "
warn="${red}WARNING: "

function install()
{
  update_osx_system           # Check for System Updates
  install_homebrew            # Install Homebrew
  install_homebrew_cask       # Install Homebrew Cask
  install_command-line_apps   # Install Command Line Apps
  install_browsers            # Install Browsers
  install_development_tools   # Install Development Tools
  install_collaboration_tools # Install Collaboration Apps
  install_productivity_tools  # Install Productivity Apps
  install_utilities           # Install Utilities
  install_quicklook_upgrades  # Install QuickLook Upgrades
  install_multimedia_apps     # Install Multimedia Apps
  install_other_apps          # Install Random Apps
  install_fonts               # Install Programming Fonts
  install_terminal_utilities  # Install Terminal Utilities
  install_dotfiles            # Install and Configure Personal Dotfiles
  install_python_apps         # Install Applications via Python
}

function update_osx_system()
{
  echo -e "${h1}Running System Updates${NC}"
  sudo softwareupdate --install -all
}

function install_homebrew()
{
  echo -e "${h1}Installing Homebrew${NC}"
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
  brew doctor
}

function install_command-line_apps()
{
  homebrew_apps=
  (
    git
    curl
    htop-osx
    iftop
    tree
    the_silver_searcher
    unrar
    whatmask
  )
  echo -e "${h1}Installing Command-Line Applications${NC}"
  homebrew_install ${homebrew_apps[@]}

  # mtr
  brew install mtr --no-gtk  # mtr needs command-line flags
}

function install_homebrew_cask()
{
  echo -e "${h1}Setting up Homebrew Cask${NC}"
  brew tap caskroom/cask
  brew install brew-cask
  brew doctor
}

function install_browsers()
{
  browser_casks=
  (
    google-chrome
    firefox
    chromium
  )
  echo -e "${h1}Installing Browsers${NC}"
  cask_install ${browser_casks[@]}
}

function install_development_tools()
{
  development_casks=
  (
    arduino
    atom
    ccmenu
    charles
    cyberduck
    dash
    dbeaver-community
    github
    caskroom/homebrew-versions/google-chrome-canary
    heroku-toolbelt
    iterm2
    macvim
    processing
    rowanj-gitx
    sauce
    sequel-pro
    sublime-text
    caskroom/homebrew-versions/sublime-text3
    virtualbox
    xscope
    xquartz
  )
  echo -e "${h1}Installing Development Tools${NC}"
  cask_install $development_casks

  # RubyMine and IntelliJ depend on Java 6
  cask_install caskroom/homebrew-versions/java6

  idea_casks=
  (
    rubymine
    intellij-idea
  )
  cask_install ${idea_casks[@]}

  development_kegs=
  (
    casperjs
    ctags-exuberant
    docker
    emacs
    entr
    icdiff
    mysql
    node
    phantomjs
    postgres
    pstree
    shellcheck
    tmux
    vim
    watch
  )
  homebrew_install ${development_kegs[@]}

  node_packages=
  (
    coffee-script
    yo
  )
  node_install ${node_packages[@]}
}

function install_collaboration_tools()
{
  collaboration_casks=
  (
    adium
    hipchat
    propane
    slack
  )
  echo -e "${h1}Installing Collaboration Tools${NC}"
  cask_install ${collaboration_casks[@]}
}

function install_productivity_tools()
{
  productivity_casks=
  (
    calibre
    dropbox
    evernote
    fantastical
    hazel
    keyboard-maestro
    mailbox
    marked
    sequential
    skitch
  )
  echo -e "${h1}Installing Productivity Apps${NC}"
  cask_install ${productivity_casks[@]}
}

function install_utilities()
{
  utility_casks=
  (
    1password
    alfred
    appcleaner
    bartender
    bettertouchtool
    caffeine
    carbon-copy-cloner
    cheatsheet
    coconutbattery
    crashplan
    flux
    phoneclean
    smcfancontrol
    smoothmouse
  )
  echo -e "${h1}Installing Utilities${NC}"
  cask_install ${utility_casks[@]}
}

function install_quicklook_upgrades()
{
  quicklook_upgrade_casks=
  (
    betterzipql
    cert-quicklook
    epubquicklook
    qlcolorcode
    qlmarkdown
    qlprettypatch
    qlstephen
    quicklook-csv
    quicklook-json
    suspicious-package
    webpquicklook
  )
  echo -e "${h1}Installing QuickLook Upgrades${NC}"
  cask_install ${quicklook_upgrade_casks[@]}
  defaults write com.apple.finder QLEnableTextSelection -bool true && killall Finder # Allow copying text from QL
}

function install_multimedia_apps()
{
  multimedia_casks=
  (
    chromecast
    lastfm
    rdio
    spotifree
    spotify
    vlc
  )
  echo -e "${h1}Installing Multimedia Apps${NC}"
  cask_install ${multimedia_casks[@]}
}

function install_other_apps()
{
  random_casks=
  (
    dogecoin
    reeddit
  )
  echo -e "${h1}Installing Random Apps${NC}"
  cask_install ${random_casks[@]}

  random_kegs=
  (
    cowsay
  )
  homebrew_install ${development_kegs[@]}

  # Fortune
  brew install fortune --without-offensive
}

function install_dotfiles()
{
  echo -e "${h1}Installing Personal Dotfiles${NC}"
  git clone https://github.com/mence/dotfiles.git ~/.dotfiles
  cp ~/.dotfiles/.bash_profile.template ~/.bash_profile
  ln -s ~/.dotfiles/.gitaliasconfig ~/.gitaliasconfig
  ln -s ~/.dotfiles/.gitconfig ~/.gitconfig
  ln -s ~/.dotfiles/.githubconfig ~/.githubconfig
  ln -s ~/.dotfiles/.iftoprc ~/.iftoprc
}

function install_terminal_utilities()
{
  echo -e "${h1}Installing Terminal Utilities${NC}"
  install_rainbow
  brew tap tldr-pages/tldr    # install tl;dr manpages
  homebrew_install tldr
}

# https://github.com/nicoulaj/rainbow
function install_rainbow()
{
  mkdir tmp
  curl -L https://github.com/nicoulaj/rainbow/archive/2.5.0.zip -o tmp/rainbow.zip
  cd tmp
  unzip rainbow.zip
  cd rainbow-2.5.0
  echo -e "${warn}You will be prompted for your Administrator password.${NC}"
  sudo python setup.py install
  cd ../../..
  rm -rf tmp
}

function install_fonts()
{
  font_casks=
  (
    font-inconsolata  # Inconsolata
    font-fontawesome  # Font Awesome
    font-roboto       # Roboto
    font-roboto-slab  # Roboto Slab
  )
  echo -e "${h1}Installing Programming Fonts${NC}"
  brew tap caskroom/Fonts   # Add the font cask to Homebrew
  cask_install ${font_casks[@]}
}

function install_python_apps()
{
  echo -e "${h1}Installing Python Applications${NC}"
  homebrew_install python
  python_install lolcat # Because lolcat
}

function homebrew_install()
{
  array=($@)
  echo -e "${h2}Installing Homebrew applications: $@${NC}"
  brew install ${array[@]}
}

function cask_install()
{
  array=($@)
  echo -e "${h2}Installing Homebrew Caskroom applications: $@${NC}"
  brew cask install ${array[@]}
}

function node_install()
{
  array=($@)
  echo -e "${h2}Installing Node applications (globally): $@${NC}"
  npm install -g ${array[@]}
}

function python_install()
{
  array=($@)
  echo -e "${h2}Installing Node applications (globally): $@${NC}"
  pip install ${array[@]}
}

install # Let's do some installing!
