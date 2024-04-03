#!/bin/bash

font="CodeNewRomanNerdFontMono-Regular.otf"
fonts_dir="$HOME/.local/share/fonts"
terminal_dir="$HOME/.config/xfce4/terminal"

# Check if fonts directory exists
if [ ! -d "$fonts_dir" ]; then
    mkdir -p "$fonts_dir"
fi

# Copy the font to the fonts directory
if [ ! -f "$fonts_dir/$font" ]; then
    cp "$(pwd)/$font" "$fonts_dir"
fi

# Check if terminal configuration directory exists
if [ ! -d "$terminal_dir" ]; then
    mkdir -p "$terminal_dir"
fi

# Copy accels.scm file
if [ -f "$terminal_dir/accels.scm" ]; then
    rm "$terminal_dir/accels.scm"
fi
cp "$(pwd)/accels.scm" "$terminal_dir"

# Generate the terminalrc config file
background_image="$(pwd)/images/background-5.jpg"
cat > "$terminal_dir/terminalrc" <<EOF
[Configuration]
FontName=CodeNewRoman Nerd Font Mono 14
MiscAlwaysShowTabs=FALSE
MiscBell=FALSE
MiscBellUrgent=FALSE
MiscBordersDefault=TRUE
MiscCursorBlinks=TRUE
MiscCursorShape=TERMINAL_CURSOR_SHAPE_BLOCK
MiscDefaultGeometry=80x24
MiscInheritGeometry=FALSE
MiscMenubarDefault=TRUE
MiscMouseAutohide=FALSE
MiscMouseWheelZoom=TRUE
MiscToolbarDefault=FALSE
MiscConfirmClose=TRUE
MiscCycleTabs=TRUE
MiscTabCloseButtons=TRUE
MiscTabCloseMiddleClick=TRUE
MiscTabPosition=GTK_POS_TOP
MiscHighlightUrls=TRUE
MiscMiddleClickOpensUri=FALSE
MiscCopyOnSelect=FALSE
MiscShowRelaunchDialog=TRUE
MiscRewrapOnResize=TRUE
MiscUseShiftArrowsToScroll=FALSE
MiscSlimTabs=FALSE
MiscNewTabAdjacent=FALSE
MiscSearchDialogOpacity=100
MiscShowUnsafePasteDialog=FALSE
MiscRightClickAction=TERMINAL_RIGHT_CLICK_ACTION_CONTEXT_MENU
ColorForeground=#b9f6d110b695
ColorBackground=#0c0c1c1b2525
ColorPalette=rgb(21,37,53);rgb(255,60,60);rgb(73,255,109);rgb(255,188,81);rgb(0,175,255);rgb(142,68,173);rgb(22,160,133);rgb(189,195,199);rgb(86,97,109);rgb(255,60,76);rgb(147,255,145);rgb(255,255,85);rgb(91,215,255);rgb(155,89,182);rgb(32,92,87);rgb(255,255,255)
BackgroundMode=TERMINAL_BACKGROUND_IMAGE
BackgroundDarkness=0.850000
BackgroundImageFile=$background_image
BackgroundImageShading=0.600000
BackgroundImageStyle=TERMINAL_BACKGROUND_STYLE_FILLED
EOF

