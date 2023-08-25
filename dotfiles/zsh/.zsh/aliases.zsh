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
alias ls='ls -al --color'

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