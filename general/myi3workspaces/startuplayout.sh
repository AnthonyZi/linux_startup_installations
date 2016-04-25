#!/bin/bash

i3-msg "workspace 1; append_layout /home/zmann/.i3/.workspaces/workspace-1.json"
lxterminal &
iceweasel &
sleep 10

i3-msg "workspace 10; append_layout /home/zmann/.i3/.workspaces/workspace-10.json"
sleep 1
i3-msg "workspace 1"

/home/zmann/.i3/.workspaces/checkuseconfig.sh &

sleep 120
echo no > ~/.i3/.workspaces/useconfig
