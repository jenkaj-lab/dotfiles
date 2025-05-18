#!/bin/bash

# Download software/packages
sudo echo "[*] Downloading software/packages"
packages=(
  hyprland
  xdg-desktop-portal-hyprland
  foot
  firefox
  nvim
  rofi
  # yay
)
sudo pacman -S --needed --noconfirm "${packages[@]}"

# Backup dotfiles and create symbolic links to new configs
echo "[*] Installing dotfiles"
dotfiles=(
  ".bashrc"
  ".bash_profile"
  ".config"
)
for file in "${dotfiles[@]}"; do
  if [ -e ~/"$file" ]; then
    if [ ! -e ~/"$file~" ]; then
      # create a backup for a dotfile if a backup doesn't already exist
      echo "backing up $file"
      mv ~/"$file" ~/"$file~"
    fi
  fi

  # this line is purposely outside of the loop because it makes sure that symlinks are 
  # still created even if the files/directories don't exist in the user's home directory
  echo "installing $file"
  ln -sfn "$(pwd)/$file" ~/"$file"
done

# Use the new configs
source ~/.bashrc

# Install the nvim packer
packer_repo=https://github.com/wbthomason/packer.nvim
packer_dir=~/.local/share/nvim/site/pack/packer/opt/packer.nvim
if [ ! -e $packer_dir ]; then
  echo "[*] Downloading packer for nvim"
  git clone --depth 1 "$packer_repo" "$packer_dir"
fi

# NOTE: Ignore the warning, it's a deprecated package
# Ensure packer is loaded before using it
export PACKER_DIR="$packer_dir"

# Run PackerCompile and PackerInstall instead of PackerSync
nvim --headless \
  -c "lua require('alex.packer')" \
  -c "PackerCompile" \
  -c "PackerInstall" \
  -c "qa"

# Sync the packer packages
#nvim --headless "+source ~/.config/nvim/lua/alex/packer.lua" "+PackerSync" "+qa"
