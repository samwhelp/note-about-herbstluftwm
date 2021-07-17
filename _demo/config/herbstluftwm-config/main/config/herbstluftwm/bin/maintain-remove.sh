#!/usr/bin/env bash


################################################################################
### Head: Init
##

THE_BASE_DIR_PATH=$(cd -P -- "$(dirname -- "$0")" && pwd -P)
THE_BASE_DIR_PATH="$THE_BASE_DIR_PATH/../ext"
source "$THE_BASE_DIR_PATH/init.sh"

##
### Tail: Init
################################################################################


################################################################################
### Head: Model / Remove
##

mod_remove () {

	mod_remove_bin
	mod_remove_ext

	mod_remove_sys_ext

	mod_remove_check

}

mod_remove_bin () {

	echo "rm -f  $HOME/.config/herbstluftwm/autostart"
	rm -f "$HOME/.config/herbstluftwm/autostart"

	echo "rm -f $HOME/.config/herbstluftwm/bin/hlwm-up"
	rm -f "$HOME/.config/herbstluftwm/bin/hlwm-up"

	echo "rm -f $HOME/.config/herbstluftwm/bin/hlwm-wallpaper"
	rm -f "$HOME/.config/herbstluftwm/bin/hlwm-wallpaper"

	echo "rm -f $HOME/.config/herbstluftwm/bin/hlwm-compositor"
	rm -f "$HOME/.config/herbstluftwm/bin/hlwm-compositor"

	echo "rm -f $HOME/.config/herbstluftwm/bin/hlwm-panel"
	rm -f "$HOME/.config/herbstluftwm/bin/hlwm-panel"

	echo "rm -f $HOME/.config/herbstluftwm/bin/hlwm-applet"
	rm -f "$HOME/.config/herbstluftwm/bin/hlwm-applet"
}

mod_remove_ext () {
	echo "rm -f $HOME/.config/herbstluftwm/ext/base.sh"
	rm -f "$HOME/.config/herbstluftwm/ext/base.sh"

	echo "rm -f $HOME/.config/herbstluftwm/ext/init.sh"
	rm -f "$HOME/.config/herbstluftwm/ext/init.sh"

	echo "rm -f $HOME/.config/herbstluftwm/ext/util.sh"
	rm -f "$HOME/.config/herbstluftwm/ext/util.sh"

	echo "rm -f $HOME/.config/herbstluftwm/ext/hlwm.sh"
	rm -f "$HOME/.config/herbstluftwm/ext/hlwm.sh"
}

mod_remove_sys_ext () {
	echo "rm -f $HOME/.config/herbstluftwm/sys/ext/init.sh"
	rm -f "$HOME/.config/herbstluftwm/sys/ext/init.sh"

	echo "rm -f $HOME/.config/herbstluftwm/sys/ext/skel.sh"
	rm -f "$HOME/.config/herbstluftwm/sys/ext/skel.sh"
}


mod_remove_check () {
	echo
	is_command_exist 'tree' && tree "$HOME/.config/herbstluftwm"
}

##
### Tail: Model / Remove
################################################################################


################################################################################
### Head: Main
##

__main__ () {
	mod_remove "$@"
}

__main__ "$@"

##
### Tail: Main
################################################################################
