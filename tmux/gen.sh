#!/usr/bin/env bash

# basic key bindind
cat tmux.basic.conf  > tmux.conf

# bottom statusbar
cat tmux.status.conf >> tmux.conf

# colors
cat tmux.colors.conf >> tmux.conf

# mouse support according to tmux version
tmux_version_major=`tmux -V | cut -d' ' -f2 | cut -d'.' -f1`
tmux_version_minor=`tmux -V | cut -d' ' -f2 | cut -d'.' -f2`

if [ $tmux_version_major -eq 2 -a $tmux_version_minor -lt 1 ] || [ $tmux_version_major -le 1 ]
then
    cat tmux.mouse1.conf >> tmux.conf
else
    cat tmux.mouse2.conf >> tmux.conf
fi
