#!/usr/bin/env bash

PACKAGES=(i3 i3status-rust polybar rofi-wayland rofi-calc i3wsr)

if [[ $# -eq 0 || $1 = "install" ]]; then
    paru -S --needed --noconfirm ${PACKAGES[@]}
elif [[ $1 = "remove" || $1 = "uninstall" ]]; then
    paru -Rns --noconfirm ${PACKAGES[@]}
fi


