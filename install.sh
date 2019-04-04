#!/bin/sh

rm -f $HOME/.vimrc
rm -f $HOME/.bashrc
rm -f $HOME/.bash_aliases

ln -s $(pwd)/vimrc $HOME/.vimrc
ln -s $(pwd)/bashrc $HOME/.bashrc
ln -s $(pwd)/bash_aliases $HOME/.bash_aliases

# Gnome
dconf load /org/gnome/desktop/ < gnome/desktop.txt
