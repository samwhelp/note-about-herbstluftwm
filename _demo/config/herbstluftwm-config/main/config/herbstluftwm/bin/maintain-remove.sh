#!/usr/bin/env bash


################################################################################
### Head: Init
##

THE_BASE_DIR_PATH="$(cd -- "$(dirname -- "$0")" ; pwd)"
THE_BASE_DIR_PATH="$THE_BASE_DIR_PATH/../ext"
source "$THE_BASE_DIR_PATH/init.sh"

##
### Tail: Init
################################################################################


################################################################################
### Head: Model / Remove
##

mod_remove () {

	mod_remove_bin_up
	mod_remove_bin_ctrl
	mod_remove_ext

	mod_remove_sys_ext

	mod_remove_sys_profile_default
	mod_remove_sys_profile_default_enhance

	mod_remove_sys_profile_main

	mod_remove_sys_profile_nord_aurora
	mod_remove_sys_profile_nord_polar_night
	mod_remove_sys_profile_gruvbox

	##mod_remove_sys_cache_profile

	#mod_remove_style_dir
	mod_remove_share_style_profile_main

	mod_remove_check

}

mod_remove_bin_up () {

	echo "rm -f  $HOME/.config/herbstluftwm/autostart"
	rm -f "$HOME/.config/herbstluftwm/autostart"

	echo "rm -f $HOME/.config/herbstluftwm/bin/hlwm-up"
	rm -f "$HOME/.config/herbstluftwm/bin/hlwm-up"

	echo "rm -f $HOME/.config/herbstluftwm/bin/hlwm-up-xsettings"
	rm -f "$HOME/.config/herbstluftwm/bin/hlwm-up-xsettings"

	echo "rm -f $HOME/.config/herbstluftwm/bin/hlwm-up-wallpaper"
	rm -f "$HOME/.config/herbstluftwm/bin/hlwm-up-wallpaper"

	echo "rm -f $HOME/.config/herbstluftwm/bin/hlwm-up-compositor"
	rm -f "$HOME/.config/herbstluftwm/bin/hlwm-up-compositor"

	echo "rm -f $HOME/.config/herbstluftwm/bin/hlwm-up-panel"
	rm -f "$HOME/.config/herbstluftwm/bin/hlwm-up-panel"

	echo "rm -f $HOME/.config/herbstluftwm/bin/hlwm-up-applet"
	rm -f "$HOME/.config/herbstluftwm/bin/hlwm-up-applet"

}

mod_remove_bin_ctrl () {
	echo "rm -f $HOME/.config/herbstluftwm/bin/hlwm-frame-ctrl"
	rm -f "$HOME/.config/herbstluftwm/bin/hlwm-frame-ctrl"


	echo "rm -f $HOME/.config/herbstluftwm/bin/hlwm-window-ctrl"
	rm -f "$HOME/.config/herbstluftwm/bin/hlwm-window-ctrl"

	echo "rm -f $HOME/.config/herbstluftwm/bin/hlwm-wallpaper-ctrl"
	rm -f "$HOME/.config/herbstluftwm/bin/hlwm-wallpaper-ctrl"


	echo "rm -f $HOME/.config/herbstluftwm/bin/hlwm-profile-ctrl"
	rm -f "$HOME/.config/herbstluftwm/bin/hlwm-profile-ctrl"

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

	echo "rm -f $HOME/.config/herbstluftwm/sys/ext/default.sh"
	rm -f "$HOME/.config/herbstluftwm/sys/ext/default.sh"

	echo "rm -f $HOME/.config/herbstluftwm/sys/ext/profile.sh"
	rm -f "$HOME/.config/herbstluftwm/sys/ext/profile.sh"

	echo "rm -f $HOME/.config/herbstluftwm/sys/ext/hlwm.sh"
	rm -f "$HOME/.config/herbstluftwm/sys/ext/hlwm.sh"
}

mod_remove_sys_profile_default () {
	echo "rm -f $HOME/.config/herbstluftwm/sys/profile/default/keybind.sh"
	rm -f "$HOME/.config/herbstluftwm/sys/profile/default/keybind.sh"

	echo "rm -f $HOME/.config/herbstluftwm/sys/profile/default/theme.sh"
	rm -f "$HOME/.config/herbstluftwm/sys/profile/default/theme.sh"

	echo "rm -f $HOME/.config/herbstluftwm/sys/profile/default/rule.sh"
	rm -f "$HOME/.config/herbstluftwm/sys/profile/default/rule.sh"
}

mod_remove_sys_profile_default_enhance () {
	echo "rm -f $HOME/.config/herbstluftwm/sys/profile/default_enhance/keybind.sh"
	rm -f "$HOME/.config/herbstluftwm/sys/profile/default_enhance/keybind.sh"

	echo "rm -f $HOME/.config/herbstluftwm/sys/profile/default_enhance/theme.sh"
	rm -f "$HOME/.config/herbstluftwm/sys/profile/default_enhance/theme.sh"

	#echo "rm -f $HOME/.config/herbstluftwm/sys/profile/default_enhance/rule.sh"
	#rm -f "$HOME/.config/herbstluftwm/sys/profile/default_enhance/rule.sh"
}

mod_remove_sys_profile_main () {
	echo "rm -f $HOME/.config/herbstluftwm/sys/profile/main/keybind.sh"
	rm -f "$HOME/.config/herbstluftwm/sys/profile/main/keybind.sh"

	echo "rm -f $HOME/.config/herbstluftwm/sys/profile/main/theme.sh"
	rm -f "$HOME/.config/herbstluftwm/sys/profile/main/theme.sh"

	echo "rm -f $HOME/.config/herbstluftwm/sys/profile/main/rule.sh"
	rm -f "$HOME/.config/herbstluftwm/sys/profile/main/rule.sh"
}


mod_remove_sys_profile_nord_aurora () {
	#echo "rm -f $HOME/.config/herbstluftwm/sys/profile/nord_aurora/keybind.sh"
	#rm -f "$HOME/.config/herbstluftwm/sys/profile/nord_aurora/keybind.sh"

	echo "rm -f $HOME/.config/herbstluftwm/sys/profile/nord_aurora/theme.sh"
	rm -f "$HOME/.config/herbstluftwm/sys/profile/nord_aurora/theme.sh"

	#echo "rm -f $HOME/.config/herbstluftwm/sys/profile/nord_aurora/rule.sh"
	#rm -f "$HOME/.config/herbstluftwm/sys/profile/nord_aurora/rule.sh"
}

mod_remove_sys_profile_nord_polar_night () {
	#echo "rm -f $HOME/.config/herbstluftwm/sys/profile/nord_polar_night/keybind.sh"
	#rm -f "$HOME/.config/herbstluftwm/sys/profile/nord_polar_night/keybind.sh"

	echo "rm -f $HOME/.config/herbstluftwm/sys/profile/nord_polar_night/theme.sh"
	rm -f "$HOME/.config/herbstluftwm/sys/profile/nord_polar_night/theme.sh"

	#echo "rm -f $HOME/.config/herbstluftwm/sys/profile/nord_polar_night/rule.sh"
	#rm -f "$HOME/.config/herbstluftwm/sys/profile/nord_polar_night/rule.sh"
}

mod_remove_sys_profile_gruvbox () {
	#echo "rm -f $HOME/.config/herbstluftwm/sys/profile/gruvbox/keybind.sh"
	#rm -f "$HOME/.config/herbstluftwm/sys/profile/gruvbox/keybind.sh"

	echo "rm -f $HOME/.config/herbstluftwm/sys/profile/gruvbox/theme.sh"
	rm -f "$HOME/.config/herbstluftwm/sys/profile/gruvbox/theme.sh"

	#echo "rm -f $HOME/.config/herbstluftwm/sys/profile/gruvbox/rule.sh"
	#rm -f "$HOME/.config/herbstluftwm/sys/profile/gruvbox/rule.sh"
}


mod_remove_sys_cache_profile () {

	echo "rm -f $HOME/.config/herbstluftwm/sys/cache/profile/keybind.conf"
	rm -f "$HOME/.config/herbstluftwm/sys/cache/profile/keybind.conf"

	echo "rm -f $HOME/.config/herbstluftwm/sys/cache/profile/theme.conf"
	rm -f "$HOME/.config/herbstluftwm/sys/cache/profile/theme.conf"

	echo "rm -f $HOME/.config/herbstluftwm/sys/cache/profile/rule.conf"
	rm -f "$HOME/.config/herbstluftwm/sys/cache/profile/rule.conf"

}

mod_remove_style_dir () {

	if [ -L "$HOME/.config/herbstluftwm/style" ]; then
		echo "rm $HOME/.config/herbstluftwm/style"
		rm "$HOME/.config/herbstluftwm/style"
		return
	fi

}

mod_remove_share_style_profile_main () {

	echo "rm -f $HOME/.config/herbstluftwm/share/style-profile/main/picom/picom.conf"
	rm -f "$HOME/.config/herbstluftwm/share/style-profile/main/picom/picom.conf"

	echo "rm -f $HOME/.config/herbstluftwm/share/style-profile/main/xsettingsd/xsettingsd.conf"
	rm -f "$HOME/.config/herbstluftwm/share/style-profile/main/xsettingsd/xsettingsd.conf"

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
