#!/bin/bash

# https://gist.github.com/hofmannsven/ff21749b0e6afc50da458bebbd9989c5
# https://mac-os-key-repeat.vercel.app/

# 195ms initial delay
defaults write -g InitialKeyRepeat -int 13

# 30ms key repeat speed
defaults write -g KeyRepeat -int 2

# disable press and hold for special characters
defaults write -g ApplePressAndHoldEnabled -bool false
