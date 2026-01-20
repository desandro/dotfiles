alias reload='source ~/.zshrc'

# Show/hide hidden files in Finder
alias showhidden="defaults write com.apple.Finder AppleShowAllFiles -bool true && killall Finder"
alias hidehidden="defaults write com.apple.Finder AppleShowAllFiles -bool false && killall Finder"

# display local IP address
alias myip='ipconfig getifaddr en0 && ipconfig getifaddr en1'

# Git
alias gp='git push'
alias gpoh='git push origin HEAD'
alias gl='git pull'
alias gcam='git commit -a -m'
alias gco='git checkout'
alias gcnv='git add . && git commit --no-verify'

# rebase from latest commit: `grb 3` for 3 latest commits
function grb() {
  git rebase -i HEAD~$1
}
# Lovely git log, thx @visionmedia
alias glog="git log --format='%Cgreen%h%Creset %Cblue%ad%Creset %C(cyan)%an%Creset: %s' --graph --date=short"
