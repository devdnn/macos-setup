
SOURCE="https://github.com/devdnn/macos-setup"
TARGET="$HOME/.macos-setup"
DOTFILES_FOLDER="$TARGET/dotfiles"

# SSH config
stow ssh -d $DOTFILES_FOLDER -t $HOME --ignore

# stow bash -t $HOME
rm $HOME/.zshrc
stow zsh --d $DOTFILES_FOLDER -t $HOME --ignore

# stow vscode -t $HOME
# ln -s "$HOME/work/git/stow-dotfiles/vscode/settings.json" "$HOME/Library/Application Support/Code/User/settings.json"

# git
stow git -d $DOTFILES_FOLDER -t $HOME --ignore
git config --global core.excludesfile $HOME/.gitignore