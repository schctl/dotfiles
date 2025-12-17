#!/usr/bin/env sh
# Install zsh configs.
# Should be run separately after installing packages since installing zsh will replace
# these configs for some reason.

set -e

ROOT_PATH=$(realpath $(dirname $0)/../../)

# Run omz installer
install_omz() {
    rm -rf $HOME/.oh-my-zsh
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
}

# Link omz themes
link_themes() {
    mkdir -p $HOME/.oh-my-zsh/custom/themes
    for theme in $ROOT_PATH/dotfiles/zsh/themes/*
    do
        ln -s $theme $HOME/.oh-my-zsh/custom/themes/$(basename $theme)
    done
}

setup_zsh_autosuggestions() {
    git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
}

# Link zsh config
link_configs() {
    rm -f $HOME/.zshrc*
    ln -s $ROOT_PATH/dotfiles/zsh/zshrc $HOME/.zshrc
}

install_omz
link_themes
link_configs
setup_zsh_autosuggestions
