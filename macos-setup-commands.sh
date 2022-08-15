# Install/update xcode 
xcode-select --install
# Install brew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
# update brew
brew update

# CLI
brew install git
brew install neovim
brew install exa
# gh is Github cli
brew install gh
brew install python
brew install node
# GUI Apps
brew install --cask iterm2
# use iTerm_profile.json to restore Macsimus profile
# also change settings: preferences, appearance, general, theme select Minimal
brew install --cask alfred
# set CMD+space to launch alfred
brew install --cask firefox
brew install --cask google-chrome
brew install --cask visual-studio-code
brew install --cask keepassxc
brew install --cask flux
brew install --cask anki
brew install --cask postman
brew install --cask google-drive
brew install --cask rectangle
brew install --cask chromedriver
brew install --cask whatsapp
brew install --cask vlc
brew install itsycal
brew install --cask alt-tab #also screenshots for alt-tab configuration alt-tab folder

# Install Hack Nerd Fonts. Remember to choose the hack fonts in the terminal
brew tap homebrew/cask-fonts &&
brew install --cask font-Hack-nerd-font

# Install nvm and Node
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash
nvm install node

