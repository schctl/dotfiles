#!/usr/bin/env sh

NOTIFY_ICON=/usr/share/icons/Papirus/32x32/apps/system-software-update.svg

UPDATES=$(checkupdates | wc -l);

if hash notify-send &>/dev/null; then
    if (( UPDATES > 32 )); then
        notify-send -u normal -i $NOTIFY_ICON \
            "You should update soon" "$UPDATES New packages"
    elif (( UPDATES > 2 )); then
        notify-send -u low -i $NOTIFY_ICON \
            "$UPDATES New packages"
    fi
fi

while true; do
    # Check for updates every 5 minutes
    if (( UPDATES == 0 )); then
        echo " 0"
        sleep 300

    # Refresh more frequently to check
    # if updates are done
    elif (( UPDATES > 0 )); then
        echo " $UPDATES"
        sleep 10
    fi

    UPDATES=$(checkupdates | wc -l);
done
