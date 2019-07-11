#!/bin/sh

rm -f $HOME/bin/transmission-add
rm -f $HOME/.local/share/applications/torrent.desktop
rm -f $HOME/.ssh/authorized_keys

mkdir -p $HOME/bin/
mkdir -p $HOME/.ssh
mkdir -p $HOME/.local/share/applications

ln -s $(pwd)/ssh/authorized_keys $HOME/.ssh/authorized_keys

ln -s $(pwd)/bin/transmission-add $HOME/bin/transmission-add
ln -s $(pwd)/local/share/applications/torrent.desktop $HOME/.local/share/applications/torrent.desktop

