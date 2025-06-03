# Use the new configs
source ~/.bashrc
systemctl --user enable pulseaudio
systemctl --user start pulseaudio

# Install the nvim packer
packer_repo=https://github.com/wbthomason/packer.nvim
packer_dir=~/.local/share/nvim/site/pack/packer/opt/packer.nvim
if [ ! -e $packer_dir ]; then
  echo "[*] Downloading packer for nvim"
  git clone --depth 1 "$packer_repo" "$packer_dir"
fi
