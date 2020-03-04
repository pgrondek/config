#!/bin/bash

#set -x
set -e

shopt -s dotglob nullglob

if [[ -d "${HOME}/Pobrane" && ! -L "${HOME}/Pobrane" ]]
then
    mkdir -p "${HOME}/Downloads"
    mv ${HOME}/Pobrane/* "${HOME}/Downloads"
    echo "Moved all download srom ${HOME}/Pobrane to ${HOME}/Downloads"
    rmdir "${HOME}/Pobrane"
    ln -s "${HOME}/Downloads" "${HOME}/Pobrane"
    echo "Symlinked ${HOME}/Pobrane to ${HOME}/Downloads"
else
    if [[ -L "${HOME}/Pobrane" ]]
    then
        echo "Nothing to do ${HOME}/Pobrane is already symlink"
    else
        ln -s "${HOME}/Downloads" "${HOME}/Pobrane"
        echo "Symlinked ${HOME}/Pobrane to ${HOME}/Downloads"
    fi
fi

if [[ -d "${HOME}/Dokumenty" && ! -L "${HOME}/Dokumenty" ]]
then
    mkdir -p "${HOME}/Documents"
    mv ${HOME}/Dokumenty/* "${HOME}/Documents" || true
    echo "Moved all download srom ${HOME}/Dokumenty to ${HOME}/Documents"
    rmdir "${HOME}/Dokumenty"
    ln -s "${HOME}/Documents" "${HOME}/Dokumenty"
    echo "Symlinked ${HOME}/Dokumenty to ${HOME}/Documents"
else
    if [[ -L "${HOME}/Dokumenty" ]]
    then
        echo "Nothing to do ${HOME}/Dokumenty is already symlink"
    else
        ln -s "${HOME}/Documents" "${HOME}/Dokumenty"
        echo "Symlinked ${HOME}/Dokumenty to ${HOME}/Documents"
    fi
fi
