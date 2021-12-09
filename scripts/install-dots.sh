#!/usr/bin/env sh

# This script links the files in this repo to their correct locations.

set -e

mkdir -p ~/.config
mkdir -p ~/Pictures/

ABS_PATH=$(dirname $(realpath $0))

ln  -s  $ABS_PATH/wall       $HOME/Pictures/Wallpapers
ln  -s  $ABS_PATH/.zshrc     $HOME/.zshrc
ln  -s  $ABS_PATH/.xinitrc   $HOME/.xinitrc
ln  -s  $ABS_PATH/rofi       $HOME/.config/rofi
ln  -s  $ABS_PATH/polybar    $HOME/.config/polybar
ln  -s  $ABS_PATH/picom      $HOME/.config/picom
ln  -s  $ABS_PATH/nvim       $HOME/.config/nvim
ln  -s  $ABS_PATH/i3         $HOME/.config/i3
ln  -s  $ABS_PATH/dunst      $HOME/.config/dunst
ln  -s  $ABS_PATH/alacritty  $HOME/.config/alacritty
