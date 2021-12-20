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

