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

	mod_install_bin
	mod_install_bin_ctrl
	mod_install_ext

	mod_install_sys_ext

	mod_install_sys_profile_default
	mod_install_sys_profile_main

	mod_install_check

}


mod_install_bin () {
	echo "install -Dm755 $THE_PLAN_DIR_PATH/autostart $HOME/.config/herbstluftwm/autostart"
	install -Dm755 "$THE_PLAN_DIR_PATH/autostart" "$HOME/.config/herbstluftwm/autostart"

	echo "install -Dm755 $THE_BIN_DIR_PATH/hlwm-up $HOME/.config/herbstluftwm/bin/hlwm-up"
	install -Dm755 "$THE_BIN_DIR_PATH/hlwm-up" "$HOME/.config/herbstluftwm/bin/hlwm-up"

	echo "install -Dm755 $THE_BIN_DIR_PATH/hlwm-wallpaper $HOME/.config/herbstluftwm/bin/hlwm-wallpaper"
	install -Dm755 "$THE_BIN_DIR_PATH/hlwm-wallpaper" "$HOME/.config/herbstluftwm/bin/hlwm-wallpaper"

	echo "install -Dm755 $THE_BIN_DIR_PATH/hlwm-compositor $HOME/.config/herbstluftwm/bin/hlwm-compositor"
	install -Dm755 "$THE_BIN_DIR_PATH/hlwm-compositor" "$HOME/.config/herbstluftwm/bin/hlwm-compositor"

	echo "install -Dm755 $THE_BIN_DIR_PATH/hlwm-panel $HOME/.config/herbstluftwm/bin/hlwm-panel"
	install -Dm755 "$THE_BIN_DIR_PATH/hlwm-panel" "$HOME/.config/herbstluftwm/bin/hlwm-panel"

	echo "install -Dm755 $THE_BIN_DIR_PATH/hlwm-applet $HOME/.config/herbstluftwm/bin/hlwm-applet"
	install -Dm755 "$THE_BIN_DIR_PATH/hlwm-applet" "$HOME/.config/herbstluftwm/bin/hlwm-applet"
}

mod_install_bin_ctrl () {
	echo "install -Dm755 $THE_BIN_DIR_PATH/hlwm-frame-ctrl $HOME/.config/herbstluftwm/bin/hlwm-frame-ctrl"
	install -Dm755 "$THE_BIN_DIR_PATH/hlwm-frame-ctrl" "$HOME/.config/herbstluftwm/bin/hlwm-frame-ctrl"

	echo "install -Dm755 $THE_BIN_DIR_PATH/hlwm-window-ctrl $HOME/.config/herbstluftwm/bin/hlwm-window-ctrl"
	install -Dm755 "$THE_BIN_DIR_PATH/hlwm-window-ctrl" "$HOME/.config/herbstluftwm/bin/hlwm-window-ctrl"

	echo "install -Dm755 $THE_BIN_DIR_PATH/hlwm-wallpaper-ctrl $HOME/.config/herbstluftwm/bin/hlwm-wallpaper-ctrl"
	install -Dm755 "$THE_BIN_DIR_PATH/hlwm-wallpaper-ctrl" "$HOME/.config/herbstluftwm/bin/hlwm-wallpaper-ctrl"

}

mod_install_ext () {

	echo "install -Dm644 $THE_EXT_DIR_PATH/base.sh $HOME/.config/herbstluftwm/ext/base.sh"
	install -Dm644 "$THE_EXT_DIR_PATH/base.sh" "$HOME/.config/herbstluftwm/ext/base.sh"

	echo "install -Dm644 $THE_EXT_DIR_PATH/init.sh $HOME/.config/herbstluftwm/ext/init.sh"
	install -Dm644 "$THE_EXT_DIR_PATH/init.sh" "$HOME/.config/herbstluftwm/ext/init.sh"

	echo "install -Dm644 $THE_EXT_DIR_PATH/util.sh $HOME/.config/herbstluftwm/ext/util.sh"
	install -Dm644 "$THE_EXT_DIR_PATH/util.sh" "$HOME/.config/herbstluftwm/ext/util.sh"

	echo "install -Dm644 $THE_EXT_DIR_PATH/hlwm.sh $HOME/.config/herbstluftwm/ext/hlwm.sh"
	install -Dm644 "$THE_EXT_DIR_PATH/hlwm.sh" "$HOME/.config/herbstluftwm/ext/hlwm.sh"

}

mod_install_sys_ext () {

	echo "install -Dm644 $THE_SYS_EXT_DIR_PATH/init.sh $HOME/.config/herbstluftwm/sys/ext/init.sh"
	install -Dm644 "$THE_SYS_EXT_DIR_PATH/init.sh" "$HOME/.config/herbstluftwm/sys/ext/init.sh"

	echo "install -Dm644 $THE_SYS_EXT_DIR_PATH/skel.sh $HOME/.config/herbstluftwm/sys/ext/skel.sh"
	install -Dm644 "$THE_SYS_EXT_DIR_PATH/skel.sh" "$HOME/.config/herbstluftwm/sys/ext/skel.sh"

	echo "install -Dm644 $THE_SYS_EXT_DIR_PATH/default.sh $HOME/.config/herbstluftwm/sys/ext/default.sh"
	install -Dm644 "$THE_SYS_EXT_DIR_PATH/default.sh" "$HOME/.config/herbstluftwm/sys/ext/default.sh"

}


mod_install_sys_profile_default () {

	echo "install -Dm644 $THE_SYS_PROFILE_DIR_PATH/default/keybind.sh $HOME/.config/herbstluftwm/sys/profile/default/keybind.sh"
	install -Dm644 "$THE_SYS_PROFILE_DIR_PATH/default/keybind.sh" "$HOME/.config/herbstluftwm/sys/profile/default/keybind.sh"

	echo "install -Dm644 $THE_SYS_PROFILE_DIR_PATH/default/theme.sh $HOME/.config/herbstluftwm/sys/profile/default/theme.sh"
	install -Dm644 "$THE_SYS_PROFILE_DIR_PATH/default/theme.sh" "$HOME/.config/herbstluftwm/sys/profile/default/theme.sh"

	echo "install -Dm644 $THE_SYS_PROFILE_DIR_PATH/default/rule.sh $HOME/.config/herbstluftwm/sys/profile/default/rule.sh"
	install -Dm644 "$THE_SYS_PROFILE_DIR_PATH/default/rule.sh" "$HOME/.config/herbstluftwm/sys/profile/default/rule.sh"

}

mod_install_sys_profile_main () {

	echo "install -Dm644 $THE_SYS_PROFILE_DIR_PATH/default/keybind.sh $HOME/.config/herbstluftwm/sys/profile/default/keybind.sh"
	install -Dm644 "$THE_SYS_PROFILE_DIR_PATH/default/keybind.sh" "$HOME/.config/herbstluftwm/sys/profile/default/keybind.sh"

	echo "install -Dm644 $THE_SYS_PROFILE_DIR_PATH/default/theme.sh $HOME/.config/herbstluftwm/sys/profile/default/theme.sh"
	install -Dm644 "$THE_SYS_PROFILE_DIR_PATH/default/theme.sh" "$HOME/.config/herbstluftwm/sys/profile/default/theme.sh"

	echo "install -Dm644 $THE_SYS_PROFILE_DIR_PATH/default/rule.sh $HOME/.config/herbstluftwm/sys/profile/default/rule.sh"
	install -Dm644 "$THE_SYS_PROFILE_DIR_PATH/default/rule.sh" "$HOME/.config/herbstluftwm/sys/profile/default/rule.sh"

}

mod_install_sys_profile_main () {

	echo "install -Dm644 $THE_SYS_PROFILE_DIR_PATH/main/keybind.sh $HOME/.config/herbstluftwm/sys/profile/main/keybind.sh"
	install -Dm644 "$THE_SYS_PROFILE_DIR_PATH/main/keybind.sh" "$HOME/.config/herbstluftwm/sys/profile/main/keybind.sh"

	echo "install -Dm644 $THE_SYS_PROFILE_DIR_PATH/main/theme.sh $HOME/.config/herbstluftwm/sys/profile/main/theme.sh"
	install -Dm644 "$THE_SYS_PROFILE_DIR_PATH/main/theme.sh" "$HOME/.config/herbstluftwm/sys/profile/main/theme.sh"

	echo "install -Dm644 $THE_SYS_PROFILE_DIR_PATH/main/rule.sh $HOME/.config/herbstluftwm/sys/profile/main/rule.sh"
	install -Dm644 "$THE_SYS_PROFILE_DIR_PATH/main/rule.sh" "$HOME/.config/herbstluftwm/sys/profile/main/rule.sh"

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
