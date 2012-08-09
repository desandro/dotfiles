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
alias gco='git checkout'
# Lovely git log, thx @visionmedia
alias glog="git log --format='%Cgreen%h%Creset %Cblue%ad%Creset %C(cyan)%an%Creset: %s' --graph --date=short"

# output current git branch, echo $(curbr)
function curbr() {
  git rev-parse --abbrev-ref HEAD
}
