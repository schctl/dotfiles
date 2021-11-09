#!/usr/bin/env sh
set -e

# Extra packages I use frequently

PKGS="\
python \
python-dbus \
nautilus \
bottom \
mtpfs gvfs-mtp gvfs-gphoto2 \
discord \
onefetch"

PKGS_AUR="\
firefox-nightly \
spotify spicetify-cli \
jmtpfs
visual-studio-code-bin"

sudo pacman --noconfirm -S $(echo $PKGS)
paru --skipreview -S $(echo $PKGS_AUR)

sudo pacman --noconfirm -Rns $(pacman -Qdtq)
