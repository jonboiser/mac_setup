#!/usr/bin/env bash

if ! command -v dockutil &> /dev/null
then
  echo "Installing dockutil from homebrew"
  brew install dockutil
fi

# Remove everything
dockutil --remove all --allhomes

# Add essentials dock icons
dockutil --add /Applications/Google\ Chrome.app --allhomes
dockutil --add /Applications/iTerm.app --allhomes
dockutil --add /System/Applications/System\ Preferences.app --allhomes
dockutil --add '~/Downloads' --view fan --display stack --allhomes

# Manual steps

# - Uncheck "Show recent applications..." in dock preferences
# - In System Preferences > Keyboard
#    - Change Caps Lock to Escape
#    - Set Key Repeat to Fast and Delay Until Repeat to Short
#    - Use F keys as standard function keys
#    - Turn off "Add period with double-space"
