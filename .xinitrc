# fcitx5
export GTK_IM_MODULE=fcitx
export QT_IM_MODULE=fcitx
export XMODIFIERS=@im=fcitx
export SDL_IM_MODULE=fcitx
export INPUT_METHOD=fcitx
export GLFW_IM_MODULE=ibus

xrdb -merge $HOME/.Xresources

# use dbus-run-session to start i3, so that i3 can use dbus for notifications, file manager and other features
exec dbus-run-session i3
