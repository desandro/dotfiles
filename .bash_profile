#!/bin/bash

export DOTFILES="$HOME/projects/dotfiles"

# Don't check mail when opening terminal.
unset MAILCHECK

# enable colors
alias ls="command ls -G"
export LSCOLORS='Gxfxcxdxdxegedabagacad'

# Set TextMate as default editor
export EDITOR="/usr/local/bin/mate -w"
export GIT_EDITOR='/usr/local/bin/mate -w'

# source bash files, like aliases, colors, base theme
HELPERS="${DOTFILES}/*.bash"
for config_file in $HELPERS
do
  source $config_file
done

# sweet prompt theme from bash-it
source "$DOTFILES/themes/rainbowbrite.theme.bash"

# display directory in iTerm tab title https://apple.stackexchange.com/a/315456
if [ $ITERM_SESSION_ID ]; then
  export PROMPT_COMMAND='echo -ne "\033];${PWD##*/}\007"; ':"$PROMPT_COMMAND";
fi

# source custom files
CUSTOM="$DOTFILES/custom/*"
for config_file in $CUSTOM
do
  source $config_file
done
