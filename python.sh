#!/bin/bash

# TODO: Port to Brewfile 'brew pip foo': https://github.com/hanxue/brew-pip

pip install waybackpack
#pip install hogwatch
#pip install voltron

# tq: https://github.com/plainas/tq
sudo pip install https://github.com/plainas/tq/zipball/stable

# Add Autoenv to bashrc
echo 'source /usr/local/opt/autoenv/activate.sh' >> ~/.bashrc

# Development
pip install cookiecutter # https://github.com/audreyr/cookiecutter

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
pip3 install pyyaml
pip3 install pep8
