#!/bin/bash

# Colors
RED="\e[31m"
END="\e[0m"

# i3 CS
let i3CS=grep bindsym $HOME/.config/i3/config | awk {'print $2 " " $3 "--- " $4 $7'} | sed 's/exec//g' | sed 's/$mod/MOD /g' | column
echo $i3CS
#grep bindsym $HOME/.config/i3/config | awk {'print $2 " " $3 "--- " $4 $7'} | sed 's/exec//g' | sed 's/$mod/MOD /g' | column

# Qtile CS
echo "Qtile Cheat-Sheet"
# grep Key $HOME/.config/qtile/config.py | awk {'print $2 "" $3 "--- " $4 $7'}

# DWM CS
echo "DWM Cheat-Sheet"
DWMCS = grep XK_ $Home/.config/suckless/dwm/config.def.h | awk {'print $2 $3 $4 $7'}

if [[ -f "$HOME/.config/suckless/dwm/config.def.h" ]]
then
	echo "This file exists"
else
	echo "This file does not exist"
fi

grep XK_ $HOME/.config/suckless/dwm/config.def.h | awk {'print $2 $3 $4 $7'}

echo -e "${RED}THIS IS SOME RED TEXT${END}"
