#!/usr/bin/env bash

set -x

sed -i '/x-scheme-handler\/magnet/d' $HOME/.config/mimeapps.list
sed -i '/x-scheme-handler\/magnet/d' $HOME/.local/share/applications/mimeapps.list

sed -i '/application\/x-bittorrent/d' $HOME/.config/mimeapps.list
sed -i '/application\/x-bittorrent/d' $HOME/.local/share/applications/mimeapps.list

cat $(pwd)/local/share/applications/mimeapps.list >> $HOME/.local/share/applications/mimeapps.list

