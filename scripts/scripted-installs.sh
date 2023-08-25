#!/bin/sh

CURRENT_DIR=$PWD

# install "oh my zsh"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# install fonts
cd ~/Library/Fonts
mkdir "Segoe UI MDL2" && cd $_
curl -O "https://raw.githubusercontent.com/devdnn/macos-setup/main/fonts/Segoe UI MDL2/Segoe UI Bold Italic.ttf"
curl -O "https://raw.githubusercontent.com/devdnn/macos-setup/main/fonts/Segoe UI MDL2/Segoe UI Bold.ttf"
curl -O "https://raw.githubusercontent.com/devdnn/macos-setup/main/fonts/Segoe UI MDL2/Segoe UI Italic.ttf"
curl -O "https://raw.githubusercontent.com/devdnn/macos-setup/main/fonts/Segoe UI MDL2/Segoe UI Regular.ttf"
curl -O "https://raw.githubusercontent.com/devdnn/macos-setup/main/fonts/Segoe UI MDL2/Segoe UI Semibold.ttf"
curl -O "https://raw.githubusercontent.com/devdnn/macos-setup/main/fonts/Segoe UI MDL2/Segoe UI Semilight.ttf"
curl -O "https://raw.githubusercontent.com/devdnn/macos-setup/main/fonts/Segoe UI MDL2/Segoe UI.ttf"

cd ~/Library/Fonts
mkdir "Omnes" && cd $_
curl -O "https://raw.githubusercontent.com/devdnn/macos-setup/main/fonts/Omnes/Omnes-Bold.otf"
curl -O "https://raw.githubusercontent.com/devdnn/macos-setup/main/fonts/Omnes/Omnes-Regular.otf"
curl -O "https://raw.githubusercontent.com/devdnn/macos-setup/main/fonts/Omnes/OmnesExtraLight.otf"
curl -O "https://raw.githubusercontent.com/devdnn/macos-setup/main/fonts/Omnes/OmnesLight.otf"
curl -O "https://raw.githubusercontent.com/devdnn/macos-setup/main/fonts/Omnes/OmnesMedium.otf"
curl -O "https://raw.githubusercontent.com/devdnn/macos-setup/main/fonts/Omnes/OmnesSemiBold.otf"

cd "$CURRENT_DIR"
