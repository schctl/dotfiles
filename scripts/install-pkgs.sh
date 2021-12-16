#!/usr/bin/env sh

# Install required packages for this config

set -e

REQUIRED_PKGS="         \
    base-devel          \
    xorg xorg-xinit     \
    pipewire pipewire-pulse pipewire-alsa pipewire-jack  \
    i3-gaps             \
    feh                 \
    dunst               \
    alacritty           \
    rofi                \
    zsh                 \
    curl                \
    scrot               \
    git                 \
    neovim              \
    rustup              \
    exa                 \
    ripgrep             \
    npm                 \
    fd                  \
    ttf-font-awesome noto-fonts-emoji"

REQUIRED_AUR_PKGS="     \
    polybar             \
    pfetch-git          \
    picom-ibhagwan-git  \
    nerd-fonts-mononoki nerd-fonts-roboto-mono ttf-vlgothic ttf-nerd-fonts-symbols-mono"

install_pkgs() {
    sudo pacman --noconfirm -Syu
    sudo pacman --noconfirm -S $REQUIRED_PKGS
    # Setup rust
    rustup default stable
    # Cleanup
    sudo pacman --noconfirm -Rns $(pacman -Qdtq)
}

install_paru() {
    git clone https://aur.archlinux.org/paru.git
    # Build
    pushd /tmp/paru
    makepkg -si
    popd
    # Cleanup
    rm -rf /tmp/paru
}

install_aur_pkgs() {
    paru --skipreview -S $REQUIRED_AUR_PKGS
}

install_omz() {
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
}

install_pkgs
install_paru
install_aur_pkgs

echo -n "Install Oh My ZSH? [y/N]"
read omz

if [ "$omz" != "${omz#[Yy]}" ] ;then
    echo install_omz
fi
