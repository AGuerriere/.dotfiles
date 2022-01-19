# .dotfiles

# Getting Started and Terminal Setup

- Clone this repo in the home directory.

- from Terminal `ln -s ~/.dotfiles/.zshrc ~/.zshrc` 
    
    This creates a symlink to connect the .zhrc file with the file in the .dotfiles folder.


# Dev MacOS Setup

- Run all commands macos-setup-commands.sh file
- Install magnet from app store
- Change MacOS settings like below
- Install web browser extensions - uBlock Origin, Privacy Badger, OneTab( in uBlock origin go to settings > filters list > annoyances, turn on easylist-cookies to block annoying cooking popups to show on every website )
- Install VS Code Extensions - Pitch Black Theme by Viktor, Live Server, Pylance, (Microsoft), Python(Microsoft)

## Mac Settings to change:
- Adjust mouse tracking speed: system preference, mouse, bring tracking speed to 7th   mark from the left
- Enable Secondary click for the mouse: system preferences, mouse secondary click
- stop minimized apps from appearing at the bottom right: sys preferences, dock, add check to minimize windows into application icon
- add volume controller to menu bar: sys preferences, sound add tick show volume to menu bar
- enable tab to move focus between controls: sys pref, shortcuts, add tick to Use keyboard navigation to move focus between controls
----------------
### Finder settings:
- open finder(any window)
in the menu bar on top click finder, preferences, sidebar. Hide tags, and enable folders you prefer.
then go to advanced and add tick to show all filename extensions
-----------------
- Open sys preferences: dock & menu bar: minimize windows using Scale Effect(not genie),tick the following:
double click a window's title bar to zoom, minimise windows into application icon, animate opening application, automatically hide and show the dock, show indicators for open applications
DESELECT show recent applications in Dock, and automatically hide and show the menu bar
set dock size to max
-----------------


# uBlock Origin - my filters

Add those filters to my filters:

www.youtube.com##.grid-disabled.grid.ytd-browse.style-scope
youtube.com##.ytd-watch-next-secondary-results-renderer
www.reddit.com##div[data-testid="frontpage-sidebar"]:upward(.ListingLayout-outerContainer)
news.google.com