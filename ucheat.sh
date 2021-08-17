#!/bin/bash
#Script by Alden Garcia
#Verson 1.0.0
#https://github.com/rampus-bit

# File Sources
source ~/ucheat/subscripts/vars.sh

# i3 CS
if [[ $WM = i3 ]]
	then
		grep bindsym $HOME/.config/i3/config | awk {'print $2 " ~ " $3 $4 $7'} | sed 's/$mod/MOD/g' | sed 's/+/ + /g' | sed 's/exec//g' | column
	fi

# Qtile CS
if [[ $WM = qtile ]]
	then
		grep Key $HOME/.config/qtile/config.py | awk {'print $1 " " $2 $3 $4'} | sed 's/Key//g'| sed 's/([mod])/MOD/g' | sed 's/([alt])/Alt/g' |sed 's/from libqtile.configimportClick,//g' | sed 's/exec//g' | column
	fi

# Bspwm CS
if [[ $WM = bspwm ]]
	then
		grep super $HOME/.config/bspwm/sxhkd/sxhkdrc | awk {'print $2 " " $3 " --- " $4 $7'} | sed 's/$mod/MOD/g' | sed 's/+/ + /g' | sed 's/exec//g' | column
	fi

# DWM CS
if [[ $WM = dwm ]]
	then
		grep MODKEY $HOME/.config/suckless/dwm/config.def.h | awk {'print $2 " " $3 " --- " $4 $7'} | sed 's/$mod/MOD/g' | sed 's/+/ + /g' | sed 's/exec//g' | column
	fi
