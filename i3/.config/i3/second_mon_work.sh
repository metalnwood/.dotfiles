#!/bin/bash

swaymsg -p -t get_outputs | grep -c -E "DP-1.*focused"

if [ $? -eq 0 ];
then
    swaymsg workspace number $1
    swaymsg focus output right
else
    swaymsg workspace number $1
fi
