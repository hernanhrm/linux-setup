#!/bin/bash

sudo apt -y install zsh
sh -c "$(wget https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"

echo "eval \"\$($(brew --prefix)/bin/brew shellenv)\"" >> ~/.zshrc
echo "export GOROOT=/home/linuxbrew/.linuxbrew/Cellar/go/1.21.3" >> ~/.zshrc
echo "export GOPATH=$HOME/go" >> ~/.zshrc
echo -e "bindkey -s '^f' 'tmux-sessionizer\n" >> ~/.zshrc
echo -e "eval \"\$(starship init zsh)\"" >> ~/.zshrc

source ~/.zshrc
