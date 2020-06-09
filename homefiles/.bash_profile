#!/bin/bash

# Don't check mail when opening terminal.
unset MAILCHECK

# enable colors
alias ls="command ls -G"
export LSCOLORS='Gxfxcxdxdxegedabagacad'

export BASHFILES="$HOME/projects/dotfiles/bash"

source "$BASHFILES/aliases.bash"
source "$BASHFILES/base.bash"
source "$BASHFILES/colors.bash"
source "$BASHFILES/theme.bash"
source "$BASHFILES/dave.bash"
