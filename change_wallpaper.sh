#!/bin/bash
#file=$(find ~/Imágenes/Wallpapers/Aleatorios/* -regex ".*\.\(jpg\|gif\|png\|jpeg\)" -type f -follow -print | sort -R | head -1)
file=$(find ~/Imágenes/Wallpapers/Aleatorios/* -regex ".*\.\(jpg\|gif\|png\|jpeg\)" -type f -follow -print | shuf -n1)
echo $file
#file=$(ls -dR ~/Imágenes/Wallpapers/Aleatorios/* | grep 'jpg$\|png$' | sort -R | head -1)
gsettings set org.gnome.desktop.background picture-uri "file://$file"
gsettings set org.gnome.desktop.screensaver picture-uri "file://$file"
#Para el historial:
date -R >> /home/sergio/Imágenes/Wallpapers/Aleatorios/Historial.txt
echo $file >> /home/sergio/Imágenes/Wallpapers/Aleatorios/Historial.txt
