#!/bin/bash

# Download software/packages
packages=(
  hyprland  # tiling Wayland compositor
  xdg-desktop-portal-hyprland  # needed for hyprland functionality
  kitty  # terminal emulator
  chromium  # web browser
  nvim  # text editor
  wofi # app launcher
  yay # AUR helper
)

sudo pacman -S --needed --noconfirm "${packages[@]}"

# Replace existing dotfiles
cp ~/dotfiles/.bashrc ~/.bashrc
cp ~/dotfiles/.bash_profile ~/.bash_profile
cp -r ~/dotfiles/.config ~/.config

# Use the new configs
source ~/.bashrc

# Install the nvim packer
#git clone --depth 1 https://github.com/wbthomason/packer.nvim\
# ~/.local/share/nvim/site/pack/packer/opt/packer.nvim

# Sync the packer packages
# nvim --headless "+source ~/.config/nvim/lua/alex/packer.lua" "+PackerSync" "+qa"
