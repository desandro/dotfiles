# dotfiles

Personalized command line settings.

## Installation

Clone repo

``` bash
cd ~/where/i/put/repos/
git clone https://github.com/desandro/dotfiles.git
```

Edit `DOTFILES` location in `.bash_profile`

``` bash
export DOTFILES="$HOME/projects/dotfiles" # from
export DOTFILES="$HOME/where/i/put/repos" # to
```

Run `install.sh`

``` bash
cd dotfiles
./install.sh
```

### Updating

Run `./install.sh` again any time you want to update your dotfiles.

## Customize

Put all the other files you want sourced in `dotfiles/custom`.

For example, I have `dotfiles/custom/desandro.bash` that looks like

``` bash
# PATH exports
PATH=$PATH:~/.gem/ruby/1.8/bin
export PATH

# Git credentials
# Not under version control to prevent people from accidentally
# committing with your details
GIT_AUTHOR_NAME="David DeSandro"
GIT_AUTHOR_EMAIL="desandro@example.com"
GIT_COMMITTER_NAME="$GIT_AUTHOR_NAME"
GIT_COMMITTER_EMAIL="$GIT_AUTHOR_EMAIL"
# Set these credentials in ~/.gitconfig
git config --global user.name "$GIT_AUTHOR_NAME"
git config --global user.email "$GIT_AUTHOR_EMAIL"
```

## These guys did all the hard work

+ [revans/bash-it](https://github.com/revans/bash-it)
+ [mathiasbynens/dotfiles](https://github.com/mathiasbynens/dotfiles/)
+ [necolas/dotfiles](https://github.com/necolas/dotfiles)
