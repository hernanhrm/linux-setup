#!/bin/bash

rm -rf ~/.config/nvim
rm -rf ~/.local/share/nvim

git clone https://github.com/NvChad/NvChad ~/.config/nvim --depth 1 && nvim
git clone git@github.com:hernanhrm/nvchad.custom.git ~/code/personal 
ln -s ~/code/personal/nvchad.custom /home/hernan/.config/nvim/lua/custom
