# fcitx5
export GTK_IM_MODULE=fcitx
export QT_IM_MODULE=fcitx
export XMODIFIERS=@im=fcitx
export SDL_IM_MODULE=fcitx
export INPUT_METHOD=fcitx
export GLFW_IM_MODULE=ibus

xrdb -merge $HOME/.Xresources

# Use a case statement to check the first command-line argument ($1).
# $1 is the word that you type after the "startx" command.
case "$1" in
  dwm)
    exec dbus-run-session ~/.local/bin/startdwm
    ;;
  *)
    exec dbus-run-session i3
    ;;
esac
