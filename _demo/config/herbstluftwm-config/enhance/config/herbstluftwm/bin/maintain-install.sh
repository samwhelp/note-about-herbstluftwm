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
### Head: Model / Install
##

mod_install () {

	mod_install_bin_up
	mod_install_ext

	mod_install_check

}


mod_install_bin_up () {

	echo "install -Dm755 $THE_PLAN_DIR_PATH/autostart $HOME/.config/herbstluftwm/autostart"
	install -Dm755 "$THE_PLAN_DIR_PATH/autostart" "$HOME/.config/herbstluftwm/autostart"

	echo "install -Dm755 $THE_BIN_DIR_PATH/hlwm-up $HOME/.config/herbstluftwm/bin/hlwm-up"
	install -Dm755 "$THE_BIN_DIR_PATH/hlwm-up" "$HOME/.config/herbstluftwm/bin/hlwm-up"

	echo "install -Dm755 $THE_BIN_DIR_PATH/hlwm-up-wallpaper $HOME/.config/herbstluftwm/bin/hlwm-up-wallpaper"
	install -Dm755 "$THE_BIN_DIR_PATH/hlwm-up-wallpaper" "$HOME/.config/herbstluftwm/bin/hlwm-up-wallpaper"

	echo "install -Dm755 $THE_BIN_DIR_PATH/hlwm-up-compositor $HOME/.config/herbstluftwm/bin/hlwm-up-compositor"
	install -Dm755 "$THE_BIN_DIR_PATH/hlwm-up-compositor" "$HOME/.config/herbstluftwm/bin/hlwm-up-compositor"

	echo "install -Dm755 $THE_BIN_DIR_PATH/hlwm-up-panel $HOME/.config/herbstluftwm/bin/hlwm-up-panel"
	install -Dm755 "$THE_BIN_DIR_PATH/hlwm-up-panel" "$HOME/.config/herbstluftwm/bin/hlwm-up-panel"

	echo "install -Dm755 $THE_BIN_DIR_PATH/hlwm-up-applet $HOME/.config/herbstluftwm/bin/hlwm-up-applet"
	install -Dm755 "$THE_BIN_DIR_PATH/hlwm-up-applet" "$HOME/.config/herbstluftwm/bin/hlwm-up-applet"

}

mod_install_ext () {

	echo "install -Dm644 $THE_EXT_DIR_PATH/base.sh $HOME/.config/herbstluftwm/ext/base.sh"
	install -Dm644 "$THE_EXT_DIR_PATH/base.sh" "$HOME/.config/herbstluftwm/ext/base.sh"

	echo "install -Dm644 $THE_EXT_DIR_PATH/init.sh $HOME/.config/herbstluftwm/ext/init.sh"
	install -Dm644 "$THE_EXT_DIR_PATH/init.sh" "$HOME/.config/herbstluftwm/ext/init.sh"

	echo "install -Dm644 $THE_EXT_DIR_PATH/util.sh $HOME/.config/herbstluftwm/ext/util.sh"
	install -Dm644 "$THE_EXT_DIR_PATH/util.sh" "$HOME/.config/herbstluftwm/ext/util.sh"

}

mod_install_check () {
	echo
	is_command_exist 'tree' && tree "$HOME/.config/herbstluftwm"
}


##
### Tail: Model / Install
################################################################################


################################################################################
### Head: Main
##

__main__ () {
	mod_install "$@"
}

__main__ "$@"

##
### Tail: Main
################################################################################
