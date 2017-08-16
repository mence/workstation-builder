#!/bin/bash

echo "Installing Go apps..."

go get -v -d github.com/pinterest/knox
go get -v github.com/buger/gor
go get -v github.com/looterz/grimd
go get -v -u github.com/golang/protobuf/proto
go get -v -u github.com/golang/protobuf/protoc-gen-go
go get -v github.com/adnanh/webhook

# Linters (also used for SublimeLinter)
go get -v -u github.com/golang/lint/golint
go get -v -u github.com/ckaznocha/protoc-gen-lint

# command-line fuzzy finder: https://github.com/junegunn/fzf
brew install fzf --verbose

# happyfinder: https://github.com/hugows/hf
go get -v -u github.com/hugows/hf

# Web search from the terminal: https://github.com/zquestz/s
go get -v github.com/zquestz/s

# Google Translate API
go get -v github.com/eladg/tapi

# Micro: A microservice toolkit for distributed systems development
go get -v github.com/micro/micro

# Testing
go get -v github.com/rakyll/boom # https://github.com/rakyll/boom
go get -v github.com/jgrahamc/httpdiff # https://github.com/jgrahamc/httpdiff
go get -v -u gopkg.in/h2non/baloo.v1 # https://github.com/h2non/baloo
go get -v -u github.com/knq/chromedp # https://github.com/knq/chromedp
go get -v -u github.com/codesenberg/bombardier # https://github.com/codesenberg/bombardier

# Utilities
go get -v github.com/jehiah/json2csv # https://github.com/jehiah/json2csv

# dt: DNS tool that displays information about your domain.
go get github.com/42wim/dt

# todoist: Todoist CLI client
go get github.com/sachaos/todoist
