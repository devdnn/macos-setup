# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# core environment
[[ -f ~/.zsh/aliases.zsh ]] && source ~/.zsh/aliases.zsh
## console setup... NVM, OMZ [shell] & Spaceship [prompt]
[[ -f ~/.zsh/nvm.zsh ]] && source ~/.zsh/nvm.zsh
[[ -f ~/.zsh/ohmyzsh.zsh ]] && source ~/.zsh/ohmyzsh.zsh
[[ -f ~/.zsh/spaceship.zsh ]] && source ~/.zsh/spaceship.zsh

# completions
[[ -f ~/.zsh/az-cli-completions.zsh ]] && source ~/.zsh/az-cli-completions.zsh
[[ -f ~/.zsh/bash-completions.zsh ]] && source ~/.zsh/bash-completions.zsh
[[ -f ~/.zsh/zsh-completions.zsh ]] && source ~/.zsh/zsh-completions.zsh

# Export nvm completion settings for lukechilds/zsh-nvm plugin
# Note: This must be exported before the plugin is bundled
export NVM_DIR=${HOME}/.nvm
export NVM_COMPLETION=true

ZSH_THEME="spaceship"
source ${HOME}/.zsh_plugins.sh

# DIRCOLORS (MacOS)
export CLICOLOR=1

# FZF
export FZF_DEFAULT_COMMAND="rg --files --hidden --glob '!.git'"
export FZF_DEFAULT_OPTS="--height=40% --layout=reverse --border --margin=1 --padding=1"

# PATH
# export PATH=${PATH}:/usr/local/go/bin
# export PATH=${PATH}:${HOME}/go/bin
export PATH=$PATH:${HOME}/homebrew/bin

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

eval "$(starship init zsh)"

if command -v ngrok &>/dev/null; then
  eval "$(ngrok completion)"
fi