#!/bin/sh

###############################################################################
# Shell
# https://gist.github.com/saetia/1623487
###############################################################################

# Switch to z-shell
curl -L https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh | sh

# Homebrew
# install package manager
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew analytics off

# BREWFILE

brew update
brew doctor
brew upgrade
brew doctor
brew cleanup

# install homebrew packages
brew install \
tree \
node \
ssh-copy-id \
wget \
jpegoptim \
pngcrush \
colordiff \
ghostscript \
imagemagick --with-ghostscript \
graphicsmagick \
ack

#Homebrew Web Server Packages
brew install \
dnsmasq \
nginx \
mariadb \
redis \
memcached \
libmemcached \

# Homebrew Cask Apps & Fonts
# add support for fonts
brew tap caskroom/fonts

#add dev/beta versions
brew tap caskroom/versions

#install mac apps & fonts
brew cask install \
font-source-code-pro \
adobe-creative-cloud \
blueharvest \
cleanmymac \
cocktail \
ghostlab \
coda \
sublime-text-dev \
virtualbox \
coderunner \
google-chrome \
firefox \
codekit \
iterm2-beta \
sequel-pro \
querious \
imageoptim \
imagealpha \
xquartz \
simpholders-2-alpha \
handbrake \
vagrant \
ksdiff \
spotify

# Update .zshrc
wget https://gist.githubusercontent.com/saetia/2764210/raw/ab099b587689640eb32cbc1afdb6a19b62be7fb0/.zshrc -O \
~/.zshrc

#syntax highlighting
git clone git://github.com/zsh-users/zsh-syntax-highlighting.git \
~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting






