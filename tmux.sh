#!/bin/bash

# plugins manager
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

config="# Unbind r and bind r to source ~/.tmux.conf
unbind r
bind r source-file ~/.tmux.conf

# Configure TMUX settings
setw -g mode-keys vi
bind-key h select-pane -L
bind-key j select-pane -D
bind-key k select-pane -U
bind-key l select-pane -R

# List of plugins
set -g @plugin 'christoomey/vim-tmux-navigator'
set -g @plugin 'tmux-plugins/tmux-resurrect'

# Theme
# set -g @plugin 'catppuccin/tmux'
# set -g @catppuccin_flavour 'mocha' # or frappe, macchiato, mocha
set -g @plugin 'wfxr/tmux-power'
set -g @tmux_power_theme 'violet'
set -g @tmux_power_theme '#d0a9e5'
set window-style 'fg=#171421,bg=#ffffff'

set -g status-position top
set -g default-terminal 'tmux-256color'
set -ag terminal-overrides ',xterm-256color:RGB'
set -g @plugin 'thuanOwa/tmux-fzf-session-switch'
set-option -g @fzf-goto-session-only 'true'
set -g @plugin 'tmux-plugins/tpm'
set -g @plugin 'sainnhe/tmux-fzf'

# Initialize TMUX package manager (keep this line at the very bottom of tmux.conf)
run '~/.tmux/plugins/tpm/tpm'
"

touch ~/.tmux.conf
echo "$config" > ~/.tmux.conf
