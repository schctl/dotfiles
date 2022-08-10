#!/usr/bin/env sh
# Software development tools

set -e

ROOT_PATH=$(dirname $(realpath $0))/../../../

PKGS="         \
    onefetch   \
    gping      \
    hyperfine  \
    just"

PKGS_AUR="visual-studio-code-bin"

sudo pacman --noconfirm -S $PKGS
paru --skipreview -S $PKGS_AUR

$ROOT_PATH/scripts/extra/dev/cargo.sh
$ROOT_PATH/scripts/extra/dev/nvim.sh
