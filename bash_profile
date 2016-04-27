#!/bin/sh
#.bash_profile

# Bump the maximum number of file descriptors you can have open on your computer. There's no purpose for the default limit, especially on SSDs.
ulimit -n 10240

# Tell npm to compile and install all your native addons in parallel and not sequentially. This greatly increases installation times.
export JOBS=max