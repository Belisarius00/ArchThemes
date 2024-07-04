#!/bin/bash

#Define the path to the themes directory
THEMES_DIR="$HOME/.themes"
#List all available themes
echo "Available themes: "
ls "$THEMES_DIR"
#Prompt the user to select a theme
read -p "Enter theme name: " THEME_NAME
#Check if THEME_NAME exists
if [ ! -d "$THEMES_DIR/$THEME_NAME"]; then
	echo "Error: Theme '$THEME_NAME' not found!"
	exit 1
fi
#Remove existing configs
rm -rf "$HOME/.config/"
#Copy configs to .config
cp -r "$THEMES_DIR/$THEME_NAME" "$HOME/.config"
#Restart apps
i3-msg restart
echo "Theme '$THEME_NAME' applied successfully!"
