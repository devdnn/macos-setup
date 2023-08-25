# MacOS System
# Remove Message of the day prompt
touch $HOME/.hushlogin
# Show hidden files in finder
defaults write com.apple.finder AppleShowAllFiles YES

is_executable() {
  type "$1" > /dev/null 2>&1
}

# Basic file system setup
mkdir -p $HOME/work/_code/git

SOURCE="https://github.com/devdnn/macos-setup"
SOURCECODE_LOCATION="$HOME/work/_code/git"
TARBALL="$SOURCE/tarball/main"
TARGET="$HOME/.dotfiles"

if is_executable "git"; then
  CMD="git clone $SOURCE $SOURCECODE_LOCATION"
  cp -r $SOURCECODE_LOCATION/macos-setup/dotfiles $HOME/.dotfiles
fi



/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

curl -L https://raw.githubusercontent.com/devdnn/macos-setup/main/scripts/core-fonts.sh | sh

curl -L https://raw.githubusercontent.com/devdnn/macos-setup/main/scripts/core-install.sh | sh

curl -L https://raw.githubusercontent.com/devdnn/macos-setup/main/scripts/homebrew-install-apps.sh | sh

curl -L https://raw.githubusercontent.com/devdnn/macos-setup/main/scripts/macos-install.sh | sh



# SSH config
stow ssh -d $TARGET -t $HOME

# stow bash -t $HOME
rm $HOME/.zshrc
stow zsh --d $TARGET -t $HOME

# stow vscode -t $HOME
# ln -s "$HOME/work/git/stow-dotfiles/vscode/settings.json" "$HOME/Library/Application Support/Code/User/settings.json"

# git
stow git -d $TARGET -t $HOME
git config --global core.excludesfile $HOME/.gitignore

# Node.js setup
nvm install
npm install -g trash-cli

# bro pages, simpler man pages
sudo gem install bropages

# TODO: CLI tool for installing things from app store
# https://github.com/herrbischoff/awesome-osx-command-line

cp $HOME/dotfiles/p10k/.p10k.zsh $HOME
