# MacOS System
# Remove Message of the day prompt
touch $HOME/.hushlogin
# Show hidden files in finder
defaults write com.apple.finder AppleShowAllFiles YES

is_executable() {
  type "$1" > /dev/null 2>&1
}

SOURCE="https://github.com/devdnn/macos-setup"
TARGET="$HOME/.macos-setup"
DOTFILES_FOLDER="$TARGET/dotfiles"

# Basic file system setup
rm -rf $TARGET
mkdir -p $TARGET

if is_executable "git"; then
  CMD="git clone $SOURCE $TARGET"
  eval $CMD
fi

#/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

curl -L https://raw.githubusercontent.com/devdnn/macos-setup/main/scripts/core-fonts.sh | sh

curl -L https://raw.githubusercontent.com/devdnn/macos-setup/main/scripts/core-install.sh | sh

curl -L https://raw.githubusercontent.com/devdnn/macos-setup/main/scripts/homebrew-install-apps.sh | sh

curl -L https://raw.githubusercontent.com/devdnn/macos-setup/main/scripts/macos-install.sh | sh

. run-stow.sh

# Node.js setup
nvm install
npm install -g trash-cli

# bro pages, simpler man pages
sudo gem install bropages

# TODO: CLI tool for installing things from app store
# https://github.com/herrbischoff/awesome-osx-command-line

cp $DOTFILES_FOLDER/p10k/.p10k.zsh $HOME
