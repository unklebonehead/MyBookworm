#!/usr/bin/env bash

# Default packages are for the configuration and corresponding .config folders
# Install packages after installing base Debian with no GUI

# xorg display server installation
sudo apt install -y xorg xserver-xorg xbacklight xbindkeys xvkbd xinput

# PACKAGE INCLUDES build-essential.
sudo apt install -y build-essential

# bspwm & polybar
bash ~/bookworm-scripts/resources/bspwm-commands

# Create folders in user directory (eg. Documents,Downloads,etc.)
xdg-user-dirs-update
mkdir ~/Screenshots/

bash ~/MyBookworm/resources/bspwm-commands

# Network File Tools/System Events
sudo apt install -y dialog mtools dosfstools avahi-daemon acpi acpid gvfs-backends xfce4-power-manager

sudo systemctl enable avahi-daemon
sudo systemctl enable acpid

# Networking etc
sudo apt install -y policykit-1-gnome network-manager network-manager-gnome

# Thunar
sudo apt install -y thunar thunar-archive-plugin thunar-volman file-roller

# Terminal (eg. terminator,kitty,xfce4-terminal)
sudo apt install -y kitty tilix

# Sound packages
sudo apt install -y wireplumber alsa-utils pavucontrol volumeicon-alsa pamixer

# Neofetch
sudo apt install -y neofetch

# Network Manager
sudo apt install -y network-manager network-manager-gnome

# Installation for Appearance management
sudo apt install -y lxappearance

# Browser Installation (eg. chromium)
sudo apt install -y firefox-esr

# Desktop background browser/handler
sudo apt install -y feh

# Fonts and icons for now
sudo apt install -y fonts-recommended fonts-ubuntu fonts-font-awesome fonts-terminus papirus-icon-theme

# EXA installation
# replace ls command in .bashrc file with line below
# alias ls='exa -al --long --header --color=always --group-directories-first'
sudo apt install -y exa

# Printing and bluetooth (if needed)
#sudo apt install -y cups system-config-printer simple-scan
#sudo apt install -y bluez blueman

# sudo systemctl enable cups
#sudo systemctl enable bluetooth

# Packages needed for window manager installation
sudo apt install -y picom rofi dunst libnotify-bin unzip wmctrl xdotool

sudo apt install -y mousepad

# My Favorites
# Multimedia/GFX
sudo apt install -y mpv qimgv scrot gimp eog newsboat mpd ncmpcpp

# PDF
sudo apt install -y  evince pdfarranger

# Others
sudo apt install -y numlockx figlet galculator cpu-x udns-utils whois curl tree

# Install Lightdm Console Display Manager
# sudo apt install -y lightdm lightdm-gtk-greeter-settings
# sudo systemctl enable lightdm

# Install the Ly Console Display Manager
#bash ~/MyBookworm/ly.sh

########################################################
# End of script for default config
#

## These two scripts will install nerdfonts and copy my configuration files into the ~/.config directory
## Configuration uses

bash ~/MyBookworm/resources/nerdfonts.sh

\cp ~/MyBookworm/resources/.bashrc ~


sudo apt autoremove

printf "\e[1;32mYou can now reboot! Thank you.\e[0m\n"
