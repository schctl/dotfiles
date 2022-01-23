#!/usr/bin/env sh

NOTIFY_ICON=/usr/share/icons/Papirus-Dark/32x32/apps/system-software-update.svg

update() {
    UPDATES=$(paru -Qu 2>/dev/null | wc -l);
}

notify() {
    if command -v notify-send &>/dev/null; then
        if (( UPDATES > 31 )); then
            notify-send -u normal -i $NOTIFY_ICON "$UPDATES New packages"
        elif (( UPDATES > 3 )); then
            notify-send -u low -i $NOTIFY_ICON "$UPDATES New packages"
        fi
    fi
}

while true; do
    update
    notify

    if (( UPDATES == 0 )); then
        echo " 0"
        sleep 240
    fi

    while (( UPDATES > 0 )); do
        echo " $UPDATES"
        sleep 16
        update
    done
done
