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
exec i3

