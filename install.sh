#!/bin/bash

mkdir ~/code/personal -p
mkdir ~/go/pkg -p
mkdir ~/go/src -p
mkdir ~/go/bin -p

sudo add-apt-repository ppa:agornostal/ulauncher && sudo apt update && sudo apt install ulauncher

./git.sh
./ssh.sh
./node.sh
./alacritty.sh
./tools.sh
./homebrew.sh
./tmux.sh
./neovim.sh
./zsh.sh
