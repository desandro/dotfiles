# dotfiles

Personalized command line settings. Updated for zsh on macOS Catalina.

![desandro dotfiles in terminal](https://user-images.githubusercontent.com/85566/87696066-524f3f80-c75e-11ea-8059-4219d3a19f48.png)

## Installation

Download or clone repo

Edit `dotfiles` location in `homefiles/.zshrc`

``` sh
dotfiles="$HOME/dev/dotfiles" # from
dotfiles="$HOME/where/i/put/dotfiles" # to
```

Run `install.sh`

``` sh
cd ~/where/i/put/dotfiles
./install.sh
```

### Updating

- Run `./install.sh` to update dotfiles
- Run `reload` to update shell scripts

## Customize

Put any the other shell scripts you want sourced in `dotfiles/sh`. For example, I have `dotfiles/sh/dave.sh` that has aliases and config that are particular to me.

## Other dotfile projects

My dotfiles were mostly refactored from these other projects

+ [bash-it](https://github.com/Bash-it/bash-it)
+ [ohmyzsh](https://github.com/ohmyzsh/ohmyzsh)
