#!/bin/bash

options="Logout\nShutdown\nReboot"

chosen=$(echo -e "$options" | rofi -dmenu -p "Power Menu" -width 20 -lines 3 -theme ~/.config/rofi/powermenu.rasi)

case "$chosen" in
	"Logout")
		i3-msg exit;;
	"Shutdown")
		sudo shutdown now;;
	"Reboot")
		sudo reboot now;;
esac
