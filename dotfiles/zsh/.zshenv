# added locations to path variable
export PATH=$PATH:${HOME}/bin
export PATH="/usr/local/sbin:$PATH"
export PATH=$PATH:${HOME}/homebrew/bin

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"
export HOMEBRREW_DIR="$HOME/homebrew"

# Starship prompt configuration
# export SPACESHIP_CONFIG="$HOME/.spaceshiprc.zsh"
## fix issue with Warp [terminal] + starship [prompt] type ahead
##  https://github.com/warpdotdev/Warp/issues/1973
export SPACESHIP_PROMPT_ASYNC=FALSE

# NVM directory
export NVM_DIR="$HOME/.nvm"

export EDITOR='code'