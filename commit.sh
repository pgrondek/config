#!/bin/sh

dconf dump /org/gnome/desktop/ > gnome/desktop.txt

git add -A
git commit
