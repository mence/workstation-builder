#! /bin/bash

# TODO: Port to Brewfile 'brew gem install foo': https://github.com/sportngin/brew-gem

echo "Installing Ruby apps..."

# RVM
echo "Install rvm"
gpg2 --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB
\curl -sSL https://get.rvm.io | bash -s stable
source /Users/timhordern/.rvm/scripts/rvm

rvm get master # update to latest RVM just in case

echo "Install all the ruby versions we need"
#rvm install 1.8.7-head # broken
rvm install 1.9.3 --with-openssl-dir=`brew --prefix openssl`
rvm use 1.9.3
gem install bundler

rvm install 2.0.0 --with-openssl-dir=`brew --prefix openssl`
rvm use 2.0.0
gem install bundler

rvm install 2.2 --with-openssl-dir=`brew --prefix openssl`
rvm use 2.2
gem install bundler

rvm install 2.2.1 --with-openssl-dir=`brew --prefix openssl`
rvm use 2.2.1
gem install bundler

rvm install 2.2.2 --with-openssl-dir=`brew --prefix openssl`
rvm use 2.2.2
gem install bundler

rvm install 2.2.7 --with-openssl-dir=`brew --prefix openssl`
rvm use 2.2.7
gem install bundler

rvm install 2.3.0 --with-openssl-dir=`brew --prefix openssl`
rvm use 2.3.0
gem install bundler

rvm install 2.3.1 --with-openssl-dir=`brew --prefix openssl`
rvm use 2.3.1
gem install bundler

rvm install 2.4.0 --with-openssl-dir=`brew --prefix openssl`
rvm use 2.4.0
gem install bundler

rvm install 2.4.1 --with-openssl-dir=`brew --prefix openssl`
rvm use 2.4.1
gem install bundler

rvm install 2.4.2 --with-openssl-dir=`brew --prefix openssl`
rvm use 2.4.2
gem install bundler

rvm install 2.5.1 --with-openssl-dir=`brew --prefix openssl`
rvm use 2.5.1
gem install bundler

rvm install 2.6.1 --with-openssl-dir=`brew --prefix openssl`
rvm use 2.6.1
gem install bundler

rvm install 2.6.1 --with-openssl-dir=`brew --prefix openssl`
rvm use 2.6.3
gem install bundler

rvm install 2.7 --with-openssl-dir=`brew --prefix openssl`
rvm use 2.7
gem install bundler

rvm install ruby-head --with-openssl-dir=`brew --prefix openssl`
rvm use ruby-head
gem install bundler

rvm docs generate-ri
rvm rvmrc warning ignore allGemfiles

rvm get stable
rvm reload
rvm osx-ssl-certs update all
rvm rubygems latest

echo "Setting default as system ruby"
rvm use system --default

# Gems
echo "Installing gems using rvm @global to allow all gemsets to have them"

# Core
rvm @global do gem install bundler

# Applications
rvm @global do gem install friends # https://github.com/JacobEvelyn/friends
rvm @global do gem install smashing # https://github.com/Smashing/smashing

# Development tools
rvm @global do gem install github_changelog_generator # https://github.com/skywinder/github-changelog-generator
rvm @global do gem install foreman # https://github.com/ddollar/foreman
rvm @global do gem install puppet

# Utilities
rvm @global do gem install video_transcoding # https://github.com/donmelton/video_transcoding
rvm @global do gem install iStats # https://github.com/Chris911/iStats
istats scan
istats enable all

# Linters (also used for SublimeLinter)
rvm @global do gem install haml
rvm @global do gem install mdl
rvm @global do gem install rubocop # https://github.com/bbatsov/rubocop
rvm @global do gem install scss_lint
rvm @global do gem install sqlint
rvm @global do gem install foodcritic # http://www.foodcritic.io/
rvm @global do gem install puppet-lint # http://puppet-lint.com/
  