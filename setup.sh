#!/bin/bash

echo "Setting up configs with bspwm as the window manager..."
mkdir -p ~/.config

cp config/bspwm ~/.config/
cp config/sxhkd ~/.config/
cp config/nvim ~/.config/

chmod +x ~/.config/bspwm/bspwmrc

read -p "Install favorite programs? [y/n]: " yn
case $yn in
	y ) echo "Installing...";
	n ) echo "exiting";
			exit;;
	* ) echo "Invalid response";
			exit 1;;

echo "Installing git"
sudo pacman -S git

echo "Installing bspwm and sxhkd"
sudo pacman -S bspwm sxhkd

echo "Installing neovim and vim"
sudo pacman -S neovim vim

echo "Installing yay"
mkdir aur
cd aur
git clone https://aur.archlinux.org/yay.git
cd yay
makepgk -si
