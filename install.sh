#!/bin/sh

rm -f $HOME/.vimrc
rm -f $HOME/.bashrc
rm -f $HOME/.bash_aliases
rm -f $HOME/.ideavimrc
rm -f $HOME/.config/i3/config
rm -f $HOME/.config/dunst/dunstrc
rm -f $HOME/.config/i3blocks
rm -f $HOME/.config/compton.conf
rm -f $HOME/.i3status.conf
rm -f $HOME/bin/lock
rm -f $HOME/bin/transmission-add
rm -f $HOME/.local/share/applications/torrent.desktop
rm -f $HOME/.ssh/authorized_keys

mkdir -p $HOME/.config/i3
mkdir -p $HOME/.config/dunst
mkdir -p $HOME/bin/
mkdir -p $HOME/.ssh
mkdir -p $HOME/.local/share/applications

ln -s $(pwd)/vimrc $HOME/.vimrc
ln -s $(pwd)/bashrc $HOME/.bashrc
ln -s $(pwd)/bash_aliases $HOME/.bash_aliases
ln -s $(pwd)/ideavimrc $HOME/.ideavimrc
ln -s $(pwd)/i3-config $HOME/.config/i3/config
ln -s $(pwd)/i3blocks $HOME/.config/i3blocks
ln -s $(pwd)/compton.conf $HOME/.config/compton.conf
ln -s $(pwd)/dunstrc $HOME/.config/dunst/dunstrc

ln -s $(pwd)/ssh/authorized_keys $HOME/.ssh/authorized_keys

ln -s $(pwd)/bin/lock $HOME/bin/lock
ln -s $(pwd)/bin/transmission-add $HOME/bin/transmission-add
ln -s $(pwd)/local/share/applications/torrent.desktop $HOME/.local/share/applications/torrent.desktop

