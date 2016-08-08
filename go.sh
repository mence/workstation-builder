#!/bin/bash

go get -d github.com/pinterest/knox
go get github.com/buger/gor
go get github.com/looterz/grimd

# Linters (also used for SublimeLinter)
go get -u github.com/golang/lint/golint
go get -u github.com/ckaznocha/protoc-gen-lint

# command-line fuzzy finder: https://github.com/junegunn/fzf
brew install fzf

# happyfinder: https://github.com/hugows/hf
go get -u github.com/hugows/hf

# Web search from the terminal: https://github.com/zquestz/s
go get -v github.com/zquestz/s

# Google Translate API
go get github.com/eladg/tapi

#https://github.com/micro/micro
go get github.com/micro/micro

# Testing
go get github.com/rakyll/boom # https://github.com/rakyll/boom
go get github.com/jgrahamc/httpdiff # https://github.com/jgrahamc/httpdiff

# Utilities
go get github.com/jehiah/json2csv # https://github.com/jehiah/json2csv
