i3-msg "workspace 2; append_layout /home/zmann/.i3/.workspaces/uni.json"
lxterminal --working-directory=$HOME/Documents/universitaet &
sleep 3

i3-msg "workspace 3; append_layout /home/zmann/.i3/.workspaces/uni.json"
lxterminal --working-directory=$HOME/Documents/universitaet &
sleep 3

i3-msg "workspace 4"
iceweasel "https://rwth-aachen.sciebo.de/" "https://www3.elearning.rwth-aachen.de/l2p/foyer/" "https://www.campus.rwth-aachen.de/office/default.asp?sec=session"
sleep 14

i3-msg "workspace 8"
iceweasel -new-window https://web.whatsapp.com/ &
sleep 6

i3-msg "workspace 9; append_layout /home/zmann/.i3/.workspaces/spotify.json"

i3-msg "workspace 1"
