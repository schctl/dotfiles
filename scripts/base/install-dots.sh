#!/usr/bin/env sh
# Install dotfiles

set -e

CONFIG=${XDG_CONFIG_HOME-$HOME/.config}
ROOT_PATH=$(realpath $(dirname $0)/../../)

mkdir -p $CONFIG
mkdir -p $HOME/Pictures/screenshots

# Link config files
ln -s $ROOT_PATH/dotfiles/rofi      $CONFIG/rofi
ln -s $ROOT_PATH/dotfiles/polybar   $CONFIG/polybar
ln -s $ROOT_PATH/dotfiles/picom     $CONFIG/picom
ln -s $ROOT_PATH/dotfiles/i3        $CONFIG/i3
ln -s $ROOT_PATH/dotfiles/dunst     $CONFIG/dunst
ln -s $ROOT_PATH/dotfiles/alacritty $CONFIG/alacritty
ln -s $ROOT_PATH/dotfiles/xinitrc   $HOME/.xinitrc

# Link zsh configs
$ROOT_PATH/scripts/base/setup-zsh.sh
