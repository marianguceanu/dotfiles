#! /bin/sh

cd ~ 
sudo dnf install hyprland waybar hyprlock alacritty neovim git gh pamixer brightnessctl	network-manager-applet blueman papirus-icon-theme 
sudo dnf install gtk2 gtk2-devel gtk3 gtk3-devel gtk4 gtk4-devel glib glib2 

# Making space for the configs
# cd .config/
# rm -R hypr/
# rm -R waybar/
# rm -R nvim/
# rm -R alacritty/

# Getting the configs
# git clone https://github.com/marianguceanu/alacritty
# cp ./alacritty/.tmux.config ~
# git clone https://github.com/marianguceanu/nvim-config
# mv nvim-config/ nvim/
# git clone https://github.com/marianguceanu/hypr
# mkdir waybar
# mv ./hypr/utils/waybar/* ./waybar/
