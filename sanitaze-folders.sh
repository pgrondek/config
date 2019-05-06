#!/bin/bash

if [ -d "${HOME}/Pobrane" ]
then
    mkdir -p "${HOME}/Downloads"
    mv ${HOME}/Pobrane/* "${HOME}/Downloads"
    echo "Moved all download srom ${HOME}/Pobrane to ${HOME}/Downloads"
    rmdir "${HOME}/Pobrane"
    ln -s "${HOME}/Downloads" "${HOME}/Pobrane"
    echo "Symlinked ${HOME}/Pobrane to ${HOME}/Downloads"
else
    if [ -L "${HOME}/Pobrane" ]
    then
        echo "Nothing to do ${HOME}/Pobrane is already symlink"
    else
        ln -s "${HOME}/Downloads" "${HOME}/Pobrane"
        echo "Symlinked ${HOME}/Pobrane to ${HOME}/Downloads"
    fi
fi
