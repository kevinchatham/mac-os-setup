#!/usr/bin/env bash

echo "----- hide time machine disk notification ------"
sudo defaults write /Library/Preferences/SystemConfiguration/com.apple.DiskArbitration.diskarbitrationd.plist DADisableEjectNotification -bool YES && sudo pkill diskarbitrationd

echo "----- hide all desktop icons ------"
defaults write com.apple.finder CreateDesktop false
killall Finder

echo "----- install homebrew ------"
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> $HOME/.zprofile;
eval "$(/opt/homebrew/bin/brew shellenv)"

echo "----- install powershell ------"
brew install --cask powershell

echo "----- install dotnet sdk ------"
brew install --cask dotnet-sdk

echo "----- install github desktop ------"
brew install --cask github

echo "----- install vs code ------"
brew install --cask visual-studio-code

echo "----- install keepass ------"
brew install --cask keepassxc
cp ~/Git/mac-os-setup/org.keepassxc.keepassxc.plist ~/Library/Preferences/

# Backup
# cp ~/Library/Preferences/org.keepassxc.keepassxc.plist ~/Git/mac-os-setup/

echo "----- install github desktop ------"
brew install --cask caffeine

echo "----- install fira code ------"
brew tap homebrew/cask-fonts
brew install --cask font-fira-code

echo "----- open jdk 11 ------"
brew install openjdk@11
sudo ln -sfn $(brew --prefix)/opt/openjdk@11/libexec/openjdk.jdk /Library/Java/JavaVirtualMachines/openjdk-11.jdk

echo "----- installing maven ------"
brew install maven

echo "----- installing azure cli ------"
brew install azure-cli

echo "----- installing terraform cli ------"
brew install terraform

echo "----- installing utm ------"
brew install --cask utm
brew tap sidneys/homebrew
brew install aria2 cabextract wimlib cdrtools # sidneys/homebrew/chntpw

echo "----- installing figma ------"
brew install --cask figma

echo "----- installing hiddenbar ------"
brew install --cask hiddenbar

echo "----- installing mos ------"
brew install --cask mos

echo "----- installing alfred ------"
brew install --cask alfred

echo "----- installing rectangle ------"
brew install --cask rectangle

echo "----- installing amethyst ------"
brew install --cask amethyst
cp ~/Git/mac-os-setup/com.amethyst.Amethyst.plist ~/Library/Preferences/com.amethyst.Amethyst.plist

# Backup Amethyst
# cp ~/Library/Preferences/com.amethyst.Amethyst.plist ~/Git/mac-os-setup/com.amethyst.Amethyst.plist

echo "----- installing cheatsheet ------"
brew install --cask cheatsheet

echo "----- installing nmap ------"
brew install nmap

echo "----- installing alacritty terminal ------"
brew install --cask alacritty
mkdir ~/.config
mkdir ~/.config/alacritty
cp ~/Git/mac-os-setup/alacritty.yml ~/.config/alacritty/alacritty.yml

echo "----- install nvm ------"
brew install nvm
mkdir ~/.nvm
export NVM_DIR="$HOME/.nvm"
    [ -s "$(brew --prefix)/opt/nvm/nvm.sh" ] && \. "$(brew --prefix)/opt/nvm/nvm.sh" # This loads nvm
    [ -s "$(brew --prefix)/opt/nvm/etc/bash_completion.d/nvm" ] && \. "$(brew --prefix)/opt/nvm/etc/bash_completion.d/nvm" # This loads nvm bash_completion

echo "----- install node lts ------"
nvm install --lts 

echo "----- update npm ------"
npm i npm -g

echo "----- npm allow legacy dependencies ------"
npm config set legacy-peer-deps true

echo "----- installing angular cli ------"
npm install -g @angular/cli

echo "----- installing eslint ------"
npm install -g eslint

echo "----- configuring git ------"
git config --global user.name kevinchatham
git config --global user.email 40923272+kevinchatham@users.noreply.github.com
git config --global init.defaultBranch main

echo "----- installing oh my zsh ------"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
cp calm.zsh-theme ~/.oh-my-zsh/themes/calm.zsh-theme 

echo "----- installing zsh auto suggestions ------"
git clone https://github.com/zsh-users/zsh-autosuggestions.git ~/.oh-my-zsh/plugins/zsh-autosuggestions

echo "----- installing zsh syntax highlighting ------"
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/plugins/zsh-syntax-highlighting

echo "----- configuring zshrc ------"
cp .zshrc ~/.zshrc

echo "----- cloning notes ------"
git clone https://github.com/kevinchatham/Notes.git ~

echo "----- configuring dock ------"
cp ~/Git/mac-os-setup/com.apple.dock.plist ~/Library/Preferences/com.apple.dock.plist
killall Dock

# Backup
# cp ~/Library/Preferences/com.apple.dock.plist ~/Git/mac-os-setup/com.apple.dock.plist