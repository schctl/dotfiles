#!/usr/bin/env sh

set -e

chosen="$(rofi -dmenu\
		-i\
		-no-fixed-num-lines\
		-p "Exit i3? [y/N]: "\
		-theme ~/.config/rofi/exit-i3.rasi | tr '[:upper:]' '[:lower:]')"

case $chosen in
    "y"|"yes")
        i3-msg exit ;;
esac
