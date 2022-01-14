#!/bin/bash
# script to open config file to edit

TERMINAL="konsole"
EDITOR="sudoedit"
declare -A config

# add config file names here
config[rc]=~/.commonrc
config[profile]=~/.common_profile
config[nvim]=~/.config/nvim/init.vim
config[vim]=~/.vimrc
config[i3]=~/.i3/config
config[polybar]=~/.config/polybar/config
config[git]=~/.gitconfig
config[config_opener]=~/zack_setup_env/config_opener.sh
config[pacman]=/etc/pacman.conf

for c in "${!config[@]}"
do
    OPTIONS="${OPTIONS}\n${c}"
done
# choice=$(echo -e ${OPTIONS#"\n"} | sort | rofi -dmenu | cut -f 1)
choice=$(printf "%s\n" "${!config[@]}" | sort | rofi -dmenu | cut -f 1)
file=${config[$choice]}

if [[ ! -z "$choice" ]] && [ -f "$file" ];
    then $EDITOR $file
    # then $TERMINAL -e $EDITOR $file
else
    echo $file not found
fi

