# My dotfiles
I've tried different Operating Systems (OS), I've tried different distributions, and I've tried different Desktop Environments (DE). I never really felt like I had full control or how my computer looks and feels, and I think that's largely due to the fact that I'm a bit of a minimalist. But on top of that, I really enjoy customizing my experience. So because of that I've decided to make my own dotfiles and start with a minimal Arch Linux install. That is what inspired this repo, and that is what it is designed for.

Because I like a minimalistic feel, most of this setup is based around the usage of the terminal and key bindings.

## Includes
Wayland display server in conjunction with Hyprland tiling window manager to create a custom Graphical User Interface (GUI) experience, combined with the following packages:

- Kitty terminal emulator
- NVIM text editor
- Waybar taskbar

For hyprland documentation see https://wiki.hyprland.org/Getting-Started/Master-Tutorial/

## How to Use
Download the files into the ~/dotfiles directory. Create the dotfiles directory if it doesn't exist, but make sure it's in your user's home directory.

Then just run the setup script.

I need to change this script to just append new data rather than remove everything, but this is good for my use case for now.

The script will automatically:
- install all necessary software and packages
- replace old dotfiles and dotdirectories
- source the necessary files
- configure nvim for first time usage

If you'd prefer you can just skip this script and manually move or copy all the files.