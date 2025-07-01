# i3 default terminal
export TERMINAL=wezterm

# fcitx
export GTK_IM_MODULE=fcitx
export QT_IM_MODULE=fcitx
export XMODIFIERS=@im=fcitx
export SDL_IM_MODULE=fcitx
export INPUT_METHOD=fcitx

# Required by kitty: https://github.com/kovidgoyal/kitty/issues/469
export GLFW_IM_MODULE=ibus

xrdb -merge $HOME/.Xresources


case $WM in
  dwm)
    eval $(dbus-launch --sh-syntax --exit-with-session)
    feh --bg-scale ~/Pictures/Wallpapers/dwm.jpg &
    dunst &
    fcitx5 --replace -d &
    slstatus &
    exec dwm
    ;;
  *)
    echo "Start default wm: i3"
    exec dbus-launch --exit-with-session i3
    ;;
esac
