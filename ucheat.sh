#!/bin/bash
#Script by Alden Garcia
#Verson 1.0.0
#https://github.com/rampus-bit

# Variables
WM=$DESKTOP_SESSION

# Colors
RED="\e[31m"

LIGHTBLUE="\e[94m"

END="\e[0m"

# i3 CS
if [[ $WM = i3 ]]
	then
		echo -e "${LIGHTBLUE}i3 Cheat-Sheet:${END}"
		grep bindsym $HOME/.config/i3/config | awk {'print $2 " --- " $3 $4 $7'} | sed 's/$mod/MOD/g' | sed 's/+/ + /g' | sed 's/exec//g' | column
	fi

# Qtile CS
if [[ $WM = qtile ]]
	then
		echo -e "${LIGHTBLUE}Qtile Cheat-Sheet:${END}"
		grep Key $HOME/.config/qtile/config.py | awk {'print $1 " " $2 $3 $4'} | sed 's/Key//g'| sed 's/([mod])/MOD/g' | sed 's/([alt])/Alt/g' |sed 's/from libqtile.configimportClick,//g' | sed 's/exec//g' | column
	fi

# Bspwm CS
if [[ $WM = bspwm ]]
	then
		echo -e "${LIGHTBLUE}Bspwm Cheat-Sheet:${END}"
		grep super $HOME/.config/bspwm/sxhkd/sxhkdrc | awk {'print $2 " " $3 " --- " $4 $7'} | sed 's/$mod/MOD/g' | sed 's/+/ + /g' | sed 's/exec//g' | column
	fi

# DWM CS
if [[ $WM = dwm ]]
	then
		echo -e "${LIGHTBLUE}DWM Cheat-Sheet:${END}"
		grep MODKEY $HOME/.config/suckless/dwm/config.def.h | awk {'print $2 " " $3 " --- " $4 $7'} | sed 's/$mod/MOD/g' | sed 's/+/ + /g' | sed 's/exec//g' | column
	fi

# STORE EVERYTHING OUTSIDE OF A VARIABLE MORON, JUST CALL IT WITH
# AN IF STATEMENT EXCLUDING THE ECHO. MASSIVE DUNCE.
