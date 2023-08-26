#!/bin/sh

CURRENT_DIR=$PWD

# install "oh my zsh"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# install fonts
cd ~/Library/Fonts
mkdir "Segoe UI MDL2" && cd $_
curl -O "https://raw.githubusercontent.com/devdnn/macos-setup/main/fonts/Segoe%20UI%20MDL2/Segoe%20UI%20Bold%20Italic.ttf"
curl -O "https://raw.githubusercontent.com/devdnn/macos-setup/main/fonts/Segoe%20UI%20MDL2/Segoe%20UI%20Bold.ttf"
curl -O "https://raw.githubusercontent.com/devdnn/macos-setup/main/fonts/Segoe%20UI%20MDL2/Segoe%20UI%20Italic.ttf"
curl -O "https://raw.githubusercontent.com/devdnn/macos-setup/main/fonts/Segoe%20UI%20MDL2/Segoe%20UI%20Regular.ttf"
curl -O "https://raw.githubusercontent.com/devdnn/macos-setup/main/fonts/Segoe%20UI%20MDL2/Segoe%20UI%20Semibold.ttf"
curl -O "https://raw.githubusercontent.com/devdnn/macos-setup/main/fonts/Segoe%20UI%20MDL2/Segoe%20UI%20Semilight.ttf"
curl -O "https://raw.githubusercontent.com/devdnn/macos-setup/main/fonts/Segoe%20UI%20MDL2/Segoe%20UI.ttf"

cd ~/Library/Fonts
mkdir "Omnes" && cd $_
curl -O "https://raw.githubusercontent.com/devdnn/macos-setup/main/fonts/Omnes/Omnes-Bold.otf"
curl -O "https://raw.githubusercontent.com/devdnn/macos-setup/main/fonts/Omnes/Omnes-Regular.otf"
curl -O "https://raw.githubusercontent.com/devdnn/macos-setup/main/fonts/Omnes/OmnesExtraLight.otf"
curl -O "https://raw.githubusercontent.com/devdnn/macos-setup/main/fonts/Omnes/OmnesLight.otf"
curl -O "https://raw.githubusercontent.com/devdnn/macos-setup/main/fonts/Omnes/OmnesMedium.otf"
curl -O "https://raw.githubusercontent.com/devdnn/macos-setup/main/fonts/Omnes/OmnesSemiBold.otf"

cd "$CURRENT_DIR"
