#!/bin/sh

DOTFILES_FOLDER="./dotfiles/"
TARGET_FOLDER="$HOME/.dotfiles/"

# copy dotfiles folder content to home directory with .dotfiles folder name and delete files that are not in source
cp -r "$DOTFILES_FOLDER" "$TARGET_FOLDER"

# remove those files that are not in the TARGET_FOLDER folder



cp -r "$DOTFILES_FOLDER" "$TARGET_FOLDER"

# SSH config
stow ssh -R -d "$TARGET_FOLDER" -t "$HOME"

# stow bash -t $HOME
rm "$HOME"/.zshrc
stow zsh -R --d "$TARGET_FOLDER" -t "$HOME"

# stow vscode -t $HOME
# ln -s "$HOME/work/git/stow-dotfiles/vscode/settings.json" "$HOME/Library/Application Support/Code/User/settings.json"

# git
stow git -R -d "$TARGET_FOLDER" -t "$HOME"
git config --global core.excludesfile "$HOME/.gitignore"

# stow hyper -t $HOME
rm "$HOME"/.hyper.js
stow hyper -R --d "$TARGET_FOLDER" -t "$HOME"