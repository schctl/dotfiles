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

paru --sudoloop --skipreview -S $PKGS $PKGS_AUR
