#!/bin/bash

current_dir=$(pwd)
home_dir="$HOME"

echo "WARNING: Please ensure you have installed the necessary dependencies before running this script."
echo "Required dependencies: autotiling-rs, brightnessctl, cliphist, curl, fish, grim, kitty, mako, pavucontrol, polkit-gnome, slurp, sway, swaybg, swayidle, swaylock, tofi, waybar, wl-clipboard, wtype, xdg-desktop-portal-wlr, xdg-user-dirs, xdg-utils"
echo "Note: to control audio via keyboard or waybar, you need pipewire and wireplumber"
echo "Do you want to continue? (y/n)"
read -r response

if [[ "$response" =~ ^([yY][eE][sS]|[yY])$ ]]
then
    cp -r "$current_dir"/. "$home_dir/"

    rm -rf "$home_dir/$(basename "$0")" "$home_dir/.gitignore" "$home_dir/.README.md" "$home_dir/.git"
    echo "Dotfiles copied successfully."

    curl https://raw.githubusercontent.com/oh-my-fish/oh-my-fish/master/bin/install | fish -c "omf install boxfish"
    echo "Oh My Fish and the 'boxfish' theme have been installed."

    if ! grep -q "$(which fish)" /etc/shells; then
        echo "$(which fish)" | sudo tee -a /etc/shells
    fi
    chsh -s "$(which fish)"
    echo "Fish is now your default shell."
    echo "Thanks for using my dots - XDR"
    exit
else
    echo "Operation cancelled."
fi
