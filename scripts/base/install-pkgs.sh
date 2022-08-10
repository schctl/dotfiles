#!/usr/bin/env sh
# Install required packages for this config

set -e

REQUIRED_PKGS="      \
    base-devel       \
    xorg xorg-xinit  \
    pipewire pipewire-pulse pipewire-alsa pipewire-jack  \
    pacman-contrib   \
    i3-gaps          \
    picom            \
    feh              \
    dunst            \
    alacritty        \
    rofi             \
    zsh              \
    curl             \
    scrot            \
    git              \
    neovim           \
    rustup           \
    exa              \
    ripgrep          \
    npm              \
    fd               \
    wget             \
    ttf-font-awesome noto-fonts-emoji"

REQUIRED_AUR_PKGS="  \
    polybar          \
    nitch            \
    nerd-fonts-mononoki nerd-fonts-roboto-mono ttf-vlgothic ttf-nerd-fonts-symbols-mono"

install_pkgs() {
    sudo pacman --noconfirm -Syu
    sudo pacman --noconfirm -S $REQUIRED_PKGS
    # Setup rust
    rustup default stable
}

install_paru() {
    git clone https://aur.archlinux.org/paru.git /tmp/paru
    pushd /tmp/paru
    # Build
    makepkg -si
    popd
    # Cleanup
    rm -rf /tmp/paru
}

install_aur_pkgs() {
    paru --skipreview -S $REQUIRED_AUR_PKGS
}

install_pkgs
install_paru
install_aur_pkgs
