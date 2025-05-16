#!/bin/bash

# Overwrite existing dotfiles
ln -sf ~/dotfiles/.bashrc ~/.bashrc
ln -sf ~/dotfiles/.config ~/.config
source ~/.bashrc

# Download software/packages
sudo pacman -S --needed \
	nvim \
	kitty \
