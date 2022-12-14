#!/usr/bin/bash

if [ -z $1 ]; then
	echo "Usage: $0 <name of hidden scratchpad window>"
	exit 1
fi
    
pids=$(xdotool search --name ${1})
if [ -z $pids ]; then
    alacritty --class ${1} -t ${1} &
fi

for pid in $pids; do
	echo "Toggle $pid"
	bspc node $pid --flag hidden -f
done