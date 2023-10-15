#!/bin/bash

sudo apt install cmake pkg-config libfreetype6-dev libfontconfig1-dev libxcb-xfixes0-dev libxkbcommon-dev python3
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
source ~/.bashrc
cargo install alacritty

npm i -g alacritty-themes

mkdir ~/.config/alacritty -p
touch ~/.config/alacritty/alacritty.yml

config="
# ~/.config/alacritty/alacritty.yml
#
env:
  TERM: xterm-256color

live_config_reload: true

window:
  padding:
    x: 10
    y: 10
  dynamic_padding: false
  decorations: full
  opacity: 1

font:
  normal:
    family: JetBrainsMono Nerd Font
    style: Regular

  size: 12
colors:
  # Default colors
  primary:
    background: '0x1E1D2F'
    foreground: '0xD9E0EE'

  cursor:
    text: '0x1E1D2F'
    cursor: '0xF5E0DC'

  # Normal colors
  normal:
    black: '0x6E6C7E'
    red: '0xF28FAD'
    green: '0xABE9B3'
    yellow: '0xFAE3B0'
    blue: '0x96CDFB'
    magenta: '0xF5C2E7'
    cyan: '0x89DCEB'
    white: '0xD9E0EE'

  # Bright colors
  bright:
    black: '0x988BA2'
    red: '0xF28FAD'
    green: '0xABE9B3'
    yellow: '0xFAE3B0'
    blue: '0x96CDFB'
    magenta: '0xF5C2E7'
    cyan: '0x89DCEB'
    white: '0xD9E0EE'

  indexed_colors:
    - { index: 16, color: '0xF8BD96' }
    - { index: 17, color: '0xF5E0DC' }
theme: Catppuccin
"

echo "$config" > ~/.config/alacritty/alacritty.yml
