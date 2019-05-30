#!/usr/bin/env bash

sed -i '/x-scheme-handler\/magnet/d' $HOME/.config/mimeapps.list
sed -i '/x-scheme-handler\/magnet/d' $HOME/.local/share/applications/mimeapps.list

cat $(pwd)/local/share/applications/mimeapps.list >> $HOME/.local/share/applications/mimeapps.list

