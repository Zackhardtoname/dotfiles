#!/bin/bash
# A script to open a config file to edit

TERMINAL="konsole"
EDITOR="nvim"
declare -A config

# add config file names here
config[config_opener]=~/zack_setup_env/config_opener.sh
config[git]=~/.gitconfig
config[ssh]=~/.ssh/config
config[i3]=~/.i3/config
config[i3blocks]=~/.config/i3blocks
config[pacman]=/etc/pacman.conf
config[polybar]=~/.config/polybar/config
config[profile]=~/.common_profile
config[rc]=~/.commonrc
config[nvim]=~/.config/nvim/init.vim
config[vim]=~/.vimrc

for c in "${!config[@]}"
do
  OPTIONS="${OPTIONS}\n${c}"
done
# choice=$(echo -e ${OPTIONS#"\n"} | sort | rofi -dmenu | cut -f 1)
choice=$(printf "%s\n" "${!config[@]}" | sort | rofi -dmenu | cut -f 1)
if [[ -v "config[$choice]" ]] ; then
  file=${config[$choice]}
fi

if [[ ! -z "$choice" ]] && [ -f "$file" ];
then $EDITOR $file
  # then $TERMINAL -e $EDITOR $file
elif [ -f "$file" ];
then echo $file not found
fi

