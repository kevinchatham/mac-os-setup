#!/usr/bin/env bash

echo "----- install homebrew ------"
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> $HOME/.zprofile;
eval "$(/opt/homebrew/bin/brew shellenv)"

echo "----- install fira code ------"
brew tap homebrew/cask-fonts
brew install --cask font-fira-code

echo "----- installing alacritty terminal ------"
brew install --cask alacritty
mkdir ~/.config
mkdir ~/.config/alacritty
cp ./alacritty.yml ~/.config/alacritty/alacritty.yml

echo "----- installing oh my zsh ------"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
cp calm.zsh-theme ~/.oh-my-zsh/themes/calm.zsh-theme 

echo "----- installing zsh auto suggestions ------"
git clone https://github.com/zsh-users/zsh-autosuggestions.git ~/.oh-my-zsh/plugins/zsh-autosuggestions

echo "----- installing zsh syntax highlighting ------"
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/plugins/zsh-syntax-highlighting

echo "----- configuring zshrc ------"
cp .zshrc ~/.zshrc