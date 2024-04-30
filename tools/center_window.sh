#!/bin/bash
# requiers jq: $ brew install jq

# Path to temp flag file
flag_file="/tmp/yabai_center_window_flag"

# Query for the ammount of windows on space
window_count=$(yabai -m query --windows --space | jq 'length')

# Check if flag exists
if [ -f "$flag_file" ]; then
	# If flag exists restore default
	yabai -m space --padding abs:12:12:12:12
	rm "$flag_file"
else
	# Center window
	if [ "$window_count" -eq 1 ]; then
		yabai -m space --padding abs:12:12:300:300
		touch "$flag_file"
	else
		yabai -m space --padding abs:12:12:12:12
	fi
fi
