#!/bin/bash

echo "Copying hypr... (~/.config/hypr)"
cp -r ~/.config/hypr ~/DevDisk/dotfiles
echo "Copying kitty... (~/.config/kitty)"
cp -r ~/.config/kitty ~/DevDisk/dotfiles
echo "Copying neofetch... (~/.config/neofetch)"
cp -r ~/.config/neofetch ~/DevDisk/dotfiles
echo "Copying swaylock... (~/.config/swaylock)"
cp -r ~/.config/swaylock ~/DevDisk/dotfiles
echo "Copying Waybar... (~/.config/waybar)"
cp -r ~/.config/waybar ~/DevDisk/dotfiles
echo "Copying wofi... (~/.config/wofi)"
cp -r ~/.config/wofi ~/DevDisk/dotfiles

echo Copy finished.
echo Edited: $(date) > lastedited.txt