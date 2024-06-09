# Check if Macbook Pro is connected
if xrandr | grep 'eDP-1 connected' &> /dev/null; then
  xrandr --newmode "3840x2160_30.00"  339.57  3840 4080 4496 5152  2160 2161 2164 2197  -hsync +vsync

  for port in $(xrandr | grep -o "^[DH][^ ]* "); do
    xrandr --addmode $port "3840x2160_30.00"
  done
fi

# i3 default terminal
export TERMINAL=wezterm

# fcitx
export GTK_IM_MODULE=fcitx
export QT_IM_MODULE=fcitx
export XMODIFIERS=@im=fcitx
export SDL_IM_MODULE=fcitx
export INPUT_METHOD=fcitx
export GLFW_IM_MODULE=ibus

xrdb -merge $HOME/.Xresources
exec i3

