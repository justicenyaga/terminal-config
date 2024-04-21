# My Terminal Configurations

This repository contains my terminal configuration setups for xfce4 and gnome terminal.

## Clone the repo

```bash
git clone https://github.com/justicenyaga/terminal-config.git
```

## xfce4 Terminal

### Install xfce4 Terminal

Run the following command to install xfce4 terminal

```bash
sudo apt install xfce4-terminal
```

### Set xfce4 Terminal as the default terminal emulator

This step is optional. If you want to set xfce4 terminal as the default terminal emulator, run the following commands

```bash
sudo update-alternatives --set x-terminal-emulator /usr/bin/xfce4-terminal.wrapper
gsettings set org.gnome.desktop.default-applications.terminal exec 'xfce4-terminal'
```

### Overwrite Open Terminal shotcut (Ubuntu)

Go to `Settings -> Keyboard -> Keyboard Shortcuts (View and Customize Shortcuts) -> Custom Shortcuts` and create a new shortcut.

```
Name: Launch XFCE Terminal
Command: exo-open --launch TerminalEmulator
Shortcut: Ctrl + Alt + T
```

This will overwrite the default shortcut that launches gnome-terminal.

### Configuration Script

Run the setup script to configure xfce4 terminal

```bash
cd terminal-config && sh xfce4.sh
```

## Gnome Terminal

To apply the profile configuration file on a given profile, run the following command:

```bash
dconf load /org/gnome/terminal/legacy/profiles:/:profile_id < profile.dconf
```

Replace "profile_id" with the specific ID of the profile you wish to overwrite. You can use the tab key for convenient autocompletion of the profile_id.

`Ensure you have CodeNewRoman Nerd Font Mono installed. If it's not already installed, you can find it in the attached copy on this repository and install it from there..`
