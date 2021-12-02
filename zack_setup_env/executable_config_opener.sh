#!/bin/bash
# script to open config file to edit

TERMINAL="konsole"
EDITOR="nvim"
declare -A config

# add config file names here
config[vim]=~/.vimrc
config[i3]=~/.i3/config
config[alacritty]=~/.config/alacritty/alacritty.yml
config[picom]=~/.config/picom/picom.conf
config[polybar]=~/.config/polybar/config

for c in "${!config[@]}"
do
    OPTIONS="${OPTIONS}\n${c}"
done
# choice=$(echo -e ${OPTIONS#"\n"} | sort | rofi -dmenu | cut -f 1)
choice=$(printf "%s\n" "${!config[@]}" | sort | rofi -dmenu | cut -f 1)
file=${config[$choice]}

if [[ ! -z "$choice" ]] && [ -f "$file" ];
    then $EDITOR $file
else
    echo $file not found
fi

