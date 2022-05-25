#!/usr/bin/env sh

# Install dotfiles

set -e

CONFIG=${XDG_CONFIG_HOME-$HOME/.config}
ABS_PATH=$(dirname $(realpath $0))/../

mkdir -p $CONFIG
mkdir -p $HOME/Pictures/screenshots

# Link config files
ln -s $ABS_PATH/rofi      $CONFIG/rofi
ln -s $ABS_PATH/polybar   $CONFIG/polybar
ln -s $ABS_PATH/picom     $CONFIG/picom
ln -s $ABS_PATH/i3        $CONFIG/i3
ln -s $ABS_PATH/dunst     $CONFIG/dunst
ln -s $ABS_PATH/alacritty $CONFIG/alacritty
ln -s $ABS_PATH/xinitrc   $HOME/.xinitrc
# Link zsh configs
$ABS_PATH/scripts/base/setup-zsh.sh

# Download wallpaper
wget https://unsplash.com/photos/64eOIfnh54E/download?ixid=MnwxMjA3fDB8MXxhbGx8fHx8fHx8fHwxNjUwNzgxMTY4&force=true&w=1920 -O ~/Pictures/Wallpapers/mountains.jpg
