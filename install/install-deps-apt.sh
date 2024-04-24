#!/bin/bash
sudo apt-get update -y && sudo apt-get upgrade -y

# zsh
sudo apt-get install zsh -y

# set default shell
sudo chsh -s /usr/bin/zsh

# oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

# TODO Install docker ?

# TODO Install tmux with WSL

# TODO Install nvim

# extra deps
sudo apt-get install fzf tldr -y