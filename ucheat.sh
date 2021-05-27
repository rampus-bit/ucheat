#!/bin/bash

# MIT License
#
# Copyright (c) 2021 Alden Garcia
#
# Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:
#
# The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.
#
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

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
echo -e "${LIGHTBLUE}i3 Cheat-Sheet:${END}"
if [[ -f "$HOME/.config/i3/config" ]]
then
	grep bindsym $HOME/.config/i3/config | awk {'print $2 " " $3 " --- " $4 $7'} | sed 's/$mod/MOD/g' | sed 's/+/ + /g' | sed 's/exec//g' | column
else
	echo "You seem to not have i3 installed."
fi

# Qtile CS
echo
echo -e "${GREEN}Qtile Cheat-Sheet:${END}"
if [[ -f "$HOME/.config/qtile/config.py" ]]
then
	grep Key $HOME/.config/qtile/config.py | awk {'print $2 "" $3 "--- " $4 $7'} | column
else
	echo "You seem to not have Qtile installed."
fi
echo

# DWM CS
echo -e "${GRAY}DWM Cheat-Sheet:${END}"
if [[ -f "$HOME/.config/suckless/dwm/config.def.h" ]]
then
	echo $DWMCS
else
	echo "You seem to not have DWM installed."
fi

echo

echo -e "${RED}THIS IS SOME RED TEXT${END}"
echo -e "${GRAY}THIS IS SOME YELLOW TEXT${END}"

# Old Code
# grep XK_ $HOME/.config/suckless/dwm/config.def.h | awk {'print $2 $3 $4 $7'}
# grep bindsym $HOME/.config/i3/config | awk {'print $2 " " $3 "--- " $4 $7'} | sed 's/exec//g' | sed 's/$mod/MOD /g' | column
# grep Key $HOME/.config/qtile/config.py | awk {'print $2 "" $3 "--- " $4 $7'}
