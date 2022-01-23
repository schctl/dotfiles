#!/usr/bin/env sh

# Setup neovim

set -e

mkdir -p ~/.config

ABS_PATH=$(dirname $(realpath $0))/../

# Install neovim if its not already
# nodejs required by `vim-plug` and `coc.nvim`
sudo pacman -S neovim nodejs

# `vim-plug`
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

# Install config
ln -s $ABS_PATH/nvim $HOME/.config/nvim
