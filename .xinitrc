#!/bin/bash
xrdb -merge -I$HOME ~/.Xresources
xmodmap ~/.Xmodmap
export SXHKD_SHELL='/usr/bin/sh'
sxhkd &
xsetroot -cursor_name left_ptr
exec bspwm
