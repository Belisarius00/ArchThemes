#!/usr/bin/bash
killall polybar
#while pgrep -u $UID -x polybar >/dev/null; do sleep1; done
#CONFIG_DIR$(dirname $0)/themes/$THEME/config.ini
#polybar main -c $CONFIG_DIR &
polybar example 2>&1 | tee -a /tmp/polybar.log &
disown
