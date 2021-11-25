#!/usr/bin/env sh

# This script installs some essential packages I use, using pacman.

set -e

mkdir -p ~/.config/
mkdir -p ~/Pictures/

ABS_PATH=$(dirname $(realpath $0))

REQUIRED_PKGS="                                      \
base-devel                                           \
xorg xorg-xinit                                      \
pipewire pipewire-pulse pipewire-alsa pipewire-jack  \
i3-gaps                                              \
feh                                                  \
dunst                                                \
alacritty                                            \
rofi                                                 \
zsh                                                  \
curl                                                 \
scrot                                                \
neovim                                               \
rustup                                               \
exa                                                  \
ripgrep                                              \
npm                                                  \
fd                                                   \
ttf-font-awesome noto-fonts-emoji"

REQUIRED_AUR_PKGS=" \
polybar             \
pfetch-git          \
picom-ibhagwan-git  \
nerd-fonts-mononoki nerd-fonts-roboto-mono ttf-vlgothic ttf-nerd-fonts-symbols-mono"

$ABS_PATH/install-dots.sh

sudo pacman --noconfirm -Syu
sudo pacman --noconfirm -S $REQUIRED_PKGS

# --- AUR ---

rustup default nightly

mkdir build
cd build

git clone https://aur.archlinux.org/paru.git
cd paru
makepkg -si

paru --skipreview -S $REQUIRED_AUR_PKGS

# --- Cleanup ---

cd $ABS_PATH
rm -rf build
sudo pacman --noconfirm -Rns $(pacman -Qdtq)

# --- Other ---

# vim-plug
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

# omz
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
