#!/usr/bin/env sh
# Some extra packages I use frequently

set -e

PKGS="              \
    python          \
    python-dbus     \
    nautilus        \
    btop            \
    dust            \
    mtpfs gvfs-mtp gvfs-gphoto2  \
    discord_arch_electron"

PKGS_AUR="          \
    firefox-nightly \
    jmtpfs"

sudo pacman --noconfirm -S $PKGS
paru --skipreview -S $PKGS_AUR
