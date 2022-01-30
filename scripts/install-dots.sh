#!/usr/bin/env sh

# Install dotfiles

set -e

CONFIG=${XDG_CONFIG_HOME-$HOME/.config}
ABS_PATH=$(dirname $(realpath $0))/../

mkdir -p $CONFIG
mkdir -p $HOME/Pictures/

ln -s $ABS_PATH/wall      $HOME/Pictures/Wallpapers
ln -s $ABS_PATH/.zshrc    $HOME/.zshrc
ln -s $ABS_PATH/.xinitrc  $HOME/.xinitrc
ln -s $ABS_PATH/rofi      $CONFIG/rofi
ln -s $ABS_PATH/polybar   $CONFIG/polybar
ln -s $ABS_PATH/picom     $CONFIG/picom
ln -s $ABS_PATH/i3        $CONFIG/i3
ln -s $ABS_PATH/dunst     $CONFIG/dunst
ln -s $ABS_PATH/alacritty $CONFIG/alacritty

## Use the `setup-nvim` script to configure neovim properly
# ln -s $ABS_PATH/nvim $CONFIG/nvim
