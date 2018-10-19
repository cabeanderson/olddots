#!/usr/bin/env sh

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done
 
# Launch bar
#polybar top &

for m in $(polybar --list-monitors | cut -d":" -f1); do
	MONITOR=$m polybar --reload top &
done

#my_laptop_external_monitor=$(xrandr --query | grep 'VGA1')
#if [[ $my_laptop_external_monitor = *connected* ]]; then
#    polybar top_external &
#fi