#!/bin/bash

current_dir=$(pwd)
home_dir="$HOME"

echo "WARNING: Please ensure you have installed the necessary dependencies before running this script."
echo "Required dependencies: curl, fish, sway, waybar, tofi, kitty, cliphist, swaybg, swayidle, xdg-user-dirs, swaylock, grim, wl-clipboard, slurp, mako, wtype, xdg-utils, autotiling-rs, pavucontrol, xdg-desktop-portal-wlr, polkit-gnome"
echo "Do you want to continue? (y/n)"
read -r response

if [[ "$response" =~ ^([yY][eE][sS]|[yY])$ ]]
then
    cp -r "$current_dir"/. "$home_dir/"

    rm -f "$home_dir/$(basename "$0")" "$home_dir/.gitignore" "$home_dir/.README.md"
    echo "Dotfiles copied successfully."

    curl https://raw.githubusercontent.com/oh-my-fish/oh-my-fish/master/bin/install | fish

    fish -c "omf install boxfish"
    echo "Oh My Fish and the 'boxfish' theme have been installed."

    if ! grep -q "$(which fish)" /etc/shells; then
        echo "$(which fish)" | sudo tee -a /etc/shells
    fi
    chsh -s "$(which fish)"
    echo "Fish is now your default shell."
    exit
else
    echo "Operation cancelled."
fi

# This script hasn't been tested :skull:
