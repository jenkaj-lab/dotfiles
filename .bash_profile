#
# ~/.bash_profile
#
if [ -z "$WAYLAND_DISPLAY" ] && [ "$XDG_VTNR" -eq 1 ]; then
  exec hyprland
fi

[[ -f ~/.bashrc ]] && . ~/.bashrc
