#!/bin/sh

rm -f $HOME/.vimrc
rm -f $HOME/.bashrc
rm -f $HOME/.bash_aliases
rm -f $HOME/.ideavimrc
rm -f $HOME/.config/i3/config
rm -f $HOME/.i3status.conf
rm -f $HOME/bin/lock

mkdir -p $HOME/.config/i3
mkdir -p $HOME/bin/

ln -s $(pwd)/vimrc $HOME/.vimrc
ln -s $(pwd)/bashrc $HOME/.bashrc
ln -s $(pwd)/bash_aliases $HOME/.bash_aliases
ln -s $(pwd)/ideavimrc $HOME/.ideavimrc
ln -s $(pwd)/i3-config $HOME/.config/i3/config
ln -s $(pwd)/i3status.conf $HOME/.i3status.conf

ln -s $(pwd)/scripts/lock $HOME/bin/lock

# Gnome
# dconf load /org/gnome/desktop/ < gnome/desktop.txt
