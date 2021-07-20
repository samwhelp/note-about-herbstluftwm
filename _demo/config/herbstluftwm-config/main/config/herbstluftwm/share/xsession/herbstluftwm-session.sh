#!/usr/bin/env bash


################################################################################
### Head: Link
##

## * https://github.com/samwhelp/note-about-xsession

##
### Tail: Link
################################################################################


################################################################################
### Head: Path
##

#PATH="$HOME/.config/herbstluftwm-session/bin:$PATH"
##export PATH="$HOME/.config/herbstluftwm-session/bin:$PATH"
PATH="$HOME/.config/herbstluftwm/bin:$PATH"
##export PATH="$HOME/.config/herbstluftwm/bin:$PATH"

##
### Tail: Path
################################################################################


################################################################################
### Head: Autostart
##

## herbstluftwm-session-autostart.sh

##
### Tail: Autostart
################################################################################


################################################################################
### Head: Terminal
##

## sakura
#sakura -m &

##
### Tail: Terminal
################################################################################


################################################################################
### Head: Window Manager
##

# $ LANG=zh_TW.UTF-8 LANGUAGE=zh_TW.UTF-8 LC_ALL=zh_TW.UTF-8 locale
# $ LANG=en_US.UTF-8 LANGUAGE=en_US.UTF-8 LC_ALL=en_US.UTF-8 locale

#LANG=zh_TW.UTF-8 LANGUAGE=zh_TW.UTF-8 LC_ALL=zh_TW.UTF-8 exec herbstluftwm
#LANG=en_US.UTF-8 LANGUAGE=en_US.UTF-8 LC_ALL=en_US.UTF-8 exec herbstluftwm

exec herbstluftwm

##
### Tail: Window Manager
################################################################################
