# source *sh files in dotfiles
dotfiles="$HOME/dev/dotfiles"
shDir="$dotfiles/sh"
shFiles=$(ls $shDir)
# convert space separated text into arguments https://scriptingosx.com/2019/08/moving-to-zsh-part-8-scripting-zsh/
files=( ${=shFiles} )

for file in $files; do
  source "$shDir/$file"
done

unset shDir shFiles files file
