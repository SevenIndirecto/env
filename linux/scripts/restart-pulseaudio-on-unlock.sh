#!/bin/bash

dbus-monitor --session "type=signal,interface=com.canonical.Unity.Session" --profile \
| while read dbusmsg; do
    if [[ "$dbusmsg" =~ Unlocked$ || "$dbusmsg" =~ NameAcquired$ ]] ; then
        sleep 5
        pulseaudio -k
        # TODO: Remove this notification once we know this is working...
        notify-send "$(basename $0)" "Restarted pulseaudio"
    fi
done
