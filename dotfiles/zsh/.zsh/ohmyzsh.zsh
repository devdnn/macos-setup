# load Oh My ZSH
source $HOMEBRREW_DIR/share/antigen/antigen.zsh
source $ZSH/oh-my-zsh.sh

# Load the oh-my-zsh's library
antigen use oh-my-zsh

# bundle antigen zsh plugins @ https://github.com/robbyrussell/oh-my-zsh/tree/master/plugins
antigen bundles <<EOBUNDLES
	common-aliases
	history 
	git 
	docker 
	zsh_reload 
	autojump 
	zsh-users/zsh-completions
	zsh-users/zsh-autosuggestions
  	unixorn/autoupdate-antigen.zshplugin
	zsh-users/zsh-syntax-highlighting
EOBUNDLES

# Load the theme @ https://github.com/robbyrussell/oh-my-zsh/tree/master/themes/
# Load the theme
# simple and fast
antigen theme steeef
# cool but slow
# antigen theme https://github.com/denysdovhan/spaceship-zsh-theme spaceship

# syntax highlighting must come below the bundle to set the correct paths/variables with history search
antigen bundle zdharma/fast-syntax-highlighting
antigen bundle zsh-users/zsh-history-substring-search

# Tell antigen that you're done
antigen apply

if type brew &>/dev/null; then
	FPATH=$(brew --prefix)/share/zsh-completions:$FPATH

	autoload -Uz compinit
	compinit
fi