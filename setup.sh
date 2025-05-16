#!/bin/bash

# Download software/packages
# Tiling wayland compositor: hyprland
# Hyprland fix: xdg-desktop-portal-hyprland
# Text editor: nvim
# Terminal: kitty
# Browser: chromium
sudo pacman -S --needed \
	hyprland \
 	xdg-desktop-portal-hyprland \ 
 	nvim \ 
	kitty \
 	chromium

# Overwrite existing dotfiles
cp -f ~/dotfiles/.bashrc ~/.bashrc
cp -rf ~/dotfiles/.config ~/.config

# Use the new configs
source ~/.bashrc

# Install the nvim packer
#git clone --depth 1 https://github.com/wbthomason/packer.nvim\
# ~/.local/share/nvim/site/pack/packer/opt/packer.nvim

# Sync the packer packages
# nvim --headless "+source ~/.config/nvim/lua/alex/packer.lua" "+PackerSync" "+qa"
