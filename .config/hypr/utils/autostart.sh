#!/bin/sh

# Start nm-applet
nm-applet &

# Start blueman-applet
blueman-applet &

# Start dunst
killall dunst
dunst &

# Start waybar
waybar &

# waypaper --restore &
swaybg -i ~/Pictures/Wallpapers/2.jpg

# Start the display manager, as in what displays to use and how
kanshi &
flameshot &
