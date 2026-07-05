# Dave-specific stuff

# Git credentials
export GIT_AUTHOR_NAME="Dave DeSandro"
export GIT_COMMITTER_NAME="$GIT_AUTHOR_NAME"
git config --global user.name "$GIT_AUTHOR_NAME"
export GIT_AUTHOR_EMAIL="desandrocodes@gmail.com"
export GIT_COMMITTER_EMAIL="$GIT_AUTHOR_EMAIL"
git config --global user.email "$GIT_AUTHOR_EMAIL"

# Set Cursor as default editor
export EDITOR="/usr/local/bin/cursor -w"
export GIT_EDITOR='/usr/local/bin/cursor -w'

# nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
