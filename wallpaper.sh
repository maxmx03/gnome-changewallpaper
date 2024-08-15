#!/bin/bash

export DISPLAY=:0
export DBUS_SESSION_BUS_ADDRESS=unix:path=/run/user/1000/bus
declare wallpapers wallpaper total_wallpapers random_index

wallpapers=($HOME/Wallpapers/*)
total_wallpapers=${#wallpapers[@]}
random_index=$((RANDOM % "$total_wallpapers"))
wallpaper=${wallpapers["$random_index"]}

gsettings set org.gnome.desktop.background picture-uri ""
gsettings set org.gnome.desktop.background picture-uri-dark file://$wallpaper
