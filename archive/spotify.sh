#!/bin/env bash

# To be run when inside network/on VPN

# TODO: Move to Brewfile

# Add sptaps: https://ghe.spotify.net/shared/homebrew-spotify
brew tap spotify/sptaps git@ghe.spotify.net:shared/homebrew-spotify.git

brew install spotify/sptaps/hmtools
brew install spotify/sptaps/sphadoop
brew install spotify/sptaps/styx-cli
brew install spotify/sptaps/churl --HEAD # https://ghe.spotify.net/security/client-core-tools

brew tap spotify/public
brew install scio
