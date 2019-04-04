#!/bin/sh

rm -f $HOME/.vimrc
rm -f $HOME/.bashrc

ln -s $(pwd)/vimrc $HOME/.vimrc
ln -s $(pwd)/bashrc $HOME/.bashrc

# Gnome
dconf load /org/gnome/desktop/ < gnome/desktop.txt
