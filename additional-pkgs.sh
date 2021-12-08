#!/usr/bin/env sh

# Some extra packages I use frequently

set -e

PKGS="                       \
python                       \
python-dbus                  \
nautilus                     \
btop                         \
mtpfs gvfs-mtp gvfs-gphoto2  \
discord                      \
onefetch"

PKGS_AUR="             \
firefox-nightly        \
spotify spicetify-cli  \
jmtpfs
visual-studio-code-bin"

sudo pacman --noconfirm -S $(echo $PKGS)
paru --skipreview -S $(echo $PKGS_AUR)

sudo pacman --noconfirm -Rns $(pacman -Qdtq)
