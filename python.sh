#!/bin/bash

# TODO: Port to Brewfile 'brew pip foo': https://github.com/hanxue/brew-pip

echo "Installing Python apps..."

### --- SETUP ---

echo "Start autoenv"
source /usr/local/opt/autoenv/activate.sh
echo "Start pyenv-virtualenv"
if which pyenv-virtualenv-init > /dev/null; then eval "$(pyenv virtualenv-init -)"; fi

# pyenv installs: https://github.com/yyuu/pyenv
echo "Install all the Python versions we need"
pyenv install 3.5.0 --verbose
pyenv install 3.4.3 --verbose
pyenv install 3.3.6 --verbose
pyenv install 3.2.6 --verbose
pyenv install 2.7.10 --verbose
pyenv install 2.6.9 --verbose

# pyenv plugins
# pyenv-virtualenv: https://github.com/yyuu/pyenv-virtualenv
# echo "Install pyenv-virtualenv"
# brew install pyenv-virtualenv # Moved to Brewfile
# echo 'eval "$(pyenv virtualenv-init -)"' >> ~/.bash_profile # TODO: Move to .dotfiles

# pyenv-virtualenvwrapper: https://github.com/yyuu/pyenv-virtualenvwrapper
# echo "Install pyenv-virtualenvwrapper"
# brew install pyenv-virtualenvwrapper
# TODO: Add to dotfiles: export PYENV_VIRTUALENVWRAPPER_PREFER_PYVENV="true"

# Add Autoenv to bashrc
# echo 'source /usr/local/opt/autoenv/activate.sh' >> ~/.bashrc

# --- GENERAL ---

pip install waybackpack
#pip install hogwatch
#pip install voltron

# tq: https://github.com/plainas/tq
sudo pip install https://github.com/plainas/tq/zipball/stable

# Development
pip install cookiecutter # https://github.com/audreyr/cookiecutter
pip install requests: # http://docs.python-requests.org/en/latest/
pip install flask # http://flask.pocoo.org/
pip install gixy # https://github.com/yandex/gixy

# Testing
pip3 install trypackage # https://github.com/timofurrer/try
pip install bzt # https://github.com/Blazemeter/taurus
pip install hamms # https://github.com/kevinburke/hamms

# Security
pip install voltron # https://github.com/snare/voltron

# UI Applications
sudo pip install youtube-dlg # https://github.com/MrS0m30n3/youtube-dl-gui

# Scrapers
pip3 install you-get # https://github.com/soimort/you-get
pip install ImageScraper # https://github.com/sananth12/ImageScraper
pip install pyspider # https://github.com/binux/pyspider
pip install beautifulsoup4 # https://www.crummy.com/software/BeautifulSoup/bs4/doc/

# Utilities
pip install maybe # https://github.com/p-e-w/maybe
pip install ispy # https://github.com/dellis23/ispy
pip install stormssh # https://github.com/emre/storm
pip install SpoofMAC # https://github.com/feross/SpoofMAC
pip3 install pinggraph # https://github.com/orf/gping
pip install pygments # http://pygments.org/

# Random
pip install twitter_markov # https://github.com/fitnr/twitter_markov

# Cloud (AWS/etc)
pip install aws-shell # https://github.com/awslabs/aws-shell

# Docker
pip install docker-utils # https://github.com/andymckay/docker-utils

# Deployment
pip install dpxdt # https://github.com/bslatkin/dpxdt

# Linters (also used in SublimeLinter)
pip3 install yamllint
# pip3 install pep8
pip install pycodestyle # https://github.com/SublimeLinter/SublimeLinter-pycodestyle

# Downloads
pip3 install xkcd-dl # https://github.com/tasdikrahman/xkcd-dl
