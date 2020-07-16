# Enable ls colors
autoload -U colors && colors
export LSCOLORS="Gxfxcxdxbxegedabagacad"
alias ls='ls -G'

# ---- Prompt ---- #

# functions refactored from oh-my-zsh
function git_prompt_info() {
  local ref
  ref=$(git symbolic-ref HEAD 2> /dev/null) || \
  ref=$(git rev-parse --short HEAD 2> /dev/null) || return 0
  echo " $fg[yellow](${ref#refs/heads/} $(parse_git_dirty)$fg[yellow])"
}

function parse_git_dirty() {
  # get list of changed files
  local changedFiles=$(git status --porcelain 2> /dev/null)
  if [[ -n $changedFiles ]]; then
    # trim whitespace https://unix.stackexchange.com/a/205854
    local changedCount=$(echo $changedFiles | wc -l | awk '{$1=$1;print}')
    echo "$fg_bold[red]✗$changedCount"
  else
    echo "$fg_bold[green]✓"
  fi
}

# zsh prompt sequences: http://zsh.sourceforge.net/Doc/Release/Prompt-Expansion.html
setopt prompt_subst
PROMPT='$fg[red]✦ $fg_bold[blue]%~%b$(git_prompt_info) $fg[black]\$$reset_color '

# ---- iTerm tab title ---- #

function setITermTitle {
  if [[ "$TERM_PROGRAM" == "iTerm.app" ]]; then
    print -Pn "\e]1;%~\a" # set tab name
  fi
}

autoload -U add-zsh-hook
add-zsh-hook precmd setITermTitle
