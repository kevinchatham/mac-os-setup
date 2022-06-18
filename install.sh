#!/usr/bin/env bash

echo "----- hide all desktop icons ------"
defaults write com.apple.finder CreateDesktop false
killall Finder

echo "----- install homebrew ------"
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> $HOME/.zprofile;
eval "$(/opt/homebrew/bin/brew shellenv)"

echo "----- install github desktop ------"
brew install --cask github

echo "----- install vs code ------"
brew install --cask visual-studio-code

echo "----- install keepass ------"
brew install --cask keepassxc

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

echo "----- installing alfred ------"
brew install --cask alfred

echo "----- installing rectangle ------"
brew install --cask rectangle

echo "----- installing cheatsheet ------"
brew install --cask cheatsheet

echo "----- installing notes ------"
curl -Ls https://raw.githubusercontent.com/pimterry/notes/latest-release/install.sh

echo "----- installing alacritty terminal ------"
brew install --cask alacritty
mkdir ~/.config
mkdir ~/.config/alacritty
cp ./alacritty.yml ~/.config/alacritty/alacritty.yml

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

echo "----- installing oh my zsh ------"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
cp calm.zsh-theme ~/.oh-my-zsh/themes/calm.zsh-theme 

echo "----- installing zsh auto suggestions ------"
git clone https://github.com/zsh-users/zsh-autosuggestions.git ~/.oh-my-zsh/plugins/zsh-autosuggestions

echo "----- installing zsh syntax highlighting ------"
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/plugins/zsh-syntax-highlighting

echo "----- configuring zshrc ------"
cp .zshrc ~/.zshrc