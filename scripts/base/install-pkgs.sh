#!/usr/bin/env sh
# Install required packages for this config

set -e

REQUIRED_PKGS="      \
    base-devel       \
    xorg xorg-xinit  \
    pipewire pipewire-pulse pipewire-alsa pipewire-jack  \
    pacman-contrib   \
    i3-wm            \
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
    ttf-font-awesome noto-fonts-emoji ttf-mononoki-nerd ttf-roboto-mono-nerd"

REQUIRED_AUR_PKGS="  \
    polybar          \
    pfetch            \
    ttf-vlgothic ttf-nerd-fonts-symbols-1000-em"

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
