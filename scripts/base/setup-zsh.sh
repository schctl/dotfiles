#!/usr/bin/env sh

# Install zsh configs.
# Should be run separately after installing packages since installing zsh will replace
# these configs for some reason.

set -e

ABS_PATH=$(dirname $(realpath $0))/../

# Link zsh config
ln -s $ABS_PATH/zsh/zshrc  $HOME/.zshrc

# Link omz themes
for theme in $ABS_PATH/zsh/themes/*
do
    ln -s $theme $HOME/.oh-my-zsh/custom/themes/$(basename $theme)
done
