#!/usr/bin/env sh
# Install dotfiles

set -e

CONFIG=${XDG_CONFIG_HOME-$HOME/.config}
ROOT_PATH=$(dirname $(realpath $0))/../../

mkdir -p $CONFIG
mkdir -p $HOME/Pictures/screenshots

# Link config files
ln -s $ROOT_PATH/dotfiles/rofi           $CONFIG/rofi
ln -s $ROOT_PATH/dotfiles/polybar        $CONFIG/polybar
ln -s $ROOT_PATH/dotfiles/picom          $CONFIG/picom
ln -s $ROOT_PATH/dotfiles/i3             $CONFIG/i3
ln -s $ROOT_PATH/dotfiles/dunst          $CONFIG/dunst
ln -s $ROOT_PATH/dotfiles/alacritty      $CONFIG/alacritty
ln -s $ROOT_PATH/dotfiles/fish           $CONFIG/fish
ln -s $ROOT_PATH/dotfiles/starhsip.toml  $CONFIG/starship.toml
ln -s $ROOT_PATH/dotfiles/xinitrc        $HOME/.xinitrc

# Download wallpaper
wget https://unsplash.com/photos/64eOIfnh54E/download?ixid=MnwxMjA3fDB8MXxhbGx8fHx8fHx8fHwxNjUwNzgxMTY4&force=true&w=1920 -O $HOME/Pictures/Wallpapers/mountains.jpg
