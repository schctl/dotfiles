#!/usr/bin/env sh
set -e

# Full system setup script for arch based systems.
# Assumes you have a video driver, git and sudo installed.

mkdir -p ~/.config
mkdir -p ~/Pictures/

ABS_PATH=$(dirname $(realpath $0))

REQUIRED_PKGS="\
base-devel \
xorg xorg-xinit \
pipewire pipewire-pulse pipewire-alsa pipewire-jack \
i3-gaps \
feh \
dunst \
alacritty \
rofi \
picom \
zsh \
curl \
scrot \
neovim \
rustup \
exa \
ripgrep \
npm \
ttf-font-awesome noto-fonts-emoji"

REQUIRED_AUR_PKGS="\
polybar \
pfetch-git \
nerd-fonts-mononoki nerd-fonts-roboto-mono ttf-vlgothic"

$ABS_PATH/install-dots.sh

sudo pacman --noconfirm -Syu
sudo pacman --noconfirm -S $REQUIRED_PKGS

# paru and AUR
# ============

rustup default stable

mkdir build
cd build

git clone https://aur.archlinux.org/paru.git
cd paru
makepkg -si

paru --skipreview -S $REQUIRED_AUR_PKGS

# Cleanup
# =======

cd $ABS_PATH
rm -rf build
sudo pacman --noconfirm -Rns $(pacman -Qdtq)

# Other
# =====

# vim-plug
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# omz
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
