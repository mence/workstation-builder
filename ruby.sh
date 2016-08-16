#! /bin/bash

# TODO: Port to Brewfile 'brew gem install foo': https://github.com/sportngin/brew-gem

# RVM
curl -sSL https://get.rvm.io | bash -s stable

# Install all the versions
rvm install 1.8.7-head
rvm install 1.9.3
rvm install 2.0.0
rvm install 2.2
rvm install 2.3

rvm use system --default

# Core
gem install bundler

# Applications
gem install friends # https://github.com/JacobEvelyn/friends
gem install dashing # http://shopify.github.io/dashing/

# Development tools
gem install github_changelog_generator # https://github.com/skywinder/github-changelog-generator
gem install foreman # https://github.com/ddollar/foreman
gem install puppet

# Utilities
gem install video_transcoding # https://github.com/donmelton/video_transcoding

# Linters (also used for SublimeLinter)
gem install haml
gem install mdl
gem install rubocop # https://github.com/bbatsov/rubocop
gem install scss_lint
gem install sqlint
gem install foodcritic # http://www.foodcritic.io/
