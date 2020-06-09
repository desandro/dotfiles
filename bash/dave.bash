#!/usr/bin/env bash

# Dave-specific stuff

# Git credentials
export GIT_AUTHOR_NAME="David DeSandro"
export GIT_COMMITTER_NAME="$GIT_AUTHOR_NAME"
git config --global user.name "$GIT_AUTHOR_NAME"
export GIT_AUTHOR_EMAIL="desandrocodes@gmail.com"
export GIT_COMMITTER_EMAIL="$GIT_AUTHOR_EMAIL"
git config --global user.email "$GIT_AUTHOR_EMAIL"

alias gitx="open -a GitX"

# Set TextMate as default editor
export EDITOR="/usr/local/bin/mate -w"
export GIT_EDITOR='/usr/local/bin/mate -w'

# This loads nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
# This loads nvm bash_completion
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"
