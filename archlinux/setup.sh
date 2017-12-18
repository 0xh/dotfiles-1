#!/bin/bash

SCRIPT_DIR=$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)

mv /etc/pacman.d/mirrorlist /etc/pacman/mirrorlist.bak
cp $SCRIPT_DIR/mirrorlist /etc/pacman/mirrorlist

# Download pacman mirrorlist
# Uncomment the wanted mirror
#wget -O/etc/pacman.d/mirrorlist https://www.archlinux.org/mirrorlist/all/
#wget -O /etc/pacman.d/mirrorlist 'https://www.archlinux.org/mirrorlist/?country=CN'

# funny programs
pacman -S words
pacman -S go
yaourt -S jdk9-openjdk openjdk9-src
yaourt -S pet-git
yaourt -S mosh
yaourt -S axel

# fcitx - gnome
pacman -S fcitx && ln -sf $SCRIPT_DIR/xprofile ~/.xprofile
# cool-retro-term is a terminal emulator which mimics the look and feel of the old cathode tube screens.
pacman -S cool-retro-term
