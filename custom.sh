#!/usr/bin/env bash

cd ~/Downloads
git clone https://github.com/unklebonehead/dotfiles

\cp -r ~/Downloads/dotfiles/bin/ ~
chmod +x ~/bin/*
sudo cp ~/bin/pulseaudio-control.bash /bin/
\cp -r ~/Downloads/dotfiles/.config/backgrounds/ ~/.config/
\cp -r ~/Downloads/dotfiles/.config/bspwm/ ~/.config/
\cp -r ~/Downloads/dotfiles/.config/dunst/ ~/.config/
\cp -r ~/Downloads/dotfiles/.config/picom/ ~/.config/
\cp -r ~/Downloads/dotfiles/.config/polybar/ ~/.config/
\cp -r ~/Downloads/dotfiles/.config/sxhkd/ ~/.config/
\cp -r ~/Downloads/dotfiles/.config/rofi/ ~/.config/
\cp -r ~/Downloads/dotfiles/.config/mpd/ ~/.config/
\cp -r ~/Downloads/dotfiles/.config/ncmpcpp/ ~/.config/
\cp -r ~/Downloads/dotfiles/.config/pipewire/ ~/.config/
\cp -r ~/Downloads/dotfiles/.config/.newsboat/ ~/
