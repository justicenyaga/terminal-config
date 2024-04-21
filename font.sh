#!/bin/bash

font="LilexNerdFontMono-Regular.ttf"
fonts_dir="$HOME/.local/share/fonts"

# Check if fonts directory exists
if [ ! -d "$fonts_dir" ]; then
    mkdir -p "$fonts_dir"
fi

# Copy the font to the fonts directory
if [ ! -f "$fonts_dir/$font" ]; then
    cp "$(pwd)/$font" "$fonts_dir"
fi
