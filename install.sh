#!/bin/sh

rm -f $HOME/.ssh/authorized_keys

mkdir -p $HOME/.ssh

ln -s $(pwd)/ssh/authorized_keys $HOME/.ssh/authorized_keys

