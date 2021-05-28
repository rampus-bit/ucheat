#!/bin/bash

# Probably Redundant Variables
# i3CS=$(grep bindsym $HOME/.config/i3/config | awk {'print $2 " " $3 "--- " $4 $7'} | sed 's/exec//g' | sed 's/$mod/MOD /g' | column)
# QtileCS=$(grep Key $HOME/.config/qtile/config.py | awk {'print $2 "" $3 "--- " $4 $7'} | column)
# DWMCS=$(grep -s XK_ $Home/.config/suckless/dwm/config.def.h | awk {'print $2 $3 $4 $7'})

# Colors
RED="\e[31m"
GREEN="\e[32m"
YELLOW="\e[33m"
BLUE="\e[34m"
MAGENTA="\e[35m"
CYAN="\e[36m"
GRAY="\e[90m"
WHITE="\e[97m"

LIGHTBLUE="\e[94m"

END="\e[0m"

# i3 CS
i3_CS() {
	echo -e "${LIGHTBLUE}i3 Cheat-Sheet:${END}"
	if [[ -f "$HOME/.config/i3/config" ]]
	then
		grep bindsym $HOME/.config/i3/config | awk {'print $2 " " $3 " --- " $4 $7'} | sed 's/$mod/MOD/g' | sed 's/+/ + /g' | sed 's/exec//g' | column
	else
		echo "You seem to not have i3 installed."
	fi
}

i3_CS

# Qtile CS
qtile_CS() {
	echo
	echo -e "${GREEN}Qtile Cheat-Sheet:${END}"
	if [[ -f "$HOME/.config/qtile/config.py" ]]
	then
		grep Key $HOME/.config/qtile/config.py | awk {'print $2 "" $3 "--- " $4 $7'} | column
	else
		echo "You seem to not have Qtile installed."
	fi
	echo
}

qtile_CS

#DWM CS
DWM_CS() {
	echo -e "${GRAY}DWM Cheat-Sheet:${END}"
	if [[ -f "$HOME/.config/suckless/dwm/config.def.h" ]]
	then
		echo $DWMCS
	else
		echo "You seem to not have DWM installed."
	fi
}

DWM_CS

# Old Code
# grep XK_ $HOME/.config/suckless/dwm/config.def.h | awk {'print $2 $3 $4 $7'}
# grep bindsym $HOME/.config/i3/config | awk {'print $2 " " $3 "--- " $4 $7'} | sed 's/exec//g' | sed 's/$mod/MOD /g' | column
# grep Key $HOME/.config/qtile/config.py | awk {'print $2 "" $3 "--- " $4 $7'}
