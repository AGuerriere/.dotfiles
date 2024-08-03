# Install/update xcode 
xcode-select --install
# Install brew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
# update brew
brew update

# CLI
brew install git
brew install neovim
brew install eza
brew install neofetch
brew install postgresql@16 #check for latest version before installation
brew install webp
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
brew install --cask alt-tab
brew install --cask google-chrome
brew install --cask google-drive
brew install --cask pgadmin4
brew install --cask anki
brew install --cask postman
brew install --cask bluej
brew install --cask itsycal
brew install --cask rectangle
brew install --cask chatgpt
brew install --cask keepassxc
brew install --cask signal
brew install --cask chromedriver
brew install --cask slack
brew install --cask visual-studio-code
brew install --cask vlc
brew install --cask figma
brew install --cask microsoft-office
brew install --cask whatsapp
brew install --cask firefox
brew install --cask microsoft-teams


#also screenshots for alt-tab configuration alt-tab folder


# Install Hack Nerd Fonts. Remember to choose the hack fonts in the terminal
brew tap homebrew/cask-fonts &&
brew install --cask font-Hack-nerd-font

# Install nvm and Node
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash
nvm install node

# Restore Alfred preferences from Google Drive in the folder IT > / Alfred Bacup Preferences
