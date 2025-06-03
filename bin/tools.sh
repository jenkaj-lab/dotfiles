# Download software/packages
sudo echo "[*] Downloading software/packages"
packages=(
  hyprland
  xdg-desktop-portal-hyprland
  foot
  firefox
  nvim
  rofi
  pulseaudio
  pavucontrol
  hyprpaper
  xclip
  # yay
)
sudo pacman -S --needed --noconfirm "${packages[@]}"

