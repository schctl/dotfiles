#!/usr/bin/env sh
# Some extra packages I use frequently

set -e

PKGS="                               \
    nautilus loupe                   \
    btop dust                        \
    python python-dbus               \
    mtpfs gvfs-mtp gvfs-gphoto2      \
    discord_arch_electron            \
    firefox-developer-edition"

PKGS_AUR="                           \
    downgrade                        \
    jmtpfs"

paru --sudoloop --skipreview -S $PKGS $PKGS_AUR
