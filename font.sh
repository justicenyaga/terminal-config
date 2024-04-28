#!/bin/bash

fonts_dir="$HOME/.local/share/fonts"

# Check if fonts directory exists
if [ ! -d "$fonts_dir" ]; then
    mkdir -p "$fonts_dir"
fi

# Copy the fonts to the fonts directory
cp -r "$(pwd)/fonts"/* "$fonts_dir"
