#!/bin/bash

# Install font
chmod +x font.sh
./font.sh

config_dir="$HOME/.config/kitty"

# Install Kitty
curl -L https://sw.kovidgoyal.net/kitty/installer.sh | sh /dev/stdin
ln -sf ~/.local/kitty.app/bin/kitty ~/.local/kitty.app/bin/kitten ~/.local/bin/
cp ~/.local/kitty.app/share/applications/kitty.desktop ~/.local/share/applications/
cp ~/.local/kitty.app/share/applications/kitty-open.desktop ~/.local/share/applications/
sed -i "s|Icon=kitty|Icon=/home/$USER/.local/kitty.app/share/icons/hicolor/256x256/apps/kitty.png|g" ~/.local/share/applications/kitty*.desktop
sed -i "s|Exec=kitty|Exec=/home/$USER/.local/kitty.app/bin/kitty|g" ~/.local/share/applications/kitty*.desktop

# Check if terminal configuration directory exists
if [ ! -d "$config_dir" ]; then
    mkdir -p "$config_dir"
fi

# Remove existing config files
if [ -f "$config_dir/kitty.conf" ]; then
    rm "$config_dir/kitty.conf"
fi
if [ -f "$config_dir/theme.conf" ]; then
    rm "$config_dir/theme.conf"
fi
if [ -f "$config_dir/background-1.png" ]; then
    rm "$config_dir/background-1.png"
fi

# Copy config files
cp "$(pwd)/kitty/kitty.conf" "$config_dir"
cp "$(pwd)/kitty/theme.conf" "$config_dir"
cp "$(pwd)/kitty/background-1.png" "$config_dir"
