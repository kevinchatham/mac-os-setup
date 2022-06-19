#!/usr/bin/env bash

echo "----- configuring dock ------"
sudo cp ~/Git/mac-os-setup/com.apple.dock.plist /Library/Preferences/com.apple.dock.plist
defaults write com.apple.Dock showhidden -bool yes
killall Dock
