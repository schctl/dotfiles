#!/usr/bin/env sh

# Setup spotify

set -e

CONFIG=${XDG_CONFIG_HOME-$HOME/.config}

mkdir -p $CONFIG
pushd /tmp

# Install spotify and spicetify
paru --skipreview -S spotify spicetify-cli

# Spicetify-themes
git clone https://github.com/morpheusthewhite/spicetify-themes.git
cp -r ./spicetify-themes/* $CONFIG/spicetify/Themes
rm -rf spicetify-themes

spicetify config current_theme Sleek
spicetify config color_scheme Nord
spicetify config extensions bookmark.js
spicetify config extensions fullAppDisplay.js
spicetify config extensions popupLyrics.js
spicetify apply

popd # /tmp
