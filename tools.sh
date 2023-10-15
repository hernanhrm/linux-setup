#!/bin/bash

# install tweaks
sudo add-apt-repository universe
sudo apt -y install gnome-tweaks

## install chrome extension for gnome
sudo apt -y install chrome-gnome-shell

# Install homebrew's dependencies
sudo apt -y install build-essential procps curl file

# Install deepin system monitor GUI
sudo add-apt-repository ppa:ubuntudde-dev/stable
sudo apt update
sudo apt -y install deepin-system-monitor

# install screenshot app
sudo apt update
sudo apt -y install flameshot

# Install Main menu
sudo apt update
sudo apt -y install alacarte

# Install vim
sudo apt -y install vim

# Install fuse because it's required by jetbrains toolbox
sudo add-apt-repository universe
sudo apt -y install libfuse2
