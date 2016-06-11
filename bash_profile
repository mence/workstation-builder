#!/bin/sh
#.bash_profile

# Bump the maximum number of file descriptors you can have open on your computer. There's no purpose for the default limit, especially on SSDs.
ulimit -n 10240

# Tell npm to compile and install all your native addons in parallel and not sequentially. This greatly increases installation times.
export JOBS=max

# Homebrew
# bash_profile / .zshrc
if brew command command-not-found-init > /dev/null; then eval "$(brew command-not-found-init)"; fi
# config.fish
# brew command command-not-found-init > /dev/null; and . (brew command-not-found-init)
