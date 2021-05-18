# Install/update xcode 
xcode-select --install
# Install brew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
# update brew
brew update

# CLI
brew install git
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

# Don't forget to install magnet from app store

# Mac Settings to change:
# Adjust mouse tracking speed: system preference, mouse, bring tracking speed to 7th mark from the left
# Enable Secondary click for the mouse: system preferences, mouse secondary click
# stop minimized apps from appearing at the bottom right: sys preferences, dock, add check to minimize windows into application icon
# add volume controller to menu bar: sys preferences, sound add tick show volume to menu bar
# enable hot corners, to enable show desktop at the bottom right
# enable tab to move focus between controls: sys pref, shortcuts, add tick to Use keyboard navigation to move focus between controls
# ----------------
# finder settings:
# open finder(any window)
# in the menu bar on top click finder, preferences, sidebar. Hide tags, and enable folders you prefer.
# then go to advanced and add tick to show all filename extensions
# -----------------
# Open sys preferences: dock & menu bar: minimize windows using Scale Effect(not genie),tick the following:
# double click a window's title bar to zoom, minimise windows into application icon, animate opening application, automatically hide and show the dock, show indicators for open applications
# DESELECT show recent applications in Dock, and automatically hide and show the menu bar
# set dock size to max
# -----------------