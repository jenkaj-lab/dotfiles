#!/bin/bash

# Download software/packages
packages=(
  hyprland  # tiling Wayland compositor
  xdg-desktop-portal-hyprland  # needed for hyprland functionality
  kitty  # terminal emulator
  chromium  # web browser
  nvim  # text editor
)

sudo pacman -S --needed --noconfirm "${packages[@]}"

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
