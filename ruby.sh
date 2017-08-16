#! /bin/bash

# TODO: Port to Brewfile 'brew gem install foo': https://github.com/sportngin/brew-gem

echo "Installing Ruby apps..."

# RVM
echo "Install rvm"
#gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3
command curl -sSL https://rvm.io/mpapis.asc | gpg2 --import -
\curl -sSL https://get.rvm.io | bash -s stable
source /Users/timhordern/.rvm/scripts/rvm

echo "Install all the ruby versions we need"
#rvm install 1.8.7-head # broken
rvm install 1.9.3
rvm install 2.0.0
rvm install 2.2
rvm install 2.2.1
rvm install 2.3
rvm install 2.4

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
