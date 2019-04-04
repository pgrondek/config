#!/bin/sh

rm -f $HOME/.vimrc

ln -s $(pwd)/vimrc $HOME/.vimrc

# Gnome
dconf load /org/gnome/desktop/ < gnome/desktop.txt
