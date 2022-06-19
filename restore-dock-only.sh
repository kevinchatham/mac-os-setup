#!/usr/bin/env bash

echo "----- configuring dock ------"
cp ~/Git/mac-os-setup/com.apple.dock.plist ~/Library/Preferences/com.apple.dock.plist
killall Dock