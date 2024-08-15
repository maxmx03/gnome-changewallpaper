#!/bin/bash

export DISPLAY=:0
export DBUS_SESSION_BUS_ADDRESS=unix:path=/run/user/1000/bus
declare images random_index

images=($(ls "$HOME/Imagens"))
images_len=${#images[@]}
random_index=$((RANDOM % "$images_len"))
image=${images["$random_index"]}

gsettings set org.gnome.desktop.background picture-uri ""
gsettings set org.gnome.desktop.background picture-uri-dark file://$HOME/Imagens/$image

