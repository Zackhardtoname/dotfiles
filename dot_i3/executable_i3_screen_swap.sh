
#!/bin/sh
# requires jq

stick_to="name" && cmd="workspace"      	# stick to the workspace
# stick_to="output" && cmd="focus output" 	# stick to the screen

initial=$(
	i3-msg -t get_workspaces |
	jq -r ".[] | select(.focused == true) | .$stick_to"
)

py_script=$(cat <<EOF
import sys
from numpy import roll
s, w = [], []
for l in sys.stdin.readlines():
	screen, workspace = l.strip().split(':', maxsplit=1)
	s.append(screen)
	w.append(workspace)
for line in zip(s, roll(s,1), w, roll(w, -1)):
	print(' '.join(line))
EOF
)

i3-msg -t get_outputs |
jq -r '.[] | select(.active == true) | "\(.name):\(.current_workspace)"' |
python3 -c "$py_script" |
while read -r screen_src screen_dst workspace_tgt workspace_final
do
	i3-msg -- workspace --no-auto-back-and-forth "$workspace_tgt"
	i3-msg move workspace to output "$screen_dst"
	i3-msg focus output "$screen_src"
	i3-msg -- workspace --no-auto-back-and-forth "$workspace_final"
	echo "moved $workspace_tgt to $screen_dst"
	echo "and restored focus to $workspace_final"
done

i3-msg $cmd $initial
