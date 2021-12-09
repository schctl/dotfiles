#!/usr/bin/env sh

set -e

chosen="$(rofi -dmenu\
		-i\
		-no-fixed-num-lines\
		-p "Do you really want to exit i3? : "\
		-theme ~/.config/rofi/exit-i3.rasi | tr '[:upper:]' '[:lower:]')"

case $chosen in
    "y"|"yes")
        i3-msg exit ;;
esac
