#!/bin/bash

sudo apt -y install zsh
sh -c "$(wget https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"

echo "eval \"\$($(brew --prefix)/bin/brew shellenv)\"" >> ~/.zshrc
source ~/.zshrc
