#!/usr/bin/env bash

# This bash script sets up the required files and plugins
# Assuming that tmux already exists in the system

CURRENT_DIRECTORY=$(pwd)

# Make a symbolic linkage to the tmux config file
ln -sf ${CURRENT_DIRECTORY}/.tmux.conf ~/.tmux.conf

# Add the TMUX Package Manager plugin -> to add other packages
git clone https://github.com/tmux-plugins/tpm  ~/.tmux/plugins/tpm

# Source the tmux config
tmux source ~/.tmux.conf
