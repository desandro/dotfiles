#!/bin/bash

# Reload Library
alias reload='source ~/.bash_profile'

# Show/hide hidden files in Finder
alias showhidden="defaults write com.apple.Finder AppleShowAllFiles -bool true && killall Finder"
alias hidehidden="defaults write com.apple.Finder AppleShowAllFiles -bool false && killall Finder"

# Git
alias g='git'
alias gp='git push'
alias gl='git pull'
alias gca='git commit -v -a'

