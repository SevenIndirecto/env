if ps aux | grep "[t]erminator" > /dev/null
 then xdotool windowactivate $(xdotool search --onlyvisible --class terminator | tail -1)
 else terminator &
fi
