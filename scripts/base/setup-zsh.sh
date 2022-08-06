#!/usr/bin/env sh
# Install zsh configs.
# Should be run separately after installing packages since installing zsh will replace
# these configs for some reason.

set -e

ROOT_PATH=$(dirname $(realpath $0))/../../

# Link zsh config
rm $ROOT_PATH/zsh/zshrc -f
ln -s $ROOT_PATH/zsh/zshrc $HOME/.zshrc

# Link omz themes
for theme in $ROOT_PATH/zsh/themes/*
do
    ln -s $theme $HOME/.oh-my-zsh/custom/themes/$(basename $theme)
done
