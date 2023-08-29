# Aliases
# -------
# Adds better handling for `rm` using trash-cli
# https://github.com/sindresorhus/trash-cli
# You can empty the trash using the empty-trash command
# https://github.com/sindresorhus/empty-trash-cli
alias rm='trash'
# # use neovim instead of vim
# alias vim='nvim'
# # open vim config from anywhere
# alias vimrc='vim ${HOME}/.config/nvim/init.vim'
# # cat -> bat
# alias cat='bat'
# colored ls output
alias lsmine='ls -al --color'

# alias to show filenames only with last modified date colored
alias lslastmod='ls -al --color --time-style=+"%d-%m-%Y %H:%M:%S" | awk '\''{print $6,$7,$8,$9}'\'''

# git aliases
# -----------
# show all commits/branches in graph tree
alias gitglog="git log --all --decorate --oneline --graph"
# checkout branch using fzf
alias gcob='git branch | fzf | xargs git checkout'

# npm aliases
# -----------
# show all commits/branches in graph tree
alias gitglog="git log --all --decorate --oneline --graph"

alias zshconfig="code ~/.zshrc"
alias zshsource="source ~/.zshrc"
alias ohmyzsh="code ~/.oh-my-zsh"
alias opengitconfig="code ~/.gitconfig"
alias brewup='brew update && brew upgrade && brew doctor && brew cleanup'
alias brewserviceslist="brew services list"

# Recursively delete `.DS_Store` files
alias cleanup="find . -type f -name '*.DS_Store' -ls -delete"

# Empty the Trash on all mounted volumes and the main HDD.
# Also, clear Apple’s System Logs to improve shell startup speed.
# Finally, clear download history from quarantine. https://mths.be/bum
alias emptytrash="rm -rfv /Volumes/*/.Trashes; rm -rfv ~/.Trash; rm -rfv /private/var/log/asl/*.asl; sqlite3 ~/Library/Preferences/com.apple.LaunchServices.QuarantineEventsV* 'delete from LSQuarantineEvent'"

# Show/hide hidden files in Finder
alias showfiles="defaults write com.apple.finder AppleShowAllFiles -bool true && killall Finder"

# print all alias in zsh
alias printaliases="print -rl -- ${(k)aliases}"
# print all functions in zsh
alias printfunctions="print -rl -- ${(k)functions}"
# print all variables in zsh
alias printvariables="print -rl -- ${(k)parameters}"