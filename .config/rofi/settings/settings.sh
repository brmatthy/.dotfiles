#!/usr/bin/env bash

# Current Theme
dir="$HOME/.dotfiles/.config/rofi/settings/"
theme='settings'

# Options
wifi='󱚾'
audio=''
display='󰍺'

# Rofi CMD
rofi_cmd() {
	rofi -dmenu \
		-p "Settings" \
		-mesg " Settings" \
		-theme ${dir}/${theme}.rasi
}

# Pass variables to rofi dmenu
run_rofi() {
	echo -e "$wifi\n$audio\n$display" | rofi_cmd
}

# Actions
chosen="$(run_rofi)"
case ${chosen} in
    $wifi)
		kitty -e nmtui
        ;;
    $audio)
		pavucontrol
        ;;
    $display)
		nmtui
        ;;
esac
