#!/bin/bash

RED="\e[31m"
END="\e[0m"

grep bindsym $HOME/.config/i3/config | awk {'print $2 " " $3 "--- " $4 $7'} | sed 's/exec//g' | sed 's/$mod/MOD /g' | column

echo -e "${RED}THIS IS SOME RED TEXT${END}"
