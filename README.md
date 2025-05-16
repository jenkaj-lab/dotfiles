For hyprland documentation see https://wiki.hyprland.org/Getting-Started/Master-Tutorial/

First time install

Install these programs
kitty
nvim


# NVIM

First time launch? Run:
```
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/opt/packer.nvim
```

Then in nvim use 
```
:source ~/.config/nvim/lua/alex/packer.lua
:PackerSync
```
